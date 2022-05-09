; ModuleID = '/llk/IR_all_yes/drivers/nvme/target/fcloop.c_pt.bc'
source_filename = "../drivers/nvme/target/fcloop.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.nvme_fc_port_template = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i64, i32, i32, i32, i32 }
%struct.match_token = type { i32, ptr }
%struct.nvmet_fc_target_template = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i64, i32, i32, i32 }
%struct.fcloop_rport = type { ptr, ptr, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.nvme_fc_port_info = type { i64, i64, i32, i32, i32 }
%struct.fcloop_ctrl_options = type { i32, i64, i64, i32, i32, i64, i64 }
%struct.nvme_fc_local_port = type { i32, i32, i64, i64, ptr, i32, i32 }
%struct.fcloop_lport = type { ptr, %struct.list_head, %struct.completion }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.substring_t = type { ptr, ptr }
%struct.nvme_fc_remote_port = type { i32, i32, i64, i64, ptr, ptr, i32, i32, i32 }
%struct.nvmefc_ls_req = type { ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, [4 x i8] }
%struct.fcloop_lsreq = type { ptr, %struct.nvmefc_ls_rsp, i32, i32, %struct.list_head }
%struct.nvmefc_ls_rsp = type { ptr, i32, i16, ptr, ptr }
%struct.nvmefc_fcp_req = type { ptr, ptr, i32, i32, i16, i16, i32, %struct.sg_table, ptr, i32, i32, i16, ptr, ptr, i32, i16, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.fcloop_ini_fcpreq = type { ptr, ptr, %struct.spinlock }
%struct.fcloop_fcpreq = type { ptr, ptr, %struct.spinlock, i16, i32, i8, i8, %struct.kref, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.nvmefc_tgt_fcp_req }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nvmefc_tgt_fcp_req = type { i8, i16, i32, i32, i32, %struct.fc_ba_rjt, ptr, i32, ptr, i32, i16, ptr, ptr, i32, i32 }
%struct.fc_ba_rjt = type { i8, i8, i8, i8 }
%struct.nvmet_fc_target_port = type { i32, i64, i64, ptr, i32, i32 }
%struct.fcloop_tport = type { ptr, ptr, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.work_struct }
%struct.fcloop_nport = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i64, i64, i32, i32 }
%struct.nvme_fc_cmd_iu = type { i8, i8, i16, [2 x i8], i8, i8, i64, i32, i32, %struct.nvme_command, i8, i8, i16, i32 }
%struct.nvme_command = type { %union.anon.85 }
%union.anon.85 = type { %struct.nvme_common_command }
%struct.nvme_common_command = type { i8, i8, i16, i32, [2 x i32], i64, %union.nvme_data_ptr, i32, i32, i32, i32, i32, i32 }
%union.nvme_data_ptr = type { %struct.anon.86 }
%struct.anon.86 = type { i64, i64 }
%struct.nvmet_fc_port_info = type { i64, i64, i32 }
%struct.fcloop_rscn = type { ptr, %struct.work_struct }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@fcloop_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@fcloop_nports = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @fcloop_nports, ptr @fcloop_nports }, [24 x i8] zeroinitializer }, align 32
@fcloop_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1614, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014nvme_fcloop: %s: Failed deleting target port\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fcloop_exit\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/nvme/target/fcloop.c\00", [35 x i8] zeroinitializer }, align 32
@fcloop_exit._entry_ptr = internal global ptr @fcloop_exit._entry, section ".printk_index", align 4
@fcloop_exit._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1618, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014nvme_fcloop: %s: Failed deleting remote port\0A\00", [48 x i8] zeroinitializer }, align 32
@fcloop_exit._entry_ptr.5 = internal global ptr @fcloop_exit._entry.3, section ".printk_index", align 4
@fcloop_lports = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @fcloop_lports, ptr @fcloop_lports }, [24 x i8] zeroinitializer }, align 32
@fcloop_exit._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 1635, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014nvme_fcloop: %s: Failed deleting local port\0A\00", [49 x i8] zeroinitializer }, align 32
@fcloop_exit._entry_ptr.8 = internal global ptr @fcloop_exit._entry.6, section ".printk_index", align 4
@fcloop_device = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@fcloop_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_nvme_fcloop__343_1648_fcloop_init6 = internal global ptr @fcloop_init, section ".initcall6.init", align 4
@__exitcall_fcloop_exit = internal global ptr @fcloop_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file344 = internal constant [49 x i8] c"nvme_fcloop.file=drivers/nvme/target/nvme-fcloop\00", section ".modinfo", align 1
@__UNIQUE_ID_license345 = internal constant [27 x i8] c"nvme_fcloop.license=GPL v2\00", section ".modinfo", align 1
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fcloop_lock\00", [20 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@fcloop_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fcloop\00", [25 x i8] zeroinitializer }, align 32
@fcloop_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 1567, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013nvme_fcloop: couldn't register class fcloop\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fcloop_init\00", [20 x i8] zeroinitializer }, align 32
@fcloop_init._entry_ptr = internal global ptr @fcloop_init._entry, section ".printk_index", align 4
@fcloop_dev_attr_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @fclopp_dev_attrs_group, ptr null], [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ctl\00", [28 x i8] zeroinitializer }, align 32
@fcloop_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.13, ptr @.str.2, i32 1576, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013nvme_fcloop: couldn't create ctl device!\0A\00", [52 x i8] zeroinitializer }, align 32
@fcloop_init._entry_ptr.17 = internal global ptr @fcloop_init._entry.15, section ".printk_index", align 4
@fclopp_dev_attrs_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @fcloop_dev_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@fcloop_dev_attrs = internal global { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @dev_attr_add_local_port, ptr @dev_attr_del_local_port, ptr @dev_attr_add_remote_port, ptr @dev_attr_del_remote_port, ptr @dev_attr_add_target_port, ptr @dev_attr_del_target_port, ptr @dev_attr_set_cmd_drop, ptr null], [32 x i8] zeroinitializer }, align 32
@dev_attr_add_local_port = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @fcloop_create_local_port }, [36 x i8] zeroinitializer }, align 32
@dev_attr_del_local_port = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @fcloop_delete_local_port }, [36 x i8] zeroinitializer }, align 32
@dev_attr_add_remote_port = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @fcloop_create_remote_port }, [36 x i8] zeroinitializer }, align 32
@dev_attr_del_remote_port = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @fcloop_delete_remote_port }, [36 x i8] zeroinitializer }, align 32
@dev_attr_add_target_port = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @fcloop_create_target_port }, [36 x i8] zeroinitializer }, align 32
@dev_attr_del_target_port = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @fcloop_delete_target_port }, [36 x i8] zeroinitializer }, align 32
@dev_attr_set_cmd_drop = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @fcloop_set_cmd_drop }, [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"add_local_port\00", [17 x i8] zeroinitializer }, align 32
@fctemplate = internal global { %struct.nvme_fc_port_template, [56 x i8] } { %struct.nvme_fc_port_template { ptr @fcloop_localport_delete, ptr @fcloop_remoteport_delete, ptr @fcloop_create_queue, ptr @fcloop_delete_queue, ptr @fcloop_h2t_ls_req, ptr @fcloop_fcp_req, ptr @fcloop_h2t_ls_abort, ptr @fcloop_fcp_abort, ptr @fcloop_t2h_xmt_ls_rsp, ptr null, i32 4, i16 256, i16 256, i64 4294967295, i32 4, i32 112, i32 40, i32 52 }, [56 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c",\0A\00", [29 x i8] zeroinitializer }, align 32
@opt_tokens = internal constant { [7 x %struct.match_token], [40 x i8] } { [7 x %struct.match_token] [%struct.match_token { i32 1, ptr @.str.22 }, %struct.match_token { i32 2, ptr @.str.23 }, %struct.match_token { i32 4, ptr @.str.24 }, %struct.match_token { i32 8, ptr @.str.25 }, %struct.match_token { i32 16, ptr @.str.26 }, %struct.match_token { i32 32, ptr @.str.27 }, %struct.match_token zeroinitializer], [40 x i8] zeroinitializer }, align 32
@fcloop_parse_options._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014nvme_fcloop: unknown parameter or missing value '%s'\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fcloop_parse_options\00", [43 x i8] zeroinitializer }, align 32
@fcloop_parse_options._entry_ptr = internal global ptr @fcloop_parse_options._entry, section ".printk_index", align 4
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"wwnn=%s\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"wwpn=%s\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"roles=%d\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fcaddr=%x\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lpwwnn=%s\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lpwwpn=%s\00", [22 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"0x\00", [29 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@fcloop_fcp_req.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&inireq->inilock\00", [47 x i8] zeroinitializer }, align 32
@fcloop_fcp_req.__key.30 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&tfcp_req->reqlock\00", [45 x i8] zeroinitializer }, align 32
@fcloop_fcp_req.__key.32 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&tfcp_req->fcp_rcv_work)\00", [53 x i8] zeroinitializer }, align 32
@fcloop_fcp_req.__key.34 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&tfcp_req->abort_rcv_work)\00", [51 x i8] zeroinitializer }, align 32
@fcloop_fcp_req.__key.36 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&tfcp_req->tio_done_work)\00", [52 x i8] zeroinitializer }, align 32
@fcloop_fcp_recv_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 643, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016nvme_fcloop: %s: dropped command ********\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fcloop_fcp_recv_work\00", [43 x i8] zeroinitializer }, align 32
@fcloop_fcp_recv_work._entry_ptr = internal global ptr @fcloop_fcp_recv_work._entry, section ".printk_index", align 4
@drop_opcode = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@check_for_drop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 594, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"\016nvme_fcloop: %s: seq opcd x%02x fctype x%02x: drop F %s op x%02x inst %d start %d amt %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"check_for_drop\00", [17 x i8] zeroinitializer }, align 32
@check_for_drop._entry_ptr = internal global ptr @check_for_drop._entry, section ".printk_index", align 4
@drop_fabric_opcode = internal global { i8, [31 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"y\00", [30 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"n\00", [30 x i8] zeroinitializer }, align 32
@drop_current_cnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@drop_instance = internal global { i32, [28 x i8] } zeroinitializer, align 32
@drop_amount = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"del_local_port\00", [17 x i8] zeroinitializer }, align 32
@fcloop_parse_nm_options._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.45, ptr @.str.2, i32 175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fcloop_parse_nm_options\00", [40 x i8] zeroinitializer }, align 32
@fcloop_parse_nm_options._entry_ptr = internal global ptr @fcloop_parse_nm_options._entry, section ".printk_index", align 4
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"add_remote_port\00", [16 x i8] zeroinitializer }, align 32
@fcloop_create_remote_port.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&rport->lock\00", [19 x i8] zeroinitializer }, align 32
@fcloop_create_remote_port.__key.48 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.49 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&rport->ls_work)\00", [61 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"del_remote_port\00", [16 x i8] zeroinitializer }, align 32
@fcloop_delete_remote_port.rport = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"add_target_port\00", [16 x i8] zeroinitializer }, align 32
@tgttemplate = internal global { %struct.nvmet_fc_target_template, [56 x i8] } { %struct.nvmet_fc_target_template { ptr @fcloop_targetport_delete, ptr @fcloop_h2t_xmt_ls_rsp, ptr @fcloop_fcp_op, ptr @fcloop_tgt_fcp_abort, ptr @fcloop_fcp_req_release, ptr null, ptr @fcloop_tgt_discovery_evt, ptr @fcloop_t2h_ls_req, ptr @fcloop_t2h_ls_abort, ptr @fcloop_t2h_host_release, i32 4, i16 256, i16 256, i64 4294967295, i32 0, i32 112, i32 40 }, [56 x i8] zeroinitializer }, align 32
@fcloop_create_target_port.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.52 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&tport->lock\00", [19 x i8] zeroinitializer }, align 32
@fcloop_create_target_port.__key.53 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.54 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&tport->ls_work)\00", [61 x i8] zeroinitializer }, align 32
@fcloop_tgt_discovery_evt.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.55 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&tgt_rscn->work)\00", [61 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"del_target_port\00", [16 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"set_cmd_drop\00", [19 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%x:%d:%d\00", [23 x i8] zeroinitializer }, align 32
@fcloop_set_cmd_drop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.2, i32 1523, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\016nvme_fcloop: %s: DROP: Starting at instance %d of%s opcode x%x drop +%d instances\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fcloop_set_cmd_drop\00", [44 x i8] zeroinitializer }, align 32
@fcloop_set_cmd_drop._entry_ptr = internal global ptr @fcloop_set_cmd_drop._entry, section ".printk_index", align 4
@.str.61 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" fabric\00", [24 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.63 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.67 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.68 = private unnamed_addr constant [12 x i8] c"fcloop_lock\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [14 x i8] c"fcloop_nports\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 205, i32 8 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1614, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1618, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant [14 x i8] c"fcloop_lports\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 204, i32 8 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1635, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant [14 x i8] c"fcloop_device\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1558, i32 23 }
@___asan_gen_.104 = private unnamed_addr constant [13 x i8] c"fcloop_class\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1557, i32 22 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 203, i32 8 }
@___asan_gen_.114 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 87, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1565, i32 17 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1567, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant [23 x i8] c"fcloop_dev_attr_groups\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1552, i32 38 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1574, i32 29 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1576, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant [23 x i8] c"fclopp_dev_attrs_group\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1548, i32 37 }
@___asan_gen_.146 = private unnamed_addr constant [17 x i8] c"fcloop_dev_attrs\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1537, i32 26 }
@___asan_gen_.149 = private unnamed_addr constant [24 x i8] c"dev_attr_add_local_port\00", align 1
@___asan_gen_.152 = private unnamed_addr constant [24 x i8] c"dev_attr_del_local_port\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [25 x i8] c"dev_attr_add_remote_port\00", align 1
@___asan_gen_.158 = private unnamed_addr constant [25 x i8] c"dev_attr_del_remote_port\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [25 x i8] c"dev_attr_add_target_port\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [25 x i8] c"dev_attr_del_target_port\00", align 1
@___asan_gen_.167 = private unnamed_addr constant [22 x i8] c"dev_attr_set_cmd_drop\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1529, i32 8 }
@___asan_gen_.173 = private unnamed_addr constant [11 x i8] c"fctemplate\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1047, i32 37 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 70, i32 25 }
@___asan_gen_.179 = private unnamed_addr constant [11 x i8] c"opt_tokens\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 36, i32 28 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 124, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 37, i32 19 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 38, i32 19 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 39, i32 20 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 40, i32 21 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 41, i32 21 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 42, i32 21 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 51, i32 23 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 731, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 736, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 737, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 738, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 739, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 643, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant [12 x i8] c"drop_opcode\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 570, i32 12 }
@___asan_gen_.263 = private unnamed_addr constant [19 x i8] c"drop_fabric_opcode\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 567, i32 13 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 590, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant [17 x i8] c"drop_current_cnt\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 573, i32 12 }
@___asan_gen_.275 = private unnamed_addr constant [14 x i8] c"drop_instance\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 571, i32 12 }
@___asan_gen_.278 = private unnamed_addr constant [12 x i8] c"drop_amount\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 572, i32 12 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1530, i32 8 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 175, i32 4 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1531, i32 8 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1338, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1339, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1532, i32 8 }
@___asan_gen_.308 = private unnamed_addr constant [6 x i8] c"rport\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1372, i32 30 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1533, i32 8 }
@___asan_gen_.314 = private unnamed_addr constant [12 x i8] c"tgttemplate\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1068, i32 40 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1436, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1437, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 521, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1534, i32 8 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1535, i32 8 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1507, i32 18 }
@___asan_gen_.344 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.356 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.357 = private constant [32 x i8] c"../drivers/nvme/target/fcloop.c\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1520, i32 2 }
@llvm.compiler.used = appending global [112 x ptr] [ptr @__UNIQUE_ID_file344, ptr @__UNIQUE_ID_license345, ptr @__exitcall_fcloop_exit, ptr @__initcall__kmod_nvme_fcloop__343_1648_fcloop_init6, ptr @check_for_drop._entry, ptr @check_for_drop._entry_ptr, ptr @fcloop_exit, ptr @fcloop_exit._entry, ptr @fcloop_exit._entry.3, ptr @fcloop_exit._entry.6, ptr @fcloop_exit._entry_ptr, ptr @fcloop_exit._entry_ptr.5, ptr @fcloop_exit._entry_ptr.8, ptr @fcloop_fcp_recv_work._entry, ptr @fcloop_fcp_recv_work._entry_ptr, ptr @fcloop_init._entry, ptr @fcloop_init._entry.15, ptr @fcloop_init._entry_ptr, ptr @fcloop_init._entry_ptr.17, ptr @fcloop_parse_nm_options._entry, ptr @fcloop_parse_nm_options._entry_ptr, ptr @fcloop_parse_options._entry, ptr @fcloop_parse_options._entry_ptr, ptr @fcloop_set_cmd_drop._entry, ptr @fcloop_set_cmd_drop._entry_ptr, ptr @fcloop_lock, ptr @fcloop_nports, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @fcloop_lports, ptr @.str.7, ptr @fcloop_device, ptr @fcloop_class, ptr @.str.9, ptr @init_completion.__key, ptr @.str.10, ptr @fcloop_init.__key, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @fcloop_dev_attr_groups, ptr @.str.14, ptr @.str.16, ptr @fclopp_dev_attrs_group, ptr @fcloop_dev_attrs, ptr @dev_attr_add_local_port, ptr @dev_attr_del_local_port, ptr @dev_attr_add_remote_port, ptr @dev_attr_del_remote_port, ptr @dev_attr_add_target_port, ptr @dev_attr_del_target_port, ptr @dev_attr_set_cmd_drop, ptr @.str.18, ptr @fctemplate, ptr @.str.19, ptr @opt_tokens, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @fcloop_fcp_req.__key, ptr @.str.29, ptr @fcloop_fcp_req.__key.30, ptr @.str.31, ptr @fcloop_fcp_req.__key.32, ptr @.str.33, ptr @fcloop_fcp_req.__key.34, ptr @.str.35, ptr @fcloop_fcp_req.__key.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @drop_opcode, ptr @.str.40, ptr @.str.41, ptr @drop_fabric_opcode, ptr @.str.42, ptr @.str.43, ptr @drop_current_cnt, ptr @drop_instance, ptr @drop_amount, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @fcloop_create_remote_port.__key, ptr @.str.47, ptr @fcloop_create_remote_port.__key.48, ptr @.str.49, ptr @.str.50, ptr @fcloop_delete_remote_port.rport, ptr @.str.51, ptr @tgttemplate, ptr @fcloop_create_target_port.__key, ptr @.str.52, ptr @fcloop_create_target_port.__key.53, ptr @.str.54, ptr @fcloop_tgt_discovery_evt.__key, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62], section "llvm.metadata"
@0 = internal global [97 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcloop_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcloop_nports to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcloop_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcloop_exit._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcloop_lports to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcloop_exit._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcloop_device to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcloop_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcloop_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcloop_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcloop_dev_attr_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcloop_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fclopp_dev_attrs_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcloop_dev_attrs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_add_local_port to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_del_local_port to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_add_remote_port to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_del_remote_port to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_add_target_port to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_del_target_port to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_set_cmd_drop to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fctemplate to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opt_tokens to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcloop_parse_options._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcloop_fcp_req.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcloop_fcp_req.__key.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcloop_fcp_req.__key.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcloop_fcp_req.__key.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcloop_fcp_req.__key.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcloop_fcp_recv_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drop_opcode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_for_drop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drop_fabric_opcode to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drop_current_cnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drop_instance to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drop_amount to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcloop_parse_nm_options._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcloop_create_remote_port.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcloop_create_remote_port.__key.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcloop_delete_remote_port.rport to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tgttemplate to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcloop_create_target_port.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcloop_create_target_port.__key.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcloop_tgt_discovery_evt.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcloop_set_cmd_drop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fcloop_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @fcloop_lock) #12
  %0 = load volatile ptr, ptr @fcloop_nports, align 4
  %cmp10.not130 = icmp eq ptr %0, @fcloop_nports
  %add.ptr131 = getelementptr i8, ptr %0, i32 -12
  %tobool.not128132 = icmp eq ptr %add.ptr131, null
  %tobool.not133 = or i1 %cmp10.not130, %tobool.not128132
  br i1 %tobool.not133, label %entry.for.cond46.preheader_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

entry.for.cond46.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond46.preheader

for.cond46.preheader:                             ; preds = %do.body34.for.cond46.preheader_crit_edge, %entry.for.cond46.preheader_crit_edge
  %flags.0.lcssa = phi i32 [ %call2, %entry.for.cond46.preheader_crit_edge ], [ %call41, %do.body34.for.cond46.preheader_crit_edge ]
  %1 = load volatile ptr, ptr @fcloop_lports, align 4
  %cmp55.not138 = icmp eq ptr %1, @fcloop_lports
  %add.ptr60139 = getelementptr i8, ptr %1, i32 -4
  %tobool64.not129140 = icmp eq ptr %add.ptr60139, null
  %tobool64.not141 = or i1 %cmp55.not138, %tobool64.not129140
  br i1 %tobool64.not141, label %for.cond46.preheader.for.end89_crit_edge, label %for.cond46.preheader.if.end66_crit_edge

for.cond46.preheader.if.end66_crit_edge:          ; preds = %for.cond46.preheader
  br label %if.end66

for.cond46.preheader.for.end89_crit_edge:         ; preds = %for.cond46.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end89

if.end:                                           ; preds = %do.body34.if.end_crit_edge, %entry.if.end_crit_edge
  %add.ptr136 = phi ptr [ %add.ptr, %do.body34.if.end_crit_edge ], [ %add.ptr131, %entry.if.end_crit_edge ]
  %2 = phi ptr [ %18, %do.body34.if.end_crit_edge ], [ %0, %entry.if.end_crit_edge ]
  %flags.0134 = phi i32 [ %call41, %do.body34.if.end_crit_edge ], [ %call2, %entry.if.end_crit_edge ]
  %tport1.i = getelementptr i8, ptr %2, i32 -8
  %3 = ptrtoint ptr %tport1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tport1.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.__unlink_target_port.exit_crit_edge, label %land.lhs.true.i

if.end.__unlink_target_port.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %__unlink_target_port.exit

land.lhs.true.i:                                  ; preds = %if.end
  %5 = ptrtoint ptr %add.ptr136 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr136, align 8
  %tobool2.not.i = icmp eq ptr %6, null
  br i1 %tobool2.not.i, label %__targetport_unreg.exit.thread, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %targetport.i = getelementptr inbounds %struct.fcloop_rport, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %targetport.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %targetport.i, align 4
  br label %__unlink_target_port.exit

__unlink_target_port.exit:                        ; preds = %if.then.i, %if.end.__unlink_target_port.exit_crit_edge
  %8 = ptrtoint ptr %add.ptr136 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr = load ptr, ptr %add.ptr136, align 8
  %9 = ptrtoint ptr %tport1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %tport1.i, align 4
  %tobool.not.i106 = icmp eq ptr %.pr, null
  store ptr null, ptr %add.ptr136, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @fcloop_lock, i32 noundef %flags.0134) #12
  br i1 %tobool.not.i, label %__unlink_target_port.exit.do.end20_crit_edge, label %__targetport_unreg.exit

__unlink_target_port.exit.do.end20_crit_edge:     ; preds = %__unlink_target_port.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end20

__targetport_unreg.exit:                          ; preds = %__unlink_target_port.exit
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %4, align 4
  %call.i = tail call i32 @nvmet_fc_unregister_targetport(ptr noundef %11) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool16.not = icmp eq i32 %call.i, 0
  br i1 %tobool16.not, label %if.end23, label %__targetport_unreg.exit.do.end20_crit_edge

__targetport_unreg.exit.do.end20_crit_edge:       ; preds = %__targetport_unreg.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end20

__targetport_unreg.exit.thread:                   ; preds = %land.lhs.true.i
  %12 = ptrtoint ptr %tport1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %tport1.i, align 4
  %13 = ptrtoint ptr %add.ptr136 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %add.ptr136, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @fcloop_lock, i32 noundef %flags.0134) #12
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %4, align 4
  %call.i146 = tail call i32 @nvmet_fc_unregister_targetport(ptr noundef %15) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i146)
  %tobool16.not147 = icmp eq i32 %call.i146, 0
  br i1 %tobool16.not147, label %__targetport_unreg.exit.thread.do.end29_crit_edge, label %do.end20.thread

__targetport_unreg.exit.thread.do.end29_crit_edge: ; preds = %__targetport_unreg.exit.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end29

do.end20.thread:                                  ; preds = %__targetport_unreg.exit.thread
  call void @__sanitizer_cov_trace_pc() #14
  %call22151 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #15
  br label %do.end29

do.end20:                                         ; preds = %__targetport_unreg.exit.do.end20_crit_edge, %__unlink_target_port.exit.do.end20_crit_edge
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #15
  br i1 %tobool.not.i106, label %do.end20.do.end29_crit_edge, label %do.end20.__remoteport_unreg.exit_crit_edge

do.end20.__remoteport_unreg.exit_crit_edge:       ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %__remoteport_unreg.exit

do.end20.do.end29_crit_edge:                      ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end29

if.end23:                                         ; preds = %__targetport_unreg.exit
  br i1 %tobool.not.i106, label %if.end23.do.end29_crit_edge, label %if.end23.__remoteport_unreg.exit_crit_edge

if.end23.__remoteport_unreg.exit_crit_edge:       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %__remoteport_unreg.exit

if.end23.do.end29_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end29

__remoteport_unreg.exit:                          ; preds = %if.end23.__remoteport_unreg.exit_crit_edge, %do.end20.__remoteport_unreg.exit_crit_edge
  %16 = ptrtoint ptr %.pr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %.pr, align 4
  %call.i112 = tail call i32 @nvme_fc_unregister_remoteport(ptr noundef %17) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i112)
  %tobool25.not = icmp eq i32 %call.i112, 0
  br i1 %tobool25.not, label %__remoteport_unreg.exit.do.body34_crit_edge, label %__remoteport_unreg.exit.do.end29_crit_edge

__remoteport_unreg.exit.do.end29_crit_edge:       ; preds = %__remoteport_unreg.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end29

__remoteport_unreg.exit.do.body34_crit_edge:      ; preds = %__remoteport_unreg.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body34

do.end29:                                         ; preds = %__remoteport_unreg.exit.do.end29_crit_edge, %if.end23.do.end29_crit_edge, %do.end20.do.end29_crit_edge, %do.end20.thread, %__targetport_unreg.exit.thread.do.end29_crit_edge
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #15
  br label %do.body34

do.body34:                                        ; preds = %do.end29, %__remoteport_unreg.exit.do.body34_crit_edge
  %call41 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @fcloop_lock) #12
  %18 = load volatile ptr, ptr @fcloop_nports, align 4
  %cmp10.not = icmp eq ptr %18, @fcloop_nports
  %add.ptr = getelementptr i8, ptr %18, i32 -12
  %tobool.not128 = icmp eq ptr %add.ptr, null
  %tobool.not = or i1 %cmp10.not, %tobool.not128
  br i1 %tobool.not, label %do.body34.for.cond46.preheader_crit_edge, label %do.body34.if.end_crit_edge

do.body34.if.end_crit_edge:                       ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.body34.for.cond46.preheader_crit_edge:         ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond46.preheader

if.end66:                                         ; preds = %do.body77.if.end66_crit_edge, %for.cond46.preheader.if.end66_crit_edge
  %add.ptr60143 = phi ptr [ %add.ptr60, %do.body77.if.end66_crit_edge ], [ %add.ptr60139, %for.cond46.preheader.if.end66_crit_edge ]
  %19 = phi ptr [ %31, %do.body77.if.end66_crit_edge ], [ %1, %for.cond46.preheader.if.end66_crit_edge ]
  %flags.1142 = phi i32 [ %call84, %do.body77.if.end66_crit_edge ], [ %flags.0.lcssa, %for.cond46.preheader.if.end66_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %19) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end66.__unlink_local_port.exit_crit_edge

if.end66.__unlink_local_port.exit_crit_edge:      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  br label %__unlink_local_port.exit

if.end.i.i.i:                                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr i8, ptr %19, i32 4
  %20 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i.i, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %19, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %__unlink_local_port.exit

__unlink_local_port.exit:                         ; preds = %if.end.i.i.i, %if.end66.__unlink_local_port.exit_crit_edge
  %26 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 256 to ptr), ptr %19, align 4
  %prev.i.i = getelementptr i8, ptr %19, i32 4
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @fcloop_lock, i32 noundef %flags.1142) #12
  %unreg_done.i = getelementptr i8, ptr %19, i32 8
  %28 = ptrtoint ptr %unreg_done.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %unreg_done.i, align 4
  %wait.i.i = getelementptr i8, ptr %19, i32 12
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @init_completion.__key) #12
  %29 = ptrtoint ptr %add.ptr60143 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr60143, align 4
  %call.i115 = tail call i32 @nvme_fc_unregister_localport(ptr noundef %30) #12
  tail call void @wait_for_completion(ptr noundef %unreg_done.i) #12
  tail call void @kfree(ptr noundef nonnull %add.ptr60143) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i115)
  %tobool68.not = icmp eq i32 %call.i115, 0
  br i1 %tobool68.not, label %__unlink_local_port.exit.do.body77_crit_edge, label %do.end72

__unlink_local_port.exit.do.body77_crit_edge:     ; preds = %__unlink_local_port.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body77

do.end72:                                         ; preds = %__unlink_local_port.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1) #15
  br label %do.body77

do.body77:                                        ; preds = %do.end72, %__unlink_local_port.exit.do.body77_crit_edge
  %call84 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @fcloop_lock) #12
  %31 = load volatile ptr, ptr @fcloop_lports, align 4
  %cmp55.not = icmp eq ptr %31, @fcloop_lports
  %add.ptr60 = getelementptr i8, ptr %31, i32 -4
  %tobool64.not129 = icmp eq ptr %add.ptr60, null
  %tobool64.not = or i1 %cmp55.not, %tobool64.not129
  br i1 %tobool64.not, label %do.body77.for.end89_crit_edge, label %do.body77.if.end66_crit_edge

do.body77.if.end66_crit_edge:                     ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end66

do.body77.for.end89_crit_edge:                    ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end89

for.end89:                                        ; preds = %do.body77.for.end89_crit_edge, %for.cond46.preheader.for.end89_crit_edge
  %flags.1.lcssa = phi i32 [ %flags.0.lcssa, %for.cond46.preheader.for.end89_crit_edge ], [ %call84, %do.body77.for.end89_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @fcloop_lock, i32 noundef %flags.1.lcssa) #12
  %32 = load ptr, ptr @fcloop_device, align 4
  tail call void @put_device(ptr noundef %32) #12
  %33 = load ptr, ptr @fcloop_class, align 4
  tail call void @device_destroy(ptr noundef %33, i32 noundef 0) #12
  %34 = load ptr, ptr @fcloop_class, align 4
  tail call void @class_destroy(ptr noundef %34) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_destroy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fcloop_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @fcloop_init.__key) #12
  store ptr %call, ptr @fcloop_class, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #15
  %0 = load ptr, ptr @fcloop_class, align 4
  %1 = ptrtoint ptr %0 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call ptr (ptr, ptr, i32, ptr, ptr, ptr, ...) @device_create_with_groups(ptr noundef %call, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef nonnull @fcloop_dev_attr_groups, ptr noundef nonnull @.str.14) #12
  store ptr %call5, ptr @fcloop_device, align 4
  %cmp.i17 = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i17, label %do.end10, label %if.end14

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #15
  %2 = load ptr, ptr @fcloop_device, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = load ptr, ptr @fcloop_class, align 4
  tail call void @class_destroy(ptr noundef %4) #12
  br label %cleanup

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call15 = tail call ptr @get_device(ptr noundef %call5) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %do.end10, %do.end
  %retval.0 = phi i32 [ %1, %do.end ], [ %3, %do.end10 ], [ 0, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvmet_fc_unregister_targetport(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_fc_unregister_remoteport(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_fc_unregister_localport(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create_with_groups(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fcloop_create_local_port(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #4 align 64 {
entry:
  %pinfo = alloca %struct.nvme_fc_port_info, align 8
  %localport = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %pinfo) #12
  %0 = call ptr @memset(ptr %pinfo, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %localport) #12
  %1 = ptrtoint ptr %localport to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %localport, align 4, !annotation !179
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 68) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i50 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 48) #16
  %tobool2.not = icmp eq ptr %call7.i.i50, null
  br i1 %tobool2.not, label %if.end26.thread62, label %if.end4

if.end26.thread62:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call fastcc i32 @fcloop_parse_options(ptr noundef nonnull %call7.i.i50, ptr noundef %buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.if.end26_crit_edge

if.end4.if.end26_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.end8:                                          ; preds = %if.end4
  %4 = ptrtoint ptr %call7.i.i50 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call7.i.i50, align 8
  %and = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp.not = icmp eq i32 %and, 3
  br i1 %cmp.not, label %if.end10, label %if.end8.if.end26_crit_edge

if.end8.if.end26_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.end10:                                         ; preds = %if.end8
  %6 = getelementptr inbounds i8, ptr %pinfo, i32 24
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %6, align 8
  %wwnn = getelementptr inbounds %struct.fcloop_ctrl_options, ptr %call7.i.i50, i32 0, i32 1
  %8 = ptrtoint ptr %wwnn to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %wwnn, align 8
  %10 = ptrtoint ptr %pinfo to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %pinfo, align 8
  %wwpn = getelementptr inbounds %struct.fcloop_ctrl_options, ptr %call7.i.i50, i32 0, i32 2
  %11 = ptrtoint ptr %wwpn to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %wwpn, align 8
  %port_name = getelementptr inbounds %struct.nvme_fc_port_info, ptr %pinfo, i32 0, i32 1
  %13 = ptrtoint ptr %port_name to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %port_name, align 8
  %roles = getelementptr inbounds %struct.fcloop_ctrl_options, ptr %call7.i.i50, i32 0, i32 3
  %14 = ptrtoint ptr %roles to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %roles, align 8
  %port_role = getelementptr inbounds %struct.nvme_fc_port_info, ptr %pinfo, i32 0, i32 2
  %16 = ptrtoint ptr %port_role to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %port_role, align 8
  %fcaddr = getelementptr inbounds %struct.fcloop_ctrl_options, ptr %call7.i.i50, i32 0, i32 4
  %17 = ptrtoint ptr %fcaddr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fcaddr, align 4
  %port_id = getelementptr inbounds %struct.nvme_fc_port_info, ptr %pinfo, i32 0, i32 3
  %19 = ptrtoint ptr %port_id to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %port_id, align 4
  %call11 = call i32 @nvme_fc_register_localport(ptr noundef nonnull %pinfo, ptr noundef nonnull @fctemplate, ptr noundef null, ptr noundef nonnull %localport) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then13, label %if.end10.if.end26_crit_edge

if.end10.if.end26_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.then13:                                        ; preds = %if.end10
  %20 = ptrtoint ptr %localport to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %localport, align 4
  %private = getelementptr inbounds %struct.nvme_fc_local_port, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %private, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i.i, ptr %23, align 4
  %25 = load ptr, ptr %localport, align 4
  %26 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %call7.i.i, align 8
  %lport_list = getelementptr inbounds %struct.fcloop_lport, ptr %call7.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %lport_list to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %lport_list, ptr %lport_list, align 4
  %prev.i = getelementptr inbounds %struct.fcloop_lport, ptr %call7.i.i, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %lport_list, ptr %prev.i, align 8
  %call19 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @fcloop_lock) #12
  %29 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @fcloop_lports, i32 0, i32 1), align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %lport_list, ptr noundef %29, ptr noundef nonnull @fcloop_lports) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.then13._crit_edge

if.then13._crit_edge:                             ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  br label %33

if.end.i.i:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  store ptr %lport_list, ptr getelementptr inbounds (%struct.list_head, ptr @fcloop_lports, i32 0, i32 1), align 4
  %30 = ptrtoint ptr %lport_list to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @fcloop_lports, ptr %lport_list, align 4
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %29, ptr %prev.i, align 8
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %lport_list, ptr %29, align 4
  br label %33

if.end26:                                         ; preds = %if.end10.if.end26_crit_edge, %if.end8.if.end26_crit_edge, %if.end4.if.end26_crit_edge
  %ret.0.ph = phi i32 [ -22, %if.end8.if.end26_crit_edge ], [ %call11, %if.end10.if.end26_crit_edge ], [ %call5, %if.end4.if.end26_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i50) #12
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

33:                                               ; preds = %if.end.i.i, %if.then13._crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @fcloop_lock, i32 noundef %call19) #12
  call void @kfree(ptr noundef nonnull %call7.i.i50) #12
  br label %cleanup

cleanup:                                          ; preds = %33, %if.end26, %if.end26.thread62, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %count, %33 ], [ %ret.0.ph, %if.end26 ], [ -12, %if.end26.thread62 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %localport) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pinfo) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fcloop_parse_options(ptr nocapture noundef %opts, ptr noundef %buf) unnamed_addr #4 align 64 {
entry:
  %args = alloca [3 x %struct.substring_t], align 4
  %o = alloca ptr, align 4
  %token = alloca i32, align 4
  %token64 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args) #12
  %0 = getelementptr inbounds %struct.substring_t, ptr %args, i32 0, i32 1
  %1 = call ptr @memset(ptr %args, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %o) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %token) #12
  %2 = ptrtoint ptr %token to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %token, align 4, !annotation !179
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %token64) #12
  %3 = ptrtoint ptr %token64 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %token64, align 8, !annotation !179
  %call = tail call noalias ptr @kstrdup(ptr noundef %buf, i32 noundef 3264) #12
  %4 = ptrtoint ptr %o to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %o, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %call1123 = call ptr @strsep(ptr noundef nonnull %o, ptr noundef nonnull @.str.19) #12
  %cmp.not124 = icmp eq ptr %call1123, null
  br i1 %cmp.not124, label %while.cond.preheader.out_free_options_crit_edge, label %while.body.lr.ph

while.cond.preheader.out_free_options_crit_edge:  ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_options

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %lpwwpn = getelementptr inbounds %struct.fcloop_ctrl_options, ptr %opts, i32 0, i32 6
  %lpwwnn = getelementptr inbounds %struct.fcloop_ctrl_options, ptr %opts, i32 0, i32 5
  %fcaddr = getelementptr inbounds %struct.fcloop_ctrl_options, ptr %opts, i32 0, i32 4
  %roles = getelementptr inbounds %struct.fcloop_ctrl_options, ptr %opts, i32 0, i32 3
  %wwpn = getelementptr inbounds %struct.fcloop_ctrl_options, ptr %opts, i32 0, i32 2
  %wwnn = getelementptr inbounds %struct.fcloop_ctrl_options, ptr %opts, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %call1125 = phi ptr [ %call1123, %while.body.lr.ph ], [ %call1, %while.cond.backedge.while.body_crit_edge ]
  %5 = ptrtoint ptr %call1125 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %call1125, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2.not = icmp eq i8 %6, 0
  br i1 %tobool2.not, label %while.body.while.cond.backedge_crit_edge, label %if.end4

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge

if.end4:                                          ; preds = %while.body
  %call5 = call i32 @match_token(ptr noundef nonnull %call1125, ptr noundef nonnull @opt_tokens, ptr noundef nonnull %args) #12
  %7 = ptrtoint ptr %token to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call5, ptr %token, align 4
  %8 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %opts, align 8
  %or = or i32 %9, %call5
  store i32 %or, ptr %opts, align 8
  %10 = zext i32 %call5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call5, label %do.end [
    i32 1, label %sw.bb
    i32 2, label %sw.bb14
    i32 4, label %sw.bb24
    i32 8, label %sw.bb30
    i32 16, label %sw.bb36
    i32 32, label %sw.bb46
  ]

sw.bb:                                            ; preds = %if.end4
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %0, align 4
  %13 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %args, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %12 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %14 to i32
  %sub.ptr.sub.i = add i32 %sub.ptr.lhs.cast.i, 1
  %add.i = sub i32 %sub.ptr.sub.i, %sub.ptr.rhs.cast.i
  %call.i = call i32 @strnlen(ptr noundef %14, i32 noundef %add.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 18
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %sw.bb.out_free_options_crit_edge

sw.bb.out_free_options_crit_edge:                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_options

lor.lhs.false.i:                                  ; preds = %sw.bb
  %call3.i = call i32 @strncmp(ptr noundef %14, ptr noundef nonnull dereferenceable(3) @.str.28, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false, label %lor.lhs.false.i.out_free_options_crit_edge

lor.lhs.false.i.out_free_options_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_options

lor.lhs.false:                                    ; preds = %lor.lhs.false.i
  %call10 = call i32 @match_u64(ptr noundef nonnull %args, ptr noundef nonnull %token64) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %lor.lhs.false.out_free_options_crit_edge

lor.lhs.false.out_free_options_crit_edge:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_options

if.end13:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %token64 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %token64, align 8
  %17 = ptrtoint ptr %wwnn to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %wwnn, align 8
  br label %while.cond.backedge

sw.bb14:                                          ; preds = %if.end4
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %0, align 4
  %20 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %args, align 4
  %sub.ptr.lhs.cast.i73 = ptrtoint ptr %19 to i32
  %sub.ptr.rhs.cast.i74 = ptrtoint ptr %21 to i32
  %sub.ptr.sub.i75 = add i32 %sub.ptr.lhs.cast.i73, 1
  %add.i76 = sub i32 %sub.ptr.sub.i75, %sub.ptr.rhs.cast.i74
  %call.i77 = call i32 @strnlen(ptr noundef %21, i32 noundef %add.i76) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %call.i77)
  %cmp.not.i78 = icmp eq i32 %call.i77, 18
  br i1 %cmp.not.i78, label %lor.lhs.false.i82, label %sw.bb14.out_free_options_crit_edge

sw.bb14.out_free_options_crit_edge:               ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_options

lor.lhs.false.i82:                                ; preds = %sw.bb14
  %call3.i79 = call i32 @strncmp(ptr noundef %21, ptr noundef nonnull dereferenceable(3) @.str.28, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i79)
  %tobool.not.i80 = icmp eq i32 %call3.i79, 0
  br i1 %tobool.not.i80, label %lor.lhs.false18, label %lor.lhs.false.i82.out_free_options_crit_edge

lor.lhs.false.i82.out_free_options_crit_edge:     ; preds = %lor.lhs.false.i82
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_options

lor.lhs.false18:                                  ; preds = %lor.lhs.false.i82
  %call20 = call i32 @match_u64(ptr noundef nonnull %args, ptr noundef nonnull %token64) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %lor.lhs.false18.out_free_options_crit_edge

lor.lhs.false18.out_free_options_crit_edge:       ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_options

if.end23:                                         ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %token64 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %token64, align 8
  %24 = ptrtoint ptr %wwpn to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %wwpn, align 8
  br label %while.cond.backedge

sw.bb24:                                          ; preds = %if.end4
  %call26 = call i32 @match_int(ptr noundef nonnull %args, ptr noundef nonnull %token) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %sw.bb24.out_free_options_crit_edge

sw.bb24.out_free_options_crit_edge:               ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_options

if.end29:                                         ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %token, align 4
  %27 = ptrtoint ptr %roles to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %roles, align 8
  br label %while.cond.backedge

sw.bb30:                                          ; preds = %if.end4
  %call32 = call i32 @match_hex(ptr noundef nonnull %args, ptr noundef nonnull %token) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %sw.bb30.out_free_options_crit_edge

sw.bb30.out_free_options_crit_edge:               ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_options

if.end35:                                         ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %token, align 4
  %30 = ptrtoint ptr %fcaddr to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %fcaddr, align 4
  br label %while.cond.backedge

sw.bb36:                                          ; preds = %if.end4
  %31 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %0, align 4
  %33 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %args, align 4
  %sub.ptr.lhs.cast.i86 = ptrtoint ptr %32 to i32
  %sub.ptr.rhs.cast.i87 = ptrtoint ptr %34 to i32
  %sub.ptr.sub.i88 = add i32 %sub.ptr.lhs.cast.i86, 1
  %add.i89 = sub i32 %sub.ptr.sub.i88, %sub.ptr.rhs.cast.i87
  %call.i90 = call i32 @strnlen(ptr noundef %34, i32 noundef %add.i89) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %call.i90)
  %cmp.not.i91 = icmp eq i32 %call.i90, 18
  br i1 %cmp.not.i91, label %lor.lhs.false.i95, label %sw.bb36.out_free_options_crit_edge

sw.bb36.out_free_options_crit_edge:               ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_options

lor.lhs.false.i95:                                ; preds = %sw.bb36
  %call3.i92 = call i32 @strncmp(ptr noundef %34, ptr noundef nonnull dereferenceable(3) @.str.28, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i92)
  %tobool.not.i93 = icmp eq i32 %call3.i92, 0
  br i1 %tobool.not.i93, label %lor.lhs.false40, label %lor.lhs.false.i95.out_free_options_crit_edge

lor.lhs.false.i95.out_free_options_crit_edge:     ; preds = %lor.lhs.false.i95
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_options

lor.lhs.false40:                                  ; preds = %lor.lhs.false.i95
  %call42 = call i32 @match_u64(ptr noundef nonnull %args, ptr noundef nonnull %token64) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %lor.lhs.false40.out_free_options_crit_edge

lor.lhs.false40.out_free_options_crit_edge:       ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_options

if.end45:                                         ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %token64 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %token64, align 8
  %37 = ptrtoint ptr %lpwwnn to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %lpwwnn, align 8
  br label %while.cond.backedge

sw.bb46:                                          ; preds = %if.end4
  %38 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %0, align 4
  %40 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %args, align 4
  %sub.ptr.lhs.cast.i99 = ptrtoint ptr %39 to i32
  %sub.ptr.rhs.cast.i100 = ptrtoint ptr %41 to i32
  %sub.ptr.sub.i101 = add i32 %sub.ptr.lhs.cast.i99, 1
  %add.i102 = sub i32 %sub.ptr.sub.i101, %sub.ptr.rhs.cast.i100
  %call.i103 = call i32 @strnlen(ptr noundef %41, i32 noundef %add.i102) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %call.i103)
  %cmp.not.i104 = icmp eq i32 %call.i103, 18
  br i1 %cmp.not.i104, label %lor.lhs.false.i108, label %sw.bb46.out_free_options_crit_edge

sw.bb46.out_free_options_crit_edge:               ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_options

lor.lhs.false.i108:                               ; preds = %sw.bb46
  %call3.i105 = call i32 @strncmp(ptr noundef %41, ptr noundef nonnull dereferenceable(3) @.str.28, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i105)
  %tobool.not.i106 = icmp eq i32 %call3.i105, 0
  br i1 %tobool.not.i106, label %lor.lhs.false50, label %lor.lhs.false.i108.out_free_options_crit_edge

lor.lhs.false.i108.out_free_options_crit_edge:    ; preds = %lor.lhs.false.i108
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_options

lor.lhs.false50:                                  ; preds = %lor.lhs.false.i108
  %call52 = call i32 @match_u64(ptr noundef nonnull %args, ptr noundef nonnull %token64) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %lor.lhs.false50.out_free_options_crit_edge

lor.lhs.false50.out_free_options_crit_edge:       ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_options

if.end55:                                         ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %token64 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %token64, align 8
  %44 = ptrtoint ptr %lpwwpn to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %43, ptr %lpwwpn, align 8
  br label %while.cond.backedge

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %call56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull %call1125) #15
  br label %out_free_options

while.cond.backedge:                              ; preds = %if.end55, %if.end45, %if.end35, %if.end29, %if.end23, %if.end13, %while.body.while.cond.backedge_crit_edge
  %call1 = call ptr @strsep(ptr noundef nonnull %o, ptr noundef nonnull @.str.19) #12
  %cmp.not = icmp eq ptr %call1, null
  br i1 %cmp.not, label %while.cond.backedge.out_free_options_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.cond.backedge.out_free_options_crit_edge:   ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_options

out_free_options:                                 ; preds = %while.cond.backedge.out_free_options_crit_edge, %do.end, %lor.lhs.false50.out_free_options_crit_edge, %lor.lhs.false.i108.out_free_options_crit_edge, %sw.bb46.out_free_options_crit_edge, %lor.lhs.false40.out_free_options_crit_edge, %lor.lhs.false.i95.out_free_options_crit_edge, %sw.bb36.out_free_options_crit_edge, %sw.bb30.out_free_options_crit_edge, %sw.bb24.out_free_options_crit_edge, %lor.lhs.false18.out_free_options_crit_edge, %lor.lhs.false.i82.out_free_options_crit_edge, %sw.bb14.out_free_options_crit_edge, %lor.lhs.false.out_free_options_crit_edge, %lor.lhs.false.i.out_free_options_crit_edge, %sw.bb.out_free_options_crit_edge, %while.cond.preheader.out_free_options_crit_edge
  %ret.0 = phi i32 [ -22, %do.end ], [ 0, %while.cond.preheader.out_free_options_crit_edge ], [ 0, %while.cond.backedge.out_free_options_crit_edge ], [ -22, %lor.lhs.false.out_free_options_crit_edge ], [ -22, %lor.lhs.false18.out_free_options_crit_edge ], [ -22, %sw.bb24.out_free_options_crit_edge ], [ -22, %sw.bb30.out_free_options_crit_edge ], [ -22, %lor.lhs.false40.out_free_options_crit_edge ], [ -22, %lor.lhs.false50.out_free_options_crit_edge ], [ -22, %sw.bb.out_free_options_crit_edge ], [ -22, %lor.lhs.false.i.out_free_options_crit_edge ], [ -22, %sw.bb14.out_free_options_crit_edge ], [ -22, %lor.lhs.false.i82.out_free_options_crit_edge ], [ -22, %sw.bb36.out_free_options_crit_edge ], [ -22, %lor.lhs.false.i95.out_free_options_crit_edge ], [ -22, %sw.bb46.out_free_options_crit_edge ], [ -22, %lor.lhs.false.i108.out_free_options_crit_edge ]
  call void @kfree(ptr noundef nonnull %call) #12
  br label %cleanup

cleanup:                                          ; preds = %out_free_options, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_free_options ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %token64) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %token) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %o) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_fc_register_localport(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_token(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_u64(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_int(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_hex(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fcloop_localport_delete(ptr nocapture noundef readonly %localport) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.nvme_fc_local_port, ptr %localport, i32 0, i32 4
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %unreg_done = getelementptr inbounds %struct.fcloop_lport, ptr %3, i32 0, i32 2
  tail call void @complete(ptr noundef %unreg_done) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fcloop_remoteport_delete(ptr nocapture noundef readonly %remoteport) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.nvme_fc_remote_port, ptr %remoteport, i32 0, i32 5
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %ls_work = getelementptr inbounds %struct.fcloop_rport, ptr %1, i32 0, i32 6
  %call = tail call zeroext i1 @flush_work(ptr noundef %ls_work) #12
  %nport = getelementptr inbounds %struct.fcloop_rport, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nport, align 4
  tail call fastcc void @fcloop_nport_put(ptr noundef %3)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @fcloop_create_queue(ptr noundef %localport, i32 noundef %qidx, i16 noundef zeroext %qsize, ptr nocapture noundef writeonly %handle) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %localport, ptr %handle, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @fcloop_delete_queue(ptr nocapture noundef %localport, i32 noundef %idx, ptr nocapture noundef %handle) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fcloop_h2t_ls_req(ptr nocapture noundef readnone %localport, ptr nocapture noundef readonly %remoteport, ptr noundef %lsreq) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.nvmefc_ls_req, ptr %lsreq, i32 0, i32 7
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %private1 = getelementptr inbounds %struct.nvme_fc_remote_port, ptr %remoteport, i32 0, i32 5
  %2 = ptrtoint ptr %private1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private1, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %lsreq, ptr %1, align 4
  %ls_list = getelementptr inbounds %struct.fcloop_lsreq, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %ls_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %ls_list, ptr %ls_list, align 4
  %prev.i = getelementptr inbounds %struct.fcloop_lsreq, ptr %1, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ls_list, ptr %prev.i, align 4
  %targetport = getelementptr inbounds %struct.fcloop_rport, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %targetport to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %targetport, align 4
  %tobool.not = icmp eq ptr %8, null
  %status = getelementptr inbounds %struct.fcloop_lsreq, ptr %1, i32 0, i32 3
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -111, ptr %status, align 4
  %lock = getelementptr inbounds %struct.fcloop_rport, ptr %3, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %ls_list3 = getelementptr inbounds %struct.fcloop_rport, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ls_list3, ptr noundef %11, ptr noundef %ls_list) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_add_tail.exit_crit_edge

if.then.list_add_tail.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %ls_list3, ptr %prev.i, align 4
  %13 = ptrtoint ptr %ls_list3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %ls_list, ptr %ls_list3, align 4
  %prev3.i.i = getelementptr inbounds %struct.fcloop_rport, ptr %3, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %ls_list3, ptr %11, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  %ls_work = getelementptr inbounds %struct.fcloop_rport, ptr %3, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %16 = load ptr, ptr @system_wq, align 4
  %call.i.i27 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %16, ptr noundef %ls_work) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %status, align 4
  %18 = ptrtoint ptr %targetport to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %targetport, align 4
  %ls_rsp = getelementptr inbounds %struct.fcloop_lsreq, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %lsreq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lsreq, align 8
  %rqstlen = getelementptr inbounds %struct.nvmefc_ls_req, ptr %lsreq, i32 0, i32 2
  %22 = ptrtoint ptr %rqstlen to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rqstlen, align 8
  %call8 = tail call i32 @nvmet_fc_rcv_ls_req(ptr noundef %19, ptr noundef %3, ptr noundef %ls_rsp, ptr noundef %21, i32 noundef %23) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %list_add_tail.exit
  %retval.0 = phi i32 [ %call8, %if.end ], [ 0, %list_add_tail.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fcloop_fcp_req(ptr nocapture noundef readnone %localport, ptr nocapture noundef readonly %remoteport, ptr nocapture noundef readnone %hw_queue_handle, ptr noundef %fcpreq) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.nvme_fc_remote_port, ptr %remoteport, i32 0, i32 5
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %private1 = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %fcpreq, i32 0, i32 13
  %2 = ptrtoint ptr %private1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private1, align 8
  %targetport = getelementptr inbounds %struct.fcloop_rport, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %targetport to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %targetport, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 2848, i32 noundef 256) #16
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %fcpreq, ptr %3, align 4
  %tfcp_req6 = getelementptr inbounds %struct.fcloop_ini_fcpreq, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %tfcp_req6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %tfcp_req6, align 4
  %inilock = getelementptr inbounds %struct.fcloop_ini_fcpreq, ptr %3, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %inilock, ptr noundef nonnull @.str.29, ptr noundef nonnull @fcloop_fcp_req.__key, i16 noundef signext 3) #12
  %fcpreq8 = getelementptr inbounds %struct.fcloop_fcpreq, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %fcpreq8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %fcpreq, ptr %fcpreq8, align 4
  %10 = ptrtoint ptr %targetport to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %targetport, align 4
  %private10 = getelementptr inbounds %struct.nvmet_fc_target_port, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %private10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private10, align 8
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %call7.i.i, align 8
  %inistate = getelementptr inbounds %struct.fcloop_fcpreq, ptr %call7.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %inistate to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %inistate, align 8
  %reqlock = getelementptr inbounds %struct.fcloop_fcpreq, ptr %call7.i.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %reqlock, ptr noundef nonnull @.str.31, ptr noundef nonnull @fcloop_fcp_req.__key.30, i16 noundef signext 3) #12
  %fcp_rcv_work = getelementptr inbounds %struct.fcloop_fcpreq, ptr %call7.i.i, i32 0, i32 8
  tail call void @__init_work(ptr noundef %fcp_rcv_work, i32 noundef 0) #12
  %16 = ptrtoint ptr %fcp_rcv_work to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -64, ptr %fcp_rcv_work, align 4
  %lockdep_map = getelementptr inbounds %struct.fcloop_fcpreq, ptr %call7.i.i, i32 0, i32 8, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.33, ptr noundef nonnull @fcloop_fcp_req.__key.32, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry19 = getelementptr inbounds %struct.fcloop_fcpreq, ptr %call7.i.i, i32 0, i32 8, i32 1
  %17 = ptrtoint ptr %entry19 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %entry19, ptr %entry19, align 8
  %prev.i = getelementptr inbounds %struct.fcloop_fcpreq, ptr %call7.i.i, i32 0, i32 8, i32 1, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %entry19, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.fcloop_fcpreq, ptr %call7.i.i, i32 0, i32 8, i32 2
  %19 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @fcloop_fcp_recv_work, ptr %func, align 8
  %abort_rcv_work = getelementptr inbounds %struct.fcloop_fcpreq, ptr %call7.i.i, i32 0, i32 9
  tail call void @__init_work(ptr noundef %abort_rcv_work, i32 noundef 0) #12
  %20 = ptrtoint ptr %abort_rcv_work to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -64, ptr %abort_rcv_work, align 8
  %lockdep_map29 = getelementptr inbounds %struct.fcloop_fcpreq, ptr %call7.i.i, i32 0, i32 9, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map29, ptr noundef nonnull @.str.35, ptr noundef nonnull @fcloop_fcp_req.__key.34, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry31 = getelementptr inbounds %struct.fcloop_fcpreq, ptr %call7.i.i, i32 0, i32 9, i32 1
  %21 = ptrtoint ptr %entry31 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %entry31, ptr %entry31, align 4
  %prev.i80 = getelementptr inbounds %struct.fcloop_fcpreq, ptr %call7.i.i, i32 0, i32 9, i32 1, i32 1
  %22 = ptrtoint ptr %prev.i80 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %entry31, ptr %prev.i80, align 8
  %func33 = getelementptr inbounds %struct.fcloop_fcpreq, ptr %call7.i.i, i32 0, i32 9, i32 2
  %23 = ptrtoint ptr %func33 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @fcloop_fcp_abort_recv_work, ptr %func33, align 4
  %tio_done_work = getelementptr inbounds %struct.fcloop_fcpreq, ptr %call7.i.i, i32 0, i32 10
  tail call void @__init_work(ptr noundef %tio_done_work, i32 noundef 0) #12
  %24 = ptrtoint ptr %tio_done_work to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -64, ptr %tio_done_work, align 4
  %lockdep_map42 = getelementptr inbounds %struct.fcloop_fcpreq, ptr %call7.i.i, i32 0, i32 10, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map42, ptr noundef nonnull @.str.37, ptr noundef nonnull @fcloop_fcp_req.__key.36, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry44 = getelementptr inbounds %struct.fcloop_fcpreq, ptr %call7.i.i, i32 0, i32 10, i32 1
  %25 = ptrtoint ptr %entry44 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %entry44, ptr %entry44, align 8
  %prev.i81 = getelementptr inbounds %struct.fcloop_fcpreq, ptr %call7.i.i, i32 0, i32 10, i32 1, i32 1
  %26 = ptrtoint ptr %prev.i81 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %entry44, ptr %prev.i81, align 4
  %func46 = getelementptr inbounds %struct.fcloop_fcpreq, ptr %call7.i.i, i32 0, i32 10, i32 2
  %27 = ptrtoint ptr %func46 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @fcloop_tgt_fcprqst_done_work, ptr %func46, align 8
  %ref = getelementptr inbounds %struct.fcloop_fcpreq, ptr %call7.i.i, i32 0, i32 7
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #12
  %28 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 1, ptr %ref, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %29 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %29, ptr noundef %fcp_rcv_work) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -111, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @fcloop_h2t_ls_abort(ptr nocapture noundef %localport, ptr nocapture noundef %remoteport, ptr nocapture noundef %lsreq) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fcloop_fcp_abort(ptr nocapture noundef readnone %localport, ptr nocapture noundef readnone %remoteport, ptr nocapture noundef readnone %hw_queue_handle, ptr nocapture noundef readonly %fcpreq) #4 align 64 {
entry:
  %old.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %fcpreq, i32 0, i32 13
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %inilock = getelementptr inbounds %struct.fcloop_ini_fcpreq, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %inilock) #12
  %tfcp_req1 = getelementptr inbounds %struct.fcloop_ini_fcpreq, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %tfcp_req1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfcp_req1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then4.critedge, label %if.then

if.then:                                          ; preds = %entry
  %ref.i = getelementptr inbounds %struct.fcloop_fcpreq, ptr %3, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #12
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref.i, i32 noundef 4) #12
  %4 = ptrtoint ptr %ref.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %ref.i, align 4
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %if.then
  %6 = phi i32 [ %5, %if.then ], [ %asmresult3.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %7 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i.i.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i

do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i.i

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i32 %6, 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #12
  %call.i3.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i, i32 noundef 4) #12
  %8 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i
  %10 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 %9, i32 %add.i.i.i.i.i, ptr elementtype(i32) %ref.i) #12, !srcloc !180
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %10, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %10, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %9
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !181

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %11 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %old.i.i.i.i.i, align 4
  %add5.i.i.i.i.i = add i32 %12, 1
  %13 = or i32 %add5.i.i.i.i.i, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %.not.i.i.i.i.i = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i.i.i, label %if.end4.i.i.i.i.i.fcloop_tfcp_req_get.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !181

if.end4.i.i.i.i.i.fcloop_tfcp_req_get.exit_crit_edge: ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fcloop_tfcp_req_get.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 0) #12
  br label %fcloop_tfcp_req_get.exit

fcloop_tfcp_req_get.exit:                         ; preds = %if.then10.i.i.i.i.i, %if.end4.i.i.i.i.i.fcloop_tfcp_req_get.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #12
  call void @_raw_spin_unlock(ptr noundef %inilock) #12
  %reqlock = getelementptr inbounds %struct.fcloop_fcpreq, ptr %3, i32 0, i32 2
  call void @_raw_spin_lock_irq(ptr noundef %reqlock) #12
  %inistate = getelementptr inbounds %struct.fcloop_fcpreq, ptr %3, i32 0, i32 4
  %14 = ptrtoint ptr %inistate to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %inistate, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %15, label %sw.default [
    i32 0, label %fcloop_tfcp_req_get.exit.sw.bb_crit_edge
    i32 1, label %fcloop_tfcp_req_get.exit.sw.bb_crit_edge83
    i32 3, label %sw.epilog
  ]

fcloop_tfcp_req_get.exit.sw.bb_crit_edge83:       ; preds = %fcloop_tfcp_req_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

fcloop_tfcp_req_get.exit.sw.bb_crit_edge:         ; preds = %fcloop_tfcp_req_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.then4.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef %inilock) #12
  br label %cleanup

sw.bb:                                            ; preds = %fcloop_tfcp_req_get.exit.sw.bb_crit_edge, %fcloop_tfcp_req_get.exit.sw.bb_crit_edge83
  %17 = ptrtoint ptr %inistate to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %inistate, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %reqlock) #12
  %abort_rcv_work = getelementptr inbounds %struct.fcloop_fcpreq, ptr %3, i32 0, i32 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %18 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %18, ptr noundef %abort_rcv_work) #12
  br i1 %call.i.i, label %sw.bb.cleanup_crit_edge, label %do.end48, !prof !181

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.default:                                       ; preds = %fcloop_tfcp_req_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_unlock_irq(ptr noundef %reqlock) #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 972, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

sw.epilog:                                        ; preds = %fcloop_tfcp_req_get.exit
  call void @_raw_spin_unlock_irq(ptr noundef %reqlock) #12
  %call.i.i.i.i.i.i.i79 = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !182
  call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #12
  %19 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #12, !srcloc !183
  %asmresult.i.i.i.i.i.i.i.i80 = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i80)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i80, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i80)
  %.not.i.i.i.i.i81 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i80, 0
  br i1 %.not.i.i.i.i.i81, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i82, !prof !181

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then10.i.i.i.i.i82:                            ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #12
  br label %cleanup

if.then.i.i:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !184
  call void @kfree(ptr noundef nonnull %3) #12
  br label %cleanup

do.end48:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 979, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end48, %if.then.i.i, %if.then10.i.i.i.i.i82, %if.end5.i.i.i.i.i.cleanup_crit_edge, %sw.default, %sw.bb.cleanup_crit_edge, %if.then4.critedge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fcloop_t2h_xmt_ls_rsp(ptr nocapture noundef readnone %localport, ptr nocapture noundef readonly %remoteport, ptr noundef %lsrsp) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %lsrsp, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %private = getelementptr inbounds %struct.nvme_fc_remote_port, ptr %remoteport, i32 0, i32 5
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %targetport2 = getelementptr inbounds %struct.fcloop_rport, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %targetport2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %targetport2, align 4
  %rspaddr = getelementptr inbounds %struct.nvmefc_ls_req, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %rspaddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rspaddr, align 4
  %8 = ptrtoint ptr %lsrsp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lsrsp, align 4
  %rsplen = getelementptr inbounds %struct.nvmefc_ls_req, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %rsplen to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rsplen, align 4
  %rsplen3 = getelementptr inbounds %struct.nvmefc_ls_rsp, ptr %lsrsp, i32 0, i32 2
  %12 = ptrtoint ptr %rsplen3 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %rsplen3, align 4
  %conv = zext i16 %13 to i32
  %14 = tail call i32 @llvm.umin.i32(i32 %11, i32 %conv)
  %15 = call ptr @memcpy(ptr %7, ptr %9, i32 %14)
  %done = getelementptr inbounds %struct.nvmefc_ls_rsp, ptr %lsrsp, i32 0, i32 3
  %16 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %done, align 4
  tail call void %17(ptr noundef %lsrsp) #12
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %private8 = getelementptr inbounds %struct.nvmet_fc_target_port, ptr %5, i32 0, i32 3
  %18 = ptrtoint ptr %private8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %private8, align 8
  %lock = getelementptr inbounds %struct.fcloop_tport, ptr %19, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %ls_list = getelementptr inbounds %struct.fcloop_tport, ptr %19, i32 0, i32 5
  %ls_list9 = getelementptr i8, ptr %lsrsp, i32 28
  %prev.i = getelementptr i8, ptr %lsrsp, i32 32
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ls_list, ptr noundef %21, ptr noundef %ls_list9) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_add_tail.exit_crit_edge

if.then.list_add_tail.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %ls_list, ptr %prev.i, align 4
  %23 = ptrtoint ptr %ls_list to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %ls_list9, ptr %ls_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.fcloop_tport, ptr %19, i32 0, i32 5, i32 1
  %24 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev3.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %ls_list, ptr %21, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  %ls_work = getelementptr inbounds %struct.fcloop_tport, ptr %19, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %26 = load ptr, ptr @system_wq, align 4
  %call.i.i25 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %26, ptr noundef %ls_work) #12
  br label %if.end

if.end:                                           ; preds = %list_add_tail.exit, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fcloop_nport_put(ptr noundef %nport) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ref = getelementptr inbounds %struct.fcloop_nport, ptr %nport, i32 0, i32 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !182
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #12, !srcloc !183
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !181

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 3) #12
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !184
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @fcloop_lock) #12
  %nport_list.i = getelementptr %struct.fcloop_nport, ptr %nport, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %nport_list.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.fcloop_nport_free.exit_crit_edge

if.then.i.fcloop_nport_free.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fcloop_nport_free.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr %struct.fcloop_nport, ptr %nport, i32 0, i32 3, i32 1
  %1 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i.i.i, align 4
  %3 = ptrtoint ptr %nport_list.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nport_list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev1.i.i.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %4, ptr %2, align 4
  br label %fcloop_nport_free.exit

fcloop_nport_free.exit:                           ; preds = %if.end.i.i.i, %if.then.i.fcloop_nport_free.exit_crit_edge
  %7 = ptrtoint ptr %nport_list.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 256 to ptr), ptr %nport_list.i, align 4
  %prev.i.i = getelementptr %struct.fcloop_nport, ptr %nport, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @fcloop_lock, i32 noundef %call3.i) #12
  tail call void @kfree(ptr noundef %nport) #12
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %fcloop_nport_free.exit, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvmet_fc_rcv_ls_req(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fcloop_fcp_recv_work(ptr noundef %work) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -68
  %fcpreq1 = getelementptr i8, ptr %work, i32 -64
  %0 = ptrtoint ptr %fcpreq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcpreq1, align 4
  %reqlock = getelementptr i8, ptr %work, i32 -60
  tail call void @_raw_spin_lock_irq(ptr noundef %reqlock) #12
  %inistate = getelementptr i8, ptr %work, i32 -12
  %2 = ptrtoint ptr %inistate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %inistate, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %if.end47.thread71
  ]

sw.bb:                                            ; preds = %entry
  %5 = ptrtoint ptr %inistate to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %inistate, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %reqlock) #12
  %6 = load i32, ptr @drop_opcode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp.i = icmp eq i32 %6, -1
  br i1 %cmp.i, label %sw.bb.if.end47_crit_edge, label %do.end.i

sw.bb.if.end47_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

do.end.i:                                         ; preds = %sw.bb
  %7 = ptrtoint ptr %fcpreq1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fcpreq1, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %sqe2.i = getelementptr inbounds %struct.nvme_fc_cmd_iu, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %sqe2.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %sqe2.i, align 8
  %conv.i = zext i8 %12 to i32
  %fctype.i = getelementptr inbounds %struct.nvme_fc_cmd_iu, ptr %10, i32 0, i32 9, i32 0, i32 0, i32 3
  %13 = ptrtoint ptr %fctype.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %fctype.i, align 4
  %conv3.i = zext i8 %14 to i32
  %15 = load i8, ptr @drop_fabric_opcode, align 1, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  %cond.i = select i1 %tobool.not.i, ptr @.str.43, ptr @.str.42
  %16 = load i32, ptr @drop_current_cnt, align 4
  %17 = load i32, ptr @drop_instance, align 4
  %18 = load i32, ptr @drop_amount, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, i32 noundef %conv.i, i32 noundef %conv3.i, ptr noundef nonnull %cond.i, i32 noundef %6, i32 noundef %16, i32 noundef %17, i32 noundef %18) #15
  %19 = load i8, ptr @drop_fabric_opcode, align 1, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool5.not.i = icmp eq i8 %19, 0
  %20 = ptrtoint ptr %sqe2.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %sqe2.i, align 8
  br i1 %tobool5.not.i, label %land.lhs.true17.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %21)
  %cmp9.not.i = icmp eq i8 %21, 127
  br i1 %cmp9.not.i, label %lor.lhs.false.i, label %land.lhs.true.i.if.end47_crit_edge

land.lhs.true.i.if.end47_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %22 = ptrtoint ptr %fctype.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %fctype.i, align 4
  %conv12.i = zext i8 %23 to i32
  %24 = load i32, ptr @drop_opcode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %conv12.i)
  %cmp13.not.i = icmp eq i32 %24, %conv12.i
  br i1 %cmp13.not.i, label %lor.lhs.false.i.if.end23.i_crit_edge, label %lor.lhs.false.i.if.end47_crit_edge

lor.lhs.false.i.if.end47_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

lor.lhs.false.i.if.end23.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.i

land.lhs.true17.i:                                ; preds = %do.end.i
  %conv19.i = zext i8 %21 to i32
  %25 = load i32, ptr @drop_opcode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %conv19.i)
  %cmp20.not.i = icmp eq i32 %25, %conv19.i
  br i1 %cmp20.not.i, label %land.lhs.true17.i.if.end23.i_crit_edge, label %land.lhs.true17.i.if.end47_crit_edge

land.lhs.true17.i.if.end47_crit_edge:             ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

land.lhs.true17.i.if.end23.i_crit_edge:           ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.i

if.end23.i:                                       ; preds = %land.lhs.true17.i.if.end23.i_crit_edge, %lor.lhs.false.i.if.end23.i_crit_edge
  %26 = load i32, ptr @drop_current_cnt, align 4
  %inc.i = add i32 %26, 1
  store i32 %inc.i, ptr @drop_current_cnt, align 4
  %27 = load i32, ptr @drop_instance, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %27)
  %cmp24.not.i = icmp slt i32 %inc.i, %27
  br i1 %cmp24.not.i, label %if.end23.i.if.end47_crit_edge, label %if.then26.i

if.end23.i.if.end47_crit_edge:                    ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

if.then26.i:                                      ; preds = %if.end23.i
  %28 = load i32, ptr @drop_amount, align 4
  %add.i = add i32 %28, %27
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %add.i)
  %cmp27.not.i = icmp slt i32 %inc.i, %add.i
  br i1 %cmp27.not.i, label %if.then26.i.if.end47.thread_crit_edge, label %if.then29.i

if.then26.i.if.end47.thread_crit_edge:            ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47.thread

if.then29.i:                                      ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #14
  store i32 -1, ptr @drop_opcode, align 4
  br label %if.end47.thread

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_irq(ptr noundef %reqlock) #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 630, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end47.thread71:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_irq(ptr noundef %reqlock) #12
  br label %if.then49

if.end47.thread:                                  ; preds = %if.then29.i, %if.then26.i.if.end47.thread_crit_edge
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39) #15
  br label %cleanup

if.end47:                                         ; preds = %if.end23.i.if.end47_crit_edge, %land.lhs.true17.i.if.end47_crit_edge, %lor.lhs.false.i.if.end47_crit_edge, %land.lhs.true.i.if.end47_crit_edge, %sw.bb.if.end47_crit_edge
  %29 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %tgt_fcp_req = getelementptr i8, ptr %work, i32 132
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 8
  %cmdlen = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %1, i32 0, i32 4
  %35 = ptrtoint ptr %cmdlen to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %cmdlen, align 8
  %conv = zext i16 %36 to i32
  %call39 = tail call i32 @nvmet_fc_rcv_fcp_req(ptr noundef %32, ptr noundef %tgt_fcp_req, ptr noundef %34, i32 noundef %conv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool48.not = icmp eq i32 %call39, 0
  br i1 %tobool48.not, label %if.end47.cleanup_crit_edge, label %if.end47.if.then49_crit_edge

if.end47.if.then49_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then49

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then49:                                        ; preds = %if.end47.if.then49_crit_edge, %if.end47.thread71
  %ret.074 = phi i32 [ -125, %if.end47.thread71 ], [ %call39, %if.end47.if.then49_crit_edge ]
  tail call fastcc void @fcloop_call_host_done(ptr noundef %1, ptr noundef %add.ptr, i32 noundef %ret.074)
  br label %cleanup

cleanup:                                          ; preds = %if.then49, %if.end47.cleanup_crit_edge, %if.end47.thread, %sw.default
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fcloop_fcp_abort_recv_work(ptr noundef %work) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -112
  %reqlock = getelementptr i8, ptr %work, i32 -104
  tail call void @_raw_spin_lock_irq(ptr noundef %reqlock) #12
  %fcpreq1 = getelementptr i8, ptr %work, i32 -108
  %0 = ptrtoint ptr %fcpreq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcpreq1, align 4
  %inistate = getelementptr i8, ptr %work, i32 -56
  %2 = ptrtoint ptr %inistate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %inistate, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %3, label %sw.default [
    i32 2, label %sw.epilog
    i32 3, label %if.then26.critedge
  ]

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_irq(ptr noundef %reqlock) #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 669, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  tail call void @_raw_spin_unlock_irq(ptr noundef %reqlock) #12
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool28.not = icmp eq ptr %8, null
  br i1 %tobool28.not, label %sw.epilog.if.end32_crit_edge, label %if.then29

sw.epilog.if.end32_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

if.then26.critedge:                               ; preds = %entry
  tail call void @_raw_spin_unlock_irq(ptr noundef %reqlock) #12
  %ref.i = getelementptr i8, ptr %work, i32 -48
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !182
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #12
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #12, !srcloc !183
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then26.critedge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !181

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #12
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then26.critedge
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !184
  tail call void @kfree(ptr noundef %add.ptr) #12
  br label %cleanup

if.then29:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %tgt_fcp_req = getelementptr i8, ptr %work, i32 88
  tail call void @nvmet_fc_rcv_fcp_abort(ptr noundef nonnull %8, ptr noundef %tgt_fcp_req) #12
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %sw.epilog.if.end32_crit_edge
  tail call void @_raw_spin_lock_irq(ptr noundef %reqlock) #12
  %10 = ptrtoint ptr %fcpreq1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %fcpreq1, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %reqlock) #12
  tail call fastcc void @fcloop_call_host_done(ptr noundef %1, ptr noundef %add.ptr, i32 noundef -125)
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %sw.default
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fcloop_tgt_fcprqst_done_work(ptr noundef %work) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -156
  %reqlock = getelementptr i8, ptr %work, i32 -148
  tail call void @_raw_spin_lock_irq(ptr noundef %reqlock) #12
  %fcpreq1 = getelementptr i8, ptr %work, i32 -152
  %0 = ptrtoint ptr %fcpreq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcpreq1, align 4
  %inistate = getelementptr i8, ptr %work, i32 -100
  %2 = ptrtoint ptr %inistate to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3, ptr %inistate, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %reqlock) #12
  %status = getelementptr i8, ptr %work, i32 -104
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %status, align 4
  %conv = zext i16 %4 to i32
  tail call fastcc void @fcloop_call_host_done(ptr noundef %1, ptr noundef %add.ptr, i32 noundef %conv)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvmet_fc_rcv_fcp_req(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fcloop_call_host_done(ptr noundef %fcpreq, ptr noundef %tfcp_req, i32 noundef %status) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fcpreq, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %private = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %fcpreq, i32 0, i32 13
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %inilock = getelementptr inbounds %struct.fcloop_ini_fcpreq, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %inilock) #12
  %tfcp_req1 = getelementptr inbounds %struct.fcloop_ini_fcpreq, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %tfcp_req1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %tfcp_req1, align 4
  tail call void @_raw_spin_unlock(ptr noundef %inilock) #12
  %status3 = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %fcpreq, i32 0, i32 16
  %3 = ptrtoint ptr %status3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %status, ptr %status3, align 4
  %done = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %fcpreq, i32 0, i32 12
  %4 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %done, align 4
  tail call void %5(ptr noundef nonnull %fcpreq) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ref.i = getelementptr inbounds %struct.fcloop_fcpreq, ptr %tfcp_req, i32 0, i32 7
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !182
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #12
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #12, !srcloc !183
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.fcloop_tfcp_req_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !181

if.end5.i.i.i.i.i.fcloop_tfcp_req_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fcloop_tfcp_req_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #12
  br label %fcloop_tfcp_req_put.exit

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !184
  tail call void @kfree(ptr noundef %tfcp_req) #12
  br label %fcloop_tfcp_req_put.exit

fcloop_tfcp_req_put.exit:                         ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.fcloop_tfcp_req_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmet_fc_rcv_fcp_abort(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fcloop_delete_local_port(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #4 align 64 {
entry:
  %nodename = alloca i64, align 8
  %portname = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %nodename) #12
  %0 = ptrtoint ptr %nodename to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %nodename, align 8, !annotation !179
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %portname) #12
  %1 = ptrtoint ptr %portname to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %portname, align 8, !annotation !179
  %call = call fastcc i32 @fcloop_parse_nm_options(ptr noundef nonnull %nodename, ptr noundef nonnull %portname, ptr noundef %buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body1, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body1:                                         ; preds = %entry
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @fcloop_lock) #12
  %.pn44 = load ptr, ptr @fcloop_lports, align 4
  %cmp7.not46 = icmp eq ptr %.pn44, @fcloop_lports
  br i1 %cmp7.not46, label %do.body1.for.end.thread_crit_edge, label %for.body.lr.ph

do.body1.for.end.thread_crit_edge:                ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread

for.body.lr.ph:                                   ; preds = %do.body1
  %2 = ptrtoint ptr %nodename to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %nodename, align 8
  br label %for.body

for.end.thread:                                   ; preds = %for.inc.for.end.thread_crit_edge, %do.body1.for.end.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @fcloop_lock, i32 noundef %call3) #12
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn47 = phi ptr [ %.pn44, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %tlport.048 = getelementptr i8, ptr %.pn47, i32 -4
  %4 = ptrtoint ptr %tlport.048 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tlport.048, align 4
  %node_name = getelementptr inbounds %struct.nvme_fc_local_port, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %node_name to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %node_name, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %3)
  %cmp9 = icmp eq i64 %7, %3
  br i1 %cmp9, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %port_name = getelementptr inbounds %struct.nvme_fc_local_port, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %port_name to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %port_name, align 8
  %10 = ptrtoint ptr %portname to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %portname, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %11)
  %cmp12 = icmp eq i64 %9, %11
  br i1 %cmp12, label %if.then14, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then14:                                        ; preds = %land.lhs.true
  %tlport.048.le = getelementptr i8, ptr %.pn47, i32 -4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn47) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then14.for.end_crit_edge

if.then14.for.end_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end.i.i.i:                                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr i8, ptr %.pn47, i32 4
  %12 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i.i, align 4
  %14 = ptrtoint ptr %.pn47 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %.pn47, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %18 = ptrtoint ptr %.pn47 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn = load ptr, ptr %.pn47, align 4
  %cmp7.not = icmp eq ptr %.pn, @fcloop_lports
  br i1 %cmp7.not, label %for.inc.for.end.thread_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end.thread_crit_edge:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread

for.end:                                          ; preds = %if.end.i.i.i, %if.then14.for.end_crit_edge
  %19 = ptrtoint ptr %.pn47 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn47, align 4
  %prev.i.i = getelementptr i8, ptr %.pn47, i32 4
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @fcloop_lock, i32 noundef %call3) #12
  %tobool20.not = icmp eq ptr %tlport.048.le, null
  br i1 %tobool20.not, label %for.end.cleanup_crit_edge, label %if.end22

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end22:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %unreg_done.i = getelementptr i8, ptr %.pn47, i32 8
  %21 = ptrtoint ptr %unreg_done.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %unreg_done.i, align 4
  %wait.i.i = getelementptr i8, ptr %.pn47, i32 12
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @init_completion.__key) #12
  %22 = ptrtoint ptr %tlport.048.le to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tlport.048.le, align 4
  %call.i = tail call i32 @nvme_fc_unregister_localport(ptr noundef %23) #12
  tail call void @wait_for_completion(ptr noundef %unreg_done.i) #12
  tail call void @kfree(ptr noundef nonnull %tlport.048.le) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool24.not = icmp eq i32 %call.i, 0
  %count.call23 = select i1 %tobool24.not, i32 %count, i32 %call.i
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %for.end.cleanup_crit_edge, %for.end.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.call23, %if.end22 ], [ %call, %entry.cleanup_crit_edge ], [ -2, %for.end.cleanup_crit_edge ], [ -2, %for.end.thread ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %portname) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nodename) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fcloop_parse_nm_options(ptr nocapture noundef %nname, ptr nocapture noundef %pname, ptr noundef %buf) unnamed_addr #4 align 64 {
entry:
  %args = alloca [3 x %struct.substring_t], align 4
  %o = alloca ptr, align 4
  %token64 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args) #12
  %0 = getelementptr inbounds %struct.substring_t, ptr %args, i32 0, i32 1
  %1 = call ptr @memset(ptr %args, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %o) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %token64) #12
  %2 = ptrtoint ptr %token64 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %token64, align 8, !annotation !179
  %3 = ptrtoint ptr %nname to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %nname, align 8
  %4 = ptrtoint ptr %pname to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %pname, align 8
  %call = tail call noalias ptr @kstrdup(ptr noundef %buf, i32 noundef 3264) #12
  %5 = ptrtoint ptr %o to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %o, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %call123 = call ptr @strsep(ptr noundef nonnull %o, ptr noundef nonnull @.str.19) #12
  %cmp.not24 = icmp eq ptr %call123, null
  br i1 %cmp.not24, label %while.cond.preheader.if.then26_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.if.then26_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then26

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call125 = phi ptr [ %call1, %while.cond.backedge.while.body_crit_edge ], [ %call123, %while.cond.preheader.while.body_crit_edge ]
  %6 = ptrtoint ptr %call125 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %call125, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %while.body.while.cond.backedge_crit_edge, label %if.end4

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge

if.end4:                                          ; preds = %while.body
  %call5 = call i32 @match_token(ptr noundef nonnull %call125, ptr noundef nonnull @opt_tokens, ptr noundef nonnull %args) #12
  %8 = zext i32 %call5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %call5, label %do.end [
    i32 1, label %sw.bb
    i32 2, label %sw.bb14
  ]

sw.bb:                                            ; preds = %if.end4
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %0, align 4
  %11 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %args, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %10 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %12 to i32
  %sub.ptr.sub.i = add i32 %sub.ptr.lhs.cast.i, 1
  %add.i = sub i32 %sub.ptr.sub.i, %sub.ptr.rhs.cast.i
  %call.i = call i32 @strnlen(ptr noundef %12, i32 noundef %add.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 18
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %sw.bb.out_free_options.thread_crit_edge

sw.bb.out_free_options.thread_crit_edge:          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_options.thread

lor.lhs.false.i:                                  ; preds = %sw.bb
  %call3.i = call i32 @strncmp(ptr noundef %12, ptr noundef nonnull dereferenceable(3) @.str.28, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false, label %lor.lhs.false.i.out_free_options.thread_crit_edge

lor.lhs.false.i.out_free_options.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_options.thread

lor.lhs.false:                                    ; preds = %lor.lhs.false.i
  %call10 = call i32 @match_u64(ptr noundef nonnull %args, ptr noundef nonnull %token64) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %lor.lhs.false.out_free_options.thread_crit_edge

lor.lhs.false.out_free_options.thread_crit_edge:  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_options.thread

if.end13:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %token64 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %token64, align 8
  %15 = ptrtoint ptr %nname to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %nname, align 8
  br label %while.cond.backedge

sw.bb14:                                          ; preds = %if.end4
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %0, align 4
  %18 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %args, align 4
  %sub.ptr.lhs.cast.i2 = ptrtoint ptr %17 to i32
  %sub.ptr.rhs.cast.i3 = ptrtoint ptr %19 to i32
  %sub.ptr.sub.i4 = add i32 %sub.ptr.lhs.cast.i2, 1
  %add.i5 = sub i32 %sub.ptr.sub.i4, %sub.ptr.rhs.cast.i3
  %call.i6 = call i32 @strnlen(ptr noundef %19, i32 noundef %add.i5) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %call.i6)
  %cmp.not.i7 = icmp eq i32 %call.i6, 18
  br i1 %cmp.not.i7, label %lor.lhs.false.i11, label %sw.bb14.out_free_options.thread_crit_edge

sw.bb14.out_free_options.thread_crit_edge:        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_options.thread

lor.lhs.false.i11:                                ; preds = %sw.bb14
  %call3.i8 = call i32 @strncmp(ptr noundef %19, ptr noundef nonnull dereferenceable(3) @.str.28, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i8)
  %tobool.not.i9 = icmp eq i32 %call3.i8, 0
  br i1 %tobool.not.i9, label %lor.lhs.false18, label %lor.lhs.false.i11.out_free_options.thread_crit_edge

lor.lhs.false.i11.out_free_options.thread_crit_edge: ; preds = %lor.lhs.false.i11
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_options.thread

lor.lhs.false18:                                  ; preds = %lor.lhs.false.i11
  %call20 = call i32 @match_u64(ptr noundef nonnull %args, ptr noundef nonnull %token64) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %lor.lhs.false18.out_free_options.thread_crit_edge

lor.lhs.false18.out_free_options.thread_crit_edge: ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_options.thread

if.end23:                                         ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %token64 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %token64, align 8
  %22 = ptrtoint ptr %pname to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %pname, align 8
  br label %while.cond.backedge

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull %call125) #15
  br label %out_free_options.thread

while.cond.backedge:                              ; preds = %if.end23, %if.end13, %while.body.while.cond.backedge_crit_edge
  %call1 = call ptr @strsep(ptr noundef nonnull %o, ptr noundef nonnull @.str.19) #12
  %cmp.not = icmp eq ptr %call1, null
  br i1 %cmp.not, label %while.cond.backedge.if.then26_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.cond.backedge.if.then26_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then26

out_free_options.thread:                          ; preds = %do.end, %lor.lhs.false18.out_free_options.thread_crit_edge, %lor.lhs.false.i11.out_free_options.thread_crit_edge, %sw.bb14.out_free_options.thread_crit_edge, %lor.lhs.false.out_free_options.thread_crit_edge, %lor.lhs.false.i.out_free_options.thread_crit_edge, %sw.bb.out_free_options.thread_crit_edge
  call void @kfree(ptr noundef nonnull %call) #12
  br label %if.end33

if.then26:                                        ; preds = %while.cond.backedge.if.then26_crit_edge, %while.cond.preheader.if.then26_crit_edge
  call void @kfree(ptr noundef nonnull %call) #12
  %23 = ptrtoint ptr %nname to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %nname, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %24)
  %cmp27 = icmp eq i64 %24, -1
  br i1 %cmp27, label %if.then26.cleanup_crit_edge, label %if.end29

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end29:                                         ; preds = %if.then26
  %25 = ptrtoint ptr %pname to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %pname, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %26)
  %cmp30 = icmp eq i64 %26, -1
  br i1 %cmp30, label %if.end29.cleanup_crit_edge, label %if.end29.if.end33_crit_edge

if.end29.if.end33_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end33:                                         ; preds = %if.end29.if.end33_crit_edge, %out_free_options.thread
  %ret.020 = phi i32 [ -22, %out_free_options.thread ], [ 0, %if.end29.if.end33_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.end29.cleanup_crit_edge, %if.then26.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.020, %if.end33 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.then26.cleanup_crit_edge ], [ -22, %if.end29.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %token64) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %o) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fcloop_create_remote_port(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #4 align 64 {
entry:
  %remoteport = alloca ptr, align 4
  %pinfo = alloca %struct.nvme_fc_port_info, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remoteport) #12
  %0 = ptrtoint ptr %remoteport to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %remoteport, align 4, !annotation !179
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %pinfo) #12
  %call = tail call fastcc ptr @fcloop_alloc_nport(ptr noundef %buf, i1 noundef zeroext true)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds i8, ptr %pinfo, i32 24
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %1, align 8
  %node_name = getelementptr inbounds %struct.fcloop_nport, ptr %call, i32 0, i32 5
  %3 = ptrtoint ptr %node_name to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %node_name, align 8
  %5 = ptrtoint ptr %pinfo to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %pinfo, align 8
  %port_name = getelementptr inbounds %struct.fcloop_nport, ptr %call, i32 0, i32 6
  %6 = ptrtoint ptr %port_name to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %port_name, align 8
  %port_name2 = getelementptr inbounds %struct.nvme_fc_port_info, ptr %pinfo, i32 0, i32 1
  %8 = ptrtoint ptr %port_name2 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %port_name2, align 8
  %port_role = getelementptr inbounds %struct.fcloop_nport, ptr %call, i32 0, i32 7
  %9 = ptrtoint ptr %port_role to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port_role, align 8
  %port_role3 = getelementptr inbounds %struct.nvme_fc_port_info, ptr %pinfo, i32 0, i32 2
  %11 = ptrtoint ptr %port_role3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %port_role3, align 8
  %port_id = getelementptr inbounds %struct.fcloop_nport, ptr %call, i32 0, i32 8
  %12 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port_id, align 4
  %port_id4 = getelementptr inbounds %struct.nvme_fc_port_info, ptr %pinfo, i32 0, i32 3
  %14 = ptrtoint ptr %port_id4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %port_id4, align 4
  %lport = getelementptr inbounds %struct.fcloop_nport, ptr %call, i32 0, i32 2
  %15 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lport, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %call5 = call i32 @nvme_fc_register_remoteport(ptr noundef %18, ptr noundef nonnull %pinfo, ptr noundef nonnull %remoteport) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %if.end.if.then8_crit_edge

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8

lor.lhs.false:                                    ; preds = %if.end
  %19 = ptrtoint ptr %remoteport to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %remoteport, align 4
  %tobool7.not = icmp eq ptr %20, null
  br i1 %tobool7.not, label %lor.lhs.false.if.then8_crit_edge, label %if.end9

lor.lhs.false.if.then8_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8

if.then8:                                         ; preds = %lor.lhs.false.if.then8_crit_edge, %if.end.if.then8_crit_edge
  call fastcc void @fcloop_nport_put(ptr noundef nonnull %call)
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false
  %private = getelementptr inbounds %struct.nvme_fc_remote_port, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %private, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %22, align 4
  %tport = getelementptr inbounds %struct.fcloop_nport, ptr %call, i32 0, i32 1
  %24 = ptrtoint ptr %tport to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tport, align 4
  %tobool11.not = icmp eq ptr %25, null
  br i1 %tobool11.not, label %if.end9.cond.end_crit_edge, label %cond.true

if.end9.cond.end_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end9.cond.end_crit_edge
  %cond = phi ptr [ %27, %cond.true ], [ null, %if.end9.cond.end_crit_edge ]
  %targetport13 = getelementptr inbounds %struct.fcloop_rport, ptr %22, i32 0, i32 1
  %28 = ptrtoint ptr %targetport13 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %cond, ptr %targetport13, align 4
  %29 = ptrtoint ptr %tport to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tport, align 4
  %tobool15.not = icmp eq ptr %30, null
  br i1 %tobool15.not, label %cond.end.if.end22_crit_edge, label %if.then16

cond.end.if.end22_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then16:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %remoteport to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %remoteport, align 4
  %remoteport18 = getelementptr inbounds %struct.fcloop_tport, ptr %30, i32 0, i32 1
  %33 = ptrtoint ptr %remoteport18 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %remoteport18, align 4
  %34 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %lport, align 8
  %36 = ptrtoint ptr %tport to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tport, align 4
  %lport21 = getelementptr inbounds %struct.fcloop_tport, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %lport21 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %lport21, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then16, %cond.end.if.end22_crit_edge
  %nport23 = getelementptr inbounds %struct.fcloop_rport, ptr %22, i32 0, i32 2
  %39 = ptrtoint ptr %nport23 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call, ptr %nport23, align 4
  %40 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %lport, align 8
  %lport25 = getelementptr inbounds %struct.fcloop_rport, ptr %22, i32 0, i32 3
  %42 = ptrtoint ptr %lport25 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %lport25, align 4
  %43 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %22, ptr %call, align 8
  %lock = getelementptr inbounds %struct.fcloop_rport, ptr %22, i32 0, i32 4
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.47, ptr noundef nonnull @fcloop_create_remote_port.__key, i16 noundef signext 3) #12
  %ls_work = getelementptr inbounds %struct.fcloop_rport, ptr %22, i32 0, i32 6
  call void @__init_work(ptr noundef %ls_work, i32 noundef 0) #12
  %44 = ptrtoint ptr %ls_work to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -64, ptr %ls_work, align 4
  %lockdep_map = getelementptr inbounds %struct.fcloop_rport, ptr %22, i32 0, i32 6, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.49, ptr noundef nonnull @fcloop_create_remote_port.__key.48, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry32 = getelementptr inbounds %struct.fcloop_rport, ptr %22, i32 0, i32 6, i32 1
  %45 = ptrtoint ptr %entry32 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %entry32, ptr %entry32, align 4
  %prev.i = getelementptr inbounds %struct.fcloop_rport, ptr %22, i32 0, i32 6, i32 1, i32 1
  %46 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %entry32, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.fcloop_rport, ptr %22, i32 0, i32 6, i32 2
  %47 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @fcloop_rport_lsrqst_work, ptr %func, align 4
  %ls_list = getelementptr inbounds %struct.fcloop_rport, ptr %22, i32 0, i32 5
  %48 = ptrtoint ptr %ls_list to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %ls_list, ptr %ls_list, align 4
  %prev.i70 = getelementptr inbounds %struct.fcloop_rport, ptr %22, i32 0, i32 5, i32 1
  %49 = ptrtoint ptr %prev.i70 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %ls_list, ptr %prev.i70, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then8 ], [ %count, %if.end22 ], [ -5, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pinfo) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remoteport) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @fcloop_alloc_nport(ptr noundef %buf, i1 noundef zeroext %remoteport) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cond = select i1 %remoteport, i32 51, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 48) #16
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @fcloop_parse_options(ptr noundef nonnull %call7.i.i, ptr noundef %buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end5:                                          ; preds = %if.end
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call7.i.i, align 8
  %and = and i32 %2, %cond
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %cond)
  %cmp.not = icmp eq i32 %and, %cond
  br i1 %cmp.not, label %if.end7, label %if.end5.cleanup.sink.split_crit_edge

if.end5.cleanup.sink.split_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end7:                                          ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 48) #16
  %tobool9.not = icmp eq ptr %call7.i.i2, null
  br i1 %tobool9.not, label %if.end7.cleanup.sink.split_crit_edge, label %if.end11

if.end7.cleanup.sink.split_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end11:                                         ; preds = %if.end7
  %nport_list = getelementptr inbounds %struct.fcloop_nport, ptr %call7.i.i2, i32 0, i32 3
  %4 = ptrtoint ptr %nport_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %nport_list, ptr %nport_list, align 4
  %prev.i = getelementptr inbounds %struct.fcloop_nport, ptr %call7.i.i2, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %nport_list, ptr %prev.i, align 8
  %wwnn = getelementptr inbounds %struct.fcloop_ctrl_options, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %wwnn to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %wwnn, align 8
  %node_name = getelementptr inbounds %struct.fcloop_nport, ptr %call7.i.i2, i32 0, i32 5
  %8 = ptrtoint ptr %node_name to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %node_name, align 8
  %wwpn = getelementptr inbounds %struct.fcloop_ctrl_options, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %wwpn to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %wwpn, align 8
  %port_name = getelementptr inbounds %struct.fcloop_nport, ptr %call7.i.i2, i32 0, i32 6
  %11 = ptrtoint ptr %port_name to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %port_name, align 8
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call7.i.i, align 8
  %and13 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end11.if.end16_crit_edge, label %if.then15

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %roles = getelementptr inbounds %struct.fcloop_ctrl_options, ptr %call7.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %roles to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %roles, align 8
  %port_role = getelementptr inbounds %struct.fcloop_nport, ptr %call7.i.i2, i32 0, i32 7
  %16 = ptrtoint ptr %port_role to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %port_role, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end11.if.end16_crit_edge
  %and18 = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end16.if.end21_crit_edge, label %if.then20

if.end16.if.end21_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  %fcaddr = getelementptr inbounds %struct.fcloop_ctrl_options, ptr %call7.i.i, i32 0, i32 4
  %17 = ptrtoint ptr %fcaddr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fcaddr, align 4
  %port_id = getelementptr inbounds %struct.fcloop_nport, ptr %call7.i.i2, i32 0, i32 8
  %19 = ptrtoint ptr %port_id to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %port_id, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end16.if.end21_crit_edge
  %ref = getelementptr inbounds %struct.fcloop_nport, ptr %call7.i.i2, i32 0, i32 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #12
  %20 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 1, ptr %ref, align 4
  %call25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @fcloop_lock) #12
  %.pn10 = load ptr, ptr @fcloop_lports, align 4
  %cmp29.not12 = icmp eq ptr %.pn10, @fcloop_lports
  br i1 %cmp29.not12, label %for.end.thread, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end21
  %21 = ptrtoint ptr %wwnn to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %wwnn, align 8
  %lpwwnn = getelementptr inbounds %struct.fcloop_ctrl_options, ptr %call7.i.i, i32 0, i32 5
  %lpwwpn = getelementptr inbounds %struct.fcloop_ctrl_options, ptr %call7.i.i, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn14 = phi ptr [ %.pn10, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %lport.013 = phi ptr [ null, %for.body.lr.ph ], [ %lport.1, %for.inc.for.body_crit_edge ]
  %tmplport.015 = getelementptr i8, ptr %.pn14, i32 -4
  %23 = ptrtoint ptr %tmplport.015 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tmplport.015, align 4
  %node_name31 = getelementptr inbounds %struct.nvme_fc_local_port, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %node_name31 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %node_name31, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %22)
  %cmp33 = icmp eq i64 %26, %22
  br i1 %cmp33, label %land.lhs.true, label %for.body.if.end41_crit_edge

for.body.if.end41_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

land.lhs.true:                                    ; preds = %for.body
  %port_name36 = getelementptr inbounds %struct.nvme_fc_local_port, ptr %24, i32 0, i32 3
  %27 = ptrtoint ptr %port_name36 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %port_name36, align 8
  %29 = ptrtoint ptr %wwpn to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %wwpn, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %30)
  %cmp38 = icmp eq i64 %28, %30
  br i1 %cmp38, label %land.lhs.true.out_invalid_opts_crit_edge, label %land.lhs.true.if.end41_crit_edge

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

land.lhs.true.out_invalid_opts_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_invalid_opts

if.end41:                                         ; preds = %land.lhs.true.if.end41_crit_edge, %for.body.if.end41_crit_edge
  %31 = ptrtoint ptr %lpwwnn to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %lpwwnn, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %32)
  %cmp44 = icmp eq i64 %26, %32
  br i1 %cmp44, label %land.lhs.true46, label %if.end41.for.inc_crit_edge

if.end41.for.inc_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true46:                                  ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  %port_name48 = getelementptr inbounds %struct.nvme_fc_local_port, ptr %24, i32 0, i32 3
  %33 = ptrtoint ptr %port_name48 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %port_name48, align 8
  %35 = ptrtoint ptr %lpwwpn to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %lpwwpn, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %34, i64 %36)
  %cmp49 = icmp eq i64 %34, %36
  %spec.select = select i1 %cmp49, ptr %tmplport.015, ptr %lport.013
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true46, %if.end41.for.inc_crit_edge
  %lport.1 = phi ptr [ %lport.013, %if.end41.for.inc_crit_edge ], [ %spec.select, %land.lhs.true46 ]
  %37 = ptrtoint ptr %.pn14 to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn = load ptr, ptr %.pn14, align 4
  %cmp29.not = icmp eq ptr %.pn, @fcloop_lports
  br i1 %cmp29.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  br i1 %remoteport, label %if.then58, label %for.end.if.end63_crit_edge

for.end.if.end63_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

for.end.thread:                                   ; preds = %if.end21
  br i1 %remoteport, label %for.end.thread.out_invalid_opts_crit_edge, label %for.end.thread.if.end63_crit_edge

for.end.thread.if.end63_crit_edge:                ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

for.end.thread.out_invalid_opts_crit_edge:        ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_invalid_opts

if.then58:                                        ; preds = %for.end
  %tobool59.not = icmp eq ptr %lport.1, null
  br i1 %tobool59.not, label %if.then58.out_invalid_opts_crit_edge, label %if.end61

if.then58.out_invalid_opts_crit_edge:             ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_invalid_opts

if.end61:                                         ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #14
  %lport62 = getelementptr inbounds %struct.fcloop_nport, ptr %call7.i.i2, i32 0, i32 2
  %38 = ptrtoint ptr %lport62 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %lport.1, ptr %lport62, align 8
  br label %if.end63

if.end63:                                         ; preds = %if.end61, %for.end.thread.if.end63_crit_edge, %for.end.if.end63_crit_edge
  %lport.0.lcssa23 = phi ptr [ null, %for.end.thread.if.end63_crit_edge ], [ %lport.1, %if.end61 ], [ %lport.1, %for.end.if.end63_crit_edge ]
  %.pn116 = load ptr, ptr @fcloop_nports, align 4
  %cmp69.not17 = icmp eq ptr %.pn116, @fcloop_nports
  br i1 %cmp69.not17, label %if.end63.for.end118_crit_edge, label %for.body72.lr.ph

if.end63.for.end118_crit_edge:                    ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end118

for.body72.lr.ph:                                 ; preds = %if.end63
  %39 = ptrtoint ptr %wwnn to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %wwnn, align 8
  br label %for.body72

for.body72:                                       ; preds = %for.inc112.for.body72_crit_edge, %for.body72.lr.ph
  %.pn118 = phi ptr [ %.pn116, %for.body72.lr.ph ], [ %.pn1, %for.inc112.for.body72_crit_edge ]
  %node_name73 = getelementptr i8, ptr %.pn118, i32 12
  %41 = ptrtoint ptr %node_name73 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %node_name73, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %42, i64 %40)
  %cmp75 = icmp eq i64 %42, %40
  br i1 %cmp75, label %land.lhs.true77, label %for.body72.for.inc112_crit_edge

for.body72.for.inc112_crit_edge:                  ; preds = %for.body72
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc112

land.lhs.true77:                                  ; preds = %for.body72
  %port_name78 = getelementptr i8, ptr %.pn118, i32 20
  %43 = ptrtoint ptr %port_name78 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %port_name78, align 8
  %45 = ptrtoint ptr %wwpn to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %wwpn, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %44, i64 %46)
  %cmp80 = icmp eq i64 %44, %46
  br i1 %cmp80, label %if.then82, label %land.lhs.true77.for.inc112_crit_edge

land.lhs.true77.for.inc112_crit_edge:             ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc112

if.then82:                                        ; preds = %land.lhs.true77
  %nport.0.le = getelementptr i8, ptr %.pn118, i32 -12
  br i1 %remoteport, label %land.lhs.true85, label %land.lhs.true88.critedge

land.lhs.true85:                                  ; preds = %if.then82
  %47 = ptrtoint ptr %nport.0.le to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %nport.0.le, align 8
  %tobool86.not = icmp eq ptr %48, null
  br i1 %tobool86.not, label %if.then94.critedge, label %land.lhs.true85.out_invalid_opts_crit_edge

land.lhs.true85.out_invalid_opts_crit_edge:       ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_invalid_opts

land.lhs.true88.critedge:                         ; preds = %if.then82
  %tport = getelementptr i8, ptr %.pn118, i32 -8
  %49 = ptrtoint ptr %tport to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tport, align 4
  %tobool89.not = icmp eq ptr %50, null
  br i1 %tobool89.not, label %if.end96.critedge, label %land.lhs.true88.critedge.out_invalid_opts_crit_edge

land.lhs.true88.critedge.out_invalid_opts_crit_edge: ; preds = %land.lhs.true88.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_invalid_opts

if.then94.critedge:                               ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @fcloop_nport_get(ptr noundef %nport.0.le)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @fcloop_lock, i32 noundef %call25) #12
  %lport95 = getelementptr i8, ptr %.pn118, i32 -4
  %51 = ptrtoint ptr %lport95 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %lport.0.lcssa23, ptr %lport95, align 8
  br label %if.end96

if.end96.critedge:                                ; preds = %land.lhs.true88.critedge
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @fcloop_nport_get(ptr noundef %nport.0.le)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @fcloop_lock, i32 noundef %call25) #12
  br label %if.end96

if.end96:                                         ; preds = %if.end96.critedge, %if.then94.critedge
  %52 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %call7.i.i, align 8
  %and98 = and i32 %53, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  br i1 %tobool99.not, label %if.end96.if.end103_crit_edge, label %if.then100

if.end96.if.end103_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end103

if.then100:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #14
  %roles101 = getelementptr inbounds %struct.fcloop_ctrl_options, ptr %call7.i.i, i32 0, i32 3
  %54 = ptrtoint ptr %roles101 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %roles101, align 8
  %port_role102 = getelementptr i8, ptr %.pn118, i32 28
  %56 = ptrtoint ptr %port_role102 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %port_role102, align 8
  br label %if.end103

if.end103:                                        ; preds = %if.then100, %if.end96.if.end103_crit_edge
  %57 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %call7.i.i, align 8
  %and105 = and i32 %58, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %if.end103.out_free_newnport_crit_edge, label %if.then107

if.end103.out_free_newnport_crit_edge:            ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_newnport

if.then107:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #14
  %fcaddr108 = getelementptr inbounds %struct.fcloop_ctrl_options, ptr %call7.i.i, i32 0, i32 4
  %59 = ptrtoint ptr %fcaddr108 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %fcaddr108, align 4
  %port_id109 = getelementptr i8, ptr %.pn118, i32 32
  %61 = ptrtoint ptr %port_id109 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %port_id109, align 4
  br label %out_free_newnport

for.inc112:                                       ; preds = %land.lhs.true77.for.inc112_crit_edge, %for.body72.for.inc112_crit_edge
  %62 = ptrtoint ptr %.pn118 to i32
  call void @__asan_load4_noabort(i32 %62)
  %.pn1 = load ptr, ptr %.pn118, align 4
  %cmp69.not = icmp eq ptr %.pn1, @fcloop_nports
  br i1 %cmp69.not, label %for.inc112.for.end118_crit_edge, label %for.inc112.for.body72_crit_edge

for.inc112.for.body72_crit_edge:                  ; preds = %for.inc112
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body72

for.inc112.for.end118_crit_edge:                  ; preds = %for.inc112
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end118

for.end118:                                       ; preds = %for.inc112.for.end118_crit_edge, %if.end63.for.end118_crit_edge
  %63 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @fcloop_nports, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %nport_list, ptr noundef %63, ptr noundef nonnull @fcloop_nports) #12
  br i1 %call.i.i, label %if.end.i.i, label %for.end118.list_add_tail.exit_crit_edge

for.end118.list_add_tail.exit_crit_edge:          ; preds = %for.end118
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %for.end118
  call void @__sanitizer_cov_trace_pc() #14
  store ptr %nport_list, ptr getelementptr inbounds (%struct.list_head, ptr @fcloop_nports, i32 0, i32 1), align 4
  %64 = ptrtoint ptr %nport_list to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @fcloop_nports, ptr %nport_list, align 4
  %65 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %63, ptr %prev.i, align 8
  %66 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %nport_list, ptr %63, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %for.end118.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @fcloop_lock, i32 noundef %call25) #12
  br label %cleanup.sink.split

out_invalid_opts:                                 ; preds = %land.lhs.true88.critedge.out_invalid_opts_crit_edge, %land.lhs.true85.out_invalid_opts_crit_edge, %if.then58.out_invalid_opts_crit_edge, %for.end.thread.out_invalid_opts_crit_edge, %land.lhs.true.out_invalid_opts_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @fcloop_lock, i32 noundef %call25) #12
  br label %out_free_newnport

out_free_newnport:                                ; preds = %out_invalid_opts, %if.then107, %if.end103.out_free_newnport_crit_edge
  %nport.2 = phi ptr [ null, %out_invalid_opts ], [ %nport.0.le, %if.then107 ], [ %nport.0.le, %if.end103.out_free_newnport_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i2) #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %out_free_newnport, %list_add_tail.exit, %if.end7.cleanup.sink.split_crit_edge, %if.end5.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi ptr [ %call7.i.i2, %list_add_tail.exit ], [ null, %if.end.cleanup.sink.split_crit_edge ], [ %nport.2, %out_free_newnport ], [ null, %if.end7.cleanup.sink.split_crit_edge ], [ null, %if.end5.cleanup.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_fc_register_remoteport(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fcloop_rport_lsrqst_work(ptr noundef %work) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %work, i32 -52
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %ls_list = getelementptr i8, ptr %work, i32 -8
  %0 = ptrtoint ptr %ls_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %ls_list, align 4
  %cmp.not22 = icmp eq ptr %1, %ls_list
  %add.ptr523 = getelementptr i8, ptr %1, i32 -32
  %tobool.not2124 = icmp eq ptr %add.ptr523, null
  %tobool.not25 = or i1 %cmp.not22, %tobool.not2124
  br i1 %tobool.not25, label %entry.for.end_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end:                                           ; preds = %list_del.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %add.ptr526 = phi ptr [ %add.ptr5, %list_del.exit.if.end_crit_edge ], [ %add.ptr523, %entry.if.end_crit_edge ]
  %2 = phi ptr [ %18, %list_del.exit.if.end_crit_edge ], [ %1, %entry.if.end_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  %11 = ptrtoint ptr %add.ptr526 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr526, align 4
  %done = getelementptr inbounds %struct.nvmefc_ls_req, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %done, align 8
  %status = getelementptr i8, ptr %2, i32 -4
  %15 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %status, align 4
  tail call void %14(ptr noundef %12, i32 noundef %16) #12
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %17 = ptrtoint ptr %ls_list to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %ls_list, align 4
  %cmp.not = icmp eq ptr %18, %ls_list
  %add.ptr5 = getelementptr i8, ptr %18, i32 -32
  %tobool.not21 = icmp eq ptr %add.ptr5, null
  %tobool.not = or i1 %cmp.not, %tobool.not21
  br i1 %tobool.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.if.end_crit_edge

list_del.exit.if.end_crit_edge:                   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fcloop_nport_get(ptr noundef %nport) unnamed_addr #4 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ref = getelementptr inbounds %struct.fcloop_nport, ptr %nport, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #12
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref, i32 noundef 4) #12
  %0 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %ref, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %entry
  %2 = phi i32 [ %1, %entry ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %3 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %2, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #12
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #12
  %4 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %6 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 %5, i32 %add.i.i.i.i, ptr elementtype(i32) %ref) #12, !srcloc !180
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %5
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !181

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %7 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %8, 1
  %9 = or i32 %add5.i.i.i.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !181

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 0) #12
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fcloop_delete_remote_port(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #4 align 64 {
entry:
  %nodename = alloca i64, align 8
  %portname = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %nodename) #12
  %0 = ptrtoint ptr %nodename to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %nodename, align 8, !annotation !179
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %portname) #12
  %1 = ptrtoint ptr %portname to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %portname, align 8, !annotation !179
  %call = call fastcc i32 @fcloop_parse_nm_options(ptr noundef nonnull %nodename, ptr noundef nonnull %portname, ptr noundef %buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body1, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body1:                                         ; preds = %entry
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @fcloop_lock) #12
  %.pn47 = load ptr, ptr @fcloop_nports, align 4
  %cmp7.not49 = icmp eq ptr %.pn47, @fcloop_nports
  br i1 %cmp7.not49, label %do.body1.if.then23.critedge_crit_edge, label %for.body.lr.ph

do.body1.if.then23.critedge_crit_edge:            ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then23.critedge

for.body.lr.ph:                                   ; preds = %do.body1
  %2 = ptrtoint ptr %nodename to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %nodename, align 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn50 = phi ptr [ %.pn47, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %tmpport.051 = getelementptr i8, ptr %.pn50, i32 -12
  %node_name = getelementptr i8, ptr %.pn50, i32 12
  %4 = ptrtoint ptr %node_name to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %node_name, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %3)
  %cmp9 = icmp eq i64 %5, %3
  br i1 %cmp9, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %port_name = getelementptr i8, ptr %.pn50, i32 20
  %6 = ptrtoint ptr %port_name to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %port_name, align 8
  %8 = ptrtoint ptr %portname to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %portname, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %9)
  %cmp11 = icmp eq i64 %7, %9
  br i1 %cmp11, label %land.lhs.true13, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true13:                                  ; preds = %land.lhs.true
  %10 = ptrtoint ptr %tmpport.051 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tmpport.051, align 8
  %tobool14.not = icmp eq ptr %11, null
  br i1 %tobool14.not, label %land.lhs.true13.for.inc_crit_edge, label %land.lhs.true.i

land.lhs.true13.for.inc_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true.i:                                  ; preds = %land.lhs.true13
  %tport.i = getelementptr i8, ptr %.pn50, i32 -8
  %12 = ptrtoint ptr %tport.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tport.i, align 4
  %tobool2.not.i = icmp eq ptr %13, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.__unlink_remote_port.exit_crit_edge, label %if.then.i

land.lhs.true.i.__unlink_remote_port.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__unlink_remote_port.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %remoteport.i = getelementptr inbounds %struct.fcloop_tport, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %remoteport.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %remoteport.i, align 4
  br label %__unlink_remote_port.exit

__unlink_remote_port.exit:                        ; preds = %if.then.i, %land.lhs.true.i.__unlink_remote_port.exit_crit_edge
  %15 = ptrtoint ptr %tmpport.051 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %tmpport.051, align 8
  store ptr %11, ptr @fcloop_delete_remote_port.rport, align 4
  %phi.cmp = icmp eq ptr %tmpport.051, null
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @fcloop_lock, i32 noundef %call3) #12
  br i1 %phi.cmp, label %__unlink_remote_port.exit.cleanup_crit_edge, label %if.end24

__unlink_remote_port.exit.cleanup_crit_edge:      ; preds = %__unlink_remote_port.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true13.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %16 = ptrtoint ptr %.pn50 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn = load ptr, ptr %.pn50, align 4
  %cmp7.not = icmp eq ptr %.pn, @fcloop_nports
  br i1 %cmp7.not, label %for.inc.if.then23.critedge_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.if.then23.critedge_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then23.critedge

if.then23.critedge:                               ; preds = %for.inc.if.then23.critedge_crit_edge, %do.body1.if.then23.critedge_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @fcloop_lock, i32 noundef %call3) #12
  br label %cleanup

if.end24:                                         ; preds = %__unlink_remote_port.exit
  %17 = load ptr, ptr @fcloop_delete_remote_port.rport, align 4
  %tobool.not.i42 = icmp eq ptr %17, null
  br i1 %tobool.not.i42, label %if.end24.cleanup_crit_edge, label %__remoteport_unreg.exit

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

__remoteport_unreg.exit:                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %call.i = tail call i32 @nvme_fc_unregister_remoteport(ptr noundef %19) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool26.not = icmp eq i32 %call.i, 0
  %spec.select = select i1 %tobool26.not, i32 %count, i32 %call.i
  br label %cleanup

cleanup:                                          ; preds = %__remoteport_unreg.exit, %if.end24.cleanup_crit_edge, %if.then23.critedge, %__unlink_remote_port.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -2, %if.then23.critedge ], [ -2, %__unlink_remote_port.exit.cleanup_crit_edge ], [ -114, %if.end24.cleanup_crit_edge ], [ %spec.select, %__remoteport_unreg.exit ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %portname) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nodename) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fcloop_create_target_port(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #4 align 64 {
entry:
  %targetport = alloca ptr, align 4
  %tinfo = alloca %struct.nvmet_fc_port_info, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %targetport) #12
  %0 = ptrtoint ptr %targetport to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %targetport, align 4, !annotation !179
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tinfo) #12
  %1 = getelementptr inbounds i8, ptr %tinfo, i32 16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %1, align 8
  %call = tail call fastcc ptr @fcloop_alloc_nport(ptr noundef %buf, i1 noundef zeroext false)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %node_name = getelementptr inbounds %struct.fcloop_nport, ptr %call, i32 0, i32 5
  %3 = ptrtoint ptr %node_name to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %node_name, align 8
  %5 = ptrtoint ptr %tinfo to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %tinfo, align 8
  %port_name = getelementptr inbounds %struct.fcloop_nport, ptr %call, i32 0, i32 6
  %6 = ptrtoint ptr %port_name to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %port_name, align 8
  %port_name2 = getelementptr inbounds %struct.nvmet_fc_port_info, ptr %tinfo, i32 0, i32 1
  %8 = ptrtoint ptr %port_name2 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %port_name2, align 8
  %port_id = getelementptr inbounds %struct.fcloop_nport, ptr %call, i32 0, i32 8
  %9 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port_id, align 4
  %port_id3 = getelementptr inbounds %struct.nvmet_fc_port_info, ptr %tinfo, i32 0, i32 2
  %11 = ptrtoint ptr %port_id3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %port_id3, align 8
  %call4 = call i32 @nvmet_fc_register_targetport(ptr noundef nonnull %tinfo, ptr noundef nonnull @tgttemplate, ptr noundef null, ptr noundef nonnull %targetport) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @fcloop_nport_put(ptr noundef nonnull %call)
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %12 = ptrtoint ptr %targetport to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %targetport, align 4
  %private = getelementptr inbounds %struct.nvmet_fc_target_port, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %private, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %15, align 4
  %17 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call, align 8
  %tobool9.not = icmp eq ptr %18, null
  br i1 %tobool9.not, label %if.end7.cond.end_crit_edge, label %cond.true

if.end7.cond.end_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end7.cond.end_crit_edge
  %cond = phi ptr [ %20, %cond.true ], [ null, %if.end7.cond.end_crit_edge ]
  %remoteport11 = getelementptr inbounds %struct.fcloop_tport, ptr %15, i32 0, i32 1
  %21 = ptrtoint ptr %remoteport11 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %cond, ptr %remoteport11, align 4
  %22 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call, align 8
  %tobool13.not = icmp eq ptr %23, null
  br i1 %tobool13.not, label %cond.end.if.end17_crit_edge, label %if.then14

cond.end.if.end17_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then14:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %targetport to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %targetport, align 4
  %targetport16 = getelementptr inbounds %struct.fcloop_rport, ptr %23, i32 0, i32 1
  %26 = ptrtoint ptr %targetport16 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %targetport16, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %cond.end.if.end17_crit_edge
  %nport18 = getelementptr inbounds %struct.fcloop_tport, ptr %15, i32 0, i32 2
  %27 = ptrtoint ptr %nport18 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call, ptr %nport18, align 4
  %lport = getelementptr inbounds %struct.fcloop_nport, ptr %call, i32 0, i32 2
  %28 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lport, align 8
  %lport19 = getelementptr inbounds %struct.fcloop_tport, ptr %15, i32 0, i32 3
  %30 = ptrtoint ptr %lport19 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %lport19, align 4
  %tport20 = getelementptr inbounds %struct.fcloop_nport, ptr %call, i32 0, i32 1
  %31 = ptrtoint ptr %tport20 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %15, ptr %tport20, align 4
  %lock = getelementptr inbounds %struct.fcloop_tport, ptr %15, i32 0, i32 4
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.52, ptr noundef nonnull @fcloop_create_target_port.__key, i16 noundef signext 3) #12
  %ls_work = getelementptr inbounds %struct.fcloop_tport, ptr %15, i32 0, i32 6
  call void @__init_work(ptr noundef %ls_work, i32 noundef 0) #12
  %32 = ptrtoint ptr %ls_work to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -64, ptr %ls_work, align 4
  %lockdep_map = getelementptr inbounds %struct.fcloop_tport, ptr %15, i32 0, i32 6, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.54, ptr noundef nonnull @fcloop_create_target_port.__key.53, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry26 = getelementptr inbounds %struct.fcloop_tport, ptr %15, i32 0, i32 6, i32 1
  %33 = ptrtoint ptr %entry26 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %entry26, ptr %entry26, align 4
  %prev.i = getelementptr inbounds %struct.fcloop_tport, ptr %15, i32 0, i32 6, i32 1, i32 1
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %entry26, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.fcloop_tport, ptr %15, i32 0, i32 6, i32 2
  %35 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @fcloop_tport_lsrqst_work, ptr %func, align 4
  %ls_list = getelementptr inbounds %struct.fcloop_tport, ptr %15, i32 0, i32 5
  %36 = ptrtoint ptr %ls_list to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %ls_list, ptr %ls_list, align 4
  %prev.i59 = getelementptr inbounds %struct.fcloop_tport, ptr %15, i32 0, i32 5, i32 1
  %37 = ptrtoint ptr %prev.i59 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %ls_list, ptr %prev.i59, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then6 ], [ %count, %if.end17 ], [ -5, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tinfo) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %targetport) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvmet_fc_register_targetport(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fcloop_tport_lsrqst_work(ptr noundef %work) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %work, i32 -52
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %ls_list = getelementptr i8, ptr %work, i32 -8
  %0 = ptrtoint ptr %ls_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %ls_list, align 4
  %cmp.not22 = icmp eq ptr %1, %ls_list
  %add.ptr523 = getelementptr i8, ptr %1, i32 -32
  %tobool.not2124 = icmp eq ptr %add.ptr523, null
  %tobool.not25 = or i1 %cmp.not22, %tobool.not2124
  br i1 %tobool.not25, label %entry.for.end_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end:                                           ; preds = %list_del.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %add.ptr526 = phi ptr [ %add.ptr5, %list_del.exit.if.end_crit_edge ], [ %add.ptr523, %entry.if.end_crit_edge ]
  %2 = phi ptr [ %18, %list_del.exit.if.end_crit_edge ], [ %1, %entry.if.end_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  %11 = ptrtoint ptr %add.ptr526 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr526, align 4
  %done = getelementptr inbounds %struct.nvmefc_ls_req, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %done, align 8
  %status = getelementptr i8, ptr %2, i32 -4
  %15 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %status, align 4
  tail call void %14(ptr noundef %12, i32 noundef %16) #12
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %17 = ptrtoint ptr %ls_list to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %ls_list, align 4
  %cmp.not = icmp eq ptr %18, %ls_list
  %add.ptr5 = getelementptr i8, ptr %18, i32 -32
  %tobool.not21 = icmp eq ptr %add.ptr5, null
  %tobool.not = or i1 %cmp.not, %tobool.not21
  br i1 %tobool.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.if.end_crit_edge

list_del.exit.if.end_crit_edge:                   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fcloop_targetport_delete(ptr nocapture noundef readonly %targetport) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.nvmet_fc_target_port, ptr %targetport, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %ls_work = getelementptr inbounds %struct.fcloop_tport, ptr %1, i32 0, i32 6
  %call = tail call zeroext i1 @flush_work(ptr noundef %ls_work) #12
  %nport = getelementptr inbounds %struct.fcloop_tport, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nport, align 4
  tail call fastcc void @fcloop_nport_put(ptr noundef %3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fcloop_h2t_xmt_ls_rsp(ptr nocapture noundef readonly %targetport, ptr noundef %lsrsp) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %lsrsp, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %private = getelementptr inbounds %struct.nvmet_fc_target_port, ptr %targetport, i32 0, i32 3
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %remoteport2 = getelementptr inbounds %struct.fcloop_tport, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %remoteport2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %remoteport2, align 4
  %rspaddr = getelementptr inbounds %struct.nvmefc_ls_req, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %rspaddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rspaddr, align 4
  %8 = ptrtoint ptr %lsrsp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lsrsp, align 4
  %rsplen = getelementptr inbounds %struct.nvmefc_ls_req, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %rsplen to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rsplen, align 4
  %rsplen3 = getelementptr inbounds %struct.nvmefc_ls_rsp, ptr %lsrsp, i32 0, i32 2
  %12 = ptrtoint ptr %rsplen3 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %rsplen3, align 4
  %conv = zext i16 %13 to i32
  %14 = tail call i32 @llvm.umin.i32(i32 %11, i32 %conv)
  %15 = call ptr @memcpy(ptr %7, ptr %9, i32 %14)
  %done = getelementptr inbounds %struct.nvmefc_ls_rsp, ptr %lsrsp, i32 0, i32 3
  %16 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %done, align 4
  tail call void %17(ptr noundef %lsrsp) #12
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %private8 = getelementptr inbounds %struct.nvme_fc_remote_port, ptr %5, i32 0, i32 5
  %18 = ptrtoint ptr %private8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %private8, align 4
  %lock = getelementptr inbounds %struct.fcloop_rport, ptr %19, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %ls_list = getelementptr inbounds %struct.fcloop_rport, ptr %19, i32 0, i32 5
  %ls_list9 = getelementptr i8, ptr %lsrsp, i32 28
  %prev.i = getelementptr i8, ptr %lsrsp, i32 32
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ls_list, ptr noundef %21, ptr noundef %ls_list9) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_add_tail.exit_crit_edge

if.then.list_add_tail.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %ls_list, ptr %prev.i, align 4
  %23 = ptrtoint ptr %ls_list to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %ls_list9, ptr %ls_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.fcloop_rport, ptr %19, i32 0, i32 5, i32 1
  %24 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev3.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %ls_list, ptr %21, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  %ls_work = getelementptr inbounds %struct.fcloop_rport, ptr %19, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %26 = load ptr, ptr @system_wq, align 4
  %call.i.i25 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %26, ptr noundef %ls_work) #12
  br label %if.end

if.end:                                           ; preds = %list_add_tail.exit, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fcloop_fcp_op(ptr nocapture noundef readnone %tgtport, ptr noundef %tgt_fcpreq) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tgt_fcpreq to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tgt_fcpreq, align 4
  %reqlock = getelementptr i8, ptr %tgt_fcpreq, i32 -192
  tail call void @_raw_spin_lock_irq(ptr noundef %reqlock) #12
  %fcpreq2 = getelementptr i8, ptr %tgt_fcpreq, i32 -196
  %2 = ptrtoint ptr %fcpreq2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fcpreq2, align 4
  %active3 = getelementptr i8, ptr %tgt_fcpreq, i32 -140
  %4 = ptrtoint ptr %active3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %active3, align 4, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %aborted4 = getelementptr i8, ptr %tgt_fcpreq, i32 -139
  %6 = ptrtoint ptr %aborted4 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %aborted4, align 1, !range !185
  %8 = ptrtoint ptr %active3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %active3, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %reqlock) #12
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !181

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool5.not = icmp eq i8 %7, 0
  br i1 %tobool5.not, label %if.end23, label %if.end.cleanup.sink.split_crit_edge, !prof !181

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end23:                                         ; preds = %if.end
  %9 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.67)
  switch i8 %1, label %if.end23.cleanup.sink.split_crit_edge [
    i8 2, label %sw.bb
    i8 1, label %if.end23.sw.bb29_crit_edge
    i8 3, label %if.end23.sw.bb29_crit_edge130
    i8 4, label %if.end23.sw.bb43_crit_edge
  ]

if.end23.sw.bb43_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb43

if.end23.sw.bb29_crit_edge130:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb29

if.end23.sw.bb29_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb29

if.end23.cleanup.sink.split_crit_edge:            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

sw.bb:                                            ; preds = %if.end23
  %transfer_length = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %tgt_fcpreq, i32 0, i32 4
  %10 = ptrtoint ptr %transfer_length to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %transfer_length, align 4
  %tobool25.not = icmp eq ptr %3, null
  br i1 %tobool25.not, label %sw.bb.cleanup.sink.split_crit_edge, label %if.then26

sw.bb.cleanup.sink.split_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.then26:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %sg = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %tgt_fcpreq, i32 0, i32 6
  %12 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sg, align 4
  %first_sgl = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %3, i32 0, i32 8
  %14 = ptrtoint ptr %first_sgl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %first_sgl, align 4
  %offset = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %tgt_fcpreq, i32 0, i32 2
  %16 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offset, align 4
  tail call fastcc void @fcloop_fcp_copy_data(i8 noundef zeroext 2, ptr noundef %13, ptr noundef %15, i32 noundef %17, i32 noundef %11)
  %transferred_length27 = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %3, i32 0, i32 14
  %18 = ptrtoint ptr %transferred_length27 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %transferred_length27, align 4
  %add = add i32 %19, %11
  store i32 %add, ptr %transferred_length27, align 4
  br label %cleanup.sink.split

sw.bb29:                                          ; preds = %if.end23.sw.bb29_crit_edge, %if.end23.sw.bb29_crit_edge130
  %transfer_length30 = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %tgt_fcpreq, i32 0, i32 4
  %20 = ptrtoint ptr %transfer_length30 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %transfer_length30, align 4
  %tobool31.not = icmp eq ptr %3, null
  br i1 %tobool31.not, label %sw.bb29.if.end38_crit_edge, label %if.then32

sw.bb29.if.end38_crit_edge:                       ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.then32:                                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #14
  %sg33 = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %tgt_fcpreq, i32 0, i32 6
  %22 = ptrtoint ptr %sg33 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sg33, align 4
  %first_sgl34 = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %3, i32 0, i32 8
  %24 = ptrtoint ptr %first_sgl34 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %first_sgl34, align 4
  %offset35 = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %tgt_fcpreq, i32 0, i32 2
  %26 = ptrtoint ptr %offset35 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %offset35, align 4
  tail call fastcc void @fcloop_fcp_copy_data(i8 noundef zeroext %1, ptr noundef %23, ptr noundef %25, i32 noundef %27, i32 noundef %21)
  %transferred_length36 = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %3, i32 0, i32 14
  %28 = ptrtoint ptr %transferred_length36 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %transferred_length36, align 4
  %add37 = add i32 %29, %21
  store i32 %add37, ptr %transferred_length36, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then32, %sw.bb29.if.end38_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %if.end38.cleanup.sink.split_crit_edge, label %if.end38.sw.bb43_crit_edge

if.end38.sw.bb43_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb43

if.end38.cleanup.sink.split_crit_edge:            ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

sw.bb43:                                          ; preds = %if.end38.sw.bb43_crit_edge, %if.end23.sw.bb43_crit_edge
  %xfrlen.0 = phi i32 [ 0, %if.end23.sw.bb43_crit_edge ], [ %21, %if.end38.sw.bb43_crit_edge ]
  %tobool44.not = icmp eq ptr %3, null
  br i1 %tobool44.not, label %sw.bb43.if.end64_crit_edge, label %if.then45

sw.bb43.if.end64_crit_edge:                       ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64

if.then45:                                        ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #14
  %rsplen46 = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %3, i32 0, i32 5
  %30 = ptrtoint ptr %rsplen46 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %rsplen46, align 2
  %rsplen48 = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %tgt_fcpreq, i32 0, i32 10
  %32 = ptrtoint ptr %rsplen48 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %rsplen48, align 4
  %34 = tail call i16 @llvm.umin.i16(i16 %31, i16 %33)
  %cond = zext i16 %34 to i32
  %rspaddr = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %3, i32 0, i32 1
  %35 = ptrtoint ptr %rspaddr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rspaddr, align 4
  %rspaddr56 = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %tgt_fcpreq, i32 0, i32 8
  %37 = ptrtoint ptr %rspaddr56 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rspaddr56, align 4
  %39 = call ptr @memcpy(ptr %36, ptr %38, i32 %cond)
  %40 = ptrtoint ptr %rsplen48 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %rsplen48, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %34, i16 %41)
  %cmp59 = icmp ult i16 %34, %41
  %fcp_err.0 = select i1 %cmp59, i32 -7, i32 0
  %rcv_rsplen = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %3, i32 0, i32 15
  %42 = ptrtoint ptr %rcv_rsplen to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %34, ptr %rcv_rsplen, align 8
  %status = getelementptr inbounds %struct.nvmefc_fcp_req, ptr %3, i32 0, i32 16
  %43 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %status, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then45, %sw.bb43.if.end64_crit_edge
  %fcp_err.1 = phi i32 [ %fcp_err.0, %if.then45 ], [ 0, %sw.bb43.if.end64_crit_edge ]
  %status65 = getelementptr i8, ptr %tgt_fcpreq, i32 -148
  %44 = ptrtoint ptr %status65 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 0, ptr %status65, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end64, %if.end38.cleanup.sink.split_crit_edge, %if.then26, %sw.bb.cleanup.sink.split_crit_edge, %if.end23.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %xfrlen.1.sink = phi i32 [ 0, %if.end.cleanup.sink.split_crit_edge ], [ %xfrlen.0, %if.end64 ], [ %21, %if.end38.cleanup.sink.split_crit_edge ], [ %11, %if.then26 ], [ %11, %sw.bb.cleanup.sink.split_crit_edge ], [ 0, %if.end23.cleanup.sink.split_crit_edge ]
  %fcp_err.2.sink = phi i32 [ -125, %if.end.cleanup.sink.split_crit_edge ], [ %fcp_err.1, %if.end64 ], [ 0, %if.end38.cleanup.sink.split_crit_edge ], [ 0, %if.then26 ], [ 0, %sw.bb.cleanup.sink.split_crit_edge ], [ -22, %if.end23.cleanup.sink.split_crit_edge ]
  tail call void @_raw_spin_lock_irq(ptr noundef %reqlock) #12
  %45 = ptrtoint ptr %active3 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %active3, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %reqlock) #12
  %transferred_length69 = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %tgt_fcpreq, i32 0, i32 13
  %46 = ptrtoint ptr %transferred_length69 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %xfrlen.1.sink, ptr %transferred_length69, align 4
  %fcp_error70 = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %tgt_fcpreq, i32 0, i32 14
  %47 = ptrtoint ptr %fcp_error70 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %fcp_err.2.sink, ptr %fcp_error70, align 4
  %done71 = getelementptr inbounds %struct.nvmefc_tgt_fcp_req, ptr %tgt_fcpreq, i32 0, i32 11
  %48 = ptrtoint ptr %done71 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %done71, align 4
  tail call void %49(ptr noundef %tgt_fcpreq) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -114, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fcloop_tgt_fcp_abort(ptr nocapture noundef readnone %tgtport, ptr noundef %tgt_fcpreq) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %reqlock = getelementptr i8, ptr %tgt_fcpreq, i32 -192
  tail call void @_raw_spin_lock_irq(ptr noundef %reqlock) #12
  %aborted = getelementptr i8, ptr %tgt_fcpreq, i32 -139
  %0 = ptrtoint ptr %aborted to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %aborted, align 1
  tail call void @_raw_spin_unlock_irq(ptr noundef %reqlock) #12
  %status = getelementptr i8, ptr %tgt_fcpreq, i32 -148
  %1 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 6, ptr %status, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fcloop_fcp_req_release(ptr nocapture noundef readnone %tgtport, ptr noundef %tgt_fcpreq) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tio_done_work = getelementptr i8, ptr %tgt_fcpreq, i32 -44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %tio_done_work) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fcloop_tgt_discovery_evt(ptr nocapture noundef readonly %tgtport) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 48) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %private = getelementptr inbounds %struct.nvmet_fc_target_port, ptr %tgtport, i32 0, i32 3
  %1 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private, align 8
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %call7.i.i, align 8
  %work = getelementptr inbounds %struct.fcloop_rscn, ptr %call7.i.i, i32 0, i32 1
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #12
  %4 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.fcloop_rscn, ptr %call7.i.i, i32 0, i32 1, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.55, ptr noundef nonnull @fcloop_tgt_discovery_evt.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry4 = getelementptr inbounds %struct.fcloop_rscn, ptr %call7.i.i, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %entry4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %entry4, ptr %entry4, align 8
  %prev.i = getelementptr inbounds %struct.fcloop_rscn, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %entry4, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.fcloop_rscn, ptr %call7.i.i, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @fcloop_tgt_rscn_work, ptr %func, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %8 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %work) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fcloop_t2h_ls_req(ptr nocapture noundef readonly %targetport, ptr nocapture noundef readnone %hosthandle, ptr noundef %lsreq) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.nvmefc_ls_req, ptr %lsreq, i32 0, i32 7
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %private1 = getelementptr inbounds %struct.nvmet_fc_target_port, ptr %targetport, i32 0, i32 3
  %2 = ptrtoint ptr %private1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private1, align 8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %lsreq, ptr %1, align 4
  %ls_list = getelementptr inbounds %struct.fcloop_lsreq, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %ls_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %ls_list, ptr %ls_list, align 4
  %prev.i = getelementptr inbounds %struct.fcloop_lsreq, ptr %1, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ls_list, ptr %prev.i, align 4
  %remoteport = getelementptr inbounds %struct.fcloop_tport, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %remoteport to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %remoteport, align 4
  %tobool.not = icmp eq ptr %8, null
  %status = getelementptr inbounds %struct.fcloop_lsreq, ptr %1, i32 0, i32 3
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -111, ptr %status, align 4
  %lock = getelementptr inbounds %struct.fcloop_tport, ptr %3, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %ls_list3 = getelementptr inbounds %struct.fcloop_tport, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ls_list3, ptr noundef %11, ptr noundef %ls_list) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_add_tail.exit_crit_edge

if.then.list_add_tail.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %ls_list3, ptr %prev.i, align 4
  %13 = ptrtoint ptr %ls_list3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %ls_list, ptr %ls_list3, align 4
  %prev3.i.i = getelementptr inbounds %struct.fcloop_tport, ptr %3, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %ls_list3, ptr %11, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  %ls_work = getelementptr inbounds %struct.fcloop_tport, ptr %3, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %16 = load ptr, ptr @system_wq, align 4
  %call.i.i26 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %16, ptr noundef %ls_work) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %status, align 4
  %18 = ptrtoint ptr %remoteport to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %remoteport, align 4
  %ls_rsp = getelementptr inbounds %struct.fcloop_lsreq, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %lsreq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lsreq, align 8
  %rqstlen = getelementptr inbounds %struct.nvmefc_ls_req, ptr %lsreq, i32 0, i32 2
  %22 = ptrtoint ptr %rqstlen to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rqstlen, align 8
  %call8 = tail call i32 @nvme_fc_rcv_ls_req(ptr noundef %19, ptr noundef %ls_rsp, ptr noundef %21, i32 noundef %23) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %list_add_tail.exit
  %retval.0 = phi i32 [ %call8, %if.end ], [ 0, %list_add_tail.exit ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @fcloop_t2h_ls_abort(ptr nocapture noundef %targetport, ptr nocapture noundef %hosthandle, ptr nocapture noundef %lsreq) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @fcloop_t2h_host_release(ptr nocapture noundef %hosthandle) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fcloop_fcp_copy_data(i8 noundef zeroext %op, ptr noundef %data_sg, ptr noundef %io_sg, i32 noundef %offset, i32 noundef %length) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %io_sg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_sg, align 4
  %and.i.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_virt.exit, label %do.body2.i.i, !prof !181

do.body2.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #12, !srcloc !186
  unreachable

sg_virt.exit:                                     ; preds = %entry
  %and.i.i = and i32 %1, -4
  %2 = inttoptr i32 %and.i.i to ptr
  %call1.i = tail call ptr @page_address(ptr noundef %2) #12
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %io_sg, i32 0, i32 1
  %3 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call1.i, i32 %4
  %length1 = getelementptr inbounds %struct.scatterlist, ptr %io_sg, i32 0, i32 2
  %5 = ptrtoint ptr %length1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %length1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset)
  %tobool.not133 = icmp eq i32 %offset, 0
  br i1 %tobool.not133, label %sg_virt.exit.for.end_crit_edge, label %sg_virt.exit.for.body_crit_edge

sg_virt.exit.for.body_crit_edge:                  ; preds = %sg_virt.exit
  br label %for.body

sg_virt.exit.for.end_crit_edge:                   ; preds = %sg_virt.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %sg_virt.exit.for.body_crit_edge
  %io_sg.addr.0137 = phi ptr [ %io_sg.addr.1, %if.end.for.body_crit_edge ], [ %io_sg, %sg_virt.exit.for.body_crit_edge ]
  %offset.addr.0136 = phi i32 [ %sub, %if.end.for.body_crit_edge ], [ %offset, %sg_virt.exit.for.body_crit_edge ]
  %io_len.0135 = phi i32 [ %io_len.1, %if.end.for.body_crit_edge ], [ %6, %sg_virt.exit.for.body_crit_edge ]
  %io_p.0134 = phi ptr [ %io_p.1, %if.end.for.body_crit_edge ], [ %add.ptr.i, %sg_virt.exit.for.body_crit_edge ]
  %7 = tail call i32 @llvm.umin.i32(i32 %offset.addr.0136, i32 %io_len.0135)
  %sub = sub i32 %offset.addr.0136, %7
  %sub2 = sub i32 %io_len.0135, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub2)
  %tobool3.not = icmp eq i32 %sub2, 0
  br i1 %tobool3.not, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %call4 = tail call ptr @sg_next(ptr noundef %io_sg.addr.0137) #12
  %8 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call4, align 4
  %and.i.i.i98 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i98)
  %tobool.i.not.i.i99 = icmp eq i32 %and.i.i.i98, 0
  br i1 %tobool.i.not.i.i99, label %sg_virt.exit105, label %do.body2.i.i100, !prof !181

do.body2.i.i100:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #12, !srcloc !186
  unreachable

sg_virt.exit105:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %and.i.i101 = and i32 %9, -4
  %10 = inttoptr i32 %and.i.i101 to ptr
  %call1.i102 = tail call ptr @page_address(ptr noundef %10) #12
  %offset.i103 = getelementptr inbounds %struct.scatterlist, ptr %call4, i32 0, i32 1
  %11 = ptrtoint ptr %offset.i103 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %offset.i103, align 4
  %add.ptr.i104 = getelementptr i8, ptr %call1.i102, i32 %12
  %length6 = getelementptr inbounds %struct.scatterlist, ptr %call4, i32 0, i32 2
  %13 = ptrtoint ptr %length6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %length6, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %io_p.0134, i32 %7
  br label %if.end

if.end:                                           ; preds = %if.else, %sg_virt.exit105
  %io_p.1 = phi ptr [ %add.ptr, %if.else ], [ %add.ptr.i104, %sg_virt.exit105 ]
  %io_len.1 = phi i32 [ %sub2, %if.else ], [ %14, %sg_virt.exit105 ]
  %io_sg.addr.1 = phi ptr [ %io_sg.addr.0137, %if.else ], [ %call4, %sg_virt.exit105 ]
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %sg_virt.exit.for.end_crit_edge
  %io_p.0.lcssa = phi ptr [ %add.ptr.i, %sg_virt.exit.for.end_crit_edge ], [ %io_p.1, %if.end.for.end_crit_edge ]
  %io_len.0.lcssa = phi i32 [ %6, %sg_virt.exit.for.end_crit_edge ], [ %io_len.1, %if.end.for.end_crit_edge ]
  %io_sg.addr.0.lcssa = phi ptr [ %io_sg, %sg_virt.exit.for.end_crit_edge ], [ %io_sg.addr.1, %if.end.for.end_crit_edge ]
  %15 = ptrtoint ptr %data_sg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data_sg, align 4
  %and.i.i.i106 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i106)
  %tobool.i.not.i.i107 = icmp eq i32 %and.i.i.i106, 0
  br i1 %tobool.i.not.i.i107, label %sg_virt.exit113, label %do.body2.i.i108, !prof !181

do.body2.i.i108:                                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #12, !srcloc !186
  unreachable

sg_virt.exit113:                                  ; preds = %for.end
  %and.i.i109 = and i32 %16, -4
  %17 = inttoptr i32 %and.i.i109 to ptr
  %call1.i110 = tail call ptr @page_address(ptr noundef %17) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %tobool10.not140 = icmp eq i32 %length, 0
  br i1 %tobool10.not140, label %sg_virt.exit113.for.end51_crit_edge, label %for.body11.lr.ph

sg_virt.exit113.for.end51_crit_edge:              ; preds = %sg_virt.exit113
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end51

for.body11.lr.ph:                                 ; preds = %sg_virt.exit113
  %length8 = getelementptr inbounds %struct.scatterlist, ptr %data_sg, i32 0, i32 2
  %18 = ptrtoint ptr %length8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %length8, align 4
  %offset.i111 = getelementptr inbounds %struct.scatterlist, ptr %data_sg, i32 0, i32 1
  %20 = ptrtoint ptr %offset.i111 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offset.i111, align 4
  %add.ptr.i112 = getelementptr i8, ptr %call1.i110, i32 %21
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %op)
  %cmp24 = icmp eq i8 %op, 2
  br label %for.body11

for.body11:                                       ; preds = %if.end50.for.body11_crit_edge, %for.body11.lr.ph
  %data_sg.addr.0149 = phi ptr [ %data_sg, %for.body11.lr.ph ], [ %data_sg.addr.1, %if.end50.for.body11_crit_edge ]
  %io_sg.addr.2148 = phi ptr [ %io_sg.addr.0.lcssa, %for.body11.lr.ph ], [ %io_sg.addr.3, %if.end50.for.body11_crit_edge ]
  %io_len.2147 = phi i32 [ %io_len.0.lcssa, %for.body11.lr.ph ], [ %io_len.3, %if.end50.for.body11_crit_edge ]
  %data_len.0146 = phi i32 [ %19, %for.body11.lr.ph ], [ %data_len.1, %if.end50.for.body11_crit_edge ]
  %io_p.2144 = phi ptr [ %io_p.0.lcssa, %for.body11.lr.ph ], [ %io_p.3, %if.end50.for.body11_crit_edge ]
  %data_p.0142 = phi ptr [ %add.ptr.i112, %for.body11.lr.ph ], [ %data_p.1, %if.end50.for.body11_crit_edge ]
  %length.addr.0141 = phi i32 [ %length, %for.body11.lr.ph ], [ %sub29, %if.end50.for.body11_crit_edge ]
  %22 = tail call i32 @llvm.umin.i32(i32 %io_len.2147, i32 %data_len.0146)
  %23 = tail call i32 @llvm.umin.i32(i32 %22, i32 %length.addr.0141)
  br i1 %cmp24, label %if.then26, label %if.else27

if.then26:                                        ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #14
  %24 = call ptr @memcpy(ptr %data_p.0142, ptr %io_p.2144, i32 %23)
  br label %if.end28

if.else27:                                        ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #14
  %25 = call ptr @memcpy(ptr %io_p.2144, ptr %data_p.0142, i32 %23)
  br label %if.end28

if.end28:                                         ; preds = %if.else27, %if.then26
  %sub29 = sub i32 %length.addr.0141, %23
  %sub30 = sub i32 %io_len.2147, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub30)
  %tobool31.not = icmp ne i32 %sub30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub29)
  %tobool32.not = icmp eq i32 %sub29, 0
  %or.cond = select i1 %tobool31.not, i1 true, i1 %tobool32.not
  br i1 %or.cond, label %if.else37, label %if.then33

if.then33:                                        ; preds = %if.end28
  %call34 = tail call ptr @sg_next(ptr noundef %io_sg.addr.2148) #12
  %26 = ptrtoint ptr %call34 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %call34, align 4
  %and.i.i.i114 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i114)
  %tobool.i.not.i.i115 = icmp eq i32 %and.i.i.i114, 0
  br i1 %tobool.i.not.i.i115, label %sg_virt.exit121, label %do.body2.i.i116, !prof !181

do.body2.i.i116:                                  ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #12, !srcloc !186
  unreachable

sg_virt.exit121:                                  ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  %and.i.i117 = and i32 %27, -4
  %28 = inttoptr i32 %and.i.i117 to ptr
  %call1.i118 = tail call ptr @page_address(ptr noundef %28) #12
  %offset.i119 = getelementptr inbounds %struct.scatterlist, ptr %call34, i32 0, i32 1
  %29 = ptrtoint ptr %offset.i119 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %offset.i119, align 4
  %add.ptr.i120 = getelementptr i8, ptr %call1.i118, i32 %30
  %length36 = getelementptr inbounds %struct.scatterlist, ptr %call34, i32 0, i32 2
  %31 = ptrtoint ptr %length36 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %length36, align 4
  br label %if.end39

if.else37:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr38 = getelementptr i8, ptr %io_p.2144, i32 %23
  br label %if.end39

if.end39:                                         ; preds = %if.else37, %sg_virt.exit121
  %io_p.3 = phi ptr [ %add.ptr38, %if.else37 ], [ %add.ptr.i120, %sg_virt.exit121 ]
  %io_len.3 = phi i32 [ %sub30, %if.else37 ], [ %32, %sg_virt.exit121 ]
  %io_sg.addr.3 = phi ptr [ %io_sg.addr.2148, %if.else37 ], [ %call34, %sg_virt.exit121 ]
  %sub40 = sub i32 %data_len.0146, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub40)
  %tobool41.not = icmp ne i32 %sub40, 0
  %or.cond97 = select i1 %tobool41.not, i1 true, i1 %tobool32.not
  br i1 %or.cond97, label %if.else48, label %if.then44

if.then44:                                        ; preds = %if.end39
  %call45 = tail call ptr @sg_next(ptr noundef %data_sg.addr.0149) #12
  %33 = ptrtoint ptr %call45 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %call45, align 4
  %and.i.i.i122 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i122)
  %tobool.i.not.i.i123 = icmp eq i32 %and.i.i.i122, 0
  br i1 %tobool.i.not.i.i123, label %sg_virt.exit129, label %do.body2.i.i124, !prof !181

do.body2.i.i124:                                  ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #12, !srcloc !186
  unreachable

sg_virt.exit129:                                  ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  %and.i.i125 = and i32 %34, -4
  %35 = inttoptr i32 %and.i.i125 to ptr
  %call1.i126 = tail call ptr @page_address(ptr noundef %35) #12
  %offset.i127 = getelementptr inbounds %struct.scatterlist, ptr %call45, i32 0, i32 1
  %36 = ptrtoint ptr %offset.i127 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %offset.i127, align 4
  %add.ptr.i128 = getelementptr i8, ptr %call1.i126, i32 %37
  %length47 = getelementptr inbounds %struct.scatterlist, ptr %call45, i32 0, i32 2
  %38 = ptrtoint ptr %length47 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %length47, align 4
  br label %if.end50

if.else48:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr49 = getelementptr i8, ptr %data_p.0142, i32 %23
  br label %if.end50

if.end50:                                         ; preds = %if.else48, %sg_virt.exit129
  %data_p.1 = phi ptr [ %add.ptr49, %if.else48 ], [ %add.ptr.i128, %sg_virt.exit129 ]
  %data_len.1 = phi i32 [ %sub40, %if.else48 ], [ %39, %sg_virt.exit129 ]
  %data_sg.addr.1 = phi ptr [ %data_sg.addr.0149, %if.else48 ], [ %call45, %sg_virt.exit129 ]
  br i1 %tobool32.not, label %if.end50.for.end51_crit_edge, label %if.end50.for.body11_crit_edge

if.end50.for.body11_crit_edge:                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body11

if.end50.for.end51_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end51

for.end51:                                        ; preds = %if.end50.for.end51_crit_edge, %sg_virt.exit113.for.end51_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fcloop_tgt_rscn_work(ptr noundef %work) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %remoteport = getelementptr inbounds %struct.fcloop_tport, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %remoteport to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remoteport, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @nvme_fc_rescan_remoteport(ptr noundef nonnull %3) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %add.ptr) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_fc_rescan_remoteport(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_fc_rcv_ls_req(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fcloop_delete_target_port(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #4 align 64 {
entry:
  %nodename = alloca i64, align 8
  %portname = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %nodename) #12
  %0 = ptrtoint ptr %nodename to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %nodename, align 8, !annotation !179
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %portname) #12
  %1 = ptrtoint ptr %portname to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %portname, align 8, !annotation !179
  %call = call fastcc i32 @fcloop_parse_nm_options(ptr noundef nonnull %nodename, ptr noundef nonnull %portname, ptr noundef %buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body1, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body1:                                         ; preds = %entry
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @fcloop_lock) #12
  %.pn52 = load ptr, ptr @fcloop_nports, align 4
  %cmp7.not53 = icmp eq ptr %.pn52, @fcloop_nports
  br i1 %cmp7.not53, label %do.body1.for.end.thread_crit_edge, label %for.body.lr.ph

do.body1.for.end.thread_crit_edge:                ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread

for.body.lr.ph:                                   ; preds = %do.body1
  %2 = ptrtoint ptr %nodename to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %nodename, align 8
  br label %for.body

for.end.thread:                                   ; preds = %for.inc.for.end.thread_crit_edge, %do.body1.for.end.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @fcloop_lock, i32 noundef %call3) #12
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn54 = phi ptr [ %.pn52, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %node_name = getelementptr i8, ptr %.pn54, i32 12
  %4 = ptrtoint ptr %node_name to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %node_name, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %3)
  %cmp9 = icmp eq i64 %5, %3
  br i1 %cmp9, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %port_name = getelementptr i8, ptr %.pn54, i32 20
  %6 = ptrtoint ptr %port_name to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %port_name, align 8
  %8 = ptrtoint ptr %portname to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %portname, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %9)
  %cmp11 = icmp eq i64 %7, %9
  br i1 %cmp11, label %land.lhs.true13, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true13:                                  ; preds = %land.lhs.true
  %tport14 = getelementptr i8, ptr %.pn54, i32 -8
  %10 = ptrtoint ptr %tport14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tport14, align 4
  %tobool15.not = icmp eq ptr %11, null
  br i1 %tobool15.not, label %land.lhs.true13.for.inc_crit_edge, label %if.then16

land.lhs.true13.for.inc_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then16:                                        ; preds = %land.lhs.true13
  %tport14.le = getelementptr i8, ptr %.pn54, i32 -8
  %tmpport.0.le = getelementptr i8, ptr %.pn54, i32 -12
  %12 = ptrtoint ptr %tport14.le to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tport14.le, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %for.end.thread56, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then16
  %14 = ptrtoint ptr %tmpport.0.le to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tmpport.0.le, align 8
  %tobool2.not.i = icmp eq ptr %15, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.for.end_crit_edge, label %if.then.i

land.lhs.true.i.for.end_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %targetport.i = getelementptr inbounds %struct.fcloop_rport, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %targetport.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %targetport.i, align 4
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true13.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %17 = ptrtoint ptr %.pn54 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn = load ptr, ptr %.pn54, align 4
  %cmp7.not = icmp eq ptr %.pn, @fcloop_nports
  br i1 %cmp7.not, label %for.inc.for.end.thread_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end.thread_crit_edge:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread

for.end:                                          ; preds = %if.then.i, %land.lhs.true.i.for.end_crit_edge
  %18 = ptrtoint ptr %tport14.le to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %tport14.le, align 4
  %phi.cmp = icmp eq ptr %tmpport.0.le, null
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @fcloop_lock, i32 noundef %call3) #12
  br i1 %phi.cmp, label %for.end.cleanup_crit_edge, label %__targetport_unreg.exit.critedge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.end.thread56:                                 ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %tport14.le to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %tport14.le, align 4
  %phi.cmp57 = icmp eq ptr %tmpport.0.le, null
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @fcloop_lock, i32 noundef %call3) #12
  %spec.select60 = select i1 %phi.cmp57, i32 -2, i32 -114
  br label %cleanup

__targetport_unreg.exit.critedge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %13, align 4
  %call.i = tail call i32 @nvmet_fc_unregister_targetport(ptr noundef %21) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool27.not = icmp eq i32 %call.i, 0
  %spec.select = select i1 %tobool27.not, i32 %count, i32 %call.i
  br label %cleanup

cleanup:                                          ; preds = %__targetport_unreg.exit.critedge, %for.end.thread56, %for.end.cleanup_crit_edge, %for.end.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -2, %for.end.cleanup_crit_edge ], [ -2, %for.end.thread ], [ %spec.select, %__targetport_unreg.exit.critedge ], [ %spec.select60, %for.end.thread56 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %portname) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nodename) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fcloop_set_cmd_drop(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #4 align 64 {
entry:
  %opcode = alloca i32, align 4
  %starting = alloca i32, align 4
  %amount = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %opcode) #12
  %0 = ptrtoint ptr %opcode to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %opcode, align 4, !annotation !179
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %starting) #12
  %1 = ptrtoint ptr %starting to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %starting, align 4, !annotation !179
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %amount) #12
  %2 = ptrtoint ptr %amount to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %amount, align 4, !annotation !179
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.58, ptr noundef nonnull %opcode, ptr noundef nonnull %starting, ptr noundef nonnull %amount)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call)
  %cmp.not = icmp eq i32 %call, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  store i32 0, ptr @drop_current_cnt, align 4
  %3 = ptrtoint ptr %opcode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %opcode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %4)
  %tobool = icmp ugt i32 %4, 255
  %frombool = zext i1 %tobool to i8
  store i8 %frombool, ptr @drop_fabric_opcode, align 1
  %and2 = and i32 %4, 255
  store i32 %and2, ptr @drop_opcode, align 4
  %5 = ptrtoint ptr %starting to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %starting, align 4
  store i32 %6, ptr @drop_instance, align 4
  %7 = ptrtoint ptr %amount to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %amount, align 4
  %sub = add i32 %8, -1
  store i32 %sub, ptr @drop_amount, align 4
  %cond4 = select i1 %tobool, ptr @.str.61, ptr @.str.62
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60, i32 noundef %6, ptr noundef nonnull %cond4, i32 noundef %and2, i32 noundef %sub) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -56, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %amount) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %starting) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %opcode) #12
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !18, !20, !21, !23, !25, !27, !28, !30, !32, !34, !35, !37, !38, !40, !41, !42, !43, !45, !47, !48, !49, !51, !53, !55, !57, !58, !60, !62, !63, !64, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !86, !88, !89, !91, !92, !94, !95, !97, !98, !100, !101, !102, !103, !105, !106, !107, !108, !109, !110, !112, !114, !116, !118, !120, !122, !123, !125, !126, !127, !129, !130, !132, !133, !135, !136, !138, !139, !141, !143, !144, !146, !147, !149, !150, !152, !154, !155, !157, !158, !160, !161, !163, !165, !166, !167, !168, !169}
!llvm.module.flags = !{!170, !171, !172, !173, !174, !175, !176, !177}
!llvm.ident = !{!178}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/nvme/target/fcloop.c", i32 1614, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @fcloop_exit._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @fcloop_exit._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/nvme/target/fcloop.c", i32 1618, i32 4}
!8 = !{ptr @fcloop_exit._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @fcloop_exit._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/nvme/target/fcloop.c", i32 1635, i32 4}
!12 = !{ptr @fcloop_exit._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @fcloop_exit._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @__initcall__kmod_nvme_fcloop__343_1648_fcloop_init6, !15, !"__initcall__kmod_nvme_fcloop__343_1648_fcloop_init6", i1 false, i1 false}
!15 = !{!"../drivers/nvme/target/fcloop.c", i32 1648, i32 1}
!16 = !{ptr @__exitcall_fcloop_exit, !17, !"__exitcall_fcloop_exit", i1 false, i1 false}
!17 = !{!"../drivers/nvme/target/fcloop.c", i32 1649, i32 1}
!18 = !{ptr @__UNIQUE_ID_file344, !19, !"__UNIQUE_ID_file344", i1 false, i1 false}
!19 = !{!"../drivers/nvme/target/fcloop.c", i32 1651, i32 1}
!20 = !{ptr @__UNIQUE_ID_license345, !19, !"__UNIQUE_ID_license345", i1 false, i1 false}
!21 = !{ptr @fcloop_class, !22, !"fcloop_class", i1 false, i1 false}
!22 = !{!"../drivers/nvme/target/fcloop.c", i32 1557, i32 22}
!23 = !{ptr @fcloop_device, !24, !"fcloop_device", i1 false, i1 false}
!24 = !{!"../drivers/nvme/target/fcloop.c", i32 1558, i32 23}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/nvme/target/fcloop.c", i32 203, i32 8}
!27 = !{ptr @fcloop_lock, !26, !"fcloop_lock", i1 false, i1 false}
!28 = !{ptr @fcloop_nports, !29, !"fcloop_nports", i1 false, i1 false}
!29 = !{!"../drivers/nvme/target/fcloop.c", i32 205, i32 8}
!30 = !{ptr @fcloop_lports, !31, !"fcloop_lports", i1 false, i1 false}
!31 = !{!"../drivers/nvme/target/fcloop.c", i32 204, i32 8}
!32 = !{ptr @init_completion.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../include/linux/completion.h", i32 87, i32 2}
!34 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @fcloop_init.__key, !36, !"__key", i1 false, i1 false}
!36 = !{!"../drivers/nvme/target/fcloop.c", i32 1565, i32 17}
!37 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/nvme/target/fcloop.c", i32 1567, i32 3}
!40 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @fcloop_init._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @fcloop_init._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/nvme/target/fcloop.c", i32 1574, i32 29}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/nvme/target/fcloop.c", i32 1576, i32 3}
!47 = !{ptr @fcloop_init._entry.15, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @fcloop_init._entry_ptr.17, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @fcloop_dev_attr_groups, !50, !"fcloop_dev_attr_groups", i1 false, i1 false}
!50 = !{!"../drivers/nvme/target/fcloop.c", i32 1552, i32 38}
!51 = !{ptr @fclopp_dev_attrs_group, !52, !"fclopp_dev_attrs_group", i1 false, i1 false}
!52 = !{!"../drivers/nvme/target/fcloop.c", i32 1548, i32 37}
!53 = !{ptr @fcloop_dev_attrs, !54, !"fcloop_dev_attrs", i1 false, i1 false}
!54 = !{!"../drivers/nvme/target/fcloop.c", i32 1537, i32 26}
!55 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/nvme/target/fcloop.c", i32 1529, i32 8}
!57 = !{ptr @dev_attr_add_local_port, !56, !"dev_attr_add_local_port", i1 false, i1 false}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/nvme/target/fcloop.c", i32 70, i32 25}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/nvme/target/fcloop.c", i32 124, i32 4}
!62 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @fcloop_parse_options._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @fcloop_parse_options._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.22, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/nvme/target/fcloop.c", i32 37, i32 19}
!67 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/nvme/target/fcloop.c", i32 38, i32 19}
!69 = !{ptr @.str.24, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/nvme/target/fcloop.c", i32 39, i32 20}
!71 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/nvme/target/fcloop.c", i32 40, i32 21}
!73 = !{ptr @.str.26, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/nvme/target/fcloop.c", i32 41, i32 21}
!75 = !{ptr @.str.27, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/nvme/target/fcloop.c", i32 42, i32 21}
!77 = !{ptr @opt_tokens, !78, !"opt_tokens", i1 false, i1 false}
!78 = !{!"../drivers/nvme/target/fcloop.c", i32 36, i32 28}
!79 = !{ptr @.str.28, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/nvme/target/fcloop.c", i32 51, i32 23}
!81 = !{ptr @fctemplate, !82, !"fctemplate", i1 false, i1 false}
!82 = !{!"../drivers/nvme/target/fcloop.c", i32 1047, i32 37}
!83 = !{ptr @fcloop_fcp_req.__key, !84, !"__key", i1 false, i1 false}
!84 = !{!"../drivers/nvme/target/fcloop.c", i32 731, i32 2}
!85 = !{ptr @.str.29, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @fcloop_fcp_req.__key.30, !87, !"__key", i1 false, i1 false}
!87 = !{!"../drivers/nvme/target/fcloop.c", i32 736, i32 2}
!88 = !{ptr @.str.31, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @fcloop_fcp_req.__key.32, !90, !"__key", i1 false, i1 false}
!90 = !{!"../drivers/nvme/target/fcloop.c", i32 737, i32 2}
!91 = !{ptr @.str.33, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @fcloop_fcp_req.__key.34, !93, !"__key", i1 false, i1 false}
!93 = !{!"../drivers/nvme/target/fcloop.c", i32 738, i32 2}
!94 = !{ptr @.str.35, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @fcloop_fcp_req.__key.36, !96, !"__key", i1 false, i1 false}
!96 = !{!"../drivers/nvme/target/fcloop.c", i32 739, i32 2}
!97 = !{ptr @.str.37, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.38, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/nvme/target/fcloop.c", i32 643, i32 4}
!100 = !{ptr @.str.39, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @fcloop_fcp_recv_work._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @fcloop_fcp_recv_work._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.40, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/nvme/target/fcloop.c", i32 590, i32 2}
!105 = !{ptr @.str.41, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @check_for_drop._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @check_for_drop._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.42, !104, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.43, !104, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @drop_opcode, !111, !"drop_opcode", i1 false, i1 false}
!111 = !{!"../drivers/nvme/target/fcloop.c", i32 570, i32 12}
!112 = !{ptr @drop_fabric_opcode, !113, !"drop_fabric_opcode", i1 false, i1 false}
!113 = !{!"../drivers/nvme/target/fcloop.c", i32 567, i32 13}
!114 = !{ptr @drop_current_cnt, !115, !"drop_current_cnt", i1 false, i1 false}
!115 = !{!"../drivers/nvme/target/fcloop.c", i32 573, i32 12}
!116 = !{ptr @drop_instance, !117, !"drop_instance", i1 false, i1 false}
!117 = !{!"../drivers/nvme/target/fcloop.c", i32 571, i32 12}
!118 = !{ptr @drop_amount, !119, !"drop_amount", i1 false, i1 false}
!119 = !{!"../drivers/nvme/target/fcloop.c", i32 572, i32 12}
!120 = !{ptr @.str.44, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/nvme/target/fcloop.c", i32 1530, i32 8}
!122 = !{ptr @dev_attr_del_local_port, !121, !"dev_attr_del_local_port", i1 false, i1 false}
!123 = !{ptr @.str.45, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/nvme/target/fcloop.c", i32 175, i32 4}
!125 = !{ptr @fcloop_parse_nm_options._entry, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @fcloop_parse_nm_options._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.46, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/nvme/target/fcloop.c", i32 1531, i32 8}
!129 = !{ptr @dev_attr_add_remote_port, !128, !"dev_attr_add_remote_port", i1 false, i1 false}
!130 = !{ptr @fcloop_create_remote_port.__key, !131, !"__key", i1 false, i1 false}
!131 = !{!"../drivers/nvme/target/fcloop.c", i32 1338, i32 2}
!132 = !{ptr @.str.47, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @fcloop_create_remote_port.__key.48, !134, !"__key", i1 false, i1 false}
!134 = !{!"../drivers/nvme/target/fcloop.c", i32 1339, i32 2}
!135 = !{ptr @.str.49, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.50, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/nvme/target/fcloop.c", i32 1532, i32 8}
!138 = !{ptr @dev_attr_del_remote_port, !137, !"dev_attr_del_remote_port", i1 false, i1 false}
!139 = !{ptr @fcloop_delete_remote_port.rport, !140, !"rport", i1 false, i1 false}
!140 = !{!"../drivers/nvme/target/fcloop.c", i32 1372, i32 30}
!141 = !{ptr @.str.51, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/nvme/target/fcloop.c", i32 1533, i32 8}
!143 = !{ptr @dev_attr_add_target_port, !142, !"dev_attr_add_target_port", i1 false, i1 false}
!144 = !{ptr @fcloop_create_target_port.__key, !145, !"__key", i1 false, i1 false}
!145 = !{!"../drivers/nvme/target/fcloop.c", i32 1436, i32 2}
!146 = !{ptr @.str.52, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @fcloop_create_target_port.__key.53, !148, !"__key", i1 false, i1 false}
!148 = !{!"../drivers/nvme/target/fcloop.c", i32 1437, i32 2}
!149 = !{ptr @.str.54, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @tgttemplate, !151, !"tgttemplate", i1 false, i1 false}
!151 = !{!"../drivers/nvme/target/fcloop.c", i32 1068, i32 40}
!152 = !{ptr @fcloop_tgt_discovery_evt.__key, !153, !"__key", i1 false, i1 false}
!153 = !{!"../drivers/nvme/target/fcloop.c", i32 521, i32 2}
!154 = !{ptr @.str.55, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.56, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/nvme/target/fcloop.c", i32 1534, i32 8}
!157 = !{ptr @dev_attr_del_target_port, !156, !"dev_attr_del_target_port", i1 false, i1 false}
!158 = !{ptr @.str.57, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/nvme/target/fcloop.c", i32 1535, i32 8}
!160 = !{ptr @dev_attr_set_cmd_drop, !159, !"dev_attr_set_cmd_drop", i1 false, i1 false}
!161 = !{ptr @.str.58, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/nvme/target/fcloop.c", i32 1507, i32 18}
!163 = !{ptr @.str.59, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/nvme/target/fcloop.c", i32 1520, i32 2}
!165 = !{ptr @.str.60, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @fcloop_set_cmd_drop._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @fcloop_set_cmd_drop._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.61, !164, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @.str.62, !164, !"<string literal>", i1 false, i1 false}
!170 = !{i32 1, !"wchar_size", i32 2}
!171 = !{i32 1, !"min_enum_size", i32 4}
!172 = !{i32 8, !"branch-target-enforcement", i32 0}
!173 = !{i32 8, !"sign-return-address", i32 0}
!174 = !{i32 8, !"sign-return-address-all", i32 0}
!175 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!176 = !{i32 7, !"uwtable", i32 1}
!177 = !{i32 7, !"frame-pointer", i32 2}
!178 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!179 = !{!"auto-init"}
!180 = !{i64 861059, i64 861083, i64 861104, i64 861121, i64 861138}
!181 = !{!"branch_weights", i32 2000, i32 1}
!182 = !{i64 2148466081}
!183 = !{i64 2148380521, i64 2148380553, i64 2148380582, i64 2148380616, i64 2148380647, i64 2148380670}
!184 = !{i64 2149342195}
!185 = !{i8 0, i8 2}
!186 = !{i64 2154475842, i64 2154476334, i64 2154475879, i64 2154475935, i64 2154475969, i64 2154475993, i64 2154476034, i64 2154476055, i64 2154476083, i64 2154476117}
