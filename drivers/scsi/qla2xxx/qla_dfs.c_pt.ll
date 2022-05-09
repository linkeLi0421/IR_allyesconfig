; ModuleID = '/llk/IR_all_yes/drivers/scsi/qla2xxx/qla_dfs.c_pt.bc'
source_filename = "../drivers/scsi/qla2xxx/qla_dfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.scsi_qla_host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.work_struct, ptr, i32, [16 x i8], %struct.anon.79, %struct.atomic_t, i32, i32, i32, i32, i16, i16, %struct.fc_port, %union.port_id_t, i8, i16, i8, %struct.atomic_t, i8, i32, %struct.timer_list, [8 x i8], [8 x i8], [8 x i8], [8 x i8], ptr, %struct.completion, i16, i16, [6 x i8], %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.atomic_t, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, ptr, i16, ptr, i32, %struct.atomic_t, i16, i16, ptr, %struct.scsi_qlt_host, ptr, i32, i32, %struct.fc_host_statistics, %struct.qla_statistics, %struct.bidi_statistics, %struct.atomic_t, %struct.qla8044_reset_template, i16, i16, i16, i16, i16, i16, ptr, %struct.purex_list, %struct.purex_item, %struct.name_list_extended, i32, %struct.wait_queue_head, %struct.wait_queue_head, i8, [8 x i8], [8 x i8], i16, [4 x i16], %struct.list_head, %struct.fab_scan, i8, i32, i64, i64, i64, i64, i64, i64, %struct.edif_dbell, %struct.pur_core }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.79 = type { i16, [2 x i8] }
%struct.fc_port = type { %struct.list_head, ptr, [3 x i8], i8, [8 x i8], [8 x i8], %union.port_id_t, i16, i16, %struct.completion, i32, i32, ptr, i8, i32, ptr, %struct.list_head, %struct.spinlock, %struct.kref, ptr, i32, %struct.list_head, %struct.work_struct, %struct.work_struct, i64, i32, [2 x ptr], i16, i16, i16, i8, [8 x i8], i16, i32, %struct.atomic_t, i32, i32, ptr, ptr, i32, i8, i8, i8, i32, i32, i16, ptr, i32, ptr, %struct.ct_sns_desc, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.work_struct, [64 x i8], i8, i8, i16, i16, ptr, i64, i64, i64, %struct.anon.143 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ct_sns_desc = type { ptr, i32 }
%struct.anon.143 = type { i16, i32, i32, i64, i64, i8, i8, i16, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.spinlock }
%union.port_id_t = type { i24 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.scsi_qlt_host = type { ptr, %struct.mutex, %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fc_host_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.qla_statistics = type { i32, i64, i64, i64, i64, i32, i64, i32, i32, i32, %struct.qla_dif_statistics }
%struct.qla_dif_statistics = type { i64, i64, i64, i64, i32, i32, i32 }
%struct.bidi_statistics = type { i64, i64 }
%struct.qla8044_reset_template = type { i32, i32, i32, [16 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8 }
%struct.purex_list = type { %struct.list_head, %struct.spinlock }
%struct.purex_item = type { %struct.list_head, ptr, ptr, %struct.atomic_t, i16, %struct.anon.166 }
%struct.anon.166 = type { [64 x i8] }
%struct.name_list_extended = type { ptr, i32, %struct.list_head, i32, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.fab_scan = type { ptr, i32, i16, i32, %struct.delayed_work }
%struct.edif_dbell = type { i32, %struct.spinlock, %struct.list_head, %struct.completion }
%struct.pur_core = type { i32, %struct.spinlock, %struct.list_head }
%struct.qla_hw_data = type { ptr, ptr, %struct.anon.144, i16, i16, [108 x i8], %struct.spinlock, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i16, i8, ptr, ptr, ptr, [8 x i32], [8 x i32], [8 x i32], i8, i8, i8, i8, ptr, ptr, i16, i16, i8, i8, i8, %struct.atomic_t, i8, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i16, i16, ptr, i16, i16, ptr, i16, i8, i8, i16, i32, i8, i8, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i16, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i8, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, ptr, ptr, i64, i8, i8, ptr, i32, ptr, i32, i32, ptr, i32, i32, i32, %struct.fc_els_flogi, ptr, [32 x i16], [32 x i32], [8 x i32], ptr, ptr, i32, %struct.mutex, %struct.spinlock, %struct.mutex, %struct.completion, %struct.completion, %struct.completion, %struct.completion, i32, i32, %struct.mutex, i16, i16, i16, i16, i16, [2 x i16], i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, [16 x i16], [4 x i8], [4 x i16], [3 x i8], [3 x i8], i32, [3 x i8], [3 x i8], [2 x %struct.fwdt], ptr, i32, i32, i8, i32, i32, ptr, i32, i8, i32, i32, ptr, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, [8 x i16], i64, i64, %struct.mutex, i32, i16, [4 x i16], [17 x i8], [80 x i8], [17 x i8], ptr, i32, i32, i32, i32, %struct.mutex, [2 x i8], [2 x i8], [16 x i8], [4 x i32], [4 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.156, i8, i16, i8, i16, i16, ptr, %struct.list_head, [8 x i32], i16, i16, i16, i32, ptr, ptr, ptr, %struct.work_struct, %struct.qlfc_fw, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.rwlock_t, i16, i32, ptr, %struct.qla82xx_legacy_intr_set, i16, i16, %struct.list_head, i8, i32, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, %struct.work_struct, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.mr_data_fx00, i32, [36 x i8], %struct.qlt_hw_data, i32, i32, i16, i16, ptr, %struct.anon.163, i64, i64, i64, i64, i64, %struct.atomic_t, i16, i8, %struct.atomic_t, i16, %struct.qla_hw_data_stat, i32, ptr, %struct.btree_head32, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.els_reject, i8 }
%struct.anon.144 = type { i56 }
%struct.fc_els_flogi = type <{ i8, [3 x i8], %struct.fc_els_csp, i64, i64, [4 x %struct.fc_els_cssp], [16 x i8] }>
%struct.fc_els_csp = type { i8, i8, i16, i16, i16, %union.anon.152, i32 }
%union.anon.152 = type { %struct.anon.154 }
%struct.anon.154 = type { i32 }
%struct.fc_els_cssp = type { i16, i16, i16, i16, i16, i16, i8, i8, [2 x i8] }
%struct.fwdt = type { ptr, i32, i32 }
%struct.anon.156 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qlfc_fw = type { ptr, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.qla82xx_legacy_intr_set = type { i32, i32, i32, i32 }
%struct.mr_data_fx00 = type { [64 x i8], [32 x i8], [16 x i8], [16 x i8], [16 x i8], [32 x i8], %struct.fc_port, i8, i8, i8, i32, i16, i8, i16, i32, i32, i8, i8, i8 }
%struct.qlt_hw_data = type { i8, i32, ptr, ptr, i16, i16, ptr, ptr, ptr, ptr, i32, i16, i32, i32, i32, [2 x i8], [2 x i8], [8 x i8], ptr, ptr, ptr, %struct.list_head, i32, i32, i32, %struct.spinlock, i32, %struct.spinlock, i32, [60 x i8], %struct.spinlock, [84 x i8] }
%struct.anon.163 = type { %struct.anon.164, %struct.anon.165 }
%struct.anon.164 = type { %struct.list_head, i32 }
%struct.anon.165 = type { %struct.list_head, i32 }
%struct.qla_hw_data_stat = type { i32, i32 }
%struct.btree_head32 = type { %struct.btree_head }
%struct.btree_head = type { ptr, ptr, i32 }
%struct.els_reject = type { ptr, i32, i16 }
%struct.nvme_fc_remote_port = type { i32, i32, i64, i64, ptr, ptr, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.167, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.168, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.169, ptr, %struct.address_space, %struct.list_head, %union.anon.170, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.167 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.168 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.169 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.170 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.qla_qpair = type { %struct.spinlock, %struct.atomic_t, i32, ptr, ptr, i32, i8, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.qla_counters, %struct.list_head, %struct.list_head, i16, i32, i64, %struct.qla_tgt_counters, i16, [94 x i8], %struct.qla_fw_resources, i32, i32, i32, [108 x i8] }
%struct.qla_counters = type { i64, i64, i64, i64 }
%struct.qla_tgt_counters = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.qla_fw_resources = type { i16, i16, i16, i16 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.81, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.81 = type { ptr }
%struct.fc_rport = type { i32, i32, i32, %struct.fc_fpin_stats, i64, i64, i32, i32, i32, i32, i32, ptr, i32, i32, i8, %struct.list_head, %struct.device, %struct.delayed_work, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, ptr }
%struct.fc_fpin_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.80 = type { i8, i8, i8, i8 }
%struct.gid_list_info = type { i8, i8, i8, i8, i16, i16 }
%struct.file = type { %union.anon.11, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.11 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pn-%016llx\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dev_loss_tmo\00", [19 x i8] zeroinitializer }, align 32
@qla_dfs_rport_dev_loss_tmo_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @qla_dfs_rport_dev_loss_tmo_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"disc_state\00", [21 x i8] zeroinitializer }, align 32
@qla_dfs_rport_field_disc_state_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @qla_dfs_rport_field_disc_state_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"scan_state\00", [21 x i8] zeroinitializer }, align 32
@qla_dfs_rport_field_scan_state_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @qla_dfs_rport_field_scan_state_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fw_login_state\00", [17 x i8] zeroinitializer }, align 32
@qla_dfs_rport_field_fw_login_state_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @qla_dfs_rport_field_fw_login_state_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"login_pause\00", [20 x i8] zeroinitializer }, align 32
@qla_dfs_rport_field_login_pause_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @qla_dfs_rport_field_login_pause_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@qla_dfs_rport_field_flags_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @qla_dfs_rport_field_flags_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nvme_flag\00", [22 x i8] zeroinitializer }, align 32
@qla_dfs_rport_field_nvme_flag_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @qla_dfs_rport_field_nvme_flag_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"last_rscn_gen\00", [18 x i8] zeroinitializer }, align 32
@qla_dfs_rport_field_last_rscn_gen_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @qla_dfs_rport_field_last_rscn_gen_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rscn_gen\00", [23 x i8] zeroinitializer }, align 32
@qla_dfs_rport_field_rscn_gen_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @qla_dfs_rport_field_rscn_gen_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"login_gen\00", [22 x i8] zeroinitializer }, align 32
@qla_dfs_rport_field_login_gen_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @qla_dfs_rport_field_login_gen_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"loop_id\00", [24 x i8] zeroinitializer }, align 32
@qla_dfs_rport_field_loop_id_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @qla_dfs_rport_field_loop_id_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"port_id\00", [24 x i8] zeroinitializer }, align 32
@qla_dfs_rport_field_port_id_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @qla_dfs_rport_field_port_id_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sess_kref\00", [22 x i8] zeroinitializer }, align 32
@qla_dfs_rport_field_sess_kref_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @qla_dfs_rport_field_sess_kref_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@qla2x00_dfs_root = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@qla2x00_dfs_root_count = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"qla2xxx\00", [24 x i8] zeroinitializer }, align 32
@qla2x00_dfs_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ha->fce_mutex\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fw_resource_count\00", [46 x i8] zeroinitializer }, align 32
@qla_dfs_fw_resource_cnt_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @qla_dfs_fw_resource_cnt_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tgt_counters\00", [19 x i8] zeroinitializer }, align 32
@qla_dfs_tgt_counters_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @qla_dfs_tgt_counters_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tgt_port_database\00", [46 x i8] zeroinitializer }, align 32
@qla2x00_dfs_tgt_port_database_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @qla2x00_dfs_tgt_port_database_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fce\00", [28 x i8] zeroinitializer }, align 32
@dfs_fce_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @qla2x00_dfs_fce_open, ptr null, ptr @qla2x00_dfs_fce_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tgt_sess\00", [23 x i8] zeroinitializer }, align 32
@qla2x00_dfs_tgt_sess_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @qla2x00_dfs_tgt_sess_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"naqp\00", [27 x i8] zeroinitializer }, align 32
@dfs_naqp_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @qla_dfs_naqp_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @qla_dfs_naqp_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unable to create debugFS naqp node.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rports\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Unable to create debugFS rports node.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Mailbox Command failed %d, mb %#x\00", [62 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"FW Resource count\0A\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Original TGT exchg count[%d]\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Current TGT exchg count[%d]\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Current Initiator Exchange count[%d]\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Original Initiator Exchange count[%d]\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Current IOCB count[%d]\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Original IOCB count[%d]\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MAX VP count[%d]\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MAX FCF count[%d]\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Current free pageable XCB buffer cnt[%d]\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Original Initiator fast XCB buffer cnt[%d]\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Current free Initiator fast XCB buffer cnt[%d]\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Original Target fast XCB buffer cnt[%d]\0A\00", [55 x i8] zeroinitializer }, align 32
@ql2xenforce_iocb_limit = external dso_local local_unnamed_addr global i32, align 4
@.str.40 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Driver: estimate iocb used [%d] high water limit [%d]\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Target Counters\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qla_core_sbt_cmd = %lld\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"qla_core_ret_sta_ctio = %lld\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qla_core_ret_ctio = %lld\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"core_qla_que_buf = %lld\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"core_qla_snd_status = %lld\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"core_qla_free_cmd = %lld\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"num alloc iocb failed = %lld\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"num term exchange sent = %lld\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"num Q full sent = %lld\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DIF Inp Bytes = %lld\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DIF Outp Bytes = %lld\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DIF Inp Req = %lld\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DIF Outp Req = %lld\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DIF Guard err = %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DIF Ref tag err = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DIF App tag err = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Initiator Error Counters\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HW Error Count =\09\09%14lld\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Link Down Count =\09%14lld\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Interface Err Count =\09%14lld\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Cmd Timeout Count =\09%14lld\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Reset Count =\09\09%14lld\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Target Num = %7d Link Down Count = %14lld\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DMA allocation failed for %u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Port Name\09Port ID\09\09Loop ID\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%8phC  %02x%02x%02x  %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"DebugFS: Unable to disable FCE (%d).\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"FCE Trace Buffer\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"In Pointer = %llx\0A\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Base = %llx\0A\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"FCE Enable Registers\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%08x %08x %08x %08x %08x %08x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\0A%llx: \00", [24 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%08x\00", [27 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\0AEnd\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"DebugFS: Unable to reinitialize FCE (%d).\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Port ID   Port Name                Handle\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%02x:%02x:%02x  %8phC  %d\0A\00", [37 x i8] zeroinitializer }, align 32
@qla_dfs_naqp_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.84, i32 513, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013host%ld: this adapter does not support Multi Q.\00", [46 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qla_dfs_naqp_write\00", [45 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/scsi/qla2xxx/qla_dfs.c\00", [33 x i8] zeroinitializer }, align 32
@qla_dfs_naqp_write._entry_ptr = internal global ptr @qla_dfs_naqp_write._entry, section ".printk_index", align 4
@qla_dfs_naqp_write._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.83, ptr @.str.84, i32 519, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013host%ld: Driver is not setup with Multi Q.\00", [51 x i8] zeroinitializer }, align 32
@qla_dfs_naqp_write._entry_ptr.87 = internal global ptr @qla_dfs_naqp_write._entry.85, section ".printk_index", align 4
@qla_dfs_naqp_write._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.83, ptr @.str.84, i32 525, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013host%ld: fail to copy user buffer.\00", [59 x i8] zeroinitializer }, align 32
@qla_dfs_naqp_write._entry_ptr.90 = internal global ptr @qla_dfs_naqp_write._entry.88, section ".printk_index", align 4
@qla_dfs_naqp_write._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.83, ptr @.str.84, i32 533, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013User set invalid number of qpairs %lu. Max = %d\00", [46 x i8] zeroinitializer }, align 32
@qla_dfs_naqp_write._entry_ptr.93 = internal global ptr @qla_dfs_naqp_write._entry.91, section ".printk_index", align 4
@.str.94 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 117, i32 15 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 122, i32 23 }
@___asan_gen_.101 = private unnamed_addr constant [32 x i8] c"qla_dfs_rport_dev_loss_tmo_fops\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 125, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant [36 x i8] c"qla_dfs_rport_field_disc_state_fops\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 92, i32 1 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 126, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant [36 x i8] c"qla_dfs_rport_field_scan_state_fops\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 93, i32 1 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 127, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant [40 x i8] c"qla_dfs_rport_field_fw_login_state_fops\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 94, i32 1 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 128, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant [37 x i8] c"qla_dfs_rport_field_login_pause_fops\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 95, i32 1 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 129, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant [31 x i8] c"qla_dfs_rport_field_flags_fops\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 96, i32 1 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 130, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant [35 x i8] c"qla_dfs_rport_field_nvme_flag_fops\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 97, i32 1 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 131, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant [39 x i8] c"qla_dfs_rport_field_last_rscn_gen_fops\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 98, i32 1 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 132, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant [34 x i8] c"qla_dfs_rport_field_rscn_gen_fops\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 99, i32 1 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 133, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant [35 x i8] c"qla_dfs_rport_field_login_gen_fops\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 100, i32 1 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 134, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant [33 x i8] c"qla_dfs_rport_field_loop_id_fops\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 101, i32 1 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 135, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant [33 x i8] c"qla_dfs_rport_field_port_id_fops\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 102, i32 1 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 136, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant [35 x i8] c"qla_dfs_rport_field_sess_kref_fops\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 103, i32 1 }
@___asan_gen_.176 = private unnamed_addr constant [17 x i8] c"qla2x00_dfs_root\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 11, i32 23 }
@___asan_gen_.179 = private unnamed_addr constant [23 x i8] c"qla2x00_dfs_root_count\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 12, i32 17 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 572, i32 40 }
@___asan_gen_.185 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 578, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 584, i32 48 }
@___asan_gen_.194 = private unnamed_addr constant [29 x i8] c"qla_dfs_fw_resource_cnt_fops\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 278, i32 1 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 587, i32 45 }
@___asan_gen_.200 = private unnamed_addr constant [26 x i8] c"qla_dfs_tgt_counters_fops\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 383, i32 1 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 590, i32 54 }
@___asan_gen_.206 = private unnamed_addr constant [35 x i8] c"qla2x00_dfs_tgt_port_database_fops\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 229, i32 1 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 593, i32 36 }
@___asan_gen_.212 = private unnamed_addr constant [12 x i8] c"dfs_fce_ops\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 475, i32 37 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 596, i32 45 }
@___asan_gen_.218 = private unnamed_addr constant [26 x i8] c"qla2x00_dfs_tgt_sess_fops\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 173, i32 1 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 600, i32 42 }
@___asan_gen_.224 = private unnamed_addr constant [13 x i8] c"dfs_naqp_ops\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 548, i32 37 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 604, i32 11 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 608, i32 43 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 611, i32 10 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 90, i32 1 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 242, i32 17 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 244, i32 15 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 245, i32 17 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 246, i32 17 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 247, i32 17 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 248, i32 17 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 249, i32 17 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 250, i32 17 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 251, i32 17 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 252, i32 17 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 253, i32 17 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 255, i32 17 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 257, i32 17 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 259, i32 17 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 271, i32 17 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 321, i32 14 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 322, i32 16 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 324, i32 16 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 326, i32 16 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 328, i32 16 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 330, i32 16 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 332, i32 16 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 334, i32 16 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 336, i32 16 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 338, i32 16 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 342, i32 16 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 344, i32 16 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 346, i32 16 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 348, i32 16 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 350, i32 16 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 352, i32 16 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 354, i32 16 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 357, i32 14 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 358, i32 14 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 359, i32 16 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 361, i32 16 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 363, i32 16 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 365, i32 16 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 367, i32 16 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 375, i32 17 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 187, i32 16 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 193, i32 10 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 205, i32 14 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 216, i32 17 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 438, i32 7 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 396, i32 14 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 397, i32 16 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 398, i32 16 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 399, i32 14 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 400, i32 16 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 408, i32 18 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 412, i32 17 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 415, i32 14 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 466, i32 7 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 159, i32 15 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 163, i32 18 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 512, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 518, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 524, i32 3 }
@___asan_gen_.431 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 532, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.438 = private constant [34 x i8] c"../drivers/scsi/qla2xxx/qla_dfs.c\00", align 1
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 488, i32 16 }
@llvm.compiler.used = appending global [119 x ptr] [ptr @qla_dfs_naqp_write._entry, ptr @qla_dfs_naqp_write._entry.85, ptr @qla_dfs_naqp_write._entry.88, ptr @qla_dfs_naqp_write._entry.91, ptr @qla_dfs_naqp_write._entry_ptr, ptr @qla_dfs_naqp_write._entry_ptr.87, ptr @qla_dfs_naqp_write._entry_ptr.90, ptr @qla_dfs_naqp_write._entry_ptr.93, ptr @.str, ptr @.str.1, ptr @qla_dfs_rport_dev_loss_tmo_fops, ptr @.str.2, ptr @qla_dfs_rport_field_disc_state_fops, ptr @.str.3, ptr @qla_dfs_rport_field_scan_state_fops, ptr @.str.4, ptr @qla_dfs_rport_field_fw_login_state_fops, ptr @.str.5, ptr @qla_dfs_rport_field_login_pause_fops, ptr @.str.6, ptr @qla_dfs_rport_field_flags_fops, ptr @.str.7, ptr @qla_dfs_rport_field_nvme_flag_fops, ptr @.str.8, ptr @qla_dfs_rport_field_last_rscn_gen_fops, ptr @.str.9, ptr @qla_dfs_rport_field_rscn_gen_fops, ptr @.str.10, ptr @qla_dfs_rport_field_login_gen_fops, ptr @.str.11, ptr @qla_dfs_rport_field_loop_id_fops, ptr @.str.12, ptr @qla_dfs_rport_field_port_id_fops, ptr @.str.13, ptr @qla_dfs_rport_field_sess_kref_fops, ptr @qla2x00_dfs_root, ptr @qla2x00_dfs_root_count, ptr @.str.14, ptr @qla2x00_dfs_setup.__key, ptr @.str.15, ptr @.str.16, ptr @qla_dfs_fw_resource_cnt_fops, ptr @.str.17, ptr @qla_dfs_tgt_counters_fops, ptr @.str.18, ptr @qla2x00_dfs_tgt_port_database_fops, ptr @.str.19, ptr @dfs_fce_ops, ptr @.str.20, ptr @qla2x00_dfs_tgt_sess_fops, ptr @.str.21, ptr @dfs_naqp_ops, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.86, ptr @.str.89, ptr @.str.92, ptr @.str.94], section "llvm.metadata"
@0 = internal global [115 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla_dfs_rport_dev_loss_tmo_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla_dfs_rport_field_disc_state_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla_dfs_rport_field_scan_state_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla_dfs_rport_field_fw_login_state_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla_dfs_rport_field_login_pause_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla_dfs_rport_field_flags_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla_dfs_rport_field_nvme_flag_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla_dfs_rport_field_last_rscn_gen_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla_dfs_rport_field_rscn_gen_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla_dfs_rport_field_login_gen_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla_dfs_rport_field_loop_id_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla_dfs_rport_field_port_id_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla_dfs_rport_field_sess_kref_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla2x00_dfs_root to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla2x00_dfs_root_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla2x00_dfs_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla_dfs_fw_resource_cnt_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla_dfs_tgt_counters_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla2x00_dfs_tgt_port_database_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfs_fce_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla2x00_dfs_tgt_sess_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfs_naqp_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla_dfs_naqp_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla_dfs_naqp_write._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla_dfs_naqp_write._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qla_dfs_naqp_write._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla2x00_dfs_create_rport(ptr nocapture noundef readonly %vha, ptr noundef %fp) local_unnamed_addr #0 align 64 {
entry:
  %wwn = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %wwn) #9
  %dfs_rport_root = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 68
  %0 = call ptr @memset(ptr %wwn, i32 255, i32 32)
  %1 = ptrtoint ptr %dfs_rport_root to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dfs_rport_root, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %dfs_rport_dir = getelementptr inbounds %struct.fc_port, ptr %fp, i32 0, i32 68
  %3 = ptrtoint ptr %dfs_rport_dir to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dfs_rport_dir, align 8
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %port_name = getelementptr inbounds %struct.fc_port, ptr %fp, i32 0, i32 5
  %5 = ptrtoint ptr %port_name to i32
  call void @__asan_loadN_noabort(i32 %5, i32 8)
  %6 = load i64, ptr %port_name, align 1
  %call3 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %wwn, ptr noundef nonnull @.str, i64 noundef %6)
  %7 = ptrtoint ptr %dfs_rport_root to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dfs_rport_root, align 4
  %call6 = call ptr @debugfs_create_dir(ptr noundef nonnull %wwn, ptr noundef %8) #9
  %9 = ptrtoint ptr %dfs_rport_dir to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call6, ptr %dfs_rport_dir, align 8
  %tobool9.not = icmp eq ptr %call6, null
  br i1 %tobool9.not, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %do_prli_nvme = getelementptr inbounds %struct.fc_port, ptr %fp, i32 0, i32 2
  %10 = ptrtoint ptr %do_prli_nvme to i32
  call void @__asan_loadN_noabort(i32 %10, i32 3)
  %bf.load = load i24, ptr %do_prli_nvme, align 4
  %11 = and i24 %bf.load, 64
  %tobool12.not = icmp eq i24 %11, 0
  br i1 %tobool12.not, label %lor.lhs.false13, label %if.end11.if.then19_crit_edge

if.end11.if.then19_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19

lor.lhs.false13:                                  ; preds = %if.end11
  %fc4_type = getelementptr inbounds %struct.fc_port, ptr %fp, i32 0, i32 40
  %12 = ptrtoint ptr %fc4_type to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %fc4_type, align 4
  %14 = and i8 %13, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %14)
  %15 = icmp eq i8 %14, 2
  br i1 %15, label %lor.lhs.false13.if.then19_crit_edge, label %lor.lhs.false13.if.end22_crit_edge

lor.lhs.false13.if.end22_crit_edge:               ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

lor.lhs.false13.if.then19_crit_edge:              ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19

if.then19:                                        ; preds = %lor.lhs.false13.if.then19_crit_edge, %if.end11.if.then19_crit_edge
  %call21 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.1, i16 noundef zeroext 384, ptr noundef nonnull %call6, ptr noundef %fp, ptr noundef nonnull @qla_dfs_rport_dev_loss_tmo_fops) #9
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %lor.lhs.false13.if.end22_crit_edge
  %16 = ptrtoint ptr %dfs_rport_dir to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dfs_rport_dir, align 8
  %call24 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.2, i16 noundef zeroext 256, ptr noundef %17, ptr noundef %fp, ptr noundef nonnull @qla_dfs_rport_field_disc_state_fops) #9
  %18 = ptrtoint ptr %dfs_rport_dir to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dfs_rport_dir, align 8
  %call26 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.3, i16 noundef zeroext 256, ptr noundef %19, ptr noundef %fp, ptr noundef nonnull @qla_dfs_rport_field_scan_state_fops) #9
  %20 = ptrtoint ptr %dfs_rport_dir to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dfs_rport_dir, align 8
  %call28 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.4, i16 noundef zeroext 256, ptr noundef %21, ptr noundef %fp, ptr noundef nonnull @qla_dfs_rport_field_fw_login_state_fops) #9
  %22 = ptrtoint ptr %dfs_rport_dir to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dfs_rport_dir, align 8
  %call30 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.5, i16 noundef zeroext 256, ptr noundef %23, ptr noundef %fp, ptr noundef nonnull @qla_dfs_rport_field_login_pause_fops) #9
  %24 = ptrtoint ptr %dfs_rport_dir to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dfs_rport_dir, align 8
  %call32 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.6, i16 noundef zeroext 256, ptr noundef %25, ptr noundef %fp, ptr noundef nonnull @qla_dfs_rport_field_flags_fops) #9
  %26 = ptrtoint ptr %dfs_rport_dir to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dfs_rport_dir, align 8
  %call34 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.7, i16 noundef zeroext 256, ptr noundef %27, ptr noundef %fp, ptr noundef nonnull @qla_dfs_rport_field_nvme_flag_fops) #9
  %28 = ptrtoint ptr %dfs_rport_dir to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dfs_rport_dir, align 8
  %call36 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.8, i16 noundef zeroext 256, ptr noundef %29, ptr noundef %fp, ptr noundef nonnull @qla_dfs_rport_field_last_rscn_gen_fops) #9
  %30 = ptrtoint ptr %dfs_rport_dir to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dfs_rport_dir, align 8
  %call38 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.9, i16 noundef zeroext 256, ptr noundef %31, ptr noundef %fp, ptr noundef nonnull @qla_dfs_rport_field_rscn_gen_fops) #9
  %32 = ptrtoint ptr %dfs_rport_dir to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dfs_rport_dir, align 8
  %call40 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.10, i16 noundef zeroext 256, ptr noundef %33, ptr noundef %fp, ptr noundef nonnull @qla_dfs_rport_field_login_gen_fops) #9
  %34 = ptrtoint ptr %dfs_rport_dir to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dfs_rport_dir, align 8
  %call42 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.11, i16 noundef zeroext 256, ptr noundef %35, ptr noundef %fp, ptr noundef nonnull @qla_dfs_rport_field_loop_id_fops) #9
  %36 = ptrtoint ptr %dfs_rport_dir to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dfs_rport_dir, align 8
  %call44 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.12, i16 noundef zeroext 256, ptr noundef %37, ptr noundef %fp, ptr noundef nonnull @qla_dfs_rport_field_port_id_fops) #9
  %38 = ptrtoint ptr %dfs_rport_dir to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dfs_rport_dir, align 8
  %call46 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.13, i16 noundef zeroext 256, ptr noundef %39, ptr noundef %fp, ptr noundef nonnull @qla_dfs_rport_field_sess_kref_fops) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %wwn) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qla2x00_dfs_remove_rport(ptr nocapture noundef readonly %vha, ptr nocapture noundef %fp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dfs_rport_root = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 68
  %0 = ptrtoint ptr %dfs_rport_root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dfs_rport_root, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %dfs_rport_dir = getelementptr inbounds %struct.fc_port, ptr %fp, i32 0, i32 68
  %2 = ptrtoint ptr %dfs_rport_dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dfs_rport_dir, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @debugfs_remove(ptr noundef nonnull %3) #9
  %4 = ptrtoint ptr %dfs_rport_dir to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %dfs_rport_dir, align 8
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla2x00_dfs_setup(ptr noundef %vha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %isp_type, align 8
  %4 = and i32 %3, 45721600
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %fce = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 186
  %6 = ptrtoint ptr %fce to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fce, align 32
  %tobool40.not = icmp eq ptr %7, null
  br i1 %tobool40.not, label %if.end.out_crit_edge, label %if.end42

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end42:                                         ; preds = %if.end
  %8 = load ptr, ptr @qla2x00_dfs_root, align 4
  %tobool43.not = icmp eq ptr %8, null
  br i1 %tobool43.not, label %if.end45, label %if.end42.create_dir_crit_edge

if.end42.create_dir_crit_edge:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %create_dir

if.end45:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @qla2x00_dfs_root_count, i32 noundef 4) #9
  store volatile i32 0, ptr @qla2x00_dfs_root_count, align 4
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.14, ptr noundef null) #9
  store ptr %call, ptr @qla2x00_dfs_root, align 4
  br label %create_dir

create_dir:                                       ; preds = %if.end45, %if.end42.create_dir_crit_edge
  %dfs_dir = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 181
  %9 = ptrtoint ptr %dfs_dir to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dfs_dir, align 4
  %tobool46.not = icmp eq ptr %10, null
  br i1 %tobool46.not, label %do.body, label %create_dir.create_nodes_crit_edge

create_dir.create_nodes_crit_edge:                ; preds = %create_dir
  call void @__sanitizer_cov_trace_pc() #11
  br label %create_nodes

do.body:                                          ; preds = %create_dir
  call void @__sanitizer_cov_trace_pc() #11
  %fce_mutex = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 191
  tail call void @__mutex_init(ptr noundef %fce_mutex, ptr noundef nonnull @.str.15, ptr noundef nonnull @qla2x00_dfs_setup.__key) #9
  %host_str = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 7
  %11 = load ptr, ptr @qla2x00_dfs_root, align 4
  %call49 = tail call ptr @debugfs_create_dir(ptr noundef %host_str, ptr noundef %11) #9
  %12 = ptrtoint ptr %dfs_dir to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call49, ptr %dfs_dir, align 4
  %call.i.i169 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @qla2x00_dfs_root_count, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr nonnull @qla2x00_dfs_root_count, i32 1, i32 3, i32 1) #9
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @qla2x00_dfs_root_count, ptr nonnull @qla2x00_dfs_root_count, i32 1, ptr nonnull elementtype(i32) @qla2x00_dfs_root_count) #9, !srcloc !235
  br label %create_nodes

create_nodes:                                     ; preds = %do.body, %create_dir.create_nodes_crit_edge
  %14 = ptrtoint ptr %dfs_dir to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dfs_dir, align 4
  %call52 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.16, i16 noundef zeroext 256, ptr noundef %15, ptr noundef %vha, ptr noundef nonnull @qla_dfs_fw_resource_cnt_fops) #9
  %dfs_fw_resource_cnt = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 184
  %16 = ptrtoint ptr %dfs_fw_resource_cnt to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call52, ptr %dfs_fw_resource_cnt, align 8
  %17 = ptrtoint ptr %dfs_dir to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dfs_dir, align 4
  %call54 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.17, i16 noundef zeroext 256, ptr noundef %18, ptr noundef %vha, ptr noundef nonnull @qla_dfs_tgt_counters_fops) #9
  %dfs_tgt_counters = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 183
  %19 = ptrtoint ptr %dfs_tgt_counters to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call54, ptr %dfs_tgt_counters, align 4
  %20 = ptrtoint ptr %dfs_dir to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dfs_dir, align 4
  %call56 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.18, i16 noundef zeroext 256, ptr noundef %21, ptr noundef %vha, ptr noundef nonnull @qla2x00_dfs_tgt_port_database_fops) #9
  %dfs_tgt_port_database = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 281, i32 19
  %22 = ptrtoint ptr %dfs_tgt_port_database to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call56, ptr %dfs_tgt_port_database, align 8
  %23 = ptrtoint ptr %dfs_dir to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dfs_dir, align 4
  %call58 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.19, i16 noundef zeroext 256, ptr noundef %24, ptr noundef %vha, ptr noundef nonnull @dfs_fce_ops) #9
  %dfs_fce = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 182
  %25 = ptrtoint ptr %dfs_fce to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call58, ptr %dfs_fce, align 16
  %26 = ptrtoint ptr %dfs_dir to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dfs_dir, align 4
  %call60 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.20, i16 noundef zeroext 256, ptr noundef %27, ptr noundef %vha, ptr noundef nonnull @qla2x00_dfs_tgt_sess_fops) #9
  %dfs_tgt_sess = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 281, i32 18
  %28 = ptrtoint ptr %dfs_tgt_sess to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call60, ptr %dfs_tgt_sess, align 4
  %29 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %isp_type, align 8
  %31 = and i32 %30, 45711360
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %create_nodes.if.end105_crit_edge, label %if.then96

create_nodes.if.end105_crit_edge:                 ; preds = %create_nodes
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105

if.then96:                                        ; preds = %create_nodes
  %33 = ptrtoint ptr %dfs_dir to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dfs_dir, align 4
  %call98 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.21, i16 noundef zeroext 256, ptr noundef %34, ptr noundef %vha, ptr noundef nonnull @dfs_naqp_ops) #9
  %dfs_naqp = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 281, i32 20
  %35 = ptrtoint ptr %dfs_naqp to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call98, ptr %dfs_naqp, align 4
  %tobool102.not = icmp eq ptr %call98, null
  br i1 %tobool102.not, label %if.then103, label %if.then96.if.end105_crit_edge

if.then96.if.end105_crit_edge:                    ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105

if.then103:                                       ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 53265, ptr noundef nonnull @.str.22) #9
  br label %out

if.end105:                                        ; preds = %if.then96.if.end105_crit_edge, %create_nodes.if.end105_crit_edge
  %36 = ptrtoint ptr %dfs_dir to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dfs_dir, align 4
  %call107 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.23, ptr noundef %37) #9
  %dfs_rport_root = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 68
  %38 = ptrtoint ptr %dfs_rport_root to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call107, ptr %dfs_rport_root, align 4
  %tobool109.not = icmp eq ptr %call107, null
  br i1 %tobool109.not, label %if.then110, label %if.end105.out_crit_edge

if.end105.out_crit_edge:                          ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then110:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_log(i32 noundef 1, ptr noundef %vha, i32 noundef 53266, ptr noundef nonnull @.str.24) #9
  br label %out

out:                                              ; preds = %if.then110, %if.end105.out_crit_edge, %if.then103, %if.end.out_crit_edge, %entry.out_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ql_log(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla2x00_dfs_remove(ptr nocapture noundef %vha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 52
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %dfs_naqp = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 281, i32 20
  %2 = ptrtoint ptr %dfs_naqp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dfs_naqp, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @debugfs_remove(ptr noundef nonnull %3) #9
  %4 = ptrtoint ptr %dfs_naqp to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %dfs_naqp, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dfs_tgt_sess = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 281, i32 18
  %5 = ptrtoint ptr %dfs_tgt_sess to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dfs_tgt_sess, align 4
  %tobool6.not = icmp eq ptr %6, null
  br i1 %tobool6.not, label %if.end.if.end12_crit_edge, label %if.then7

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @debugfs_remove(ptr noundef nonnull %6) #9
  %7 = ptrtoint ptr %dfs_tgt_sess to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %dfs_tgt_sess, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %if.end.if.end12_crit_edge
  %dfs_tgt_port_database = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 281, i32 19
  %8 = ptrtoint ptr %dfs_tgt_port_database to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dfs_tgt_port_database, align 8
  %tobool14.not = icmp eq ptr %9, null
  br i1 %tobool14.not, label %if.end12.if.end20_crit_edge, label %if.then15

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @debugfs_remove(ptr noundef nonnull %9) #9
  %10 = ptrtoint ptr %dfs_tgt_port_database to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %dfs_tgt_port_database, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %if.end12.if.end20_crit_edge
  %dfs_fw_resource_cnt = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 184
  %11 = ptrtoint ptr %dfs_fw_resource_cnt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dfs_fw_resource_cnt, align 8
  %tobool21.not = icmp eq ptr %12, null
  br i1 %tobool21.not, label %if.end20.if.end25_crit_edge, label %if.then22

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @debugfs_remove(ptr noundef nonnull %12) #9
  %13 = ptrtoint ptr %dfs_fw_resource_cnt to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %dfs_fw_resource_cnt, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end20.if.end25_crit_edge
  %dfs_tgt_counters = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 183
  %14 = ptrtoint ptr %dfs_tgt_counters to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dfs_tgt_counters, align 4
  %tobool26.not = icmp eq ptr %15, null
  br i1 %tobool26.not, label %if.end25.if.end30_crit_edge, label %if.then27

if.end25.if.end30_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @debugfs_remove(ptr noundef nonnull %15) #9
  %16 = ptrtoint ptr %dfs_tgt_counters to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %dfs_tgt_counters, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end25.if.end30_crit_edge
  %dfs_fce = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 182
  %17 = ptrtoint ptr %dfs_fce to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dfs_fce, align 16
  %tobool31.not = icmp eq ptr %18, null
  br i1 %tobool31.not, label %if.end30.if.end35_crit_edge, label %if.then32

if.end30.if.end35_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @debugfs_remove(ptr noundef nonnull %18) #9
  %19 = ptrtoint ptr %dfs_fce to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %dfs_fce, align 16
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.end30.if.end35_crit_edge
  %dfs_rport_root = getelementptr inbounds %struct.scsi_qla_host, ptr %vha, i32 0, i32 68
  %20 = ptrtoint ptr %dfs_rport_root to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dfs_rport_root, align 4
  %tobool36.not = icmp eq ptr %21, null
  br i1 %tobool36.not, label %if.end35.if.end40_crit_edge, label %if.then37

if.end35.if.end40_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @debugfs_remove(ptr noundef nonnull %21) #9
  %22 = ptrtoint ptr %dfs_rport_root to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %dfs_rport_root, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %if.end35.if.end40_crit_edge
  %dfs_dir = getelementptr inbounds %struct.qla_hw_data, ptr %1, i32 0, i32 181
  %23 = ptrtoint ptr %dfs_dir to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dfs_dir, align 4
  %tobool41.not = icmp eq ptr %24, null
  br i1 %tobool41.not, label %if.end40.if.end45_crit_edge, label %if.then42

if.end40.if.end45_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then42:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @debugfs_remove(ptr noundef nonnull %24) #9
  %25 = ptrtoint ptr %dfs_dir to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %dfs_dir, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @qla2x00_dfs_root_count, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr nonnull @qla2x00_dfs_root_count, i32 1, i32 3, i32 1) #9
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @qla2x00_dfs_root_count, ptr nonnull @qla2x00_dfs_root_count, i32 1, ptr nonnull elementtype(i32) @qla2x00_dfs_root_count) #9, !srcloc !236
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %if.end40.if.end45_crit_edge
  %call.i.i80 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @qla2x00_dfs_root_count, i32 noundef 4) #9
  %27 = load volatile i32, ptr @qla2x00_dfs_root_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp = icmp eq i32 %27, 0
  br i1 %cmp, label %land.lhs.true, label %if.end45.if.end48_crit_edge

if.end45.if.end48_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

land.lhs.true:                                    ; preds = %if.end45
  %28 = load ptr, ptr @qla2x00_dfs_root, align 4
  %tobool46.not = icmp eq ptr %28, null
  br i1 %tobool46.not, label %land.lhs.true.if.end48_crit_edge, label %if.then47

land.lhs.true.if.end48_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then47:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @debugfs_remove(ptr noundef nonnull %28) #9
  store ptr null, ptr @qla2x00_dfs_root, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %land.lhs.true.if.end48_crit_edge, %if.end45.if.end48_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla_dfs_rport_dev_loss_tmo_fops_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @qla_dfs_rport_dev_loss_tmo_get, ptr noundef nonnull @qla_dfs_rport_dev_loss_tmo_set, ptr noundef nonnull @.str.25) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_release(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qla_dfs_rport_dev_loss_tmo_get(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %val) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %nvme_flag.i = getelementptr inbounds %struct.fc_port, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %nvme_flag.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nvme_flag.i, align 1
  %2 = and i8 %1, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %entry.qla_dfs_rport_get.exit_crit_edge, label %if.end.i

entry.qla_dfs_rport_get.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %qla_dfs_rport_get.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %nvme_remote_port.i = getelementptr inbounds %struct.fc_port, ptr %data, i32 0, i32 46
  %3 = ptrtoint ptr %nvme_remote_port.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nvme_remote_port.i, align 4
  %dev_loss_tmo.i = getelementptr inbounds %struct.nvme_fc_remote_port, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %dev_loss_tmo.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dev_loss_tmo.i, align 8
  %conv1.i = zext i32 %6 to i64
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %conv1.i, ptr %val, align 8
  br label %qla_dfs_rport_get.exit

qla_dfs_rport_get.exit:                           ; preds = %if.end.i, %entry.qla_dfs_rport_get.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -5, %entry.qla_dfs_rport_get.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla_dfs_rport_dev_loss_tmo_set(ptr nocapture noundef readonly %data, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %nvme_flag.i = getelementptr inbounds %struct.fc_port, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %nvme_flag.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nvme_flag.i, align 1
  %2 = and i8 %1, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %entry.qla_dfs_rport_set.exit_crit_edge, label %if.end.i

entry.qla_dfs_rport_set.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %qla_dfs_rport_set.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %nvme_remote_port.i = getelementptr inbounds %struct.fc_port, ptr %data, i32 0, i32 46
  %3 = ptrtoint ptr %nvme_remote_port.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nvme_remote_port.i, align 4
  %conv1.i = trunc i64 %val to i32
  %call.i = tail call i32 @nvme_fc_set_remoteport_devloss(ptr noundef %4, i32 noundef %conv1.i) #9
  br label %qla_dfs_rport_set.exit

qla_dfs_rport_set.exit:                           ; preds = %if.end.i, %entry.qla_dfs_rport_set.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end.i ], [ -5, %entry.qla_dfs_rport_set.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_fc_set_remoteport_devloss(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla_dfs_rport_field_disc_state_fops_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @qla_dfs_rport_field_disc_state_get, ptr noundef null, ptr noundef nonnull @.str.25) #9
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qla_dfs_rport_field_disc_state_get(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %val) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %disc_state = getelementptr inbounds %struct.fc_port, ptr %data, i32 0, i32 50
  %0 = ptrtoint ptr %disc_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %disc_state, align 8
  %conv = zext i32 %1 to i64
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %val, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla_dfs_rport_field_scan_state_fops_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @qla_dfs_rport_field_scan_state_get, ptr noundef null, ptr noundef nonnull @.str.25) #9
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qla_dfs_rport_field_scan_state_get(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %val) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %scan_state = getelementptr inbounds %struct.fc_port, ptr %data, i32 0, i32 42
  %0 = ptrtoint ptr %scan_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %scan_state, align 2
  %conv = zext i8 %1 to i64
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %val, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla_dfs_rport_field_fw_login_state_fops_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @qla_dfs_rport_field_fw_login_state_get, ptr noundef null, ptr noundef nonnull @.str.25) #9
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qla_dfs_rport_field_fw_login_state_get(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %val) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_login_state = getelementptr inbounds %struct.fc_port, ptr %data, i32 0, i32 53
  %0 = ptrtoint ptr %fw_login_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw_login_state, align 4
  %conv = zext i32 %1 to i64
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %val, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla_dfs_rport_field_login_pause_fops_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @qla_dfs_rport_field_login_pause_get, ptr noundef null, ptr noundef nonnull @.str.25) #9
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qla_dfs_rport_field_login_pause_get(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %val) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %login_pause = getelementptr inbounds %struct.fc_port, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %login_pause to i32
  call void @__asan_loadN_noabort(i32 %0, i32 3)
  %bf.load = load i24, ptr %login_pause, align 4
  %bf.lshr = lshr i24 %bf.load, 14
  %bf.clear = and i24 %bf.lshr, 1
  %conv = zext i24 %bf.clear to i64
  %1 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %conv, ptr %val, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla_dfs_rport_field_flags_fops_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @qla_dfs_rport_field_flags_get, ptr noundef null, ptr noundef nonnull @.str.25) #9
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qla_dfs_rport_field_flags_get(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %val) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.fc_port, ptr %data, i32 0, i32 35
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %conv = zext i32 %1 to i64
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %val, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla_dfs_rport_field_nvme_flag_fops_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @qla_dfs_rport_field_nvme_flag_get, ptr noundef null, ptr noundef nonnull @.str.25) #9
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qla_dfs_rport_field_nvme_flag_get(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %val) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %nvme_flag = getelementptr inbounds %struct.fc_port, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %nvme_flag to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nvme_flag, align 1
  %conv = zext i8 %1 to i64
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %val, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla_dfs_rport_field_last_rscn_gen_fops_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @qla_dfs_rport_field_last_rscn_gen_get, ptr noundef null, ptr noundef nonnull @.str.25) #9
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qla_dfs_rport_field_last_rscn_gen_get(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %val) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %last_rscn_gen = getelementptr inbounds %struct.fc_port, ptr %data, i32 0, i32 59
  %0 = ptrtoint ptr %last_rscn_gen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %last_rscn_gen, align 4
  %conv = zext i32 %1 to i64
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %val, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla_dfs_rport_field_rscn_gen_fops_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @qla_dfs_rport_field_rscn_gen_get, ptr noundef null, ptr noundef nonnull @.str.25) #9
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qla_dfs_rport_field_rscn_gen_get(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %val) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rscn_gen = getelementptr inbounds %struct.fc_port, ptr %data, i32 0, i32 58
  %0 = ptrtoint ptr %rscn_gen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rscn_gen, align 8
  %conv = zext i32 %1 to i64
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %val, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla_dfs_rport_field_login_gen_fops_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @qla_dfs_rport_field_login_gen_get, ptr noundef null, ptr noundef nonnull @.str.25) #9
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qla_dfs_rport_field_login_gen_get(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %val) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %login_gen = getelementptr inbounds %struct.fc_port, ptr %data, i32 0, i32 56
  %0 = ptrtoint ptr %login_gen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %login_gen, align 8
  %conv = zext i32 %1 to i64
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %val, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla_dfs_rport_field_loop_id_fops_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @qla_dfs_rport_field_loop_id_get, ptr noundef null, ptr noundef nonnull @.str.25) #9
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qla_dfs_rport_field_loop_id_get(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %val) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %loop_id = getelementptr inbounds %struct.fc_port, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %loop_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %loop_id, align 4
  %conv = zext i16 %1 to i64
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %val, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla_dfs_rport_field_port_id_fops_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @qla_dfs_rport_field_port_id_get, ptr noundef null, ptr noundef nonnull @.str.25) #9
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qla_dfs_rport_field_port_id_get(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %val) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %d_id = getelementptr inbounds %struct.fc_port, ptr %data, i32 0, i32 6
  %0 = ptrtoint ptr %d_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %d_id, align 8
  %bf.lshr = lshr i32 %bf.load, 8
  %conv = zext i32 %bf.lshr to i64
  %1 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %conv, ptr %val, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla_dfs_rport_field_sess_kref_fops_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @qla_dfs_rport_field_sess_kref_get, ptr noundef null, ptr noundef nonnull @.str.25) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla_dfs_rport_field_sess_kref_get(ptr noundef %data, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sess_kref = getelementptr inbounds %struct.fc_port, ptr %data, i32 0, i32 18
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sess_kref, i32 noundef 4) #9
  %0 = ptrtoint ptr %sess_kref to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %sess_kref, align 4
  %conv = zext i32 %1 to i64
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %val, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla_dfs_fw_resource_cnt_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @qla_dfs_fw_resource_cnt_show, ptr noundef %1) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla_dfs_fw_resource_cnt_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  %mb = alloca [28 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %mb) #9
  %2 = call ptr @memset(ptr %mb, i32 255, i32 56)
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 52
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 4
  %call = call i32 @qla24xx_res_count_wait(ptr noundef %1, ptr noundef nonnull %mb, i32 noundef 56) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %mb to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %mb, align 2
  %conv = zext i16 %6 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.26, i32 noundef %call, i32 noundef %conv) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.27) #9
  %arrayidx1 = getelementptr inbounds [28 x i16], ptr %mb, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx1, align 2
  %conv2 = zext i16 %8 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.28, i32 noundef %conv2) #9
  %arrayidx3 = getelementptr inbounds [28 x i16], ptr %mb, i32 0, i32 2
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx3, align 2
  %conv4 = zext i16 %10 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.29, i32 noundef %conv4) #9
  %arrayidx5 = getelementptr inbounds [28 x i16], ptr %mb, i32 0, i32 3
  %11 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx5, align 2
  %conv6 = zext i16 %12 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.30, i32 noundef %conv6) #9
  %arrayidx7 = getelementptr inbounds [28 x i16], ptr %mb, i32 0, i32 6
  %13 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx7, align 2
  %conv8 = zext i16 %14 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.31, i32 noundef %conv8) #9
  %arrayidx9 = getelementptr inbounds [28 x i16], ptr %mb, i32 0, i32 7
  %15 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx9, align 2
  %conv10 = zext i16 %16 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.32, i32 noundef %conv10) #9
  %arrayidx11 = getelementptr inbounds [28 x i16], ptr %mb, i32 0, i32 10
  %17 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx11, align 2
  %conv12 = zext i16 %18 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.33, i32 noundef %conv12) #9
  %arrayidx13 = getelementptr inbounds [28 x i16], ptr %mb, i32 0, i32 11
  %19 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx13, align 2
  %conv14 = zext i16 %20 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.34, i32 noundef %conv14) #9
  %arrayidx15 = getelementptr inbounds [28 x i16], ptr %mb, i32 0, i32 12
  %21 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx15, align 2
  %conv16 = zext i16 %22 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.35, i32 noundef %conv16) #9
  %arrayidx17 = getelementptr inbounds [28 x i16], ptr %mb, i32 0, i32 20
  %23 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx17, align 2
  %conv18 = zext i16 %24 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.36, i32 noundef %conv18) #9
  %arrayidx19 = getelementptr inbounds [28 x i16], ptr %mb, i32 0, i32 21
  %25 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx19, align 2
  %conv20 = zext i16 %26 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.37, i32 noundef %conv20) #9
  %arrayidx21 = getelementptr inbounds [28 x i16], ptr %mb, i32 0, i32 22
  %27 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx21, align 2
  %conv22 = zext i16 %28 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.38, i32 noundef %conv22) #9
  %arrayidx23 = getelementptr inbounds [28 x i16], ptr %mb, i32 0, i32 23
  %29 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx23, align 2
  %conv24 = zext i16 %30 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.39, i32 noundef %conv24) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql2xenforce_iocb_limit to i32))
  %31 = load i32, ptr @ql2xenforce_iocb_limit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not = icmp eq i32 %31, 0
  br i1 %tobool.not, label %if.end.if.end47_crit_edge, label %if.then25

if.end.if.end47_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.then25:                                        ; preds = %if.end
  %base_qpair = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 34
  %32 = ptrtoint ptr %base_qpair to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base_qpair, align 4
  %iocbs_used26 = getelementptr inbounds %struct.qla_qpair, ptr %33, i32 0, i32 27, i32 3
  %34 = ptrtoint ptr %iocbs_used26 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %iocbs_used26, align 2
  %max_qpairs = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 32
  %36 = ptrtoint ptr %max_qpairs to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %max_qpairs, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp2973.not = icmp eq i8 %37, 0
  br i1 %cmp2973.not, label %if.then25.for.end_crit_edge, label %for.body.lr.ph

if.then25.for.end_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then25
  %queue_pair_map = getelementptr inbounds %struct.qla_hw_data, ptr %4, i32 0, i32 26
  %38 = ptrtoint ptr %queue_pair_map to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %queue_pair_map, align 4
  %wide.trip.count = zext i8 %37 to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %iocbs_used.074 = phi i16 [ %35, %for.body.lr.ph ], [ %iocbs_used.1, %for.inc.for.body_crit_edge ]
  %arrayidx31 = getelementptr ptr, ptr %39, i32 %indvars.iv
  %40 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx31, align 4
  %tobool32.not = icmp eq ptr %41, null
  br i1 %tobool32.not, label %for.body.for.inc_crit_edge, label %if.then33

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then33:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %iocbs_used38 = getelementptr inbounds %struct.qla_qpair, ptr %41, i32 0, i32 27, i32 3
  %42 = ptrtoint ptr %iocbs_used38 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %iocbs_used38, align 2
  %add = add i16 %43, %iocbs_used.074
  br label %for.inc

for.inc:                                          ; preds = %if.then33, %for.body.for.inc_crit_edge
  %iocbs_used.1 = phi i16 [ %add, %if.then33 ], [ %iocbs_used.074, %for.body.for.inc_crit_edge ]
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then25.for.end_crit_edge
  %iocbs_used.0.lcssa = phi i16 [ %35, %if.then25.for.end_crit_edge ], [ %iocbs_used.1, %for.inc.for.end_crit_edge ]
  %conv43 = zext i16 %iocbs_used.0.lcssa to i32
  %iocbs_limit = getelementptr inbounds %struct.qla_qpair, ptr %33, i32 0, i32 27, i32 1
  %44 = ptrtoint ptr %iocbs_limit to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %iocbs_limit, align 2
  %conv46 = zext i16 %45 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.40, i32 noundef %conv43, i32 noundef %conv46) #9
  br label %if.end47

if.end47:                                         ; preds = %for.end, %if.end.if.end47_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %mb) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla24xx_res_count_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla_dfs_tgt_counters_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @qla_dfs_tgt_counters_show, ptr noundef %1) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla_dfs_tgt_counters_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 52
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %base_qpair = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 34
  %4 = ptrtoint ptr %base_qpair to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base_qpair, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 128
  %driver_data.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %dpc_flags.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %dpc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %dpc_flags.i.i, align 4
  %12 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %entry
  %13 = ptrtoint ptr %dpc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %dpc_flags.i.i, align 4
  %15 = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool4.not.i.i = icmp eq i32 %15, 0
  br i1 %tobool4.not.i.i, label %lor.lhs.false5.i.i, label %lor.lhs.false.i.i.cleanup_crit_edge

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false5.i.i:                               ; preds = %lor.lhs.false.i.i
  %16 = ptrtoint ptr %dpc_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %dpc_flags.i.i, align 4
  %18 = and i32 %17, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool8.not.i.i = icmp eq i32 %18, 0
  br i1 %tobool8.not.i.i, label %lor.lhs.false9.i.i, label %lor.lhs.false5.i.i.cleanup_crit_edge

lor.lhs.false5.i.i.cleanup_crit_edge:             ; preds = %lor.lhs.false5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false9.i.i:                               ; preds = %lor.lhs.false5.i.i
  %dpc_flags10.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 11
  %19 = ptrtoint ptr %dpc_flags10.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %dpc_flags10.i.i, align 4
  %21 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool12.not.i.i = icmp eq i32 %21, 0
  br i1 %tobool12.not.i.i, label %qla2x00_reset_active.exit.i, label %lor.lhs.false9.i.i.cleanup_crit_edge

lor.lhs.false9.i.i.cleanup_crit_edge:             ; preds = %lor.lhs.false9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

qla2x00_reset_active.exit.i:                      ; preds = %lor.lhs.false9.i.i
  %22 = ptrtoint ptr %dpc_flags10.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %dpc_flags10.i.i, align 4
  %24 = and i32 %23, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i, label %qla2x00_chip_is_down.exit, label %qla2x00_reset_active.exit.i.cleanup_crit_edge

qla2x00_reset_active.exit.i.cleanup_crit_edge:    ; preds = %qla2x00_reset_active.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

qla2x00_chip_is_down.exit:                        ; preds = %qla2x00_reset_active.exit.i
  %flags.i = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 2
  %25 = getelementptr inbounds i32, ptr %flags.i, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %bf.load.i = load volatile i32, ptr %25, align 4
  %27 = and i32 %bf.load.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.not = icmp eq i32 %27, 0
  br i1 %tobool.not.not, label %qla2x00_chip_is_down.exit.cleanup_crit_edge, label %if.end

qla2x00_chip_is_down.exit.cleanup_crit_edge:      ; preds = %qla2x00_chip_is_down.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %qla2x00_chip_is_down.exit
  %tgt_counters = getelementptr inbounds %struct.qla_qpair, ptr %5, i32 0, i32 24
  %28 = ptrtoint ptr %tgt_counters to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %tgt_counters, align 8
  %core_qla_que_buf3 = getelementptr inbounds %struct.qla_qpair, ptr %5, i32 0, i32 24, i32 1
  %30 = ptrtoint ptr %core_qla_que_buf3 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %core_qla_que_buf3, align 8
  %qla_core_ret_ctio5 = getelementptr inbounds %struct.qla_qpair, ptr %5, i32 0, i32 24, i32 2
  %32 = ptrtoint ptr %qla_core_ret_ctio5 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %qla_core_ret_ctio5, align 8
  %core_qla_snd_status7 = getelementptr inbounds %struct.qla_qpair, ptr %5, i32 0, i32 24, i32 3
  %34 = ptrtoint ptr %core_qla_snd_status7 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %core_qla_snd_status7, align 8
  %qla_core_ret_sta_ctio9 = getelementptr inbounds %struct.qla_qpair, ptr %5, i32 0, i32 24, i32 4
  %36 = ptrtoint ptr %qla_core_ret_sta_ctio9 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %qla_core_ret_sta_ctio9, align 8
  %core_qla_free_cmd11 = getelementptr inbounds %struct.qla_qpair, ptr %5, i32 0, i32 24, i32 5
  %38 = ptrtoint ptr %core_qla_free_cmd11 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %core_qla_free_cmd11, align 8
  %num_q_full_sent13 = getelementptr inbounds %struct.qla_qpair, ptr %5, i32 0, i32 24, i32 6
  %40 = ptrtoint ptr %num_q_full_sent13 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %num_q_full_sent13, align 8
  %num_alloc_iocb_failed15 = getelementptr inbounds %struct.qla_qpair, ptr %5, i32 0, i32 24, i32 7
  %42 = ptrtoint ptr %num_alloc_iocb_failed15 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %num_alloc_iocb_failed15, align 8
  %num_term_xchg_sent17 = getelementptr inbounds %struct.qla_qpair, ptr %5, i32 0, i32 24, i32 8
  %44 = ptrtoint ptr %num_term_xchg_sent17 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %num_term_xchg_sent17, align 8
  %max_qpairs = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 32
  %46 = ptrtoint ptr %max_qpairs to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %max_qpairs, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp170.not = icmp eq i8 %47, 0
  br i1 %cmp170.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %queue_pair_map = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 26
  %48 = ptrtoint ptr %queue_pair_map to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %queue_pair_map, align 4
  %wide.trip.count = zext i8 %47 to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %qla_core_sbt_cmd.0180 = phi i64 [ %29, %for.body.lr.ph ], [ %qla_core_sbt_cmd.1, %for.inc.for.body_crit_edge ]
  %num_term_xchg_sent.0178 = phi i64 [ %45, %for.body.lr.ph ], [ %num_term_xchg_sent.1, %for.inc.for.body_crit_edge ]
  %num_alloc_iocb_failed.0177 = phi i64 [ %43, %for.body.lr.ph ], [ %num_alloc_iocb_failed.1, %for.inc.for.body_crit_edge ]
  %num_q_full_sent.0176 = phi i64 [ %41, %for.body.lr.ph ], [ %num_q_full_sent.1, %for.inc.for.body_crit_edge ]
  %core_qla_free_cmd.0175 = phi i64 [ %39, %for.body.lr.ph ], [ %core_qla_free_cmd.1, %for.inc.for.body_crit_edge ]
  %qla_core_ret_sta_ctio.0174 = phi i64 [ %37, %for.body.lr.ph ], [ %qla_core_ret_sta_ctio.1, %for.inc.for.body_crit_edge ]
  %core_qla_snd_status.0173 = phi i64 [ %35, %for.body.lr.ph ], [ %core_qla_snd_status.1, %for.inc.for.body_crit_edge ]
  %qla_core_ret_ctio.0172 = phi i64 [ %33, %for.body.lr.ph ], [ %qla_core_ret_ctio.1, %for.inc.for.body_crit_edge ]
  %core_qla_que_buf.0171 = phi i64 [ %31, %for.body.lr.ph ], [ %core_qla_que_buf.1, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %49, i32 %indvars.iv
  %50 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx, align 4
  %tobool22.not = icmp eq ptr %51, null
  br i1 %tobool22.not, label %for.body.for.inc_crit_edge, label %if.end24

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end24:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %tgt_counters25 = getelementptr inbounds %struct.qla_qpair, ptr %51, i32 0, i32 24
  %52 = ptrtoint ptr %tgt_counters25 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %tgt_counters25, align 8
  %add = add i64 %53, %qla_core_sbt_cmd.0180
  %core_qla_que_buf28 = getelementptr inbounds %struct.qla_qpair, ptr %51, i32 0, i32 24, i32 1
  %54 = ptrtoint ptr %core_qla_que_buf28 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %core_qla_que_buf28, align 8
  %add29 = add i64 %55, %core_qla_que_buf.0171
  %qla_core_ret_ctio31 = getelementptr inbounds %struct.qla_qpair, ptr %51, i32 0, i32 24, i32 2
  %56 = ptrtoint ptr %qla_core_ret_ctio31 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %qla_core_ret_ctio31, align 8
  %add32 = add i64 %57, %qla_core_ret_ctio.0172
  %core_qla_snd_status34 = getelementptr inbounds %struct.qla_qpair, ptr %51, i32 0, i32 24, i32 3
  %58 = ptrtoint ptr %core_qla_snd_status34 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %core_qla_snd_status34, align 8
  %add35 = add i64 %59, %core_qla_snd_status.0173
  %qla_core_ret_sta_ctio37 = getelementptr inbounds %struct.qla_qpair, ptr %51, i32 0, i32 24, i32 4
  %60 = ptrtoint ptr %qla_core_ret_sta_ctio37 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %qla_core_ret_sta_ctio37, align 8
  %add38 = add i64 %61, %qla_core_ret_sta_ctio.0174
  %core_qla_free_cmd40 = getelementptr inbounds %struct.qla_qpair, ptr %51, i32 0, i32 24, i32 5
  %62 = ptrtoint ptr %core_qla_free_cmd40 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %core_qla_free_cmd40, align 8
  %add41 = add i64 %63, %core_qla_free_cmd.0175
  %num_q_full_sent43 = getelementptr inbounds %struct.qla_qpair, ptr %51, i32 0, i32 24, i32 6
  %64 = ptrtoint ptr %num_q_full_sent43 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %num_q_full_sent43, align 8
  %add44 = add i64 %65, %num_q_full_sent.0176
  %num_alloc_iocb_failed46 = getelementptr inbounds %struct.qla_qpair, ptr %51, i32 0, i32 24, i32 7
  %66 = ptrtoint ptr %num_alloc_iocb_failed46 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %num_alloc_iocb_failed46, align 8
  %add47 = add i64 %67, %num_alloc_iocb_failed.0177
  %num_term_xchg_sent49 = getelementptr inbounds %struct.qla_qpair, ptr %51, i32 0, i32 24, i32 8
  %68 = ptrtoint ptr %num_term_xchg_sent49 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %num_term_xchg_sent49, align 8
  %add50 = add i64 %69, %num_term_xchg_sent.0178
  br label %for.inc

for.inc:                                          ; preds = %if.end24, %for.body.for.inc_crit_edge
  %core_qla_que_buf.1 = phi i64 [ %add29, %if.end24 ], [ %core_qla_que_buf.0171, %for.body.for.inc_crit_edge ]
  %qla_core_ret_ctio.1 = phi i64 [ %add32, %if.end24 ], [ %qla_core_ret_ctio.0172, %for.body.for.inc_crit_edge ]
  %core_qla_snd_status.1 = phi i64 [ %add35, %if.end24 ], [ %core_qla_snd_status.0173, %for.body.for.inc_crit_edge ]
  %qla_core_ret_sta_ctio.1 = phi i64 [ %add38, %if.end24 ], [ %qla_core_ret_sta_ctio.0174, %for.body.for.inc_crit_edge ]
  %core_qla_free_cmd.1 = phi i64 [ %add41, %if.end24 ], [ %core_qla_free_cmd.0175, %for.body.for.inc_crit_edge ]
  %num_q_full_sent.1 = phi i64 [ %add44, %if.end24 ], [ %num_q_full_sent.0176, %for.body.for.inc_crit_edge ]
  %num_alloc_iocb_failed.1 = phi i64 [ %add47, %if.end24 ], [ %num_alloc_iocb_failed.0177, %for.body.for.inc_crit_edge ]
  %num_term_xchg_sent.1 = phi i64 [ %add50, %if.end24 ], [ %num_term_xchg_sent.0178, %for.body.for.inc_crit_edge ]
  %qla_core_sbt_cmd.1 = phi i64 [ %add, %if.end24 ], [ %qla_core_sbt_cmd.0180, %for.body.for.inc_crit_edge ]
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %core_qla_que_buf.0.lcssa = phi i64 [ %31, %if.end.for.end_crit_edge ], [ %core_qla_que_buf.1, %for.inc.for.end_crit_edge ]
  %qla_core_ret_ctio.0.lcssa = phi i64 [ %33, %if.end.for.end_crit_edge ], [ %qla_core_ret_ctio.1, %for.inc.for.end_crit_edge ]
  %core_qla_snd_status.0.lcssa = phi i64 [ %35, %if.end.for.end_crit_edge ], [ %core_qla_snd_status.1, %for.inc.for.end_crit_edge ]
  %qla_core_ret_sta_ctio.0.lcssa = phi i64 [ %37, %if.end.for.end_crit_edge ], [ %qla_core_ret_sta_ctio.1, %for.inc.for.end_crit_edge ]
  %core_qla_free_cmd.0.lcssa = phi i64 [ %39, %if.end.for.end_crit_edge ], [ %core_qla_free_cmd.1, %for.inc.for.end_crit_edge ]
  %num_q_full_sent.0.lcssa = phi i64 [ %41, %if.end.for.end_crit_edge ], [ %num_q_full_sent.1, %for.inc.for.end_crit_edge ]
  %num_alloc_iocb_failed.0.lcssa = phi i64 [ %43, %if.end.for.end_crit_edge ], [ %num_alloc_iocb_failed.1, %for.inc.for.end_crit_edge ]
  %num_term_xchg_sent.0.lcssa = phi i64 [ %45, %if.end.for.end_crit_edge ], [ %num_term_xchg_sent.1, %for.inc.for.end_crit_edge ]
  %qla_core_sbt_cmd.0.lcssa = phi i64 [ %29, %if.end.for.end_crit_edge ], [ %qla_core_sbt_cmd.1, %for.inc.for.end_crit_edge ]
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.41) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.42, i64 noundef %qla_core_sbt_cmd.0.lcssa) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.43, i64 noundef %qla_core_ret_sta_ctio.0.lcssa) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.44, i64 noundef %qla_core_ret_ctio.0.lcssa) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.45, i64 noundef %core_qla_que_buf.0.lcssa) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.46, i64 noundef %core_qla_snd_status.0.lcssa) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.47, i64 noundef %core_qla_free_cmd.0.lcssa) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.48, i64 noundef %num_alloc_iocb_failed.0.lcssa) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.49, i64 noundef %num_term_xchg_sent.0.lcssa) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.50, i64 noundef %num_q_full_sent.0.lcssa) #9
  %qla_dif_stats = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 58, i32 10
  %70 = ptrtoint ptr %qla_dif_stats to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %qla_dif_stats, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.51, i64 noundef %71) #9
  %dif_output_bytes = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 58, i32 10, i32 1
  %72 = ptrtoint ptr %dif_output_bytes to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %dif_output_bytes, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.52, i64 noundef %73) #9
  %dif_input_requests = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 58, i32 10, i32 2
  %74 = ptrtoint ptr %dif_input_requests to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %dif_input_requests, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.53, i64 noundef %75) #9
  %dif_output_requests = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 58, i32 10, i32 3
  %76 = ptrtoint ptr %dif_output_requests to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %dif_output_requests, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.54, i64 noundef %77) #9
  %dif_guard_err = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 58, i32 10, i32 4
  %78 = ptrtoint ptr %dif_guard_err to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %dif_guard_err, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.55, i32 noundef %79) #9
  %dif_ref_tag_err = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 58, i32 10, i32 5
  %80 = ptrtoint ptr %dif_ref_tag_err to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %dif_ref_tag_err, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.56, i32 noundef %81) #9
  %dif_app_tag_err = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 58, i32 10, i32 6
  %82 = ptrtoint ptr %dif_app_tag_err to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %dif_app_tag_err, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.57, i32 noundef %83) #9
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.58) #9
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.59) #9
  %hw_err_cnt = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 84
  %84 = ptrtoint ptr %hw_err_cnt to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %hw_err_cnt, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.60, i64 noundef %85) #9
  %short_link_down_cnt = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 89
  %86 = ptrtoint ptr %short_link_down_cnt to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %short_link_down_cnt, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.61, i64 noundef %87) #9
  %interface_err_cnt = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 85
  %88 = ptrtoint ptr %interface_err_cnt to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %interface_err_cnt, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.62, i64 noundef %89) #9
  %cmd_timeout_cnt = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 86
  %90 = ptrtoint ptr %cmd_timeout_cnt to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %cmd_timeout_cnt, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.63, i64 noundef %91) #9
  %reset_cmd_err_cnt = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 87
  %92 = ptrtoint ptr %reset_cmd_err_cnt to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %reset_cmd_err_cnt, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.64, i64 noundef %93) #9
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.58) #9
  %vp_fcports = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 1
  %94 = ptrtoint ptr %vp_fcports to i32
  call void @__asan_load4_noabort(i32 %94)
  %fcport.0189 = load ptr, ptr %vp_fcports, align 8
  %cmp65.not190 = icmp eq ptr %fcport.0189, %vp_fcports
  br i1 %cmp65.not190, label %for.end.for.end78_crit_edge, label %for.end.for.body67_crit_edge

for.end.for.body67_crit_edge:                     ; preds = %for.end
  br label %for.body67

for.end.for.end78_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end78

for.body67:                                       ; preds = %for.inc72.for.body67_crit_edge, %for.end.for.body67_crit_edge
  %fcport.0191 = phi ptr [ %fcport.0, %for.inc72.for.body67_crit_edge ], [ %fcport.0189, %for.end.for.body67_crit_edge ]
  %rport = getelementptr inbounds %struct.fc_port, ptr %fcport.0191, i32 0, i32 37
  %95 = ptrtoint ptr %rport to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %rport, align 8
  %tobool68.not = icmp eq ptr %96, null
  br i1 %tobool68.not, label %for.body67.for.inc72_crit_edge, label %if.end70

for.body67.for.inc72_crit_edge:                   ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc72

if.end70:                                         ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #11
  %number = getelementptr inbounds %struct.fc_rport, ptr %96, i32 0, i32 13
  %97 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %number, align 4
  %tgt_short_link_down_cnt = getelementptr inbounds %struct.fc_port, ptr %fcport.0191, i32 0, i32 69
  %99 = ptrtoint ptr %tgt_short_link_down_cnt to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %tgt_short_link_down_cnt, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.65, i32 noundef %98, i64 noundef %100) #9
  br label %for.inc72

for.inc72:                                        ; preds = %if.end70, %for.body67.for.inc72_crit_edge
  %101 = ptrtoint ptr %fcport.0191 to i32
  call void @__asan_load4_noabort(i32 %101)
  %fcport.0 = load ptr, ptr %fcport.0191, align 8
  %cmp65.not = icmp eq ptr %fcport.0, %vp_fcports
  br i1 %cmp65.not, label %for.inc72.for.end78_crit_edge, label %for.inc72.for.body67_crit_edge

for.inc72.for.body67_crit_edge:                   ; preds = %for.inc72
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body67

for.inc72.for.end78_crit_edge:                    ; preds = %for.inc72
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end78

for.end78:                                        ; preds = %for.inc72.for.end78_crit_edge, %for.end.for.end78_crit_edge
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.58) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end78, %qla2x00_chip_is_down.exit.cleanup_crit_edge, %qla2x00_reset_active.exit.i.cleanup_crit_edge, %lor.lhs.false9.i.i.cleanup_crit_edge, %lor.lhs.false5.i.i.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_dfs_tgt_port_database_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @qla2x00_dfs_tgt_port_database_show, ptr noundef %1) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_dfs_tgt_port_database_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  %gid_list_dma = alloca i32, align 4
  %fc_port = alloca %struct.fc_port, align 8
  %entries = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 52
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gid_list_dma) #9
  %4 = ptrtoint ptr %gid_list_dma to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %gid_list_dma, align 4, !annotation !237
  call void @llvm.lifetime.start.p0(i64 736, ptr nonnull %fc_port) #9
  %5 = call ptr @memset(ptr %fc_port, i32 255, i32 736)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %entries) #9
  %6 = ptrtoint ptr %entries to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %entries, align 2, !annotation !237
  %host_str = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.66, ptr noundef %host_str) #9
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 128
  %dev = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %isp_type.i = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 54
  %9 = ptrtoint ptr %isp_type.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %isp_type.i, align 8
  %and1.i = and i32 %10, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.qla2x00_gid_list_size.exit_crit_edge

entry.qla2x00_gid_list_size.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %qla2x00_gid_list_size.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %max_fibre_devices.i = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 44
  %11 = ptrtoint ptr %max_fibre_devices.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %max_fibre_devices.i, align 4
  %conv.i = zext i16 %12 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 3
  br label %qla2x00_gid_list_size.exit

qla2x00_gid_list_size.exit:                       ; preds = %if.else.i, %entry.qla2x00_gid_list_size.exit_crit_edge
  %retval.0.i = phi i32 [ %mul.i, %if.else.i ], [ 128, %entry.qla2x00_gid_list_size.exit_crit_edge ]
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %retval.0.i, ptr noundef nonnull %gid_list_dma, i32 noundef 3264, i32 noundef 0) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %qla2x00_gid_list_size.exit
  %13 = ptrtoint ptr %isp_type.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %isp_type.i, align 8
  %and1.i49 = and i32 %14, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i49)
  %tobool.not.i50 = icmp eq i32 %and1.i49, 0
  br i1 %tobool.not.i50, label %if.else.i54, label %if.then.qla2x00_gid_list_size.exit56_crit_edge

if.then.qla2x00_gid_list_size.exit56_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %qla2x00_gid_list_size.exit56

if.else.i54:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %max_fibre_devices.i51 = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 44
  %15 = ptrtoint ptr %max_fibre_devices.i51 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %max_fibre_devices.i51, align 4
  %conv.i52 = zext i16 %16 to i32
  %mul.i53 = shl nuw nsw i32 %conv.i52, 3
  br label %qla2x00_gid_list_size.exit56

qla2x00_gid_list_size.exit56:                     ; preds = %if.else.i54, %if.then.qla2x00_gid_list_size.exit56_crit_edge
  %retval.0.i55 = phi i32 [ %mul.i53, %if.else.i54 ], [ 128, %if.then.qla2x00_gid_list_size.exit56_crit_edge ]
  call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %1, i32 noundef 28696, ptr noundef nonnull @.str.67, i32 noundef %retval.0.i55) #9
  br label %cleanup

if.end:                                           ; preds = %qla2x00_gid_list_size.exit
  %17 = ptrtoint ptr %gid_list_dma to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %gid_list_dma, align 4
  %call3 = call i32 @qla24xx_gidlist_wait(ptr noundef %1, ptr noundef nonnull %call.i, i32 noundef %18, ptr noundef nonnull %entries) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp.not = icmp eq i32 %call3, 0
  br i1 %cmp.not, label %if.end5, label %if.end.out_free_id_list_crit_edge

if.end.out_free_id_list_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_id_list

if.end5:                                          ; preds = %if.end
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.68) #9
  %19 = ptrtoint ptr %entries to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %entries, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %cmp667.not = icmp eq i16 %20, 0
  br i1 %cmp667.not, label %if.end5.out_free_id_list_crit_edge, label %for.body.lr.ph

if.end5.out_free_id_list_crit_edge:               ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_id_list

for.body.lr.ph:                                   ; preds = %if.end5
  %loop_id9 = getelementptr inbounds %struct.fc_port, ptr %fc_port, i32 0, i32 7
  %port_name = getelementptr inbounds %struct.fc_port, ptr %fc_port, i32 0, i32 5
  %d_id = getelementptr inbounds %struct.fc_port, ptr %fc_port, i32 0, i32 6
  %area = getelementptr inbounds %struct.anon.80, ptr %d_id, i32 0, i32 1
  %al_pa = getelementptr inbounds %struct.anon.80, ptr %d_id, i32 0, i32 2
  %gid_list_info_size = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 95
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.069 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %id_iter.068 = phi ptr [ %call.i, %for.body.lr.ph ], [ %add.ptr, %for.body.for.body_crit_edge ]
  %loop_id8 = getelementptr inbounds %struct.gid_list_info, ptr %id_iter.068, i32 0, i32 4
  %21 = ptrtoint ptr %loop_id8 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %loop_id8, align 2
  %23 = call i16 @llvm.bswap.i16(i16 %22)
  %24 = call ptr @memset(ptr %fc_port, i32 0, i32 736)
  %25 = ptrtoint ptr %loop_id9 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %23, ptr %loop_id9, align 4
  %call10 = call i32 @qla24xx_gpdb_wait(ptr noundef %1, ptr noundef nonnull %fc_port, i8 noundef zeroext 0) #9
  %26 = ptrtoint ptr %d_id to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %d_id, align 8
  %conv12 = zext i8 %27 to i32
  %28 = ptrtoint ptr %area to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %area, align 1
  %conv14 = zext i8 %29 to i32
  %30 = ptrtoint ptr %al_pa to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %al_pa, align 2
  %conv16 = zext i8 %31 to i32
  %32 = ptrtoint ptr %loop_id9 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %loop_id9, align 4
  %conv18 = zext i16 %33 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.69, ptr noundef %port_name, i32 noundef %conv12, i32 noundef %conv14, i32 noundef %conv16, i32 noundef %conv18) #9
  %34 = ptrtoint ptr %gid_list_info_size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %gid_list_info_size, align 16
  %add.ptr = getelementptr i8, ptr %id_iter.068, i32 %35
  %inc = add nuw nsw i32 %i.069, 1
  %36 = ptrtoint ptr %entries to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %entries, align 2
  %conv = zext i16 %37 to i32
  %cmp6 = icmp ult i32 %inc, %conv
  br i1 %cmp6, label %for.body.for.body_crit_edge, label %for.body.out_free_id_list_crit_edge

for.body.out_free_id_list_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_id_list

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

out_free_id_list:                                 ; preds = %for.body.out_free_id_list_crit_edge, %if.end5.out_free_id_list_crit_edge, %if.end.out_free_id_list_crit_edge
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %3, align 128
  %dev20 = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  %40 = ptrtoint ptr %isp_type.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %isp_type.i, align 8
  %and1.i58 = and i32 %41, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i58)
  %tobool.not.i59 = icmp eq i32 %and1.i58, 0
  br i1 %tobool.not.i59, label %if.else.i63, label %out_free_id_list.qla2x00_gid_list_size.exit65_crit_edge

out_free_id_list.qla2x00_gid_list_size.exit65_crit_edge: ; preds = %out_free_id_list
  call void @__sanitizer_cov_trace_pc() #11
  br label %qla2x00_gid_list_size.exit65

if.else.i63:                                      ; preds = %out_free_id_list
  call void @__sanitizer_cov_trace_pc() #11
  %max_fibre_devices.i60 = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 44
  %42 = ptrtoint ptr %max_fibre_devices.i60 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %max_fibre_devices.i60, align 4
  %conv.i61 = zext i16 %43 to i32
  %mul.i62 = shl nuw nsw i32 %conv.i61, 3
  br label %qla2x00_gid_list_size.exit65

qla2x00_gid_list_size.exit65:                     ; preds = %if.else.i63, %out_free_id_list.qla2x00_gid_list_size.exit65_crit_edge
  %retval.0.i64 = phi i32 [ %mul.i62, %if.else.i63 ], [ 128, %out_free_id_list.qla2x00_gid_list_size.exit65_crit_edge ]
  %44 = ptrtoint ptr %gid_list_dma to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %gid_list_dma, align 4
  call void @dma_free_attrs(ptr noundef %dev20, i32 noundef %retval.0.i64, ptr noundef nonnull %call.i, i32 noundef %45, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %qla2x00_gid_list_size.exit65, %qla2x00_gid_list_size.exit56
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %entries) #9
  call void @llvm.lifetime.end.p0(i64 736, ptr nonnull %fc_port) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gid_list_dma) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ql_dbg(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla24xx_gidlist_wait(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla24xx_gpdb_wait(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_dfs_fce_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 52
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %flags = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load = load volatile i32, ptr %flags, align 8
  %5 = and i32 %bf.load, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %fce_mutex = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 191
  tail call void @mutex_lock_nested(ptr noundef %fce_mutex, i32 noundef 0) #9
  %fce_wr = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 189
  %fce_rd = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 190
  %call = tail call i32 @qla2x00_disable_fce_trace(ptr noundef %1, ptr noundef %fce_wr, ptr noundef %fce_rd) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %1, i32 noundef 28764, ptr noundef nonnull @.str.70, i32 noundef %call) #9
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load5 = load volatile i32, ptr %flags, align 8
  %bf.clear6 = and i32 %bf.load5, -131073
  store volatile i32 %bf.clear6, ptr %flags, align 8
  tail call void @mutex_unlock(ptr noundef %fce_mutex) #9
  br label %out

out:                                              ; preds = %if.end3, %entry.out_crit_edge
  %call8 = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @qla2x00_dfs_fce_show, ptr noundef %1) #9
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_dfs_fce_release(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 52
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %flags = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load = load volatile i32, ptr %flags, align 8
  %5 = and i32 %bf.load, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %fce_mutex = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 191
  tail call void @mutex_lock_nested(ptr noundef %fce_mutex, i32 noundef 0) #9
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load2 = load volatile i32, ptr %flags, align 8
  %bf.set = or i32 %bf.load2, 131072
  store volatile i32 %bf.set, ptr %flags, align 8
  %fce = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 186
  %7 = ptrtoint ptr %fce to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fce, align 32
  %fce_bufs = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 187
  %9 = ptrtoint ptr %fce_bufs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fce_bufs, align 4
  %mul = shl i32 %10, 10
  %11 = call ptr @memset(ptr %8, i32 0, i32 %mul)
  %fce_dma = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 185
  %12 = ptrtoint ptr %fce_dma to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fce_dma, align 4
  %14 = load i32, ptr %fce_bufs, align 4
  %conv = trunc i32 %14 to i16
  %fce_mb = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 188
  %call = tail call i32 @qla2x00_enable_fce_trace(ptr noundef %1, i32 noundef %13, i16 noundef zeroext %conv, ptr noundef %fce_mb, ptr noundef %fce_bufs) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.end.if.end12_crit_edge, label %if.then7

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, i32, ptr, ...) @ql_dbg(i32 noundef 8388608, ptr noundef %1, i32 noundef 28685, ptr noundef nonnull @.str.79, i32 noundef %call) #9
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %bf.load9 = load volatile i32, ptr %flags, align 8
  %bf.clear10 = and i32 %bf.load9, -131073
  store volatile i32 %bf.clear10, ptr %flags, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %if.end.if.end12_crit_edge
  tail call void @mutex_unlock(ptr noundef %fce_mutex) #9
  br label %out

out:                                              ; preds = %if.end12, %entry.out_crit_edge
  %call14 = tail call i32 @single_release(ptr noundef %inode, ptr noundef %file) #9
  ret i32 %call14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_disable_fce_trace(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_dfs_fce_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 52
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %fce_mutex = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 191
  tail call void @mutex_lock_nested(ptr noundef %fce_mutex, i32 noundef 0) #9
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.71) #9
  %fce_wr = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 189
  %4 = ptrtoint ptr %fce_wr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %fce_wr, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.72, i64 noundef %5) #9
  %fce_dma = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 185
  %6 = ptrtoint ptr %fce_dma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fce_dma, align 4
  %conv = zext i32 %7 to i64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.73, i64 noundef %conv) #9
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.74) #9
  %fce_mb = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 188
  %8 = ptrtoint ptr %fce_mb to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %fce_mb, align 8
  %conv1 = zext i16 %9 to i32
  %arrayidx3 = getelementptr %struct.qla_hw_data, ptr %3, i32 0, i32 188, i32 2
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx3, align 4
  %conv4 = zext i16 %11 to i32
  %arrayidx6 = getelementptr %struct.qla_hw_data, ptr %3, i32 0, i32 188, i32 3
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx6, align 2
  %conv7 = zext i16 %13 to i32
  %arrayidx9 = getelementptr %struct.qla_hw_data, ptr %3, i32 0, i32 188, i32 4
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx9, align 8
  %conv10 = zext i16 %15 to i32
  %arrayidx12 = getelementptr %struct.qla_hw_data, ptr %3, i32 0, i32 188, i32 5
  %16 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx12, align 2
  %conv13 = zext i16 %17 to i32
  %arrayidx15 = getelementptr %struct.qla_hw_data, ptr %3, i32 0, i32 188, i32 6
  %18 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx15, align 4
  %conv16 = zext i16 %19 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.75, i32 noundef %conv1, i32 noundef %conv4, i32 noundef %conv7, i32 noundef %conv10, i32 noundef %conv13, i32 noundef %conv16) #9
  %20 = ptrtoint ptr %fce_dma to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fce_dma, align 4
  %conv19 = zext i32 %21 to i64
  %fce_bufs = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 187
  %22 = ptrtoint ptr %fce_bufs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fce_bufs, align 4
  %24 = and i32 %23, 4194303
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp52.not = icmp eq i32 %24, 0
  br i1 %cmp52.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %fce17 = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 186
  %25 = ptrtoint ptr %fce17 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fce17, align 32
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.preheader
  %fce.055 = phi ptr [ %incdec.ptr, %if.end.for.body_crit_edge ], [ %26, %for.body.preheader ]
  %cnt.053 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %rem = and i32 %cnt.053, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp21 = icmp eq i32 %rem, 0
  br i1 %cmp21, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %mul23 = shl i32 %cnt.053, 2
  %conv24 = zext i32 %mul23 to i64
  %add = add nuw nsw i64 %conv24, %conv19
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.76, i64 noundef %add) #9
  br label %if.end

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 32) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %incdec.ptr = getelementptr i32, ptr %fce.055, i32 1
  %27 = ptrtoint ptr %fce.055 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fce.055, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.77, i32 noundef %28) #9
  %inc = add nuw nsw i32 %cnt.053, 1
  %29 = ptrtoint ptr %fce_bufs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fce_bufs, align 4
  %31 = shl i32 %30, 8
  %div50 = and i32 %31, 1073741568
  %cmp = icmp ult i32 %inc, %div50
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.78) #9
  tail call void @mutex_unlock(ptr noundef %fce_mutex) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qla2x00_enable_fce_trace(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_dfs_tgt_sess_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @qla2x00_dfs_tgt_sess_show, ptr noundef %1) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla2x00_dfs_tgt_sess_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 52
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %qla_tgt = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 53, i32 3
  %4 = ptrtoint ptr %qla_tgt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qla_tgt, align 4
  %host_str = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.66, ptr noundef %host_str) #9
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.80) #9
  %sess_lock = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 281, i32 27
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sess_lock) #9
  %vp_fcports = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %vp_fcports to i32
  call void @__asan_load4_noabort(i32 %6)
  %sess.038 = load ptr, ptr %vp_fcports, align 8
  %cmp8.not39 = icmp eq ptr %sess.038, %vp_fcports
  br i1 %cmp8.not39, label %if.then.for.end_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then.for.body_crit_edge
  %sess.040 = phi ptr [ %sess.0, %for.body.for.body_crit_edge ], [ %sess.038, %if.then.for.body_crit_edge ]
  %d_id = getelementptr inbounds %struct.fc_port, ptr %sess.040, i32 0, i32 6
  %7 = ptrtoint ptr %d_id to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %d_id, align 8
  %conv10 = zext i8 %8 to i32
  %area = getelementptr inbounds %struct.anon.80, ptr %d_id, i32 0, i32 1
  %9 = ptrtoint ptr %area to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %area, align 1
  %conv12 = zext i8 %10 to i32
  %al_pa = getelementptr inbounds %struct.anon.80, ptr %d_id, i32 0, i32 2
  %11 = ptrtoint ptr %al_pa to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %al_pa, align 2
  %conv14 = zext i8 %12 to i32
  %port_name = getelementptr inbounds %struct.fc_port, ptr %sess.040, i32 0, i32 5
  %loop_id = getelementptr inbounds %struct.fc_port, ptr %sess.040, i32 0, i32 7
  %13 = ptrtoint ptr %loop_id to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %loop_id, align 4
  %conv16 = zext i16 %14 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.81, i32 noundef %conv10, i32 noundef %conv12, i32 noundef %conv14, ptr noundef %port_name, i32 noundef %conv16) #9
  %15 = ptrtoint ptr %sess.040 to i32
  call void @__asan_load4_noabort(i32 %15)
  %sess.0 = load ptr, ptr %sess.040, align 8
  %cmp8.not = icmp eq ptr %sess.0, %vp_fcports
  br i1 %cmp8.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sess_lock, i32 noundef %call3) #9
  br label %if.end

if.end:                                           ; preds = %for.end, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla_dfs_naqp_write(ptr nocapture noundef readonly %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %3, i32 0, i32 52
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %isp_type = getelementptr inbounds %struct.qla_hw_data, ptr %5, i32 0, i32 54
  %6 = ptrtoint ptr %isp_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %isp_type, align 8
  %8 = and i32 %7, 45711360
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %host_no = getelementptr inbounds %struct.scsi_qla_host, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %host_no, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, i32 noundef %11) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.scsi_qla_host, ptr %3, i32 0, i32 8
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %bf.load = load volatile i32, ptr %flags, align 8
  %13 = and i32 %bf.load, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool31.not = icmp eq i32 %13, 0
  br i1 %tobool31.not, label %do.end35, label %if.end39

do.end35:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %host_no37 = getelementptr inbounds %struct.scsi_qla_host, ptr %3, i32 0, i32 6
  %14 = ptrtoint ptr %host_no37 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %host_no37, align 4
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, i32 noundef %15) #12
  br label %cleanup

if.end39:                                         ; preds = %if.end
  %call40 = tail call ptr @memdup_user_nul(ptr noundef %buffer, i32 noundef %count) #9
  %cmp.i = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end45, label %if.end50

do.end45:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %host_no47 = getelementptr inbounds %struct.scsi_qla_host, ptr %3, i32 0, i32 6
  %16 = ptrtoint ptr %host_no47 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %host_no47, align 4
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, i32 noundef %17) #12
  %18 = ptrtoint ptr %call40 to i32
  br label %cleanup

if.end50:                                         ; preds = %if.end39
  %call51 = tail call i32 @simple_strtoul(ptr noundef %call40, ptr noundef null, i32 noundef 0) #9
  %19 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw, align 4
  %max_qpairs = getelementptr inbounds %struct.qla_hw_data, ptr %20, i32 0, i32 32
  %21 = ptrtoint ptr %max_qpairs to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %max_qpairs, align 2
  %conv = zext i8 %22 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call51, i32 %conv)
  %cmp.not = icmp ult i32 %call51, %conv
  br i1 %cmp.not, label %if.end63, label %do.end57

do.end57:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, i32 noundef %call51, i32 noundef %conv) #12
  br label %out_free

if.end63:                                         ; preds = %if.end50
  %num_act_qpairs = getelementptr inbounds %struct.qla_hw_data, ptr %5, i32 0, i32 281, i32 28
  %23 = ptrtoint ptr %num_act_qpairs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_act_qpairs, align 64
  call void @__sanitizer_cov_trace_cmp4(i32 %call51, i32 %24)
  %cmp64.not = icmp eq i32 %call51, %24
  br i1 %cmp64.not, label %if.end63.out_free_crit_edge, label %if.then66

if.end63.out_free_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free

if.then66:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %num_act_qpairs to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call51, ptr %num_act_qpairs, align 64
  tail call void @qlt_clr_qp_table(ptr noundef %3) #9
  br label %out_free

out_free:                                         ; preds = %if.then66, %if.end63.out_free_crit_edge, %do.end57
  %rc.0 = phi i32 [ -22, %do.end57 ], [ %count, %if.then66 ], [ %count, %if.end63.out_free_crit_edge ]
  tail call void @kfree(ptr noundef %call40) #9
  br label %cleanup

cleanup:                                          ; preds = %out_free, %do.end45, %do.end35, %do.end
  %retval.0 = phi i32 [ %18, %do.end45 ], [ %rc.0, %out_free ], [ -22, %do.end35 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla_dfs_naqp_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @qla_dfs_naqp_show, ptr noundef %1) #9
  ret i32 %call
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user_nul(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlt_clr_qp_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qla_dfs_naqp_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %hw = getelementptr inbounds %struct.scsi_qla_host, ptr %1, i32 0, i32 52
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %num_act_qpairs = getelementptr inbounds %struct.qla_hw_data, ptr %3, i32 0, i32 281, i32 28
  %4 = ptrtoint ptr %num_act_qpairs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_act_qpairs, align 64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, i32 noundef %5) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 115)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 115)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !209, !210, !211, !212, !214, !215, !216, !218, !219, !220, !222, !223, !224}
!llvm.module.flags = !{!226, !227, !228, !229, !230, !231, !232, !233}
!llvm.ident = !{!234}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 117, i32 15}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 122, i32 23}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 125, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 126, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 127, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 128, i32 2}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 129, i32 2}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 130, i32 2}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 131, i32 2}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 132, i32 2}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 133, i32 2}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 134, i32 2}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 135, i32 2}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 136, i32 2}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 572, i32 40}
!30 = !{ptr @qla2x00_dfs_setup.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 578, i32 2}
!32 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 584, i32 48}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 587, i32 45}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 590, i32 54}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 593, i32 36}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 596, i32 45}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 600, i32 42}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 604, i32 11}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 608, i32 43}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 611, i32 10}
!51 = !{ptr @qla2x00_dfs_root, !52, !"qla2x00_dfs_root", i1 false, i1 false}
!52 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 11, i32 23}
!53 = !{ptr @qla2x00_dfs_root_count, !54, !"qla2x00_dfs_root_count", i1 false, i1 false}
!54 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 12, i32 17}
!55 = !{ptr @qla_dfs_rport_dev_loss_tmo_fops, !56, !"qla_dfs_rport_dev_loss_tmo_fops", i1 false, i1 false}
!56 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 90, i32 1}
!57 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @qla_dfs_rport_field_disc_state_fops, !59, !"qla_dfs_rport_field_disc_state_fops", i1 false, i1 false}
!59 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 92, i32 1}
!60 = !{ptr @qla_dfs_rport_field_scan_state_fops, !61, !"qla_dfs_rport_field_scan_state_fops", i1 false, i1 false}
!61 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 93, i32 1}
!62 = !{ptr @qla_dfs_rport_field_fw_login_state_fops, !63, !"qla_dfs_rport_field_fw_login_state_fops", i1 false, i1 false}
!63 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 94, i32 1}
!64 = !{ptr @qla_dfs_rport_field_login_pause_fops, !65, !"qla_dfs_rport_field_login_pause_fops", i1 false, i1 false}
!65 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 95, i32 1}
!66 = !{ptr @qla_dfs_rport_field_flags_fops, !67, !"qla_dfs_rport_field_flags_fops", i1 false, i1 false}
!67 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 96, i32 1}
!68 = !{ptr @qla_dfs_rport_field_nvme_flag_fops, !69, !"qla_dfs_rport_field_nvme_flag_fops", i1 false, i1 false}
!69 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 97, i32 1}
!70 = !{ptr @qla_dfs_rport_field_last_rscn_gen_fops, !71, !"qla_dfs_rport_field_last_rscn_gen_fops", i1 false, i1 false}
!71 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 98, i32 1}
!72 = !{ptr @qla_dfs_rport_field_rscn_gen_fops, !73, !"qla_dfs_rport_field_rscn_gen_fops", i1 false, i1 false}
!73 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 99, i32 1}
!74 = !{ptr @qla_dfs_rport_field_login_gen_fops, !75, !"qla_dfs_rport_field_login_gen_fops", i1 false, i1 false}
!75 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 100, i32 1}
!76 = !{ptr @qla_dfs_rport_field_loop_id_fops, !77, !"qla_dfs_rport_field_loop_id_fops", i1 false, i1 false}
!77 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 101, i32 1}
!78 = !{ptr @qla_dfs_rport_field_port_id_fops, !79, !"qla_dfs_rport_field_port_id_fops", i1 false, i1 false}
!79 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 102, i32 1}
!80 = !{ptr @qla_dfs_rport_field_sess_kref_fops, !81, !"qla_dfs_rport_field_sess_kref_fops", i1 false, i1 false}
!81 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 103, i32 1}
!82 = !{ptr @qla_dfs_fw_resource_cnt_fops, !83, !"qla_dfs_fw_resource_cnt_fops", i1 false, i1 false}
!83 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 278, i32 1}
!84 = !{ptr @.str.26, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 242, i32 17}
!86 = !{ptr @.str.27, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 244, i32 15}
!88 = !{ptr @.str.28, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 245, i32 17}
!90 = !{ptr @.str.29, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 246, i32 17}
!92 = !{ptr @.str.30, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 247, i32 17}
!94 = !{ptr @.str.31, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 248, i32 17}
!96 = !{ptr @.str.32, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 249, i32 17}
!98 = !{ptr @.str.33, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 250, i32 17}
!100 = !{ptr @.str.34, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 251, i32 17}
!102 = !{ptr @.str.35, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 252, i32 17}
!104 = !{ptr @.str.36, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 253, i32 17}
!106 = !{ptr @.str.37, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 255, i32 17}
!108 = !{ptr @.str.38, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 257, i32 17}
!110 = !{ptr @.str.39, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 259, i32 17}
!112 = !{ptr @.str.40, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 271, i32 17}
!114 = !{ptr @qla_dfs_tgt_counters_fops, !115, !"qla_dfs_tgt_counters_fops", i1 false, i1 false}
!115 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 383, i32 1}
!116 = !{ptr @.str.41, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 321, i32 14}
!118 = !{ptr @.str.42, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 322, i32 16}
!120 = !{ptr @.str.43, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 324, i32 16}
!122 = !{ptr @.str.44, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 326, i32 16}
!124 = !{ptr @.str.45, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 328, i32 16}
!126 = !{ptr @.str.46, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 330, i32 16}
!128 = !{ptr @.str.47, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 332, i32 16}
!130 = !{ptr @.str.48, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 334, i32 16}
!132 = !{ptr @.str.49, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 336, i32 16}
!134 = !{ptr @.str.50, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 338, i32 16}
!136 = !{ptr @.str.51, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 342, i32 16}
!138 = !{ptr @.str.52, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 344, i32 16}
!140 = !{ptr @.str.53, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 346, i32 16}
!142 = !{ptr @.str.54, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 348, i32 16}
!144 = !{ptr @.str.55, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 350, i32 16}
!146 = !{ptr @.str.56, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 352, i32 16}
!148 = !{ptr @.str.57, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 354, i32 16}
!150 = !{ptr @.str.58, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 357, i32 14}
!152 = !{ptr @.str.59, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 358, i32 14}
!154 = !{ptr @.str.60, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 359, i32 16}
!156 = !{ptr @.str.61, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 361, i32 16}
!158 = !{ptr @.str.62, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 363, i32 16}
!160 = !{ptr @.str.63, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 365, i32 16}
!162 = !{ptr @.str.64, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 367, i32 16}
!164 = !{ptr @.str.65, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 375, i32 17}
!166 = !{ptr @qla2x00_dfs_tgt_port_database_fops, !167, !"qla2x00_dfs_tgt_port_database_fops", i1 false, i1 false}
!167 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 229, i32 1}
!168 = !{ptr @.str.66, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 187, i32 16}
!170 = !{ptr @.str.67, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 193, i32 10}
!172 = !{ptr @.str.68, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 205, i32 14}
!174 = !{ptr @.str.69, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 216, i32 17}
!176 = !{ptr @dfs_fce_ops, !177, !"dfs_fce_ops", i1 false, i1 false}
!177 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 475, i32 37}
!178 = !{ptr @.str.70, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 438, i32 7}
!180 = !{ptr @.str.71, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 396, i32 14}
!182 = !{ptr @.str.72, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 397, i32 16}
!184 = !{ptr @.str.73, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 398, i32 16}
!186 = !{ptr @.str.74, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 399, i32 14}
!188 = !{ptr @.str.75, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 400, i32 16}
!190 = !{ptr @.str.76, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 408, i32 18}
!192 = !{ptr @.str.77, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 412, i32 17}
!194 = !{ptr @.str.78, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 415, i32 14}
!196 = !{ptr @.str.79, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 466, i32 7}
!198 = !{ptr @qla2x00_dfs_tgt_sess_fops, !199, !"qla2x00_dfs_tgt_sess_fops", i1 false, i1 false}
!199 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 173, i32 1}
!200 = !{ptr @.str.80, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 159, i32 15}
!202 = !{ptr @.str.81, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 163, i32 18}
!204 = !{ptr @dfs_naqp_ops, !205, !"dfs_naqp_ops", i1 false, i1 false}
!205 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 548, i32 37}
!206 = !{ptr @.str.82, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 512, i32 3}
!208 = !{ptr @.str.83, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @.str.84, !207, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @qla_dfs_naqp_write._entry, !207, !"_entry", i1 false, i1 false}
!211 = !{ptr @qla_dfs_naqp_write._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.86, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 518, i32 3}
!214 = !{ptr @qla_dfs_naqp_write._entry.85, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @qla_dfs_naqp_write._entry_ptr.87, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.89, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 524, i32 3}
!218 = !{ptr @qla_dfs_naqp_write._entry.88, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @qla_dfs_naqp_write._entry_ptr.90, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.92, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 532, i32 3}
!222 = !{ptr @qla_dfs_naqp_write._entry.91, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @qla_dfs_naqp_write._entry_ptr.93, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.94, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/scsi/qla2xxx/qla_dfs.c", i32 488, i32 16}
!226 = !{i32 1, !"wchar_size", i32 2}
!227 = !{i32 1, !"min_enum_size", i32 4}
!228 = !{i32 8, !"branch-target-enforcement", i32 0}
!229 = !{i32 8, !"sign-return-address", i32 0}
!230 = !{i32 8, !"sign-return-address-all", i32 0}
!231 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!232 = !{i32 7, !"uwtable", i32 1}
!233 = !{i32 7, !"frame-pointer", i32 2}
!234 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!235 = !{i64 2148370342, i64 2148370368, i64 2148370397, i64 2148370431, i64 2148370462, i64 2148370485}
!236 = !{i64 2148372807, i64 2148372833, i64 2148372862, i64 2148372896, i64 2148372927, i64 2148372950}
!237 = !{!"auto-init"}
