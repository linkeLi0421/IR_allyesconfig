; ModuleID = '/llk/IR_all_yes/drivers/scsi/qedf/qedf_attr.c_pt.bc'
source_filename = "../drivers/scsi/qedf/qedf_attr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.sysfs_bin_attrs = type { ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.qedf_ctx = type { %struct.qedf_dbg_ctx, %struct.fcoe_ctlr, ptr, [6 x i8], %struct.atomic_t, %struct.atomic_t, i32, i8, ptr, %struct.qed_dev_fcoe_info, %struct.qed_int_info, i16, %struct.spinlock, ptr, i64, i64, [6 x i8], %struct.list_head, %struct.atomic_t, i32, ptr, ptr, ptr, %struct.delayed_work, %struct.delayed_work, %struct.completion, %struct.completion, %struct.atomic_t, %struct.timer_list, i32, i32, i8, ptr, ptr, i32, [256 x %struct.qedf_bdq_buf], ptr, i32, i32, ptr, i32, i8, ptr, ptr, i16, ptr, %struct.qed_fcoe_tid, ptr, %struct.qed_pf_params, ptr, ptr, ptr, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, i32, i32, ptr, i32, [2048 x %struct.qedf_io_log], %struct.spinlock, i16, i8, i32, i32, i32, %struct.mutex, i64, i64, i64, i64, i64, i8, i8, i8, i8, %struct.mutex, [8 x i8] }
%struct.qedf_dbg_ctx = type { i32, ptr, ptr }
%struct.fcoe_ctlr = type { i32, i32, ptr, ptr, %struct.list_head, ptr, i16, i32, i32, i32, i32, %struct.timer_list, %struct.work_struct, %struct.work_struct, %struct.sk_buff_head, ptr, %struct.rnd_state, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, [6 x i8], [6 x i8], ptr, ptr, ptr, %struct.mutex, %struct.spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.rnd_state = type { i32, i32, i32, i32 }
%struct.qed_dev_fcoe_info = type { %struct.qed_dev_info, ptr, ptr, i64, i64, i8 }
%struct.qed_dev_info = type { i32, i32, i32, i8, [6 x i8], i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, i16, i8, i8, i8, i32, i32, i8, i8, i8, i8 }
%struct.qed_int_info = type { ptr, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.qedf_bdq_buf = type { ptr, i32 }
%struct.qed_fcoe_tid = type { i32, i32, [512 x ptr] }
%struct.qed_pf_params = type { %struct.qed_eth_pf_params, %struct.qed_fcoe_pf_params, %struct.qed_iscsi_pf_params, %struct.qed_nvmetcp_pf_params, %struct.qed_rdma_pf_params }
%struct.qed_eth_pf_params = type { i16, i8, i32 }
%struct.qed_fcoe_pf_params = type { i64, [2 x i64], i16, i16, i16, i16, i16, i16, i16, i16, [2 x i16], [2 x i16], i16, i8, i8, i8, i8, i8, i8, [2 x i8] }
%struct.qed_iscsi_pf_params = type { i64, [3 x i64], i16, i16, i32, i16, i16, i16, i16, [3 x i16], [3 x i16], i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8] }
%struct.qed_nvmetcp_pf_params = type { i64, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16 }
%struct.qed_rdma_pf_params = type { i32, i32, i32, i8, i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.qedf_io_log = type { i8, i16, i32, i32, i8, [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fc_lport = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.fc_disc, %struct.list_head, ptr, %struct.libfc_function_template, i8, i8, i16, i32, i32, %struct.fc_host_statistics, ptr, i8, i32, i64, i64, i32, i32, i32, %struct.fc_els_rnid_gen, i8, i32, i8, i8, i16, i16, i16, i16, i32, %struct.fc_ns_fts, %struct.mutex, %struct.list_head, %struct.delayed_work, [9 x ptr], %struct.list_head }
%struct.fc_disc = type { i8, i8, i8, i16, i8, i16, %struct.list_head, ptr, %struct.mutex, %struct.fc_gpn_ft_resp, %struct.delayed_work, ptr }
%struct.fc_gpn_ft_resp = type { i8, [3 x i8], i32, i64 }
%struct.libfc_function_template = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fc_host_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.fc_els_rnid_gen = type { [16 x i8], i32, i32, i32, i8, i8, i16, [4 x i32], [2 x i8], i16 }
%struct.fc_ns_fts = type { [8 x i32] }
%struct.fc_vport = type { i32, i32, i64, i64, i32, i32, i32, [64 x i8], ptr, ptr, i32, i32, i8, %struct.list_head, %struct.device, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.fc_host_attrs = type { i64, i64, i64, i32, [32 x i8], i32, i32, i16, i32, i32, i32, i32, [64 x i8], [64 x i8], [256 x i8], [256 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [8 x i8], [256 x i8], i32, i32, i32, [32 x i8], i32, i64, [256 x i8], [256 x i8], i32, %struct.fc_fpin_stats, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i16, [20 x i8], ptr, [20 x i8], ptr, ptr, i8 }
%struct.fc_fpin_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.fcoe_fcf = type { %struct.list_head, %struct.work_struct, ptr, ptr, i32, i64, i64, i32, i16, [6 x i8], [6 x i8], i8, i8, i16, i32, i8 }

@qedf_host_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @qedf_host_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@qedf_host_groups = dso_local global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @qedf_host_attr_group, ptr null], [24 x i8] zeroinitializer }, align 32
@__func__.qedf_capture_grc_dump = private unnamed_addr constant [22 x i8] c"qedf_capture_grc_dump\00", align 1
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"GRC Dump already captured.\0A\00", [36 x i8] zeroinitializer }, align 32
@qed_ops = external dso_local local_unnamed_addr global ptr, align 4
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"GRC Dump captured.\0A\00", [44 x i8] zeroinitializer }, align 32
@bin_file_entries = internal global { [2 x %struct.sysfs_bin_attrs], [16 x i8] } { [2 x %struct.sysfs_bin_attrs] [%struct.sysfs_bin_attrs { ptr @.str.6, ptr @sysfs_grcdump_attr }, %struct.sysfs_bin_attrs zeroinitializer], [16 x i8] zeroinitializer }, align 32
@qedf_host_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_fcoe_mac, ptr @dev_attr_fka_period, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_fcoe_mac = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fcoe_mac_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_fka_period = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fka_period_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fcoe_mac\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pM\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fka_period\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"grcdump\00", [24 x i8] zeroinitializer }, align 32
@sysfs_grcdump_attr = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.6, i16 384, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 0, ptr null, ptr null, ptr @qedf_sysfs_read_grcdump, ptr @qedf_sysfs_write_grcdump, ptr null }, [52 x i8] zeroinitializer }, align 32
@__func__.qedf_sysfs_read_grcdump = private unnamed_addr constant [24 x i8] c"qedf_sysfs_read_grcdump\00", align 1
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"GRC Dump not captured!\0A\00", [40 x i8] zeroinitializer }, align 32
@__func__.qedf_sysfs_write_grcdump = private unnamed_addr constant [25 x i8] c"qedf_sysfs_write_grcdump\00", align 1
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid input, err(%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.9 = private unnamed_addr constant [21 x i8] c"qedf_host_attr_group\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 69, i32 37 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"qedf_host_groups\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 73, i32 31 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 91, i32 3 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 99, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"bin_file_entries\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 175, i32 31 }
@___asan_gen_.24 = private unnamed_addr constant [16 x i8] c"qedf_host_attrs\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 63, i32 26 }
@___asan_gen_.27 = private unnamed_addr constant [18 x i8] c"dev_attr_fcoe_mac\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [20 x i8] c"dev_attr_fka_period\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 60, i32 8 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 41, i32 35 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 61, i32 8 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 57, i32 35 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 176, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [19 x i8] c"sysfs_grcdump_attr\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 165, i32 29 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 119, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private constant [33 x i8] c"../drivers/scsi/qedf/qedf_attr.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 147, i32 3 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @qedf_host_attr_group, ptr @qedf_host_groups, ptr @.str, ptr @.str.1, ptr @bin_file_entries, ptr @qedf_host_attrs, ptr @dev_attr_fcoe_mac, ptr @dev_attr_fka_period, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @sysfs_grcdump_attr, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedf_host_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedf_host_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_file_entries to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedf_host_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fcoe_mac to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fka_period to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_grcdump_attr to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @qedf_is_vport(ptr nocapture noundef readonly %qedf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %lport = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 2
  %0 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lport, align 16
  %vport = getelementptr inbounds %struct.fc_lport, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vport, align 8
  %cmp = icmp ne ptr %3, null
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qedf_capture_grc_dump(ptr noundef %qedf) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %lport.i = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 2
  %0 = ptrtoint ptr %lport.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lport.i, align 16
  %vport.i = getelementptr inbounds %struct.fc_lport, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %vport.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vport.i, align 8
  %cmp.i.not = icmp eq ptr %3, null
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %qedf_get_base_qedf.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

qedf_get_base_qedf.exit:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %shost.i = getelementptr inbounds %struct.fc_vport, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %shost.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %shost.i, align 8
  %add.ptr.i.i = getelementptr %struct.Scsi_Host, ptr %5, i32 1, i32 49, i32 12, i32 3, i32 0, i32 0, i32 4, i32 2
  br label %if.end

if.end:                                           ; preds = %qedf_get_base_qedf.exit, %entry.if.end_crit_edge
  %base_qedf.0 = phi ptr [ %add.ptr.i.i, %qedf_get_base_qedf.exit ], [ %qedf, %entry.if.end_crit_edge ]
  %flags = getelementptr inbounds %struct.qedf_ctx, ptr %base_qedf.0, i32 0, i32 29
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, i32, i32, ptr, ...) @qedf_dbg_info(ptr noundef %base_qedf.0, ptr noundef nonnull @__func__.qedf_capture_grc_dump, i32 noundef 92, i32 noundef 2, ptr noundef nonnull @.str) #4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %cdev = getelementptr inbounds %struct.qedf_ctx, ptr %base_qedf.0, i32 0, i32 8
  %9 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cdev, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qed_ops to i32))
  %11 = load ptr, ptr @qed_ops, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %grcdump = getelementptr inbounds %struct.qedf_ctx, ptr %base_qedf.0, i32 0, i32 58
  %grcdump_size = getelementptr inbounds %struct.qedf_ctx, ptr %base_qedf.0, i32 0, i32 59
  %call5 = tail call i32 @qedf_get_grc_dump(ptr noundef %10, ptr noundef %13, ptr noundef %grcdump, ptr noundef %grcdump_size) #4
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %base_qedf.0, ptr noundef nonnull @__func__.qedf_capture_grc_dump, i32 noundef 99, ptr noundef nonnull @.str.1) #4
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags) #4
  %lport = getelementptr inbounds %struct.qedf_ctx, ptr %base_qedf.0, i32 0, i32 2
  %14 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lport, align 16
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  tail call void @qedf_uevent_emit(ptr noundef %17, i32 noundef 0, ptr noundef null) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedf_dbg_info(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qedf_get_grc_dump(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedf_dbg_err(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedf_uevent_emit(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qedf_create_sysfs_ctx_attr(ptr nocapture noundef readonly %qedf) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %lport = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 2
  %0 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lport, align 16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call = tail call i32 @qedf_create_sysfs_attr(ptr noundef %3, ptr noundef nonnull @bin_file_entries) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qedf_create_sysfs_attr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qedf_remove_sysfs_ctx_attr(ptr nocapture noundef readonly %qedf) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %lport = getelementptr inbounds %struct.qedf_ctx, ptr %qedf, i32 0, i32 2
  %0 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lport, align 16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void @qedf_remove_sysfs_attr(ptr noundef %3, ptr noundef nonnull @bin_file_entries) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qedf_remove_sysfs_attr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fcoe_mac_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #1 align 64 {
entry:
  %fcoe_mac = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr i8, ptr %dev, i32 936
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %fcoe_mac) #4
  %0 = getelementptr inbounds [6 x i8], ptr %fcoe_mac, i32 0, i32 1
  %1 = getelementptr inbounds [6 x i8], ptr %fcoe_mac, i32 0, i32 2
  %2 = getelementptr inbounds [6 x i8], ptr %fcoe_mac, i32 0, i32 3
  %3 = getelementptr inbounds [6 x i8], ptr %fcoe_mac, i32 0, i32 4
  %4 = getelementptr inbounds [6 x i8], ptr %fcoe_mac, i32 0, i32 5
  %5 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hostdata.i, align 8
  %shost_data = getelementptr inbounds %struct.Scsi_Host, ptr %6, i32 0, i32 51
  %7 = ptrtoint ptr %shost_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %shost_data, align 8
  %port_id1 = getelementptr inbounds %struct.fc_host_attrs, ptr %8, i32 0, i32 22
  %9 = ptrtoint ptr %port_id1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port_id1, align 8
  %conv = trunc i32 %10 to i8
  %and2 = lshr i32 %10, 8
  %conv3 = trunc i32 %and2 to i8
  %and5 = lshr i32 %10, 16
  %conv7 = trunc i32 %and5 to i8
  %11 = ptrtoint ptr %fcoe_mac to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 14, ptr %fcoe_mac, align 1
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -4, ptr %0, align 1
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %1, align 1
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv7, ptr %2, align 1
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv3, ptr %3, align 1
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv, ptr %4, align 1
  %call11 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.3, ptr noundef nonnull %fcoe_mac) #4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %fcoe_mac) #4
  ret i32 %call11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fka_period_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 1944
  %lport.i = getelementptr i8, ptr %dev, i32 2392
  %0 = ptrtoint ptr %lport.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lport.i, align 16
  %vport.i = getelementptr inbounds %struct.fc_lport, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %vport.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vport.i, align 8
  %cmp.i.not = icmp eq ptr %3, null
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %qedf_get_base_qedf.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

qedf_get_base_qedf.exit:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %shost.i = getelementptr inbounds %struct.fc_vport, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %shost.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %shost.i, align 8
  %add.ptr.i.i = getelementptr %struct.Scsi_Host, ptr %5, i32 1, i32 49, i32 12, i32 3, i32 0, i32 0, i32 4, i32 2
  br label %if.end

if.end:                                           ; preds = %qedf_get_base_qedf.exit, %entry.if.end_crit_edge
  %qedf.0 = phi ptr [ %add.ptr.i.i, %qedf_get_base_qedf.exit ], [ %add.ptr.i, %entry.if.end_crit_edge ]
  %sel_fcf = getelementptr inbounds %struct.qedf_ctx, ptr %qedf.0, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %sel_fcf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sel_fcf, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then4

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %fka_period7 = getelementptr inbounds %struct.fcoe_fcf, ptr %7, i32 0, i32 14
  %8 = ptrtoint ptr %fka_period7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fka_period7, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end.if.end8_crit_edge
  %fka_period.0 = phi i32 [ %9, %if.then4 ], [ -1, %if.end.if.end8_crit_edge ]
  %call9 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.5, i32 noundef %fka_period.0) #4
  ret i32 %call9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qedf_sysfs_read_grcdump(ptr nocapture noundef readnone %filep, ptr noundef %kobj, ptr nocapture noundef readnone %ba, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #1 align 64 {
entry:
  %off.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %off.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %off, ptr %off.addr, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %kobj, %entry ], [ %2, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %1 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %2, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %flags = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 50, i32 12, i32 8, i32 4
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %5 = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #6
  %grcdump = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 3, i32 50, i32 12, i32 5, i32 1
  %6 = ptrtoint ptr %grcdump to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %grcdump, align 4
  %grcdump_size = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 3, i32 50, i32 12, i32 5, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %grcdump_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %grcdump_size, align 16
  %call4 = call i32 @memory_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef nonnull %off.addr, ptr noundef %7, i32 noundef %9) #4
  br label %if.end

if.else:                                          ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i8 = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 49, i32 12, i32 3, i32 0, i32 0, i32 4, i32 2
  tail call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %add.ptr.i8, ptr noundef nonnull @__func__.qedf_sysfs_read_grcdump, i32 noundef 119, ptr noundef nonnull @.str.7) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call4, %if.then ], [ 0, %if.else ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qedf_sysfs_write_grcdump(ptr nocapture noundef readnone %filep, ptr noundef %kobj, ptr nocapture noundef readnone %ba, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #1 align 64 {
entry:
  %reading = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reading) #4
  %0 = ptrtoint ptr %reading to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reading, align 4, !annotation !42
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %cmp.not = icmp eq i64 %off, 0
  br i1 %cmp.not, label %entry.while.cond.i_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

entry.while.cond.i_crit_edge:                     ; preds = %entry
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry.while.cond.i_crit_edge
  %dev.addr.0.i = phi ptr [ %2, %while.body.i.while.cond.i_crit_edge ], [ %kobj, %entry.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %1 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %2, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %add.ptr.i19 = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 49, i32 12, i32 3, i32 0, i32 0, i32 4, i32 2
  %arrayidx = getelementptr i8, ptr %buf, i32 1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %arrayidx, align 1
  %call.i20 = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %reading) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20)
  %tobool.not = icmp eq i32 %call.i20, 0
  br i1 %tobool.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, i32, ptr, ...) @qedf_dbg_err(ptr noundef %add.ptr.i19, ptr noundef nonnull @__func__.qedf_sysfs_write_grcdump, i32 noundef 147, ptr noundef nonnull @.str.8, i32 noundef %call.i20) #4
  br label %cleanup

if.end5:                                          ; preds = %dev_to_shost.exit
  %4 = ptrtoint ptr %reading to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reading, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %if.end5.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
  ]

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  %grcdump = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 3, i32 50, i32 12, i32 5, i32 1
  %7 = ptrtoint ptr %grcdump to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %grcdump, align 4
  %grcdump_size = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 3, i32 50, i32 12, i32 5, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %grcdump_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %grcdump_size, align 16
  %11 = call ptr @memset(ptr %8, i32 0, i32 %10)
  %flags = getelementptr %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 50, i32 12, i32 8, i32 4
  call void @_clear_bit(i32 noundef 4, ptr noundef %flags) #4
  br label %cleanup

sw.bb6:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  call void @qedf_capture_grc_dump(ptr noundef %add.ptr.i19)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb6, %sw.bb, %if.end5.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i20, %if.then4 ], [ 0, %entry.cleanup_crit_edge ], [ %count, %if.end5.cleanup_crit_edge ], [ %count, %sw.bb6 ], [ %count, %sw.bb ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reading) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memory_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_is_host_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !14, !16, !18, !19, !21, !23, !25, !27, !29, !30, !32}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @qedf_host_groups, !1, !"qedf_host_groups", i1 false, i1 false}
!1 = !{!"../drivers/scsi/qedf/qedf_attr.c", i32 73, i32 31}
!2 = !{ptr @__func__.qedf_capture_grc_dump, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/scsi/qedf/qedf_attr.c", i32 91, i32 3}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/scsi/qedf/qedf_attr.c", i32 99, i32 2}
!7 = !{ptr @qedf_host_attr_group, !8, !"qedf_host_attr_group", i1 false, i1 false}
!8 = !{!"../drivers/scsi/qedf/qedf_attr.c", i32 69, i32 37}
!9 = !{ptr @qedf_host_attrs, !10, !"qedf_host_attrs", i1 false, i1 false}
!10 = !{!"../drivers/scsi/qedf/qedf_attr.c", i32 63, i32 26}
!11 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/scsi/qedf/qedf_attr.c", i32 60, i32 8}
!13 = !{ptr @dev_attr_fcoe_mac, !12, !"dev_attr_fcoe_mac", i1 false, i1 false}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/scsi/qedf/qedf_attr.c", i32 41, i32 35}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/qedf/qedf_attr.c", i32 61, i32 8}
!18 = !{ptr @dev_attr_fka_period, !17, !"dev_attr_fka_period", i1 false, i1 false}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/scsi/qedf/qedf_attr.c", i32 57, i32 35}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/scsi/qedf/qedf_attr.c", i32 176, i32 3}
!23 = !{ptr @bin_file_entries, !24, !"bin_file_entries", i1 false, i1 false}
!24 = !{!"../drivers/scsi/qedf/qedf_attr.c", i32 175, i32 31}
!25 = !{ptr @sysfs_grcdump_attr, !26, !"sysfs_grcdump_attr", i1 false, i1 false}
!26 = !{!"../drivers/scsi/qedf/qedf_attr.c", i32 165, i32 29}
!27 = !{ptr @__func__.qedf_sysfs_read_grcdump, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/scsi/qedf/qedf_attr.c", i32 119, i32 3}
!29 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @__func__.qedf_sysfs_write_grcdump, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/scsi/qedf/qedf_attr.c", i32 147, i32 3}
!32 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{!"auto-init"}
