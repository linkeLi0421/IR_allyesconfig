; ModuleID = '/llk/IR_all_yes/drivers/target/target_core_stat.c_pt.bc'
source_filename = "../drivers/target/target_core_stat.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.config_item_type = type { ptr, ptr, ptr, ptr, ptr }
%struct.configfs_attribute = type { ptr, ptr, i16, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.se_device = type { i16, i32, i32, i8, i32, i64, i32, i64, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i8, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.spinlock, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.semaphore, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.list_head, ptr, %struct.t10_wwn, %struct.t10_alua, %struct.t10_reservation, %struct.se_dev_attrib, %struct.config_group, %struct.config_group, %struct.config_group, %struct.se_dev_stat_grps, [512 x i8], [512 x i8], ptr, %struct.se_lun, i32, i32, %struct.callback_head, i32, ptr }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.t10_wwn = type { [9 x i8], [17 x i8], [5 x i8], [254 x i8], i32, %struct.spinlock, ptr, %struct.config_group, %struct.list_head }
%struct.t10_alua = type { i16, i32, %struct.spinlock, i32, i32, %struct.list_head, %struct.spinlock, ptr, ptr, %struct.config_group, %struct.list_head }
%struct.t10_reservation = type { i32, i32, i32, %struct.spinlock, %struct.spinlock, ptr, %struct.list_head, %struct.list_head }
%struct.se_dev_attrib = type { i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.config_group }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.se_dev_stat_grps = type { %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group }
%struct.se_lun = type { i64, i8, i8, i32, i16, %struct.atomic_t, ptr, %struct.list_head, %struct.spinlock, i32, i32, %struct.atomic_t, %struct.mutex, %struct.list_head, ptr, %struct.spinlock, ptr, %struct.scsi_port_stats, %struct.config_group, %struct.se_port_stat_grps, %struct.completion, %struct.percpu_ref, %struct.list_head, %struct.hlist_node, %struct.callback_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.scsi_port_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.se_port_stat_grps = type { %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.percpu_ref = type { i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.se_lun_acl = type { i64, ptr, ptr, %struct.config_group, %struct.se_ml_stat_grps }
%struct.se_ml_stat_grps = type { %struct.config_group, %struct.config_group, %struct.config_group }
%struct.se_hba = type { i16, i32, i32, i32, i32, ptr, %struct.list_head, %struct.spinlock, %struct.config_group, %struct.mutex, ptr }
%struct.target_backend_ops = type { [16 x i8], [16 x i8], [4 x i8], ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.se_portal_group = type { i32, i8, %struct.atomic_t, %struct.mutex, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.hlist_head, ptr, %struct.list_head, ptr, ptr, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group }
%struct.hlist_head = type { ptr }
%struct.target_core_fabric_ops = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.se_node_acl = type { [224 x i8], i8, i8, i32, i32, i32, [64 x i8], %struct.atomic_t, %struct.hlist_head, ptr, ptr, %struct.mutex, %struct.spinlock, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.list_head, %struct.list_head, %struct.completion, %struct.kref }
%struct.se_dev_entry = type { i64, i64, i64, i8, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.kref, %struct.completion, ptr, %struct.spinlock, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hlist_node, %struct.callback_head }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"scsi_dev\00", [23 x i8] zeroinitializer }, align 32
@target_stat_scsi_dev_cit = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr null, ptr null, ptr @target_stat_scsi_dev_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"scsi_tgt_dev\00", [19 x i8] zeroinitializer }, align 32
@target_stat_scsi_tgt_dev_cit = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr null, ptr null, ptr @target_stat_scsi_tgt_dev_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"scsi_lu\00", [24 x i8] zeroinitializer }, align 32
@target_stat_scsi_lu_cit = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr null, ptr null, ptr @target_stat_scsi_lu_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"scsi_port\00", [22 x i8] zeroinitializer }, align 32
@target_stat_scsi_port_cit = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr null, ptr null, ptr @target_stat_scsi_port_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"scsi_tgt_port\00", [18 x i8] zeroinitializer }, align 32
@target_stat_scsi_tgt_port_cit = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr null, ptr null, ptr @target_stat_scsi_tgt_port_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"scsi_transport\00", [17 x i8] zeroinitializer }, align 32
@target_stat_scsi_transport_cit = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr null, ptr null, ptr @target_stat_scsi_transport_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"scsi_auth_intr\00", [17 x i8] zeroinitializer }, align 32
@target_stat_scsi_auth_intr_cit = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr null, ptr null, ptr @target_stat_scsi_auth_intr_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"scsi_att_intr_port\00", [45 x i8] zeroinitializer }, align 32
@target_stat_scsi_att_intr_port_cit = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr null, ptr null, ptr @target_stat_scsi_ath_intr_port_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_scsi_dev_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @target_stat_attr_inst, ptr @target_stat_attr_indx, ptr @target_stat_attr_role, ptr @target_stat_attr_ports, ptr null], [44 x i8] zeroinitializer }, align 32
@target_stat_attr_inst = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.8, ptr null, i16 292, ptr @target_stat_inst_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_attr_indx = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.10, ptr null, i16 292, ptr @target_stat_indx_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_attr_role = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.11, ptr null, i16 292, ptr @target_stat_role_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_attr_ports = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.13, ptr null, i16 292, ptr @target_stat_ports_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"inst\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"indx\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"role\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ports\00", [26 x i8] zeroinitializer }, align 32
@target_stat_scsi_tgt_dev_attrs = internal global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @target_stat_tgt_attr_inst, ptr @target_stat_tgt_attr_indx, ptr @target_stat_tgt_attr_num_lus, ptr @target_stat_tgt_attr_status, ptr @target_stat_tgt_attr_non_access_lus, ptr @target_stat_tgt_attr_resets, ptr @target_stat_tgt_attr_aborts_complete, ptr @target_stat_tgt_attr_aborts_no_task, ptr null], [60 x i8] zeroinitializer }, align 32
@target_stat_tgt_attr_inst = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.8, ptr null, i16 292, ptr @target_stat_tgt_inst_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_tgt_attr_indx = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.10, ptr null, i16 292, ptr @target_stat_tgt_indx_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_tgt_attr_num_lus = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.14, ptr null, i16 292, ptr @target_stat_tgt_num_lus_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_tgt_attr_status = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.15, ptr null, i16 292, ptr @target_stat_tgt_status_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_tgt_attr_non_access_lus = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.18, ptr null, i16 292, ptr @target_stat_tgt_non_access_lus_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_tgt_attr_resets = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.19, ptr null, i16 292, ptr @target_stat_tgt_resets_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_tgt_attr_aborts_complete = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.21, ptr null, i16 292, ptr @target_stat_tgt_aborts_complete_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_tgt_attr_aborts_no_task = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.22, ptr null, i16 292, ptr @target_stat_tgt_aborts_no_task_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"num_lus\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"status\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"activated\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"deactivated\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"non_access_lus\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"resets\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%lu\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"aborts_complete\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aborts_no_task\00", [17 x i8] zeroinitializer }, align 32
@target_stat_scsi_lu_attrs = internal global { [19 x ptr], [52 x i8] } { [19 x ptr] [ptr @target_stat_lu_attr_inst, ptr @target_stat_lu_attr_dev, ptr @target_stat_lu_attr_indx, ptr @target_stat_lu_attr_lun, ptr @target_stat_lu_attr_lu_name, ptr @target_stat_lu_attr_vend, ptr @target_stat_lu_attr_prod, ptr @target_stat_lu_attr_rev, ptr @target_stat_lu_attr_dev_type, ptr @target_stat_lu_attr_status, ptr @target_stat_lu_attr_state_bit, ptr @target_stat_lu_attr_num_cmds, ptr @target_stat_lu_attr_read_mbytes, ptr @target_stat_lu_attr_write_mbytes, ptr @target_stat_lu_attr_resets, ptr @target_stat_lu_attr_full_stat, ptr @target_stat_lu_attr_hs_num_cmds, ptr @target_stat_lu_attr_creation_time, ptr null], [52 x i8] zeroinitializer }, align 32
@target_stat_lu_attr_inst = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.8, ptr null, i16 292, ptr @target_stat_lu_inst_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_lu_attr_dev = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.23, ptr null, i16 292, ptr @target_stat_lu_dev_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_lu_attr_indx = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.10, ptr null, i16 292, ptr @target_stat_lu_indx_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_lu_attr_lun = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.24, ptr null, i16 292, ptr @target_stat_lu_lun_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_lu_attr_lu_name = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.26, ptr null, i16 292, ptr @target_stat_lu_lu_name_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_lu_attr_vend = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.29, ptr null, i16 292, ptr @target_stat_lu_vend_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_lu_attr_prod = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.31, ptr null, i16 292, ptr @target_stat_lu_prod_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_lu_attr_rev = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.33, ptr null, i16 292, ptr @target_stat_lu_rev_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_lu_attr_dev_type = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.35, ptr null, i16 292, ptr @target_stat_lu_dev_type_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_lu_attr_status = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.15, ptr null, i16 292, ptr @target_stat_lu_status_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_lu_attr_state_bit = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.38, ptr null, i16 292, ptr @target_stat_lu_state_bit_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_lu_attr_num_cmds = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.40, ptr null, i16 292, ptr @target_stat_lu_num_cmds_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_lu_attr_read_mbytes = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.41, ptr null, i16 292, ptr @target_stat_lu_read_mbytes_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_lu_attr_write_mbytes = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.42, ptr null, i16 292, ptr @target_stat_lu_write_mbytes_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_lu_attr_resets = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.19, ptr null, i16 292, ptr @target_stat_lu_resets_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_lu_attr_full_stat = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.43, ptr null, i16 292, ptr @target_stat_lu_full_stat_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_lu_attr_hs_num_cmds = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.44, ptr null, i16 292, ptr @target_stat_lu_hs_num_cmds_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_lu_attr_creation_time = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.45, ptr null, i16 292, ptr @target_stat_lu_creation_time_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dev\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lun\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lu_name\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"None\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vend\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%-8s\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"prod\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%-16s\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rev\00", [28 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%-4s\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dev_type\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"available\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"notavailable\00", [19 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"state_bit\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"exposed\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"num_cmds\00", [23 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"read_mbytes\00", [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"write_mbytes\00", [19 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"full_stat\00", [22 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hs_num_cmds\00", [20 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"creation_time\00", [18 x i8] zeroinitializer }, align 32
@target_stat_scsi_port_attrs = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @target_stat_port_attr_inst, ptr @target_stat_port_attr_dev, ptr @target_stat_port_attr_indx, ptr @target_stat_port_attr_role, ptr @target_stat_port_attr_busy_count, ptr null], [40 x i8] zeroinitializer }, align 32
@target_stat_port_attr_inst = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.8, ptr null, i16 292, ptr @target_stat_port_inst_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_port_attr_dev = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.23, ptr null, i16 292, ptr @target_stat_port_dev_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_port_attr_indx = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.10, ptr null, i16 292, ptr @target_stat_port_indx_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_port_attr_role = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.11, ptr null, i16 292, ptr @target_stat_port_role_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_port_attr_busy_count = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.53, ptr null, i16 292, ptr @target_stat_port_busy_count_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_port_inst_show.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.46 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/target/target_core_stat.c\00", [62 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.50 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@target_stat_port_dev_show.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@target_stat_port_indx_show.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@target_stat_port_role_show.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.51 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s%u\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Device\00", [25 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"busy_count\00", [21 x i8] zeroinitializer }, align 32
@target_stat_port_busy_count_show.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@target_stat_scsi_tgt_port_attrs = internal global { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @target_stat_tgt_port_attr_inst, ptr @target_stat_tgt_port_attr_dev, ptr @target_stat_tgt_port_attr_indx, ptr @target_stat_tgt_port_attr_name, ptr @target_stat_tgt_port_attr_port_index, ptr @target_stat_tgt_port_attr_in_cmds, ptr @target_stat_tgt_port_attr_write_mbytes, ptr @target_stat_tgt_port_attr_read_mbytes, ptr @target_stat_tgt_port_attr_hs_in_cmds, ptr null], [56 x i8] zeroinitializer }, align 32
@target_stat_tgt_port_attr_inst = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.8, ptr null, i16 292, ptr @target_stat_tgt_port_inst_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_tgt_port_attr_dev = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.23, ptr null, i16 292, ptr @target_stat_tgt_port_dev_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_tgt_port_attr_indx = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.10, ptr null, i16 292, ptr @target_stat_tgt_port_indx_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_tgt_port_attr_name = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.54, ptr null, i16 292, ptr @target_stat_tgt_port_name_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_tgt_port_attr_port_index = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.56, ptr null, i16 292, ptr @target_stat_tgt_port_port_index_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_tgt_port_attr_in_cmds = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.59, ptr null, i16 292, ptr @target_stat_tgt_port_in_cmds_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_tgt_port_attr_write_mbytes = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.42, ptr null, i16 292, ptr @target_stat_tgt_port_write_mbytes_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_tgt_port_attr_read_mbytes = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.41, ptr null, i16 292, ptr @target_stat_tgt_port_read_mbytes_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_tgt_port_attr_hs_in_cmds = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.60, ptr null, i16 292, ptr @target_stat_tgt_port_hs_in_cmds_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_tgt_port_inst_show.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@target_stat_tgt_port_dev_show.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@target_stat_tgt_port_indx_show.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@target_stat_tgt_port_name_show.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%sPort#%u\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"port_index\00", [21 x i8] zeroinitializer }, align 32
@target_stat_tgt_port_port_index_show.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s%s%d\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"+t+\00", [28 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in_cmds\00", [24 x i8] zeroinitializer }, align 32
@target_stat_tgt_port_in_cmds_show.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@target_stat_tgt_port_write_mbytes_show.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@target_stat_tgt_port_read_mbytes_show.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.60 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hs_in_cmds\00", [21 x i8] zeroinitializer }, align 32
@target_stat_tgt_port_hs_in_cmds_show.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@target_stat_scsi_transport_attrs = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @target_stat_transport_attr_inst, ptr @target_stat_transport_attr_device, ptr @target_stat_transport_attr_indx, ptr @target_stat_transport_attr_dev_name, ptr @target_stat_transport_attr_proto_id, ptr null], [40 x i8] zeroinitializer }, align 32
@target_stat_transport_attr_inst = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.8, ptr null, i16 292, ptr @target_stat_transport_inst_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_transport_attr_device = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.61, ptr null, i16 292, ptr @target_stat_transport_device_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_transport_attr_indx = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.10, ptr null, i16 292, ptr @target_stat_transport_indx_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_transport_attr_dev_name = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.63, ptr null, i16 292, ptr @target_stat_transport_dev_name_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_transport_attr_proto_id = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.65, ptr null, i16 292, ptr @target_stat_transport_proto_id_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_transport_inst_show.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.61 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"device\00", [25 x i8] zeroinitializer }, align 32
@target_stat_transport_device_show.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.62 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"scsiTransport%s\0A\00", [47 x i8] zeroinitializer }, align 32
@target_stat_transport_indx_show.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.63 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dev_name\00", [23 x i8] zeroinitializer }, align 32
@target_stat_transport_dev_name_show.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.64 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s+%s\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"proto_id\00", [23 x i8] zeroinitializer }, align 32
@target_stat_transport_proto_id_show.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@target_stat_scsi_auth_intr_attrs = internal global { [15 x ptr], [36 x i8] } { [15 x ptr] [ptr @target_stat_auth_attr_inst, ptr @target_stat_auth_attr_dev, ptr @target_stat_auth_attr_port, ptr @target_stat_auth_attr_indx, ptr @target_stat_auth_attr_dev_or_port, ptr @target_stat_auth_attr_intr_name, ptr @target_stat_auth_attr_map_indx, ptr @target_stat_auth_attr_att_count, ptr @target_stat_auth_attr_num_cmds, ptr @target_stat_auth_attr_read_mbytes, ptr @target_stat_auth_attr_write_mbytes, ptr @target_stat_auth_attr_hs_num_cmds, ptr @target_stat_auth_attr_creation_time, ptr @target_stat_auth_attr_row_status, ptr null], [36 x i8] zeroinitializer }, align 32
@target_stat_auth_attr_inst = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.8, ptr null, i16 292, ptr @target_stat_auth_inst_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_auth_attr_dev = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.23, ptr null, i16 292, ptr @target_stat_auth_dev_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_auth_attr_port = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.66, ptr null, i16 292, ptr @target_stat_auth_port_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_auth_attr_indx = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.10, ptr null, i16 292, ptr @target_stat_auth_indx_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_auth_attr_dev_or_port = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.67, ptr null, i16 292, ptr @target_stat_auth_dev_or_port_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_auth_attr_intr_name = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.68, ptr null, i16 292, ptr @target_stat_auth_intr_name_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_auth_attr_map_indx = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.69, ptr null, i16 292, ptr @target_stat_auth_map_indx_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_auth_attr_att_count = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.70, ptr null, i16 292, ptr @target_stat_auth_att_count_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_auth_attr_num_cmds = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.40, ptr null, i16 292, ptr @target_stat_auth_num_cmds_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_auth_attr_read_mbytes = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.41, ptr null, i16 292, ptr @target_stat_auth_read_mbytes_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_auth_attr_write_mbytes = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.42, ptr null, i16 292, ptr @target_stat_auth_write_mbytes_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_auth_attr_hs_num_cmds = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.44, ptr null, i16 292, ptr @target_stat_auth_hs_num_cmds_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_auth_attr_creation_time = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.45, ptr null, i16 292, ptr @target_stat_auth_creation_time_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_auth_attr_row_status = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.71, ptr null, i16 292, ptr @target_stat_auth_row_status_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_auth_dev_show.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.66 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"port\00", [27 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dev_or_port\00", [20 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"intr_name\00", [22 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"map_indx\00", [23 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"att_count\00", [22 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"row_status\00", [21 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Ready\0A\00", [25 x i8] zeroinitializer }, align 32
@target_stat_scsi_ath_intr_port_attrs = internal global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @target_stat_iport_attr_inst, ptr @target_stat_iport_attr_dev, ptr @target_stat_iport_attr_port, ptr @target_stat_iport_attr_indx, ptr @target_stat_iport_attr_port_auth_indx, ptr @target_stat_iport_attr_port_ident, ptr null], [36 x i8] zeroinitializer }, align 32
@target_stat_iport_attr_inst = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.8, ptr null, i16 292, ptr @target_stat_iport_inst_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_iport_attr_dev = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.23, ptr null, i16 292, ptr @target_stat_iport_dev_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_iport_attr_port = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.66, ptr null, i16 292, ptr @target_stat_iport_port_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_iport_attr_indx = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.10, ptr null, i16 292, ptr @target_stat_iport_indx_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_iport_attr_port_auth_indx = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.73, ptr null, i16 292, ptr @target_stat_iport_port_auth_indx_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_iport_attr_port_ident = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.74, ptr null, i16 292, ptr @target_stat_iport_port_ident_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@target_stat_iport_dev_show.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.73 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"port_auth_indx\00", [17 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"port_ident\00", [21 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s+i+%s\0A\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 395, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant [25 x i8] c"target_stat_scsi_dev_cit\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 83, i32 38 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 400, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant [29 x i8] c"target_stat_scsi_tgt_dev_cit\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 180, i32 38 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 405, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant [24 x i8] c"target_stat_scsi_lu_cit\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 383, i32 38 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 825, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant [26 x i8] c"target_stat_scsi_port_cit\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 509, i32 38 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 830, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant [30 x i8] c"target_stat_scsi_tgt_port_cit\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 693, i32 38 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 835, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant [31 x i8] c"target_stat_scsi_transport_cit\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 813, i32 38 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 1359, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant [31 x i8] c"target_stat_scsi_auth_intr_cit\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 1175, i32 38 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 1364, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant [35 x i8] c"target_stat_scsi_att_intr_port_cit\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 1347, i32 38 }
@___asan_gen_.124 = private unnamed_addr constant [27 x i8] c"target_stat_scsi_dev_attrs\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 75, i32 35 }
@___asan_gen_.127 = private unnamed_addr constant [22 x i8] c"target_stat_attr_inst\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [22 x i8] c"target_stat_attr_indx\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [22 x i8] c"target_stat_attr_role\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [23 x i8] c"target_stat_attr_ports\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 70, i32 1 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 52, i32 35 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 71, i32 1 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 72, i32 1 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 73, i32 1 }
@___asan_gen_.154 = private unnamed_addr constant [31 x i8] c"target_stat_scsi_tgt_dev_attrs\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 168, i32 35 }
@___asan_gen_.157 = private unnamed_addr constant [26 x i8] c"target_stat_tgt_attr_inst\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 159, i32 1 }
@___asan_gen_.160 = private unnamed_addr constant [26 x i8] c"target_stat_tgt_attr_indx\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 160, i32 1 }
@___asan_gen_.163 = private unnamed_addr constant [29 x i8] c"target_stat_tgt_attr_num_lus\00", align 1
@___asan_gen_.166 = private unnamed_addr constant [28 x i8] c"target_stat_tgt_attr_status\00", align 1
@___asan_gen_.169 = private unnamed_addr constant [36 x i8] c"target_stat_tgt_attr_non_access_lus\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [28 x i8] c"target_stat_tgt_attr_resets\00", align 1
@___asan_gen_.175 = private unnamed_addr constant [37 x i8] c"target_stat_tgt_attr_aborts_complete\00", align 1
@___asan_gen_.178 = private unnamed_addr constant [36 x i8] c"target_stat_tgt_attr_aborts_no_task\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 161, i32 1 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 162, i32 1 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 120, i32 36 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 122, i32 36 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 163, i32 1 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 164, i32 1 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 141, i32 35 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 165, i32 1 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 166, i32 1 }
@___asan_gen_.208 = private unnamed_addr constant [26 x i8] c"target_stat_scsi_lu_attrs\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 361, i32 35 }
@___asan_gen_.211 = private unnamed_addr constant [25 x i8] c"target_stat_lu_attr_inst\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 342, i32 1 }
@___asan_gen_.214 = private unnamed_addr constant [24 x i8] c"target_stat_lu_attr_dev\00", align 1
@___asan_gen_.217 = private unnamed_addr constant [25 x i8] c"target_stat_lu_attr_indx\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 344, i32 1 }
@___asan_gen_.220 = private unnamed_addr constant [24 x i8] c"target_stat_lu_attr_lun\00", align 1
@___asan_gen_.223 = private unnamed_addr constant [28 x i8] c"target_stat_lu_attr_lu_name\00", align 1
@___asan_gen_.226 = private unnamed_addr constant [25 x i8] c"target_stat_lu_attr_vend\00", align 1
@___asan_gen_.229 = private unnamed_addr constant [25 x i8] c"target_stat_lu_attr_prod\00", align 1
@___asan_gen_.232 = private unnamed_addr constant [24 x i8] c"target_stat_lu_attr_rev\00", align 1
@___asan_gen_.235 = private unnamed_addr constant [29 x i8] c"target_stat_lu_attr_dev_type\00", align 1
@___asan_gen_.238 = private unnamed_addr constant [27 x i8] c"target_stat_lu_attr_status\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 351, i32 1 }
@___asan_gen_.241 = private unnamed_addr constant [30 x i8] c"target_stat_lu_attr_state_bit\00", align 1
@___asan_gen_.244 = private unnamed_addr constant [29 x i8] c"target_stat_lu_attr_num_cmds\00", align 1
@___asan_gen_.247 = private unnamed_addr constant [32 x i8] c"target_stat_lu_attr_read_mbytes\00", align 1
@___asan_gen_.250 = private unnamed_addr constant [33 x i8] c"target_stat_lu_attr_write_mbytes\00", align 1
@___asan_gen_.253 = private unnamed_addr constant [27 x i8] c"target_stat_lu_attr_resets\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 356, i32 1 }
@___asan_gen_.256 = private unnamed_addr constant [30 x i8] c"target_stat_lu_attr_full_stat\00", align 1
@___asan_gen_.259 = private unnamed_addr constant [32 x i8] c"target_stat_lu_attr_hs_num_cmds\00", align 1
@___asan_gen_.262 = private unnamed_addr constant [34 x i8] c"target_stat_lu_attr_creation_time\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 343, i32 1 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 345, i32 1 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 217, i32 35 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 346, i32 1 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 225, i32 35 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 227, i32 31 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 347, i32 1 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 234, i32 35 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 348, i32 1 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 242, i32 35 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 349, i32 1 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 250, i32 35 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 350, i32 1 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 269, i32 25 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 269, i32 39 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 352, i32 1 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 276, i32 35 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 353, i32 1 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 354, i32 1 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 355, i32 1 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 357, i32 1 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 358, i32 1 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 359, i32 1 }
@___asan_gen_.334 = private unnamed_addr constant [28 x i8] c"target_stat_scsi_port_attrs\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 500, i32 35 }
@___asan_gen_.337 = private unnamed_addr constant [27 x i8] c"target_stat_port_attr_inst\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 494, i32 1 }
@___asan_gen_.340 = private unnamed_addr constant [26 x i8] c"target_stat_port_attr_dev\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 495, i32 1 }
@___asan_gen_.343 = private unnamed_addr constant [27 x i8] c"target_stat_port_attr_indx\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 496, i32 1 }
@___asan_gen_.346 = private unnamed_addr constant [27 x i8] c"target_stat_port_attr_role\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 497, i32 1 }
@___asan_gen_.349 = private unnamed_addr constant [33 x i8] c"target_stat_port_attr_busy_count\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 428, i32 8 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 695, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 723, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 472, i32 35 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 472, i32 45 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 498, i32 1 }
@___asan_gen_.376 = private unnamed_addr constant [32 x i8] c"target_stat_scsi_tgt_port_attrs\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 680, i32 35 }
@___asan_gen_.379 = private unnamed_addr constant [31 x i8] c"target_stat_tgt_port_attr_inst\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 670, i32 1 }
@___asan_gen_.382 = private unnamed_addr constant [30 x i8] c"target_stat_tgt_port_attr_dev\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 671, i32 1 }
@___asan_gen_.385 = private unnamed_addr constant [31 x i8] c"target_stat_tgt_port_attr_indx\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 672, i32 1 }
@___asan_gen_.388 = private unnamed_addr constant [31 x i8] c"target_stat_tgt_port_attr_name\00", align 1
@___asan_gen_.391 = private unnamed_addr constant [37 x i8] c"target_stat_tgt_port_attr_port_index\00", align 1
@___asan_gen_.394 = private unnamed_addr constant [34 x i8] c"target_stat_tgt_port_attr_in_cmds\00", align 1
@___asan_gen_.397 = private unnamed_addr constant [39 x i8] c"target_stat_tgt_port_attr_write_mbytes\00", align 1
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 676, i32 1 }
@___asan_gen_.400 = private unnamed_addr constant [38 x i8] c"target_stat_tgt_port_attr_read_mbytes\00", align 1
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 677, i32 1 }
@___asan_gen_.403 = private unnamed_addr constant [37 x i8] c"target_stat_tgt_port_attr_hs_in_cmds\00", align 1
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 673, i32 1 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 580, i32 35 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 674, i32 1 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 598, i32 35 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 599, i32 39 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 675, i32 1 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 678, i32 1 }
@___asan_gen_.427 = private unnamed_addr constant [33 x i8] c"target_stat_scsi_transport_attrs\00", align 1
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 804, i32 35 }
@___asan_gen_.430 = private unnamed_addr constant [32 x i8] c"target_stat_transport_attr_inst\00", align 1
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 798, i32 1 }
@___asan_gen_.433 = private unnamed_addr constant [34 x i8] c"target_stat_transport_attr_device\00", align 1
@___asan_gen_.436 = private unnamed_addr constant [32 x i8] c"target_stat_transport_attr_indx\00", align 1
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 800, i32 1 }
@___asan_gen_.439 = private unnamed_addr constant [36 x i8] c"target_stat_transport_attr_dev_name\00", align 1
@___asan_gen_.442 = private unnamed_addr constant [36 x i8] c"target_stat_transport_attr_proto_id\00", align 1
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 799, i32 1 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 735, i32 35 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 801, i32 1 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 773, i32 35 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 802, i32 1 }
@___asan_gen_.460 = private unnamed_addr constant [33 x i8] c"target_stat_scsi_auth_intr_attrs\00", align 1
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 1157, i32 35 }
@___asan_gen_.463 = private unnamed_addr constant [27 x i8] c"target_stat_auth_attr_inst\00", align 1
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 1142, i32 1 }
@___asan_gen_.466 = private unnamed_addr constant [26 x i8] c"target_stat_auth_attr_dev\00", align 1
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 1143, i32 1 }
@___asan_gen_.469 = private unnamed_addr constant [27 x i8] c"target_stat_auth_attr_port\00", align 1
@___asan_gen_.472 = private unnamed_addr constant [27 x i8] c"target_stat_auth_attr_indx\00", align 1
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 1145, i32 1 }
@___asan_gen_.475 = private unnamed_addr constant [34 x i8] c"target_stat_auth_attr_dev_or_port\00", align 1
@___asan_gen_.478 = private unnamed_addr constant [32 x i8] c"target_stat_auth_attr_intr_name\00", align 1
@___asan_gen_.481 = private unnamed_addr constant [31 x i8] c"target_stat_auth_attr_map_indx\00", align 1
@___asan_gen_.484 = private unnamed_addr constant [32 x i8] c"target_stat_auth_attr_att_count\00", align 1
@___asan_gen_.487 = private unnamed_addr constant [31 x i8] c"target_stat_auth_attr_num_cmds\00", align 1
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 1150, i32 1 }
@___asan_gen_.490 = private unnamed_addr constant [34 x i8] c"target_stat_auth_attr_read_mbytes\00", align 1
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 1151, i32 1 }
@___asan_gen_.493 = private unnamed_addr constant [35 x i8] c"target_stat_auth_attr_write_mbytes\00", align 1
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 1152, i32 1 }
@___asan_gen_.496 = private unnamed_addr constant [34 x i8] c"target_stat_auth_attr_hs_num_cmds\00", align 1
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 1153, i32 1 }
@___asan_gen_.499 = private unnamed_addr constant [36 x i8] c"target_stat_auth_attr_creation_time\00", align 1
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 1154, i32 1 }
@___asan_gen_.502 = private unnamed_addr constant [33 x i8] c"target_stat_auth_attr_row_status\00", align 1
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 1144, i32 1 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 1146, i32 1 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 1147, i32 1 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 1148, i32 1 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 1149, i32 1 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 1155, i32 1 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 1137, i32 34 }
@___asan_gen_.526 = private unnamed_addr constant [37 x i8] c"target_stat_scsi_ath_intr_port_attrs\00", align 1
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 1337, i32 35 }
@___asan_gen_.529 = private unnamed_addr constant [28 x i8] c"target_stat_iport_attr_inst\00", align 1
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 1330, i32 1 }
@___asan_gen_.532 = private unnamed_addr constant [27 x i8] c"target_stat_iport_attr_dev\00", align 1
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 1331, i32 1 }
@___asan_gen_.535 = private unnamed_addr constant [28 x i8] c"target_stat_iport_attr_port\00", align 1
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 1332, i32 1 }
@___asan_gen_.538 = private unnamed_addr constant [28 x i8] c"target_stat_iport_attr_indx\00", align 1
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 1333, i32 1 }
@___asan_gen_.541 = private unnamed_addr constant [38 x i8] c"target_stat_iport_attr_port_auth_indx\00", align 1
@___asan_gen_.544 = private unnamed_addr constant [34 x i8] c"target_stat_iport_attr_port_ident\00", align 1
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 1334, i32 1 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 1335, i32 1 }
@___asan_gen_.553 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.554 = private constant [37 x i8] c"../drivers/target/target_core_stat.c\00", align 1
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 1325, i32 34 }
@llvm.compiler.used = appending global [160 x ptr] [ptr @.str, ptr @target_stat_scsi_dev_cit, ptr @.str.1, ptr @target_stat_scsi_tgt_dev_cit, ptr @.str.2, ptr @target_stat_scsi_lu_cit, ptr @.str.3, ptr @target_stat_scsi_port_cit, ptr @.str.4, ptr @target_stat_scsi_tgt_port_cit, ptr @.str.5, ptr @target_stat_scsi_transport_cit, ptr @.str.6, ptr @target_stat_scsi_auth_intr_cit, ptr @.str.7, ptr @target_stat_scsi_att_intr_port_cit, ptr @target_stat_scsi_dev_attrs, ptr @target_stat_attr_inst, ptr @target_stat_attr_indx, ptr @target_stat_attr_role, ptr @target_stat_attr_ports, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @target_stat_scsi_tgt_dev_attrs, ptr @target_stat_tgt_attr_inst, ptr @target_stat_tgt_attr_indx, ptr @target_stat_tgt_attr_num_lus, ptr @target_stat_tgt_attr_status, ptr @target_stat_tgt_attr_non_access_lus, ptr @target_stat_tgt_attr_resets, ptr @target_stat_tgt_attr_aborts_complete, ptr @target_stat_tgt_attr_aborts_no_task, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @target_stat_scsi_lu_attrs, ptr @target_stat_lu_attr_inst, ptr @target_stat_lu_attr_dev, ptr @target_stat_lu_attr_indx, ptr @target_stat_lu_attr_lun, ptr @target_stat_lu_attr_lu_name, ptr @target_stat_lu_attr_vend, ptr @target_stat_lu_attr_prod, ptr @target_stat_lu_attr_rev, ptr @target_stat_lu_attr_dev_type, ptr @target_stat_lu_attr_status, ptr @target_stat_lu_attr_state_bit, ptr @target_stat_lu_attr_num_cmds, ptr @target_stat_lu_attr_read_mbytes, ptr @target_stat_lu_attr_write_mbytes, ptr @target_stat_lu_attr_resets, ptr @target_stat_lu_attr_full_stat, ptr @target_stat_lu_attr_hs_num_cmds, ptr @target_stat_lu_attr_creation_time, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @target_stat_scsi_port_attrs, ptr @target_stat_port_attr_inst, ptr @target_stat_port_attr_dev, ptr @target_stat_port_attr_indx, ptr @target_stat_port_attr_role, ptr @target_stat_port_attr_busy_count, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @target_stat_scsi_tgt_port_attrs, ptr @target_stat_tgt_port_attr_inst, ptr @target_stat_tgt_port_attr_dev, ptr @target_stat_tgt_port_attr_indx, ptr @target_stat_tgt_port_attr_name, ptr @target_stat_tgt_port_attr_port_index, ptr @target_stat_tgt_port_attr_in_cmds, ptr @target_stat_tgt_port_attr_write_mbytes, ptr @target_stat_tgt_port_attr_read_mbytes, ptr @target_stat_tgt_port_attr_hs_in_cmds, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @target_stat_scsi_transport_attrs, ptr @target_stat_transport_attr_inst, ptr @target_stat_transport_attr_device, ptr @target_stat_transport_attr_indx, ptr @target_stat_transport_attr_dev_name, ptr @target_stat_transport_attr_proto_id, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @target_stat_scsi_auth_intr_attrs, ptr @target_stat_auth_attr_inst, ptr @target_stat_auth_attr_dev, ptr @target_stat_auth_attr_port, ptr @target_stat_auth_attr_indx, ptr @target_stat_auth_attr_dev_or_port, ptr @target_stat_auth_attr_intr_name, ptr @target_stat_auth_attr_map_indx, ptr @target_stat_auth_attr_att_count, ptr @target_stat_auth_attr_num_cmds, ptr @target_stat_auth_attr_read_mbytes, ptr @target_stat_auth_attr_write_mbytes, ptr @target_stat_auth_attr_hs_num_cmds, ptr @target_stat_auth_attr_creation_time, ptr @target_stat_auth_attr_row_status, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @target_stat_scsi_ath_intr_port_attrs, ptr @target_stat_iport_attr_inst, ptr @target_stat_iport_attr_dev, ptr @target_stat_iport_attr_port, ptr @target_stat_iport_attr_indx, ptr @target_stat_iport_attr_port_auth_indx, ptr @target_stat_iport_attr_port_ident, ptr @.str.73, ptr @.str.74, ptr @.str.75], section "llvm.metadata"
@0 = internal global [160 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_scsi_dev_cit to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_scsi_tgt_dev_cit to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_scsi_lu_cit to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_scsi_port_cit to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_scsi_tgt_port_cit to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_scsi_transport_cit to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_scsi_auth_intr_cit to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_scsi_att_intr_port_cit to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_scsi_dev_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_attr_inst to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_attr_indx to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_attr_role to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_attr_ports to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_scsi_tgt_dev_attrs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_tgt_attr_inst to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_tgt_attr_indx to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_tgt_attr_num_lus to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_tgt_attr_status to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_tgt_attr_non_access_lus to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_tgt_attr_resets to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_tgt_attr_aborts_complete to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_tgt_attr_aborts_no_task to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_scsi_lu_attrs to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_lu_attr_inst to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_lu_attr_dev to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_lu_attr_indx to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_lu_attr_lun to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_lu_attr_lu_name to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_lu_attr_vend to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_lu_attr_prod to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_lu_attr_rev to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_lu_attr_dev_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_lu_attr_status to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_lu_attr_state_bit to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_lu_attr_num_cmds to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_lu_attr_read_mbytes to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_lu_attr_write_mbytes to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_lu_attr_resets to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_lu_attr_full_stat to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_lu_attr_hs_num_cmds to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_lu_attr_creation_time to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_scsi_port_attrs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_port_attr_inst to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_port_attr_dev to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_port_attr_indx to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_port_attr_role to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_port_attr_busy_count to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_scsi_tgt_port_attrs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_tgt_port_attr_inst to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_tgt_port_attr_dev to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_tgt_port_attr_indx to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_tgt_port_attr_name to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_tgt_port_attr_port_index to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_tgt_port_attr_in_cmds to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_tgt_port_attr_write_mbytes to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_tgt_port_attr_read_mbytes to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_tgt_port_attr_hs_in_cmds to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_scsi_transport_attrs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_transport_attr_inst to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_transport_attr_device to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_transport_attr_indx to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_transport_attr_dev_name to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_transport_attr_proto_id to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_scsi_auth_intr_attrs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_auth_attr_inst to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_auth_attr_dev to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_auth_attr_port to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_auth_attr_indx to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_auth_attr_dev_or_port to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_auth_attr_intr_name to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_auth_attr_map_indx to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_auth_attr_att_count to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_auth_attr_num_cmds to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_auth_attr_read_mbytes to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_auth_attr_write_mbytes to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_auth_attr_hs_num_cmds to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_auth_attr_creation_time to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_auth_attr_row_status to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_scsi_ath_intr_port_attrs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_iport_attr_inst to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_iport_attr_dev to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_iport_attr_port to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_iport_attr_indx to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_iport_attr_port_auth_indx to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_stat_iport_attr_port_ident to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @target_stat_setup_dev_default_groups(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %scsi_dev_group = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 43, i32 1
  tail call void @config_group_init_type_name(ptr noundef %scsi_dev_group, ptr noundef nonnull @.str, ptr noundef nonnull @target_stat_scsi_dev_cit) #9
  %group_entry.i = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 43, i32 1, i32 4
  %default_groups.i = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 43, i32 0, i32 3
  %prev.i.i = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 43, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %group_entry.i, ptr noundef %1, ptr noundef %default_groups.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.configfs_add_default_group.exit_crit_edge

entry.configfs_add_default_group.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %configfs_add_default_group.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %group_entry.i, ptr %prev.i.i, align 4
  %3 = ptrtoint ptr %group_entry.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %default_groups.i, ptr %group_entry.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 43, i32 1, i32 4, i32 1
  %4 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev3.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %group_entry.i, ptr %1, align 4
  br label %configfs_add_default_group.exit

configfs_add_default_group.exit:                  ; preds = %if.end.i.i.i, %entry.configfs_add_default_group.exit_crit_edge
  %scsi_tgt_dev_group = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 43, i32 2
  tail call void @config_group_init_type_name(ptr noundef %scsi_tgt_dev_group, ptr noundef nonnull @.str.1, ptr noundef nonnull @target_stat_scsi_tgt_dev_cit) #9
  %group_entry.i22 = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 43, i32 2, i32 4
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i25 = tail call zeroext i1 @__list_add_valid(ptr noundef %group_entry.i22, ptr noundef %7, ptr noundef %default_groups.i) #9
  br i1 %call.i.i.i25, label %if.end.i.i.i27, label %configfs_add_default_group.exit.configfs_add_default_group.exit28_crit_edge

configfs_add_default_group.exit.configfs_add_default_group.exit28_crit_edge: ; preds = %configfs_add_default_group.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %configfs_add_default_group.exit28

if.end.i.i.i27:                                   ; preds = %configfs_add_default_group.exit
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %group_entry.i22, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %group_entry.i22 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %default_groups.i, ptr %group_entry.i22, align 4
  %prev3.i.i.i26 = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 43, i32 2, i32 4, i32 1
  %10 = ptrtoint ptr %prev3.i.i.i26 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i.i26, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %group_entry.i22, ptr %7, align 4
  br label %configfs_add_default_group.exit28

configfs_add_default_group.exit28:                ; preds = %if.end.i.i.i27, %configfs_add_default_group.exit.configfs_add_default_group.exit28_crit_edge
  %scsi_lu_group = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 43, i32 3
  tail call void @config_group_init_type_name(ptr noundef %scsi_lu_group, ptr noundef nonnull @.str.2, ptr noundef nonnull @target_stat_scsi_lu_cit) #9
  %group_entry.i29 = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 43, i32 3, i32 4
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i32 = tail call zeroext i1 @__list_add_valid(ptr noundef %group_entry.i29, ptr noundef %13, ptr noundef %default_groups.i) #9
  br i1 %call.i.i.i32, label %if.end.i.i.i34, label %configfs_add_default_group.exit28.configfs_add_default_group.exit35_crit_edge

configfs_add_default_group.exit28.configfs_add_default_group.exit35_crit_edge: ; preds = %configfs_add_default_group.exit28
  call void @__sanitizer_cov_trace_pc() #11
  br label %configfs_add_default_group.exit35

if.end.i.i.i34:                                   ; preds = %configfs_add_default_group.exit28
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %group_entry.i29, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %group_entry.i29 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %default_groups.i, ptr %group_entry.i29, align 4
  %prev3.i.i.i33 = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 43, i32 3, i32 4, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i33 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev3.i.i.i33, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %group_entry.i29, ptr %13, align 4
  br label %configfs_add_default_group.exit35

configfs_add_default_group.exit35:                ; preds = %if.end.i.i.i34, %configfs_add_default_group.exit28.configfs_add_default_group.exit35_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init_type_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @target_stat_setup_port_default_groups(ptr noundef %lun) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %scsi_port_group = getelementptr inbounds %struct.se_lun, ptr %lun, i32 0, i32 19, i32 1
  tail call void @config_group_init_type_name(ptr noundef %scsi_port_group, ptr noundef nonnull @.str.3, ptr noundef nonnull @target_stat_scsi_port_cit) #9
  %group_entry.i = getelementptr inbounds %struct.se_lun, ptr %lun, i32 0, i32 19, i32 1, i32 4
  %default_groups.i = getelementptr inbounds %struct.se_lun, ptr %lun, i32 0, i32 19, i32 0, i32 3
  %prev.i.i = getelementptr inbounds %struct.se_lun, ptr %lun, i32 0, i32 19, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %group_entry.i, ptr noundef %1, ptr noundef %default_groups.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.configfs_add_default_group.exit_crit_edge

entry.configfs_add_default_group.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %configfs_add_default_group.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %group_entry.i, ptr %prev.i.i, align 4
  %3 = ptrtoint ptr %group_entry.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %default_groups.i, ptr %group_entry.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.se_lun, ptr %lun, i32 0, i32 19, i32 1, i32 4, i32 1
  %4 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev3.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %group_entry.i, ptr %1, align 4
  br label %configfs_add_default_group.exit

configfs_add_default_group.exit:                  ; preds = %if.end.i.i.i, %entry.configfs_add_default_group.exit_crit_edge
  %scsi_tgt_port_group = getelementptr inbounds %struct.se_lun, ptr %lun, i32 0, i32 19, i32 2
  tail call void @config_group_init_type_name(ptr noundef %scsi_tgt_port_group, ptr noundef nonnull @.str.4, ptr noundef nonnull @target_stat_scsi_tgt_port_cit) #9
  %group_entry.i22 = getelementptr inbounds %struct.se_lun, ptr %lun, i32 0, i32 19, i32 2, i32 4
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i25 = tail call zeroext i1 @__list_add_valid(ptr noundef %group_entry.i22, ptr noundef %7, ptr noundef %default_groups.i) #9
  br i1 %call.i.i.i25, label %if.end.i.i.i27, label %configfs_add_default_group.exit.configfs_add_default_group.exit28_crit_edge

configfs_add_default_group.exit.configfs_add_default_group.exit28_crit_edge: ; preds = %configfs_add_default_group.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %configfs_add_default_group.exit28

if.end.i.i.i27:                                   ; preds = %configfs_add_default_group.exit
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %group_entry.i22, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %group_entry.i22 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %default_groups.i, ptr %group_entry.i22, align 4
  %prev3.i.i.i26 = getelementptr inbounds %struct.se_lun, ptr %lun, i32 0, i32 19, i32 2, i32 4, i32 1
  %10 = ptrtoint ptr %prev3.i.i.i26 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i.i26, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %group_entry.i22, ptr %7, align 4
  br label %configfs_add_default_group.exit28

configfs_add_default_group.exit28:                ; preds = %if.end.i.i.i27, %configfs_add_default_group.exit.configfs_add_default_group.exit28_crit_edge
  %scsi_transport_group = getelementptr inbounds %struct.se_lun, ptr %lun, i32 0, i32 19, i32 3
  tail call void @config_group_init_type_name(ptr noundef %scsi_transport_group, ptr noundef nonnull @.str.5, ptr noundef nonnull @target_stat_scsi_transport_cit) #9
  %group_entry.i29 = getelementptr inbounds %struct.se_lun, ptr %lun, i32 0, i32 19, i32 3, i32 4
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i32 = tail call zeroext i1 @__list_add_valid(ptr noundef %group_entry.i29, ptr noundef %13, ptr noundef %default_groups.i) #9
  br i1 %call.i.i.i32, label %if.end.i.i.i34, label %configfs_add_default_group.exit28.configfs_add_default_group.exit35_crit_edge

configfs_add_default_group.exit28.configfs_add_default_group.exit35_crit_edge: ; preds = %configfs_add_default_group.exit28
  call void @__sanitizer_cov_trace_pc() #11
  br label %configfs_add_default_group.exit35

if.end.i.i.i34:                                   ; preds = %configfs_add_default_group.exit28
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %group_entry.i29, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %group_entry.i29 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %default_groups.i, ptr %group_entry.i29, align 4
  %prev3.i.i.i33 = getelementptr inbounds %struct.se_lun, ptr %lun, i32 0, i32 19, i32 3, i32 4, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i33 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev3.i.i.i33, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %group_entry.i29, ptr %13, align 4
  br label %configfs_add_default_group.exit35

configfs_add_default_group.exit35:                ; preds = %if.end.i.i.i34, %configfs_add_default_group.exit28.configfs_add_default_group.exit35_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @target_stat_setup_mappedlun_default_groups(ptr noundef %lacl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %scsi_auth_intr_group = getelementptr inbounds %struct.se_lun_acl, ptr %lacl, i32 0, i32 4, i32 1
  tail call void @config_group_init_type_name(ptr noundef %scsi_auth_intr_group, ptr noundef nonnull @.str.6, ptr noundef nonnull @target_stat_scsi_auth_intr_cit) #9
  %group_entry.i = getelementptr inbounds %struct.se_lun_acl, ptr %lacl, i32 0, i32 4, i32 1, i32 4
  %default_groups.i = getelementptr inbounds %struct.se_lun_acl, ptr %lacl, i32 0, i32 4, i32 0, i32 3
  %prev.i.i = getelementptr inbounds %struct.se_lun_acl, ptr %lacl, i32 0, i32 4, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %group_entry.i, ptr noundef %1, ptr noundef %default_groups.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.configfs_add_default_group.exit_crit_edge

entry.configfs_add_default_group.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %configfs_add_default_group.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %group_entry.i, ptr %prev.i.i, align 4
  %3 = ptrtoint ptr %group_entry.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %default_groups.i, ptr %group_entry.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.se_lun_acl, ptr %lacl, i32 0, i32 4, i32 1, i32 4, i32 1
  %4 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev3.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %group_entry.i, ptr %1, align 4
  br label %configfs_add_default_group.exit

configfs_add_default_group.exit:                  ; preds = %if.end.i.i.i, %entry.configfs_add_default_group.exit_crit_edge
  %scsi_att_intr_port_group = getelementptr inbounds %struct.se_lun_acl, ptr %lacl, i32 0, i32 4, i32 2
  tail call void @config_group_init_type_name(ptr noundef %scsi_att_intr_port_group, ptr noundef nonnull @.str.7, ptr noundef nonnull @target_stat_scsi_att_intr_port_cit) #9
  %group_entry.i14 = getelementptr inbounds %struct.se_lun_acl, ptr %lacl, i32 0, i32 4, i32 2, i32 4
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i17 = tail call zeroext i1 @__list_add_valid(ptr noundef %group_entry.i14, ptr noundef %7, ptr noundef %default_groups.i) #9
  br i1 %call.i.i.i17, label %if.end.i.i.i19, label %configfs_add_default_group.exit.configfs_add_default_group.exit20_crit_edge

configfs_add_default_group.exit.configfs_add_default_group.exit20_crit_edge: ; preds = %configfs_add_default_group.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %configfs_add_default_group.exit20

if.end.i.i.i19:                                   ; preds = %configfs_add_default_group.exit
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %group_entry.i14, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %group_entry.i14 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %default_groups.i, ptr %group_entry.i14, align 4
  %prev3.i.i.i18 = getelementptr inbounds %struct.se_lun_acl, ptr %lacl, i32 0, i32 4, i32 2, i32 4, i32 1
  %10 = ptrtoint ptr %prev3.i.i.i18 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i.i18, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %group_entry.i14, ptr %7, align 4
  br label %configfs_add_default_group.exit20

configfs_add_default_group.exit20:                ; preds = %if.end.i.i.i19, %configfs_add_default_group.exit.configfs_add_default_group.exit20_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_inst_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %se_hba = getelementptr i8, ptr %item, i32 -1248
  %0 = ptrtoint ptr %se_hba to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_hba, align 8
  %hba_index = getelementptr inbounds %struct.se_hba, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %hba_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hba_index, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.9, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_indx_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_index = getelementptr i8, ptr %item, i32 -1720
  %0 = ptrtoint ptr %dev_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev_index, align 8
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.9, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @target_stat_role_show(ptr nocapture noundef readnone %item, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %page to i32
  call void @__asan_storeN_noabort(i32 %0, i32 8)
  store i64 6080266760336181760, ptr %page, align 1
  ret i32 7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_ports_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %export_count = getelementptr i8, ptr %item, i32 -1664
  %0 = ptrtoint ptr %export_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %export_count, align 8
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.9, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_tgt_inst_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %se_hba = getelementptr i8, ptr %item, i32 -1328
  %0 = ptrtoint ptr %se_hba to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_hba, align 8
  %hba_index = getelementptr inbounds %struct.se_hba, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %hba_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hba_index, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.9, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_tgt_indx_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_index = getelementptr i8, ptr %item, i32 -1800
  %0 = ptrtoint ptr %dev_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev_index, align 8
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.9, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_tgt_num_lus_show(ptr nocapture noundef readnone %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.9, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @target_stat_tgt_status_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %export_count = getelementptr i8, ptr %item, i32 -1744
  %0 = ptrtoint ptr %export_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %export_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = call ptr @memcpy(ptr %page, ptr @.str.16, i32 10)
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = call ptr @memcpy(ptr %page, ptr @.str.17, i32 12)
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ 9, %if.then ], [ 11, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_tgt_non_access_lus_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %export_count = getelementptr i8, ptr %item, i32 -1744
  %0 = ptrtoint ptr %export_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %export_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %. = zext i1 %tobool.not to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.9, i32 noundef %.)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_tgt_resets_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %num_resets = getelementptr i8, ptr %item, i32 -1784
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_resets, i32 noundef 4) #9
  %0 = ptrtoint ptr %num_resets to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %num_resets, align 4
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.20, i32 noundef %1)
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_tgt_aborts_complete_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %aborts_complete = getelementptr i8, ptr %item, i32 -1780
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %aborts_complete, i32 noundef 4) #9
  %0 = ptrtoint ptr %aborts_complete to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %aborts_complete, align 4
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.20, i32 noundef %1)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_tgt_aborts_no_task_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %aborts_no_task = getelementptr i8, ptr %item, i32 -1776
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %aborts_no_task, i32 noundef 4) #9
  %0 = ptrtoint ptr %aborts_no_task to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %aborts_no_task, align 4
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.20, i32 noundef %1)
  ret i32 %call2
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_lu_inst_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %se_hba = getelementptr i8, ptr %item, i32 -1408
  %0 = ptrtoint ptr %se_hba to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_hba, align 8
  %hba_index = getelementptr inbounds %struct.se_hba, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %hba_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hba_index, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.9, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_lu_dev_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_index = getelementptr i8, ptr %item, i32 -1880
  %0 = ptrtoint ptr %dev_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev_index, align 8
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.9, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_lu_indx_show(ptr nocapture noundef readnone %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.9, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_lu_lun_show(ptr nocapture noundef readnone %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.25, i64 noundef 0)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_lu_lu_name_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %unit_serial = getelementptr i8, ptr %item, i32 -1373
  %0 = ptrtoint ptr %unit_serial to i32
  call void @__asan_load1_noabort(i32 %0)
  %char0 = load i8, ptr %unit_serial, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %tobool.not = icmp eq i8 %char0, 0
  %spec.select = select i1 %tobool.not, ptr @.str.28, ptr %unit_serial
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.27, ptr noundef %spec.select)
  ret i32 %call5
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_lu_vend_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %t10_wwn = getelementptr i8, ptr %item, i32 -1404
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.30, ptr noundef %t10_wwn)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_lu_prod_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %model = getelementptr i8, ptr %item, i32 -1395
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.32, ptr noundef %model)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_lu_rev_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %revision = getelementptr i8, ptr %item, i32 -1378
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.34, ptr noundef %revision)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_lu_dev_type_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3.i = getelementptr i8, ptr %item, i32 -1912
  %transport = getelementptr i8, ptr %item, i32 1104
  %0 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transport, align 8
  %get_device_type = getelementptr inbounds %struct.target_backend_ops, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %get_device_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_device_type, align 4
  %call1 = tail call i32 %3(ptr noundef %add.ptr3.i) #9
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.9, i32 noundef %call1)
  ret i32 %call2
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_lu_status_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %export_count = getelementptr i8, ptr %item, i32 -1824
  %0 = ptrtoint ptr %export_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %export_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %cond = select i1 %tobool.not, ptr @.str.37, ptr @.str.36
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.27, ptr noundef nonnull %cond)
  ret i32 %call1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @target_stat_lu_state_bit_show(ptr nocapture noundef readnone %item, ptr nocapture noundef writeonly %page) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %page, ptr @.str.39, i32 9)
  ret i32 8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_lu_num_cmds_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %num_cmds = getelementptr i8, ptr %item, i32 -1852
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_cmds, i32 noundef 4) #9
  %0 = ptrtoint ptr %num_cmds to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %num_cmds, align 4
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.20, i32 noundef %1)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_lu_read_mbytes_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %read_bytes = getelementptr i8, ptr %item, i32 -1848
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %read_bytes, i32 noundef 4) #9
  %0 = ptrtoint ptr %read_bytes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %read_bytes, align 4
  %shr = ashr i32 %1, 20
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.20, i32 noundef %shr)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_lu_write_mbytes_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %write_bytes = getelementptr i8, ptr %item, i32 -1844
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %write_bytes, i32 noundef 4) #9
  %0 = ptrtoint ptr %write_bytes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %write_bytes, align 4
  %shr = ashr i32 %1, 20
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.20, i32 noundef %shr)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_lu_resets_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %num_resets = getelementptr i8, ptr %item, i32 -1864
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_resets, i32 noundef 4) #9
  %0 = ptrtoint ptr %num_resets to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %num_resets, align 4
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.20, i32 noundef %1)
  ret i32 %call2
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_lu_full_stat_show(ptr nocapture noundef readnone %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.9, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_lu_hs_num_cmds_show(ptr nocapture noundef readnone %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.9, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_lu_creation_time_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %creation_time = getelementptr i8, ptr %item, i32 -1872
  %0 = ptrtoint ptr %creation_time to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %creation_time, align 8
  %conv = trunc i64 %1 to i32
  %2 = mul i32 %conv, 100
  %mul = add i32 %2, 3000000
  %div = udiv i32 %mul, 100
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.9, i32 noundef %div)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_port_inst_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !333
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 696, ptr noundef nonnull @.str.49) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %lun_se_dev = getelementptr i8, ptr %item, i32 -392
  %4 = ptrtoint ptr %lun_se_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %lun_se_dev, align 8
  %call2 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b15 = load i1, ptr @target_stat_port_inst_show.__warned, align 1
  br i1 %.b15, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @target_stat_port_inst_show.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.46, i32 noundef 428, ptr noundef nonnull @.str.47) #9
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %do.end8.if.end13_crit_edge, label %if.then11

do.end8.if.end13_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then11:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  %hba_index = getelementptr inbounds %struct.se_device, ptr %5, i32 0, i32 49
  %6 = ptrtoint ptr %hba_index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hba_index, align 4
  %call12 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.9, i32 noundef %7)
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %do.end8.if.end13_crit_edge
  %ret.0 = phi i32 [ %call12, %if.then11 ], [ -19, %do.end8.if.end13_crit_edge ]
  %call.i16 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i16, label %if.end13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i19

if.end13.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i19:                                ; preds = %if.end13
  %call1.i17 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17)
  %tobool.not.i18 = icmp eq i32 %call1.i17, 0
  br i1 %tobool.not.i18, label %land.lhs.true.i19.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i21

land.lhs.true.i19.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i19
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i21:                               ; preds = %land.lhs.true.i19
  %.b4.i20 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i20, label %land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge, label %if.then.i22

land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i22:                                      ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i22, %land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i19.rcu_read_unlock.exit_crit_edge, %if.end13.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !334
  %8 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i23 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i23 to ptr
  %preempt_count.i.i.i.i24 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i24, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i24, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_port_dev_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !333
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 696, ptr noundef nonnull @.str.49) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %lun_se_dev = getelementptr i8, ptr %item, i32 -392
  %4 = ptrtoint ptr %lun_se_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %lun_se_dev, align 8
  %call2 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b15 = load i1, ptr @target_stat_port_dev_show.__warned, align 1
  br i1 %.b15, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @target_stat_port_dev_show.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.46, i32 noundef 442, ptr noundef nonnull @.str.47) #9
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %do.end8.if.end13_crit_edge, label %if.then11

do.end8.if.end13_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then11:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  %dev_index = getelementptr inbounds %struct.se_device, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %dev_index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev_index, align 8
  %call12 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.9, i32 noundef %7)
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %do.end8.if.end13_crit_edge
  %ret.0 = phi i32 [ %call12, %if.then11 ], [ -19, %do.end8.if.end13_crit_edge ]
  %call.i16 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i16, label %if.end13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i19

if.end13.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i19:                                ; preds = %if.end13
  %call1.i17 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17)
  %tobool.not.i18 = icmp eq i32 %call1.i17, 0
  br i1 %tobool.not.i18, label %land.lhs.true.i19.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i21

land.lhs.true.i19.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i19
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i21:                               ; preds = %land.lhs.true.i19
  %.b4.i20 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i20, label %land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge, label %if.then.i22

land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i22:                                      ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i22, %land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i19.rcu_read_unlock.exit_crit_edge, %if.end13.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !334
  %8 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i23 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i23 to ptr
  %preempt_count.i.i.i.i24 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i24, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i24, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_port_indx_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !333
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 696, ptr noundef nonnull @.str.49) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %lun_se_dev = getelementptr i8, ptr %item, i32 -392
  %4 = ptrtoint ptr %lun_se_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %lun_se_dev, align 8
  %call2 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b15 = load i1, ptr @target_stat_port_indx_show.__warned, align 1
  br i1 %.b15, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @target_stat_port_indx_show.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.46, i32 noundef 456, ptr noundef nonnull @.str.47) #9
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %do.end8.if.end13_crit_edge, label %if.then11

do.end8.if.end13_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then11:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  %lun_rtpi = getelementptr i8, ptr %item, i32 -400
  %6 = ptrtoint ptr %lun_rtpi to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %lun_rtpi, align 8
  %conv = zext i16 %7 to i32
  %call12 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.9, i32 noundef %conv)
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %do.end8.if.end13_crit_edge
  %ret.0 = phi i32 [ %call12, %if.then11 ], [ -19, %do.end8.if.end13_crit_edge ]
  %call.i16 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i16, label %if.end13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i19

if.end13.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i19:                                ; preds = %if.end13
  %call1.i17 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17)
  %tobool.not.i18 = icmp eq i32 %call1.i17, 0
  br i1 %tobool.not.i18, label %land.lhs.true.i19.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i21

land.lhs.true.i19.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i19
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i21:                               ; preds = %land.lhs.true.i19
  %.b4.i20 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i20, label %land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge, label %if.then.i22

land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i22:                                      ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i22, %land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i19.rcu_read_unlock.exit_crit_edge, %if.end13.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !334
  %8 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i23 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i23 to ptr
  %preempt_count.i.i.i.i24 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i24, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i24, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_port_role_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !333
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 696, ptr noundef nonnull @.str.49) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %lun_se_dev = getelementptr i8, ptr %item, i32 -392
  %4 = ptrtoint ptr %lun_se_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %lun_se_dev, align 8
  %call2 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b15 = load i1, ptr @target_stat_port_role_show.__warned, align 1
  br i1 %.b15, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @target_stat_port_role_show.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.46, i32 noundef 470, ptr noundef nonnull @.str.47) #9
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %do.end8.if.end13_crit_edge, label %if.then11

do.end8.if.end13_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then11:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  %dev_index = getelementptr inbounds %struct.se_device, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %dev_index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev_index, align 8
  %call12 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, i32 noundef %7)
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %do.end8.if.end13_crit_edge
  %ret.0 = phi i32 [ %call12, %if.then11 ], [ -19, %do.end8.if.end13_crit_edge ]
  %call.i16 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i16, label %if.end13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i19

if.end13.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i19:                                ; preds = %if.end13
  %call1.i17 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17)
  %tobool.not.i18 = icmp eq i32 %call1.i17, 0
  br i1 %tobool.not.i18, label %land.lhs.true.i19.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i21

land.lhs.true.i19.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i19
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i21:                               ; preds = %land.lhs.true.i19
  %.b4.i20 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i20, label %land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge, label %if.then.i22

land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i22:                                      ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i22, %land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i19.rcu_read_unlock.exit_crit_edge, %if.end13.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !334
  %8 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i23 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i23 to ptr
  %preempt_count.i.i.i.i24 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i24, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i24, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_port_busy_count_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !333
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 696, ptr noundef nonnull @.str.49) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %lun_se_dev = getelementptr i8, ptr %item, i32 -392
  %4 = ptrtoint ptr %lun_se_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %lun_se_dev, align 8
  %call2 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b14 = load i1, ptr @target_stat_port_busy_count_show.__warned, align 1
  br i1 %.b14, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @target_stat_port_busy_count_show.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.46, i32 noundef 485, ptr noundef nonnull @.str.47) #9
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %do.end8.if.end13_crit_edge, label %if.then11

do.end8.if.end13_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then11:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  %call12 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.9, i32 noundef 0)
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %do.end8.if.end13_crit_edge
  %ret.0 = phi i32 [ %call12, %if.then11 ], [ -19, %do.end8.if.end13_crit_edge ]
  %call.i15 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i15, label %if.end13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i18

if.end13.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i18:                                ; preds = %if.end13
  %call1.i16 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i16)
  %tobool.not.i17 = icmp eq i32 %call1.i16, 0
  br i1 %tobool.not.i17, label %land.lhs.true.i18.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i20

land.lhs.true.i18.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i18
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i20:                               ; preds = %land.lhs.true.i18
  %.b4.i19 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i19, label %land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge, label %if.then.i21

land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i20
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i21:                                      ; preds = %land.lhs.true2.i20
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i21, %land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i18.rcu_read_unlock.exit_crit_edge, %if.end13.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !334
  %6 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i22 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i22 to ptr
  %preempt_count.i.i.i.i23 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i23, align 4
  %sub.i.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i23, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_tgt_port_inst_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !333
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 696, ptr noundef nonnull @.str.49) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %lun_se_dev = getelementptr i8, ptr %item, i32 -472
  %4 = ptrtoint ptr %lun_se_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %lun_se_dev, align 8
  %call2 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b15 = load i1, ptr @target_stat_tgt_port_inst_show.__warned, align 1
  br i1 %.b15, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @target_stat_tgt_port_inst_show.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.46, i32 noundef 532, ptr noundef nonnull @.str.47) #9
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %do.end8.if.end13_crit_edge, label %if.then11

do.end8.if.end13_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then11:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  %hba_index = getelementptr inbounds %struct.se_device, ptr %5, i32 0, i32 49
  %6 = ptrtoint ptr %hba_index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hba_index, align 4
  %call12 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.9, i32 noundef %7)
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %do.end8.if.end13_crit_edge
  %ret.0 = phi i32 [ %call12, %if.then11 ], [ -19, %do.end8.if.end13_crit_edge ]
  %call.i16 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i16, label %if.end13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i19

if.end13.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i19:                                ; preds = %if.end13
  %call1.i17 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17)
  %tobool.not.i18 = icmp eq i32 %call1.i17, 0
  br i1 %tobool.not.i18, label %land.lhs.true.i19.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i21

land.lhs.true.i19.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i19
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i21:                               ; preds = %land.lhs.true.i19
  %.b4.i20 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i20, label %land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge, label %if.then.i22

land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i22:                                      ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i22, %land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i19.rcu_read_unlock.exit_crit_edge, %if.end13.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !334
  %8 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i23 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i23 to ptr
  %preempt_count.i.i.i.i24 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i24, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i24, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_tgt_port_dev_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !333
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 696, ptr noundef nonnull @.str.49) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %lun_se_dev = getelementptr i8, ptr %item, i32 -472
  %4 = ptrtoint ptr %lun_se_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %lun_se_dev, align 8
  %call2 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b15 = load i1, ptr @target_stat_tgt_port_dev_show.__warned, align 1
  br i1 %.b15, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @target_stat_tgt_port_dev_show.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.46, i32 noundef 547, ptr noundef nonnull @.str.47) #9
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %do.end8.if.end13_crit_edge, label %if.then11

do.end8.if.end13_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then11:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  %dev_index = getelementptr inbounds %struct.se_device, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %dev_index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev_index, align 8
  %call12 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.9, i32 noundef %7)
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %do.end8.if.end13_crit_edge
  %ret.0 = phi i32 [ %call12, %if.then11 ], [ -19, %do.end8.if.end13_crit_edge ]
  %call.i16 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i16, label %if.end13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i19

if.end13.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i19:                                ; preds = %if.end13
  %call1.i17 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17)
  %tobool.not.i18 = icmp eq i32 %call1.i17, 0
  br i1 %tobool.not.i18, label %land.lhs.true.i19.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i21

land.lhs.true.i19.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i19
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i21:                               ; preds = %land.lhs.true.i19
  %.b4.i20 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i20, label %land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge, label %if.then.i22

land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i22:                                      ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i22, %land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i19.rcu_read_unlock.exit_crit_edge, %if.end13.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !334
  %8 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i23 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i23 to ptr
  %preempt_count.i.i.i.i24 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i24, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i24, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_tgt_port_indx_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !333
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 696, ptr noundef nonnull @.str.49) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %lun_se_dev = getelementptr i8, ptr %item, i32 -472
  %4 = ptrtoint ptr %lun_se_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %lun_se_dev, align 8
  %call2 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b15 = load i1, ptr @target_stat_tgt_port_indx_show.__warned, align 1
  br i1 %.b15, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @target_stat_tgt_port_indx_show.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.46, i32 noundef 562, ptr noundef nonnull @.str.47) #9
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %do.end8.if.end13_crit_edge, label %if.then11

do.end8.if.end13_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then11:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  %lun_rtpi = getelementptr i8, ptr %item, i32 -480
  %6 = ptrtoint ptr %lun_rtpi to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %lun_rtpi, align 8
  %conv = zext i16 %7 to i32
  %call12 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.9, i32 noundef %conv)
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %do.end8.if.end13_crit_edge
  %ret.0 = phi i32 [ %call12, %if.then11 ], [ -19, %do.end8.if.end13_crit_edge ]
  %call.i16 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i16, label %if.end13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i19

if.end13.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i19:                                ; preds = %if.end13
  %call1.i17 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17)
  %tobool.not.i18 = icmp eq i32 %call1.i17, 0
  br i1 %tobool.not.i18, label %land.lhs.true.i19.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i21

land.lhs.true.i19.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i19
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i21:                               ; preds = %land.lhs.true.i19
  %.b4.i20 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i20, label %land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge, label %if.then.i22

land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i22:                                      ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i22, %land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i19.rcu_read_unlock.exit_crit_edge, %if.end13.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !334
  %8 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i23 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i23 to ptr
  %preempt_count.i.i.i.i24 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i24, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i24, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_tgt_port_name_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lun_tpg = getelementptr i8, ptr %item, i32 -256
  %0 = ptrtoint ptr %lun_tpg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lun_tpg, align 8
  %2 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !333
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 696, ptr noundef nonnull @.str.49) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %lun_se_dev = getelementptr i8, ptr %item, i32 -472
  %6 = ptrtoint ptr %lun_se_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %lun_se_dev, align 8
  %call2 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b16 = load i1, ptr @target_stat_tgt_port_name_show.__warned, align 1
  br i1 %.b16, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @target_stat_tgt_port_name_show.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.46, i32 noundef 578, ptr noundef nonnull @.str.47) #9
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %7, null
  br i1 %tobool10.not, label %do.end8.if.end13_crit_edge, label %if.then11

do.end8.if.end13_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then11:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  %se_tpg_tfo = getelementptr inbounds %struct.se_portal_group, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %se_tpg_tfo to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %se_tpg_tfo, align 4
  %fabric_name = getelementptr inbounds %struct.target_core_fabric_ops, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %fabric_name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fabric_name, align 4
  %lun_rtpi = getelementptr i8, ptr %item, i32 -480
  %12 = ptrtoint ptr %lun_rtpi to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %lun_rtpi, align 8
  %conv = zext i16 %13 to i32
  %call12 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.55, ptr noundef %11, i32 noundef %conv)
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %do.end8.if.end13_crit_edge
  %ret.0 = phi i32 [ %call12, %if.then11 ], [ -19, %do.end8.if.end13_crit_edge ]
  %call.i17 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i17, label %if.end13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i20

if.end13.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i20:                                ; preds = %if.end13
  %call1.i18 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i18)
  %tobool.not.i19 = icmp eq i32 %call1.i18, 0
  br i1 %tobool.not.i19, label %land.lhs.true.i20.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i22

land.lhs.true.i20.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i20
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i22:                               ; preds = %land.lhs.true.i20
  %.b4.i21 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i21, label %land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge, label %if.then.i23

land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i22
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i23:                                      ; preds = %land.lhs.true2.i22
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i23, %land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i20.rcu_read_unlock.exit_crit_edge, %if.end13.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !334
  %14 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i24 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i24 to ptr
  %preempt_count.i.i.i.i25 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i25, align 4
  %sub.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i25, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_tgt_port_port_index_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lun_tpg = getelementptr i8, ptr %item, i32 -256
  %0 = ptrtoint ptr %lun_tpg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lun_tpg, align 8
  %2 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !333
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 696, ptr noundef nonnull @.str.49) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %lun_se_dev = getelementptr i8, ptr %item, i32 -472
  %6 = ptrtoint ptr %lun_se_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %lun_se_dev, align 8
  %call2 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b21 = load i1, ptr @target_stat_tgt_port_port_index_show.__warned, align 1
  br i1 %.b21, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @target_stat_tgt_port_port_index_show.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.46, i32 noundef 596, ptr noundef nonnull @.str.47) #9
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %7, null
  br i1 %tobool10.not, label %do.end8.if.end16_crit_edge, label %if.then11

do.end8.if.end16_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then11:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  %se_tpg_tfo = getelementptr inbounds %struct.se_portal_group, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %se_tpg_tfo to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %se_tpg_tfo, align 4
  %tpg_get_wwn = getelementptr inbounds %struct.target_core_fabric_ops, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %tpg_get_wwn to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tpg_get_wwn, align 4
  %call12 = tail call ptr %11(ptr noundef %1) #9
  %12 = ptrtoint ptr %se_tpg_tfo to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %se_tpg_tfo, align 4
  %tpg_get_tag = getelementptr inbounds %struct.target_core_fabric_ops, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %tpg_get_tag to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tpg_get_tag, align 4
  %call14 = tail call zeroext i16 %15(ptr noundef %1) #9
  %conv = zext i16 %call14 to i32
  %call15 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.57, ptr noundef %call12, ptr noundef nonnull @.str.58, i32 noundef %conv)
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %do.end8.if.end16_crit_edge
  %ret.0 = phi i32 [ %call15, %if.then11 ], [ -19, %do.end8.if.end16_crit_edge ]
  %call.i22 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i22, label %if.end16.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i25

if.end16.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i25:                                ; preds = %if.end16
  %call1.i23 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i23)
  %tobool.not.i24 = icmp eq i32 %call1.i23, 0
  br i1 %tobool.not.i24, label %land.lhs.true.i25.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i27

land.lhs.true.i25.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i25
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i27:                               ; preds = %land.lhs.true.i25
  %.b4.i26 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i26, label %land.lhs.true2.i27.rcu_read_unlock.exit_crit_edge, label %if.then.i28

land.lhs.true2.i27.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i27
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i28:                                      ; preds = %land.lhs.true2.i27
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i28, %land.lhs.true2.i27.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i25.rcu_read_unlock.exit_crit_edge, %if.end16.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !334
  %16 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i29 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i29 to ptr
  %preempt_count.i.i.i.i30 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i30, align 4
  %sub.i.i.i = add i32 %19, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i30, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_tgt_port_in_cmds_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !333
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 696, ptr noundef nonnull @.str.49) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %lun_se_dev = getelementptr i8, ptr %item, i32 -472
  %4 = ptrtoint ptr %lun_se_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %lun_se_dev, align 8
  %call2 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b16 = load i1, ptr @target_stat_tgt_port_in_cmds_show.__warned, align 1
  br i1 %.b16, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @target_stat_tgt_port_in_cmds_show.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.46, i32 noundef 613, ptr noundef nonnull @.str.47) #9
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %do.end8.if.end14_crit_edge, label %if.then11

do.end8.if.end14_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then11:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  %lun_stats = getelementptr i8, ptr %item, i32 -252
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %lun_stats, i32 noundef 4) #9
  %6 = ptrtoint ptr %lun_stats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %lun_stats, align 4
  %call13 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.20, i32 noundef %7)
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %do.end8.if.end14_crit_edge
  %ret.0 = phi i32 [ %call13, %if.then11 ], [ -19, %do.end8.if.end14_crit_edge ]
  %call.i17 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i17, label %if.end14.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i20

if.end14.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i20:                                ; preds = %if.end14
  %call1.i18 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i18)
  %tobool.not.i19 = icmp eq i32 %call1.i18, 0
  br i1 %tobool.not.i19, label %land.lhs.true.i20.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i22

land.lhs.true.i20.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i20
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i22:                               ; preds = %land.lhs.true.i20
  %.b4.i21 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i21, label %land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge, label %if.then.i23

land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i22
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i23:                                      ; preds = %land.lhs.true2.i22
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i23, %land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i20.rcu_read_unlock.exit_crit_edge, %if.end14.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !334
  %8 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i24 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i24 to ptr
  %preempt_count.i.i.i.i25 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i25 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i25, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i25, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_tgt_port_write_mbytes_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !333
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 696, ptr noundef nonnull @.str.49) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %lun_se_dev = getelementptr i8, ptr %item, i32 -472
  %4 = ptrtoint ptr %lun_se_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %lun_se_dev, align 8
  %call2 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b16 = load i1, ptr @target_stat_tgt_port_write_mbytes_show.__warned, align 1
  br i1 %.b16, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @target_stat_tgt_port_write_mbytes_show.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.46, i32 noundef 629, ptr noundef nonnull @.str.47) #9
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %do.end8.if.end14_crit_edge, label %if.then11

do.end8.if.end14_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then11:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  %rx_data_octets = getelementptr i8, ptr %item, i32 -244
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx_data_octets, i32 noundef 4) #9
  %6 = ptrtoint ptr %rx_data_octets to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %rx_data_octets, align 4
  %shr = ashr i32 %7, 20
  %call13 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.9, i32 noundef %shr)
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %do.end8.if.end14_crit_edge
  %ret.0 = phi i32 [ %call13, %if.then11 ], [ -19, %do.end8.if.end14_crit_edge ]
  %call.i17 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i17, label %if.end14.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i20

if.end14.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i20:                                ; preds = %if.end14
  %call1.i18 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i18)
  %tobool.not.i19 = icmp eq i32 %call1.i18, 0
  br i1 %tobool.not.i19, label %land.lhs.true.i20.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i22

land.lhs.true.i20.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i20
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i22:                               ; preds = %land.lhs.true.i20
  %.b4.i21 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i21, label %land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge, label %if.then.i23

land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i22
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i23:                                      ; preds = %land.lhs.true2.i22
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i23, %land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i20.rcu_read_unlock.exit_crit_edge, %if.end14.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !334
  %8 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i24 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i24 to ptr
  %preempt_count.i.i.i.i25 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i25 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i25, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i25, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_tgt_port_read_mbytes_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !333
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 696, ptr noundef nonnull @.str.49) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %lun_se_dev = getelementptr i8, ptr %item, i32 -472
  %4 = ptrtoint ptr %lun_se_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %lun_se_dev, align 8
  %call2 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b16 = load i1, ptr @target_stat_tgt_port_read_mbytes_show.__warned, align 1
  br i1 %.b16, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @target_stat_tgt_port_read_mbytes_show.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.46, i32 noundef 645, ptr noundef nonnull @.str.47) #9
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %do.end8.if.end14_crit_edge, label %if.then11

do.end8.if.end14_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then11:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  %tx_data_octets = getelementptr i8, ptr %item, i32 -248
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_data_octets, i32 noundef 4) #9
  %6 = ptrtoint ptr %tx_data_octets to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %tx_data_octets, align 4
  %shr = ashr i32 %7, 20
  %call13 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.9, i32 noundef %shr)
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %do.end8.if.end14_crit_edge
  %ret.0 = phi i32 [ %call13, %if.then11 ], [ -19, %do.end8.if.end14_crit_edge ]
  %call.i17 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i17, label %if.end14.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i20

if.end14.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i20:                                ; preds = %if.end14
  %call1.i18 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i18)
  %tobool.not.i19 = icmp eq i32 %call1.i18, 0
  br i1 %tobool.not.i19, label %land.lhs.true.i20.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i22

land.lhs.true.i20.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i20
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i22:                               ; preds = %land.lhs.true.i20
  %.b4.i21 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i21, label %land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge, label %if.then.i23

land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i22
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i23:                                      ; preds = %land.lhs.true2.i22
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i23, %land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i20.rcu_read_unlock.exit_crit_edge, %if.end14.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !334
  %8 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i24 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i24 to ptr
  %preempt_count.i.i.i.i25 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i25 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i25, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i25, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_tgt_port_hs_in_cmds_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !333
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 696, ptr noundef nonnull @.str.49) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %lun_se_dev = getelementptr i8, ptr %item, i32 -472
  %4 = ptrtoint ptr %lun_se_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %lun_se_dev, align 8
  %call2 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b14 = load i1, ptr @target_stat_tgt_port_hs_in_cmds_show.__warned, align 1
  br i1 %.b14, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @target_stat_tgt_port_hs_in_cmds_show.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.46, i32 noundef 661, ptr noundef nonnull @.str.47) #9
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %do.end8.if.end13_crit_edge, label %if.then11

do.end8.if.end13_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then11:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  %call12 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.9, i32 noundef 0)
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %do.end8.if.end13_crit_edge
  %ret.0 = phi i32 [ %call12, %if.then11 ], [ -19, %do.end8.if.end13_crit_edge ]
  %call.i15 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i15, label %if.end13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i18

if.end13.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i18:                                ; preds = %if.end13
  %call1.i16 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i16)
  %tobool.not.i17 = icmp eq i32 %call1.i16, 0
  br i1 %tobool.not.i17, label %land.lhs.true.i18.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i20

land.lhs.true.i18.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i18
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i20:                               ; preds = %land.lhs.true.i18
  %.b4.i19 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i19, label %land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge, label %if.then.i21

land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i20
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i21:                                      ; preds = %land.lhs.true2.i20
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i21, %land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i18.rcu_read_unlock.exit_crit_edge, %if.end13.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !334
  %6 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i22 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i22 to ptr
  %preempt_count.i.i.i.i23 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i23, align 4
  %sub.i.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i23, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_transport_inst_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !333
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 696, ptr noundef nonnull @.str.49) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %lun_se_dev = getelementptr i8, ptr %item, i32 -552
  %4 = ptrtoint ptr %lun_se_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %lun_se_dev, align 8
  %call2 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b15 = load i1, ptr @target_stat_transport_inst_show.__warned, align 1
  br i1 %.b15, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @target_stat_transport_inst_show.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.46, i32 noundef 716, ptr noundef nonnull @.str.47) #9
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %do.end8.if.end13_crit_edge, label %if.then11

do.end8.if.end13_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then11:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  %hba_index = getelementptr inbounds %struct.se_device, ptr %5, i32 0, i32 49
  %6 = ptrtoint ptr %hba_index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hba_index, align 4
  %call12 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.9, i32 noundef %7)
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %do.end8.if.end13_crit_edge
  %ret.0 = phi i32 [ %call12, %if.then11 ], [ -19, %do.end8.if.end13_crit_edge ]
  %call.i16 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i16, label %if.end13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i19

if.end13.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i19:                                ; preds = %if.end13
  %call1.i17 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17)
  %tobool.not.i18 = icmp eq i32 %call1.i17, 0
  br i1 %tobool.not.i18, label %land.lhs.true.i19.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i21

land.lhs.true.i19.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i19
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i21:                               ; preds = %land.lhs.true.i19
  %.b4.i20 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i20, label %land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge, label %if.then.i22

land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i22:                                      ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i22, %land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i19.rcu_read_unlock.exit_crit_edge, %if.end13.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !334
  %8 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i23 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i23 to ptr
  %preempt_count.i.i.i.i24 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i24, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i24, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_transport_device_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lun_tpg = getelementptr i8, ptr %item, i32 -336
  %0 = ptrtoint ptr %lun_tpg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lun_tpg, align 8
  %2 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !333
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 696, ptr noundef nonnull @.str.49) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %lun_se_dev = getelementptr i8, ptr %item, i32 -552
  %6 = ptrtoint ptr %lun_se_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %lun_se_dev, align 8
  %call2 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b15 = load i1, ptr @target_stat_transport_device_show.__warned, align 1
  br i1 %.b15, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @target_stat_transport_device_show.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.46, i32 noundef 732, ptr noundef nonnull @.str.47) #9
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %7, null
  br i1 %tobool10.not, label %do.end8.if.end13_crit_edge, label %if.then11

do.end8.if.end13_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then11:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  %se_tpg_tfo = getelementptr inbounds %struct.se_portal_group, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %se_tpg_tfo to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %se_tpg_tfo, align 4
  %fabric_name = getelementptr inbounds %struct.target_core_fabric_ops, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %fabric_name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fabric_name, align 4
  %call12 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.62, ptr noundef %11)
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %do.end8.if.end13_crit_edge
  %ret.0 = phi i32 [ %call12, %if.then11 ], [ -19, %do.end8.if.end13_crit_edge ]
  %call.i16 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i16, label %if.end13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i19

if.end13.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i19:                                ; preds = %if.end13
  %call1.i17 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17)
  %tobool.not.i18 = icmp eq i32 %call1.i17, 0
  br i1 %tobool.not.i18, label %land.lhs.true.i19.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i21

land.lhs.true.i19.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i19
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i21:                               ; preds = %land.lhs.true.i19
  %.b4.i20 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i20, label %land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge, label %if.then.i22

land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i22:                                      ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i22, %land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i19.rcu_read_unlock.exit_crit_edge, %if.end13.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !334
  %12 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i23 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i23 to ptr
  %preempt_count.i.i.i.i24 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i24, align 4
  %sub.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i24, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_transport_indx_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lun_tpg = getelementptr i8, ptr %item, i32 -336
  %0 = ptrtoint ptr %lun_tpg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lun_tpg, align 8
  %2 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !333
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 696, ptr noundef nonnull @.str.49) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %lun_se_dev = getelementptr i8, ptr %item, i32 -552
  %6 = ptrtoint ptr %lun_se_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %lun_se_dev, align 8
  %call2 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b17 = load i1, ptr @target_stat_transport_indx_show.__warned, align 1
  br i1 %.b17, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @target_stat_transport_indx_show.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.46, i32 noundef 751, ptr noundef nonnull @.str.47) #9
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %7, null
  br i1 %tobool10.not, label %do.end8.if.end14_crit_edge, label %if.then11

do.end8.if.end14_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then11:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  %se_tpg_tfo = getelementptr inbounds %struct.se_portal_group, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %se_tpg_tfo to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %se_tpg_tfo, align 4
  %tpg_get_inst_index = getelementptr inbounds %struct.target_core_fabric_ops, ptr %9, i32 0, i32 14
  %10 = ptrtoint ptr %tpg_get_inst_index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tpg_get_inst_index, align 4
  %call12 = tail call i32 %11(ptr noundef %1) #9
  %call13 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.9, i32 noundef %call12)
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %do.end8.if.end14_crit_edge
  %ret.0 = phi i32 [ %call13, %if.then11 ], [ -19, %do.end8.if.end14_crit_edge ]
  %call.i18 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i18, label %if.end14.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i21

if.end14.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i21:                                ; preds = %if.end14
  %call1.i19 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i19)
  %tobool.not.i20 = icmp eq i32 %call1.i19, 0
  br i1 %tobool.not.i20, label %land.lhs.true.i21.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i23

land.lhs.true.i21.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i21
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i23:                               ; preds = %land.lhs.true.i21
  %.b4.i22 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i22, label %land.lhs.true2.i23.rcu_read_unlock.exit_crit_edge, label %if.then.i24

land.lhs.true2.i23.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i23
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i24:                                      ; preds = %land.lhs.true2.i23
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i24, %land.lhs.true2.i23.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i21.rcu_read_unlock.exit_crit_edge, %if.end14.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !334
  %12 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i25 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i25 to ptr
  %preempt_count.i.i.i.i26 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i26 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i26, align 4
  %sub.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i26, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_transport_dev_name_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lun_tpg = getelementptr i8, ptr %item, i32 -336
  %0 = ptrtoint ptr %lun_tpg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lun_tpg, align 8
  %2 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !333
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 696, ptr noundef nonnull @.str.49) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %lun_se_dev = getelementptr i8, ptr %item, i32 -552
  %6 = ptrtoint ptr %lun_se_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %lun_se_dev, align 8
  %call2 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b25 = load i1, ptr @target_stat_transport_dev_name_show.__warned, align 1
  br i1 %.b25, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @target_stat_transport_dev_name_show.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.46, i32 noundef 769, ptr noundef nonnull @.str.47) #9
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %7, null
  br i1 %tobool10.not, label %do.end8.if.end19_crit_edge, label %if.then11

do.end8.if.end19_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then11:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  %se_tpg_tfo = getelementptr inbounds %struct.se_portal_group, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %se_tpg_tfo to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %se_tpg_tfo, align 4
  %tpg_get_wwn = getelementptr inbounds %struct.target_core_fabric_ops, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %tpg_get_wwn to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tpg_get_wwn, align 4
  %call12 = tail call ptr %11(ptr noundef %1) #9
  %unit_serial = getelementptr inbounds %struct.se_device, ptr %7, i32 0, i32 36, i32 3
  %12 = ptrtoint ptr %unit_serial to i32
  call void @__asan_load1_noabort(i32 %12)
  %char0 = load i8, ptr %unit_serial, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %tobool14.not = icmp eq i8 %char0, 0
  %t10_wwn = getelementptr inbounds %struct.se_device, ptr %7, i32 0, i32 36
  %cond = select i1 %tobool14.not, ptr %t10_wwn, ptr %unit_serial
  %call18 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.64, ptr noundef %call12, ptr noundef %cond)
  br label %if.end19

if.end19:                                         ; preds = %if.then11, %do.end8.if.end19_crit_edge
  %ret.0 = phi i32 [ %call18, %if.then11 ], [ -19, %do.end8.if.end19_crit_edge ]
  %call.i26 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i26, label %if.end19.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i29

if.end19.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i29:                                ; preds = %if.end19
  %call1.i27 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i27)
  %tobool.not.i28 = icmp eq i32 %call1.i27, 0
  br i1 %tobool.not.i28, label %land.lhs.true.i29.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i31

land.lhs.true.i29.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i29
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i31:                               ; preds = %land.lhs.true.i29
  %.b4.i30 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i30, label %land.lhs.true2.i31.rcu_read_unlock.exit_crit_edge, label %if.then.i32

land.lhs.true2.i31.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i31
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i32:                                      ; preds = %land.lhs.true2.i31
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i32, %land.lhs.true2.i31.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i29.rcu_read_unlock.exit_crit_edge, %if.end19.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !334
  %13 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i33 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i33 to ptr
  %preempt_count.i.i.i.i34 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i34, align 4
  %sub.i.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i34, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_transport_proto_id_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lun_tpg = getelementptr i8, ptr %item, i32 -336
  %0 = ptrtoint ptr %lun_tpg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lun_tpg, align 8
  %2 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !333
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 696, ptr noundef nonnull @.str.49) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %lun_se_dev = getelementptr i8, ptr %item, i32 -552
  %6 = ptrtoint ptr %lun_se_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %lun_se_dev, align 8
  %call2 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b15 = load i1, ptr @target_stat_transport_proto_id_show.__warned, align 1
  br i1 %.b15, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @target_stat_transport_proto_id_show.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.46, i32 noundef 791, ptr noundef nonnull @.str.47) #9
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %7, null
  br i1 %tobool10.not, label %do.end8.if.end13_crit_edge, label %if.then11

do.end8.if.end13_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then11:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  %call12 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.9, i32 noundef %9)
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %do.end8.if.end13_crit_edge
  %ret.0 = phi i32 [ %call12, %if.then11 ], [ -19, %do.end8.if.end13_crit_edge ]
  %call.i16 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i16, label %if.end13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i19

if.end13.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i19:                                ; preds = %if.end13
  %call1.i17 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17)
  %tobool.not.i18 = icmp eq i32 %call1.i17, 0
  br i1 %tobool.not.i18, label %land.lhs.true.i19.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i21

land.lhs.true.i19.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i19
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i21:                               ; preds = %land.lhs.true.i19
  %.b4.i20 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i20, label %land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge, label %if.then.i22

land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i22:                                      ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i22, %land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i19.rcu_read_unlock.exit_crit_edge, %if.end13.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !334
  %10 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i23 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i23 to ptr
  %preempt_count.i.i.i.i24 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i24, align 4
  %sub.i.i.i = add i32 %13, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i24, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_auth_inst_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3.i = getelementptr i8, ptr %item, i32 -176
  %se_lun_nacl = getelementptr i8, ptr %item, i32 -168
  %0 = ptrtoint ptr %se_lun_nacl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_lun_nacl, align 8
  %2 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !333
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 696, ptr noundef nonnull @.str.49) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %6 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %add.ptr3.i, align 8
  %call1 = tail call ptr @target_nacl_find_deve(ptr noundef %1, i64 noundef %7) #9
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %rcu_read_lock.exit
  %call.i11 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i11, label %if.then.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i14

if.then.rcu_read_unlock.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i14:                                ; preds = %if.then
  %call1.i12 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12)
  %tobool.not.i13 = icmp eq i32 %call1.i12, 0
  br i1 %tobool.not.i13, label %land.lhs.true.i14.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i16

land.lhs.true.i14.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i14
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i16:                               ; preds = %land.lhs.true.i14
  %.b4.i15 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i15, label %land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge, label %if.then.i17

land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i16
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i17:                                      ; preds = %land.lhs.true2.i16
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i17, %land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i14.rcu_read_unlock.exit_crit_edge, %if.then.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !334
  br label %cleanup

if.end:                                           ; preds = %rcu_read_lock.exit
  %se_tpg = getelementptr inbounds %struct.se_node_acl, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %se_tpg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %se_tpg, align 4
  %se_tpg_tfo = getelementptr inbounds %struct.se_portal_group, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %se_tpg_tfo to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %se_tpg_tfo, align 4
  %tpg_get_inst_index = getelementptr inbounds %struct.target_core_fabric_ops, ptr %11, i32 0, i32 14
  %12 = ptrtoint ptr %tpg_get_inst_index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tpg_get_inst_index, align 4
  %call2 = tail call i32 %13(ptr noundef %9) #9
  %call3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.9, i32 noundef %call2)
  %call.i20 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i20, label %if.end.rcu_read_unlock.exit30_crit_edge, label %land.lhs.true.i23

if.end.rcu_read_unlock.exit30_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit30

land.lhs.true.i23:                                ; preds = %if.end
  %call1.i21 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i21)
  %tobool.not.i22 = icmp eq i32 %call1.i21, 0
  br i1 %tobool.not.i22, label %land.lhs.true.i23.rcu_read_unlock.exit30_crit_edge, label %land.lhs.true2.i25

land.lhs.true.i23.rcu_read_unlock.exit30_crit_edge: ; preds = %land.lhs.true.i23
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit30

land.lhs.true2.i25:                               ; preds = %land.lhs.true.i23
  %.b4.i24 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i24, label %land.lhs.true2.i25.rcu_read_unlock.exit30_crit_edge, label %if.then.i26

land.lhs.true2.i25.rcu_read_unlock.exit30_crit_edge: ; preds = %land.lhs.true2.i25
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit30

if.then.i26:                                      ; preds = %land.lhs.true2.i25
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #9
  br label %rcu_read_unlock.exit30

rcu_read_unlock.exit30:                           ; preds = %if.then.i26, %land.lhs.true2.i25.rcu_read_unlock.exit30_crit_edge, %land.lhs.true.i23.rcu_read_unlock.exit30_crit_edge, %if.end.rcu_read_unlock.exit30_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !334
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit30, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ %call3, %rcu_read_unlock.exit30 ], [ -19, %rcu_read_unlock.exit ]
  %14 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i27 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i27 to ptr
  %preempt_count.i.i.i.i28 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i28, align 4
  %sub.i.i.i29 = add i32 %17, -1
  store volatile i32 %sub.i.i.i29, ptr %preempt_count.i.i.i.i28, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @target_nacl_find_deve(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_auth_dev_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3.i = getelementptr i8, ptr %item, i32 -176
  %se_lun_nacl = getelementptr i8, ptr %item, i32 -168
  %0 = ptrtoint ptr %se_lun_nacl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_lun_nacl, align 8
  %2 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !333
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 696, ptr noundef nonnull @.str.49) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %6 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %add.ptr3.i, align 8
  %call1 = tail call ptr @target_nacl_find_deve(ptr noundef %1, i64 noundef %7) #9
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %rcu_read_lock.exit
  %call.i22 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i22, label %if.then.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i25

if.then.rcu_read_unlock.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i25:                                ; preds = %if.then
  %call1.i23 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i23)
  %tobool.not.i24 = icmp eq i32 %call1.i23, 0
  br i1 %tobool.not.i24, label %land.lhs.true.i25.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i27

land.lhs.true.i25.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i25
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i27:                               ; preds = %land.lhs.true.i25
  %.b4.i26 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i26, label %land.lhs.true2.i27.rcu_read_unlock.exit_crit_edge, label %if.then.i28

land.lhs.true2.i27.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i27
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i28:                                      ; preds = %land.lhs.true2.i27
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i28, %land.lhs.true2.i27.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i25.rcu_read_unlock.exit_crit_edge, %if.then.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !334
  br label %cleanup

if.end:                                           ; preds = %rcu_read_lock.exit
  %se_lun = getelementptr inbounds %struct.se_dev_entry, ptr %call1, i32 0, i32 12
  %8 = ptrtoint ptr %se_lun to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %se_lun, align 8
  %call3 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true, label %if.end.do.end12_crit_edge

if.end.do.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12

land.lhs.true:                                    ; preds = %if.end
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end12_crit_edge, label %land.lhs.true7

land.lhs.true.do.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b21 = load i1, ptr @target_stat_auth_dev_show.__warned, align 1
  br i1 %.b21, label %land.lhs.true7.do.end12_crit_edge, label %if.then9

land.lhs.true7.do.end12_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12

if.then9:                                         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @target_stat_auth_dev_show.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.46, i32 noundef 889, ptr noundef nonnull @.str.47) #9
  br label %do.end12

do.end12:                                         ; preds = %if.then9, %land.lhs.true7.do.end12_crit_edge, %land.lhs.true.do.end12_crit_edge, %if.end.do.end12_crit_edge
  %lun_index = getelementptr inbounds %struct.se_lun, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %lun_index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lun_index, align 4
  %call14 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.9, i32 noundef %11)
  %call.i31 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i31, label %do.end12.rcu_read_unlock.exit41_crit_edge, label %land.lhs.true.i34

do.end12.rcu_read_unlock.exit41_crit_edge:        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit41

land.lhs.true.i34:                                ; preds = %do.end12
  %call1.i32 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i32)
  %tobool.not.i33 = icmp eq i32 %call1.i32, 0
  br i1 %tobool.not.i33, label %land.lhs.true.i34.rcu_read_unlock.exit41_crit_edge, label %land.lhs.true2.i36

land.lhs.true.i34.rcu_read_unlock.exit41_crit_edge: ; preds = %land.lhs.true.i34
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit41

land.lhs.true2.i36:                               ; preds = %land.lhs.true.i34
  %.b4.i35 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i35, label %land.lhs.true2.i36.rcu_read_unlock.exit41_crit_edge, label %if.then.i37

land.lhs.true2.i36.rcu_read_unlock.exit41_crit_edge: ; preds = %land.lhs.true2.i36
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit41

if.then.i37:                                      ; preds = %land.lhs.true2.i36
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #9
  br label %rcu_read_unlock.exit41

rcu_read_unlock.exit41:                           ; preds = %if.then.i37, %land.lhs.true2.i36.rcu_read_unlock.exit41_crit_edge, %land.lhs.true.i34.rcu_read_unlock.exit41_crit_edge, %do.end12.rcu_read_unlock.exit41_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !334
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit41, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ %call14, %rcu_read_unlock.exit41 ], [ -19, %rcu_read_unlock.exit ]
  %12 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i38 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i38 to ptr
  %preempt_count.i.i.i.i39 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i39 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i39, align 4
  %sub.i.i.i40 = add i32 %15, -1
  store volatile i32 %sub.i.i.i40, ptr %preempt_count.i.i.i.i39, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_auth_port_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3.i = getelementptr i8, ptr %item, i32 -176
  %se_lun_nacl = getelementptr i8, ptr %item, i32 -168
  %0 = ptrtoint ptr %se_lun_nacl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_lun_nacl, align 8
  %2 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !333
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 696, ptr noundef nonnull @.str.49) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %6 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %add.ptr3.i, align 8
  %call1 = tail call ptr @target_nacl_find_deve(ptr noundef %1, i64 noundef %7) #9
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %rcu_read_lock.exit
  %call.i11 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i11, label %if.then.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i14

if.then.rcu_read_unlock.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i14:                                ; preds = %if.then
  %call1.i12 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12)
  %tobool.not.i13 = icmp eq i32 %call1.i12, 0
  br i1 %tobool.not.i13, label %land.lhs.true.i14.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i16

land.lhs.true.i14.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i14
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i16:                               ; preds = %land.lhs.true.i14
  %.b4.i15 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i15, label %land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge, label %if.then.i17

land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i16
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i17:                                      ; preds = %land.lhs.true2.i16
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i17, %land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i14.rcu_read_unlock.exit_crit_edge, %if.then.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !334
  br label %cleanup

if.end:                                           ; preds = %rcu_read_lock.exit
  %se_tpg = getelementptr inbounds %struct.se_node_acl, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %se_tpg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %se_tpg, align 4
  %se_tpg_tfo = getelementptr inbounds %struct.se_portal_group, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %se_tpg_tfo to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %se_tpg_tfo, align 4
  %tpg_get_tag = getelementptr inbounds %struct.target_core_fabric_ops, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %tpg_get_tag to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tpg_get_tag, align 4
  %call2 = tail call zeroext i16 %13(ptr noundef %9) #9
  %conv = zext i16 %call2 to i32
  %call3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.9, i32 noundef %conv)
  %call.i20 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i20, label %if.end.rcu_read_unlock.exit30_crit_edge, label %land.lhs.true.i23

if.end.rcu_read_unlock.exit30_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit30

land.lhs.true.i23:                                ; preds = %if.end
  %call1.i21 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i21)
  %tobool.not.i22 = icmp eq i32 %call1.i21, 0
  br i1 %tobool.not.i22, label %land.lhs.true.i23.rcu_read_unlock.exit30_crit_edge, label %land.lhs.true2.i25

land.lhs.true.i23.rcu_read_unlock.exit30_crit_edge: ; preds = %land.lhs.true.i23
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit30

land.lhs.true2.i25:                               ; preds = %land.lhs.true.i23
  %.b4.i24 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i24, label %land.lhs.true2.i25.rcu_read_unlock.exit30_crit_edge, label %if.then.i26

land.lhs.true2.i25.rcu_read_unlock.exit30_crit_edge: ; preds = %land.lhs.true2.i25
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit30

if.then.i26:                                      ; preds = %land.lhs.true2.i25
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #9
  br label %rcu_read_unlock.exit30

rcu_read_unlock.exit30:                           ; preds = %if.then.i26, %land.lhs.true2.i25.rcu_read_unlock.exit30_crit_edge, %land.lhs.true.i23.rcu_read_unlock.exit30_crit_edge, %if.end.rcu_read_unlock.exit30_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !334
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit30, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ %call3, %rcu_read_unlock.exit30 ], [ -19, %rcu_read_unlock.exit ]
  %14 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i27 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i27 to ptr
  %preempt_count.i.i.i.i28 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i28, align 4
  %sub.i.i.i29 = add i32 %17, -1
  store volatile i32 %sub.i.i.i29, ptr %preempt_count.i.i.i.i28, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_auth_indx_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3.i = getelementptr i8, ptr %item, i32 -176
  %se_lun_nacl = getelementptr i8, ptr %item, i32 -168
  %0 = ptrtoint ptr %se_lun_nacl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_lun_nacl, align 8
  %2 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !333
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 696, ptr noundef nonnull @.str.49) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %6 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %add.ptr3.i, align 8
  %call1 = tail call ptr @target_nacl_find_deve(ptr noundef %1, i64 noundef %7) #9
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %rcu_read_lock.exit
  %call.i8 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i8, label %if.then.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i11

if.then.rcu_read_unlock.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i11:                                ; preds = %if.then
  %call1.i9 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i9)
  %tobool.not.i10 = icmp eq i32 %call1.i9, 0
  br i1 %tobool.not.i10, label %land.lhs.true.i11.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i13

land.lhs.true.i11.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i11
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i13:                               ; preds = %land.lhs.true.i11
  %.b4.i12 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i12, label %land.lhs.true2.i13.rcu_read_unlock.exit_crit_edge, label %if.then.i14

land.lhs.true2.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i13
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i14:                                      ; preds = %land.lhs.true2.i13
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i14, %land.lhs.true2.i13.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i11.rcu_read_unlock.exit_crit_edge, %if.then.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !334
  br label %cleanup

if.end:                                           ; preds = %rcu_read_lock.exit
  %acl_index = getelementptr inbounds %struct.se_node_acl, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %acl_index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %acl_index, align 4
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.9, i32 noundef %9)
  %call.i17 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i17, label %if.end.rcu_read_unlock.exit27_crit_edge, label %land.lhs.true.i20

if.end.rcu_read_unlock.exit27_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit27

land.lhs.true.i20:                                ; preds = %if.end
  %call1.i18 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i18)
  %tobool.not.i19 = icmp eq i32 %call1.i18, 0
  br i1 %tobool.not.i19, label %land.lhs.true.i20.rcu_read_unlock.exit27_crit_edge, label %land.lhs.true2.i22

land.lhs.true.i20.rcu_read_unlock.exit27_crit_edge: ; preds = %land.lhs.true.i20
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit27

land.lhs.true2.i22:                               ; preds = %land.lhs.true.i20
  %.b4.i21 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i21, label %land.lhs.true2.i22.rcu_read_unlock.exit27_crit_edge, label %if.then.i23

land.lhs.true2.i22.rcu_read_unlock.exit27_crit_edge: ; preds = %land.lhs.true2.i22
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit27

if.then.i23:                                      ; preds = %land.lhs.true2.i22
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #9
  br label %rcu_read_unlock.exit27

rcu_read_unlock.exit27:                           ; preds = %if.then.i23, %land.lhs.true2.i22.rcu_read_unlock.exit27_crit_edge, %land.lhs.true.i20.rcu_read_unlock.exit27_crit_edge, %if.end.rcu_read_unlock.exit27_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !334
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit27, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ %call2, %rcu_read_unlock.exit27 ], [ -19, %rcu_read_unlock.exit ]
  %10 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i24 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i24 to ptr
  %preempt_count.i.i.i.i25 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i25 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i25, align 4
  %sub.i.i.i26 = add i32 %13, -1
  store volatile i32 %sub.i.i.i26, ptr %preempt_count.i.i.i.i25, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_auth_dev_or_port_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3.i = getelementptr i8, ptr %item, i32 -176
  %se_lun_nacl = getelementptr i8, ptr %item, i32 -168
  %0 = ptrtoint ptr %se_lun_nacl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_lun_nacl, align 8
  %2 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !333
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 696, ptr noundef nonnull @.str.49) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %6 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %add.ptr3.i, align 8
  %call1 = tail call ptr @target_nacl_find_deve(ptr noundef %1, i64 noundef %7) #9
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %rcu_read_lock.exit
  %call.i7 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i7, label %if.then.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i10

if.then.rcu_read_unlock.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i10:                                ; preds = %if.then
  %call1.i8 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i8)
  %tobool.not.i9 = icmp eq i32 %call1.i8, 0
  br i1 %tobool.not.i9, label %land.lhs.true.i10.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i12

land.lhs.true.i10.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i10
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i12:                               ; preds = %land.lhs.true.i10
  %.b4.i11 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i11, label %land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge, label %if.then.i13

land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i12
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i13:                                      ; preds = %land.lhs.true2.i12
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i13, %land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i10.rcu_read_unlock.exit_crit_edge, %if.then.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !334
  br label %cleanup

if.end:                                           ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.9, i32 noundef 1)
  %call.i16 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i16, label %if.end.rcu_read_unlock.exit26_crit_edge, label %land.lhs.true.i19

if.end.rcu_read_unlock.exit26_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit26

land.lhs.true.i19:                                ; preds = %if.end
  %call1.i17 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17)
  %tobool.not.i18 = icmp eq i32 %call1.i17, 0
  br i1 %tobool.not.i18, label %land.lhs.true.i19.rcu_read_unlock.exit26_crit_edge, label %land.lhs.true2.i21

land.lhs.true.i19.rcu_read_unlock.exit26_crit_edge: ; preds = %land.lhs.true.i19
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit26

land.lhs.true2.i21:                               ; preds = %land.lhs.true.i19
  %.b4.i20 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i20, label %land.lhs.true2.i21.rcu_read_unlock.exit26_crit_edge, label %if.then.i22

land.lhs.true2.i21.rcu_read_unlock.exit26_crit_edge: ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit26

if.then.i22:                                      ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #9
  br label %rcu_read_unlock.exit26

rcu_read_unlock.exit26:                           ; preds = %if.then.i22, %land.lhs.true2.i21.rcu_read_unlock.exit26_crit_edge, %land.lhs.true.i19.rcu_read_unlock.exit26_crit_edge, %if.end.rcu_read_unlock.exit26_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !334
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit26, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ %call2, %rcu_read_unlock.exit26 ], [ -19, %rcu_read_unlock.exit ]
  %8 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i23 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i23 to ptr
  %preempt_count.i.i.i.i24 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i24, align 4
  %sub.i.i.i25 = add i32 %11, -1
  store volatile i32 %sub.i.i.i25, ptr %preempt_count.i.i.i.i24, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_auth_intr_name_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3.i = getelementptr i8, ptr %item, i32 -176
  %se_lun_nacl = getelementptr i8, ptr %item, i32 -168
  %0 = ptrtoint ptr %se_lun_nacl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_lun_nacl, align 8
  %2 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !333
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 696, ptr noundef nonnull @.str.49) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %6 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %add.ptr3.i, align 8
  %call1 = tail call ptr @target_nacl_find_deve(ptr noundef %1, i64 noundef %7) #9
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %rcu_read_lock.exit
  %call.i8 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i8, label %if.then.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i11

if.then.rcu_read_unlock.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i11:                                ; preds = %if.then
  %call1.i9 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i9)
  %tobool.not.i10 = icmp eq i32 %call1.i9, 0
  br i1 %tobool.not.i10, label %land.lhs.true.i11.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i13

land.lhs.true.i11.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i11
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i13:                               ; preds = %land.lhs.true.i11
  %.b4.i12 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i12, label %land.lhs.true2.i13.rcu_read_unlock.exit_crit_edge, label %if.then.i14

land.lhs.true2.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i13
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i14:                                      ; preds = %land.lhs.true2.i13
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i14, %land.lhs.true2.i13.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i11.rcu_read_unlock.exit_crit_edge, %if.then.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !334
  br label %cleanup

if.end:                                           ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.27, ptr noundef %1)
  %call.i17 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i17, label %if.end.rcu_read_unlock.exit27_crit_edge, label %land.lhs.true.i20

if.end.rcu_read_unlock.exit27_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit27

land.lhs.true.i20:                                ; preds = %if.end
  %call1.i18 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i18)
  %tobool.not.i19 = icmp eq i32 %call1.i18, 0
  br i1 %tobool.not.i19, label %land.lhs.true.i20.rcu_read_unlock.exit27_crit_edge, label %land.lhs.true2.i22

land.lhs.true.i20.rcu_read_unlock.exit27_crit_edge: ; preds = %land.lhs.true.i20
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit27

land.lhs.true2.i22:                               ; preds = %land.lhs.true.i20
  %.b4.i21 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i21, label %land.lhs.true2.i22.rcu_read_unlock.exit27_crit_edge, label %if.then.i23

land.lhs.true2.i22.rcu_read_unlock.exit27_crit_edge: ; preds = %land.lhs.true2.i22
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit27

if.then.i23:                                      ; preds = %land.lhs.true2.i22
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #9
  br label %rcu_read_unlock.exit27

rcu_read_unlock.exit27:                           ; preds = %if.then.i23, %land.lhs.true2.i22.rcu_read_unlock.exit27_crit_edge, %land.lhs.true.i20.rcu_read_unlock.exit27_crit_edge, %if.end.rcu_read_unlock.exit27_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !334
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit27, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ %call2, %rcu_read_unlock.exit27 ], [ -19, %rcu_read_unlock.exit ]
  %8 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i24 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i24 to ptr
  %preempt_count.i.i.i.i25 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i25 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i25, align 4
  %sub.i.i.i26 = add i32 %11, -1
  store volatile i32 %sub.i.i.i26, ptr %preempt_count.i.i.i.i25, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_auth_map_indx_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3.i = getelementptr i8, ptr %item, i32 -176
  %se_lun_nacl = getelementptr i8, ptr %item, i32 -168
  %0 = ptrtoint ptr %se_lun_nacl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_lun_nacl, align 8
  %2 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !333
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 696, ptr noundef nonnull @.str.49) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %6 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %add.ptr3.i, align 8
  %call1 = tail call ptr @target_nacl_find_deve(ptr noundef %1, i64 noundef %7) #9
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %rcu_read_lock.exit
  %call.i7 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i7, label %if.then.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i10

if.then.rcu_read_unlock.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i10:                                ; preds = %if.then
  %call1.i8 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i8)
  %tobool.not.i9 = icmp eq i32 %call1.i8, 0
  br i1 %tobool.not.i9, label %land.lhs.true.i10.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i12

land.lhs.true.i10.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i10
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i12:                               ; preds = %land.lhs.true.i10
  %.b4.i11 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i11, label %land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge, label %if.then.i13

land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i12
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i13:                                      ; preds = %land.lhs.true2.i12
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i13, %land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i10.rcu_read_unlock.exit_crit_edge, %if.then.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !334
  br label %cleanup

if.end:                                           ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.9, i32 noundef 0)
  %call.i16 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i16, label %if.end.rcu_read_unlock.exit26_crit_edge, label %land.lhs.true.i19

if.end.rcu_read_unlock.exit26_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit26

land.lhs.true.i19:                                ; preds = %if.end
  %call1.i17 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17)
  %tobool.not.i18 = icmp eq i32 %call1.i17, 0
  br i1 %tobool.not.i18, label %land.lhs.true.i19.rcu_read_unlock.exit26_crit_edge, label %land.lhs.true2.i21

land.lhs.true.i19.rcu_read_unlock.exit26_crit_edge: ; preds = %land.lhs.true.i19
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit26

land.lhs.true2.i21:                               ; preds = %land.lhs.true.i19
  %.b4.i20 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i20, label %land.lhs.true2.i21.rcu_read_unlock.exit26_crit_edge, label %if.then.i22

land.lhs.true2.i21.rcu_read_unlock.exit26_crit_edge: ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit26

if.then.i22:                                      ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #9
  br label %rcu_read_unlock.exit26

rcu_read_unlock.exit26:                           ; preds = %if.then.i22, %land.lhs.true2.i21.rcu_read_unlock.exit26_crit_edge, %land.lhs.true.i19.rcu_read_unlock.exit26_crit_edge, %if.end.rcu_read_unlock.exit26_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !334
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit26, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ %call2, %rcu_read_unlock.exit26 ], [ -19, %rcu_read_unlock.exit ]
  %8 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i23 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i23 to ptr
  %preempt_count.i.i.i.i24 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i24, align 4
  %sub.i.i.i25 = add i32 %11, -1
  store volatile i32 %sub.i.i.i25, ptr %preempt_count.i.i.i.i24, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_auth_att_count_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3.i = getelementptr i8, ptr %item, i32 -176
  %se_lun_nacl = getelementptr i8, ptr %item, i32 -168
  %0 = ptrtoint ptr %se_lun_nacl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_lun_nacl, align 8
  %2 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !333
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 696, ptr noundef nonnull @.str.49) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %6 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %add.ptr3.i, align 8
  %call1 = tail call ptr @target_nacl_find_deve(ptr noundef %1, i64 noundef %7) #9
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %rcu_read_lock.exit
  %call.i8 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i8, label %if.then.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i11

if.then.rcu_read_unlock.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i11:                                ; preds = %if.then
  %call1.i9 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i9)
  %tobool.not.i10 = icmp eq i32 %call1.i9, 0
  br i1 %tobool.not.i10, label %land.lhs.true.i11.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i13

land.lhs.true.i11.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i11
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i13:                               ; preds = %land.lhs.true.i11
  %.b4.i12 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i12, label %land.lhs.true2.i13.rcu_read_unlock.exit_crit_edge, label %if.then.i14

land.lhs.true2.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i13
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i14:                                      ; preds = %land.lhs.true2.i13
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i14, %land.lhs.true2.i13.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i11.rcu_read_unlock.exit_crit_edge, %if.then.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !334
  br label %cleanup

if.end:                                           ; preds = %rcu_read_lock.exit
  %attach_count = getelementptr inbounds %struct.se_dev_entry, ptr %call1, i32 0, i32 4
  %8 = ptrtoint ptr %attach_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %attach_count, align 4
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.9, i32 noundef %9)
  %call.i17 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i17, label %if.end.rcu_read_unlock.exit27_crit_edge, label %land.lhs.true.i20

if.end.rcu_read_unlock.exit27_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit27

land.lhs.true.i20:                                ; preds = %if.end
  %call1.i18 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i18)
  %tobool.not.i19 = icmp eq i32 %call1.i18, 0
  br i1 %tobool.not.i19, label %land.lhs.true.i20.rcu_read_unlock.exit27_crit_edge, label %land.lhs.true2.i22

land.lhs.true.i20.rcu_read_unlock.exit27_crit_edge: ; preds = %land.lhs.true.i20
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit27

land.lhs.true2.i22:                               ; preds = %land.lhs.true.i20
  %.b4.i21 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i21, label %land.lhs.true2.i22.rcu_read_unlock.exit27_crit_edge, label %if.then.i23

land.lhs.true2.i22.rcu_read_unlock.exit27_crit_edge: ; preds = %land.lhs.true2.i22
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit27

if.then.i23:                                      ; preds = %land.lhs.true2.i22
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #9
  br label %rcu_read_unlock.exit27

rcu_read_unlock.exit27:                           ; preds = %if.then.i23, %land.lhs.true2.i22.rcu_read_unlock.exit27_crit_edge, %land.lhs.true.i20.rcu_read_unlock.exit27_crit_edge, %if.end.rcu_read_unlock.exit27_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !334
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit27, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ %call2, %rcu_read_unlock.exit27 ], [ -19, %rcu_read_unlock.exit ]
  %10 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i24 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i24 to ptr
  %preempt_count.i.i.i.i25 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i25 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i25, align 4
  %sub.i.i.i26 = add i32 %13, -1
  store volatile i32 %sub.i.i.i26, ptr %preempt_count.i.i.i.i25, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_auth_num_cmds_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3.i = getelementptr i8, ptr %item, i32 -176
  %se_lun_nacl = getelementptr i8, ptr %item, i32 -168
  %0 = ptrtoint ptr %se_lun_nacl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_lun_nacl, align 8
  %2 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !333
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 696, ptr noundef nonnull @.str.49) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %6 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %add.ptr3.i, align 8
  %call1 = tail call ptr @target_nacl_find_deve(ptr noundef %1, i64 noundef %7) #9
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %rcu_read_lock.exit
  %call.i9 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i9, label %if.then.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i12

if.then.rcu_read_unlock.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i12:                                ; preds = %if.then
  %call1.i10 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i10)
  %tobool.not.i11 = icmp eq i32 %call1.i10, 0
  br i1 %tobool.not.i11, label %land.lhs.true.i12.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i14

land.lhs.true.i12.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i12
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i14:                               ; preds = %land.lhs.true.i12
  %.b4.i13 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i13, label %land.lhs.true2.i14.rcu_read_unlock.exit_crit_edge, label %if.then.i15

land.lhs.true2.i14.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i14
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i15:                                      ; preds = %land.lhs.true2.i14
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i15, %land.lhs.true2.i14.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i12.rcu_read_unlock.exit_crit_edge, %if.then.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !334
  br label %cleanup

if.end:                                           ; preds = %rcu_read_lock.exit
  %total_cmds = getelementptr inbounds %struct.se_dev_entry, ptr %call1, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %total_cmds, i32 noundef 4) #9
  %8 = ptrtoint ptr %total_cmds to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %total_cmds, align 4
  %call3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.20, i32 noundef %9)
  %call.i18 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i18, label %if.end.rcu_read_unlock.exit28_crit_edge, label %land.lhs.true.i21

if.end.rcu_read_unlock.exit28_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit28

land.lhs.true.i21:                                ; preds = %if.end
  %call1.i19 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i19)
  %tobool.not.i20 = icmp eq i32 %call1.i19, 0
  br i1 %tobool.not.i20, label %land.lhs.true.i21.rcu_read_unlock.exit28_crit_edge, label %land.lhs.true2.i23

land.lhs.true.i21.rcu_read_unlock.exit28_crit_edge: ; preds = %land.lhs.true.i21
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit28

land.lhs.true2.i23:                               ; preds = %land.lhs.true.i21
  %.b4.i22 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i22, label %land.lhs.true2.i23.rcu_read_unlock.exit28_crit_edge, label %if.then.i24

land.lhs.true2.i23.rcu_read_unlock.exit28_crit_edge: ; preds = %land.lhs.true2.i23
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit28

if.then.i24:                                      ; preds = %land.lhs.true2.i23
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #9
  br label %rcu_read_unlock.exit28

rcu_read_unlock.exit28:                           ; preds = %if.then.i24, %land.lhs.true2.i23.rcu_read_unlock.exit28_crit_edge, %land.lhs.true.i21.rcu_read_unlock.exit28_crit_edge, %if.end.rcu_read_unlock.exit28_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !334
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit28, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ %call3, %rcu_read_unlock.exit28 ], [ -19, %rcu_read_unlock.exit ]
  %10 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i25 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i25 to ptr
  %preempt_count.i.i.i.i26 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i26, align 4
  %sub.i.i.i27 = add i32 %13, -1
  store volatile i32 %sub.i.i.i27, ptr %preempt_count.i.i.i.i26, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_auth_read_mbytes_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3.i = getelementptr i8, ptr %item, i32 -176
  %se_lun_nacl = getelementptr i8, ptr %item, i32 -168
  %0 = ptrtoint ptr %se_lun_nacl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_lun_nacl, align 8
  %2 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !333
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 696, ptr noundef nonnull @.str.49) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %6 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %add.ptr3.i, align 8
  %call1 = tail call ptr @target_nacl_find_deve(ptr noundef %1, i64 noundef %7) #9
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %rcu_read_lock.exit
  %call.i9 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i9, label %if.then.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i12

if.then.rcu_read_unlock.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i12:                                ; preds = %if.then
  %call1.i10 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i10)
  %tobool.not.i11 = icmp eq i32 %call1.i10, 0
  br i1 %tobool.not.i11, label %land.lhs.true.i12.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i14

land.lhs.true.i12.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i12
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i14:                               ; preds = %land.lhs.true.i12
  %.b4.i13 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i13, label %land.lhs.true2.i14.rcu_read_unlock.exit_crit_edge, label %if.then.i15

land.lhs.true2.i14.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i14
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i15:                                      ; preds = %land.lhs.true2.i14
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i15, %land.lhs.true2.i14.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i12.rcu_read_unlock.exit_crit_edge, %if.then.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !334
  br label %cleanup

if.end:                                           ; preds = %rcu_read_lock.exit
  %read_bytes = getelementptr inbounds %struct.se_dev_entry, ptr %call1, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %read_bytes, i32 noundef 4) #9
  %8 = ptrtoint ptr %read_bytes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %read_bytes, align 4
  %shr = ashr i32 %9, 20
  %call3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.9, i32 noundef %shr)
  %call.i18 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i18, label %if.end.rcu_read_unlock.exit28_crit_edge, label %land.lhs.true.i21

if.end.rcu_read_unlock.exit28_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit28

land.lhs.true.i21:                                ; preds = %if.end
  %call1.i19 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i19)
  %tobool.not.i20 = icmp eq i32 %call1.i19, 0
  br i1 %tobool.not.i20, label %land.lhs.true.i21.rcu_read_unlock.exit28_crit_edge, label %land.lhs.true2.i23

land.lhs.true.i21.rcu_read_unlock.exit28_crit_edge: ; preds = %land.lhs.true.i21
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit28

land.lhs.true2.i23:                               ; preds = %land.lhs.true.i21
  %.b4.i22 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i22, label %land.lhs.true2.i23.rcu_read_unlock.exit28_crit_edge, label %if.then.i24

land.lhs.true2.i23.rcu_read_unlock.exit28_crit_edge: ; preds = %land.lhs.true2.i23
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit28

if.then.i24:                                      ; preds = %land.lhs.true2.i23
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #9
  br label %rcu_read_unlock.exit28

rcu_read_unlock.exit28:                           ; preds = %if.then.i24, %land.lhs.true2.i23.rcu_read_unlock.exit28_crit_edge, %land.lhs.true.i21.rcu_read_unlock.exit28_crit_edge, %if.end.rcu_read_unlock.exit28_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !334
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit28, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ %call3, %rcu_read_unlock.exit28 ], [ -19, %rcu_read_unlock.exit ]
  %10 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i25 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i25 to ptr
  %preempt_count.i.i.i.i26 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i26, align 4
  %sub.i.i.i27 = add i32 %13, -1
  store volatile i32 %sub.i.i.i27, ptr %preempt_count.i.i.i.i26, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_auth_write_mbytes_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3.i = getelementptr i8, ptr %item, i32 -176
  %se_lun_nacl = getelementptr i8, ptr %item, i32 -168
  %0 = ptrtoint ptr %se_lun_nacl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_lun_nacl, align 8
  %2 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !333
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 696, ptr noundef nonnull @.str.49) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %6 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %add.ptr3.i, align 8
  %call1 = tail call ptr @target_nacl_find_deve(ptr noundef %1, i64 noundef %7) #9
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %rcu_read_lock.exit
  %call.i9 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i9, label %if.then.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i12

if.then.rcu_read_unlock.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i12:                                ; preds = %if.then
  %call1.i10 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i10)
  %tobool.not.i11 = icmp eq i32 %call1.i10, 0
  br i1 %tobool.not.i11, label %land.lhs.true.i12.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i14

land.lhs.true.i12.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i12
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i14:                               ; preds = %land.lhs.true.i12
  %.b4.i13 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i13, label %land.lhs.true2.i14.rcu_read_unlock.exit_crit_edge, label %if.then.i15

land.lhs.true2.i14.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i14
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i15:                                      ; preds = %land.lhs.true2.i14
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i15, %land.lhs.true2.i14.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i12.rcu_read_unlock.exit_crit_edge, %if.then.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !334
  br label %cleanup

if.end:                                           ; preds = %rcu_read_lock.exit
  %write_bytes = getelementptr inbounds %struct.se_dev_entry, ptr %call1, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %write_bytes, i32 noundef 4) #9
  %8 = ptrtoint ptr %write_bytes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %write_bytes, align 4
  %shr = ashr i32 %9, 20
  %call3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.9, i32 noundef %shr)
  %call.i18 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i18, label %if.end.rcu_read_unlock.exit28_crit_edge, label %land.lhs.true.i21

if.end.rcu_read_unlock.exit28_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit28

land.lhs.true.i21:                                ; preds = %if.end
  %call1.i19 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i19)
  %tobool.not.i20 = icmp eq i32 %call1.i19, 0
  br i1 %tobool.not.i20, label %land.lhs.true.i21.rcu_read_unlock.exit28_crit_edge, label %land.lhs.true2.i23

land.lhs.true.i21.rcu_read_unlock.exit28_crit_edge: ; preds = %land.lhs.true.i21
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit28

land.lhs.true2.i23:                               ; preds = %land.lhs.true.i21
  %.b4.i22 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i22, label %land.lhs.true2.i23.rcu_read_unlock.exit28_crit_edge, label %if.then.i24

land.lhs.true2.i23.rcu_read_unlock.exit28_crit_edge: ; preds = %land.lhs.true2.i23
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit28

if.then.i24:                                      ; preds = %land.lhs.true2.i23
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #9
  br label %rcu_read_unlock.exit28

rcu_read_unlock.exit28:                           ; preds = %if.then.i24, %land.lhs.true2.i23.rcu_read_unlock.exit28_crit_edge, %land.lhs.true.i21.rcu_read_unlock.exit28_crit_edge, %if.end.rcu_read_unlock.exit28_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !334
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit28, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ %call3, %rcu_read_unlock.exit28 ], [ -19, %rcu_read_unlock.exit ]
  %10 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i25 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i25 to ptr
  %preempt_count.i.i.i.i26 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i26, align 4
  %sub.i.i.i27 = add i32 %13, -1
  store volatile i32 %sub.i.i.i27, ptr %preempt_count.i.i.i.i26, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_auth_hs_num_cmds_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3.i = getelementptr i8, ptr %item, i32 -176
  %se_lun_nacl = getelementptr i8, ptr %item, i32 -168
  %0 = ptrtoint ptr %se_lun_nacl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_lun_nacl, align 8
  %2 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !333
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 696, ptr noundef nonnull @.str.49) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %6 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %add.ptr3.i, align 8
  %call1 = tail call ptr @target_nacl_find_deve(ptr noundef %1, i64 noundef %7) #9
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %rcu_read_lock.exit
  %call.i7 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i7, label %if.then.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i10

if.then.rcu_read_unlock.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i10:                                ; preds = %if.then
  %call1.i8 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i8)
  %tobool.not.i9 = icmp eq i32 %call1.i8, 0
  br i1 %tobool.not.i9, label %land.lhs.true.i10.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i12

land.lhs.true.i10.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i10
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i12:                               ; preds = %land.lhs.true.i10
  %.b4.i11 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i11, label %land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge, label %if.then.i13

land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i12
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i13:                                      ; preds = %land.lhs.true2.i12
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i13, %land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i10.rcu_read_unlock.exit_crit_edge, %if.then.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !334
  br label %cleanup

if.end:                                           ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.9, i32 noundef 0)
  %call.i16 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i16, label %if.end.rcu_read_unlock.exit26_crit_edge, label %land.lhs.true.i19

if.end.rcu_read_unlock.exit26_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit26

land.lhs.true.i19:                                ; preds = %if.end
  %call1.i17 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17)
  %tobool.not.i18 = icmp eq i32 %call1.i17, 0
  br i1 %tobool.not.i18, label %land.lhs.true.i19.rcu_read_unlock.exit26_crit_edge, label %land.lhs.true2.i21

land.lhs.true.i19.rcu_read_unlock.exit26_crit_edge: ; preds = %land.lhs.true.i19
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit26

land.lhs.true2.i21:                               ; preds = %land.lhs.true.i19
  %.b4.i20 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i20, label %land.lhs.true2.i21.rcu_read_unlock.exit26_crit_edge, label %if.then.i22

land.lhs.true2.i21.rcu_read_unlock.exit26_crit_edge: ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit26

if.then.i22:                                      ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #9
  br label %rcu_read_unlock.exit26

rcu_read_unlock.exit26:                           ; preds = %if.then.i22, %land.lhs.true2.i21.rcu_read_unlock.exit26_crit_edge, %land.lhs.true.i19.rcu_read_unlock.exit26_crit_edge, %if.end.rcu_read_unlock.exit26_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !334
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit26, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ %call2, %rcu_read_unlock.exit26 ], [ -19, %rcu_read_unlock.exit ]
  %8 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i23 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i23 to ptr
  %preempt_count.i.i.i.i24 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i24, align 4
  %sub.i.i.i25 = add i32 %11, -1
  store volatile i32 %sub.i.i.i25, ptr %preempt_count.i.i.i.i24, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_auth_creation_time_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3.i = getelementptr i8, ptr %item, i32 -176
  %se_lun_nacl = getelementptr i8, ptr %item, i32 -168
  %0 = ptrtoint ptr %se_lun_nacl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_lun_nacl, align 8
  %2 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !333
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 696, ptr noundef nonnull @.str.49) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %6 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %add.ptr3.i, align 8
  %call1 = tail call ptr @target_nacl_find_deve(ptr noundef %1, i64 noundef %7) #9
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %rcu_read_lock.exit
  %call.i8 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i8, label %if.then.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i11

if.then.rcu_read_unlock.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i11:                                ; preds = %if.then
  %call1.i9 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i9)
  %tobool.not.i10 = icmp eq i32 %call1.i9, 0
  br i1 %tobool.not.i10, label %land.lhs.true.i11.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i13

land.lhs.true.i11.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i11
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i13:                               ; preds = %land.lhs.true.i11
  %.b4.i12 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i12, label %land.lhs.true2.i13.rcu_read_unlock.exit_crit_edge, label %if.then.i14

land.lhs.true2.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i13
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i14:                                      ; preds = %land.lhs.true2.i13
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i14, %land.lhs.true2.i13.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i11.rcu_read_unlock.exit_crit_edge, %if.then.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !334
  br label %cleanup

if.end:                                           ; preds = %rcu_read_lock.exit
  %creation_time = getelementptr inbounds %struct.se_dev_entry, ptr %call1, i32 0, i32 2
  %8 = ptrtoint ptr %creation_time to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %creation_time, align 8
  %conv = trunc i64 %9 to i32
  %10 = mul i32 %conv, 100
  %mul = add i32 %10, 3000000
  %div = udiv i32 %mul, 100
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.9, i32 noundef %div)
  %call.i17 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i17, label %if.end.rcu_read_unlock.exit27_crit_edge, label %land.lhs.true.i20

if.end.rcu_read_unlock.exit27_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit27

land.lhs.true.i20:                                ; preds = %if.end
  %call1.i18 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i18)
  %tobool.not.i19 = icmp eq i32 %call1.i18, 0
  br i1 %tobool.not.i19, label %land.lhs.true.i20.rcu_read_unlock.exit27_crit_edge, label %land.lhs.true2.i22

land.lhs.true.i20.rcu_read_unlock.exit27_crit_edge: ; preds = %land.lhs.true.i20
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit27

land.lhs.true2.i22:                               ; preds = %land.lhs.true.i20
  %.b4.i21 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i21, label %land.lhs.true2.i22.rcu_read_unlock.exit27_crit_edge, label %if.then.i23

land.lhs.true2.i22.rcu_read_unlock.exit27_crit_edge: ; preds = %land.lhs.true2.i22
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit27

if.then.i23:                                      ; preds = %land.lhs.true2.i22
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #9
  br label %rcu_read_unlock.exit27

rcu_read_unlock.exit27:                           ; preds = %if.then.i23, %land.lhs.true2.i22.rcu_read_unlock.exit27_crit_edge, %land.lhs.true.i20.rcu_read_unlock.exit27_crit_edge, %if.end.rcu_read_unlock.exit27_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !334
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit27, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ %call2, %rcu_read_unlock.exit27 ], [ -19, %rcu_read_unlock.exit ]
  %11 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i24 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i24 to ptr
  %preempt_count.i.i.i.i25 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i25 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i25, align 4
  %sub.i.i.i26 = add i32 %14, -1
  store volatile i32 %sub.i.i.i26, ptr %preempt_count.i.i.i.i25, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_auth_row_status_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3.i = getelementptr i8, ptr %item, i32 -176
  %se_lun_nacl = getelementptr i8, ptr %item, i32 -168
  %0 = ptrtoint ptr %se_lun_nacl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_lun_nacl, align 8
  %2 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !333
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 696, ptr noundef nonnull @.str.49) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %6 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %add.ptr3.i, align 8
  %call1 = tail call ptr @target_nacl_find_deve(ptr noundef %1, i64 noundef %7) #9
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %rcu_read_lock.exit
  %call.i7 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i7, label %if.then.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i10

if.then.rcu_read_unlock.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i10:                                ; preds = %if.then
  %call1.i8 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i8)
  %tobool.not.i9 = icmp eq i32 %call1.i8, 0
  br i1 %tobool.not.i9, label %land.lhs.true.i10.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i12

land.lhs.true.i10.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i10
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i12:                               ; preds = %land.lhs.true.i10
  %.b4.i11 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i11, label %land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge, label %if.then.i13

land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i12
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i13:                                      ; preds = %land.lhs.true2.i12
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i13, %land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i10.rcu_read_unlock.exit_crit_edge, %if.then.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !334
  br label %cleanup

if.end:                                           ; preds = %rcu_read_lock.exit
  %8 = call ptr @memcpy(ptr %page, ptr @.str.72, i32 7)
  %call.i16 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i16, label %if.end.rcu_read_unlock.exit26_crit_edge, label %land.lhs.true.i19

if.end.rcu_read_unlock.exit26_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit26

land.lhs.true.i19:                                ; preds = %if.end
  %call1.i17 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17)
  %tobool.not.i18 = icmp eq i32 %call1.i17, 0
  br i1 %tobool.not.i18, label %land.lhs.true.i19.rcu_read_unlock.exit26_crit_edge, label %land.lhs.true2.i21

land.lhs.true.i19.rcu_read_unlock.exit26_crit_edge: ; preds = %land.lhs.true.i19
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit26

land.lhs.true2.i21:                               ; preds = %land.lhs.true.i19
  %.b4.i20 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i20, label %land.lhs.true2.i21.rcu_read_unlock.exit26_crit_edge, label %if.then.i22

land.lhs.true2.i21.rcu_read_unlock.exit26_crit_edge: ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit26

if.then.i22:                                      ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #9
  br label %rcu_read_unlock.exit26

rcu_read_unlock.exit26:                           ; preds = %if.then.i22, %land.lhs.true2.i21.rcu_read_unlock.exit26_crit_edge, %land.lhs.true.i19.rcu_read_unlock.exit26_crit_edge, %if.end.rcu_read_unlock.exit26_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !334
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit26, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ 6, %rcu_read_unlock.exit26 ], [ -19, %rcu_read_unlock.exit ]
  %9 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i23 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i23 to ptr
  %preempt_count.i.i.i.i24 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i24, align 4
  %sub.i.i.i25 = add i32 %12, -1
  store volatile i32 %sub.i.i.i25, ptr %preempt_count.i.i.i.i24, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_iport_inst_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3.i = getelementptr i8, ptr %item, i32 -256
  %se_lun_nacl = getelementptr i8, ptr %item, i32 -248
  %0 = ptrtoint ptr %se_lun_nacl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_lun_nacl, align 8
  %2 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !333
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 696, ptr noundef nonnull @.str.49) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %6 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %add.ptr3.i, align 8
  %call1 = tail call ptr @target_nacl_find_deve(ptr noundef %1, i64 noundef %7) #9
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %rcu_read_lock.exit
  %call.i11 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i11, label %if.then.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i14

if.then.rcu_read_unlock.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i14:                                ; preds = %if.then
  %call1.i12 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12)
  %tobool.not.i13 = icmp eq i32 %call1.i12, 0
  br i1 %tobool.not.i13, label %land.lhs.true.i14.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i16

land.lhs.true.i14.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i14
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i16:                               ; preds = %land.lhs.true.i14
  %.b4.i15 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i15, label %land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge, label %if.then.i17

land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i16
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i17:                                      ; preds = %land.lhs.true2.i16
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i17, %land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i14.rcu_read_unlock.exit_crit_edge, %if.then.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !334
  br label %cleanup

if.end:                                           ; preds = %rcu_read_lock.exit
  %se_tpg = getelementptr inbounds %struct.se_node_acl, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %se_tpg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %se_tpg, align 4
  %se_tpg_tfo = getelementptr inbounds %struct.se_portal_group, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %se_tpg_tfo to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %se_tpg_tfo, align 4
  %tpg_get_inst_index = getelementptr inbounds %struct.target_core_fabric_ops, ptr %11, i32 0, i32 14
  %12 = ptrtoint ptr %tpg_get_inst_index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tpg_get_inst_index, align 4
  %call2 = tail call i32 %13(ptr noundef %9) #9
  %call3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.9, i32 noundef %call2)
  %call.i20 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i20, label %if.end.rcu_read_unlock.exit30_crit_edge, label %land.lhs.true.i23

if.end.rcu_read_unlock.exit30_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit30

land.lhs.true.i23:                                ; preds = %if.end
  %call1.i21 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i21)
  %tobool.not.i22 = icmp eq i32 %call1.i21, 0
  br i1 %tobool.not.i22, label %land.lhs.true.i23.rcu_read_unlock.exit30_crit_edge, label %land.lhs.true2.i25

land.lhs.true.i23.rcu_read_unlock.exit30_crit_edge: ; preds = %land.lhs.true.i23
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit30

land.lhs.true2.i25:                               ; preds = %land.lhs.true.i23
  %.b4.i24 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i24, label %land.lhs.true2.i25.rcu_read_unlock.exit30_crit_edge, label %if.then.i26

land.lhs.true2.i25.rcu_read_unlock.exit30_crit_edge: ; preds = %land.lhs.true2.i25
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit30

if.then.i26:                                      ; preds = %land.lhs.true2.i25
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #9
  br label %rcu_read_unlock.exit30

rcu_read_unlock.exit30:                           ; preds = %if.then.i26, %land.lhs.true2.i25.rcu_read_unlock.exit30_crit_edge, %land.lhs.true.i23.rcu_read_unlock.exit30_crit_edge, %if.end.rcu_read_unlock.exit30_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !334
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit30, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ %call3, %rcu_read_unlock.exit30 ], [ -19, %rcu_read_unlock.exit ]
  %14 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i27 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i27 to ptr
  %preempt_count.i.i.i.i28 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i28, align 4
  %sub.i.i.i29 = add i32 %17, -1
  store volatile i32 %sub.i.i.i29, ptr %preempt_count.i.i.i.i28, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_iport_dev_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3.i = getelementptr i8, ptr %item, i32 -256
  %se_lun_nacl = getelementptr i8, ptr %item, i32 -248
  %0 = ptrtoint ptr %se_lun_nacl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_lun_nacl, align 8
  %2 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !333
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 696, ptr noundef nonnull @.str.49) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %6 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %add.ptr3.i, align 8
  %call1 = tail call ptr @target_nacl_find_deve(ptr noundef %1, i64 noundef %7) #9
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %rcu_read_lock.exit
  %call.i22 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i22, label %if.then.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i25

if.then.rcu_read_unlock.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i25:                                ; preds = %if.then
  %call1.i23 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i23)
  %tobool.not.i24 = icmp eq i32 %call1.i23, 0
  br i1 %tobool.not.i24, label %land.lhs.true.i25.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i27

land.lhs.true.i25.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i25
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i27:                               ; preds = %land.lhs.true.i25
  %.b4.i26 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i26, label %land.lhs.true2.i27.rcu_read_unlock.exit_crit_edge, label %if.then.i28

land.lhs.true2.i27.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i27
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i28:                                      ; preds = %land.lhs.true2.i27
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i28, %land.lhs.true2.i27.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i25.rcu_read_unlock.exit_crit_edge, %if.then.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !334
  br label %cleanup

if.end:                                           ; preds = %rcu_read_lock.exit
  %se_lun = getelementptr inbounds %struct.se_dev_entry, ptr %call1, i32 0, i32 12
  %8 = ptrtoint ptr %se_lun to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %se_lun, align 8
  %call3 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true, label %if.end.do.end12_crit_edge

if.end.do.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12

land.lhs.true:                                    ; preds = %if.end
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end12_crit_edge, label %land.lhs.true7

land.lhs.true.do.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b21 = load i1, ptr @target_stat_iport_dev_show.__warned, align 1
  br i1 %.b21, label %land.lhs.true7.do.end12_crit_edge, label %if.then9

land.lhs.true7.do.end12_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12

if.then9:                                         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @target_stat_iport_dev_show.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.46, i32 noundef 1229, ptr noundef nonnull @.str.47) #9
  br label %do.end12

do.end12:                                         ; preds = %if.then9, %land.lhs.true7.do.end12_crit_edge, %land.lhs.true.do.end12_crit_edge, %if.end.do.end12_crit_edge
  %lun_index = getelementptr inbounds %struct.se_lun, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %lun_index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lun_index, align 4
  %call14 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.9, i32 noundef %11)
  %call.i31 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i31, label %do.end12.rcu_read_unlock.exit41_crit_edge, label %land.lhs.true.i34

do.end12.rcu_read_unlock.exit41_crit_edge:        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit41

land.lhs.true.i34:                                ; preds = %do.end12
  %call1.i32 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i32)
  %tobool.not.i33 = icmp eq i32 %call1.i32, 0
  br i1 %tobool.not.i33, label %land.lhs.true.i34.rcu_read_unlock.exit41_crit_edge, label %land.lhs.true2.i36

land.lhs.true.i34.rcu_read_unlock.exit41_crit_edge: ; preds = %land.lhs.true.i34
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit41

land.lhs.true2.i36:                               ; preds = %land.lhs.true.i34
  %.b4.i35 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i35, label %land.lhs.true2.i36.rcu_read_unlock.exit41_crit_edge, label %if.then.i37

land.lhs.true2.i36.rcu_read_unlock.exit41_crit_edge: ; preds = %land.lhs.true2.i36
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit41

if.then.i37:                                      ; preds = %land.lhs.true2.i36
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #9
  br label %rcu_read_unlock.exit41

rcu_read_unlock.exit41:                           ; preds = %if.then.i37, %land.lhs.true2.i36.rcu_read_unlock.exit41_crit_edge, %land.lhs.true.i34.rcu_read_unlock.exit41_crit_edge, %do.end12.rcu_read_unlock.exit41_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !334
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit41, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ %call14, %rcu_read_unlock.exit41 ], [ -19, %rcu_read_unlock.exit ]
  %12 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i38 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i38 to ptr
  %preempt_count.i.i.i.i39 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i39 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i39, align 4
  %sub.i.i.i40 = add i32 %15, -1
  store volatile i32 %sub.i.i.i40, ptr %preempt_count.i.i.i.i39, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_iport_port_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3.i = getelementptr i8, ptr %item, i32 -256
  %se_lun_nacl = getelementptr i8, ptr %item, i32 -248
  %0 = ptrtoint ptr %se_lun_nacl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_lun_nacl, align 8
  %2 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !333
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 696, ptr noundef nonnull @.str.49) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %6 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %add.ptr3.i, align 8
  %call1 = tail call ptr @target_nacl_find_deve(ptr noundef %1, i64 noundef %7) #9
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %rcu_read_lock.exit
  %call.i11 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i11, label %if.then.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i14

if.then.rcu_read_unlock.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i14:                                ; preds = %if.then
  %call1.i12 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12)
  %tobool.not.i13 = icmp eq i32 %call1.i12, 0
  br i1 %tobool.not.i13, label %land.lhs.true.i14.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i16

land.lhs.true.i14.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i14
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i16:                               ; preds = %land.lhs.true.i14
  %.b4.i15 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i15, label %land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge, label %if.then.i17

land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i16
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i17:                                      ; preds = %land.lhs.true2.i16
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i17, %land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i14.rcu_read_unlock.exit_crit_edge, %if.then.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !334
  br label %cleanup

if.end:                                           ; preds = %rcu_read_lock.exit
  %se_tpg = getelementptr inbounds %struct.se_node_acl, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %se_tpg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %se_tpg, align 4
  %se_tpg_tfo = getelementptr inbounds %struct.se_portal_group, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %se_tpg_tfo to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %se_tpg_tfo, align 4
  %tpg_get_tag = getelementptr inbounds %struct.target_core_fabric_ops, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %tpg_get_tag to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tpg_get_tag, align 4
  %call2 = tail call zeroext i16 %13(ptr noundef %9) #9
  %conv = zext i16 %call2 to i32
  %call3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.9, i32 noundef %conv)
  %call.i20 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i20, label %if.end.rcu_read_unlock.exit30_crit_edge, label %land.lhs.true.i23

if.end.rcu_read_unlock.exit30_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit30

land.lhs.true.i23:                                ; preds = %if.end
  %call1.i21 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i21)
  %tobool.not.i22 = icmp eq i32 %call1.i21, 0
  br i1 %tobool.not.i22, label %land.lhs.true.i23.rcu_read_unlock.exit30_crit_edge, label %land.lhs.true2.i25

land.lhs.true.i23.rcu_read_unlock.exit30_crit_edge: ; preds = %land.lhs.true.i23
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit30

land.lhs.true2.i25:                               ; preds = %land.lhs.true.i23
  %.b4.i24 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i24, label %land.lhs.true2.i25.rcu_read_unlock.exit30_crit_edge, label %if.then.i26

land.lhs.true2.i25.rcu_read_unlock.exit30_crit_edge: ; preds = %land.lhs.true2.i25
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit30

if.then.i26:                                      ; preds = %land.lhs.true2.i25
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #9
  br label %rcu_read_unlock.exit30

rcu_read_unlock.exit30:                           ; preds = %if.then.i26, %land.lhs.true2.i25.rcu_read_unlock.exit30_crit_edge, %land.lhs.true.i23.rcu_read_unlock.exit30_crit_edge, %if.end.rcu_read_unlock.exit30_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !334
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit30, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ %call3, %rcu_read_unlock.exit30 ], [ -19, %rcu_read_unlock.exit ]
  %14 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i27 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i27 to ptr
  %preempt_count.i.i.i.i28 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i28, align 4
  %sub.i.i.i29 = add i32 %17, -1
  store volatile i32 %sub.i.i.i29, ptr %preempt_count.i.i.i.i28, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_iport_indx_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %se_lun_nacl = getelementptr i8, ptr %item, i32 -248
  %0 = ptrtoint ptr %se_lun_nacl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_lun_nacl, align 8
  %nacl_sess_lock = getelementptr inbounds %struct.se_node_acl, ptr %1, i32 0, i32 12
  tail call void @_raw_spin_lock_irq(ptr noundef %nacl_sess_lock) #9
  %nacl_sess = getelementptr inbounds %struct.se_node_acl, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %nacl_sess to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nacl_sess, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %se_tpg = getelementptr inbounds %struct.se_node_acl, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %se_tpg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %se_tpg, align 4
  %se_tpg_tfo = getelementptr inbounds %struct.se_portal_group, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %se_tpg_tfo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %se_tpg_tfo, align 4
  %sess_get_index = getelementptr inbounds %struct.target_core_fabric_ops, ptr %7, i32 0, i32 18
  %8 = ptrtoint ptr %sess_get_index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sess_get_index, align 4
  %call2 = tail call i32 %9(ptr noundef nonnull %3) #9
  %call3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.9, i32 noundef %call2)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %nacl_sess_lock) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_iport_port_auth_indx_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3.i = getelementptr i8, ptr %item, i32 -256
  %se_lun_nacl = getelementptr i8, ptr %item, i32 -248
  %0 = ptrtoint ptr %se_lun_nacl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_lun_nacl, align 8
  %2 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !333
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 696, ptr noundef nonnull @.str.49) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %6 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %add.ptr3.i, align 8
  %call1 = tail call ptr @target_nacl_find_deve(ptr noundef %1, i64 noundef %7) #9
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %rcu_read_lock.exit
  %call.i8 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i8, label %if.then.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i11

if.then.rcu_read_unlock.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i11:                                ; preds = %if.then
  %call1.i9 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i9)
  %tobool.not.i10 = icmp eq i32 %call1.i9, 0
  br i1 %tobool.not.i10, label %land.lhs.true.i11.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i13

land.lhs.true.i11.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i11
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i13:                               ; preds = %land.lhs.true.i11
  %.b4.i12 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i12, label %land.lhs.true2.i13.rcu_read_unlock.exit_crit_edge, label %if.then.i14

land.lhs.true2.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i13
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i14:                                      ; preds = %land.lhs.true2.i13
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i14, %land.lhs.true2.i13.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i11.rcu_read_unlock.exit_crit_edge, %if.then.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !334
  br label %cleanup

if.end:                                           ; preds = %rcu_read_lock.exit
  %acl_index = getelementptr inbounds %struct.se_node_acl, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %acl_index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %acl_index, align 4
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.9, i32 noundef %9)
  %call.i17 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i17, label %if.end.rcu_read_unlock.exit27_crit_edge, label %land.lhs.true.i20

if.end.rcu_read_unlock.exit27_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit27

land.lhs.true.i20:                                ; preds = %if.end
  %call1.i18 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i18)
  %tobool.not.i19 = icmp eq i32 %call1.i18, 0
  br i1 %tobool.not.i19, label %land.lhs.true.i20.rcu_read_unlock.exit27_crit_edge, label %land.lhs.true2.i22

land.lhs.true.i20.rcu_read_unlock.exit27_crit_edge: ; preds = %land.lhs.true.i20
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit27

land.lhs.true2.i22:                               ; preds = %land.lhs.true.i20
  %.b4.i21 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i21, label %land.lhs.true2.i22.rcu_read_unlock.exit27_crit_edge, label %if.then.i23

land.lhs.true2.i22.rcu_read_unlock.exit27_crit_edge: ; preds = %land.lhs.true2.i22
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit27

if.then.i23:                                      ; preds = %land.lhs.true2.i22
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #9
  br label %rcu_read_unlock.exit27

rcu_read_unlock.exit27:                           ; preds = %if.then.i23, %land.lhs.true2.i22.rcu_read_unlock.exit27_crit_edge, %land.lhs.true.i20.rcu_read_unlock.exit27_crit_edge, %if.end.rcu_read_unlock.exit27_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !334
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit27, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ %call2, %rcu_read_unlock.exit27 ], [ -19, %rcu_read_unlock.exit ]
  %10 = tail call i32 @llvm.read_register.i32(metadata !323) #9
  %and.i.i.i.i.i24 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i24 to ptr
  %preempt_count.i.i.i.i25 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i25 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i25, align 4
  %sub.i.i.i26 = add i32 %13, -1
  store volatile i32 %sub.i.i.i26, ptr %preempt_count.i.i.i.i25, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target_stat_iport_port_ident_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  %buf = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %se_lun_nacl = getelementptr i8, ptr %item, i32 -248
  %0 = ptrtoint ptr %se_lun_nacl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_lun_nacl, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #9
  %nacl_sess_lock = getelementptr inbounds %struct.se_node_acl, ptr %1, i32 0, i32 12
  tail call void @_raw_spin_lock_irq(ptr noundef %nacl_sess_lock) #9
  %nacl_sess = getelementptr inbounds %struct.se_node_acl, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %nacl_sess to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nacl_sess, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irq(ptr noundef %nacl_sess_lock) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %se_tpg = getelementptr inbounds %struct.se_node_acl, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %se_tpg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %se_tpg, align 4
  %6 = call ptr @memset(ptr %buf, i32 0, i32 64)
  %se_tpg_tfo = getelementptr inbounds %struct.se_portal_group, ptr %5, i32 0, i32 10
  %7 = ptrtoint ptr %se_tpg_tfo to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %se_tpg_tfo, align 4
  %sess_get_initiator_sid = getelementptr inbounds %struct.target_core_fabric_ops, ptr %8, i32 0, i32 19
  %9 = ptrtoint ptr %sess_get_initiator_sid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sess_get_initiator_sid, align 4
  %cmp.not = icmp eq ptr %10, null
  br i1 %cmp.not, label %if.end.if.end7_crit_edge, label %if.then2

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = call i32 %10(ptr noundef nonnull %3, ptr noundef nonnull %buf, i32 noundef 64) #9
  br label %if.end7

if.end7:                                          ; preds = %if.then2, %if.end.if.end7_crit_edge
  %call10 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.75, ptr noundef %1, ptr noundef nonnull %buf)
  call void @_raw_spin_unlock_irq(ptr noundef %nacl_sess_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then
  %retval.0 = phi i32 [ %call10, %if.end7 ], [ -19, %if.then ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 160)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 160)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !25, !27, !28, !30, !31, !33, !35, !36, !38, !40, !42, !44, !46, !47, !49, !50, !52, !54, !56, !57, !59, !60, !62, !64, !65, !67, !68, !70, !72, !74, !76, !77, !79, !81, !82, !84, !86, !87, !89, !91, !93, !94, !96, !98, !99, !101, !103, !104, !106, !108, !109, !111, !113, !115, !117, !118, !120, !122, !123, !125, !126, !128, !129, !131, !133, !134, !136, !137, !139, !140, !142, !144, !146, !148, !149, !150, !152, !153, !154, !156, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !197, !199, !201, !203, !204, !206, !208, !210, !212, !213, !215, !217, !219, !221, !223, !225, !226, !228, !230, !232, !234, !236, !238, !239, !241, !243, !245, !247, !249, !250, !252, !254, !256, !257, !259, !261, !263, !265, !267, !269, !271, !272, !274, !276, !277, !279, !280, !282, !283, !285, !286, !288, !290, !292, !294, !296, !298, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !318, !320, !321}
!llvm.named.register.sp = !{!323}
!llvm.module.flags = !{!324, !325, !326, !327, !328, !329, !330, !331}
!llvm.ident = !{!332}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/target/target_core_stat.c", i32 395, i32 4}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/target/target_core_stat.c", i32 400, i32 4}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/target/target_core_stat.c", i32 405, i32 4}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/target/target_core_stat.c", i32 825, i32 4}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/target/target_core_stat.c", i32 830, i32 4}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/target/target_core_stat.c", i32 835, i32 4}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/target/target_core_stat.c", i32 1359, i32 4}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/target/target_core_stat.c", i32 1364, i32 4}
!16 = !{ptr @target_stat_scsi_dev_cit, !17, !"target_stat_scsi_dev_cit", i1 false, i1 false}
!17 = !{!"../drivers/target/target_core_stat.c", i32 83, i32 38}
!18 = !{ptr @target_stat_scsi_dev_attrs, !19, !"target_stat_scsi_dev_attrs", i1 false, i1 false}
!19 = !{!"../drivers/target/target_core_stat.c", i32 75, i32 35}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/target/target_core_stat.c", i32 70, i32 1}
!22 = !{ptr @target_stat_attr_inst, !21, !"target_stat_attr_inst", i1 false, i1 false}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/target/target_core_stat.c", i32 52, i32 35}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/target/target_core_stat.c", i32 71, i32 1}
!27 = !{ptr @target_stat_attr_indx, !26, !"target_stat_attr_indx", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/target/target_core_stat.c", i32 72, i32 1}
!30 = !{ptr @target_stat_attr_role, !29, !"target_stat_attr_role", i1 false, i1 false}
!31 = distinct !{null, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/target/target_core_stat.c", i32 62, i32 35}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/target/target_core_stat.c", i32 73, i32 1}
!35 = !{ptr @target_stat_attr_ports, !34, !"target_stat_attr_ports", i1 false, i1 false}
!36 = !{ptr @target_stat_scsi_tgt_dev_cit, !37, !"target_stat_scsi_tgt_dev_cit", i1 false, i1 false}
!37 = !{!"../drivers/target/target_core_stat.c", i32 180, i32 38}
!38 = !{ptr @target_stat_scsi_tgt_dev_attrs, !39, !"target_stat_scsi_tgt_dev_attrs", i1 false, i1 false}
!39 = !{!"../drivers/target/target_core_stat.c", i32 168, i32 35}
!40 = !{ptr @target_stat_tgt_attr_inst, !41, !"target_stat_tgt_attr_inst", i1 false, i1 false}
!41 = !{!"../drivers/target/target_core_stat.c", i32 159, i32 1}
!42 = !{ptr @target_stat_tgt_attr_indx, !43, !"target_stat_tgt_attr_indx", i1 false, i1 false}
!43 = !{!"../drivers/target/target_core_stat.c", i32 160, i32 1}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/target/target_core_stat.c", i32 161, i32 1}
!46 = !{ptr @target_stat_tgt_attr_num_lus, !45, !"target_stat_tgt_attr_num_lus", i1 false, i1 false}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/target/target_core_stat.c", i32 162, i32 1}
!49 = !{ptr @target_stat_tgt_attr_status, !48, !"target_stat_tgt_attr_status", i1 false, i1 false}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/target/target_core_stat.c", i32 120, i32 36}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/target/target_core_stat.c", i32 122, i32 36}
!54 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/target/target_core_stat.c", i32 163, i32 1}
!56 = !{ptr @target_stat_tgt_attr_non_access_lus, !55, !"target_stat_tgt_attr_non_access_lus", i1 false, i1 false}
!57 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/target/target_core_stat.c", i32 164, i32 1}
!59 = !{ptr @target_stat_tgt_attr_resets, !58, !"target_stat_tgt_attr_resets", i1 false, i1 false}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/target/target_core_stat.c", i32 141, i32 35}
!62 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/target/target_core_stat.c", i32 165, i32 1}
!64 = !{ptr @target_stat_tgt_attr_aborts_complete, !63, !"target_stat_tgt_attr_aborts_complete", i1 false, i1 false}
!65 = !{ptr @.str.22, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/target/target_core_stat.c", i32 166, i32 1}
!67 = !{ptr @target_stat_tgt_attr_aborts_no_task, !66, !"target_stat_tgt_attr_aborts_no_task", i1 false, i1 false}
!68 = !{ptr @target_stat_scsi_lu_cit, !69, !"target_stat_scsi_lu_cit", i1 false, i1 false}
!69 = !{!"../drivers/target/target_core_stat.c", i32 383, i32 38}
!70 = !{ptr @target_stat_scsi_lu_attrs, !71, !"target_stat_scsi_lu_attrs", i1 false, i1 false}
!71 = !{!"../drivers/target/target_core_stat.c", i32 361, i32 35}
!72 = !{ptr @target_stat_lu_attr_inst, !73, !"target_stat_lu_attr_inst", i1 false, i1 false}
!73 = !{!"../drivers/target/target_core_stat.c", i32 342, i32 1}
!74 = !{ptr @.str.23, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/target/target_core_stat.c", i32 343, i32 1}
!76 = !{ptr @target_stat_lu_attr_dev, !75, !"target_stat_lu_attr_dev", i1 false, i1 false}
!77 = !{ptr @target_stat_lu_attr_indx, !78, !"target_stat_lu_attr_indx", i1 false, i1 false}
!78 = !{!"../drivers/target/target_core_stat.c", i32 344, i32 1}
!79 = !{ptr @.str.24, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/target/target_core_stat.c", i32 345, i32 1}
!81 = !{ptr @target_stat_lu_attr_lun, !80, !"target_stat_lu_attr_lun", i1 false, i1 false}
!82 = !{ptr @.str.25, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/target/target_core_stat.c", i32 217, i32 35}
!84 = !{ptr @.str.26, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/target/target_core_stat.c", i32 346, i32 1}
!86 = !{ptr @target_stat_lu_attr_lu_name, !85, !"target_stat_lu_attr_lu_name", i1 false, i1 false}
!87 = !{ptr @.str.27, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/target/target_core_stat.c", i32 225, i32 35}
!89 = !{ptr @.str.28, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/target/target_core_stat.c", i32 227, i32 31}
!91 = !{ptr @.str.29, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/target/target_core_stat.c", i32 347, i32 1}
!93 = !{ptr @target_stat_lu_attr_vend, !92, !"target_stat_lu_attr_vend", i1 false, i1 false}
!94 = !{ptr @.str.30, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/target/target_core_stat.c", i32 234, i32 35}
!96 = !{ptr @.str.31, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/target/target_core_stat.c", i32 348, i32 1}
!98 = !{ptr @target_stat_lu_attr_prod, !97, !"target_stat_lu_attr_prod", i1 false, i1 false}
!99 = !{ptr @.str.32, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/target/target_core_stat.c", i32 242, i32 35}
!101 = !{ptr @.str.33, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/target/target_core_stat.c", i32 349, i32 1}
!103 = !{ptr @target_stat_lu_attr_rev, !102, !"target_stat_lu_attr_rev", i1 false, i1 false}
!104 = !{ptr @.str.34, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/target/target_core_stat.c", i32 250, i32 35}
!106 = !{ptr @.str.35, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/target/target_core_stat.c", i32 350, i32 1}
!108 = !{ptr @target_stat_lu_attr_dev_type, !107, !"target_stat_lu_attr_dev_type", i1 false, i1 false}
!109 = !{ptr @target_stat_lu_attr_status, !110, !"target_stat_lu_attr_status", i1 false, i1 false}
!110 = !{!"../drivers/target/target_core_stat.c", i32 351, i32 1}
!111 = !{ptr @.str.36, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/target/target_core_stat.c", i32 269, i32 25}
!113 = !{ptr @.str.37, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/target/target_core_stat.c", i32 269, i32 39}
!115 = !{ptr @.str.38, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/target/target_core_stat.c", i32 352, i32 1}
!117 = !{ptr @target_stat_lu_attr_state_bit, !116, !"target_stat_lu_attr_state_bit", i1 false, i1 false}
!118 = !{ptr @.str.39, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/target/target_core_stat.c", i32 276, i32 35}
!120 = !{ptr @.str.40, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/target/target_core_stat.c", i32 353, i32 1}
!122 = !{ptr @target_stat_lu_attr_num_cmds, !121, !"target_stat_lu_attr_num_cmds", i1 false, i1 false}
!123 = !{ptr @.str.41, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/target/target_core_stat.c", i32 354, i32 1}
!125 = !{ptr @target_stat_lu_attr_read_mbytes, !124, !"target_stat_lu_attr_read_mbytes", i1 false, i1 false}
!126 = !{ptr @.str.42, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/target/target_core_stat.c", i32 355, i32 1}
!128 = !{ptr @target_stat_lu_attr_write_mbytes, !127, !"target_stat_lu_attr_write_mbytes", i1 false, i1 false}
!129 = !{ptr @target_stat_lu_attr_resets, !130, !"target_stat_lu_attr_resets", i1 false, i1 false}
!130 = !{!"../drivers/target/target_core_stat.c", i32 356, i32 1}
!131 = !{ptr @.str.43, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/target/target_core_stat.c", i32 357, i32 1}
!133 = !{ptr @target_stat_lu_attr_full_stat, !132, !"target_stat_lu_attr_full_stat", i1 false, i1 false}
!134 = !{ptr @.str.44, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/target/target_core_stat.c", i32 358, i32 1}
!136 = !{ptr @target_stat_lu_attr_hs_num_cmds, !135, !"target_stat_lu_attr_hs_num_cmds", i1 false, i1 false}
!137 = !{ptr @.str.45, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/target/target_core_stat.c", i32 359, i32 1}
!139 = !{ptr @target_stat_lu_attr_creation_time, !138, !"target_stat_lu_attr_creation_time", i1 false, i1 false}
!140 = !{ptr @target_stat_scsi_port_cit, !141, !"target_stat_scsi_port_cit", i1 false, i1 false}
!141 = !{!"../drivers/target/target_core_stat.c", i32 509, i32 38}
!142 = !{ptr @target_stat_scsi_port_attrs, !143, !"target_stat_scsi_port_attrs", i1 false, i1 false}
!143 = !{!"../drivers/target/target_core_stat.c", i32 500, i32 35}
!144 = !{ptr @target_stat_port_attr_inst, !145, !"target_stat_port_attr_inst", i1 false, i1 false}
!145 = !{!"../drivers/target/target_core_stat.c", i32 494, i32 1}
!146 = distinct !{null, !147, !"__warned", i1 false, i1 false}
!147 = !{!"../drivers/target/target_core_stat.c", i32 428, i32 8}
!148 = !{ptr @.str.46, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.47, !147, !"<string literal>", i1 false, i1 false}
!150 = distinct !{null, !151, !"__warned", i1 false, i1 false}
!151 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!152 = !{ptr @.str.48, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @.str.49, !151, !"<string literal>", i1 false, i1 false}
!154 = distinct !{null, !155, !"__warned", i1 false, i1 false}
!155 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!156 = !{ptr @.str.50, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @target_stat_port_attr_dev, !158, !"target_stat_port_attr_dev", i1 false, i1 false}
!158 = !{!"../drivers/target/target_core_stat.c", i32 495, i32 1}
!159 = distinct !{null, !160, !"__warned", i1 false, i1 false}
!160 = !{!"../drivers/target/target_core_stat.c", i32 442, i32 8}
!161 = !{ptr @target_stat_port_attr_indx, !162, !"target_stat_port_attr_indx", i1 false, i1 false}
!162 = !{!"../drivers/target/target_core_stat.c", i32 496, i32 1}
!163 = distinct !{null, !164, !"__warned", i1 false, i1 false}
!164 = !{!"../drivers/target/target_core_stat.c", i32 456, i32 8}
!165 = !{ptr @target_stat_port_attr_role, !166, !"target_stat_port_attr_role", i1 false, i1 false}
!166 = !{!"../drivers/target/target_core_stat.c", i32 497, i32 1}
!167 = distinct !{null, !168, !"__warned", i1 false, i1 false}
!168 = !{!"../drivers/target/target_core_stat.c", i32 470, i32 8}
!169 = !{ptr @.str.51, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/target/target_core_stat.c", i32 472, i32 35}
!171 = !{ptr @.str.52, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/target/target_core_stat.c", i32 472, i32 45}
!173 = !{ptr @.str.53, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/target/target_core_stat.c", i32 498, i32 1}
!175 = !{ptr @target_stat_port_attr_busy_count, !174, !"target_stat_port_attr_busy_count", i1 false, i1 false}
!176 = distinct !{null, !177, !"__warned", i1 false, i1 false}
!177 = !{!"../drivers/target/target_core_stat.c", i32 485, i32 8}
!178 = !{ptr @target_stat_scsi_tgt_port_cit, !179, !"target_stat_scsi_tgt_port_cit", i1 false, i1 false}
!179 = !{!"../drivers/target/target_core_stat.c", i32 693, i32 38}
!180 = !{ptr @target_stat_scsi_tgt_port_attrs, !181, !"target_stat_scsi_tgt_port_attrs", i1 false, i1 false}
!181 = !{!"../drivers/target/target_core_stat.c", i32 680, i32 35}
!182 = !{ptr @target_stat_tgt_port_attr_inst, !183, !"target_stat_tgt_port_attr_inst", i1 false, i1 false}
!183 = !{!"../drivers/target/target_core_stat.c", i32 670, i32 1}
!184 = distinct !{null, !185, !"__warned", i1 false, i1 false}
!185 = !{!"../drivers/target/target_core_stat.c", i32 532, i32 8}
!186 = !{ptr @target_stat_tgt_port_attr_dev, !187, !"target_stat_tgt_port_attr_dev", i1 false, i1 false}
!187 = !{!"../drivers/target/target_core_stat.c", i32 671, i32 1}
!188 = distinct !{null, !189, !"__warned", i1 false, i1 false}
!189 = !{!"../drivers/target/target_core_stat.c", i32 547, i32 8}
!190 = !{ptr @target_stat_tgt_port_attr_indx, !191, !"target_stat_tgt_port_attr_indx", i1 false, i1 false}
!191 = !{!"../drivers/target/target_core_stat.c", i32 672, i32 1}
!192 = distinct !{null, !193, !"__warned", i1 false, i1 false}
!193 = !{!"../drivers/target/target_core_stat.c", i32 562, i32 8}
!194 = !{ptr @.str.54, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/target/target_core_stat.c", i32 673, i32 1}
!196 = !{ptr @target_stat_tgt_port_attr_name, !195, !"target_stat_tgt_port_attr_name", i1 false, i1 false}
!197 = distinct !{null, !198, !"__warned", i1 false, i1 false}
!198 = !{!"../drivers/target/target_core_stat.c", i32 578, i32 8}
!199 = !{ptr @.str.55, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/target/target_core_stat.c", i32 580, i32 35}
!201 = !{ptr @.str.56, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/target/target_core_stat.c", i32 674, i32 1}
!203 = !{ptr @target_stat_tgt_port_attr_port_index, !202, !"target_stat_tgt_port_attr_port_index", i1 false, i1 false}
!204 = distinct !{null, !205, !"__warned", i1 false, i1 false}
!205 = !{!"../drivers/target/target_core_stat.c", i32 596, i32 8}
!206 = !{ptr @.str.57, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/target/target_core_stat.c", i32 598, i32 35}
!208 = !{ptr @.str.58, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/target/target_core_stat.c", i32 599, i32 39}
!210 = !{ptr @.str.59, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/target/target_core_stat.c", i32 675, i32 1}
!212 = !{ptr @target_stat_tgt_port_attr_in_cmds, !211, !"target_stat_tgt_port_attr_in_cmds", i1 false, i1 false}
!213 = distinct !{null, !214, !"__warned", i1 false, i1 false}
!214 = !{!"../drivers/target/target_core_stat.c", i32 613, i32 8}
!215 = !{ptr @target_stat_tgt_port_attr_write_mbytes, !216, !"target_stat_tgt_port_attr_write_mbytes", i1 false, i1 false}
!216 = !{!"../drivers/target/target_core_stat.c", i32 676, i32 1}
!217 = distinct !{null, !218, !"__warned", i1 false, i1 false}
!218 = !{!"../drivers/target/target_core_stat.c", i32 629, i32 8}
!219 = !{ptr @target_stat_tgt_port_attr_read_mbytes, !220, !"target_stat_tgt_port_attr_read_mbytes", i1 false, i1 false}
!220 = !{!"../drivers/target/target_core_stat.c", i32 677, i32 1}
!221 = distinct !{null, !222, !"__warned", i1 false, i1 false}
!222 = !{!"../drivers/target/target_core_stat.c", i32 645, i32 8}
!223 = !{ptr @.str.60, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/target/target_core_stat.c", i32 678, i32 1}
!225 = !{ptr @target_stat_tgt_port_attr_hs_in_cmds, !224, !"target_stat_tgt_port_attr_hs_in_cmds", i1 false, i1 false}
!226 = distinct !{null, !227, !"__warned", i1 false, i1 false}
!227 = !{!"../drivers/target/target_core_stat.c", i32 661, i32 8}
!228 = !{ptr @target_stat_scsi_transport_cit, !229, !"target_stat_scsi_transport_cit", i1 false, i1 false}
!229 = !{!"../drivers/target/target_core_stat.c", i32 813, i32 38}
!230 = !{ptr @target_stat_scsi_transport_attrs, !231, !"target_stat_scsi_transport_attrs", i1 false, i1 false}
!231 = !{!"../drivers/target/target_core_stat.c", i32 804, i32 35}
!232 = !{ptr @target_stat_transport_attr_inst, !233, !"target_stat_transport_attr_inst", i1 false, i1 false}
!233 = !{!"../drivers/target/target_core_stat.c", i32 798, i32 1}
!234 = distinct !{null, !235, !"__warned", i1 false, i1 false}
!235 = !{!"../drivers/target/target_core_stat.c", i32 716, i32 8}
!236 = !{ptr @.str.61, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/target/target_core_stat.c", i32 799, i32 1}
!238 = !{ptr @target_stat_transport_attr_device, !237, !"target_stat_transport_attr_device", i1 false, i1 false}
!239 = distinct !{null, !240, !"__warned", i1 false, i1 false}
!240 = !{!"../drivers/target/target_core_stat.c", i32 732, i32 8}
!241 = !{ptr @.str.62, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/target/target_core_stat.c", i32 735, i32 35}
!243 = !{ptr @target_stat_transport_attr_indx, !244, !"target_stat_transport_attr_indx", i1 false, i1 false}
!244 = !{!"../drivers/target/target_core_stat.c", i32 800, i32 1}
!245 = distinct !{null, !246, !"__warned", i1 false, i1 false}
!246 = !{!"../drivers/target/target_core_stat.c", i32 751, i32 8}
!247 = !{ptr @.str.63, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/target/target_core_stat.c", i32 801, i32 1}
!249 = !{ptr @target_stat_transport_attr_dev_name, !248, !"target_stat_transport_attr_dev_name", i1 false, i1 false}
!250 = distinct !{null, !251, !"__warned", i1 false, i1 false}
!251 = !{!"../drivers/target/target_core_stat.c", i32 769, i32 8}
!252 = !{ptr @.str.64, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/target/target_core_stat.c", i32 773, i32 35}
!254 = !{ptr @.str.65, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/target/target_core_stat.c", i32 802, i32 1}
!256 = !{ptr @target_stat_transport_attr_proto_id, !255, !"target_stat_transport_attr_proto_id", i1 false, i1 false}
!257 = distinct !{null, !258, !"__warned", i1 false, i1 false}
!258 = !{!"../drivers/target/target_core_stat.c", i32 791, i32 8}
!259 = !{ptr @target_stat_scsi_auth_intr_cit, !260, !"target_stat_scsi_auth_intr_cit", i1 false, i1 false}
!260 = !{!"../drivers/target/target_core_stat.c", i32 1175, i32 38}
!261 = !{ptr @target_stat_scsi_auth_intr_attrs, !262, !"target_stat_scsi_auth_intr_attrs", i1 false, i1 false}
!262 = !{!"../drivers/target/target_core_stat.c", i32 1157, i32 35}
!263 = !{ptr @target_stat_auth_attr_inst, !264, !"target_stat_auth_attr_inst", i1 false, i1 false}
!264 = !{!"../drivers/target/target_core_stat.c", i32 1142, i32 1}
!265 = !{ptr @target_stat_auth_attr_dev, !266, !"target_stat_auth_attr_dev", i1 false, i1 false}
!266 = !{!"../drivers/target/target_core_stat.c", i32 1143, i32 1}
!267 = distinct !{null, !268, !"__warned", i1 false, i1 false}
!268 = !{!"../drivers/target/target_core_stat.c", i32 889, i32 8}
!269 = !{ptr @.str.66, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/target/target_core_stat.c", i32 1144, i32 1}
!271 = !{ptr @target_stat_auth_attr_port, !270, !"target_stat_auth_attr_port", i1 false, i1 false}
!272 = !{ptr @target_stat_auth_attr_indx, !273, !"target_stat_auth_attr_indx", i1 false, i1 false}
!273 = !{!"../drivers/target/target_core_stat.c", i32 1145, i32 1}
!274 = !{ptr @.str.67, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/target/target_core_stat.c", i32 1146, i32 1}
!276 = !{ptr @target_stat_auth_attr_dev_or_port, !275, !"target_stat_auth_attr_dev_or_port", i1 false, i1 false}
!277 = !{ptr @.str.68, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/target/target_core_stat.c", i32 1147, i32 1}
!279 = !{ptr @target_stat_auth_attr_intr_name, !278, !"target_stat_auth_attr_intr_name", i1 false, i1 false}
!280 = !{ptr @.str.69, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/target/target_core_stat.c", i32 1148, i32 1}
!282 = !{ptr @target_stat_auth_attr_map_indx, !281, !"target_stat_auth_attr_map_indx", i1 false, i1 false}
!283 = !{ptr @.str.70, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/target/target_core_stat.c", i32 1149, i32 1}
!285 = !{ptr @target_stat_auth_attr_att_count, !284, !"target_stat_auth_attr_att_count", i1 false, i1 false}
!286 = !{ptr @target_stat_auth_attr_num_cmds, !287, !"target_stat_auth_attr_num_cmds", i1 false, i1 false}
!287 = !{!"../drivers/target/target_core_stat.c", i32 1150, i32 1}
!288 = !{ptr @target_stat_auth_attr_read_mbytes, !289, !"target_stat_auth_attr_read_mbytes", i1 false, i1 false}
!289 = !{!"../drivers/target/target_core_stat.c", i32 1151, i32 1}
!290 = !{ptr @target_stat_auth_attr_write_mbytes, !291, !"target_stat_auth_attr_write_mbytes", i1 false, i1 false}
!291 = !{!"../drivers/target/target_core_stat.c", i32 1152, i32 1}
!292 = !{ptr @target_stat_auth_attr_hs_num_cmds, !293, !"target_stat_auth_attr_hs_num_cmds", i1 false, i1 false}
!293 = !{!"../drivers/target/target_core_stat.c", i32 1153, i32 1}
!294 = !{ptr @target_stat_auth_attr_creation_time, !295, !"target_stat_auth_attr_creation_time", i1 false, i1 false}
!295 = !{!"../drivers/target/target_core_stat.c", i32 1154, i32 1}
!296 = !{ptr @.str.71, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/target/target_core_stat.c", i32 1155, i32 1}
!298 = !{ptr @target_stat_auth_attr_row_status, !297, !"target_stat_auth_attr_row_status", i1 false, i1 false}
!299 = !{ptr @.str.72, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/target/target_core_stat.c", i32 1137, i32 34}
!301 = !{ptr @target_stat_scsi_att_intr_port_cit, !302, !"target_stat_scsi_att_intr_port_cit", i1 false, i1 false}
!302 = !{!"../drivers/target/target_core_stat.c", i32 1347, i32 38}
!303 = !{ptr @target_stat_scsi_ath_intr_port_attrs, !304, !"target_stat_scsi_ath_intr_port_attrs", i1 false, i1 false}
!304 = !{!"../drivers/target/target_core_stat.c", i32 1337, i32 35}
!305 = !{ptr @target_stat_iport_attr_inst, !306, !"target_stat_iport_attr_inst", i1 false, i1 false}
!306 = !{!"../drivers/target/target_core_stat.c", i32 1330, i32 1}
!307 = !{ptr @target_stat_iport_attr_dev, !308, !"target_stat_iport_attr_dev", i1 false, i1 false}
!308 = !{!"../drivers/target/target_core_stat.c", i32 1331, i32 1}
!309 = distinct !{null, !310, !"__warned", i1 false, i1 false}
!310 = !{!"../drivers/target/target_core_stat.c", i32 1229, i32 8}
!311 = !{ptr @target_stat_iport_attr_port, !312, !"target_stat_iport_attr_port", i1 false, i1 false}
!312 = !{!"../drivers/target/target_core_stat.c", i32 1332, i32 1}
!313 = !{ptr @target_stat_iport_attr_indx, !314, !"target_stat_iport_attr_indx", i1 false, i1 false}
!314 = !{!"../drivers/target/target_core_stat.c", i32 1333, i32 1}
!315 = !{ptr @.str.73, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/target/target_core_stat.c", i32 1334, i32 1}
!317 = !{ptr @target_stat_iport_attr_port_auth_indx, !316, !"target_stat_iport_attr_port_auth_indx", i1 false, i1 false}
!318 = !{ptr @.str.74, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/target/target_core_stat.c", i32 1335, i32 1}
!320 = !{ptr @target_stat_iport_attr_port_ident, !319, !"target_stat_iport_attr_port_ident", i1 false, i1 false}
!321 = !{ptr @.str.75, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/target/target_core_stat.c", i32 1325, i32 34}
!323 = !{!"sp"}
!324 = !{i32 1, !"wchar_size", i32 2}
!325 = !{i32 1, !"min_enum_size", i32 4}
!326 = !{i32 8, !"branch-target-enforcement", i32 0}
!327 = !{i32 8, !"sign-return-address", i32 0}
!328 = !{i32 8, !"sign-return-address-all", i32 0}
!329 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!330 = !{i32 7, !"uwtable", i32 1}
!331 = !{i32 7, !"frame-pointer", i32 2}
!332 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!333 = !{i64 2149391516}
!334 = !{i64 2149391782}
