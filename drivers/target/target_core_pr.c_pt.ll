; ModuleID = '/llk/IR_all_yes/drivers/target/target_core_pr.c_pt.bc'
source_filename = "../drivers/target/target_core_pr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.t10_pr_registration = type { [16 x i8], [256 x i8], [256 x i8], i16, i16, i32, i32, i32, i32, i32, i8, i64, i64, i16, i32, i64, i64, %struct.atomic_t, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.se_device = type { i16, i32, i32, i8, i32, i64, i32, i64, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i8, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.spinlock, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.semaphore, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.list_head, ptr, %struct.t10_wwn, %struct.t10_alua, %struct.t10_reservation, %struct.se_dev_attrib, %struct.config_group, %struct.config_group, %struct.config_group, %struct.se_dev_stat_grps, [512 x i8], [512 x i8], ptr, %struct.se_lun, i32, i32, %struct.callback_head, i32, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.se_cmd = type { i32, i8, i16, i8, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.llist_node, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i64, i32, i32, %struct.spinlock, %struct.kref, %struct.completion, %struct.work_struct, ptr, ptr, i32, i32, ptr, ptr, i32, i32, %struct.list_head, ptr, i32, i32, i8, i8, i32, i32, ptr, i32, i32, i64, i32 }
%struct.llist_node = type { ptr }
%struct.se_session = type { %struct.atomic_t, i64, i32, i32, ptr, ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.completion, ptr, %struct.sbitmap_queue }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, ptr, %struct.atomic_t, i32 }
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.se_portal_group = type { i32, i8, %struct.atomic_t, %struct.mutex, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.hlist_head, ptr, %struct.list_head, ptr, ptr, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group }
%struct.hlist_head = type { ptr }
%struct.target_core_fabric_ops = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.se_node_acl = type { [224 x i8], i8, i8, i32, i32, i32, [64 x i8], %struct.atomic_t, %struct.hlist_head, ptr, ptr, %struct.mutex, %struct.spinlock, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.list_head, %struct.list_head, %struct.completion, %struct.kref }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.se_dev_entry = type { i64, i64, i64, i8, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.kref, %struct.completion, ptr, %struct.spinlock, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hlist_node, %struct.callback_head }
%struct.se_lun_acl = type { i64, ptr, ptr, %struct.config_group, %struct.se_ml_stat_grps }
%struct.se_ml_stat_grps = type { %struct.config_group, %struct.config_group, %struct.config_group }
%struct.se_hba = type { i16, i32, i32, i32, i32, ptr, %struct.list_head, %struct.spinlock, %struct.config_group, %struct.mutex, ptr }
%struct.pr_transport_id_holder = type { ptr, ptr, ptr, ptr, %struct.list_head }
%struct.percpu_ref_data = type { %struct.atomic_t, ptr, ptr, i8, %struct.callback_head, ptr }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",i,0x%s\00", [24 x i8] zeroinitializer }, align 32
@target_scsi2_reservation_release.__UNIQUE_ID_ddebug206 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 58, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"target_core_mod\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"target_scsi2_reservation_release\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/target/target_core_pr.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"SCSI-2 Released reservation for %s LUN: %llu -> MAPPED LUN: %llu for %s\0A\00", [55 x i8] zeroinitializer }, align 32
@target_scsi2_reservation_reserve._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.3, i32 252, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013LongIO and Obsolete Bits set, returning ILLEGAL_REQUEST\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"target_scsi2_reservation_reserve\00", [63 x i8] zeroinitializer }, align 32
@target_scsi2_reservation_reserve._entry_ptr = internal global ptr @target_scsi2_reservation_reserve._entry, section ".printk_index", align 4
@target_scsi2_reservation_reserve._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.3, i32 273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013SCSI-2 RESERVATION CONFLICT for %s fabric\0A\00", [51 x i8] zeroinitializer }, align 32
@target_scsi2_reservation_reserve._entry_ptr.9 = internal global ptr @target_scsi2_reservation_reserve._entry.7, section ".printk_index", align 4
@target_scsi2_reservation_reserve._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.3, i32 276, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013Original reserver LUN: %llu %s\0A\00", [62 x i8] zeroinitializer }, align 32
@target_scsi2_reservation_reserve._entry_ptr.12 = internal global ptr @target_scsi2_reservation_reserve._entry.10, section ".printk_index", align 4
@target_scsi2_reservation_reserve._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str.3, i32 280, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013Current attempt - LUN: %llu -> MAPPED LUN: %llu from %s \0A\00", [36 x i8] zeroinitializer }, align 32
@target_scsi2_reservation_reserve._entry_ptr.15 = internal global ptr @target_scsi2_reservation_reserve._entry.13, section ".printk_index", align 4
@target_scsi2_reservation_reserve.__UNIQUE_ID_ddebug207 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.6, ptr @.str.3, ptr @.str.16, i8 0, i8 73, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"SCSI-2 Reserved %s LUN: %llu -> MAPPED LUN: %llu for %s\0A\00", [39 x i8] zeroinitializer }, align 32
@core_scsi3_alloc_aptpl_registration._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 839, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013Illegal parameters for APTPL registration\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"core_scsi3_alloc_aptpl_registration\00", [60 x i8] zeroinitializer }, align 32
@core_scsi3_alloc_aptpl_registration._entry_ptr = internal global ptr @core_scsi3_alloc_aptpl_registration._entry, section ".printk_index", align 4
@t10_pr_reg_cache = external dso_local local_unnamed_addr global ptr, align 4
@core_scsi3_alloc_aptpl_registration._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.3, i32 845, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013Unable to allocate struct t10_pr_registration\0A\00", [47 x i8] zeroinitializer }, align 32
@core_scsi3_alloc_aptpl_registration._entry_ptr.21 = internal global ptr @core_scsi3_alloc_aptpl_registration._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@core_scsi3_alloc_aptpl_registration.__UNIQUE_ID_ddebug218 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.18, ptr @.str.3, ptr @.str.23, i8 0, i8 -34, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"SPC-3 PR APTPL Successfully added registration%s from metadata\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"+reservation\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Write Exclusive Access\00", [41 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Exclusive Access\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Write Exclusive Access, Registrants Only\00", [55 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Exclusive Access, Registrants Only\00", [61 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Write Exclusive Access, All Registrants\00", [56 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Exclusive Access, All Registrants\00", [62 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unknown SPC-3 PR Type\00", [42 x i8] zeroinitializer }, align 32
@target_scsi3_emulate_pr_out._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 3560, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [106 x i8], [54 x i8] } { [106 x i8] c"\013Received PERSISTENT_RESERVE CDB while legacy SPC-2 reservation is held, returning RESERVATION_CONFLICT\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"target_scsi3_emulate_pr_out\00", [36 x i8] zeroinitializer }, align 32
@target_scsi3_emulate_pr_out._entry_ptr = internal global ptr @target_scsi3_emulate_pr_out._entry, section ".printk_index", align 4
@target_scsi3_emulate_pr_out._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.3, i32 3573, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\014SPC-PR: Received PR OUT parameter list length too small: %u\0A\00", [33 x i8] zeroinitializer }, align 32
@target_scsi3_emulate_pr_out._entry_ptr.37 = internal global ptr @target_scsi3_emulate_pr_out._entry.35, section ".printk_index", align 4
@target_scsi3_emulate_pr_out._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.34, ptr @.str.3, i32 3633, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\014SPC-PR: Received PR OUT illegal parameter list length: %u\0A\00", [35 x i8] zeroinitializer }, align 32
@target_scsi3_emulate_pr_out._entry_ptr.40 = internal global ptr @target_scsi3_emulate_pr_out._entry.38, section ".printk_index", align 4
@target_scsi3_emulate_pr_out._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.34, ptr @.str.3, i32 3674, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013Unknown PERSISTENT_RESERVE_OUT service action: 0x%02x\0A\00", [39 x i8] zeroinitializer }, align 32
@target_scsi3_emulate_pr_out._entry_ptr.43 = internal global ptr @target_scsi3_emulate_pr_out._entry.41, section ".printk_index", align 4
@target_scsi3_emulate_pr_in._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.44, ptr @.str.3, i32 4052, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"target_scsi3_emulate_pr_in\00", [37 x i8] zeroinitializer }, align 32
@target_scsi3_emulate_pr_in._entry_ptr = internal global ptr @target_scsi3_emulate_pr_in._entry, section ".printk_index", align 4
@target_scsi3_emulate_pr_in._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.3, i32 4071, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013Unknown PERSISTENT_RESERVE_IN service action: 0x%02x\0A\00", [40 x i8] zeroinitializer }, align 32
@target_scsi3_emulate_pr_in._entry_ptr.47 = internal global ptr @target_scsi3_emulate_pr_in._entry.45, section ".printk_index", align 4
@target_check_scsi2_reservation_conflict._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.3, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [112 x i8], [48 x i8] } { [112 x i8] c"\013Received legacy SPC-2 RESERVE/RELEASE while active SPC-3 registrations exist, returning RESERVATION_CONFLICT\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"target_check_scsi2_reservation_conflict\00", [56 x i8] zeroinitializer }, align 32
@target_check_scsi2_reservation_conflict._entry_ptr = internal global ptr @target_check_scsi2_reservation_conflict._entry, section ".printk_index", align 4
@__core_scsi3_check_aptpl_registration._entry = internal constant %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.3, i32 964, ptr null, ptr null }, align 1
@.str.50 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013Unable to locate PR APTPL %s mapped_lun: %llu\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"__core_scsi3_check_aptpl_registration\00", [58 x i8] zeroinitializer }, align 32
@__core_scsi3_check_aptpl_registration._entry_ptr = internal global ptr @__core_scsi3_check_aptpl_registration._entry, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.52 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.54 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__core_scsi3_dump_registration.__UNIQUE_ID_ddebug221 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.55, ptr @.str.3, ptr @.str.56, i8 1, i8 1, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"__core_scsi3_dump_registration\00", [33 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"SPC-3 PR [%s] Service Action: REGISTER%s Initiator Node: %s%s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"_AND_MOVE\00", [22 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"_AND_IGNORE_EXISTING_KEY\00", [39 x i8] zeroinitializer }, align 32
@__core_scsi3_dump_registration.__UNIQUE_ID_ddebug222 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.55, ptr @.str.3, ptr @.str.59, i8 1, i8 2, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"SPC-3 PR [%s] registration on Target Port: %s,0x%04x\0A\00", [42 x i8] zeroinitializer }, align 32
@__core_scsi3_dump_registration.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.55, ptr @.str.3, ptr @.str.60, i8 1, i8 3, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"SPC-3 PR [%s] for %s TCM Subsystem %s Object Target Port(s)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ALL\00", [28 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SINGLE\00", [25 x i8] zeroinitializer }, align 32
@__core_scsi3_dump_registration.__UNIQUE_ID_ddebug224 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.55, ptr @.str.3, ptr @.str.63, i8 1, i8 4, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"SPC-3 PR [%s] SA Res Key: 0x%016Lx PRgeneration: 0x%08x  APTPL: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@core_scsi3_lunacl_undepend_item.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.64 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@core_scsi3_aptpl_reserve.__UNIQUE_ID_ddebug219 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.65, ptr @.str.3, ptr @.str.66, i8 0, i8 -29, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"core_scsi3_aptpl_reserve\00", [39 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"SPC-3 PR [%s] Service Action: APTPL RESERVE created new reservation holder TYPE: %s ALL_TG_PT: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@core_scsi3_aptpl_reserve.__UNIQUE_ID_ddebug220 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.65, ptr @.str.3, ptr @.str.67, i8 0, i8 -28, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"SPC-3 PR [%s] RESERVE Node: %s%s\0A\00", [62 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@__core_scsi3_free_registration.__UNIQUE_ID_ddebug225 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.68, ptr @.str.3, ptr @.str.69, i8 1, i8 71, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"__core_scsi3_free_registration\00", [33 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"SPC-3 PR [%s] waiting for pr_res_holders\0A\00", [54 x i8] zeroinitializer }, align 32
@__core_scsi3_free_registration.__UNIQUE_ID_ddebug226 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.68, ptr @.str.3, ptr @.str.70, i8 1, i8 74, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"SPC-3 PR [%s] Service Action: UNREGISTER Initiator Node: %s%s\0A\00", [33 x i8] zeroinitializer }, align 32
@__core_scsi3_free_registration.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.68, ptr @.str.3, ptr @.str.60, i8 1, i8 75, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__core_scsi3_free_registration.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.68, ptr @.str.3, ptr @.str.71, i8 1, i8 76, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"SPC-3 PR [%s] SA Res Key: 0x%016Lx PRgeneration: 0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@__core_scsi3_complete_pro_release.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.72, ptr @.str.3, ptr @.str.73, i8 2, i8 112, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"__core_scsi3_complete_pro_release\00", [62 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"SPC-3 PR [%s] Service Action: %s RELEASE cleared reservation holder TYPE: %s ALL_TG_PT: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"explicit\00", [23 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"implicit\00", [23 x i8] zeroinitializer }, align 32
@__core_scsi3_complete_pro_release.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.72, ptr @.str.3, ptr @.str.76, i8 2, i8 113, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"SPC-3 PR [%s] RELEASE Node: %s%s\0A\00", [62 x i8] zeroinitializer }, align 32
@core_scsi3_emulate_pro_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.3, i32 2061, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013SPC-3 PR: se_sess || struct se_lun is NULL!\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"core_scsi3_emulate_pro_register\00", [32 x i8] zeroinitializer }, align 32
@core_scsi3_emulate_pro_register._entry_ptr = internal global ptr @core_scsi3_emulate_pro_register._entry, section ".printk_index", align 4
@core_scsi3_emulate_pro_register._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.3, i32 2078, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\014SPC-3 PR: Reservation Key non-zero for SA REGISTER, returning CONFLICT\0A\00", [54 x i8] zeroinitializer }, align 32
@core_scsi3_emulate_pro_register._entry_ptr.81 = internal global ptr @core_scsi3_emulate_pro_register._entry.79, section ".printk_index", align 4
@core_scsi3_emulate_pro_register._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.78, ptr @.str.3, i32 2099, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@core_scsi3_emulate_pro_register._entry_ptr.83 = internal global ptr @core_scsi3_emulate_pro_register._entry.82, section ".printk_index", align 4
@core_scsi3_emulate_pro_register._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.78, ptr @.str.3, i32 2126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [103 x i8], [57 x i8] } { [103 x i8] c"\013SPC-3 PR REGISTER: Received res_key: 0x%016Lx does not match existing SA REGISTER res_key: 0x%016Lx\0A\00", [57 x i8] zeroinitializer }, align 32
@core_scsi3_emulate_pro_register._entry_ptr.86 = internal global ptr @core_scsi3_emulate_pro_register._entry.84, section ".printk_index", align 4
@core_scsi3_emulate_pro_register._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.78, ptr @.str.3, i32 2133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013SPC-3 PR REGISTER: SPEC_I_PT set on a registered nexus\0A\00", [38 x i8] zeroinitializer }, align 32
@core_scsi3_emulate_pro_register._entry_ptr.89 = internal global ptr @core_scsi3_emulate_pro_register._entry.87, section ".printk_index", align 4
@core_scsi3_emulate_pro_register._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.78, ptr @.str.3, i32 2145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [105 x i8], [55 x i8] } { [105 x i8] c"\013SPC-3 PR REGISTER: ALL_TG_PT=1 registration exists, but ALL_TG_PT=1 bit not present in received PROUT\0A\00", [55 x i8] zeroinitializer }, align 32
@core_scsi3_emulate_pro_register._entry_ptr.92 = internal global ptr @core_scsi3_emulate_pro_register._entry.90, section ".printk_index", align 4
@core_scsi3_emulate_pro_register.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.78, ptr @.str.3, ptr @.str.93, i8 2, i8 29, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"SPC-3 PR [%s] REGISTER%s: Changed Reservation Key for %s to: 0x%016Lx PRgeneration: 0x%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@__core_scsi3_alloc_registration.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__core_scsi3_alloc_registration._entry = internal constant %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.3, i32 775, ptr null, ptr null }, align 1
@.str.94 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013core_scsi3_lunacl_depend_item() failed\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"__core_scsi3_alloc_registration\00", [32 x i8] zeroinitializer }, align 32
@__core_scsi3_alloc_registration._entry_ptr = internal global ptr @__core_scsi3_alloc_registration._entry, section ".printk_index", align 4
@__core_scsi3_alloc_registration.__warned.96 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__core_scsi3_do_alloc_registration._entry = internal constant %struct.pi_entry { ptr @.str.20, ptr @.str.97, ptr @.str.3, i32 630, ptr null, ptr null }, align 1
@.str.97 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"__core_scsi3_do_alloc_registration\00", [61 x i8] zeroinitializer }, align 32
@__core_scsi3_do_alloc_registration._entry_ptr = internal global ptr @__core_scsi3_do_alloc_registration._entry, section ".printk_index", align 4
@__core_scsi3_do_alloc_registration._entry.98 = internal constant %struct.pi_entry { ptr @.str.99, ptr @.str.97, ptr @.str.3, i32 657, ptr null, ptr null }, align 1
@.str.99 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013Unable to locate PR deve %s mapped_lun: %llu\0A\00", [48 x i8] zeroinitializer }, align 32
@__core_scsi3_do_alloc_registration._entry_ptr.100 = internal global ptr @__core_scsi3_do_alloc_registration._entry.98, section ".printk_index", align 4
@percpu_ref_tryget_live_rcu.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.101 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"include/linux/percpu-refcount.h\00", [32 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@core_scsi3_lunacl_depend_item.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@core_scsi3_decode_spec_i_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.3, i32 1503, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013Unable to allocate tidh_new\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"core_scsi3_decode_spec_i_port\00", [34 x i8] zeroinitializer }, align 32
@core_scsi3_decode_spec_i_port._entry_ptr = internal global ptr @core_scsi3_decode_spec_i_port._entry, section ".printk_index", align 4
@core_scsi3_decode_spec_i_port._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.103, ptr @.str.3, i32 1532, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@core_scsi3_decode_spec_i_port._entry_ptr.105 = internal global ptr @core_scsi3_decode_spec_i_port._entry.104, section ".printk_index", align 4
@core_scsi3_decode_spec_i_port._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.103, ptr @.str.3, i32 1553, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\013SPC-3 PR: Illegal tpdl: %u + 28 byte header does not equal CDB data_length: %u\0A\00", [46 x i8] zeroinitializer }, align 32
@core_scsi3_decode_spec_i_port._entry_ptr.108 = internal global ptr @core_scsi3_decode_spec_i_port._entry.106, section ".printk_index", align 4
@core_scsi3_decode_spec_i_port._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.103, ptr @.str.3, i32 1596, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"\014SPC-PR: enforce_pr_isids is set but a isid has not been sent in the SPEC_I_PT data for %s.\00", [35 x i8] zeroinitializer }, align 32
@core_scsi3_decode_spec_i_port._entry_ptr.111 = internal global ptr @core_scsi3_decode_spec_i_port._entry.109, section ".printk_index", align 4
@core_scsi3_decode_spec_i_port._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.103, ptr @.str.3, i32 1607, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013 core_scsi3_tpg_depend_item() for tmp_tpg\0A\00", [51 x i8] zeroinitializer }, align 32
@core_scsi3_decode_spec_i_port._entry_ptr.114 = internal global ptr @core_scsi3_decode_spec_i_port._entry.112, section ".printk_index", align 4
@core_scsi3_decode_spec_i_port._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.103, ptr @.str.3, i32 1632, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013configfs_depend_item() failed for dest_node_acl->acl_group\0A\00", [34 x i8] zeroinitializer }, align 32
@core_scsi3_decode_spec_i_port._entry_ptr.117 = internal global ptr @core_scsi3_decode_spec_i_port._entry.115, section ".printk_index", align 4
@core_scsi3_decode_spec_i_port.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.103, ptr @.str.3, ptr @.str.118, i8 1, i8 -102, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"SPC-3 PR SPEC_I_PT: Located %s Node: %s Port RTPI: %u\0A\00", [41 x i8] zeroinitializer }, align 32
@core_scsi3_decode_spec_i_port._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.103, ptr @.str.3, i32 1651, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013SPC-3 PR SPEC_I_PT: Unable to locate dest_tpg\0A\00", [47 x i8] zeroinitializer }, align 32
@core_scsi3_decode_spec_i_port._entry_ptr.121 = internal global ptr @core_scsi3_decode_spec_i_port._entry.119, section ".printk_index", align 4
@core_scsi3_decode_spec_i_port.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.103, ptr @.str.3, ptr @.str.122, i8 1, i8 -98, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.122 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"SPC-3 PR SPEC_I_PT: Got %s data_length: %u tpdl: %u tid_len: %d for %s + %s\0A\00", [51 x i8] zeroinitializer }, align 32
@core_scsi3_decode_spec_i_port._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.103, ptr @.str.3, i32 1663, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013SPC-3 PR SPEC_I_PT: Illegal tid_len: %u for Transport ID: %s\0A\00", [32 x i8] zeroinitializer }, align 32
@core_scsi3_decode_spec_i_port._entry_ptr.125 = internal global ptr @core_scsi3_decode_spec_i_port._entry.123, section ".printk_index", align 4
@core_scsi3_decode_spec_i_port._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.103, ptr @.str.3, i32 1679, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013Unable to locate %s dest_se_deve from destination RTPI: %u\0A\00", [34 x i8] zeroinitializer }, align 32
@core_scsi3_decode_spec_i_port._entry_ptr.128 = internal global ptr @core_scsi3_decode_spec_i_port._entry.126, section ".printk_index", align 4
@core_scsi3_decode_spec_i_port._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.103, ptr @.str.3, i32 1689, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@core_scsi3_decode_spec_i_port._entry_ptr.130 = internal global ptr @core_scsi3_decode_spec_i_port._entry.129, section ".printk_index", align 4
@core_scsi3_decode_spec_i_port.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.103, ptr @.str.3, ptr @.str.131, i8 1, i8 -87, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.131 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"SPC-3 PR SPEC_I_PT: Located %s Node: %s dest_se_deve mapped_lun: %llu\0A\00", [57 x i8] zeroinitializer }, align 32
@core_scsi3_decode_spec_i_port._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.3, i32 1726, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@core_scsi3_decode_spec_i_port._entry_ptr.133 = internal global ptr @core_scsi3_decode_spec_i_port._entry.132, section ".printk_index", align 4
@core_scsi3_decode_spec_i_port.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@core_scsi3_decode_spec_i_port.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.103, ptr @.str.3, ptr @.str.134, i8 1, i8 -59, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.134 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"SPC-3 PR [%s] SPEC_I_PT: Successfully registered Transport ID for Node: %s%s Mapped LUN: %llu\0A\00", [33 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.135 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"No Registrations or Reservations\0A\00", [62 x i8] zeroinitializer }, align 32
@core_scsi3_update_and_write_aptpl.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.136, ptr @.str.3, ptr @.str.137, i8 1, i8 -9, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.136 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"core_scsi3_update_and_write_aptpl\00", [62 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"SPC-3 PR: Set APTPL Bit Deactivated\0A\00", [59 x i8] zeroinitializer }, align 32
@core_scsi3_update_and_write_aptpl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.136, ptr @.str.3, i32 2035, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013SPC-3 PR: Could not update APTPL\0A\00", [60 x i8] zeroinitializer }, align 32
@core_scsi3_update_and_write_aptpl._entry_ptr = internal global ptr @core_scsi3_update_and_write_aptpl._entry, section ".printk_index", align 4
@core_scsi3_update_and_write_aptpl.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.136, ptr @.str.3, ptr @.str.139, i8 1, i8 -2, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.139 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"SPC-3 PR: Set APTPL Bit Activated\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s/pr/aptpl_%s\00", [17 x i8] zeroinitializer }, align 32
@db_root = external dso_local global [0 x i8], align 1
@__core_scsi3_write_aptpl_to_file._entry = internal constant %struct.pi_entry { ptr @.str.141, ptr @.str.142, ptr @.str.3, i32 1983, ptr null, ptr null }, align 1
@.str.141 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013filp_open(%s) for APTPL metadata failed\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"__core_scsi3_write_aptpl_to_file\00", [63 x i8] zeroinitializer }, align 32
@__core_scsi3_write_aptpl_to_file._entry_ptr = internal global ptr @__core_scsi3_write_aptpl_to_file._entry, section ".printk_index", align 4
@__core_scsi3_write_aptpl_to_file.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.142, ptr @.str.3, ptr @.str.143, i8 1, i8 -14, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.143 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Error writing APTPL metadata file: %s\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"initiator_sid=%s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [149 x i8], [43 x i8] } { [149 x i8] c"PR_REG_START: %d\0Ainitiator_fabric=%s\0Ainitiator_node=%s\0A%ssa_res_key=%llu\0Ares_holder=1\0Ares_type=%02x\0Ares_scope=%02x\0Ares_all_tg_pt=%d\0Amapped_lun=%llu\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [120 x i8], [40 x i8] } { [120 x i8] c"PR_REG_START: %d\0Ainitiator_fabric=%s\0Ainitiator_node=%s\0A%ssa_res_key=%llu\0Ares_holder=0\0Ares_all_tg_pt=%d\0Amapped_lun=%llu\0A\00", [40 x i8] zeroinitializer }, align 32
@core_scsi3_update_aptpl_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.3, i32 1926, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013Unable to update renaming APTPL metadata, reallocating larger buffer\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"core_scsi3_update_aptpl_buf\00", [36 x i8] zeroinitializer }, align 32
@core_scsi3_update_aptpl_buf._entry_ptr = internal global ptr @core_scsi3_update_aptpl_buf._entry, section ".printk_index", align 4
@.str.149 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"target_fabric=%s\0Atarget_node=%s\0Atpgt=%hu\0Aport_rtpi=%hu\0Atarget_lun=%llu\0APR_REG_END: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@core_scsi3_update_aptpl_buf._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.3, i32 1945, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@core_scsi3_update_aptpl_buf._entry_ptr.151 = internal global ptr @core_scsi3_update_aptpl_buf._entry.150, section ".printk_index", align 4
@.str.152 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"No Registrations or Reservations\00", [63 x i8] zeroinitializer }, align 32
@core_scsi3_check_implicit_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.154, ptr @.str.3, i32 1263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [152 x i8], [40 x i8] } { [152 x i8] c"\013SPC-3 PR: Unable to perform ALL_TG_PT=1 UNREGISTER while existing reservation with matching key 0x%016Lx is present from another SCSI Initiator Port\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"core_scsi3_check_implicit_release\00", [62 x i8] zeroinitializer }, align 32
@core_scsi3_check_implicit_release._entry_ptr = internal global ptr @core_scsi3_check_implicit_release._entry, section ".printk_index", align 4
@core_scsi3_emulate_pro_reserve._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.156, ptr @.str.3, i32 2438, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013SPC-3 PR: Unknown Service Action RESERVE Type: 0x%02x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"core_scsi3_emulate_pro_reserve\00", [33 x i8] zeroinitializer }, align 32
@core_scsi3_emulate_pro_reserve._entry_ptr = internal global ptr @core_scsi3_emulate_pro_reserve._entry, section ".printk_index", align 4
@core_scsi3_pro_reserve._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.157, ptr @.str.3, i32 2282, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"core_scsi3_pro_reserve\00", [41 x i8] zeroinitializer }, align 32
@core_scsi3_pro_reserve._entry_ptr = internal global ptr @core_scsi3_pro_reserve._entry, section ".printk_index", align 4
@core_scsi3_pro_reserve._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.157, ptr @.str.3, i32 2292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013SPC-3 PR: Unable to locate PR_REGISTERED *pr_reg for RESERVE\0A\00", [32 x i8] zeroinitializer }, align 32
@core_scsi3_pro_reserve._entry_ptr.160 = internal global ptr @core_scsi3_pro_reserve._entry.158, section ".printk_index", align 4
@core_scsi3_pro_reserve._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.157, ptr @.str.3, i32 2307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [102 x i8], [58 x i8] } { [102 x i8] c"\013SPC-3 PR RESERVE: Received res_key: 0x%016Lx does not match existing SA REGISTER res_key: 0x%016Lx\0A\00", [58 x i8] zeroinitializer }, align 32
@core_scsi3_pro_reserve._entry_ptr.163 = internal global ptr @core_scsi3_pro_reserve._entry.161, section ".printk_index", align 4
@core_scsi3_pro_reserve._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.157, ptr @.str.3, i32 2322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013SPC-3 PR: Illegal SCOPE: 0x%02x\0A\00", [61 x i8] zeroinitializer }, align 32
@core_scsi3_pro_reserve._entry_ptr.166 = internal global ptr @core_scsi3_pro_reserve._entry.164, section ".printk_index", align 4
@core_scsi3_pro_reserve._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.157, ptr @.str.3, i32 2352, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [120 x i8], [40 x i8] } { [120 x i8] c"\013SPC-3 PR: Attempted RESERVE from [%s]: %s while reservation already held by [%s]: %s, returning RESERVATION_CONFLICT\0A\00", [40 x i8] zeroinitializer }, align 32
@core_scsi3_pro_reserve._entry_ptr.169 = internal global ptr @core_scsi3_pro_reserve._entry.167, section ".printk_index", align 4
@core_scsi3_pro_reserve._entry.170 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.157, ptr @.str.3, i32 2375, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [156 x i8], [36 x i8] } { [156 x i8] c"\013SPC-3 PR: Attempted RESERVE from [%s]: %s trying to change TYPE and/or SCOPE, while reservation already held by [%s]: %s, returning RESERVATION_CONFLICT\0A\00", [36 x i8] zeroinitializer }, align 32
@core_scsi3_pro_reserve._entry_ptr.172 = internal global ptr @core_scsi3_pro_reserve._entry.170, section ".printk_index", align 4
@core_scsi3_pro_reserve.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.157, ptr @.str.3, ptr @.str.173, i8 2, i8 90, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.173 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"SPC-3 PR [%s] Service Action: RESERVE created new reservation holder TYPE: %s ALL_TG_PT: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@core_scsi3_pro_reserve.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.157, ptr @.str.3, ptr @.str.67, i8 2, i8 91, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@core_scsi3_emulate_pro_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.174, ptr @.str.3, i32 2522, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"core_scsi3_emulate_pro_release\00", [33 x i8] zeroinitializer }, align 32
@core_scsi3_emulate_pro_release._entry_ptr = internal global ptr @core_scsi3_emulate_pro_release._entry, section ".printk_index", align 4
@core_scsi3_emulate_pro_release._entry.175 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.174, ptr @.str.3, i32 2531, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013SPC-3 PR: Unable to locate PR_REGISTERED *pr_reg for RELEASE\0A\00", [32 x i8] zeroinitializer }, align 32
@core_scsi3_emulate_pro_release._entry_ptr.177 = internal global ptr @core_scsi3_emulate_pro_release._entry.175, section ".printk_index", align 4
@core_scsi3_emulate_pro_release._entry.178 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.174, ptr @.str.3, i32 2582, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [102 x i8], [58 x i8] } { [102 x i8] c"\013SPC-3 PR RELEASE: Received res_key: 0x%016Lx does not match existing SA REGISTER res_key: 0x%016Lx\0A\00", [58 x i8] zeroinitializer }, align 32
@core_scsi3_emulate_pro_release._entry_ptr.180 = internal global ptr @core_scsi3_emulate_pro_release._entry.178, section ".printk_index", align 4
@core_scsi3_emulate_pro_release._entry.181 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.174, ptr @.str.3, i32 2603, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [177 x i8], [47 x i8] } { [177 x i8] c"\013SPC-3 PR RELEASE: Attempted to release reservation from [%s]: %s with different TYPE and/or SCOPE  while reservation already held by [%s]: %s, returning RESERVATION_CONFLICT\0A\00", [47 x i8] zeroinitializer }, align 32
@core_scsi3_emulate_pro_release._entry_ptr.183 = internal global ptr @core_scsi3_emulate_pro_release._entry.181, section ".printk_index", align 4
@core_scsi3_emulate_pro_clear._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.185, ptr @.str.3, i32 2684, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013SPC-3 PR: Unable to locate PR_REGISTERED *pr_reg for CLEAR\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"core_scsi3_emulate_pro_clear\00", [35 x i8] zeroinitializer }, align 32
@core_scsi3_emulate_pro_clear._entry_ptr = internal global ptr @core_scsi3_emulate_pro_clear._entry, section ".printk_index", align 4
@core_scsi3_emulate_pro_clear._entry.186 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.185, ptr @.str.3, i32 2702, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@core_scsi3_emulate_pro_clear._entry_ptr.187 = internal global ptr @core_scsi3_emulate_pro_clear._entry.186, section ".printk_index", align 4
@core_scsi3_emulate_pro_clear.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.185, ptr @.str.3, ptr @.str.188, i8 2, i8 -83, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.188 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"SPC-3 PR [%s] Service Action: CLEAR complete\0A\00", [50 x i8] zeroinitializer }, align 32
@core_scsi3_emulate_pro_preempt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.190, ptr @.str.3, i32 3129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013SPC-3 PR: Unknown Service Action PREEMPT%s Type: 0x%02x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"core_scsi3_emulate_pro_preempt\00", [33 x i8] zeroinitializer }, align 32
@core_scsi3_emulate_pro_preempt._entry_ptr = internal global ptr @core_scsi3_emulate_pro_preempt._entry, section ".printk_index", align 4
@.str.191 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"_AND_ABORT\00", [21 x i8] zeroinitializer }, align 32
@core_scsi3_pro_preempt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.193, ptr @.str.3, i32 2842, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013SPC-3 PR: Unable to locate PR_REGISTERED *pr_reg for PREEMPT%s\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"core_scsi3_pro_preempt\00", [41 x i8] zeroinitializer }, align 32
@core_scsi3_pro_preempt._entry_ptr = internal global ptr @core_scsi3_pro_preempt._entry, section ".printk_index", align 4
@core_scsi3_pro_preempt._entry.194 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.193, ptr @.str.3, i32 2850, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@core_scsi3_pro_preempt._entry_ptr.195 = internal global ptr @core_scsi3_pro_preempt._entry.194, section ".printk_index", align 4
@__core_scsi3_complete_pro_preempt.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.196, ptr @.str.3, ptr @.str.197, i8 2, i8 -73, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.196 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"__core_scsi3_complete_pro_preempt\00", [62 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"SPC-3 PR [%s] Service Action: PREEMPT%s created new reservation holder TYPE: %s ALL_TG_PT: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@__core_scsi3_complete_pro_preempt.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.196, ptr @.str.3, ptr @.str.198, i8 2, i8 -72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.198 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"SPC-3 PR [%s] PREEMPT%s from Node: %s%s\0A\00", [55 x i8] zeroinitializer }, align 32
@core_scsi3_release_preempt_and_abort._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.199, ptr @.str.200, ptr @.str.3, i32 2809, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014pr_reg->pr_res_holder still set\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"core_scsi3_release_preempt_and_abort\00", [59 x i8] zeroinitializer }, align 32
@core_scsi3_release_preempt_and_abort._entry_ptr = internal global ptr @core_scsi3_release_preempt_and_abort._entry, section ".printk_index", align 4
@core_scsi3_emulate_pro_register_and_move._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.201, ptr @.str.3, i32 3158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"core_scsi3_emulate_pro_register_and_move\00", [55 x i8] zeroinitializer }, align 32
@core_scsi3_emulate_pro_register_and_move._entry_ptr = internal global ptr @core_scsi3_emulate_pro_register_and_move._entry, section ".printk_index", align 4
@core_scsi3_emulate_pro_register_and_move._entry.202 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.203, ptr @.str.201, ptr @.str.3, i32 3174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013SPC-3 PR: Unable to locate PR_REGISTERED *pr_reg for REGISTER_AND_MOVE\0A\00", [54 x i8] zeroinitializer }, align 32
@core_scsi3_emulate_pro_register_and_move._entry_ptr.204 = internal global ptr @core_scsi3_emulate_pro_register_and_move._entry.202, section ".printk_index", align 4
@core_scsi3_emulate_pro_register_and_move._entry.205 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.206, ptr @.str.201, ptr @.str.3, i32 3184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [112 x i8], [48 x i8] } { [112 x i8] c"\014SPC-3 PR REGISTER_AND_MOVE: Received res_key: 0x%016Lx does not match existing SA REGISTER res_key: 0x%016Lx\0A\00", [48 x i8] zeroinitializer }, align 32
@core_scsi3_emulate_pro_register_and_move._entry_ptr.207 = internal global ptr @core_scsi3_emulate_pro_register_and_move._entry.205, section ".printk_index", align 4
@core_scsi3_emulate_pro_register_and_move._entry.208 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.209, ptr @.str.201, ptr @.str.3, i32 3193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014SPC-3 PR REGISTER_AND_MOVE: Received zero sa_res_key\0A\00", [40 x i8] zeroinitializer }, align 32
@core_scsi3_emulate_pro_register_and_move._entry_ptr.210 = internal global ptr @core_scsi3_emulate_pro_register_and_move._entry.208, section ".printk_index", align 4
@core_scsi3_emulate_pro_register_and_move._entry.211 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.212, ptr @.str.201, ptr @.str.3, i32 3217, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\013SPC-3 PR: Illegal tid_len: %u + 24 byte header does not equal CDB data_length: %u\0A\00", [43 x i8] zeroinitializer }, align 32
@core_scsi3_emulate_pro_register_and_move._entry_ptr.213 = internal global ptr @core_scsi3_emulate_pro_register_and_move._entry.211, section ".printk_index", align 4
@core_scsi3_emulate_pro_register_and_move._entry.214 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.215, ptr @.str.201, ptr @.str.3, i32 3236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013core_scsi3_tpg_depend_item() failed for dest_se_tpg\0A\00", [41 x i8] zeroinitializer }, align 32
@core_scsi3_emulate_pro_register_and_move._entry_ptr.216 = internal global ptr @core_scsi3_emulate_pro_register_and_move._entry.214, section ".printk_index", align 4
@core_scsi3_emulate_pro_register_and_move._entry.217 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.218, ptr @.str.201, ptr @.str.3, i32 3250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"\013SPC-3 PR REGISTER_AND_MOVE: Unable to locate fabric ops from Relative Target Port Identifier: %hu\0A\00", [59 x i8] zeroinitializer }, align 32
@core_scsi3_emulate_pro_register_and_move._entry_ptr.219 = internal global ptr @core_scsi3_emulate_pro_register_and_move._entry.217, section ".printk_index", align 4
@core_scsi3_emulate_pro_register_and_move.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.201, ptr @.str.3, ptr @.str.220, i8 3, i8 47, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.220 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"SPC-3 PR REGISTER_AND_MOVE: Extracted Protocol Identifier: 0x%02x\0A\00", [61 x i8] zeroinitializer }, align 32
@core_scsi3_emulate_pro_register_and_move._entry.221 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.222, ptr @.str.201, ptr @.str.3, i32 3270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [105 x i8], [55 x i8] } { [105 x i8] c"\013SPC-3 PR REGISTER_AND_MOVE: Received proto_ident: 0x%02x does not match ident: 0x%02x from fabric: %s\0A\00", [55 x i8] zeroinitializer }, align 32
@core_scsi3_emulate_pro_register_and_move._entry_ptr.223 = internal global ptr @core_scsi3_emulate_pro_register_and_move._entry.221, section ".printk_index", align 4
@core_scsi3_emulate_pro_register_and_move._entry.224 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.201, ptr @.str.3, i32 3278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\013SPC-3 PR REGISTER_AND_MOVE: Unable to locate initiator_str from Transport ID\0A\00", [48 x i8] zeroinitializer }, align 32
@core_scsi3_emulate_pro_register_and_move._entry_ptr.226 = internal global ptr @core_scsi3_emulate_pro_register_and_move._entry.224, section ".printk_index", align 4
@core_scsi3_emulate_pro_register_and_move.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.201, ptr @.str.3, ptr @.str.227, i8 3, i8 54, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.227 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"SPC-3 PR [%s] Extracted initiator %s identifier: %s %s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"port\00", [27 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"device\00", [25 x i8] zeroinitializer }, align 32
@core_scsi3_emulate_pro_register_and_move._entry.230 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.231, ptr @.str.201, ptr @.str.3, i32 3307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\013SPC-3 PR REGISTER_AND_MOVE: TransportID: %s matches: %s on received I_T Nexus\0A\00", [47 x i8] zeroinitializer }, align 32
@core_scsi3_emulate_pro_register_and_move._entry_ptr.232 = internal global ptr @core_scsi3_emulate_pro_register_and_move._entry.230, section ".printk_index", align 4
@core_scsi3_emulate_pro_register_and_move._entry.233 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.234, ptr @.str.201, ptr @.str.3, i32 3315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"\013SPC-3 PR REGISTER_AND_MOVE: TransportID: %s %s matches: %s %s on received I_T Nexus\0A\00", [41 x i8] zeroinitializer }, align 32
@core_scsi3_emulate_pro_register_and_move._entry_ptr.235 = internal global ptr @core_scsi3_emulate_pro_register_and_move._entry.233, section ".printk_index", align 4
@core_scsi3_emulate_pro_register_and_move._entry.236 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.237, ptr @.str.201, ptr @.str.3, i32 3333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013Unable to locate %s dest_node_acl for TransportID%s\0A\00", [41 x i8] zeroinitializer }, align 32
@core_scsi3_emulate_pro_register_and_move._entry_ptr.238 = internal global ptr @core_scsi3_emulate_pro_register_and_move._entry.236, section ".printk_index", align 4
@core_scsi3_emulate_pro_register_and_move._entry.239 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.240, ptr @.str.201, ptr @.str.3, i32 3340, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013core_scsi3_nodeacl_depend_item() for dest_node_acl\0A\00", [42 x i8] zeroinitializer }, align 32
@core_scsi3_emulate_pro_register_and_move._entry_ptr.241 = internal global ptr @core_scsi3_emulate_pro_register_and_move._entry.239, section ".printk_index", align 4
@core_scsi3_emulate_pro_register_and_move.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.201, ptr @.str.3, ptr @.str.242, i8 3, i8 69, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.242 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"SPC-3 PR REGISTER_AND_MOVE: Found %s dest_node_acl: %s from TransportID\0A\00", [55 x i8] zeroinitializer }, align 32
@core_scsi3_emulate_pro_register_and_move._entry.243 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.244, ptr @.str.201, ptr @.str.3, i32 3358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013Unable to locate %s dest_se_deve from RTPI: %hu\0A\00", [45 x i8] zeroinitializer }, align 32
@core_scsi3_emulate_pro_register_and_move._entry_ptr.245 = internal global ptr @core_scsi3_emulate_pro_register_and_move._entry.243, section ".printk_index", align 4
@core_scsi3_emulate_pro_register_and_move._entry.246 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.201, ptr @.str.3, i32 3364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@core_scsi3_emulate_pro_register_and_move._entry_ptr.247 = internal global ptr @core_scsi3_emulate_pro_register_and_move._entry.246, section ".printk_index", align 4
@core_scsi3_emulate_pro_register_and_move.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.201, ptr @.str.3, ptr @.str.248, i8 3, i8 75, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.248 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"SPC-3 PR REGISTER_AND_MOVE: Located %s node %s LUN ACL for dest_se_deve->mapped_lun: %llu\0A\00", [37 x i8] zeroinitializer }, align 32
@core_scsi3_emulate_pro_register_and_move._entry.249 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.250, ptr @.str.201, ptr @.str.3, i32 3384, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\014SPC-3 PR REGISTER_AND_MOVE: No reservation currently held\0A\00", [35 x i8] zeroinitializer }, align 32
@core_scsi3_emulate_pro_register_and_move._entry_ptr.251 = internal global ptr @core_scsi3_emulate_pro_register_and_move._entry.249, section ".printk_index", align 4
@core_scsi3_emulate_pro_register_and_move._entry.252 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.253, ptr @.str.201, ptr @.str.3, i32 3397, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\014SPC-3 PR REGISTER_AND_MOVE: Calling I_T Nexus is not reservation holder\0A\00", [53 x i8] zeroinitializer }, align 32
@core_scsi3_emulate_pro_register_and_move._entry_ptr.254 = internal global ptr @core_scsi3_emulate_pro_register_and_move._entry.252, section ".printk_index", align 4
@core_scsi3_emulate_pro_register_and_move._entry.255 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.256, ptr @.str.201, ptr @.str.3, i32 3415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\014SPC-3 PR REGISTER_AND_MOVE: Unable to move reservation for type: %s\0A\00", [57 x i8] zeroinitializer }, align 32
@core_scsi3_emulate_pro_register_and_move._entry_ptr.257 = internal global ptr @core_scsi3_emulate_pro_register_and_move._entry.255, section ".printk_index", align 4
@core_scsi3_emulate_pro_register_and_move.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@core_scsi3_emulate_pro_register_and_move.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.201, ptr @.str.3, ptr @.str.258, i8 3, i8 104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.258 = internal constant { [131 x i8], [61 x i8] } { [131 x i8] c"SPC-3 PR [%s] Service Action: REGISTER_AND_MOVE created new reservation holder TYPE: %s on object RTPI: %hu  PRGeneration: 0x%08x\0A\00", [61 x i8] zeroinitializer }, align 32
@core_scsi3_emulate_pro_register_and_move.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.201, ptr @.str.3, ptr @.str.259, i8 3, i8 106, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.259 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"SPC-3 PR Successfully moved reservation from %s Fabric Node: %s%s -> %s Fabric Node: %s %s\0A\00", [36 x i8] zeroinitializer }, align 32
@core_scsi3_pri_read_keys._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.260, ptr @.str.261, ptr @.str.3, i32 3698, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013PRIN SA READ_KEYS SCSI Data Length: %u too small\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"core_scsi3_pri_read_keys\00", [39 x i8] zeroinitializer }, align 32
@core_scsi3_pri_read_keys._entry_ptr = internal global ptr @core_scsi3_pri_read_keys._entry, section ".printk_index", align 4
@core_scsi3_pri_read_reservation._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.262, ptr @.str.263, ptr @.str.3, i32 3753, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013PRIN SA READ_RESERVATIONS SCSI Data Length: %u too small\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"core_scsi3_pri_read_reservation\00", [32 x i8] zeroinitializer }, align 32
@core_scsi3_pri_read_reservation._entry_ptr = internal global ptr @core_scsi3_pri_read_reservation._entry, section ".printk_index", align 4
@core_scsi3_pri_report_capabilities._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.264, ptr @.str.265, ptr @.str.3, i32 3829, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013PRIN SA REPORT_CAPABILITIES SCSI Data Length: %u too small\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"core_scsi3_pri_report_capabilities\00", [61 x i8] zeroinitializer }, align 32
@core_scsi3_pri_report_capabilities._entry_ptr = internal global ptr @core_scsi3_pri_report_capabilities._entry, section ".printk_index", align 4
@core_scsi3_pri_read_full_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.266, ptr @.str.267, ptr @.str.3, i32 3895, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013PRIN SA READ_FULL_STATUS SCSI Data Length: %u too small\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"core_scsi3_pri_read_full_status\00", [32 x i8] zeroinitializer }, align 32
@core_scsi3_pri_read_full_status._entry_ptr = internal global ptr @core_scsi3_pri_read_full_status._entry, section ".printk_index", align 4
@core_scsi3_pri_read_full_status._entry.268 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.269, ptr @.str.267, ptr @.str.3, i32 3937, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014SPC-3 PRIN READ_FULL_STATUS ran out of buffer: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@core_scsi3_pri_read_full_status._entry_ptr.270 = internal global ptr @core_scsi3_pri_read_full_status._entry.268, section ".printk_index", align 4
@core_scsi3_pr_seq_non_holder._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.271, ptr @.str.3, i32 417, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"core_scsi3_pr_seq_non_holder\00", [35 x i8] zeroinitializer }, align 32
@core_scsi3_pr_seq_non_holder._entry_ptr = internal global ptr @core_scsi3_pr_seq_non_holder._entry, section ".printk_index", align 4
@core_scsi3_pr_seq_non_holder._entry.272 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.273, ptr @.str.271, ptr @.str.3, i32 464, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013Unknown MI Service Action: 0x%02x\0A\00", [59 x i8] zeroinitializer }, align 32
@core_scsi3_pr_seq_non_holder._entry_ptr.274 = internal global ptr @core_scsi3_pr_seq_non_holder._entry.272, section ".printk_index", align 4
@core_scsi3_pr_seq_non_holder.__UNIQUE_ID_ddebug208 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.271, ptr @.str.3, ptr @.str.275, i8 0, i8 122, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.275 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Allowing explicit CDB: 0x%02x for %s reservation holder\0A\00", [39 x i8] zeroinitializer }, align 32
@core_scsi3_pr_seq_non_holder.__UNIQUE_ID_ddebug209 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.271, ptr @.str.3, ptr @.str.276, i8 0, i8 126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.276 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"%s Conflict for unregistered nexus %s CDB: 0x%02x to %s reservation\0A\00", [59 x i8] zeroinitializer }, align 32
@core_scsi3_pr_seq_non_holder.__UNIQUE_ID_ddebug210 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.271, ptr @.str.3, ptr @.str.277, i8 0, i8 -126, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.277 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"Allowing implicit CDB: 0x%02x for %s reservation on unregistered nexus\0A\00", [56 x i8] zeroinitializer }, align 32
@core_scsi3_pr_seq_non_holder.__UNIQUE_ID_ddebug211 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.271, ptr @.str.3, ptr @.str.278, i8 0, i8 -122, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.278 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Allowing implicit CDB: 0x%02x for %s reservation\0A\00", [46 x i8] zeroinitializer }, align 32
@core_scsi3_pr_seq_non_holder.__UNIQUE_ID_ddebug212 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.271, ptr @.str.3, ptr @.str.279, i8 0, i8 -119, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.279 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Allowing READ CDB: 0x%02x for %s reservation\0A\00", [50 x i8] zeroinitializer }, align 32
@core_scsi3_pr_seq_non_holder.__UNIQUE_ID_ddebug213 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.271, ptr @.str.3, ptr @.str.280, i8 0, i8 -117, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.280 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"%s Conflict for %sregistered nexus %s CDB: 0x%2x for %s reservation\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"un\00", [29 x i8] zeroinitializer }, align 32
@switch.table.__core_scsi3_complete_pro_release = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.26, ptr @.str.32, ptr @.str.27, ptr @.str.32, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], [32 x i8] zeroinitializer }, align 32
@switch.table.core_scsi3_pr_dump_type = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.26, ptr @.str.32, ptr @.str.27, ptr @.str.32, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], [32 x i8] zeroinitializer }, align 32
@switch.table.core_scsi3_emulate_pro_register_and_move = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.26, ptr @.str.32, ptr @.str.27, ptr @.str.32, ptr @.str.28, ptr @.str.29], [40 x i8] zeroinitializer }, align 32
@switch.table.core_scsi3_aptpl_reserve = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.26, ptr @.str.32, ptr @.str.27, ptr @.str.32, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], [32 x i8] zeroinitializer }, align 32
@switch.table.core_scsi3_pro_reserve = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.26, ptr @.str.32, ptr @.str.27, ptr @.str.32, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], [32 x i8] zeroinitializer }, align 32
@switch.table.__core_scsi3_complete_pro_preempt = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.26, ptr @.str.32, ptr @.str.27, ptr @.str.32, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], [32 x i8] zeroinitializer }, align 32
@switch.table.core_scsi3_pr_seq_non_holder = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.26, ptr @.str.32, ptr @.str.27, ptr @.str.32, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], [32 x i8] zeroinitializer }, align 32
@switch.table.core_scsi3_pr_seq_non_holder.282 = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.26, ptr @.str.32, ptr @.str.27, ptr @.str.32, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], [32 x i8] zeroinitializer }, align 32
@switch.table.core_scsi3_pr_seq_non_holder.283 = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.26, ptr @.str.32, ptr @.str.27, ptr @.str.32, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], [32 x i8] zeroinitializer }, align 32
@switch.table.core_scsi3_pr_seq_non_holder.284 = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.26, ptr @.str.32, ptr @.str.27, ptr @.str.32, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], [32 x i8] zeroinitializer }, align 32
@switch.table.core_scsi3_pr_seq_non_holder.285 = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.26, ptr @.str.32, ptr @.str.27, ptr @.str.32, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], [32 x i8] zeroinitializer }, align 32
@switch.table.core_scsi3_pr_seq_non_holder.286 = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.26, ptr @.str.32, ptr @.str.27, ptr @.str.32, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.287 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 3, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.288 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 3, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.289 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.290 = internal global [5 x i64] [i64 3, i64 8, i64 18, i64 23, i64 87]
@__sancov_gen_cov_switch_values.291 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 3, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.292 = internal global [23 x i64] [i64 21, i64 8, i64 0, i64 3, i64 18, i64 22, i64 23, i64 26, i64 28, i64 60, i64 77, i64 86, i64 87, i64 90, i64 94, i64 95, i64 134, i64 135, i64 140, i64 160, i64 162, i64 163, i64 171]
@__sancov_gen_cov_switch_values.293 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.294 = internal global [10 x i64] [i64 8, i64 32, i64 5, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16]
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 53, i32 22 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 228, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 252, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 272, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 274, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 277, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 291, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 839, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 845, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 870, i32 50 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 888, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 2252, i32 10 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 2254, i32 10 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 2256, i32 10 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 2258, i32 10 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 2260, i32 10 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 2262, i32 10 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 2267, i32 9 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 3558, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 3572, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 3632, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 3673, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 4050, i32 3 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 4070, i32 3 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 181, i32 3 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 963, i32 5 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 695, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 723, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 1027, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 1032, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 1035, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 1039, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 1460, i32 12 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 907, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 912, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 1307, i32 3 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 1319, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 1327, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 2495, i32 3 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 2501, i32 2 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 2061, i32 3 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 2077, i32 4 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 2098, i32 5 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 2122, i32 3 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 2132, i32 3 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 2143, i32 3 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 2161, i32 3 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 774, i32 5 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 630, i32 3 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 656, i32 4 }
@___asan_gen_.569 = private unnamed_addr constant [35 x i8] c"../include/linux/percpu-refcount.h\00", align 1
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 280, i32 2 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 1503, i32 3 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 1531, i32 3 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 1551, i32 3 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 1595, i32 5 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 1606, i32 5 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 1631, i32 5 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 1640, i32 4 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 1650, i32 4 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 1656, i32 3 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 1662, i32 4 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 1677, i32 4 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 1688, i32 4 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 1697, i32 3 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 1726, i32 4 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 1808, i32 3 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 2010, i32 20 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 2014, i32 3 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 2035, i32 3 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 2041, i32 2 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 1975, i32 31 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 1982, i32 3 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 1993, i32 3 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 1894, i32 27 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 1901, i32 23 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 1914, i32 23 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 1925, i32 4 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 1935, i32 22 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 1944, i32 4 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 1954, i32 27 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 1260, i32 3 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 2437, i32 3 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 2282, i32 3 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 2291, i32 3 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 2305, i32 3 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 2322, i32 3 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 2346, i32 4 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 2368, i32 4 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 2405, i32 2 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 2522, i32 3 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 2530, i32 3 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 2580, i32 3 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 2596, i32 3 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 2683, i32 3 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 2699, i32 3 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 2742, i32 2 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 3128, i32 3 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 2840, i32 3 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 2850, i32 3 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 2778, i32 2 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 2783, i32 2 }
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 2809, i32 4 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 3158, i32 3 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 3173, i32 3 }
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 3182, i32 3 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 3192, i32 3 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 3215, i32 3 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 3235, i32 4 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 3248, i32 3 }
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 3262, i32 2 }
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 3266, i32 3 }
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 3277, i32 3 }
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 3286, i32 2 }
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 3305, i32 3 }
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 3312, i32 3 }
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 3331, i32 3 }
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 3339, i32 3 }
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 3347, i32 2 }
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 3357, i32 3 }
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 3364, i32 3 }
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 3371, i32 2 }
@___asan_gen_.948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 3383, i32 3 }
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 3396, i32 3 }
@___asan_gen_.960 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 3413, i32 3 }
@___asan_gen_.963 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 3487, i32 2 }
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 3492, i32 2 }
@___asan_gen_.975 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 3697, i32 3 }
@___asan_gen_.984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 3752, i32 3 }
@___asan_gen_.993 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 3828, i32 3 }
@___asan_gen_.1002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 3894, i32 3 }
@___asan_gen_.1008 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 3936, i32 4 }
@___asan_gen_.1014 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 416, i32 4 }
@___asan_gen_.1015 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1020 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 463, i32 4 }
@___asan_gen_.1023 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 487, i32 3 }
@___asan_gen_.1026 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 502, i32 4 }
@___asan_gen_.1029 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 520, i32 5 }
@___asan_gen_.1032 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 535, i32 4 }
@___asan_gen_.1035 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 547, i32 24 }
@___asan_gen_.1039 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1040 = private constant [35 x i8] c"../drivers/target/target_core_pr.c\00", align 1
@___asan_gen_.1041 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1040, i32 554, i32 2 }
@___asan_gen_.1042 = private unnamed_addr constant [47 x i8] c"switch.table.__core_scsi3_complete_pro_release\00", align 1
@___asan_gen_.1043 = private unnamed_addr constant [37 x i8] c"switch.table.core_scsi3_pr_dump_type\00", align 1
@___asan_gen_.1044 = private unnamed_addr constant [54 x i8] c"switch.table.core_scsi3_emulate_pro_register_and_move\00", align 1
@___asan_gen_.1045 = private unnamed_addr constant [38 x i8] c"switch.table.core_scsi3_aptpl_reserve\00", align 1
@___asan_gen_.1046 = private unnamed_addr constant [36 x i8] c"switch.table.core_scsi3_pro_reserve\00", align 1
@___asan_gen_.1047 = private unnamed_addr constant [47 x i8] c"switch.table.__core_scsi3_complete_pro_preempt\00", align 1
@___asan_gen_.1048 = private unnamed_addr constant [42 x i8] c"switch.table.core_scsi3_pr_seq_non_holder\00", align 1
@___asan_gen_.1049 = private unnamed_addr constant [46 x i8] c"switch.table.core_scsi3_pr_seq_non_holder.282\00", align 1
@___asan_gen_.1050 = private unnamed_addr constant [46 x i8] c"switch.table.core_scsi3_pr_seq_non_holder.283\00", align 1
@___asan_gen_.1051 = private unnamed_addr constant [46 x i8] c"switch.table.core_scsi3_pr_seq_non_holder.284\00", align 1
@___asan_gen_.1052 = private unnamed_addr constant [46 x i8] c"switch.table.core_scsi3_pr_seq_non_holder.285\00", align 1
@___asan_gen_.1053 = private unnamed_addr constant [46 x i8] c"switch.table.core_scsi3_pr_seq_non_holder.286\00", align 1
@llvm.compiler.used = appending global [347 x ptr] [ptr @__core_scsi3_alloc_registration._entry, ptr @__core_scsi3_alloc_registration._entry_ptr, ptr @__core_scsi3_check_aptpl_registration._entry, ptr @__core_scsi3_check_aptpl_registration._entry_ptr, ptr @__core_scsi3_do_alloc_registration._entry, ptr @__core_scsi3_do_alloc_registration._entry.98, ptr @__core_scsi3_do_alloc_registration._entry_ptr, ptr @__core_scsi3_do_alloc_registration._entry_ptr.100, ptr @__core_scsi3_write_aptpl_to_file._entry, ptr @__core_scsi3_write_aptpl_to_file._entry_ptr, ptr @core_scsi3_alloc_aptpl_registration._entry, ptr @core_scsi3_alloc_aptpl_registration._entry.19, ptr @core_scsi3_alloc_aptpl_registration._entry_ptr, ptr @core_scsi3_alloc_aptpl_registration._entry_ptr.21, ptr @core_scsi3_check_implicit_release._entry, ptr @core_scsi3_check_implicit_release._entry_ptr, ptr @core_scsi3_decode_spec_i_port._entry, ptr @core_scsi3_decode_spec_i_port._entry.104, ptr @core_scsi3_decode_spec_i_port._entry.106, ptr @core_scsi3_decode_spec_i_port._entry.109, ptr @core_scsi3_decode_spec_i_port._entry.112, ptr @core_scsi3_decode_spec_i_port._entry.115, ptr @core_scsi3_decode_spec_i_port._entry.119, ptr @core_scsi3_decode_spec_i_port._entry.123, ptr @core_scsi3_decode_spec_i_port._entry.126, ptr @core_scsi3_decode_spec_i_port._entry.129, ptr @core_scsi3_decode_spec_i_port._entry.132, ptr @core_scsi3_decode_spec_i_port._entry_ptr, ptr @core_scsi3_decode_spec_i_port._entry_ptr.105, ptr @core_scsi3_decode_spec_i_port._entry_ptr.108, ptr @core_scsi3_decode_spec_i_port._entry_ptr.111, ptr @core_scsi3_decode_spec_i_port._entry_ptr.114, ptr @core_scsi3_decode_spec_i_port._entry_ptr.117, ptr @core_scsi3_decode_spec_i_port._entry_ptr.121, ptr @core_scsi3_decode_spec_i_port._entry_ptr.125, ptr @core_scsi3_decode_spec_i_port._entry_ptr.128, ptr @core_scsi3_decode_spec_i_port._entry_ptr.130, ptr @core_scsi3_decode_spec_i_port._entry_ptr.133, ptr @core_scsi3_emulate_pro_clear._entry, ptr @core_scsi3_emulate_pro_clear._entry.186, ptr @core_scsi3_emulate_pro_clear._entry_ptr, ptr @core_scsi3_emulate_pro_clear._entry_ptr.187, ptr @core_scsi3_emulate_pro_preempt._entry, ptr @core_scsi3_emulate_pro_preempt._entry_ptr, ptr @core_scsi3_emulate_pro_register._entry, ptr @core_scsi3_emulate_pro_register._entry.79, ptr @core_scsi3_emulate_pro_register._entry.82, ptr @core_scsi3_emulate_pro_register._entry.84, ptr @core_scsi3_emulate_pro_register._entry.87, ptr @core_scsi3_emulate_pro_register._entry.90, ptr @core_scsi3_emulate_pro_register._entry_ptr, ptr @core_scsi3_emulate_pro_register._entry_ptr.81, ptr @core_scsi3_emulate_pro_register._entry_ptr.83, ptr @core_scsi3_emulate_pro_register._entry_ptr.86, ptr @core_scsi3_emulate_pro_register._entry_ptr.89, ptr @core_scsi3_emulate_pro_register._entry_ptr.92, ptr @core_scsi3_emulate_pro_register_and_move._entry, ptr @core_scsi3_emulate_pro_register_and_move._entry.202, ptr @core_scsi3_emulate_pro_register_and_move._entry.205, ptr @core_scsi3_emulate_pro_register_and_move._entry.208, ptr @core_scsi3_emulate_pro_register_and_move._entry.211, ptr @core_scsi3_emulate_pro_register_and_move._entry.214, ptr @core_scsi3_emulate_pro_register_and_move._entry.217, ptr @core_scsi3_emulate_pro_register_and_move._entry.221, ptr @core_scsi3_emulate_pro_register_and_move._entry.224, ptr @core_scsi3_emulate_pro_register_and_move._entry.230, ptr @core_scsi3_emulate_pro_register_and_move._entry.233, ptr @core_scsi3_emulate_pro_register_and_move._entry.236, ptr @core_scsi3_emulate_pro_register_and_move._entry.239, ptr @core_scsi3_emulate_pro_register_and_move._entry.243, ptr @core_scsi3_emulate_pro_register_and_move._entry.246, ptr @core_scsi3_emulate_pro_register_and_move._entry.249, ptr @core_scsi3_emulate_pro_register_and_move._entry.252, ptr @core_scsi3_emulate_pro_register_and_move._entry.255, ptr @core_scsi3_emulate_pro_register_and_move._entry_ptr, ptr @core_scsi3_emulate_pro_register_and_move._entry_ptr.204, ptr @core_scsi3_emulate_pro_register_and_move._entry_ptr.207, ptr @core_scsi3_emulate_pro_register_and_move._entry_ptr.210, ptr @core_scsi3_emulate_pro_register_and_move._entry_ptr.213, ptr @core_scsi3_emulate_pro_register_and_move._entry_ptr.216, ptr @core_scsi3_emulate_pro_register_and_move._entry_ptr.219, ptr @core_scsi3_emulate_pro_register_and_move._entry_ptr.223, ptr @core_scsi3_emulate_pro_register_and_move._entry_ptr.226, ptr @core_scsi3_emulate_pro_register_and_move._entry_ptr.232, ptr @core_scsi3_emulate_pro_register_and_move._entry_ptr.235, ptr @core_scsi3_emulate_pro_register_and_move._entry_ptr.238, ptr @core_scsi3_emulate_pro_register_and_move._entry_ptr.241, ptr @core_scsi3_emulate_pro_register_and_move._entry_ptr.245, ptr @core_scsi3_emulate_pro_register_and_move._entry_ptr.247, ptr @core_scsi3_emulate_pro_register_and_move._entry_ptr.251, ptr @core_scsi3_emulate_pro_register_and_move._entry_ptr.254, ptr @core_scsi3_emulate_pro_register_and_move._entry_ptr.257, ptr @core_scsi3_emulate_pro_release._entry, ptr @core_scsi3_emulate_pro_release._entry.175, ptr @core_scsi3_emulate_pro_release._entry.178, ptr @core_scsi3_emulate_pro_release._entry.181, ptr @core_scsi3_emulate_pro_release._entry_ptr, ptr @core_scsi3_emulate_pro_release._entry_ptr.177, ptr @core_scsi3_emulate_pro_release._entry_ptr.180, ptr @core_scsi3_emulate_pro_release._entry_ptr.183, ptr @core_scsi3_emulate_pro_reserve._entry, ptr @core_scsi3_emulate_pro_reserve._entry_ptr, ptr @core_scsi3_pr_seq_non_holder._entry, ptr @core_scsi3_pr_seq_non_holder._entry.272, ptr @core_scsi3_pr_seq_non_holder._entry_ptr, ptr @core_scsi3_pr_seq_non_holder._entry_ptr.274, ptr @core_scsi3_pri_read_full_status._entry, ptr @core_scsi3_pri_read_full_status._entry.268, ptr @core_scsi3_pri_read_full_status._entry_ptr, ptr @core_scsi3_pri_read_full_status._entry_ptr.270, ptr @core_scsi3_pri_read_keys._entry, ptr @core_scsi3_pri_read_keys._entry_ptr, ptr @core_scsi3_pri_read_reservation._entry, ptr @core_scsi3_pri_read_reservation._entry_ptr, ptr @core_scsi3_pri_report_capabilities._entry, ptr @core_scsi3_pri_report_capabilities._entry_ptr, ptr @core_scsi3_pro_preempt._entry, ptr @core_scsi3_pro_preempt._entry.194, ptr @core_scsi3_pro_preempt._entry_ptr, ptr @core_scsi3_pro_preempt._entry_ptr.195, ptr @core_scsi3_pro_reserve._entry, ptr @core_scsi3_pro_reserve._entry.158, ptr @core_scsi3_pro_reserve._entry.161, ptr @core_scsi3_pro_reserve._entry.164, ptr @core_scsi3_pro_reserve._entry.167, ptr @core_scsi3_pro_reserve._entry.170, ptr @core_scsi3_pro_reserve._entry_ptr, ptr @core_scsi3_pro_reserve._entry_ptr.160, ptr @core_scsi3_pro_reserve._entry_ptr.163, ptr @core_scsi3_pro_reserve._entry_ptr.166, ptr @core_scsi3_pro_reserve._entry_ptr.169, ptr @core_scsi3_pro_reserve._entry_ptr.172, ptr @core_scsi3_release_preempt_and_abort._entry, ptr @core_scsi3_release_preempt_and_abort._entry_ptr, ptr @core_scsi3_update_and_write_aptpl._entry, ptr @core_scsi3_update_and_write_aptpl._entry_ptr, ptr @core_scsi3_update_aptpl_buf._entry, ptr @core_scsi3_update_aptpl_buf._entry.150, ptr @core_scsi3_update_aptpl_buf._entry_ptr, ptr @core_scsi3_update_aptpl_buf._entry_ptr.151, ptr @target_check_scsi2_reservation_conflict._entry, ptr @target_check_scsi2_reservation_conflict._entry_ptr, ptr @target_scsi2_reservation_reserve._entry, ptr @target_scsi2_reservation_reserve._entry.10, ptr @target_scsi2_reservation_reserve._entry.13, ptr @target_scsi2_reservation_reserve._entry.7, ptr @target_scsi2_reservation_reserve._entry_ptr, ptr @target_scsi2_reservation_reserve._entry_ptr.12, ptr @target_scsi2_reservation_reserve._entry_ptr.15, ptr @target_scsi2_reservation_reserve._entry_ptr.9, ptr @target_scsi3_emulate_pr_in._entry, ptr @target_scsi3_emulate_pr_in._entry.45, ptr @target_scsi3_emulate_pr_in._entry_ptr, ptr @target_scsi3_emulate_pr_in._entry_ptr.47, ptr @target_scsi3_emulate_pr_out._entry, ptr @target_scsi3_emulate_pr_out._entry.35, ptr @target_scsi3_emulate_pr_out._entry.38, ptr @target_scsi3_emulate_pr_out._entry.41, ptr @target_scsi3_emulate_pr_out._entry_ptr, ptr @target_scsi3_emulate_pr_out._entry_ptr.37, ptr @target_scsi3_emulate_pr_out._entry_ptr.40, ptr @target_scsi3_emulate_pr_out._entry_ptr.43, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.85, ptr @.str.88, ptr @.str.91, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.97, ptr @.str.99, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.107, ptr @.str.110, ptr @.str.113, ptr @.str.116, ptr @.str.118, ptr @.str.120, ptr @.str.122, ptr @.str.124, ptr @.str.127, ptr @.str.131, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.159, ptr @.str.162, ptr @.str.165, ptr @.str.168, ptr @.str.171, ptr @.str.173, ptr @.str.174, ptr @.str.176, ptr @.str.179, ptr @.str.182, ptr @.str.184, ptr @.str.185, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.203, ptr @.str.206, ptr @.str.209, ptr @.str.212, ptr @.str.215, ptr @.str.218, ptr @.str.220, ptr @.str.222, ptr @.str.225, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.231, ptr @.str.234, ptr @.str.237, ptr @.str.240, ptr @.str.242, ptr @.str.244, ptr @.str.248, ptr @.str.250, ptr @.str.253, ptr @.str.256, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.269, ptr @.str.271, ptr @.str.273, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @.str.278, ptr @.str.279, ptr @.str.280, ptr @.str.281, ptr @switch.table.__core_scsi3_complete_pro_release, ptr @switch.table.core_scsi3_pr_dump_type, ptr @switch.table.core_scsi3_emulate_pro_register_and_move, ptr @switch.table.core_scsi3_aptpl_reserve, ptr @switch.table.core_scsi3_pro_reserve, ptr @switch.table.__core_scsi3_complete_pro_preempt, ptr @switch.table.core_scsi3_pr_seq_non_holder, ptr @switch.table.core_scsi3_pr_seq_non_holder.282, ptr @switch.table.core_scsi3_pr_seq_non_holder.283, ptr @switch.table.core_scsi3_pr_seq_non_holder.284, ptr @switch.table.core_scsi3_pr_seq_non_holder.285, ptr @switch.table.core_scsi3_pr_seq_non_holder.286], section "llvm.metadata"
@0 = internal global [261 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_scsi2_reservation_reserve._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_scsi2_reservation_reserve._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_scsi2_reservation_reserve._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_scsi2_reservation_reserve._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_alloc_aptpl_registration._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_alloc_aptpl_registration._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_scsi3_emulate_pr_out._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_scsi3_emulate_pr_out._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_scsi3_emulate_pr_out._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_scsi3_emulate_pr_out._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_scsi3_emulate_pr_in._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_scsi3_emulate_pr_in._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_check_scsi2_reservation_conflict._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_emulate_pro_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_emulate_pro_register._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_emulate_pro_register._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_emulate_pro_register._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 103, i32 160, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_emulate_pro_register._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_emulate_pro_register._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 105, i32 160, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_decode_spec_i_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_decode_spec_i_port._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_decode_spec_i_port._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_decode_spec_i_port._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_decode_spec_i_port._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_decode_spec_i_port._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_decode_spec_i_port._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_decode_spec_i_port._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_decode_spec_i_port._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_decode_spec_i_port._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_decode_spec_i_port._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_update_and_write_aptpl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 149, i32 192, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_update_aptpl_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_update_aptpl_buf._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_check_implicit_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_emulate_pro_reserve._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_pro_reserve._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_pro_reserve._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_pro_reserve._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 102, i32 160, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_pro_reserve._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_pro_reserve._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_pro_reserve._entry.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_emulate_pro_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_emulate_pro_release._entry.175 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_emulate_pro_release._entry.178 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 102, i32 160, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_emulate_pro_release._entry.181 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 177, i32 224, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_emulate_pro_clear._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_emulate_pro_clear._entry.186 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_emulate_pro_preempt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_pro_preempt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_pro_preempt._entry.194 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_release_preempt_and_abort._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_emulate_pro_register_and_move._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_emulate_pro_register_and_move._entry.202 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_emulate_pro_register_and_move._entry.205 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_emulate_pro_register_and_move._entry.208 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_emulate_pro_register_and_move._entry.211 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_emulate_pro_register_and_move._entry.214 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_emulate_pro_register_and_move._entry.217 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_emulate_pro_register_and_move._entry.221 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 105, i32 160, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_emulate_pro_register_and_move._entry.224 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_emulate_pro_register_and_move._entry.230 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_emulate_pro_register_and_move._entry.233 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_emulate_pro_register_and_move._entry.236 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_emulate_pro_register_and_move._entry.239 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_emulate_pro_register_and_move._entry.243 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_emulate_pro_register_and_move._entry.246 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_emulate_pro_register_and_move._entry.249 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_emulate_pro_register_and_move._entry.252 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_emulate_pro_register_and_move._entry.255 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 131, i32 192, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_pri_read_keys._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_pri_read_reservation._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_pri_report_capabilities._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_pri_read_full_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_pri_read_full_status._entry.268 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_pr_seq_non_holder._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_pr_seq_non_holder._entry.272 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.__core_scsi3_complete_pro_release to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.core_scsi3_pr_dump_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.core_scsi3_emulate_pro_register_and_move to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.core_scsi3_aptpl_reserve to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.core_scsi3_pro_reserve to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.__core_scsi3_complete_pro_preempt to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.core_scsi3_pr_seq_non_holder to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.core_scsi3_pr_seq_non_holder.282 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.core_scsi3_pr_seq_non_holder.283 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.core_scsi3_pr_seq_non_holder.284 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.core_scsi3_pr_seq_non_holder.285 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.core_scsi3_pr_seq_non_holder.286 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @core_pr_dump_initiator_port(ptr noundef %pr_reg, ptr nocapture noundef writeonly %buf, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %isid_present_at_reg = getelementptr inbounds %struct.t10_pr_registration, ptr %pr_reg, i32 0, i32 10
  %0 = ptrtoint ptr %isid_present_at_reg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %isid_present_at_reg, align 8, !range !540
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %buf, align 1
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef %size, ptr noundef nonnull @.str, ptr noundef %pr_reg)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @target_release_reservation(ptr nocapture noundef %dev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %reservation_holder = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 26
  %0 = ptrtoint ptr %reservation_holder to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %reservation_holder, align 4
  %dev_reservation_flags = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 21
  %1 = ptrtoint ptr %dev_reservation_flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dev_reservation_flags, align 4
  %and = and i32 %2, -2
  store i32 %and, ptr %dev_reservation_flags, align 4
  %and2 = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %dev_res_bin_isid = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 5
  %3 = ptrtoint ptr %dev_res_bin_isid to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %dev_res_bin_isid, align 8
  %and4 = and i32 %2, -4
  %4 = ptrtoint ptr %dev_reservation_flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and4, ptr %dev_reservation_flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @target_scsi2_reservation_release(ptr noundef %cmd) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %se_dev = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 19
  %0 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_dev, align 4
  %se_sess = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 21
  %2 = ptrtoint ptr %se_sess to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %se_sess, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %lor.lhs.false

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %se_tpg = getelementptr inbounds %struct.se_session, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %se_tpg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %se_tpg, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %lor.lhs.false.out_crit_edge, label %if.end

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call fastcc i32 @target_check_scsi2_reservation_conflict(ptr noundef %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end3

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp4 = icmp slt i32 %call, 0
  br i1 %cmp4, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %dev_reservation_lock = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 20
  tail call void @_raw_spin_lock(ptr noundef %dev_reservation_lock) #15
  %reservation_holder = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 26
  %6 = ptrtoint ptr %reservation_holder to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reservation_holder, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %if.end6.out_unlock_crit_edge, label %if.end11

if.end6.out_unlock_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_unlock

if.end11:                                         ; preds = %if.end6
  %se_node_acl = getelementptr inbounds %struct.se_session, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %se_node_acl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %se_node_acl, align 8
  %se_node_acl13 = getelementptr inbounds %struct.se_session, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %se_node_acl13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %se_node_acl13, align 8
  %cmp14.not = icmp eq ptr %9, %11
  br i1 %cmp14.not, label %if.end16, label %if.end11.out_unlock_crit_edge

if.end11.out_unlock_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_unlock

if.end16:                                         ; preds = %if.end11
  %dev_res_bin_isid = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %dev_res_bin_isid to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %dev_res_bin_isid, align 8
  %sess_bin_isid = getelementptr inbounds %struct.se_session, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %sess_bin_isid to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %sess_bin_isid, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %15)
  %cmp17.not = icmp eq i64 %13, %15
  br i1 %cmp17.not, label %if.end19, label %if.end16.out_unlock_crit_edge

if.end16.out_unlock_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_unlock

if.end19:                                         ; preds = %if.end16
  %16 = ptrtoint ptr %reservation_holder to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %reservation_holder, align 4
  %dev_reservation_flags.i = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 21
  %17 = ptrtoint ptr %dev_reservation_flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dev_reservation_flags.i, align 4
  %and.i = and i32 %18, -2
  store i32 %and.i, ptr %dev_reservation_flags.i, align 4
  %and2.i = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool.not.i, label %if.end19.target_release_reservation.exit_crit_edge, label %if.then.i

if.end19.target_release_reservation.exit_crit_edge: ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %target_release_reservation.exit

if.then.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  %19 = ptrtoint ptr %dev_res_bin_isid to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 0, ptr %dev_res_bin_isid, align 8
  %and4.i = and i32 %18, -4
  %20 = ptrtoint ptr %dev_reservation_flags.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and4.i, ptr %dev_reservation_flags.i, align 4
  br label %target_release_reservation.exit

target_release_reservation.exit:                  ; preds = %if.then.i, %if.end19.target_release_reservation.exit_crit_edge
  %21 = ptrtoint ptr %se_tpg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %se_tpg, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @target_scsi2_reservation_release.__UNIQUE_ID_ddebug206, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_scsi2_reservation_release, %if.then25)) #15
          to label %out_unlock [label %if.then25], !srcloc !541

if.then25:                                        ; preds = %target_release_reservation.exit
  call void @__sanitizer_cov_trace_pc() #17
  %se_tpg_tfo = getelementptr inbounds %struct.se_portal_group, ptr %22, i32 0, i32 10
  %23 = ptrtoint ptr %se_tpg_tfo to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %se_tpg_tfo, align 4
  %fabric_name = getelementptr inbounds %struct.target_core_fabric_ops, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %fabric_name to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fabric_name, align 4
  %se_lun = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 20
  %27 = ptrtoint ptr %se_lun to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %se_lun, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %28, align 8
  %orig_fe_lun = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 14
  %31 = ptrtoint ptr %orig_fe_lun to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %orig_fe_lun, align 8
  %33 = ptrtoint ptr %se_node_acl13 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %se_node_acl13, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @target_scsi2_reservation_release.__UNIQUE_ID_ddebug206, ptr noundef nonnull @.str.4, ptr noundef %26, i64 noundef %30, i64 noundef %32, ptr noundef %34) #15
  br label %out_unlock

out_unlock:                                       ; preds = %if.then25, %target_release_reservation.exit, %if.end16.out_unlock_crit_edge, %if.end11.out_unlock_crit_edge, %if.end6.out_unlock_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %dev_reservation_lock) #15
  br label %out

out:                                              ; preds = %out_unlock, %if.end.out_crit_edge, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  tail call void @target_complete_cmd(ptr noundef %cmd, i8 noundef zeroext 0) #15
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %out ], [ 16, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @target_check_scsi2_reservation_conflict(ptr nocapture noundef readonly %cmd) unnamed_addr #3 align 64 {
entry:
  %buf.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %se_sess1 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 21
  %0 = ptrtoint ptr %se_sess1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_sess1, align 4
  %se_dev = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 19
  %2 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %se_dev, align 4
  %se_node_acl = getelementptr inbounds %struct.se_session, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %se_node_acl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %se_node_acl, align 8
  %se_tpg.i = getelementptr inbounds %struct.se_node_acl, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %se_tpg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %se_tpg.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf.i) #15
  %8 = call ptr @memset(ptr %buf.i, i32 0, i32 16)
  %se_tpg_tfo.i = getelementptr inbounds %struct.se_portal_group, ptr %7, i32 0, i32 10
  %9 = ptrtoint ptr %se_tpg_tfo.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %se_tpg_tfo.i, align 4
  %sess_get_initiator_sid.i = getelementptr inbounds %struct.target_core_fabric_ops, ptr %10, i32 0, i32 19
  %11 = ptrtoint ptr %sess_get_initiator_sid.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sess_get_initiator_sid.i, align 4
  %cmp.not.i = icmp eq ptr %12, null
  br i1 %cmp.not.i, label %entry.core_scsi3_locate_pr_reg.exit_crit_edge, label %if.then.i

entry.core_scsi3_locate_pr_reg.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %core_scsi3_locate_pr_reg.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = call i32 %12(ptr noundef %1, ptr noundef nonnull %buf.i, i32 noundef 16) #15
  br label %core_scsi3_locate_pr_reg.exit

core_scsi3_locate_pr_reg.exit:                    ; preds = %if.then.i, %entry.core_scsi3_locate_pr_reg.exit_crit_edge
  %isid_ptr.0.i = phi ptr [ %buf.i, %if.then.i ], [ null, %entry.core_scsi3_locate_pr_reg.exit_crit_edge ]
  %call4.i = call fastcc ptr @__core_scsi3_locate_pr_reg(ptr noundef %3, ptr noundef %5, ptr noundef %isid_ptr.0.i) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf.i) #15
  %tobool.not = icmp eq ptr %call4.i, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %core_scsi3_locate_pr_reg.exit
  %pr_res_holder = getelementptr inbounds %struct.t10_pr_registration, ptr %call4.i, i32 0, i32 7
  %13 = ptrtoint ptr %pr_res_holder to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pr_res_holder, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool3.not = icmp eq i32 %14, 0
  br i1 %tobool3.not, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %pr_res_holders.i = getelementptr inbounds %struct.t10_pr_registration, ptr %call4.i, i32 0, i32 17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !542
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %pr_res_holders.i, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %pr_res_holders.i, i32 1, i32 3, i32 1) #15
  %15 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pr_res_holders.i, ptr %pr_res_holders.i, i32 1, ptr elementtype(i32) %pr_res_holders.i) #15, !srcloc !543
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !544
  br label %cleanup

if.end:                                           ; preds = %if.then
  %pr_res_type = getelementptr inbounds %struct.t10_pr_registration, ptr %call4.i, i32 0, i32 8
  %16 = ptrtoint ptr %pr_res_type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pr_res_type, align 8
  %.off = add i32 %17, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off)
  %switch = icmp ult i32 %.off, 4
  br i1 %switch, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %pr_res_holders.i40 = getelementptr inbounds %struct.t10_pr_registration, ptr %call4.i, i32 0, i32 17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !542
  %call.i.i.i.i41 = call zeroext i1 @__kasan_check_write(ptr noundef %pr_res_holders.i40, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %pr_res_holders.i40, i32 1, i32 3, i32 1) #15
  %18 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pr_res_holders.i40, ptr %pr_res_holders.i40, i32 1, ptr elementtype(i32) %pr_res_holders.i40) #15, !srcloc !543
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !544
  br label %cleanup

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @core_scsi3_put_pr_reg(ptr noundef nonnull %call4.i)
  br label %do.end

if.else:                                          ; preds = %core_scsi3_locate_pr_reg.exit
  %registration_lock = getelementptr inbounds %struct.se_device, ptr %3, i32 0, i32 38, i32 3
  call void @_raw_spin_lock(ptr noundef %registration_lock) #15
  %registration_list = getelementptr inbounds %struct.se_device, ptr %3, i32 0, i32 38, i32 6
  %19 = ptrtoint ptr %registration_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %registration_list, align 4
  %cmp.i = icmp eq ptr %20, %registration_list
  call void @_raw_spin_unlock(ptr noundef %registration_lock) #15
  br i1 %cmp.i, label %if.else.cleanup_crit_edge, label %if.else.do.end_crit_edge

if.else.do.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end:                                           ; preds = %if.else.do.end_crit_edge, %if.end14
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.else.cleanup_crit_edge, %if.then13, %if.then4
  %retval.0 = phi i32 [ 1, %if.then4 ], [ 1, %if.then13 ], [ -16, %do.end ], [ 0, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_complete_cmd(ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @target_scsi2_reservation_reserve(ptr noundef %cmd) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %se_dev = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 19
  %0 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_dev, align 4
  %se_sess = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 21
  %2 = ptrtoint ptr %se_sess to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %se_sess, align 4
  %t_task_cdb = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 30
  %4 = ptrtoint ptr %t_task_cdb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %t_task_cdb, align 8
  %arrayidx = getelementptr i8, ptr %5, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %8 = and i8 %7, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %8)
  %.not = icmp eq i8 %8, 3
  br i1 %.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool6.not = icmp eq ptr %3, null
  br i1 %tobool6.not, label %if.end.if.then77_crit_edge, label %lor.lhs.false

if.end.if.then77_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then77

lor.lhs.false:                                    ; preds = %if.end
  %se_tpg = getelementptr inbounds %struct.se_session, ptr %3, i32 0, i32 5
  %9 = ptrtoint ptr %se_tpg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %se_tpg, align 4
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %lor.lhs.false.if.then77_crit_edge, label %if.end9

lor.lhs.false.if.then77_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then77

if.end9:                                          ; preds = %lor.lhs.false
  %call10 = tail call fastcc i32 @target_check_scsi2_reservation_conflict(ptr noundef %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call10)
  %cmp = icmp eq i32 %call10, 1
  br i1 %cmp, label %if.end9.if.then77_crit_edge, label %if.end13

if.end9.if.then77_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then77

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp14 = icmp slt i32 %call10, 0
  br i1 %cmp14, label %if.end13.cleanup_crit_edge, label %if.end17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %11 = ptrtoint ptr %se_tpg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %se_tpg, align 4
  %dev_reservation_lock = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 20
  tail call void @_raw_spin_lock(ptr noundef %dev_reservation_lock) #15
  %reservation_holder = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 26
  %13 = ptrtoint ptr %reservation_holder to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reservation_holder, align 4
  %tobool19.not = icmp eq ptr %14, null
  br i1 %tobool19.not, label %if.end17.if.end48_crit_edge, label %land.lhs.true20

if.end17.if.end48_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end48

land.lhs.true20:                                  ; preds = %if.end17
  %se_node_acl = getelementptr inbounds %struct.se_session, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %se_node_acl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %se_node_acl, align 8
  %se_node_acl22 = getelementptr inbounds %struct.se_session, ptr %3, i32 0, i32 4
  %17 = ptrtoint ptr %se_node_acl22 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %se_node_acl22, align 8
  %cmp23.not = icmp eq ptr %16, %18
  br i1 %cmp23.not, label %land.lhs.true20.if.end48_crit_edge, label %out.thread121

land.lhs.true20.if.end48_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end48

out.thread121:                                    ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #17
  %se_tpg_tfo = getelementptr inbounds %struct.se_portal_group, ptr %12, i32 0, i32 10
  %19 = ptrtoint ptr %se_tpg_tfo to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %se_tpg_tfo, align 4
  %fabric_name = getelementptr inbounds %struct.target_core_fabric_ops, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %fabric_name to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fabric_name, align 4
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %22) #18
  %se_lun = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 20
  %23 = ptrtoint ptr %se_lun to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %se_lun, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %24, align 8
  %27 = ptrtoint ptr %reservation_holder to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reservation_holder, align 4
  %se_node_acl36 = getelementptr inbounds %struct.se_session, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %se_node_acl36 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %se_node_acl36, align 8
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i64 noundef %26, ptr noundef %30) #18
  %31 = ptrtoint ptr %se_lun to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %se_lun, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %32, align 8
  %orig_fe_lun = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 14
  %35 = ptrtoint ptr %orig_fe_lun to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %orig_fe_lun, align 8
  %37 = ptrtoint ptr %se_node_acl22 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %se_node_acl22, align 8
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i64 noundef %34, i64 noundef %36, ptr noundef %38) #18
  tail call void @_raw_spin_unlock(ptr noundef %dev_reservation_lock) #15
  br label %cleanup

if.end48:                                         ; preds = %land.lhs.true20.if.end48_crit_edge, %if.end17.if.end48_crit_edge
  %39 = ptrtoint ptr %reservation_holder to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %3, ptr %reservation_holder, align 4
  %dev_reservation_flags = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 21
  %40 = ptrtoint ptr %dev_reservation_flags to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dev_reservation_flags, align 4
  %or = or i32 %41, 1
  store i32 %or, ptr %dev_reservation_flags, align 4
  %sess_bin_isid = getelementptr inbounds %struct.se_session, ptr %3, i32 0, i32 1
  %42 = ptrtoint ptr %sess_bin_isid to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %sess_bin_isid, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %43)
  %cmp50.not = icmp eq i64 %43, 0
  br i1 %cmp50.not, label %if.end48.do.body57_crit_edge, label %if.then52

if.end48.do.body57_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body57

if.then52:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #17
  %dev_res_bin_isid = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 5
  %44 = ptrtoint ptr %dev_res_bin_isid to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %43, ptr %dev_res_bin_isid, align 8
  %or55 = or i32 %41, 3
  %45 = ptrtoint ptr %dev_reservation_flags to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or55, ptr %dev_reservation_flags, align 4
  br label %do.body57

do.body57:                                        ; preds = %if.then52, %if.end48.do.body57_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @target_scsi2_reservation_reserve.__UNIQUE_ID_ddebug207, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_scsi2_reservation_reserve, %out.thread118)) #15
          to label %if.then77.sink.split [label %out.thread118], !srcloc !541

out.thread118:                                    ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #17
  %se_tpg_tfo64 = getelementptr inbounds %struct.se_portal_group, ptr %12, i32 0, i32 10
  %46 = ptrtoint ptr %se_tpg_tfo64 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %se_tpg_tfo64, align 4
  %fabric_name65 = getelementptr inbounds %struct.target_core_fabric_ops, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %fabric_name65 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fabric_name65, align 4
  %se_lun66 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 20
  %50 = ptrtoint ptr %se_lun66 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %se_lun66, align 8
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %51, align 8
  %orig_fe_lun68 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 14
  %54 = ptrtoint ptr %orig_fe_lun68 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %orig_fe_lun68, align 8
  %se_node_acl69 = getelementptr inbounds %struct.se_session, ptr %3, i32 0, i32 4
  %56 = ptrtoint ptr %se_node_acl69 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %se_node_acl69, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @target_scsi2_reservation_reserve.__UNIQUE_ID_ddebug207, ptr noundef nonnull @.str.16, ptr noundef %49, i64 noundef %53, i64 noundef %55, ptr noundef %57) #15
  br label %if.then77.sink.split

if.then77.sink.split:                             ; preds = %out.thread118, %do.body57
  tail call void @_raw_spin_unlock(ptr noundef %dev_reservation_lock) #15
  br label %if.then77

if.then77:                                        ; preds = %if.then77.sink.split, %if.end9.if.then77_crit_edge, %lor.lhs.false.if.then77_crit_edge, %if.end.if.then77_crit_edge
  tail call void @target_complete_cmd(ptr noundef %cmd, i8 noundef zeroext 0) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then77, %out.thread121, %if.end13.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 2, %do.end ], [ 16, %if.end13.cleanup_crit_edge ], [ 0, %if.then77 ], [ 16, %out.thread121 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @core_scsi3_alloc_aptpl_registration(ptr noundef %pr_tmpl, i64 noundef %sa_res_key, ptr noundef %i_port, ptr noundef %isid, i64 noundef %mapped_lun, ptr noundef %t_port, i16 noundef zeroext %tpgt, i64 noundef %target_lun, i32 noundef %res_holder, i32 noundef %all_tg_pt, i8 noundef zeroext %type) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %i_port, null
  %tobool1.not = icmp eq ptr %t_port, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sa_res_key)
  %tobool3.not = icmp eq i64 %sa_res_key, 0
  %or.cond63 = or i1 %tobool3.not, %or.cond
  br i1 %or.cond63, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @t10_pr_reg_cache to i32))
  %0 = load ptr, ptr @t10_pr_reg_cache, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3520) #15
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %do.end9, label %if.end12

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #18
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %pr_reg_list = getelementptr inbounds %struct.t10_pr_registration, ptr %call.i, i32 0, i32 20
  %1 = ptrtoint ptr %pr_reg_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %pr_reg_list, ptr %pr_reg_list, align 4
  %prev.i = getelementptr inbounds %struct.t10_pr_registration, ptr %call.i, i32 0, i32 20, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pr_reg_list, ptr %prev.i, align 8
  %pr_reg_abort_list = getelementptr inbounds %struct.t10_pr_registration, ptr %call.i, i32 0, i32 21
  %3 = ptrtoint ptr %pr_reg_abort_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %pr_reg_abort_list, ptr %pr_reg_abort_list, align 4
  %prev.i64 = getelementptr inbounds %struct.t10_pr_registration, ptr %call.i, i32 0, i32 21, i32 1
  %4 = ptrtoint ptr %prev.i64 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %pr_reg_abort_list, ptr %prev.i64, align 8
  %pr_reg_aptpl_list = getelementptr inbounds %struct.t10_pr_registration, ptr %call.i, i32 0, i32 22
  %5 = ptrtoint ptr %pr_reg_aptpl_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %pr_reg_aptpl_list, ptr %pr_reg_aptpl_list, align 4
  %prev.i65 = getelementptr inbounds %struct.t10_pr_registration, ptr %call.i, i32 0, i32 22, i32 1
  %6 = ptrtoint ptr %prev.i65 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %pr_reg_aptpl_list, ptr %prev.i65, align 8
  %pr_reg_atp_list = getelementptr inbounds %struct.t10_pr_registration, ptr %call.i, i32 0, i32 23
  %7 = ptrtoint ptr %pr_reg_atp_list to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %pr_reg_atp_list, ptr %pr_reg_atp_list, align 4
  %prev.i66 = getelementptr inbounds %struct.t10_pr_registration, ptr %call.i, i32 0, i32 23, i32 1
  %8 = ptrtoint ptr %prev.i66 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %pr_reg_atp_list, ptr %prev.i66, align 8
  %pr_reg_atp_mem_list = getelementptr inbounds %struct.t10_pr_registration, ptr %call.i, i32 0, i32 24
  %9 = ptrtoint ptr %pr_reg_atp_mem_list to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %pr_reg_atp_mem_list, ptr %pr_reg_atp_mem_list, align 4
  %prev.i67 = getelementptr inbounds %struct.t10_pr_registration, ptr %call.i, i32 0, i32 24, i32 1
  %10 = ptrtoint ptr %prev.i67 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %pr_reg_atp_mem_list, ptr %prev.i67, align 8
  %pr_res_holders = getelementptr inbounds %struct.t10_pr_registration, ptr %call.i, i32 0, i32 17
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pr_res_holders, i32 noundef 4) #15
  %11 = ptrtoint ptr %pr_res_holders to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 0, ptr %pr_res_holders, align 8
  %pr_reg_nacl = getelementptr inbounds %struct.t10_pr_registration, ptr %call.i, i32 0, i32 18
  %12 = ptrtoint ptr %pr_reg_nacl to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %pr_reg_nacl, align 4
  %pr_reg_deve = getelementptr inbounds %struct.t10_pr_registration, ptr %call.i, i32 0, i32 19
  %13 = ptrtoint ptr %pr_reg_deve to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %pr_reg_deve, align 8
  %pr_res_mapped_lun = getelementptr inbounds %struct.t10_pr_registration, ptr %call.i, i32 0, i32 11
  %14 = ptrtoint ptr %pr_res_mapped_lun to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %mapped_lun, ptr %pr_res_mapped_lun, align 8
  %pr_aptpl_target_lun = getelementptr inbounds %struct.t10_pr_registration, ptr %call.i, i32 0, i32 12
  %15 = ptrtoint ptr %pr_aptpl_target_lun to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %target_lun, ptr %pr_aptpl_target_lun, align 8
  %pr_res_key = getelementptr inbounds %struct.t10_pr_registration, ptr %call.i, i32 0, i32 16
  %16 = ptrtoint ptr %pr_res_key to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %sa_res_key, ptr %pr_res_key, align 8
  %pr_reg_all_tg_pt = getelementptr inbounds %struct.t10_pr_registration, ptr %call.i, i32 0, i32 5
  %17 = ptrtoint ptr %pr_reg_all_tg_pt to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %all_tg_pt, ptr %pr_reg_all_tg_pt, align 4
  %pr_reg_aptpl = getelementptr inbounds %struct.t10_pr_registration, ptr %call.i, i32 0, i32 6
  %18 = ptrtoint ptr %pr_reg_aptpl to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %pr_reg_aptpl, align 8
  %pr_res_scope = getelementptr inbounds %struct.t10_pr_registration, ptr %call.i, i32 0, i32 9
  %19 = ptrtoint ptr %pr_res_scope to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %pr_res_scope, align 4
  %conv = zext i8 %type to i32
  %pr_res_type = getelementptr inbounds %struct.t10_pr_registration, ptr %call.i, i32 0, i32 8
  %20 = ptrtoint ptr %pr_res_type to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv, ptr %pr_res_type, align 8
  %cmp.not = icmp eq ptr %isid, null
  br i1 %cmp.not, label %if.end12.if.end17_crit_edge, label %if.then14

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  %21 = ptrtoint ptr %isid to i32
  call void @__asan_loadN_noabort(i32 %21, i32 8)
  %22 = load i64, ptr %isid, align 1
  %pr_reg_bin_isid = getelementptr inbounds %struct.t10_pr_registration, ptr %call.i, i32 0, i32 15
  %23 = ptrtoint ptr %pr_reg_bin_isid to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %pr_reg_bin_isid, align 8
  %call16 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call.i, i32 noundef 16, ptr noundef nonnull @.str.22, ptr noundef nonnull %isid)
  %isid_present_at_reg = getelementptr inbounds %struct.t10_pr_registration, ptr %call.i, i32 0, i32 10
  %24 = ptrtoint ptr %isid_present_at_reg to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %isid_present_at_reg, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end12.if.end17_crit_edge
  %pr_iport = getelementptr inbounds %struct.t10_pr_registration, ptr %call.i, i32 0, i32 1
  %call19 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %pr_iport, i32 noundef 256, ptr noundef nonnull @.str.22, ptr noundef nonnull %i_port)
  %pr_tport = getelementptr inbounds %struct.t10_pr_registration, ptr %call.i, i32 0, i32 2
  %call21 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %pr_tport, i32 noundef 256, ptr noundef nonnull @.str.22, ptr noundef nonnull %t_port)
  %pr_reg_tpgt = getelementptr inbounds %struct.t10_pr_registration, ptr %call.i, i32 0, i32 4
  %25 = ptrtoint ptr %pr_reg_tpgt to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %tpgt, ptr %pr_reg_tpgt, align 2
  %pr_res_holder = getelementptr inbounds %struct.t10_pr_registration, ptr %call.i, i32 0, i32 7
  %26 = ptrtoint ptr %pr_res_holder to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %res_holder, ptr %pr_res_holder, align 4
  %aptpl_reg_list = getelementptr inbounds %struct.t10_reservation, ptr %pr_tmpl, i32 0, i32 7
  %prev.i68 = getelementptr inbounds %struct.t10_reservation, ptr %pr_tmpl, i32 0, i32 7, i32 1
  %27 = ptrtoint ptr %prev.i68 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i68, align 4
  %call.i.i69 = tail call zeroext i1 @__list_add_valid(ptr noundef %pr_reg_aptpl_list, ptr noundef %28, ptr noundef %aptpl_reg_list) #15
  br i1 %call.i.i69, label %if.end.i.i, label %if.end17.list_add_tail.exit_crit_edge

if.end17.list_add_tail.exit_crit_edge:            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  %29 = ptrtoint ptr %prev.i68 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %pr_reg_aptpl_list, ptr %prev.i68, align 4
  %30 = ptrtoint ptr %pr_reg_aptpl_list to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %aptpl_reg_list, ptr %pr_reg_aptpl_list, align 4
  %31 = ptrtoint ptr %prev.i65 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev.i65, align 8
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %pr_reg_aptpl_list, ptr %28, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end17.list_add_tail.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @core_scsi3_alloc_aptpl_registration.__UNIQUE_ID_ddebug218, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@core_scsi3_alloc_aptpl_registration, %if.then29)) #15
          to label %cleanup [label %if.then29], !srcloc !541

if.then29:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res_holder)
  %tobool30.not = icmp eq i32 %res_holder, 0
  %cond = select i1 %tobool30.not, ptr @.str.25, ptr @.str.24
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @core_scsi3_alloc_aptpl_registration.__UNIQUE_ID_ddebug218, ptr noundef nonnull @.str.23, ptr noundef nonnull %cond) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %list_add_tail.exit, %do.end9, %do.end
  %retval.0 = phi i32 [ -12, %do.end9 ], [ -22, %do.end ], [ 0, %if.then29 ], [ 0, %list_add_tail.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @core_scsi3_check_aptpl_registration(ptr noundef %dev, ptr noundef %tpg, ptr nocapture noundef readonly %lun, ptr noundef %nacl, i64 noundef %mapped_lun) local_unnamed_addr #3 align 64 {
entry:
  %i_port.i = alloca [256 x i8], align 1
  %t_port.i = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_reservation_flags = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 21
  %0 = ptrtoint ptr %dev_reservation_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev_reservation_flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %lun, align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %i_port.i) #15
  %4 = call ptr @memset(ptr %i_port.i, i32 0, i32 256)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %t_port.i) #15
  %5 = call ptr @memset(ptr %t_port.i, i32 0, i32 256)
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %i_port.i, i32 noundef 256, ptr noundef nonnull @.str.22, ptr noundef %nacl) #15
  %se_tpg_tfo.i = getelementptr inbounds %struct.se_portal_group, ptr %tpg, i32 0, i32 10
  %6 = ptrtoint ptr %se_tpg_tfo.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %se_tpg_tfo.i, align 4
  %tpg_get_wwn.i = getelementptr inbounds %struct.target_core_fabric_ops, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %tpg_get_wwn.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tpg_get_wwn.i, align 4
  %call3.i = tail call ptr %9(ptr noundef %tpg) #15
  %call4.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %t_port.i, i32 noundef 256, ptr noundef nonnull @.str.22, ptr noundef %call3.i) #15
  %10 = ptrtoint ptr %se_tpg_tfo.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %se_tpg_tfo.i, align 4
  %tpg_get_tag.i = getelementptr inbounds %struct.target_core_fabric_ops, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %tpg_get_tag.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tpg_get_tag.i, align 4
  %call6.i = tail call zeroext i16 %13(ptr noundef %tpg) #15
  %aptpl_reg_lock.i = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 38, i32 4
  tail call void @_raw_spin_lock(ptr noundef %aptpl_reg_lock.i) #15
  %aptpl_reg_list.i = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 38, i32 7
  %14 = ptrtoint ptr %aptpl_reg_list.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %aptpl_reg_list.i, align 4
  %cmp.not24.i = icmp eq ptr %15, %aptpl_reg_list.i
  br i1 %cmp.not24.i, label %if.end.__core_scsi3_check_aptpl_registration.exit_crit_edge, label %for.body.lr.ph.i

if.end.__core_scsi3_check_aptpl_registration.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %__core_scsi3_check_aptpl_registration.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  %lun_rtpi.i = getelementptr inbounds %struct.se_lun, ptr %lun, i32 0, i32 4
  %pr_aptpl_active.i = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 38, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn.in25.i = phi ptr [ %15, %for.body.lr.ph.i ], [ %.pn28.i, %for.inc.i.for.body.i_crit_edge ]
  %pr_reg.027.i = getelementptr i8, ptr %.pn.in25.i, i32 -628
  %16 = ptrtoint ptr %.pn.in25.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn28.i = load ptr, ptr %.pn.in25.i, align 4
  %pr_iport.i = getelementptr i8, ptr %.pn.in25.i, i32 -612
  %call15.i = call i32 @strcmp(ptr noundef %pr_iport.i, ptr noundef nonnull %i_port.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %pr_res_mapped_lun.i = getelementptr i8, ptr %.pn.in25.i, i32 -68
  %17 = ptrtoint ptr %pr_res_mapped_lun.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %pr_res_mapped_lun.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %18, i64 %mapped_lun)
  %cmp16.i = icmp eq i64 %18, %mapped_lun
  br i1 %cmp16.i, label %land.lhs.true17.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

land.lhs.true17.i:                                ; preds = %land.lhs.true.i
  %pr_tport.i = getelementptr i8, ptr %.pn.in25.i, i32 -356
  %call20.i = call i32 @strcmp(ptr noundef %pr_tport.i, ptr noundef nonnull %t_port.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %land.lhs.true22.i, label %land.lhs.true17.i.for.inc.i_crit_edge

land.lhs.true17.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

land.lhs.true22.i:                                ; preds = %land.lhs.true17.i
  %pr_reg_tpgt.i = getelementptr i8, ptr %.pn.in25.i, i32 -98
  %19 = ptrtoint ptr %pr_reg_tpgt.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %pr_reg_tpgt.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %20, i16 %call6.i)
  %cmp24.i = icmp eq i16 %20, %call6.i
  br i1 %cmp24.i, label %land.lhs.true26.i, label %land.lhs.true22.i.for.inc.i_crit_edge

land.lhs.true22.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

land.lhs.true26.i:                                ; preds = %land.lhs.true22.i
  %pr_aptpl_target_lun.i = getelementptr i8, ptr %.pn.in25.i, i32 -60
  %21 = ptrtoint ptr %pr_aptpl_target_lun.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %pr_aptpl_target_lun.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %3)
  %cmp27.i = icmp eq i64 %22, %3
  br i1 %cmp27.i, label %if.then.i, label %land.lhs.true26.i.for.inc.i_crit_edge

land.lhs.true26.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true26.i
  %23 = tail call i32 @llvm.read_register.i32(metadata !530) #15
  %and.i.i.i.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %26, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !545
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i.i, label %if.then.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then.i.rcu_read_lock.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.52, i32 noundef 696, ptr noundef nonnull @.str.53) #15
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then.i.rcu_read_lock.exit.i_crit_edge
  %call29.i = tail call ptr @target_nacl_find_deve(ptr noundef %nacl, i64 noundef %mapped_lun) #15
  %pr_reg_deve.i = getelementptr i8, ptr %.pn.in25.i, i32 -20
  %27 = ptrtoint ptr %pr_reg_deve.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call29.i, ptr %pr_reg_deve.i, align 8
  %tobool31.not.i = icmp eq ptr %call29.i, null
  br i1 %tobool31.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %rcu_read_lock.exit.i
  %call36.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %nacl, i64 noundef %mapped_lun) #18
  %call.i2.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i2.i, label %do.end.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i5.i

do.end.i.rcu_read_unlock.exit.i_crit_edge:        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit.i

land.lhs.true.i5.i:                               ; preds = %do.end.i
  %call1.i3.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3.i)
  %tobool.not.i4.i = icmp eq i32 %call1.i3.i, 0
  br i1 %tobool.not.i4.i, label %land.lhs.true.i5.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i7.i

land.lhs.true.i5.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i7.i:                              ; preds = %land.lhs.true.i5.i
  %.b4.i6.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6.i, label %land.lhs.true2.i7.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i8.i

land.lhs.true2.i7.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit.i

if.then.i8.i:                                     ; preds = %land.lhs.true2.i7.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.52, i32 noundef 724, ptr noundef nonnull @.str.54) #15
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i8.i, %land.lhs.true2.i7.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i5.i.rcu_read_unlock.exit.i_crit_edge, %do.end.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !546
  %28 = tail call i32 @llvm.read_register.i32(metadata !530) #15
  %and.i.i.i.i.i9.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i9.i to ptr
  %preempt_count.i.i.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i10.i, align 4
  %sub.i.i.i.i = add i32 %31, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i10.i, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  br label %for.inc.i

if.end.i:                                         ; preds = %rcu_read_lock.exit.i
  %pr_kref.i = getelementptr inbounds %struct.se_dev_entry, ptr %call29.i, i32 0, i32 8
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pr_kref.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %pr_kref.i, i32 1, i32 3, i32 1) #15
  %32 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pr_kref.i, ptr %pr_kref.i, i32 1, ptr elementtype(i32) %pr_kref.i) #15, !srcloc !547
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !548

if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %33 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %.not.i.i.i.i.i = icmp sgt i32 %33, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.kref_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !549

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.kref_get.exit.i_crit_edge:      ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kref_get.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %pr_kref.i, i32 noundef %.sink.i.i.i.i.i) #15
  br label %kref_get.exit.i

kref_get.exit.i:                                  ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.kref_get.exit.i_crit_edge
  %call.i11.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i11.i, label %kref_get.exit.i.rcu_read_unlock.exit21.i_crit_edge, label %land.lhs.true.i14.i

kref_get.exit.i.rcu_read_unlock.exit21.i_crit_edge: ; preds = %kref_get.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit21.i

land.lhs.true.i14.i:                              ; preds = %kref_get.exit.i
  %call1.i12.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12.i)
  %tobool.not.i13.i = icmp eq i32 %call1.i12.i, 0
  br i1 %tobool.not.i13.i, label %land.lhs.true.i14.i.rcu_read_unlock.exit21.i_crit_edge, label %land.lhs.true2.i16.i

land.lhs.true.i14.i.rcu_read_unlock.exit21.i_crit_edge: ; preds = %land.lhs.true.i14.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit21.i

land.lhs.true2.i16.i:                             ; preds = %land.lhs.true.i14.i
  %.b4.i15.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i15.i, label %land.lhs.true2.i16.i.rcu_read_unlock.exit21.i_crit_edge, label %if.then.i17.i

land.lhs.true2.i16.i.rcu_read_unlock.exit21.i_crit_edge: ; preds = %land.lhs.true2.i16.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit21.i

if.then.i17.i:                                    ; preds = %land.lhs.true2.i16.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.52, i32 noundef 724, ptr noundef nonnull @.str.54) #15
  br label %rcu_read_unlock.exit21.i

rcu_read_unlock.exit21.i:                         ; preds = %if.then.i17.i, %land.lhs.true2.i16.i.rcu_read_unlock.exit21.i_crit_edge, %land.lhs.true.i14.i.rcu_read_unlock.exit21.i_crit_edge, %kref_get.exit.i.rcu_read_unlock.exit21.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !546
  %34 = tail call i32 @llvm.read_register.i32(metadata !530) #15
  %and.i.i.i.i.i18.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i.i.i18.i to ptr
  %preempt_count.i.i.i.i19.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i.i.i19.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i.i.i19.i, align 4
  %sub.i.i.i20.i = add i32 %37, -1
  store volatile i32 %sub.i.i.i20.i, ptr %preempt_count.i.i.i.i19.i, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  %pr_reg_nacl.i = getelementptr i8, ptr %.pn.in25.i, i32 -24
  %38 = ptrtoint ptr %pr_reg_nacl.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %nacl, ptr %pr_reg_nacl.i, align 4
  %39 = ptrtoint ptr %lun_rtpi.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %lun_rtpi.i, align 8
  %tg_pt_sep_rtpi.i = getelementptr i8, ptr %.pn.in25.i, i32 -52
  %41 = ptrtoint ptr %tg_pt_sep_rtpi.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %tg_pt_sep_rtpi.i, align 8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in25.i) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %rcu_read_unlock.exit21.i.list_del.exit.i_crit_edge

rcu_read_unlock.exit21.i.list_del.exit.i_crit_edge: ; preds = %rcu_read_unlock.exit21.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %rcu_read_unlock.exit21.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in25.i, i32 0, i32 1
  %42 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i.i.i, align 4
  %44 = ptrtoint ptr %.pn.in25.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %.pn.in25.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev1.i.i.i.i, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %45, ptr %43, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %rcu_read_unlock.exit21.i.list_del.exit.i_crit_edge
  %48 = ptrtoint ptr %.pn.in25.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in25.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in25.i, i32 0, i32 1
  %49 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %aptpl_reg_lock.i) #15
  tail call fastcc void @__core_scsi3_add_registration(ptr noundef %dev, ptr noundef %nacl, ptr noundef %pr_reg.027.i, i32 noundef 0, i32 noundef 0) #15
  %pr_res_holder.i = getelementptr i8, ptr %.pn.in25.i, i32 -88
  %50 = ptrtoint ptr %pr_res_holder.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pr_res_holder.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool40.not.i = icmp eq i32 %51, 0
  br i1 %tobool40.not.i, label %list_del.exit.i.if.end42.i_crit_edge, label %if.then41.i

list_del.exit.i.if.end42.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end42.i

if.then41.i:                                      ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @core_scsi3_aptpl_reserve(ptr noundef %dev, ptr noundef %tpg, ptr noundef %nacl, ptr noundef %pr_reg.027.i) #15
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then41.i, %list_del.exit.i.if.end42.i_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %aptpl_reg_lock.i) #15
  %52 = ptrtoint ptr %pr_aptpl_active.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %pr_aptpl_active.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end42.i, %rcu_read_unlock.exit.i, %land.lhs.true26.i.for.inc.i_crit_edge, %land.lhs.true22.i.for.inc.i_crit_edge, %land.lhs.true17.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %.pn28.i, %aptpl_reg_list.i
  br i1 %cmp.not.i, label %for.inc.i.__core_scsi3_check_aptpl_registration.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.__core_scsi3_check_aptpl_registration.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__core_scsi3_check_aptpl_registration.exit

__core_scsi3_check_aptpl_registration.exit:       ; preds = %for.inc.i.__core_scsi3_check_aptpl_registration.exit_crit_edge, %if.end.__core_scsi3_check_aptpl_registration.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %aptpl_reg_lock.i) #15
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %t_port.i) #15
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %i_port.i) #15
  br label %return

return:                                           ; preds = %__core_scsi3_check_aptpl_registration.exit, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @core_scsi3_free_pr_reg_from_nacl(ptr noundef %dev, ptr noundef %nacl) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_reservation_lock = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 20
  tail call void @_raw_spin_lock(ptr noundef %dev_reservation_lock) #15
  %dev_pr_res_holder = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 28
  %0 = ptrtoint ptr %dev_pr_res_holder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_pr_res_holder, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %pr_reg_nacl = getelementptr inbounds %struct.t10_pr_registration, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %pr_reg_nacl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pr_reg_nacl, align 4
  %cmp1 = icmp eq ptr %3, %nacl
  br i1 %cmp1, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @__core_scsi3_complete_pro_release(ptr noundef %dev, ptr noundef %nacl, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %free_reg.0.off0 = phi i1 [ false, %if.then ], [ true, %land.lhs.true.if.end_crit_edge ], [ true, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %dev_reservation_lock) #15
  %registration_lock = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 38, i32 3
  tail call void @_raw_spin_lock(ptr noundef %registration_lock) #15
  %brmerge = or i1 %cmp.not, %free_reg.0.off0
  br i1 %brmerge, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @__core_scsi3_free_registration(ptr noundef %dev, ptr noundef nonnull %1, ptr noundef null, i32 noundef 0)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %registration_list = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 38, i32 6
  %4 = ptrtoint ptr %registration_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %registration_list, align 4
  %cmp13.not46 = icmp eq ptr %5, %registration_list
  br i1 %cmp13.not46, label %if.end6.for.end_crit_edge, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  br label %for.body

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end6.for.body_crit_edge
  %.pn.in47 = phi ptr [ %.pn49, %for.inc.for.body_crit_edge ], [ %5, %if.end6.for.body_crit_edge ]
  %6 = ptrtoint ptr %.pn.in47 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn49 = load ptr, ptr %.pn.in47, align 4
  %pr_reg_nacl14 = getelementptr i8, ptr %.pn.in47, i32 -8
  %7 = ptrtoint ptr %pr_reg_nacl14 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pr_reg_nacl14, align 4
  %cmp15.not = icmp eq ptr %8, %nacl
  br i1 %cmp15.not, label %if.end17, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end17:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %pr_reg.048 = getelementptr i8, ptr %.pn.in47, i32 -612
  tail call fastcc void @__core_scsi3_free_registration(ptr noundef %dev, ptr noundef %pr_reg.048, ptr noundef null, i32 noundef 0)
  br label %for.inc

for.inc:                                          ; preds = %if.end17, %for.body.for.inc_crit_edge
  %cmp13.not = icmp eq ptr %.pn49, %registration_list
  br i1 %cmp13.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end6.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %registration_lock) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__core_scsi3_complete_pro_release(ptr noundef %dev, ptr noundef %se_nacl, ptr noundef %pr_reg, i32 noundef %explicit, i32 noundef %unreg) unnamed_addr #3 align 64 {
entry:
  %i_buf = alloca [21 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %se_tpg = getelementptr inbounds %struct.se_node_acl, ptr %se_nacl, i32 0, i32 10
  %0 = ptrtoint ptr %se_tpg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_tpg, align 4
  %se_tpg_tfo = getelementptr inbounds %struct.se_portal_group, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %se_tpg_tfo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %se_tpg_tfo, align 4
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %i_buf) #15
  %4 = call ptr @memset(ptr %i_buf, i32 0, i32 21)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %5 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 20, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !548

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2454, i32 noundef 9, ptr noundef null) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %isid_present_at_reg.i = getelementptr inbounds %struct.t10_pr_registration, ptr %pr_reg, i32 0, i32 10
  %6 = ptrtoint ptr %isid_present_at_reg.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %isid_present_at_reg.i, align 8, !range !540
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %8 = ptrtoint ptr %i_buf to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %i_buf, align 1
  br label %core_pr_dump_initiator_port.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call.i133 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %i_buf, i32 noundef 21, ptr noundef nonnull @.str, ptr noundef %pr_reg) #15
  br label %core_pr_dump_initiator_port.exit

core_pr_dump_initiator_port.exit:                 ; preds = %if.end.i, %if.then.i
  %dev_pr_res_holder = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 28
  %9 = ptrtoint ptr %dev_pr_res_holder to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_pr_res_holder, align 4
  %tobool24.not = icmp eq ptr %10, null
  br i1 %tobool24.not, label %core_pr_dump_initiator_port.exit.if.end36_crit_edge, label %if.then25

core_pr_dump_initiator_port.exit.if.end36_crit_edge: ; preds = %core_pr_dump_initiator_port.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36

if.then25:                                        ; preds = %core_pr_dump_initiator_port.exit
  call void @__sanitizer_cov_trace_pc() #17
  %pr_res_type27 = getelementptr inbounds %struct.t10_pr_registration, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %pr_res_type27 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pr_res_type27, align 8
  %pr_res_scope29 = getelementptr inbounds %struct.t10_pr_registration, ptr %10, i32 0, i32 9
  %13 = ptrtoint ptr %pr_res_scope29 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pr_res_scope29, align 4
  store i32 0, ptr %pr_res_type27, align 8
  %15 = ptrtoint ptr %dev_pr_res_holder to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_pr_res_holder, align 4
  %pr_res_scope33 = getelementptr inbounds %struct.t10_pr_registration, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %pr_res_scope33 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %pr_res_scope33, align 4
  %18 = load ptr, ptr %dev_pr_res_holder, align 4
  %pr_res_holder = getelementptr inbounds %struct.t10_pr_registration, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %pr_res_holder to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %pr_res_holder, align 4
  store ptr null, ptr %dev_pr_res_holder, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then25, %core_pr_dump_initiator_port.exit.if.end36_crit_edge
  %pr_res_scope.0 = phi i32 [ %14, %if.then25 ], [ 0, %core_pr_dump_initiator_port.exit.if.end36_crit_edge ]
  %pr_res_type.0 = phi i32 [ %12, %if.then25 ], [ 0, %core_pr_dump_initiator_port.exit.if.end36_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %unreg)
  %tobool37.not = icmp eq i32 %unreg, 0
  br i1 %tobool37.not, label %if.end36.out_crit_edge, label %if.end39

if.end36.out_crit_edge:                           ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end39:                                         ; preds = %if.end36
  %registration_lock = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 38, i32 3
  tail call void @_raw_spin_lock(ptr noundef %registration_lock) #15
  %pr_reg_list = getelementptr inbounds %struct.t10_pr_registration, ptr %pr_reg, i32 0, i32 20
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pr_reg_list) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.end39.list_del_init.exit_crit_edge

if.end39.list_del_init.exit_crit_edge:            ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.t10_pr_registration, ptr %pr_reg, i32 0, i32 20, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %pr_reg_list to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pr_reg_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end39.list_del_init.exit_crit_edge
  %26 = ptrtoint ptr %pr_reg_list to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %pr_reg_list, ptr %pr_reg_list, align 4
  %prev.i3.i = getelementptr inbounds %struct.t10_pr_registration, ptr %pr_reg, i32 0, i32 20, i32 1
  %27 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %pr_reg_list, ptr %prev.i3.i, align 4
  %registration_list = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 38, i32 6
  %28 = ptrtoint ptr %registration_list to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %registration_list, align 4
  %cmp.i = icmp ne ptr %29, %registration_list
  %pr_res_type.0.off = add i32 %pr_res_type.0, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %pr_res_type.0.off)
  %switch = icmp ult i32 %pr_res_type.0.off, 2
  %or.cond = select i1 %cmp.i, i1 %switch, i1 false
  br i1 %or.cond, label %if.then45, label %list_del_init.exit.if.end56_crit_edge

list_del_init.exit.if.end56_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end56

if.then45:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr = getelementptr i8, ptr %29, i32 -612
  %30 = ptrtoint ptr %dev_pr_res_holder to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr, ptr %dev_pr_res_holder, align 4
  %pr_res_type51 = getelementptr i8, ptr %29, i32 -68
  %31 = ptrtoint ptr %pr_res_type51 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %pr_res_type.0, ptr %pr_res_type51, align 8
  %32 = load ptr, ptr %dev_pr_res_holder, align 4
  %pr_res_scope53 = getelementptr inbounds %struct.t10_pr_registration, ptr %32, i32 0, i32 9
  %33 = ptrtoint ptr %pr_res_scope53 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %pr_res_scope.0, ptr %pr_res_scope53, align 4
  %34 = load ptr, ptr %dev_pr_res_holder, align 4
  %pr_res_holder55 = getelementptr inbounds %struct.t10_pr_registration, ptr %34, i32 0, i32 7
  %35 = ptrtoint ptr %pr_res_holder55 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %pr_res_holder55, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then45, %list_del_init.exit.if.end56_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %registration_lock) #15
  br label %out

out:                                              ; preds = %if.end56, %if.end36.out_crit_edge
  %36 = ptrtoint ptr %dev_pr_res_holder to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev_pr_res_holder, align 4
  %tobool60.not = icmp eq ptr %37, null
  br i1 %tobool60.not, label %do.body62, label %out.do.body81_crit_edge

out.do.body81_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body81

do.body62:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__core_scsi3_complete_pro_release.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__core_scsi3_complete_pro_release, %if.then72)) #15
          to label %do.body81 [label %if.then72], !srcloc !541

if.then72:                                        ; preds = %do.body62
  %fabric_name = getelementptr inbounds %struct.target_core_fabric_ops, ptr %3, i32 0, i32 2
  %38 = ptrtoint ptr %fabric_name to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fabric_name, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %explicit)
  %tobool73.not = icmp eq i32 %explicit, 0
  %cond = select i1 %tobool73.not, ptr @.str.75, ptr @.str.74
  %switch.tableidx = add i32 %pr_res_type.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %40 = icmp ult i32 %switch.tableidx, 8
  br i1 %40, label %switch.lookup, label %if.then72.core_scsi3_pr_dump_type.exit_crit_edge

if.then72.core_scsi3_pr_dump_type.exit_crit_edge: ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #17
  br label %core_scsi3_pr_dump_type.exit

switch.lookup:                                    ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep = getelementptr inbounds [8 x ptr], ptr @switch.table.__core_scsi3_complete_pro_release, i32 0, i32 %switch.tableidx
  %41 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %41)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %core_scsi3_pr_dump_type.exit

core_scsi3_pr_dump_type.exit:                     ; preds = %switch.lookup, %if.then72.core_scsi3_pr_dump_type.exit_crit_edge
  %retval.0.i134 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.32, %if.then72.core_scsi3_pr_dump_type.exit_crit_edge ]
  %pr_reg_all_tg_pt = getelementptr inbounds %struct.t10_pr_registration, ptr %pr_reg, i32 0, i32 5
  %42 = ptrtoint ptr %pr_reg_all_tg_pt to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pr_reg_all_tg_pt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool75.not = icmp ne i32 %43, 0
  %cond76 = zext i1 %tobool75.not to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__core_scsi3_complete_pro_release.__UNIQUE_ID_ddebug245, ptr noundef nonnull @.str.73, ptr noundef %39, ptr noundef nonnull %cond, ptr noundef nonnull %retval.0.i134, i32 noundef %cond76) #15
  br label %do.body81

do.body81:                                        ; preds = %core_scsi3_pr_dump_type.exit, %do.body62, %out.do.body81_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__core_scsi3_complete_pro_release.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__core_scsi3_complete_pro_release, %if.then93)) #15
          to label %do.end99 [label %if.then93], !srcloc !541

if.then93:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #17
  %fabric_name94 = getelementptr inbounds %struct.target_core_fabric_ops, ptr %3, i32 0, i32 2
  %44 = ptrtoint ptr %fabric_name94 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fabric_name94, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__core_scsi3_complete_pro_release.__UNIQUE_ID_ddebug246, ptr noundef nonnull @.str.76, ptr noundef %45, ptr noundef %se_nacl, ptr noundef nonnull %i_buf) #15
  br label %do.end99

do.end99:                                         ; preds = %if.then93, %do.body81
  %pr_res_scope100 = getelementptr inbounds %struct.t10_pr_registration, ptr %pr_reg, i32 0, i32 9
  %46 = ptrtoint ptr %pr_res_scope100 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %pr_res_scope100, align 4
  %pr_res_type101 = getelementptr inbounds %struct.t10_pr_registration, ptr %pr_reg, i32 0, i32 8
  %47 = ptrtoint ptr %pr_res_type101 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %pr_res_type101, align 8
  %pr_res_holder102 = getelementptr inbounds %struct.t10_pr_registration, ptr %pr_reg, i32 0, i32 7
  %48 = ptrtoint ptr %pr_res_holder102 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %pr_res_holder102, align 4
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %i_buf) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__core_scsi3_free_registration(ptr noundef %dev, ptr noundef %pr_reg, ptr noundef %preempt_and_abort_list, i32 noundef %dec_holders) unnamed_addr #3 align 64 {
entry:
  %i_buf = alloca [21 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %pr_reg_nacl = getelementptr inbounds %struct.t10_pr_registration, ptr %pr_reg, i32 0, i32 18
  %0 = ptrtoint ptr %pr_reg_nacl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pr_reg_nacl, align 4
  %se_tpg = getelementptr inbounds %struct.se_node_acl, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %se_tpg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %se_tpg, align 4
  %se_tpg_tfo = getelementptr inbounds %struct.se_portal_group, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %se_tpg_tfo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %se_tpg_tfo, align 4
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %i_buf) #15
  %6 = call ptr @memset(ptr %i_buf, i32 0, i32 21)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %7 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 38, i32 3, i32 0, i32 0, i32 4
  %call.i161 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i161)
  %cmp.not = icmp eq i32 %call.i161, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !548

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1286, i32 noundef 9, ptr noundef null) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %isid_present_at_reg.i = getelementptr inbounds %struct.t10_pr_registration, ptr %pr_reg, i32 0, i32 10
  %8 = ptrtoint ptr %isid_present_at_reg.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %isid_present_at_reg.i, align 8, !range !540
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i162 = icmp eq i8 %9, 0
  br i1 %tobool.not.i162, label %if.then.i163, label %if.end.i

if.then.i163:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %i_buf to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %i_buf, align 1
  br label %core_pr_dump_initiator_port.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call.i164 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %i_buf, i32 noundef 21, ptr noundef nonnull @.str, ptr noundef %pr_reg) #15
  br label %core_pr_dump_initiator_port.exit

core_pr_dump_initiator_port.exit:                 ; preds = %if.end.i, %if.then.i163
  %pr_reg_list = getelementptr inbounds %struct.t10_pr_registration, ptr %pr_reg, i32 0, i32 20
  %11 = ptrtoint ptr %pr_reg_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %pr_reg_list, align 4
  %cmp.i.not = icmp eq ptr %12, %pr_reg_list
  br i1 %cmp.i.not, label %core_pr_dump_initiator_port.exit.if.end29_crit_edge, label %if.then27

core_pr_dump_initiator_port.exit.if.end29_crit_edge: ; preds = %core_pr_dump_initiator_port.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29

if.then27:                                        ; preds = %core_pr_dump_initiator_port.exit
  %call.i.i165 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pr_reg_list) #15
  br i1 %call.i.i165, label %if.end.i.i, label %if.then27.list_del.exit_crit_edge

if.then27.list_del.exit_crit_edge:                ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.t10_pr_registration, ptr %pr_reg, i32 0, i32 20, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %pr_reg_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pr_reg_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then27.list_del.exit_crit_edge
  %19 = ptrtoint ptr %pr_reg_list to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %pr_reg_list, align 4
  %prev.i = getelementptr inbounds %struct.t10_pr_registration, ptr %pr_reg, i32 0, i32 20, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end29

if.end29:                                         ; preds = %list_del.exit, %core_pr_dump_initiator_port.exit.if.end29_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec_holders)
  %tobool30.not = icmp eq i32 %dec_holders, 0
  br i1 %tobool30.not, label %if.end29.if.end32_crit_edge, label %if.then31

if.end29.if.end32_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  %pr_res_holders.i = getelementptr inbounds %struct.t10_pr_registration, ptr %pr_reg, i32 0, i32 17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !542
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pr_res_holders.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %pr_res_holders.i, i32 1, i32 3, i32 1) #15
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pr_res_holders.i, ptr %pr_res_holders.i, i32 1, ptr elementtype(i32) %pr_res_holders.i) #15, !srcloc !543
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !544
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end29.if.end32_crit_edge
  %registration_lock33 = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 38, i32 3
  tail call void @_raw_spin_unlock(ptr noundef %registration_lock33) #15
  %pr_res_holders = getelementptr inbounds %struct.t10_pr_registration, ptr %pr_reg, i32 0, i32 17
  %call.i.i182 = tail call zeroext i1 @__kasan_check_read(ptr noundef %pr_res_holders, i32 noundef 4) #15
  %22 = ptrtoint ptr %pr_res_holders to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %pr_res_holders, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp35.not183 = icmp eq i32 %23, 0
  br i1 %cmp35.not183, label %if.end32.while.end_crit_edge, label %do.body36.lr.ph

if.end32.while.end_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

do.body36.lr.ph:                                  ; preds = %if.end32
  %fabric_name = getelementptr inbounds %struct.target_core_fabric_ops, ptr %5, i32 0, i32 2
  br label %do.body36

do.body36:                                        ; preds = %do.end54.do.body36_crit_edge, %do.body36.lr.ph
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__core_scsi3_free_registration.__UNIQUE_ID_ddebug225, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__core_scsi3_free_registration, %if.then46)) #15
          to label %do.end54 [label %if.then46], !srcloc !541

if.then46:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #17
  %24 = ptrtoint ptr %fabric_name to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fabric_name, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__core_scsi3_free_registration.__UNIQUE_ID_ddebug225, ptr noundef nonnull @.str.69, ptr noundef %25) #15
  br label %do.end54

do.end54:                                         ; preds = %if.then46, %do.body36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !550
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !551
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pr_res_holders, i32 noundef 4) #15
  %26 = ptrtoint ptr %pr_res_holders to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %pr_res_holders, align 4
  %cmp35.not = icmp eq i32 %27, 0
  br i1 %cmp35.not, label %do.end54.while.end_crit_edge, label %do.end54.do.body36_crit_edge

do.end54.do.body36_crit_edge:                     ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body36

do.end54.while.end_crit_edge:                     ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %do.end54.while.end_crit_edge, %if.end32.while.end_crit_edge
  %28 = tail call i32 @llvm.read_register.i32(metadata !530) #15
  %and.i.i.i.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %31, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !545
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %while.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

while.end.rcu_read_lock.exit_crit_edge:           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %while.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.52, i32 noundef 696, ptr noundef nonnull @.str.53) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %while.end.rcu_read_lock.exit_crit_edge
  %pr_res_mapped_lun = getelementptr inbounds %struct.t10_pr_registration, ptr %pr_reg, i32 0, i32 11
  %32 = ptrtoint ptr %pr_res_mapped_lun to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %pr_res_mapped_lun, align 8
  %call59 = tail call ptr @target_nacl_find_deve(ptr noundef %1, i64 noundef %33) #15
  %tobool60.not = icmp eq ptr %call59, null
  br i1 %tobool60.not, label %rcu_read_lock.exit.if.end62_crit_edge, label %if.then61

rcu_read_lock.exit.if.end62_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end62

if.then61:                                        ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  %deve_flags = getelementptr inbounds %struct.se_dev_entry, ptr %call59, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %deve_flags) #15
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %rcu_read_lock.exit.if.end62_crit_edge
  %call.i166 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i166, label %if.end62.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i169

if.end62.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i169:                               ; preds = %if.end62
  %call1.i167 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i167)
  %tobool.not.i168 = icmp eq i32 %call1.i167, 0
  br i1 %tobool.not.i168, label %land.lhs.true.i169.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i171

land.lhs.true.i169.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i169
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i171:                              ; preds = %land.lhs.true.i169
  %.b4.i170 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i170, label %land.lhs.true2.i171.rcu_read_unlock.exit_crit_edge, label %if.then.i172

land.lhs.true2.i171.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i171
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i172:                                     ; preds = %land.lhs.true2.i171
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.52, i32 noundef 724, ptr noundef nonnull @.str.54) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i172, %land.lhs.true2.i171.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i169.rcu_read_unlock.exit_crit_edge, %if.end62.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !546
  %34 = tail call i32 @llvm.read_register.i32(metadata !530) #15
  %and.i.i.i.i.i173 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i.i.i173 to ptr
  %preempt_count.i.i.i.i174 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i.i.i174 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i.i.i174, align 4
  %sub.i.i.i = add i32 %37, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i174, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  tail call void @_raw_spin_lock(ptr noundef %registration_lock33) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__core_scsi3_free_registration.__UNIQUE_ID_ddebug226, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__core_scsi3_free_registration, %if.then76)) #15
          to label %do.body84 [label %if.then76], !srcloc !541

if.then76:                                        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #17
  %fabric_name77 = getelementptr inbounds %struct.target_core_fabric_ops, ptr %5, i32 0, i32 2
  %38 = ptrtoint ptr %fabric_name77 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fabric_name77, align 4
  %40 = ptrtoint ptr %pr_reg_nacl to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pr_reg_nacl, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__core_scsi3_free_registration.__UNIQUE_ID_ddebug226, ptr noundef nonnull @.str.70, ptr noundef %39, ptr noundef %41, ptr noundef nonnull %i_buf) #15
  br label %do.body84

do.body84:                                        ; preds = %if.then76, %rcu_read_unlock.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__core_scsi3_free_registration.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__core_scsi3_free_registration, %if.then96)) #15
          to label %do.body103 [label %if.then96], !srcloc !541

if.then96:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #17
  %fabric_name97 = getelementptr inbounds %struct.target_core_fabric_ops, ptr %5, i32 0, i32 2
  %42 = ptrtoint ptr %fabric_name97 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fabric_name97, align 4
  %pr_reg_all_tg_pt = getelementptr inbounds %struct.t10_pr_registration, ptr %pr_reg, i32 0, i32 5
  %44 = ptrtoint ptr %pr_reg_all_tg_pt to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pr_reg_all_tg_pt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool98.not = icmp eq i32 %45, 0
  %cond = select i1 %tobool98.not, ptr @.str.62, ptr @.str.61
  %transport = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 46
  %46 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %transport, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__core_scsi3_free_registration.__UNIQUE_ID_ddebug227, ptr noundef nonnull @.str.60, ptr noundef %43, ptr noundef nonnull %cond, ptr noundef %47) #15
  br label %do.body103

do.body103:                                       ; preds = %if.then96, %do.body84
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__core_scsi3_free_registration.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__core_scsi3_free_registration, %if.then115)) #15
          to label %do.end119 [label %if.then115], !srcloc !541

if.then115:                                       ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #17
  %fabric_name116 = getelementptr inbounds %struct.target_core_fabric_ops, ptr %5, i32 0, i32 2
  %48 = ptrtoint ptr %fabric_name116 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fabric_name116, align 4
  %pr_res_key = getelementptr inbounds %struct.t10_pr_registration, ptr %pr_reg, i32 0, i32 16
  %50 = ptrtoint ptr %pr_res_key to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %pr_res_key, align 8
  %pr_res_generation = getelementptr inbounds %struct.t10_pr_registration, ptr %pr_reg, i32 0, i32 14
  %52 = ptrtoint ptr %pr_res_generation to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pr_res_generation, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__core_scsi3_free_registration.__UNIQUE_ID_ddebug228, ptr noundef nonnull @.str.71, ptr noundef %49, i64 noundef %51, i32 noundef %53) #15
  br label %do.end119

do.end119:                                        ; preds = %if.then115, %do.body103
  %tobool120.not = icmp eq ptr %preempt_and_abort_list, null
  br i1 %tobool120.not, label %if.then121, label %if.end123

if.then121:                                       ; preds = %do.end119
  call void @__sanitizer_cov_trace_pc() #17
  %pr_reg_deve = getelementptr inbounds %struct.t10_pr_registration, ptr %pr_reg, i32 0, i32 19
  %54 = ptrtoint ptr %pr_reg_deve to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %pr_reg_deve, align 8
  %55 = ptrtoint ptr %pr_reg_nacl to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %pr_reg_nacl, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @t10_pr_reg_cache to i32))
  %56 = load ptr, ptr @t10_pr_reg_cache, align 4
  call void @kmem_cache_free(ptr noundef %56, ptr noundef %pr_reg) #15
  br label %cleanup

if.end123:                                        ; preds = %do.end119
  %pr_reg_abort_list = getelementptr inbounds %struct.t10_pr_registration, ptr %pr_reg, i32 0, i32 21
  %prev.i175 = getelementptr inbounds %struct.list_head, ptr %preempt_and_abort_list, i32 0, i32 1
  %57 = ptrtoint ptr %prev.i175 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev.i175, align 4
  %call.i.i176 = call zeroext i1 @__list_add_valid(ptr noundef %pr_reg_abort_list, ptr noundef %58, ptr noundef nonnull %preempt_and_abort_list) #15
  br i1 %call.i.i176, label %if.end.i.i177, label %if.end123.cleanup_crit_edge

if.end123.cleanup_crit_edge:                      ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i.i177:                                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #17
  %59 = ptrtoint ptr %prev.i175 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %pr_reg_abort_list, ptr %prev.i175, align 4
  %60 = ptrtoint ptr %pr_reg_abort_list to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %preempt_and_abort_list, ptr %pr_reg_abort_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.t10_pr_registration, ptr %pr_reg, i32 0, i32 21, i32 1
  %61 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %prev3.i.i, align 4
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %pr_reg_abort_list, ptr %58, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i177, %if.end123.cleanup_crit_edge, %if.then121
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %i_buf) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @core_scsi3_free_all_registrations(ptr noundef %dev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_reservation_lock = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 20
  tail call void @_raw_spin_lock(ptr noundef %dev_reservation_lock) #15
  %dev_pr_res_holder = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 28
  %0 = ptrtoint ptr %dev_pr_res_holder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_pr_res_holder, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %pr_reg_nacl = getelementptr inbounds %struct.t10_pr_registration, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %pr_reg_nacl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pr_reg_nacl, align 4
  tail call fastcc void @__core_scsi3_complete_pro_release(ptr noundef %dev, ptr noundef %3, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %dev_reservation_lock) #15
  %registration_lock = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 38, i32 3
  tail call void @_raw_spin_lock(ptr noundef %registration_lock) #15
  %registration_list = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 38, i32 6
  %4 = ptrtoint ptr %registration_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %registration_list, align 4
  %cmp8.not64 = icmp eq ptr %5, %registration_list
  br i1 %cmp8.not64, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn.in65 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %5, %if.end.for.body_crit_edge ]
  %pr_reg.0 = getelementptr i8, ptr %.pn.in65, i32 -612
  %6 = ptrtoint ptr %.pn.in65 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn.in65, align 4
  tail call fastcc void @__core_scsi3_free_registration(ptr noundef %dev, ptr noundef %pr_reg.0, ptr noundef null, i32 noundef 0)
  %cmp8.not = icmp eq ptr %.pn, %registration_list
  br i1 %cmp8.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %registration_lock) #15
  %aptpl_reg_lock = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 38, i32 4
  tail call void @_raw_spin_lock(ptr noundef %aptpl_reg_lock) #15
  %aptpl_reg_list = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 38, i32 7
  %7 = ptrtoint ptr %aptpl_reg_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %aptpl_reg_list, align 4
  %cmp26.not66 = icmp eq ptr %8, %aptpl_reg_list
  br i1 %cmp26.not66, label %for.end.for.end36_crit_edge, label %for.end.for.body28_crit_edge

for.end.for.body28_crit_edge:                     ; preds = %for.end
  br label %for.body28

for.end.for.end36_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end36

for.body28:                                       ; preds = %list_del.exit.for.body28_crit_edge, %for.end.for.body28_crit_edge
  %.pn61.in67 = phi ptr [ %.pn61, %list_del.exit.for.body28_crit_edge ], [ %8, %for.end.for.body28_crit_edge ]
  %pr_reg.1 = getelementptr i8, ptr %.pn61.in67, i32 -628
  %9 = ptrtoint ptr %.pn61.in67 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn61 = load ptr, ptr %.pn61.in67, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn61.in67) #15
  br i1 %call.i.i, label %if.end.i.i, label %for.body28.list_del.exit_crit_edge

for.body28.list_del.exit_crit_edge:               ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn61.in67, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %.pn61.in67 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %.pn61.in67, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body28.list_del.exit_crit_edge
  %16 = ptrtoint ptr %.pn61.in67 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn61.in67, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn61.in67, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @t10_pr_reg_cache to i32))
  %18 = load ptr, ptr @t10_pr_reg_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %18, ptr noundef %pr_reg.1) #15
  %cmp26.not = icmp eq ptr %.pn61, %aptpl_reg_list
  br i1 %cmp26.not, label %list_del.exit.for.end36_crit_edge, label %list_del.exit.for.body28_crit_edge

list_del.exit.for.body28_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body28

list_del.exit.for.end36_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end36

for.end36:                                        ; preds = %list_del.exit.for.end36_crit_edge, %for.end.for.end36_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %aptpl_reg_lock) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @core_scsi3_pr_dump_type(i32 noundef %type) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 8
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep = getelementptr inbounds [8 x ptr], ptr @switch.table.core_scsi3_pr_dump_type, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.32, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @target_scsi3_emulate_pr_out(ptr noundef %cmd) local_unnamed_addr #3 align 64 {
entry:
  %buf.i.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %se_dev = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 19
  %0 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_dev, align 4
  %t_task_cdb = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 30
  %2 = ptrtoint ptr %t_task_cdb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %t_task_cdb, align 8
  %dev_reservation_flags = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %dev_reservation_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dev_reservation_flags, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %se_sess = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 21
  %6 = ptrtoint ptr %se_sess to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %se_sess, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %data_length = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 12
  %8 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %9)
  %cmp = icmp ult i32 %9, 24
  br i1 %cmp, label %do.end8, label %if.end12

do.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %9) #18
  br label %cleanup

if.end12:                                         ; preds = %if.end4
  %arrayidx13 = getelementptr i8, ptr %3, i32 1
  %10 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx13, align 1
  %12 = and i8 %11, 31
  %and14 = zext i8 %12 to i32
  %arrayidx15 = getelementptr i8, ptr %3, i32 2
  %13 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %14 to i32
  %and17 = and i32 %conv16, 240
  %and20 = and i32 %conv16, 15
  %call21 = tail call ptr @transport_kmap_data_sg(ptr noundef %cmd) #15
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.end12.cleanup_crit_edge, label %if.end24

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end24:                                         ; preds = %if.end12
  %15 = ptrtoint ptr %call21 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %16 = load i64, ptr %call21, align 1
  %arrayidx27 = getelementptr i8, ptr %call21, i32 8
  %17 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %18 = load i64, ptr %arrayidx27, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %12)
  %cmp29.not = icmp eq i8 %12, 7
  br i1 %cmp29.not, label %if.else, label %if.then31

if.then31:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx32 = getelementptr i8, ptr %call21, i32 20
  %19 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx32, align 1
  %conv33 = zext i8 %20 to i32
  %and34 = and i32 %conv33, 8
  %and37 = and i32 %conv33, 4
  br label %if.end47

if.else:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx41 = getelementptr i8, ptr %call21, i32 17
  %21 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx41, align 1
  %conv42 = zext i8 %22 to i32
  %and46 = and i32 %conv42, 2
  br label %if.end47

if.end47:                                         ; preds = %if.else, %if.then31
  %aptpl.0.in = phi i32 [ %conv33, %if.then31 ], [ %conv42, %if.else ]
  %spec_i_pt.0 = phi i32 [ %and34, %if.then31 ], [ 0, %if.else ]
  %all_tg_pt.0 = phi i32 [ %and37, %if.then31 ], [ 0, %if.else ]
  %unreg.0 = phi i32 [ 0, %if.then31 ], [ %and46, %if.else ]
  %aptpl.0 = and i32 %aptpl.0.in, 1
  %force_pr_aptpl = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 16
  %23 = ptrtoint ptr %force_pr_aptpl to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %force_pr_aptpl, align 2, !range !540
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool48.not = icmp eq i8 %24, 0
  %spec.select = select i1 %tobool48.not, i32 %aptpl.0, i32 1
  tail call void @transport_kunmap_data_sg(ptr noundef %cmd) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec_i_pt.0)
  %tobool51 = icmp ne i32 %spec_i_pt.0, 0
  %tobool51.not = xor i1 %tobool51, true
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp52.not = icmp eq i8 %12, 0
  %or.cond = select i1 %tobool51.not, i1 true, i1 %cmp52.not
  br i1 %or.cond, label %if.end55, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end55:                                         ; preds = %if.end47
  %brmerge = select i1 %tobool51, i1 true, i1 %cmp29.not
  br i1 %brmerge, label %if.end55.if.end71_crit_edge, label %land.lhs.true60

if.end55.if.end71_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end71

land.lhs.true60:                                  ; preds = %if.end55
  %25 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %26)
  %cmp62.not = icmp eq i32 %26, 24
  br i1 %cmp62.not, label %land.lhs.true60.if.end71_crit_edge, label %do.end67

land.lhs.true60.if.end71_crit_edge:               ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end71

do.end67:                                         ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #17
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %26) #18
  br label %cleanup

if.end71:                                         ; preds = %land.lhs.true60.if.end71_crit_edge, %if.end55.if.end71_crit_edge
  %27 = zext i32 %and14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and14, label %do.end95 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb76
    i32 2, label %sw.bb78
    i32 3, label %sw.bb80
    i32 4, label %sw.bb82
    i32 5, label %sw.bb84
    i32 6, label %sw.bb86
    i32 7, label %sw.bb91
  ]

sw.bb:                                            ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool72 = icmp ne i32 %spec.select, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %all_tg_pt.0)
  %tobool73 = icmp ne i32 %all_tg_pt.0, 0
  %call75 = tail call fastcc i32 @core_scsi3_emulate_pro_register(ptr noundef %cmd, i64 noundef %16, i64 noundef %18, i1 noundef zeroext %tobool72, i1 noundef zeroext %tobool73, i1 noundef zeroext %tobool51, i32 noundef 0)
  br label %sw.epilog

sw.bb76:                                          ; preds = %if.end71
  %28 = zext i32 %and20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.287)
  switch i32 %and20, label %do.end.i [
    i32 1, label %sw.bb76.sw.bb.i_crit_edge
    i32 3, label %sw.bb76.sw.bb.i_crit_edge173
    i32 5, label %sw.bb76.sw.bb.i_crit_edge174
    i32 6, label %sw.bb76.sw.bb.i_crit_edge175
    i32 7, label %sw.bb76.sw.bb.i_crit_edge176
    i32 8, label %sw.bb76.sw.bb.i_crit_edge177
  ]

sw.bb76.sw.bb.i_crit_edge177:                     ; preds = %sw.bb76
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i

sw.bb76.sw.bb.i_crit_edge176:                     ; preds = %sw.bb76
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i

sw.bb76.sw.bb.i_crit_edge175:                     ; preds = %sw.bb76
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i

sw.bb76.sw.bb.i_crit_edge174:                     ; preds = %sw.bb76
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i

sw.bb76.sw.bb.i_crit_edge173:                     ; preds = %sw.bb76
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i

sw.bb76.sw.bb.i_crit_edge:                        ; preds = %sw.bb76
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %sw.bb76.sw.bb.i_crit_edge, %sw.bb76.sw.bb.i_crit_edge173, %sw.bb76.sw.bb.i_crit_edge174, %sw.bb76.sw.bb.i_crit_edge175, %sw.bb76.sw.bb.i_crit_edge176, %sw.bb76.sw.bb.i_crit_edge177
  %call.i = tail call fastcc i32 @core_scsi3_pro_reserve(ptr noundef %cmd, i32 noundef %and20, i32 noundef %and17, i64 noundef %16) #15
  br label %sw.epilog

do.end.i:                                         ; preds = %sw.bb76
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.155, i32 noundef %and20) #18
  br label %cleanup

sw.bb78:                                          ; preds = %if.end71
  %29 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %se_dev, align 4
  %31 = ptrtoint ptr %se_sess to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %se_sess, align 4
  %tobool.not.i = icmp eq ptr %32, null
  br i1 %tobool.not.i, label %sw.bb78.do.end.i169_crit_edge, label %lor.lhs.false.i

sw.bb78.do.end.i169_crit_edge:                    ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i169

lor.lhs.false.i:                                  ; preds = %sw.bb78
  %se_lun2.i = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 20
  %33 = ptrtoint ptr %se_lun2.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %se_lun2.i, align 8
  %tobool3.not.i = icmp eq ptr %34, null
  br i1 %tobool3.not.i, label %lor.lhs.false.i.do.end.i169_crit_edge, label %if.end.i

lor.lhs.false.i.do.end.i169_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i169

do.end.i169:                                      ; preds = %lor.lhs.false.i.do.end.i169_crit_edge, %sw.bb78.do.end.i169_crit_edge
  %call.i168 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77) #18
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %se_node_acl.i = getelementptr inbounds %struct.se_session, ptr %32, i32 0, i32 4
  %35 = ptrtoint ptr %se_node_acl.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %se_node_acl.i, align 8
  %se_tpg.i.i = getelementptr inbounds %struct.se_node_acl, ptr %36, i32 0, i32 10
  %37 = ptrtoint ptr %se_tpg.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %se_tpg.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf.i.i) #15
  %39 = call ptr @memset(ptr %buf.i.i, i32 0, i32 16)
  %se_tpg_tfo.i.i = getelementptr inbounds %struct.se_portal_group, ptr %38, i32 0, i32 10
  %40 = ptrtoint ptr %se_tpg_tfo.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %se_tpg_tfo.i.i, align 4
  %sess_get_initiator_sid.i.i = getelementptr inbounds %struct.target_core_fabric_ops, ptr %41, i32 0, i32 19
  %42 = ptrtoint ptr %sess_get_initiator_sid.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sess_get_initiator_sid.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %43, null
  br i1 %cmp.not.i.i, label %if.end.i.core_scsi3_locate_pr_reg.exit.i_crit_edge, label %if.then.i.i

if.end.i.core_scsi3_locate_pr_reg.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %core_scsi3_locate_pr_reg.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i = call i32 %43(ptr noundef nonnull %32, ptr noundef nonnull %buf.i.i, i32 noundef 16) #15
  br label %core_scsi3_locate_pr_reg.exit.i

core_scsi3_locate_pr_reg.exit.i:                  ; preds = %if.then.i.i, %if.end.i.core_scsi3_locate_pr_reg.exit.i_crit_edge
  %isid_ptr.0.i.i = phi ptr [ %buf.i.i, %if.then.i.i ], [ null, %if.end.i.core_scsi3_locate_pr_reg.exit.i_crit_edge ]
  %call4.i.i = call fastcc ptr @__core_scsi3_locate_pr_reg(ptr noundef %30, ptr noundef %36, ptr noundef %isid_ptr.0.i.i) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf.i.i) #15
  %tobool5.not.i = icmp eq ptr %call4.i.i, null
  br i1 %tobool5.not.i, label %do.end9.i, label %if.end12.i

do.end9.i:                                        ; preds = %core_scsi3_locate_pr_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.176) #18
  br label %cleanup

if.end12.i:                                       ; preds = %core_scsi3_locate_pr_reg.exit.i
  %dev_reservation_lock.i = getelementptr inbounds %struct.se_device, ptr %30, i32 0, i32 20
  call void @_raw_spin_lock(ptr noundef %dev_reservation_lock.i) #15
  %dev_pr_res_holder.i = getelementptr inbounds %struct.se_device, ptr %30, i32 0, i32 28
  %44 = ptrtoint ptr %dev_pr_res_holder.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev_pr_res_holder.i, align 4
  %tobool13.not.i = icmp eq ptr %45, null
  br i1 %tobool13.not.i, label %if.then14.i, label %is_reservation_holder.exit.i

if.then14.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @_raw_spin_unlock(ptr noundef %dev_reservation_lock.i) #15
  br label %out_put_pr_reg.i

is_reservation_holder.exit.i:                     ; preds = %if.end12.i
  %pr_res_type1.i.i = getelementptr inbounds %struct.t10_pr_registration, ptr %45, i32 0, i32 8
  %46 = ptrtoint ptr %pr_res_type1.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pr_res_type1.i.i, align 8
  %cmp.i.i = icmp ne ptr %45, %call4.i.i
  %48 = freeze i1 %cmp.i.i
  %.not.i = xor i1 %48, true
  %.off.i = add i32 %47, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch126.i = icmp ult i32 %.off.i, 2
  %or.cond.i = select i1 %.not.i, i1 true, i1 %switch126.i
  br i1 %or.cond.i, label %if.end21.i, label %if.then19.i

if.then19.i:                                      ; preds = %is_reservation_holder.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @_raw_spin_unlock(ptr noundef %dev_reservation_lock.i) #15
  br label %out_put_pr_reg.i

if.end21.i:                                       ; preds = %is_reservation_holder.exit.i
  %pr_res_key.i = getelementptr inbounds %struct.t10_pr_registration, ptr %call4.i.i, i32 0, i32 16
  %49 = ptrtoint ptr %pr_res_key.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %pr_res_key.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %50, i64 %16)
  %cmp.not.i = icmp eq i64 %50, %16
  br i1 %cmp.not.i, label %if.end30.i, label %do.end25.i

do.end25.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #17
  %call28.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.179, i64 noundef %16, i64 noundef %50) #18
  call void @_raw_spin_unlock(ptr noundef %dev_reservation_lock.i) #15
  br label %out_put_pr_reg.i

if.end30.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %and20)
  %cmp31.not.i = icmp eq i32 %47, %and20
  br i1 %cmp31.not.i, label %lor.lhs.false32.i, label %if.end30.i.if.then34.i_crit_edge

if.end30.i.if.then34.i_crit_edge:                 ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then34.i

lor.lhs.false32.i:                                ; preds = %if.end30.i
  %pr_res_scope.i = getelementptr inbounds %struct.t10_pr_registration, ptr %45, i32 0, i32 9
  %51 = ptrtoint ptr %pr_res_scope.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pr_res_scope.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %and17)
  %cmp33.not.i = icmp eq i32 %52, %and17
  br i1 %cmp33.not.i, label %if.end46.i, label %lor.lhs.false32.i.if.then34.i_crit_edge

lor.lhs.false32.i.if.then34.i_crit_edge:          ; preds = %lor.lhs.false32.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then34.i

if.then34.i:                                      ; preds = %lor.lhs.false32.i.if.then34.i_crit_edge, %if.end30.i.if.then34.i_crit_edge
  %pr_reg_nacl.i = getelementptr inbounds %struct.t10_pr_registration, ptr %45, i32 0, i32 18
  %53 = ptrtoint ptr %pr_reg_nacl.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pr_reg_nacl.i, align 4
  %se_tfo.i = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 26
  %55 = ptrtoint ptr %se_tfo.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %se_tfo.i, align 8
  %fabric_name.i = getelementptr inbounds %struct.target_core_fabric_ops, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %fabric_name.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %fabric_name.i, align 4
  %59 = ptrtoint ptr %se_node_acl.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %se_node_acl.i, align 8
  %se_tpg.i = getelementptr inbounds %struct.se_node_acl, ptr %54, i32 0, i32 10
  %61 = ptrtoint ptr %se_tpg.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %se_tpg.i, align 4
  %se_tpg_tfo.i = getelementptr inbounds %struct.se_portal_group, ptr %62, i32 0, i32 10
  %63 = ptrtoint ptr %se_tpg_tfo.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %se_tpg_tfo.i, align 4
  %fabric_name40.i = getelementptr inbounds %struct.target_core_fabric_ops, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %fabric_name40.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %fabric_name40.i, align 4
  %call44.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.182, ptr noundef %58, ptr noundef %60, ptr noundef %66, ptr noundef %54) #18
  call void @_raw_spin_unlock(ptr noundef %dev_reservation_lock.i) #15
  br label %out_put_pr_reg.i

if.end46.i:                                       ; preds = %lor.lhs.false32.i
  %67 = ptrtoint ptr %se_node_acl.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %se_node_acl.i, align 8
  call fastcc void @__core_scsi3_complete_pro_release(ptr noundef %30, ptr noundef %68, ptr noundef nonnull %call4.i.i, i32 noundef 1, i32 noundef 0) #15
  call void @_raw_spin_unlock(ptr noundef %dev_reservation_lock.i) #15
  %type.off.i = add nsw i32 %and20, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %type.off.i)
  %switch.i = icmp ult i32 %type.off.i, 4
  br i1 %switch.i, label %if.end56.i, label %if.end46.i.write_aptpl.i_crit_edge

if.end46.i.write_aptpl.i_crit_edge:               ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %write_aptpl.i

if.end56.i:                                       ; preds = %if.end46.i
  %registration_lock.i = getelementptr inbounds %struct.se_device, ptr %30, i32 0, i32 38, i32 3
  call void @_raw_spin_lock(ptr noundef %registration_lock.i) #15
  %registration_list.i = getelementptr inbounds %struct.se_device, ptr %30, i32 0, i32 38, i32 6
  %69 = ptrtoint ptr %registration_list.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %.pn127.i = load ptr, ptr %registration_list.i, align 4
  %cmp59.not128.i = icmp eq ptr %.pn127.i, %registration_list.i
  br i1 %cmp59.not128.i, label %if.end56.i.for.end.i_crit_edge, label %if.end56.i.for.body.i_crit_edge

if.end56.i.for.body.i_crit_edge:                  ; preds = %if.end56.i
  br label %for.body.i

if.end56.i.for.end.i_crit_edge:                   ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end56.i.for.body.i_crit_edge
  %.pn129.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn127.i, %if.end56.i.for.body.i_crit_edge ]
  %pr_reg_p.0.i = getelementptr i8, ptr %.pn129.i, i32 -612
  %cmp60.i = icmp eq ptr %pr_reg_p.0.i, %call4.i.i
  br i1 %cmp60.i, label %for.body.i.for.inc.i_crit_edge, label %if.end62.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.end62.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %pr_reg_nacl63.i = getelementptr i8, ptr %.pn129.i, i32 -8
  %70 = ptrtoint ptr %pr_reg_nacl63.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pr_reg_nacl63.i, align 4
  %pr_res_mapped_lun.i = getelementptr i8, ptr %.pn129.i, i32 -52
  %72 = ptrtoint ptr %pr_res_mapped_lun.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %pr_res_mapped_lun.i, align 8
  %conv.i = trunc i64 %73 to i32
  call void @target_ua_allocate_lun(ptr noundef %71, i32 noundef %conv.i, i8 noundef zeroext 42, i8 noundef zeroext 4) #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end62.i, %for.body.i.for.inc.i_crit_edge
  %74 = ptrtoint ptr %.pn129.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %.pn.i = load ptr, ptr %.pn129.i, align 4
  %cmp59.not.i = icmp eq ptr %.pn.i, %registration_list.i
  br i1 %cmp59.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end56.i.for.end.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %registration_lock.i) #15
  br label %write_aptpl.i

write_aptpl.i:                                    ; preds = %for.end.i, %if.end46.i.write_aptpl.i_crit_edge
  %pr_aptpl_active.i = getelementptr inbounds %struct.se_device, ptr %30, i32 0, i32 38, i32 1
  %75 = ptrtoint ptr %pr_aptpl_active.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %pr_aptpl_active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool70.not.i = icmp eq i32 %76, 0
  br i1 %tobool70.not.i, label %write_aptpl.i.out_put_pr_reg.i_crit_edge, label %if.then71.i

write_aptpl.i.out_put_pr_reg.i_crit_edge:         ; preds = %write_aptpl.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_put_pr_reg.i

if.then71.i:                                      ; preds = %write_aptpl.i
  call void @__sanitizer_cov_trace_pc() #17
  %77 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %se_dev, align 4
  %call73.i = call fastcc i32 @core_scsi3_update_and_write_aptpl(ptr noundef %78, i1 noundef zeroext true) #15
  br label %out_put_pr_reg.i

out_put_pr_reg.i:                                 ; preds = %if.then71.i, %write_aptpl.i.out_put_pr_reg.i_crit_edge, %if.then34.i, %do.end25.i, %if.then19.i, %if.then14.i
  %ret.0.i = phi i32 [ 16, %do.end25.i ], [ 16, %if.then34.i ], [ 0, %if.then71.i ], [ 0, %write_aptpl.i.out_put_pr_reg.i_crit_edge ], [ 0, %if.then19.i ], [ 0, %if.then14.i ]
  %pr_res_holders.i.i = getelementptr inbounds %struct.t10_pr_registration, ptr %call4.i.i, i32 0, i32 17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !542
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %pr_res_holders.i.i, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %pr_res_holders.i.i, i32 1, i32 3, i32 1) #15
  %79 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pr_res_holders.i.i, ptr %pr_res_holders.i.i, i32 1, ptr elementtype(i32) %pr_res_holders.i.i) #15, !srcloc !543
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !544
  br label %sw.epilog

sw.bb80:                                          ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #17
  %call81 = tail call fastcc i32 @core_scsi3_emulate_pro_clear(ptr noundef %cmd, i64 noundef %16)
  br label %sw.epilog

sw.bb82:                                          ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #17
  %call83 = tail call fastcc i32 @core_scsi3_emulate_pro_preempt(ptr noundef %cmd, i32 noundef %and20, i32 noundef %and17, i64 noundef %16, i64 noundef %18, i32 noundef 0)
  br label %sw.epilog

sw.bb84:                                          ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #17
  %call85 = tail call fastcc i32 @core_scsi3_emulate_pro_preempt(ptr noundef %cmd, i32 noundef %and20, i32 noundef %and17, i64 noundef %16, i64 noundef %18, i32 noundef 1)
  br label %sw.epilog

sw.bb86:                                          ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool87 = icmp ne i32 %spec.select, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %all_tg_pt.0)
  %tobool88 = icmp ne i32 %all_tg_pt.0, 0
  %call90 = tail call fastcc i32 @core_scsi3_emulate_pro_register(ptr noundef %cmd, i64 noundef 0, i64 noundef %18, i1 noundef zeroext %tobool87, i1 noundef zeroext %tobool88, i1 noundef zeroext %tobool51, i32 noundef 1)
  br label %sw.epilog

sw.bb91:                                          ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #17
  %call92 = tail call fastcc i32 @core_scsi3_emulate_pro_register_and_move(ptr noundef %cmd, i64 noundef %16, i64 noundef %18, i32 noundef %spec.select, i32 noundef %unreg.0)
  br label %sw.epilog

do.end95:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #17
  %call97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %and14) #18
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb91, %sw.bb86, %sw.bb84, %sw.bb82, %sw.bb80, %out_put_pr_reg.i, %sw.bb.i, %sw.bb
  %ret.0 = phi i32 [ %call92, %sw.bb91 ], [ %call90, %sw.bb86 ], [ %call85, %sw.bb84 ], [ %call83, %sw.bb82 ], [ %call81, %sw.bb80 ], [ %call75, %sw.bb ], [ %call.i, %sw.bb.i ], [ %ret.0.i, %out_put_pr_reg.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool98.not = icmp eq i32 %ret.0, 0
  br i1 %tobool98.not, label %if.then99, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then99:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  call void @target_complete_cmd(ptr noundef %cmd, i8 noundef zeroext 0) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then99, %sw.epilog.cleanup_crit_edge, %do.end95, %do.end9.i, %do.end.i169, %do.end.i, %do.end67, %if.end47.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %do.end8, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 16, %do.end ], [ 19, %do.end8 ], [ 8, %do.end95 ], [ 19, %do.end67 ], [ 10, %if.end.cleanup_crit_edge ], [ 10, %if.end12.cleanup_crit_edge ], [ 9, %if.end47.cleanup_crit_edge ], [ 0, %if.then99 ], [ %ret.0, %sw.epilog.cleanup_crit_edge ], [ 10, %do.end.i169 ], [ 10, %do.end9.i ], [ 8, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @transport_kmap_data_sg(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @transport_kunmap_data_sg(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @core_scsi3_emulate_pro_register(ptr noundef %cmd, i64 noundef %res_key, i64 noundef %sa_res_key, i1 noundef zeroext %aptpl, i1 noundef zeroext %all_tg_pt, i1 noundef zeroext %spec_i_pt, i32 noundef %register_type) unnamed_addr #3 align 64 {
entry:
  %buf.i = alloca [16 x i8], align 1
  %isid_buf = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %se_sess3 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 21
  %0 = ptrtoint ptr %se_sess3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_sess3, align 4
  %se_dev = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 19
  %2 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %se_dev, align 4
  %se_lun4 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 20
  %4 = ptrtoint ptr %se_lun4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %se_lun4, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %isid_buf) #15
  %6 = call ptr @memset(ptr %isid_buf, i32 0, i32 16)
  %tobool.not = icmp eq ptr %1, null
  %tobool5.not = icmp eq ptr %5, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool5.not
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %se_tpg6 = getelementptr inbounds %struct.se_session, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %se_tpg6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %se_tpg6, align 4
  %se_tpg_tfo = getelementptr inbounds %struct.se_portal_group, ptr %8, i32 0, i32 10
  %9 = ptrtoint ptr %se_tpg_tfo to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %se_tpg_tfo, align 4
  %sess_get_initiator_sid = getelementptr inbounds %struct.target_core_fabric_ops, ptr %10, i32 0, i32 19
  %11 = ptrtoint ptr %sess_get_initiator_sid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sess_get_initiator_sid, align 4
  %tobool7.not = icmp eq ptr %12, null
  br i1 %tobool7.not, label %if.end.if.end13_crit_edge, label %if.then8

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call11 = call i32 %12(ptr noundef nonnull %1, ptr noundef nonnull %isid_buf, i32 noundef 16) #15
  br label %if.end13

if.end13:                                         ; preds = %if.then8, %if.end.if.end13_crit_edge
  %isid_ptr.0 = phi ptr [ %isid_buf, %if.then8 ], [ null, %if.end.if.end13_crit_edge ]
  %se_node_acl = getelementptr inbounds %struct.se_session, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %se_node_acl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %se_node_acl, align 8
  %se_tpg.i = getelementptr inbounds %struct.se_node_acl, ptr %14, i32 0, i32 10
  %15 = ptrtoint ptr %se_tpg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %se_tpg.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf.i) #15
  %17 = call ptr @memset(ptr %buf.i, i32 0, i32 16)
  %se_tpg_tfo.i = getelementptr inbounds %struct.se_portal_group, ptr %16, i32 0, i32 10
  %18 = ptrtoint ptr %se_tpg_tfo.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %se_tpg_tfo.i, align 4
  %sess_get_initiator_sid.i = getelementptr inbounds %struct.target_core_fabric_ops, ptr %19, i32 0, i32 19
  %20 = ptrtoint ptr %sess_get_initiator_sid.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sess_get_initiator_sid.i, align 4
  %cmp.not.i = icmp eq ptr %21, null
  br i1 %cmp.not.i, label %if.end13.core_scsi3_locate_pr_reg.exit_crit_edge, label %if.then.i

if.end13.core_scsi3_locate_pr_reg.exit_crit_edge: ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %core_scsi3_locate_pr_reg.exit

if.then.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = call i32 %21(ptr noundef nonnull %1, ptr noundef nonnull %buf.i, i32 noundef 16) #15
  br label %core_scsi3_locate_pr_reg.exit

core_scsi3_locate_pr_reg.exit:                    ; preds = %if.then.i, %if.end13.core_scsi3_locate_pr_reg.exit_crit_edge
  %isid_ptr.0.i = phi ptr [ %buf.i, %if.then.i ], [ null, %if.end13.core_scsi3_locate_pr_reg.exit_crit_edge ]
  %call4.i = call fastcc ptr @__core_scsi3_locate_pr_reg(ptr noundef %3, ptr noundef %14, ptr noundef %isid_ptr.0.i) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf.i) #15
  %tobool15.not = icmp eq ptr %call4.i, null
  br i1 %tobool15.not, label %if.then16, label %if.end56

if.then16:                                        ; preds = %core_scsi3_locate_pr_reg.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %res_key)
  %tobool17.not = icmp eq i64 %res_key, 0
  br i1 %tobool17.not, label %if.end24, label %do.end21

do.end21:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #17
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80) #18
  br label %cleanup

if.end24:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sa_res_key)
  %tobool25.not = icmp eq i64 %sa_res_key, 0
  br i1 %tobool25.not, label %if.end24.cleanup_crit_edge, label %if.end27

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end27:                                         ; preds = %if.end24
  br i1 %spec_i_pt, label %if.else, label %if.then29

if.then29:                                        ; preds = %if.end27
  %22 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %se_dev, align 4
  %24 = ptrtoint ptr %se_node_acl to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %se_node_acl, align 8
  %26 = ptrtoint ptr %se_lun4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %se_lun4, align 8
  %orig_fe_lun = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 14
  %28 = ptrtoint ptr %orig_fe_lun to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %orig_fe_lun, align 8
  %conv = zext i1 %all_tg_pt to i32
  %conv35 = zext i1 %aptpl to i32
  %call.i288 = call fastcc ptr @__core_scsi3_alloc_registration(ptr noundef %23, ptr noundef %25, ptr noundef %27, ptr noundef null, i64 noundef %29, ptr noundef %isid_ptr.0, i64 noundef %sa_res_key, i32 noundef %conv, i32 noundef %conv35) #15
  %tobool.not.i = icmp eq ptr %call.i288, null
  br i1 %tobool.not.i, label %do.end41, label %core_scsi3_alloc_registration.exit.thread

core_scsi3_alloc_registration.exit.thread:        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @__core_scsi3_add_registration(ptr noundef %23, ptr noundef %25, ptr noundef nonnull %call.i288, i32 noundef %register_type, i32 noundef 0) #15
  br label %if.end53

do.end41:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #17
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #18
  br label %cleanup

if.else:                                          ; preds = %if.end27
  %conv46 = zext i1 %all_tg_pt to i32
  %conv48 = zext i1 %aptpl to i32
  %call49 = call fastcc i32 @core_scsi3_decode_spec_i_port(ptr noundef %cmd, ptr noundef %8, ptr noundef %isid_ptr.0, i64 noundef %sa_res_key, i32 noundef %conv46, i32 noundef %conv48)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp.not = icmp eq i32 %call49, 0
  br i1 %cmp.not, label %if.else.if.end53_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.else.if.end53_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end53

if.end53:                                         ; preds = %if.else.if.end53_crit_edge, %core_scsi3_alloc_registration.exit.thread
  %call55 = call fastcc i32 @core_scsi3_update_and_write_aptpl(ptr noundef %3, i1 noundef zeroext %aptpl)
  br label %cleanup

if.end56:                                         ; preds = %core_scsi3_locate_pr_reg.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %register_type)
  %cmp57 = icmp eq i32 %register_type, 0
  br i1 %cmp57, label %land.lhs.true, label %if.end56.if.end68_crit_edge

if.end56.if.end68_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end68

land.lhs.true:                                    ; preds = %if.end56
  %pr_res_key = getelementptr inbounds %struct.t10_pr_registration, ptr %call4.i, i32 0, i32 16
  %30 = ptrtoint ptr %pr_res_key to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %pr_res_key, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %res_key)
  %cmp59.not = icmp eq i64 %31, %res_key
  br i1 %cmp59.not, label %land.lhs.true.if.end68_crit_edge, label %do.end64

land.lhs.true.if.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end68

do.end64:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %call67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, i64 noundef %res_key, i64 noundef %31) #18
  br label %if.then194

if.end68:                                         ; preds = %land.lhs.true.if.end68_crit_edge, %if.end56.if.end68_crit_edge
  br i1 %spec_i_pt, label %do.end73, label %if.end76

do.end73:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #17
  %call75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88) #18
  br label %if.then194

if.end76:                                         ; preds = %if.end68
  %pr_reg_all_tg_pt = getelementptr inbounds %struct.t10_pr_registration, ptr %call4.i, i32 0, i32 5
  %32 = ptrtoint ptr %pr_reg_all_tg_pt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pr_reg_all_tg_pt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool77.not = icmp eq i32 %33, 0
  %brmerge = or i1 %tobool77.not, %all_tg_pt
  br i1 %brmerge, label %if.end86, label %do.end83

do.end83:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #17
  %call85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91) #18
  br label %if.then194

if.end86:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sa_res_key)
  %tobool87.not = icmp eq i64 %sa_res_key, 0
  br i1 %tobool87.not, label %if.else107, label %if.then88

if.then88:                                        ; preds = %if.end86
  %34 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %se_dev, align 4
  %dev_reservation_lock.i = getelementptr inbounds %struct.se_device, ptr %35, i32 0, i32 20
  call void @_raw_spin_lock(ptr noundef %dev_reservation_lock.i) #15
  %pr_generation.i = getelementptr inbounds %struct.se_device, ptr %35, i32 0, i32 38, i32 2
  %36 = ptrtoint ptr %pr_generation.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pr_generation.i, align 8
  %inc.i = add i32 %37, 1
  store i32 %inc.i, ptr %pr_generation.i, align 8
  call void @_raw_spin_unlock(ptr noundef %dev_reservation_lock.i) #15
  %pr_res_generation = getelementptr inbounds %struct.t10_pr_registration, ptr %call4.i, i32 0, i32 14
  %38 = ptrtoint ptr %pr_res_generation to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %pr_res_generation, align 4
  %pr_res_key91 = getelementptr inbounds %struct.t10_pr_registration, ptr %call4.i, i32 0, i32 16
  %39 = ptrtoint ptr %pr_res_key91 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %sa_res_key, ptr %pr_res_key91, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @core_scsi3_emulate_pro_register.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@core_scsi3_emulate_pro_register, %if.then99)) #15
          to label %out [label %if.then99], !srcloc !541

if.then99:                                        ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #17
  %se_tfo = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 26
  %40 = ptrtoint ptr %se_tfo to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %se_tfo, align 8
  %fabric_name = getelementptr inbounds %struct.target_core_fabric_ops, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %fabric_name to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fabric_name, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %register_type)
  %cmp100 = icmp eq i32 %register_type, 1
  %cond = select i1 %cmp100, ptr @.str.58, ptr @.str.25
  %pr_reg_nacl = getelementptr inbounds %struct.t10_pr_registration, ptr %call4.i, i32 0, i32 18
  %44 = ptrtoint ptr %pr_reg_nacl to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pr_reg_nacl, align 4
  %46 = ptrtoint ptr %pr_res_key91 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %pr_res_key91, align 8
  %48 = ptrtoint ptr %pr_res_generation to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pr_res_generation, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @core_scsi3_emulate_pro_register.__UNIQUE_ID_ddebug242, ptr noundef nonnull @.str.93, ptr noundef %43, ptr noundef nonnull %cond, ptr noundef %45, i64 noundef %47, i32 noundef %49) #15
  br label %out

if.else107:                                       ; preds = %if.end86
  %pr_res_type = getelementptr inbounds %struct.t10_pr_registration, ptr %call4.i, i32 0, i32 8
  %50 = ptrtoint ptr %pr_res_type to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pr_res_type, align 8
  %52 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %se_dev, align 4
  %pr_reg_nacl.i = getelementptr inbounds %struct.t10_pr_registration, ptr %call4.i, i32 0, i32 18
  %54 = ptrtoint ptr %pr_reg_nacl.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pr_reg_nacl.i, align 4
  %dev_reservation_lock.i290 = getelementptr inbounds %struct.se_device, ptr %53, i32 0, i32 20
  call void @_raw_spin_lock(ptr noundef %dev_reservation_lock.i290) #15
  %dev_pr_res_holder.i = getelementptr inbounds %struct.se_device, ptr %53, i32 0, i32 28
  %56 = ptrtoint ptr %dev_pr_res_holder.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev_pr_res_holder.i, align 4
  %tobool.not.i291 = icmp eq ptr %57, null
  br i1 %tobool.not.i291, label %if.else107.if.end113_crit_edge, label %if.end.i292

if.else107.if.end113_crit_edge:                   ; preds = %if.else107
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end113

if.end.i292:                                      ; preds = %if.else107
  %cmp.i = icmp eq ptr %57, %call4.i
  br i1 %cmp.i, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.end.i292
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @__core_scsi3_complete_pro_release(ptr noundef %53, ptr noundef %55, ptr noundef nonnull %call4.i, i32 noundef 0, i32 noundef 1) #15
  br label %if.end113

if.else.i:                                        ; preds = %if.end.i292
  %58 = ptrtoint ptr %pr_reg_all_tg_pt to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pr_reg_all_tg_pt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool3.not.i = icmp eq i32 %59, 0
  br i1 %tobool3.not.i, label %if.else.i.if.end113_crit_edge, label %land.lhs.true.i

if.else.i.if.end113_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end113

land.lhs.true.i:                                  ; preds = %if.else.i
  %pr_reg_nacl4.i = getelementptr inbounds %struct.t10_pr_registration, ptr %57, i32 0, i32 18
  %60 = ptrtoint ptr %pr_reg_nacl4.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pr_reg_nacl4.i, align 4
  %62 = ptrtoint ptr %pr_reg_nacl.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pr_reg_nacl.i, align 4
  %call.i293 = call i32 @strcmp(ptr noundef %61, ptr noundef %63) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i293)
  %tobool8.not.i = icmp eq i32 %call.i293, 0
  br i1 %tobool8.not.i, label %land.lhs.true9.i, label %land.lhs.true.i.if.end113_crit_edge

land.lhs.true.i.if.end113_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end113

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  %pr_res_key.i = getelementptr inbounds %struct.t10_pr_registration, ptr %57, i32 0, i32 16
  %64 = ptrtoint ptr %pr_res_key.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %pr_res_key.i, align 8
  %pr_res_key10.i = getelementptr inbounds %struct.t10_pr_registration, ptr %call4.i, i32 0, i32 16
  %66 = ptrtoint ptr %pr_res_key10.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %pr_res_key10.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %65, i64 %67)
  %cmp11.i = icmp eq i64 %65, %67
  br i1 %cmp11.i, label %core_scsi3_check_implicit_release.exit, label %land.lhs.true9.i.if.end113_crit_edge

land.lhs.true9.i.if.end113_crit_edge:             ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end113

core_scsi3_check_implicit_release.exit:           ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #17
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, i64 noundef %65) #18
  call void @_raw_spin_unlock(ptr noundef %dev_reservation_lock.i290) #15
  br label %if.then194

if.end113:                                        ; preds = %land.lhs.true9.i.if.end113_crit_edge, %land.lhs.true.i.if.end113_crit_edge, %if.else.i.if.end113_crit_edge, %if.then2.i, %if.else107.if.end113_crit_edge
  %tobool158.not = phi i1 [ false, %if.else107.if.end113_crit_edge ], [ true, %if.then2.i ], [ false, %land.lhs.true.i.if.end113_crit_edge ], [ false, %land.lhs.true9.i.if.end113_crit_edge ], [ false, %if.else.i.if.end113_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %dev_reservation_lock.i290) #15
  %registration_lock = getelementptr inbounds %struct.se_device, ptr %3, i32 0, i32 38, i32 3
  call void @_raw_spin_lock(ptr noundef %registration_lock) #15
  %68 = ptrtoint ptr %pr_reg_all_tg_pt to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pr_reg_all_tg_pt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool115.not = icmp eq i32 %69, 0
  br i1 %tobool115.not, label %if.end113.if.end156_crit_edge, label %if.then116

if.end113.if.end156_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end156

if.then116:                                       ; preds = %if.end113
  %registration_list = getelementptr inbounds %struct.se_device, ptr %3, i32 0, i32 38, i32 6
  %70 = ptrtoint ptr %registration_list to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %registration_list, align 4
  %cmp124.not312 = icmp eq ptr %71, %registration_list
  br i1 %cmp124.not312, label %if.then116.if.end156_crit_edge, label %if.then116.for.body_crit_edge

if.then116.for.body_crit_edge:                    ; preds = %if.then116
  br label %for.body

if.then116.if.end156_crit_edge:                   ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end156

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then116.for.body_crit_edge
  %.pn284.in313 = phi ptr [ %.pn284315, %for.inc.for.body_crit_edge ], [ %71, %if.then116.for.body_crit_edge ]
  %pr_reg_p.0314 = getelementptr i8, ptr %.pn284.in313, i32 -612
  %72 = ptrtoint ptr %.pn284.in313 to i32
  call void @__asan_load4_noabort(i32 %72)
  %.pn284315 = load ptr, ptr %.pn284.in313, align 4
  %pr_reg_all_tg_pt128 = getelementptr i8, ptr %.pn284.in313, i32 -80
  %73 = ptrtoint ptr %pr_reg_all_tg_pt128 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %pr_reg_all_tg_pt128, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool129.not = icmp eq i32 %74, 0
  br i1 %tobool129.not, label %for.body.for.inc_crit_edge, label %if.end131

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end131:                                        ; preds = %for.body
  %pr_res_key132 = getelementptr i8, ptr %.pn284.in313, i32 -20
  %75 = ptrtoint ptr %pr_res_key132 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %pr_res_key132, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %76, i64 %res_key)
  %cmp133.not = icmp ne i64 %76, %res_key
  %cmp137 = icmp eq ptr %call4.i, %pr_reg_p.0314
  %or.cond286 = select i1 %cmp133.not, i1 true, i1 %cmp137
  br i1 %or.cond286, label %if.end131.for.inc_crit_edge, label %if.end140

if.end131.for.inc_crit_edge:                      ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end140:                                        ; preds = %if.end131
  %77 = ptrtoint ptr %pr_reg_nacl.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pr_reg_nacl.i, align 4
  %pr_reg_nacl144 = getelementptr i8, ptr %.pn284.in313, i32 -8
  %79 = ptrtoint ptr %pr_reg_nacl144 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pr_reg_nacl144, align 4
  %call147 = call i32 @strcmp(ptr noundef %78, ptr noundef %80) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %if.end150, label %if.end140.for.inc_crit_edge

if.end140.for.inc_crit_edge:                      ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end150:                                        ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @__core_scsi3_free_registration(ptr noundef %3, ptr noundef %pr_reg_p.0314, ptr noundef null, i32 noundef 0)
  br label %for.inc

for.inc:                                          ; preds = %if.end150, %if.end140.for.inc_crit_edge, %if.end131.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp124.not = icmp eq ptr %.pn284315, %registration_list
  br i1 %cmp124.not, label %for.inc.if.end156_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.if.end156_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end156

if.end156:                                        ; preds = %for.inc.if.end156_crit_edge, %if.then116.if.end156_crit_edge, %if.end113.if.end156_crit_edge
  %81 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %se_dev, align 4
  call fastcc void @__core_scsi3_free_registration(ptr noundef %82, ptr noundef nonnull %call4.i, ptr noundef null, i32 noundef 1)
  %.off = add i32 %51, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %or.cond287 = select i1 %tobool158.not, i1 %switch, i1 false
  br i1 %or.cond287, label %if.then165, label %if.end156.out.thread306_crit_edge

if.end156.out.thread306_crit_edge:                ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread306

if.then165:                                       ; preds = %if.end156
  %registration_list167 = getelementptr inbounds %struct.se_device, ptr %3, i32 0, i32 38, i32 6
  %83 = ptrtoint ptr %registration_list167 to i32
  call void @__asan_load4_noabort(i32 %83)
  %.pn316 = load ptr, ptr %registration_list167, align 4
  %cmp174.not317 = icmp eq ptr %.pn316, %registration_list167
  br i1 %cmp174.not317, label %if.then165.out.thread306_crit_edge, label %if.then165.for.body178_crit_edge

if.then165.for.body178_crit_edge:                 ; preds = %if.then165
  br label %for.body178

if.then165.out.thread306_crit_edge:               ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread306

for.body178:                                      ; preds = %for.body178.for.body178_crit_edge, %if.then165.for.body178_crit_edge
  %.pn318 = phi ptr [ %.pn, %for.body178.for.body178_crit_edge ], [ %.pn316, %if.then165.for.body178_crit_edge ]
  %pr_reg_nacl179 = getelementptr i8, ptr %.pn318, i32 -8
  %84 = ptrtoint ptr %pr_reg_nacl179 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pr_reg_nacl179, align 4
  %pr_res_mapped_lun = getelementptr i8, ptr %.pn318, i32 -52
  %86 = ptrtoint ptr %pr_res_mapped_lun to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %pr_res_mapped_lun, align 8
  %conv180 = trunc i64 %87 to i32
  call void @target_ua_allocate_lun(ptr noundef %85, i32 noundef %conv180, i8 noundef zeroext 42, i8 noundef zeroext 4) #15
  %88 = ptrtoint ptr %.pn318 to i32
  call void @__asan_load4_noabort(i32 %88)
  %.pn = load ptr, ptr %.pn318, align 4
  %cmp174.not = icmp eq ptr %.pn, %registration_list167
  br i1 %cmp174.not, label %for.body178.out.thread306_crit_edge, label %for.body178.for.body178_crit_edge

for.body178.for.body178_crit_edge:                ; preds = %for.body178
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body178

for.body178.out.thread306_crit_edge:              ; preds = %for.body178
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread306

out.thread306:                                    ; preds = %for.body178.out.thread306_crit_edge, %if.then165.out.thread306_crit_edge, %if.end156.out.thread306_crit_edge
  call void @_raw_spin_unlock(ptr noundef %registration_lock) #15
  %call192308 = call fastcc i32 @core_scsi3_update_and_write_aptpl(ptr noundef %3, i1 noundef zeroext %aptpl)
  br label %cleanup

out:                                              ; preds = %if.then99, %if.then88
  %call192 = call fastcc i32 @core_scsi3_update_and_write_aptpl(ptr noundef %3, i1 noundef zeroext %aptpl)
  br label %if.then194

if.then194:                                       ; preds = %out, %core_scsi3_check_implicit_release.exit, %do.end83, %do.end73, %do.end64
  %ret.0304 = phi i32 [ %call192, %out ], [ 16, %core_scsi3_check_implicit_release.exit ], [ 8, %do.end83 ], [ 9, %do.end73 ], [ 16, %do.end64 ]
  %pr_res_holders.i = getelementptr inbounds %struct.t10_pr_registration, ptr %call4.i, i32 0, i32 17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !542
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %pr_res_holders.i, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %pr_res_holders.i, i32 1, i32 3, i32 1) #15
  %89 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pr_res_holders.i, ptr %pr_res_holders.i, i32 1, ptr elementtype(i32) %pr_res_holders.i) #15, !srcloc !543
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !544
  br label %cleanup

cleanup:                                          ; preds = %if.then194, %out.thread306, %if.end53, %if.else.cleanup_crit_edge, %do.end41, %if.end24.cleanup_crit_edge, %do.end21, %do.end
  %retval.0 = phi i32 [ 16, %do.end21 ], [ %call55, %if.end53 ], [ 29, %do.end41 ], [ 10, %do.end ], [ 0, %if.end24.cleanup_crit_edge ], [ %call49, %if.else.cleanup_crit_edge ], [ %ret.0304, %if.then194 ], [ %call192308, %out.thread306 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %isid_buf) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @core_scsi3_emulate_pro_clear(ptr nocapture noundef readonly %cmd, i64 noundef %res_key) unnamed_addr #3 align 64 {
entry:
  %buf.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %se_dev = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 19
  %0 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_dev, align 4
  %se_sess1 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 21
  %2 = ptrtoint ptr %se_sess1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %se_sess1, align 4
  %se_node_acl = getelementptr inbounds %struct.se_session, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %se_node_acl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %se_node_acl, align 8
  %se_tpg.i = getelementptr inbounds %struct.se_node_acl, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %se_tpg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %se_tpg.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf.i) #15
  %8 = call ptr @memset(ptr %buf.i, i32 0, i32 16)
  %se_tpg_tfo.i = getelementptr inbounds %struct.se_portal_group, ptr %7, i32 0, i32 10
  %9 = ptrtoint ptr %se_tpg_tfo.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %se_tpg_tfo.i, align 4
  %sess_get_initiator_sid.i = getelementptr inbounds %struct.target_core_fabric_ops, ptr %10, i32 0, i32 19
  %11 = ptrtoint ptr %sess_get_initiator_sid.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sess_get_initiator_sid.i, align 4
  %cmp.not.i = icmp eq ptr %12, null
  br i1 %cmp.not.i, label %entry.core_scsi3_locate_pr_reg.exit_crit_edge, label %if.then.i

entry.core_scsi3_locate_pr_reg.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %core_scsi3_locate_pr_reg.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = call i32 %12(ptr noundef %3, ptr noundef nonnull %buf.i, i32 noundef 16) #15
  br label %core_scsi3_locate_pr_reg.exit

core_scsi3_locate_pr_reg.exit:                    ; preds = %if.then.i, %entry.core_scsi3_locate_pr_reg.exit_crit_edge
  %isid_ptr.0.i = phi ptr [ %buf.i, %if.then.i ], [ null, %entry.core_scsi3_locate_pr_reg.exit_crit_edge ]
  %call4.i = call fastcc ptr @__core_scsi3_locate_pr_reg(ptr noundef %1, ptr noundef %5, ptr noundef %isid_ptr.0.i) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf.i) #15
  %tobool.not = icmp eq ptr %call4.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %core_scsi3_locate_pr_reg.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.184) #18
  br label %cleanup

if.end:                                           ; preds = %core_scsi3_locate_pr_reg.exit
  %pr_res_key = getelementptr inbounds %struct.t10_pr_registration, ptr %call4.i, i32 0, i32 16
  %13 = ptrtoint ptr %pr_res_key to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %pr_res_key, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %res_key)
  %cmp.not = icmp eq i64 %14, %res_key
  br i1 %cmp.not, label %if.end11, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, i64 noundef %res_key, i64 noundef %14) #18
  %pr_res_holders.i = getelementptr inbounds %struct.t10_pr_registration, ptr %call4.i, i32 0, i32 17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !542
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %pr_res_holders.i, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %pr_res_holders.i, i32 1, i32 3, i32 1) #15
  %15 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pr_res_holders.i, ptr %pr_res_holders.i, i32 1, ptr elementtype(i32) %pr_res_holders.i) #15, !srcloc !543
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !544
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %dev_reservation_lock = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 20
  call void @_raw_spin_lock(ptr noundef %dev_reservation_lock) #15
  %dev_pr_res_holder = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 28
  %16 = ptrtoint ptr %dev_pr_res_holder to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_pr_res_holder, align 4
  %tobool12.not = icmp eq ptr %17, null
  br i1 %tobool12.not, label %if.end11.if.end15_crit_edge, label %if.then13

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  %pr_reg_nacl14 = getelementptr inbounds %struct.t10_pr_registration, ptr %17, i32 0, i32 18
  %18 = ptrtoint ptr %pr_reg_nacl14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pr_reg_nacl14, align 4
  call fastcc void @__core_scsi3_complete_pro_release(ptr noundef %1, ptr noundef %19, ptr noundef nonnull %17, i32 noundef 0, i32 noundef 0)
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end11.if.end15_crit_edge
  call void @_raw_spin_unlock(ptr noundef %dev_reservation_lock) #15
  %registration_lock = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 38, i32 3
  call void @_raw_spin_lock(ptr noundef %registration_lock) #15
  %registration_list = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 38, i32 6
  %20 = ptrtoint ptr %registration_list to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %registration_list, align 4
  %cmp24.not94 = icmp eq ptr %21, %registration_list
  br i1 %cmp24.not94, label %if.end15.for.end_crit_edge, label %if.end15.for.body_crit_edge

if.end15.for.body_crit_edge:                      ; preds = %if.end15
  br label %for.body

if.end15.for.end_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end15.for.body_crit_edge
  %.pn.in95 = phi ptr [ %.pn96, %for.inc.for.body_crit_edge ], [ %21, %if.end15.for.body_crit_edge ]
  %22 = ptrtoint ptr %.pn.in95 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn96 = load ptr, ptr %.pn.in95, align 4
  %pr_reg.0 = getelementptr i8, ptr %.pn.in95, i32 -612
  %cmp25 = icmp eq ptr %call4.i, %pr_reg.0
  %cond = zext i1 %cmp25 to i32
  %pr_reg_nacl26 = getelementptr i8, ptr %.pn.in95, i32 -8
  %23 = ptrtoint ptr %pr_reg_nacl26 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pr_reg_nacl26, align 4
  %pr_res_mapped_lun27 = getelementptr i8, ptr %.pn.in95, i32 -52
  %25 = ptrtoint ptr %pr_res_mapped_lun27 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %pr_res_mapped_lun27, align 8
  call fastcc void @__core_scsi3_free_registration(ptr noundef %1, ptr noundef %pr_reg.0, ptr noundef null, i32 noundef %cond)
  br i1 %cmp25, label %for.body.for.inc_crit_edge, label %if.then29

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then29:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %conv = trunc i64 %26 to i32
  call void @target_ua_allocate_lun(ptr noundef %24, i32 noundef %conv, i8 noundef zeroext 42, i8 noundef zeroext 3) #15
  br label %for.inc

for.inc:                                          ; preds = %if.then29, %for.body.for.inc_crit_edge
  %cmp24.not = icmp eq ptr %.pn96, %registration_list
  br i1 %cmp24.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end15.for.end_crit_edge
  call void @_raw_spin_unlock(ptr noundef %registration_lock) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @core_scsi3_emulate_pro_clear.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@core_scsi3_emulate_pro_clear, %if.then44)) #15
          to label %do.end47 [label %if.then44], !srcloc !541

if.then44:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  %se_tfo = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 26
  %27 = ptrtoint ptr %se_tfo to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %se_tfo, align 8
  %fabric_name = getelementptr inbounds %struct.target_core_fabric_ops, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %fabric_name to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fabric_name, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @core_scsi3_emulate_pro_clear.__UNIQUE_ID_ddebug247, ptr noundef nonnull @.str.188, ptr noundef %30) #15
  br label %do.end47

do.end47:                                         ; preds = %if.then44, %for.end
  %31 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %se_dev, align 4
  %call.i90 = call fastcc i32 @__core_scsi3_write_aptpl_to_file(ptr noundef %32, ptr noundef nonnull @.str.135) #15
  %pr_aptpl_active.i = getelementptr inbounds %struct.se_device, ptr %32, i32 0, i32 38, i32 1
  %33 = ptrtoint ptr %pr_aptpl_active.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %pr_aptpl_active.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @core_scsi3_update_and_write_aptpl.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@core_scsi3_emulate_pro_clear, %if.then6.i)) #15
          to label %core_scsi3_update_and_write_aptpl.exit [label %if.then6.i], !srcloc !541

if.then6.i:                                       ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @core_scsi3_update_and_write_aptpl.__UNIQUE_ID_ddebug240, ptr noundef nonnull @.str.137) #15
  br label %core_scsi3_update_and_write_aptpl.exit

core_scsi3_update_and_write_aptpl.exit:           ; preds = %if.then6.i, %do.end47
  call void @_raw_spin_lock(ptr noundef %dev_reservation_lock) #15
  %pr_generation.i = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 38, i32 2
  %34 = ptrtoint ptr %pr_generation.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pr_generation.i, align 8
  %inc.i = add i32 %35, 1
  store i32 %inc.i, ptr %pr_generation.i, align 8
  call void @_raw_spin_unlock(ptr noundef %dev_reservation_lock) #15
  br label %cleanup

cleanup:                                          ; preds = %core_scsi3_update_and_write_aptpl.exit, %do.end7, %do.end
  %retval.0 = phi i32 [ 16, %do.end7 ], [ 0, %core_scsi3_update_and_write_aptpl.exit ], [ 10, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @core_scsi3_emulate_pro_preempt(ptr noundef %cmd, i32 noundef %type, i32 noundef %scope, i64 noundef %res_key, i64 noundef %sa_res_key, i32 noundef %preempt_type) unnamed_addr #3 align 64 {
entry:
  %buf.i.i = alloca [16 x i8], align 1
  %preempt_and_abort_list.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.288)
  switch i32 %type, label %do.end [
    i32 1, label %entry.sw.bb_crit_edge
    i32 3, label %entry.sw.bb_crit_edge5
    i32 5, label %entry.sw.bb_crit_edge6
    i32 6, label %entry.sw.bb_crit_edge7
    i32 7, label %entry.sw.bb_crit_edge8
    i32 8, label %entry.sw.bb_crit_edge9
  ]

entry.sw.bb_crit_edge9:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

entry.sw.bb_crit_edge8:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

entry.sw.bb_crit_edge7:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

entry.sw.bb_crit_edge6:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

entry.sw.bb_crit_edge5:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge5, %entry.sw.bb_crit_edge6, %entry.sw.bb_crit_edge7, %entry.sw.bb_crit_edge8, %entry.sw.bb_crit_edge9
  %se_dev.i = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 19
  %1 = ptrtoint ptr %se_dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %se_dev.i, align 4
  %se_sess1.i = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 21
  %3 = ptrtoint ptr %se_sess1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %se_sess1.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %preempt_and_abort_list.i) #15
  %5 = getelementptr inbounds %struct.list_head, ptr %preempt_and_abort_list.i, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_and_abort_list.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %preempt_and_abort_list.i, ptr %preempt_and_abort_list.i, align 4
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %preempt_and_abort_list.i, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sa_res_key)
  %cmp.i = icmp ne i64 %sa_res_key, 0
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %sw.bb.core_scsi3_pro_preempt.exit_crit_edge, label %if.end.i

sw.bb.core_scsi3_pro_preempt.exit_crit_edge:      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %core_scsi3_pro_preempt.exit

if.end.i:                                         ; preds = %sw.bb
  %se_node_acl.i = getelementptr inbounds %struct.se_session, ptr %4, i32 0, i32 4
  %8 = ptrtoint ptr %se_node_acl.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %se_node_acl.i, align 8
  %se_tpg.i.i = getelementptr inbounds %struct.se_node_acl, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %se_tpg.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %se_tpg.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf.i.i) #15
  %12 = call ptr @memset(ptr %buf.i.i, i32 0, i32 16)
  %se_tpg_tfo.i.i = getelementptr inbounds %struct.se_portal_group, ptr %11, i32 0, i32 10
  %13 = ptrtoint ptr %se_tpg_tfo.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %se_tpg_tfo.i.i, align 4
  %sess_get_initiator_sid.i.i = getelementptr inbounds %struct.target_core_fabric_ops, ptr %14, i32 0, i32 19
  %15 = ptrtoint ptr %sess_get_initiator_sid.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sess_get_initiator_sid.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %16, null
  br i1 %cmp.not.i.i, label %if.end.i.core_scsi3_locate_pr_reg.exit.i_crit_edge, label %if.then.i.i

if.end.i.core_scsi3_locate_pr_reg.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %core_scsi3_locate_pr_reg.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i = call i32 %16(ptr noundef nonnull %4, ptr noundef nonnull %buf.i.i, i32 noundef 16) #15
  br label %core_scsi3_locate_pr_reg.exit.i

core_scsi3_locate_pr_reg.exit.i:                  ; preds = %if.then.i.i, %if.end.i.core_scsi3_locate_pr_reg.exit.i_crit_edge
  %isid_ptr.0.i.i = phi ptr [ %buf.i.i, %if.then.i.i ], [ null, %if.end.i.core_scsi3_locate_pr_reg.exit.i_crit_edge ]
  %call4.i.i = call fastcc ptr @__core_scsi3_locate_pr_reg(ptr noundef %2, ptr noundef %9, ptr noundef %isid_ptr.0.i.i) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf.i.i) #15
  %tobool3.not.i = icmp eq ptr %call4.i.i, null
  br i1 %tobool3.not.i, label %do.end.i, label %if.end7.i

do.end.i:                                         ; preds = %core_scsi3_locate_pr_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %preempt_type)
  %cmp5.i = icmp eq i32 %preempt_type, 1
  %cond.i = select i1 %cmp5.i, ptr @.str.191, ptr @.str.25
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.192, ptr noundef nonnull %cond.i) #18
  br label %core_scsi3_pro_preempt.exit

if.end7.i:                                        ; preds = %core_scsi3_locate_pr_reg.exit.i
  %pr_res_key.i = getelementptr inbounds %struct.t10_pr_registration, ptr %call4.i.i, i32 0, i32 16
  %17 = ptrtoint ptr %pr_res_key.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %pr_res_key.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %18, i64 %res_key)
  %cmp8.not.i = icmp eq i64 %18, %res_key
  br i1 %cmp8.not.i, label %if.end10.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  %pr_res_holders.i.i = getelementptr inbounds %struct.t10_pr_registration, ptr %call4.i.i, i32 0, i32 17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !542
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %pr_res_holders.i.i, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %pr_res_holders.i.i, i32 1, i32 3, i32 1) #15
  %19 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pr_res_holders.i.i, ptr %pr_res_holders.i.i, i32 1, ptr elementtype(i32) %pr_res_holders.i.i) #15, !srcloc !543
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !544
  br label %core_scsi3_pro_preempt.exit

if.end10.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %scope)
  %cmp11.not.i = icmp eq i32 %scope, 0
  br i1 %cmp11.not.i, label %if.end18.i, label %do.end15.i

do.end15.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.165, i32 noundef %scope) #18
  call fastcc void @core_scsi3_put_pr_reg(ptr noundef nonnull %call4.i.i) #15
  br label %core_scsi3_pro_preempt.exit

if.end18.i:                                       ; preds = %if.end10.i
  %dev_reservation_lock.i = getelementptr inbounds %struct.se_device, ptr %2, i32 0, i32 20
  call void @_raw_spin_lock(ptr noundef %dev_reservation_lock.i) #15
  %dev_pr_res_holder.i = getelementptr inbounds %struct.se_device, ptr %2, i32 0, i32 28
  %20 = ptrtoint ptr %dev_pr_res_holder.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_pr_res_holder.i, align 4
  %tobool19.not.i = icmp eq ptr %21, null
  br i1 %tobool19.not.i, label %if.end24.i, label %if.end24.thread.i

if.end24.i:                                       ; preds = %if.end18.i
  br i1 %cmp.i, label %if.end24.i.if.then35.i_crit_edge, label %if.end24.i.if.then28.i_crit_edge

if.end24.i.if.then28.i_crit_edge:                 ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then28.i

if.end24.i.if.then35.i_crit_edge:                 ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then35.i

if.end24.thread.i:                                ; preds = %if.end18.i
  %pr_res_type.i = getelementptr inbounds %struct.t10_pr_registration, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %pr_res_type.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pr_res_type.i, align 8
  %24 = add i32 %23, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %24)
  %switch.i = icmp ult i32 %24, -2
  %tobool25.not.not395.i = xor i1 %switch.i, true
  %brmerge396.i = or i1 %cmp.i, %tobool25.not.not395.i
  br i1 %brmerge396.i, label %lor.lhs.false32.i, label %if.end24.thread.i.if.then28.i_crit_edge

if.end24.thread.i.if.then28.i_crit_edge:          ; preds = %if.end24.thread.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then28.i

if.then28.i:                                      ; preds = %if.end24.thread.i.if.then28.i_crit_edge, %if.end24.i.if.then28.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %dev_reservation_lock.i) #15
  %pr_res_holders.i381.i = getelementptr inbounds %struct.t10_pr_registration, ptr %call4.i.i, i32 0, i32 17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !542
  %call.i.i.i.i382.i = call zeroext i1 @__kasan_check_write(ptr noundef %pr_res_holders.i381.i, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %pr_res_holders.i381.i, i32 1, i32 3, i32 1) #15
  %25 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pr_res_holders.i381.i, ptr %pr_res_holders.i381.i, i32 1, ptr elementtype(i32) %pr_res_holders.i381.i) #15, !srcloc !543
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !544
  br label %core_scsi3_pro_preempt.exit

lor.lhs.false32.i:                                ; preds = %if.end24.thread.i
  %pr_res_key33.i = getelementptr inbounds %struct.t10_pr_registration, ptr %21, i32 0, i32 16
  %26 = ptrtoint ptr %pr_res_key33.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %pr_res_key33.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %27, i64 %sa_res_key)
  %cmp34.not.i = icmp eq i64 %27, %sa_res_key
  br i1 %cmp34.not.i, label %if.end114.i, label %lor.lhs.false32.i.if.then35.i_crit_edge

lor.lhs.false32.i.if.then35.i_crit_edge:          ; preds = %lor.lhs.false32.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then35.i

if.then35.i:                                      ; preds = %lor.lhs.false32.i.if.then35.i_crit_edge, %if.end24.i.if.then35.i_crit_edge
  %tobool25.not397400.i = phi i1 [ %switch.i, %lor.lhs.false32.i.if.then35.i_crit_edge ], [ true, %if.end24.i.if.then35.i_crit_edge ]
  %registration_lock.i = getelementptr inbounds %struct.se_device, ptr %2, i32 0, i32 38, i32 3
  call void @_raw_spin_lock(ptr noundef %registration_lock.i) #15
  %registration_list.i = getelementptr inbounds %struct.se_device, ptr %2, i32 0, i32 38, i32 6
  %28 = ptrtoint ptr %registration_list.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %registration_list.i, align 4
  %cmp44.not419.i = icmp eq ptr %29, %registration_list.i
  br i1 %cmp44.not419.i, label %if.then35.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.then35.i.for.end.i_crit_edge:                  ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %preempt_type)
  %cmp70.i = icmp eq i32 %preempt_type, 1
  %preempt_and_abort_list.244.i = select i1 %cmp70.i, ptr %preempt_and_abort_list.i, ptr null
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn.in421.i = phi ptr [ %29, %for.body.lr.ph.i ], [ %.pn424.i, %for.inc.i.for.body.i_crit_edge ]
  %sa_res_key_unmatched.0.off0420.i = phi i1 [ %cmp.i, %for.body.lr.ph.i ], [ %sa_res_key_unmatched.2.off0.i, %for.inc.i.for.body.i_crit_edge ]
  %pr_reg.0423.i = getelementptr i8, ptr %.pn.in421.i, i32 -612
  %30 = ptrtoint ptr %.pn.in421.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn424.i = load ptr, ptr %.pn.in421.i, align 4
  br i1 %tobool25.not397400.i, label %if.then46.i, label %if.else.i

if.then46.i:                                      ; preds = %for.body.i
  %pr_res_key47.i = getelementptr i8, ptr %.pn.in421.i, i32 -20
  %31 = ptrtoint ptr %pr_res_key47.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %pr_res_key47.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %32, i64 %sa_res_key)
  %cmp48.not.i = icmp eq i64 %32, %sa_res_key
  br i1 %cmp48.not.i, label %if.end75.i, label %if.then46.i.for.inc.i_crit_edge

if.then46.i.for.inc.i_crit_edge:                  ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  br i1 %cmp.i, label %land.lhs.true58.i, label %if.else.i.if.end62.i_crit_edge

if.else.i.if.end62.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end62.i

land.lhs.true58.i:                                ; preds = %if.else.i
  %pr_res_key59.i = getelementptr i8, ptr %.pn.in421.i, i32 -20
  %33 = ptrtoint ptr %pr_res_key59.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %pr_res_key59.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %34, i64 %sa_res_key)
  %cmp60.not.i = icmp eq i64 %34, %sa_res_key
  br i1 %cmp60.not.i, label %land.lhs.true58.i.if.end62.i_crit_edge, label %land.lhs.true58.i.for.inc.i_crit_edge

land.lhs.true58.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true58.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

land.lhs.true58.i.if.end62.i_crit_edge:           ; preds = %land.lhs.true58.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end62.i

if.end62.i:                                       ; preds = %land.lhs.true58.i.if.end62.i_crit_edge, %if.else.i.if.end62.i_crit_edge
  %cmp63.i = icmp eq ptr %call4.i.i, %pr_reg.0423.i
  br i1 %cmp63.i, label %if.end62.i.for.inc.i_crit_edge, label %if.end75.thread.i

if.end62.i.for.inc.i_crit_edge:                   ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.end75.thread.i:                                ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #17
  %pr_reg_nacl68.i = getelementptr i8, ptr %.pn.in421.i, i32 -8
  %35 = ptrtoint ptr %pr_reg_nacl68.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pr_reg_nacl68.i, align 4
  %pr_res_mapped_lun69.i = getelementptr i8, ptr %.pn.in421.i, i32 -52
  %37 = ptrtoint ptr %pr_res_mapped_lun69.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %pr_res_mapped_lun69.i, align 8
  call fastcc void @__core_scsi3_free_registration(ptr noundef %2, ptr noundef %pr_reg.0423.i, ptr noundef %preempt_and_abort_list.244.i, i32 noundef 0) #15
  %extract.t.i = trunc i64 %38 to i32
  br label %if.then77.i

if.end75.i:                                       ; preds = %if.then46.i
  %cmp51.i = icmp eq ptr %call4.i.i, %pr_reg.0423.i
  %cond52.i = zext i1 %cmp51.i to i32
  %pr_reg_nacl53.i = getelementptr i8, ptr %.pn.in421.i, i32 -8
  %39 = ptrtoint ptr %pr_reg_nacl53.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pr_reg_nacl53.i, align 4
  %pr_res_mapped_lun54.i = getelementptr i8, ptr %.pn.in421.i, i32 -52
  %41 = ptrtoint ptr %pr_res_mapped_lun54.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %pr_res_mapped_lun54.i, align 8
  call fastcc void @__core_scsi3_free_registration(ptr noundef %2, ptr noundef %pr_reg.0423.i, ptr noundef %preempt_and_abort_list.244.i, i32 noundef %cond52.i) #15
  %extract.t373.i = trunc i64 %42 to i32
  br i1 %cmp51.i, label %if.end75.i.for.inc.i_crit_edge, label %if.end75.i.if.then77.i_crit_edge

if.end75.i.if.then77.i_crit_edge:                 ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then77.i

if.end75.i.for.inc.i_crit_edge:                   ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.then77.i:                                      ; preds = %if.end75.i.if.then77.i_crit_edge, %if.end75.thread.i
  %pr_reg_nacl.0406.i = phi ptr [ %36, %if.end75.thread.i ], [ %40, %if.end75.i.if.then77.i_crit_edge ]
  %pr_res_mapped_lun.0.off0405.i = phi i32 [ %extract.t.i, %if.end75.thread.i ], [ %extract.t373.i, %if.end75.i.if.then77.i_crit_edge ]
  call void @target_ua_allocate_lun(ptr noundef %pr_reg_nacl.0406.i, i32 noundef %pr_res_mapped_lun.0.off0405.i, i8 noundef zeroext 42, i8 noundef zeroext 5) #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then77.i, %if.end75.i.for.inc.i_crit_edge, %if.end62.i.for.inc.i_crit_edge, %land.lhs.true58.i.for.inc.i_crit_edge, %if.then46.i.for.inc.i_crit_edge
  %sa_res_key_unmatched.2.off0.i = phi i1 [ %sa_res_key_unmatched.0.off0420.i, %land.lhs.true58.i.for.inc.i_crit_edge ], [ false, %if.end62.i.for.inc.i_crit_edge ], [ false, %if.end75.i.for.inc.i_crit_edge ], [ false, %if.then77.i ], [ %sa_res_key_unmatched.0.off0420.i, %if.then46.i.for.inc.i_crit_edge ]
  %cmp44.not.i = icmp eq ptr %.pn424.i, %registration_list.i
  br i1 %cmp44.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.then35.i.for.end.i_crit_edge
  %sa_res_key_unmatched.0.off0.lcssa.i = phi i1 [ %cmp.i, %if.then35.i.for.end.i_crit_edge ], [ %sa_res_key_unmatched.2.off0.i, %for.inc.i.for.end.i_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %registration_lock.i) #15
  br i1 %sa_res_key_unmatched.0.off0.lcssa.i, label %if.then86.i, label %if.end88.i

if.then86.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @_raw_spin_unlock(ptr noundef %dev_reservation_lock.i) #15
  %pr_res_holders.i383.i = getelementptr inbounds %struct.t10_pr_registration, ptr %call4.i.i, i32 0, i32 17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !542
  %call.i.i.i.i384.i = call zeroext i1 @__kasan_check_write(ptr noundef %pr_res_holders.i383.i, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %pr_res_holders.i383.i, i32 1, i32 3, i32 1) #15
  %43 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pr_res_holders.i383.i, ptr %pr_res_holders.i383.i, i32 1, ptr elementtype(i32) %pr_res_holders.i383.i) #15, !srcloc !543
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !544
  br label %core_scsi3_pro_preempt.exit

if.end88.i:                                       ; preds = %for.end.i
  %brmerge379.i = or i1 %tobool19.not.i, %tobool25.not397400.i
  %brmerge380.i = or i1 %cmp.i, %brmerge379.i
  br i1 %brmerge380.i, label %if.end88.i.if.end105.i_crit_edge, label %if.then94.i

if.end88.i.if.end105.i_crit_edge:                 ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end105.i

if.then94.i:                                      ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %preempt_type)
  %cmp95.i = icmp eq i32 %preempt_type, 1
  %preempt_and_abort_list.245.i = select i1 %cmp95.i, ptr %preempt_and_abort_list.i, ptr null
  call fastcc void @__core_scsi3_complete_pro_preempt(ptr noundef %2, ptr noundef nonnull %call4.i.i, ptr noundef %preempt_and_abort_list.245.i, i32 noundef %type, i32 noundef %preempt_type) #15
  br i1 %cmp95.i, label %if.then103.i, label %if.then94.i.if.end105.i_crit_edge

if.then94.i.if.end105.i_crit_edge:                ; preds = %if.then94.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end105.i

if.then103.i:                                     ; preds = %if.then94.i
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @core_scsi3_release_preempt_and_abort(ptr noundef nonnull %preempt_and_abort_list.i, ptr noundef nonnull %call4.i.i) #15
  br label %if.end105.i

if.end105.i:                                      ; preds = %if.then103.i, %if.then94.i.if.end105.i_crit_edge, %if.end88.i.if.end105.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %dev_reservation_lock.i) #15
  %pr_aptpl_active.i = getelementptr inbounds %struct.se_device, ptr %2, i32 0, i32 38, i32 1
  %44 = ptrtoint ptr %pr_aptpl_active.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pr_aptpl_active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool107.not.i = icmp eq i32 %45, 0
  br i1 %tobool107.not.i, label %if.end105.i.if.end111.i_crit_edge, label %if.then108.i

if.end105.i.if.end111.i_crit_edge:                ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end111.i

if.then108.i:                                     ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #17
  %46 = ptrtoint ptr %se_dev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %se_dev.i, align 4
  %call110.i = call fastcc i32 @core_scsi3_update_and_write_aptpl(ptr noundef %47, i1 noundef zeroext true) #15
  br label %if.end111.i

if.end111.i:                                      ; preds = %if.then108.i, %if.end105.i.if.end111.i_crit_edge
  %pr_res_holders.i385.i = getelementptr inbounds %struct.t10_pr_registration, ptr %call4.i.i, i32 0, i32 17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !542
  %call.i.i.i.i386.i = call zeroext i1 @__kasan_check_write(ptr noundef %pr_res_holders.i385.i, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %pr_res_holders.i385.i, i32 1, i32 3, i32 1) #15
  %48 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pr_res_holders.i385.i, ptr %pr_res_holders.i385.i, i32 1, ptr elementtype(i32) %pr_res_holders.i385.i) #15, !srcloc !543
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !544
  %49 = ptrtoint ptr %se_dev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %se_dev.i, align 4
  %dev_reservation_lock.i.i = getelementptr inbounds %struct.se_device, ptr %50, i32 0, i32 20
  call void @_raw_spin_lock(ptr noundef %dev_reservation_lock.i.i) #15
  %pr_generation.i.i = getelementptr inbounds %struct.se_device, ptr %50, i32 0, i32 38, i32 2
  %51 = ptrtoint ptr %pr_generation.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pr_generation.i.i, align 8
  %inc.i.i = add i32 %52, 1
  store i32 %inc.i.i, ptr %pr_generation.i.i, align 8
  call void @_raw_spin_unlock(ptr noundef %dev_reservation_lock.i.i) #15
  br label %core_scsi3_pro_preempt.exit

if.end114.i:                                      ; preds = %lor.lhs.false32.i
  %pr_res_scope.i = getelementptr inbounds %struct.t10_pr_registration, ptr %21, i32 0, i32 9
  %53 = ptrtoint ptr %pr_res_scope.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %pr_res_scope.i, align 4
  %cmp116.not.i = icmp eq ptr %call4.i.i, %21
  br i1 %cmp116.not.i, label %if.end114.i.if.end121.i_crit_edge, label %if.then118.i

if.end114.i.if.end121.i_crit_edge:                ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end121.i

if.then118.i:                                     ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #17
  %pr_reg_nacl119.i = getelementptr inbounds %struct.t10_pr_registration, ptr %21, i32 0, i32 18
  %55 = ptrtoint ptr %pr_reg_nacl119.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pr_reg_nacl119.i, align 4
  call fastcc void @__core_scsi3_complete_pro_release(ptr noundef %2, ptr noundef %56, ptr noundef nonnull %21, i32 noundef 0, i32 noundef 0) #15
  br label %if.end121.i

if.end121.i:                                      ; preds = %if.then118.i, %if.end114.i.if.end121.i_crit_edge
  %registration_lock122.i = getelementptr inbounds %struct.se_device, ptr %2, i32 0, i32 38, i32 3
  call void @_raw_spin_lock(ptr noundef %registration_lock122.i) #15
  %registration_list124.i = getelementptr inbounds %struct.se_device, ptr %2, i32 0, i32 38, i32 6
  %57 = ptrtoint ptr %registration_list124.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %registration_list124.i, align 4
  %cmp136.not409.i = icmp eq ptr %58, %registration_list124.i
  br i1 %cmp136.not409.i, label %if.end121.i.for.end166.i_crit_edge, label %for.body139.lr.ph.i

if.end121.i.for.end166.i_crit_edge:               ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end166.i

for.body139.lr.ph.i:                              ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %preempt_type)
  %cmp153.i = icmp eq i32 %preempt_type, 1
  %preempt_and_abort_list.246.i = select i1 %cmp153.i, ptr %preempt_and_abort_list.i, ptr null
  br label %for.body139.i

for.body139.i:                                    ; preds = %for.inc160.i.for.body139.i_crit_edge, %for.body139.lr.ph.i
  %.pn374.in410.i = phi ptr [ %58, %for.body139.lr.ph.i ], [ %.pn374412.i, %for.inc160.i.for.body139.i_crit_edge ]
  %pr_reg.1411.i = getelementptr i8, ptr %.pn374.in410.i, i32 -612
  %59 = ptrtoint ptr %.pn374.in410.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %.pn374412.i = load ptr, ptr %.pn374.in410.i, align 4
  %cmp140.i = icmp eq ptr %call4.i.i, %pr_reg.1411.i
  %cond142.i = zext i1 %cmp140.i to i32
  br i1 %cmp140.i, label %for.body139.i.for.inc160.i_crit_edge, label %if.end145.i

for.body139.i.for.inc160.i_crit_edge:             ; preds = %for.body139.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc160.i

if.end145.i:                                      ; preds = %for.body139.i
  %pr_res_key146.i = getelementptr i8, ptr %.pn374.in410.i, i32 -20
  %60 = ptrtoint ptr %pr_res_key146.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %pr_res_key146.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %61, i64 %sa_res_key)
  %cmp147.not.i = icmp eq i64 %61, %sa_res_key
  br i1 %cmp147.not.i, label %if.end150.i, label %if.end145.i.for.inc160.i_crit_edge

if.end145.i.for.inc160.i_crit_edge:               ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc160.i

if.end150.i:                                      ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #17
  %pr_reg_nacl151.i = getelementptr i8, ptr %.pn374.in410.i, i32 -8
  %62 = ptrtoint ptr %pr_reg_nacl151.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pr_reg_nacl151.i, align 4
  %pr_res_mapped_lun152.i = getelementptr i8, ptr %.pn374.in410.i, i32 -52
  %64 = ptrtoint ptr %pr_res_mapped_lun152.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %pr_res_mapped_lun152.i, align 8
  call fastcc void @__core_scsi3_free_registration(ptr noundef %2, ptr noundef %pr_reg.1411.i, ptr noundef %preempt_and_abort_list.246.i, i32 noundef %cond142.i) #15
  %conv159.i = trunc i64 %65 to i32
  call void @target_ua_allocate_lun(ptr noundef %63, i32 noundef %conv159.i, i8 noundef zeroext 42, i8 noundef zeroext 5) #15
  br label %for.inc160.i

for.inc160.i:                                     ; preds = %if.end150.i, %if.end145.i.for.inc160.i_crit_edge, %for.body139.i.for.inc160.i_crit_edge
  %cmp136.not.i = icmp eq ptr %.pn374412.i, %registration_list124.i
  br i1 %cmp136.not.i, label %for.inc160.i.for.end166.i_crit_edge, label %for.inc160.i.for.body139.i_crit_edge

for.inc160.i.for.body139.i_crit_edge:             ; preds = %for.inc160.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body139.i

for.inc160.i.for.end166.i_crit_edge:              ; preds = %for.inc160.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end166.i

for.end166.i:                                     ; preds = %for.inc160.i.for.end166.i_crit_edge, %if.end121.i.for.end166.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %registration_lock122.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %preempt_type)
  %cmp168.i = icmp eq i32 %preempt_type, 1
  %preempt_and_abort_list.247.i = select i1 %cmp168.i, ptr %preempt_and_abort_list.i, ptr null
  call fastcc void @__core_scsi3_complete_pro_preempt(ptr noundef %2, ptr noundef nonnull %call4.i.i, ptr noundef %preempt_and_abort_list.247.i, i32 noundef %type, i32 noundef %preempt_type) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %type)
  %cmp174.not.i = icmp eq i32 %23, %type
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp177.not.i = icmp eq i32 %54, 0
  %or.cond.i = select i1 %cmp174.not.i, i1 %cmp177.not.i, i1 false
  br i1 %or.cond.i, label %for.end166.i.if.end215.i_crit_edge, label %if.then179.i

for.end166.i.if.end215.i_crit_edge:               ; preds = %for.end166.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end215.i

if.then179.i:                                     ; preds = %for.end166.i
  call void @_raw_spin_lock(ptr noundef %registration_lock122.i) #15
  %66 = ptrtoint ptr %registration_list124.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %registration_list124.i, align 4
  %cmp194.not414.i = icmp eq ptr %67, %registration_list124.i
  br i1 %cmp194.not414.i, label %if.then179.i.for.end213.i_crit_edge, label %if.then179.i.for.body197.i_crit_edge

if.then179.i.for.body197.i_crit_edge:             ; preds = %if.then179.i
  br label %for.body197.i

if.then179.i.for.end213.i_crit_edge:              ; preds = %if.then179.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end213.i

for.body197.i:                                    ; preds = %for.inc207.i.for.body197.i_crit_edge, %if.then179.i.for.body197.i_crit_edge
  %.pn375.in415.i = phi ptr [ %.pn375416.i, %for.inc207.i.for.body197.i_crit_edge ], [ %67, %if.then179.i.for.body197.i_crit_edge ]
  %68 = ptrtoint ptr %.pn375.in415.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %.pn375416.i = load ptr, ptr %.pn375.in415.i, align 4
  %pr_reg.2.i = getelementptr i8, ptr %.pn375.in415.i, i32 -612
  %cmp198.i = icmp eq ptr %call4.i.i, %pr_reg.2.i
  br i1 %cmp198.i, label %for.body197.i.for.inc207.i_crit_edge, label %if.end203.i

for.body197.i.for.inc207.i_crit_edge:             ; preds = %for.body197.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc207.i

if.end203.i:                                      ; preds = %for.body197.i
  call void @__sanitizer_cov_trace_pc() #17
  %pr_reg_nacl204.i = getelementptr i8, ptr %.pn375.in415.i, i32 -8
  %69 = ptrtoint ptr %pr_reg_nacl204.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pr_reg_nacl204.i, align 4
  %pr_res_mapped_lun205.i = getelementptr i8, ptr %.pn375.in415.i, i32 -52
  %71 = ptrtoint ptr %pr_res_mapped_lun205.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %pr_res_mapped_lun205.i, align 8
  %conv206.i = trunc i64 %72 to i32
  call void @target_ua_allocate_lun(ptr noundef %70, i32 noundef %conv206.i, i8 noundef zeroext 42, i8 noundef zeroext 4) #15
  br label %for.inc207.i

for.inc207.i:                                     ; preds = %if.end203.i, %for.body197.i.for.inc207.i_crit_edge
  %cmp194.not.i = icmp eq ptr %.pn375416.i, %registration_list124.i
  br i1 %cmp194.not.i, label %for.inc207.i.for.end213.i_crit_edge, label %for.inc207.i.for.body197.i_crit_edge

for.inc207.i.for.body197.i_crit_edge:             ; preds = %for.inc207.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body197.i

for.inc207.i.for.end213.i_crit_edge:              ; preds = %for.inc207.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end213.i

for.end213.i:                                     ; preds = %for.inc207.i.for.end213.i_crit_edge, %if.then179.i.for.end213.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %registration_lock122.i) #15
  br label %if.end215.i

if.end215.i:                                      ; preds = %for.end213.i, %for.end166.i.if.end215.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %dev_reservation_lock.i) #15
  br i1 %cmp168.i, label %if.then219.i, label %if.end215.i.if.end221.i_crit_edge

if.end215.i.if.end221.i_crit_edge:                ; preds = %if.end215.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end221.i

if.then219.i:                                     ; preds = %if.end215.i
  %call220.i = call i32 @core_tmr_lun_reset(ptr noundef %2, ptr noundef null, ptr noundef nonnull %preempt_and_abort_list.i, ptr noundef %cmd) #15
  %73 = ptrtoint ptr %preempt_and_abort_list.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %preempt_and_abort_list.i, align 4
  %cmp.not28.i.i = icmp eq ptr %74, %preempt_and_abort_list.i
  br i1 %cmp.not28.i.i, label %if.then219.i.if.end221.i_crit_edge, label %if.then219.i.for.body.i.i_crit_edge

if.then219.i.for.body.i.i_crit_edge:              ; preds = %if.then219.i
  br label %for.body.i.i

if.then219.i.if.end221.i_crit_edge:               ; preds = %if.then219.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end221.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then219.i.for.body.i.i_crit_edge
  %.pn.in29.i.i = phi ptr [ %.pn32.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %74, %if.then219.i.for.body.i.i_crit_edge ]
  %pr_reg.031.i.i = getelementptr i8, ptr %.pn.in29.i.i, i32 -620
  %75 = ptrtoint ptr %.pn.in29.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %.pn32.i.i = load ptr, ptr %.pn.in29.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in29.i.i) #15
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.body.i.i.list_del.exit.i.i_crit_edge

for.body.i.i.list_del.exit.i.i_crit_edge:         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in29.i.i, i32 0, i32 1
  %76 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %prev.i.i.i.i, align 4
  %78 = ptrtoint ptr %.pn.in29.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %.pn.in29.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %77, ptr %prev1.i.i.i.i.i, align 4
  %81 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %79, ptr %77, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %for.body.i.i.list_del.exit.i.i_crit_edge
  %82 = ptrtoint ptr %.pn.in29.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in29.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in29.i.i, i32 0, i32 1
  %83 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %cmp7.i.i = icmp eq ptr %pr_reg.031.i.i, %call4.i.i
  br i1 %cmp7.i.i, label %list_del.exit.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

list_del.exit.i.i.for.inc.i.i_crit_edge:          ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %list_del.exit.i.i
  %pr_res_holder.i.i = getelementptr i8, ptr %.pn.in29.i.i, i32 -80
  %84 = ptrtoint ptr %pr_res_holder.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %pr_res_holder.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool.not.i.i = icmp eq i32 %85, 0
  br i1 %tobool.not.i.i, label %if.end10.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i387.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.199) #18
  br label %for.inc.i.i

if.end10.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %pr_reg_deve.i.i = getelementptr i8, ptr %.pn.in29.i.i, i32 -12
  %86 = ptrtoint ptr %pr_reg_deve.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %pr_reg_deve.i.i, align 8
  %pr_reg_nacl.i.i = getelementptr i8, ptr %.pn.in29.i.i, i32 -16
  %87 = ptrtoint ptr %pr_reg_nacl.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %pr_reg_nacl.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @t10_pr_reg_cache to i32))
  %88 = load ptr, ptr @t10_pr_reg_cache, align 4
  call void @kmem_cache_free(ptr noundef %88, ptr noundef %pr_reg.031.i.i) #15
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end10.i.i, %do.end.i.i, %list_del.exit.i.i.for.inc.i.i_crit_edge
  %cmp.not.i388.i = icmp eq ptr %.pn32.i.i, %preempt_and_abort_list.i
  br i1 %cmp.not.i388.i, label %for.inc.i.i.if.end221.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.inc.i.i.if.end221.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end221.i

if.end221.i:                                      ; preds = %for.inc.i.i.if.end221.i_crit_edge, %if.then219.i.if.end221.i_crit_edge, %if.end215.i.if.end221.i_crit_edge
  %pr_aptpl_active222.i = getelementptr inbounds %struct.se_device, ptr %2, i32 0, i32 38, i32 1
  %89 = ptrtoint ptr %pr_aptpl_active222.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %pr_aptpl_active222.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool223.not.i = icmp eq i32 %90, 0
  br i1 %tobool223.not.i, label %if.end221.i.if.end227.i_crit_edge, label %if.then224.i

if.end221.i.if.end227.i_crit_edge:                ; preds = %if.end221.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end227.i

if.then224.i:                                     ; preds = %if.end221.i
  call void @__sanitizer_cov_trace_pc() #17
  %91 = ptrtoint ptr %se_dev.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %se_dev.i, align 4
  %call226.i = call fastcc i32 @core_scsi3_update_and_write_aptpl(ptr noundef %92, i1 noundef zeroext true) #15
  br label %if.end227.i

if.end227.i:                                      ; preds = %if.then224.i, %if.end221.i.if.end227.i_crit_edge
  %pr_res_holders.i389.i = getelementptr inbounds %struct.t10_pr_registration, ptr %call4.i.i, i32 0, i32 17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !542
  %call.i.i.i.i390.i = call zeroext i1 @__kasan_check_write(ptr noundef %pr_res_holders.i389.i, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %pr_res_holders.i389.i, i32 1, i32 3, i32 1) #15
  %93 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pr_res_holders.i389.i, ptr %pr_res_holders.i389.i, i32 1, ptr elementtype(i32) %pr_res_holders.i389.i) #15, !srcloc !543
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !544
  %94 = ptrtoint ptr %se_dev.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %se_dev.i, align 4
  %dev_reservation_lock.i391.i = getelementptr inbounds %struct.se_device, ptr %95, i32 0, i32 20
  call void @_raw_spin_lock(ptr noundef %dev_reservation_lock.i391.i) #15
  %pr_generation.i392.i = getelementptr inbounds %struct.se_device, ptr %95, i32 0, i32 38, i32 2
  %96 = ptrtoint ptr %pr_generation.i392.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %pr_generation.i392.i, align 8
  %inc.i393.i = add i32 %97, 1
  store i32 %inc.i393.i, ptr %pr_generation.i392.i, align 8
  call void @_raw_spin_unlock(ptr noundef %dev_reservation_lock.i391.i) #15
  br label %core_scsi3_pro_preempt.exit

core_scsi3_pro_preempt.exit:                      ; preds = %if.end227.i, %if.end111.i, %if.then86.i, %if.then28.i, %do.end15.i, %if.then9.i, %do.end.i, %sw.bb.core_scsi3_pro_preempt.exit_crit_edge
  %retval.0.i = phi i32 [ 16, %if.then9.i ], [ 9, %do.end15.i ], [ 16, %if.then86.i ], [ 0, %if.end111.i ], [ 0, %if.end227.i ], [ 9, %if.then28.i ], [ 16, %do.end.i ], [ 10, %sw.bb.core_scsi3_pro_preempt.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %preempt_and_abort_list.i) #15
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %preempt_type)
  %cmp = icmp eq i32 %preempt_type, 1
  %cond = select i1 %cmp, ptr @.str.191, ptr @.str.25
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.189, ptr noundef nonnull %cond, i32 noundef %type) #18
  br label %return

return:                                           ; preds = %do.end, %core_scsi3_pro_preempt.exit
  %retval.0 = phi i32 [ 8, %do.end ], [ %retval.0.i, %core_scsi3_pro_preempt.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @core_scsi3_emulate_pro_register_and_move(ptr noundef %cmd, i64 noundef %res_key, i64 noundef %sa_res_key, i32 noundef %aptpl, i32 noundef %unreg) unnamed_addr #3 align 64 {
entry:
  %buf.i = alloca [16 x i8], align 1
  %iport_ptr = alloca ptr, align 4
  %i_buf = alloca [21 x i8], align 1
  %tmp_tid_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %se_sess1 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 21
  %0 = ptrtoint ptr %se_sess1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_sess1, align 4
  %se_dev = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 19
  %2 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %se_dev, align 4
  %se_lun2 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 20
  %4 = ptrtoint ptr %se_lun2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %se_lun2, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iport_ptr) #15
  %6 = ptrtoint ptr %iport_ptr to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %iport_ptr, align 4
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %i_buf) #15
  %7 = call ptr @memset(ptr %i_buf, i32 0, i32 21)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp_tid_len) #15
  %8 = ptrtoint ptr %tmp_tid_len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %tmp_tid_len, align 4, !annotation !552
  %tobool.not = icmp eq ptr %1, null
  %tobool3.not = icmp eq ptr %5, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77) #18
  br label %cleanup416

if.end:                                           ; preds = %entry
  %se_tpg4 = getelementptr inbounds %struct.se_session, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %se_tpg4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %se_tpg4, align 4
  %se_tpg_tfo = getelementptr inbounds %struct.se_portal_group, ptr %10, i32 0, i32 10
  %11 = ptrtoint ptr %se_tpg_tfo to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %se_tpg_tfo, align 4
  %se_node_acl = getelementptr inbounds %struct.se_session, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %se_node_acl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %se_node_acl, align 8
  %se_tpg.i = getelementptr inbounds %struct.se_node_acl, ptr %14, i32 0, i32 10
  %15 = ptrtoint ptr %se_tpg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %se_tpg.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf.i) #15
  %17 = call ptr @memset(ptr %buf.i, i32 0, i32 16)
  %se_tpg_tfo.i = getelementptr inbounds %struct.se_portal_group, ptr %16, i32 0, i32 10
  %18 = ptrtoint ptr %se_tpg_tfo.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %se_tpg_tfo.i, align 4
  %sess_get_initiator_sid.i = getelementptr inbounds %struct.target_core_fabric_ops, ptr %19, i32 0, i32 19
  %20 = ptrtoint ptr %sess_get_initiator_sid.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sess_get_initiator_sid.i, align 4
  %cmp.not.i = icmp eq ptr %21, null
  br i1 %cmp.not.i, label %if.end.core_scsi3_locate_pr_reg.exit_crit_edge, label %if.then.i

if.end.core_scsi3_locate_pr_reg.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %core_scsi3_locate_pr_reg.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = call i32 %21(ptr noundef nonnull %1, ptr noundef nonnull %buf.i, i32 noundef 16) #15
  br label %core_scsi3_locate_pr_reg.exit

core_scsi3_locate_pr_reg.exit:                    ; preds = %if.then.i, %if.end.core_scsi3_locate_pr_reg.exit_crit_edge
  %isid_ptr.0.i = phi ptr [ %buf.i, %if.then.i ], [ null, %if.end.core_scsi3_locate_pr_reg.exit_crit_edge ]
  %call4.i = call fastcc ptr @__core_scsi3_locate_pr_reg(ptr noundef %3, ptr noundef %14, ptr noundef %isid_ptr.0.i) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf.i) #15
  %tobool7.not = icmp eq ptr %call4.i, null
  br i1 %tobool7.not, label %do.end11, label %if.end14

do.end11:                                         ; preds = %core_scsi3_locate_pr_reg.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.203) #18
  br label %cleanup416

if.end14:                                         ; preds = %core_scsi3_locate_pr_reg.exit
  %pr_res_key = getelementptr inbounds %struct.t10_pr_registration, ptr %call4.i, i32 0, i32 16
  %22 = ptrtoint ptr %pr_res_key to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %pr_res_key, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %res_key)
  %cmp.not = icmp eq i64 %23, %res_key
  br i1 %cmp.not, label %if.end22, label %do.end18

do.end18:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.206, i64 noundef %res_key, i64 noundef %23) #18
  br label %out_put_pr_reg

if.end22:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sa_res_key)
  %tobool23.not = icmp eq i64 %sa_res_key, 0
  br i1 %tobool23.not, label %do.end27, label %if.end30

do.end27:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.209) #18
  br label %out_put_pr_reg

if.end30:                                         ; preds = %if.end22
  %call31 = call ptr @transport_kmap_data_sg(ptr noundef %cmd) #15
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %if.end30.out_put_pr_reg_crit_edge, label %if.end34

if.end30.out_put_pr_reg_crit_edge:                ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_put_pr_reg

if.end34:                                         ; preds = %if.end30
  %arrayidx = getelementptr i8, ptr %call31, i32 18
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %arrayidx, align 1
  %arrayidx36 = getelementptr i8, ptr %call31, i32 20
  %26 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %arrayidx36, align 1
  call void @transport_kunmap_data_sg(ptr noundef %cmd) #15
  %add = add i32 %27, 24
  %data_length = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 12
  %28 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %data_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %29)
  %cmp38.not = icmp eq i32 %add, %29
  br i1 %cmp38.not, label %if.end46, label %do.end42

do.end42:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #17
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.212, i32 noundef %27, i32 noundef %29) #18
  br label %out_put_pr_reg

if.end46:                                         ; preds = %if.end34
  %se_port_lock = getelementptr inbounds %struct.se_device, ptr %3, i32 0, i32 22
  call void @_raw_spin_lock(ptr noundef %se_port_lock) #15
  %dev_sep_list = getelementptr inbounds %struct.se_device, ptr %3, i32 0, i32 29
  %30 = ptrtoint ptr %dev_sep_list to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn724 = load ptr, ptr %dev_sep_list, align 8
  %cmp49.not725 = icmp eq ptr %.pn724, %dev_sep_list
  br i1 %cmp49.not725, label %if.end46.for.end_crit_edge, label %if.end46.for.body_crit_edge

if.end46.for.body_crit_edge:                      ; preds = %if.end46
  br label %for.body

if.end46.for.end_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end46.for.body_crit_edge
  %.pn727 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn724, %if.end46.for.body_crit_edge ]
  %dest_se_tpg.0726 = phi ptr [ %dest_se_tpg.1, %for.inc.for.body_crit_edge ], [ null, %if.end46.for.body_crit_edge ]
  %lun_rtpi = getelementptr i8, ptr %.pn727, i32 -704
  %31 = ptrtoint ptr %lun_rtpi to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %lun_rtpi, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %32, i16 %25)
  %cmp51.not = icmp eq i16 %32, %25
  br i1 %cmp51.not, label %if.end54, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end54:                                         ; preds = %for.body
  %lun_tpg = getelementptr i8, ptr %.pn727, i32 -480
  %33 = ptrtoint ptr %lun_tpg to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %lun_tpg, align 8
  %se_tpg_tfo55 = getelementptr inbounds %struct.se_portal_group, ptr %34, i32 0, i32 10
  %35 = ptrtoint ptr %se_tpg_tfo55 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %se_tpg_tfo55, align 4
  %tobool56.not = icmp eq ptr %36, null
  br i1 %tobool56.not, label %if.end54.for.inc_crit_edge, label %if.end58

if.end54.for.inc_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end58:                                         ; preds = %if.end54
  %tpg_pr_ref_count = getelementptr inbounds %struct.se_portal_group, ptr %34, i32 0, i32 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !553
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %tpg_pr_ref_count, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %tpg_pr_ref_count, i32 1, i32 3, i32 1) #15
  %37 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tpg_pr_ref_count, ptr %tpg_pr_ref_count, i32 1, ptr elementtype(i32) %tpg_pr_ref_count) #15, !srcloc !554
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !555
  call void @_raw_spin_unlock(ptr noundef %se_port_lock) #15
  %tpg_group.i = getelementptr inbounds %struct.se_portal_group, ptr %34, i32 0, i32 12
  %call.i608 = call i32 @target_depend_item(ptr noundef %tpg_group.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i608)
  %tobool61.not = icmp eq i32 %call.i608, 0
  br i1 %tobool61.not, label %if.end69, label %do.end65

do.end65:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #17
  %call67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.215) #18
  call fastcc void @atomic_dec_mb(ptr noundef %tpg_pr_ref_count)
  br label %out_put_pr_reg

if.end69:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #17
  call void @_raw_spin_lock(ptr noundef %se_port_lock) #15
  br label %for.end

for.inc:                                          ; preds = %if.end54.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %dest_se_tpg.1 = phi ptr [ %dest_se_tpg.0726, %for.body.for.inc_crit_edge ], [ %34, %if.end54.for.inc_crit_edge ]
  %38 = ptrtoint ptr %.pn727 to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pn = load ptr, ptr %.pn727, align 8
  %cmp49.not = icmp eq ptr %.pn, %dev_sep_list
  br i1 %cmp49.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end69, %if.end46.for.end_crit_edge
  %dest_tf_ops.2 = phi ptr [ %36, %if.end69 ], [ null, %if.end46.for.end_crit_edge ], [ null, %for.inc.for.end_crit_edge ]
  %dest_se_tpg.2 = phi ptr [ %34, %if.end69 ], [ null, %if.end46.for.end_crit_edge ], [ %dest_se_tpg.1, %for.inc.for.end_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %se_port_lock) #15
  %tobool77.not = icmp eq ptr %dest_se_tpg.2, null
  %tobool79.not = icmp eq ptr %dest_tf_ops.2, null
  %or.cond591 = select i1 %tobool77.not, i1 true, i1 %tobool79.not
  br i1 %or.cond591, label %do.end83, label %if.end87

do.end83:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  %conv85 = zext i16 %25 to i32
  %call86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.218, i32 noundef %conv85) #18
  br label %out_put_pr_reg

if.end87:                                         ; preds = %for.end
  %call88 = call ptr @transport_kmap_data_sg(ptr noundef %cmd) #15
  %tobool89.not = icmp eq ptr %call88, null
  br i1 %tobool89.not, label %if.end87.out_put_pr_reg_crit_edge, label %if.end91

if.end87.out_put_pr_reg_crit_edge:                ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_put_pr_reg

if.end91:                                         ; preds = %if.end87
  %arrayidx92 = getelementptr i8, ptr %call88, i32 24
  %39 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx92, align 1
  %41 = and i8 %40, 15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @core_scsi3_emulate_pro_register_and_move.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@core_scsi3_emulate_pro_register_and_move, %if.then102)) #15
          to label %do.end106 [label %if.then102], !srcloc !541

if.then102:                                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #17
  %conv103 = zext i8 %41 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @core_scsi3_emulate_pro_register_and_move.__UNIQUE_ID_ddebug250, ptr noundef nonnull @.str.220, i32 noundef %conv103) #15
  br label %do.end106

do.end106:                                        ; preds = %if.then102, %if.end91
  %conv107 = zext i8 %41 to i32
  %42 = ptrtoint ptr %dest_se_tpg.2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dest_se_tpg.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %conv107)
  %cmp108.not = icmp eq i32 %43, %conv107
  br i1 %cmp108.not, label %if.end118, label %do.end113

do.end113:                                        ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #17
  %fabric_name = getelementptr inbounds %struct.target_core_fabric_ops, ptr %dest_tf_ops.2, i32 0, i32 2
  %44 = ptrtoint ptr %fabric_name to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fabric_name, align 4
  %call117 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.222, i32 noundef %conv107, i32 noundef %43, ptr noundef %45) #18
  br label %if.end412.thread

if.end118:                                        ; preds = %do.end106
  %call120 = call ptr @target_parse_pr_out_transport_id(ptr noundef nonnull %dest_se_tpg.2, ptr noundef %arrayidx92, ptr noundef nonnull %tmp_tid_len, ptr noundef nonnull %iport_ptr) #15
  %tobool121.not = icmp eq ptr %call120, null
  br i1 %tobool121.not, label %do.end125, label %if.end128

do.end125:                                        ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #17
  %call127 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.225) #18
  br label %if.end412.thread

if.end128:                                        ; preds = %if.end118
  call void @transport_kunmap_data_sg(ptr noundef %cmd) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @core_scsi3_emulate_pro_register_and_move.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@core_scsi3_emulate_pro_register_and_move, %if.then141)) #15
          to label %do.end150 [label %if.then141], !srcloc !541

if.then141:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #17
  %fabric_name142 = getelementptr inbounds %struct.target_core_fabric_ops, ptr %dest_tf_ops.2, i32 0, i32 2
  %46 = ptrtoint ptr %fabric_name142 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fabric_name142, align 4
  %48 = ptrtoint ptr %iport_ptr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %iport_ptr, align 4
  %cmp143.not = icmp eq ptr %49, null
  %cond = select i1 %cmp143.not, ptr @.str.229, ptr @.str.228
  %spec.select = select i1 %cmp143.not, ptr @.str.25, ptr %49
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @core_scsi3_emulate_pro_register_and_move.__UNIQUE_ID_ddebug251, ptr noundef nonnull @.str.227, ptr noundef %47, ptr noundef nonnull %cond, ptr noundef nonnull %call120, ptr noundef nonnull %spec.select) #15
  br label %do.end150

do.end150:                                        ; preds = %if.then141, %if.end128
  %pr_reg_nacl151 = getelementptr inbounds %struct.t10_pr_registration, ptr %call4.i, i32 0, i32 18
  %50 = ptrtoint ptr %pr_reg_nacl151 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pr_reg_nacl151, align 4
  %call152 = call i32 @strcmp(ptr noundef nonnull %call120, ptr noundef %51) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call152)
  %tobool153.not = icmp eq i32 %call152, 0
  br i1 %tobool153.not, label %if.end159, label %do.end150.after_iport_check_crit_edge

do.end150.after_iport_check_crit_edge:            ; preds = %do.end150
  call void @__sanitizer_cov_trace_pc() #17
  br label %after_iport_check

if.end159:                                        ; preds = %do.end150
  %52 = ptrtoint ptr %iport_ptr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %iport_ptr, align 4
  %tobool160.not = icmp eq ptr %53, null
  br i1 %tobool160.not, label %if.end159.do.end166_crit_edge, label %lor.lhs.false161

if.end159.do.end166_crit_edge:                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end166

lor.lhs.false161:                                 ; preds = %if.end159
  %isid_present_at_reg = getelementptr inbounds %struct.t10_pr_registration, ptr %call4.i, i32 0, i32 10
  %54 = ptrtoint ptr %isid_present_at_reg to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %isid_present_at_reg, align 8, !range !540
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool162.not = icmp eq i8 %55, 0
  br i1 %tobool162.not, label %lor.lhs.false161.do.end166_crit_edge, label %if.end171

lor.lhs.false161.do.end166_crit_edge:             ; preds = %lor.lhs.false161
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end166

do.end166:                                        ; preds = %lor.lhs.false161.do.end166_crit_edge, %if.end159.do.end166_crit_edge
  %call170 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.231, ptr noundef nonnull %call120, ptr noundef %51) #18
  br label %if.end415

if.end171:                                        ; preds = %lor.lhs.false161
  %call173 = call i32 @strcmp(ptr noundef nonnull %53, ptr noundef nonnull %call4.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call173)
  %tobool174.not = icmp eq i32 %call173, 0
  br i1 %tobool174.not, label %do.end178, label %if.end171.after_iport_check_crit_edge

if.end171.after_iport_check_crit_edge:            ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #17
  br label %after_iport_check

do.end178:                                        ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #17
  %call184 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.234, ptr noundef nonnull %call120, ptr noundef nonnull %53, ptr noundef %51, ptr noundef nonnull %call4.i) #18
  br label %if.end415

after_iport_check:                                ; preds = %if.end171.after_iport_check_crit_edge, %do.end150.after_iport_check_crit_edge
  %acl_node_mutex = getelementptr inbounds %struct.se_portal_group, ptr %dest_se_tpg.2, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %acl_node_mutex, i32 noundef 0) #15
  %call186 = call ptr @__core_tpg_get_initiator_node_acl(ptr noundef nonnull %dest_se_tpg.2, ptr noundef nonnull %call120) #15
  %tobool187.not = icmp eq ptr %call186, null
  br i1 %tobool187.not, label %do.end195.critedge, label %if.then188

if.then188:                                       ; preds = %after_iport_check
  %acl_pr_ref_count = getelementptr inbounds %struct.se_node_acl, ptr %call186, i32 0, i32 7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !553
  %call.i.i.i609 = call zeroext i1 @__kasan_check_write(ptr noundef %acl_pr_ref_count, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %acl_pr_ref_count, i32 1, i32 3, i32 1) #15
  %56 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %acl_pr_ref_count, ptr %acl_pr_ref_count, i32 1, ptr elementtype(i32) %acl_pr_ref_count) #15, !srcloc !554
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !555
  call void @mutex_unlock(ptr noundef %acl_node_mutex) #15
  %dynamic_node_acl.i = getelementptr inbounds %struct.se_node_acl, ptr %call186, i32 0, i32 1
  %57 = ptrtoint ptr %dynamic_node_acl.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %dynamic_node_acl.i, align 4, !range !540
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i = icmp eq i8 %58, 0
  br i1 %tobool.not.i, label %core_scsi3_nodeacl_depend_item.exit, label %if.then188.do.body210_crit_edge

if.then188.do.body210_crit_edge:                  ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body210

core_scsi3_nodeacl_depend_item.exit:              ; preds = %if.then188
  %acl_group.i = getelementptr inbounds %struct.se_node_acl, ptr %call186, i32 0, i32 13
  %call.i610 = call i32 @target_depend_item(ptr noundef %acl_group.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i610)
  %tobool201.not = icmp eq i32 %call.i610, 0
  br i1 %tobool201.not, label %core_scsi3_nodeacl_depend_item.exit.do.body210_crit_edge, label %do.end205

core_scsi3_nodeacl_depend_item.exit.do.body210_crit_edge: ; preds = %core_scsi3_nodeacl_depend_item.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body210

do.end195.critedge:                               ; preds = %after_iport_check
  call void @__sanitizer_cov_trace_pc() #17
  call void @mutex_unlock(ptr noundef %acl_node_mutex) #15
  %fabric_name197 = getelementptr inbounds %struct.target_core_fabric_ops, ptr %dest_tf_ops.2, i32 0, i32 2
  %59 = ptrtoint ptr %fabric_name197 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %fabric_name197, align 4
  %call198 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.237, ptr noundef %60, ptr noundef nonnull %call120) #18
  br label %if.end415

do.end205:                                        ; preds = %core_scsi3_nodeacl_depend_item.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call207 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.240) #18
  call fastcc void @atomic_dec_mb(ptr noundef %acl_pr_ref_count)
  br label %if.end415

do.body210:                                       ; preds = %core_scsi3_nodeacl_depend_item.exit.do.body210_crit_edge, %if.then188.do.body210_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @core_scsi3_emulate_pro_register_and_move.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@core_scsi3_emulate_pro_register_and_move, %if.then222)) #15
          to label %do.end228 [label %if.then222], !srcloc !541

if.then222:                                       ; preds = %do.body210
  call void @__sanitizer_cov_trace_pc() #17
  %fabric_name223 = getelementptr inbounds %struct.target_core_fabric_ops, ptr %dest_tf_ops.2, i32 0, i32 2
  %61 = ptrtoint ptr %fabric_name223 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %fabric_name223, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @core_scsi3_emulate_pro_register_and_move.__UNIQUE_ID_ddebug252, ptr noundef nonnull @.str.242, ptr noundef %62, ptr noundef nonnull %call186) #15
  br label %do.end228

do.end228:                                        ; preds = %if.then222, %do.body210
  %call229 = call ptr @core_get_se_deve_from_rtpi(ptr noundef nonnull %call186, i16 noundef zeroext %25) #15
  %tobool230.not = icmp eq ptr %call229, null
  br i1 %tobool230.not, label %do.end234, label %if.end239

do.end234:                                        ; preds = %do.end228
  call void @__sanitizer_cov_trace_pc() #17
  %fabric_name236 = getelementptr inbounds %struct.target_core_fabric_ops, ptr %dest_tf_ops.2, i32 0, i32 2
  %63 = ptrtoint ptr %fabric_name236 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %fabric_name236, align 4
  %conv237 = zext i16 %25 to i32
  %call238 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.244, ptr noundef %64, i32 noundef %conv237) #18
  br label %if.then414

if.end239:                                        ; preds = %do.end228
  %se_lun_acl.i = getelementptr inbounds %struct.se_dev_entry, ptr %call229, i32 0, i32 10
  %65 = ptrtoint ptr %se_lun_acl.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile ptr, ptr %se_lun_acl.i, align 8
  %pr_kref.i = getelementptr inbounds %struct.se_dev_entry, ptr %call229, i32 0, i32 8
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %pr_kref.i, i32 noundef 4) #15
  %67 = ptrtoint ptr %pr_kref.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %pr_kref.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp.not.i612 = icmp eq i32 %68, 0
  br i1 %cmp.not.i612, label %lor.lhs.false.i, label %if.end239.do.end8.i_crit_edge

if.end239.do.end8.i_crit_edge:                    ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end8.i

lor.lhs.false.i:                                  ; preds = %if.end239
  %call2.i = call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i613 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i613, label %land.lhs.true.i, label %lor.lhs.false.i.do.end8.i_crit_edge

lor.lhs.false.i.do.end8.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end8.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call3.i = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.do.end8.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.do.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end8.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b16.i = load i1, ptr @core_scsi3_lunacl_depend_item.__warned, align 1
  br i1 %.b16.i, label %land.lhs.true5.i.do.end8.i_crit_edge, label %if.then.i614

land.lhs.true5.i.do.end8.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end8.i

if.then.i614:                                     ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @core_scsi3_lunacl_depend_item.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1446, ptr noundef nonnull @.str.64) #15
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then.i614, %land.lhs.true5.i.do.end8.i_crit_edge, %land.lhs.true.i.do.end8.i_crit_edge, %lor.lhs.false.i.do.end8.i_crit_edge, %if.end239.do.end8.i_crit_edge
  %tobool10.not.i = icmp eq ptr %66, null
  br i1 %tobool10.not.i, label %do.end8.i.do.body250_crit_edge, label %core_scsi3_lunacl_depend_item.exit

do.end8.i.do.body250_crit_edge:                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body250

core_scsi3_lunacl_depend_item.exit:               ; preds = %do.end8.i
  %se_lun_group.i = getelementptr inbounds %struct.se_lun_acl, ptr %66, i32 0, i32 3
  %call13.i = call i32 @target_depend_item(ptr noundef %se_lun_group.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool241.not = icmp eq i32 %call13.i, 0
  br i1 %tobool241.not, label %core_scsi3_lunacl_depend_item.exit.do.body250_crit_edge, label %do.end245

core_scsi3_lunacl_depend_item.exit.do.body250_crit_edge: ; preds = %core_scsi3_lunacl_depend_item.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body250

do.end245:                                        ; preds = %core_scsi3_lunacl_depend_item.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call247 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94) #18
  call fastcc void @kref_put(ptr noundef %pr_kref.i)
  br label %if.then414

do.body250:                                       ; preds = %core_scsi3_lunacl_depend_item.exit.do.body250_crit_edge, %do.end8.i.do.body250_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @core_scsi3_emulate_pro_register_and_move.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@core_scsi3_emulate_pro_register_and_move, %if.then262)) #15
          to label %do.end268 [label %if.then262], !srcloc !541

if.then262:                                       ; preds = %do.body250
  call void @__sanitizer_cov_trace_pc() #17
  %fabric_name263 = getelementptr inbounds %struct.target_core_fabric_ops, ptr %dest_tf_ops.2, i32 0, i32 2
  %69 = ptrtoint ptr %fabric_name263 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %fabric_name263, align 4
  %71 = ptrtoint ptr %call229 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %call229, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @core_scsi3_emulate_pro_register_and_move.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.248, ptr noundef %70, ptr noundef nonnull %call186, i64 noundef %72) #15
  br label %do.end268

do.end268:                                        ; preds = %if.then262, %do.body250
  %dev_reservation_lock = getelementptr inbounds %struct.se_device, ptr %3, i32 0, i32 20
  call void @_raw_spin_lock(ptr noundef %dev_reservation_lock) #15
  %dev_pr_res_holder = getelementptr inbounds %struct.se_device, ptr %3, i32 0, i32 28
  %73 = ptrtoint ptr %dev_pr_res_holder to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev_pr_res_holder, align 4
  %tobool269.not = icmp eq ptr %74, null
  br i1 %tobool269.not, label %do.end273, label %is_reservation_holder.exit

do.end273:                                        ; preds = %do.end268
  call void @__sanitizer_cov_trace_pc() #17
  %call275 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.250) #18
  br label %if.end412.thread707.sink.split

is_reservation_holder.exit:                       ; preds = %do.end268
  %pr_res_type1.i = getelementptr inbounds %struct.t10_pr_registration, ptr %74, i32 0, i32 8
  %75 = ptrtoint ptr %pr_res_type1.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %pr_res_type1.i, align 8
  %cmp.i = icmp ne ptr %74, %call4.i
  %77 = freeze i1 %cmp.i
  %.not = xor i1 %77, true
  %.off719 = add i32 %76, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off719)
  %switch720 = icmp ult i32 %.off719, 2
  %or.cond721 = select i1 %.not, i1 true, i1 %switch720
  br i1 %or.cond721, label %if.end287, label %do.end283

do.end283:                                        ; preds = %is_reservation_holder.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call285 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.253) #18
  br label %if.end412.thread707.sink.split

if.end287:                                        ; preds = %is_reservation_holder.exit
  %78 = ptrtoint ptr %pr_res_type1.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %pr_res_type1.i, align 8
  %.off = add i32 %79, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %do.end297, label %if.end303

do.end297:                                        ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %79)
  %switch.selectcmp = icmp eq i32 %79, 7
  %switch.select = select i1 %switch.selectcmp, ptr @.str.30, ptr @.str.32
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %79)
  %switch.selectcmp717 = icmp eq i32 %79, 8
  %switch.select718 = select i1 %switch.selectcmp717, ptr @.str.31, ptr %switch.select
  %call301 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.256, ptr noundef nonnull %switch.select718) #18
  br label %if.end412.thread707.sink.split

if.end303:                                        ; preds = %if.end287
  %pr_reg_nacl304 = getelementptr inbounds %struct.t10_pr_registration, ptr %74, i32 0, i32 18
  %80 = ptrtoint ptr %pr_reg_nacl304 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pr_reg_nacl304, align 4
  %82 = ptrtoint ptr %iport_ptr to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %iport_ptr, align 4
  %call307 = call fastcc ptr @__core_scsi3_locate_pr_reg(ptr noundef %3, ptr noundef nonnull %call186, ptr noundef %83)
  %tobool308.not = icmp eq ptr %call307, null
  br i1 %tobool308.not, label %if.then309, label %if.end303.if.end341_crit_edge

if.end303.if.end341_crit_edge:                    ; preds = %if.end303
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end341

if.then309:                                       ; preds = %if.end303
  %se_lun314 = getelementptr inbounds %struct.se_dev_entry, ptr %call229, i32 0, i32 12
  %84 = ptrtoint ptr %se_lun314 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile ptr, ptr %se_lun314, align 8
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %pr_kref.i, i32 noundef 4) #15
  %86 = ptrtoint ptr %pr_kref.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %pr_kref.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp318.not = icmp eq i32 %87, 0
  br i1 %cmp318.not, label %lor.lhs.false320, label %if.then309.do.end330_crit_edge

if.then309.do.end330_crit_edge:                   ; preds = %if.then309
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end330

lor.lhs.false320:                                 ; preds = %if.then309
  %call321 = call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call321)
  %tobool322.not = icmp eq i32 %call321, 0
  br i1 %tobool322.not, label %land.lhs.true, label %lor.lhs.false320.do.end330_crit_edge

lor.lhs.false320.do.end330_crit_edge:             ; preds = %lor.lhs.false320
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end330

land.lhs.true:                                    ; preds = %lor.lhs.false320
  %call323 = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call323)
  %tobool324.not = icmp eq i32 %call323, 0
  br i1 %tobool324.not, label %land.lhs.true.do.end330_crit_edge, label %land.lhs.true325

land.lhs.true.do.end330_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end330

land.lhs.true325:                                 ; preds = %land.lhs.true
  %.b590 = load i1, ptr @core_scsi3_emulate_pro_register_and_move.__warned, align 1
  br i1 %.b590, label %land.lhs.true325.do.end330_crit_edge, label %if.then327

land.lhs.true325.do.end330_crit_edge:             ; preds = %land.lhs.true325
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end330

if.then327:                                       ; preds = %land.lhs.true325
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @core_scsi3_emulate_pro_register_and_move.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 3450, ptr noundef nonnull @.str.64) #15
  br label %do.end330

do.end330:                                        ; preds = %if.then327, %land.lhs.true325.do.end330_crit_edge, %land.lhs.true.do.end330_crit_edge, %lor.lhs.false320.do.end330_crit_edge, %if.then309.do.end330_crit_edge
  call void @_raw_spin_unlock(ptr noundef %dev_reservation_lock) #15
  %88 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %se_dev, align 4
  %90 = ptrtoint ptr %call229 to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %call229, align 8
  %92 = ptrtoint ptr %iport_ptr to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %iport_ptr, align 4
  %call.i662 = call fastcc ptr @__core_scsi3_do_alloc_registration(ptr noundef nonnull %call186, ptr noundef %85, ptr noundef nonnull %call229, i64 noundef %91, ptr noundef %93, i64 noundef %sa_res_key, i32 noundef 0, i32 noundef %aptpl) #15
  %tobool.not.i663 = icmp eq ptr %call.i662, null
  br i1 %tobool.not.i663, label %do.end330.if.end412.thread707_crit_edge, label %cleanup.thread

do.end330.if.end412.thread707_crit_edge:          ; preds = %do.end330
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end412.thread707

cleanup.thread:                                   ; preds = %do.end330
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @__core_scsi3_add_registration(ptr noundef %89, ptr noundef nonnull %call186, ptr noundef nonnull %call.i662, i32 noundef 2, i32 noundef 1) #15
  call void @_raw_spin_lock(ptr noundef %dev_reservation_lock) #15
  %94 = ptrtoint ptr %iport_ptr to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %iport_ptr, align 4
  %call340 = call fastcc ptr @__core_scsi3_locate_pr_reg(ptr noundef %3, ptr noundef nonnull %call186, ptr noundef %95)
  br label %if.end341

if.end341:                                        ; preds = %cleanup.thread, %if.end303.if.end341_crit_edge
  %dest_pr_reg.1 = phi ptr [ %call307, %if.end303.if.end341_crit_edge ], [ %call340, %cleanup.thread ]
  %96 = ptrtoint ptr %dev_pr_res_holder to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev_pr_res_holder, align 4
  call fastcc void @__core_scsi3_complete_pro_release(ptr noundef %3, ptr noundef %81, ptr noundef %97, i32 noundef 0, i32 noundef 0)
  %98 = ptrtoint ptr %dev_pr_res_holder to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %dest_pr_reg.1, ptr %dev_pr_res_holder, align 4
  %pr_res_holder344 = getelementptr inbounds %struct.t10_pr_registration, ptr %dest_pr_reg.1, i32 0, i32 7
  %99 = ptrtoint ptr %pr_res_holder344 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 1, ptr %pr_res_holder344, align 4
  %pr_res_type345 = getelementptr inbounds %struct.t10_pr_registration, ptr %dest_pr_reg.1, i32 0, i32 8
  %100 = ptrtoint ptr %pr_res_type345 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %79, ptr %pr_res_type345, align 8
  %pr_res_scope = getelementptr inbounds %struct.t10_pr_registration, ptr %call4.i, i32 0, i32 9
  %101 = ptrtoint ptr %pr_res_scope to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %79, ptr %pr_res_scope, align 4
  %isid_present_at_reg.i = getelementptr inbounds %struct.t10_pr_registration, ptr %call4.i, i32 0, i32 10
  %102 = ptrtoint ptr %isid_present_at_reg.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %isid_present_at_reg.i, align 8, !range !540
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool.not.i624 = icmp eq i8 %103, 0
  br i1 %tobool.not.i624, label %if.then.i625, label %if.end.i627

if.then.i625:                                     ; preds = %if.end341
  call void @__sanitizer_cov_trace_pc() #17
  %104 = ptrtoint ptr %i_buf to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 0, ptr %i_buf, align 1
  br label %core_pr_dump_initiator_port.exit

if.end.i627:                                      ; preds = %if.end341
  call void @__sanitizer_cov_trace_pc() #17
  %call.i626 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %i_buf, i32 noundef 21, ptr noundef nonnull @.str, ptr noundef nonnull %call4.i) #15
  br label %core_pr_dump_initiator_port.exit

core_pr_dump_initiator_port.exit:                 ; preds = %if.end.i627, %if.then.i625
  br i1 %tobool308.not, label %core_pr_dump_initiator_port.exit.if.end349_crit_edge, label %if.then348

core_pr_dump_initiator_port.exit.if.end349_crit_edge: ; preds = %core_pr_dump_initiator_port.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end349

if.then348:                                       ; preds = %core_pr_dump_initiator_port.exit
  call void @__sanitizer_cov_trace_pc() #17
  %pr_generation = getelementptr inbounds %struct.se_device, ptr %3, i32 0, i32 38, i32 2
  %105 = ptrtoint ptr %pr_generation to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %pr_generation, align 4
  %inc = add i32 %106, 1
  store i32 %inc, ptr %pr_generation, align 4
  %pr_res_generation = getelementptr inbounds %struct.t10_pr_registration, ptr %dest_pr_reg.1, i32 0, i32 14
  %107 = ptrtoint ptr %pr_res_generation to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %pr_res_generation, align 4
  br label %if.end349

if.end349:                                        ; preds = %if.then348, %core_pr_dump_initiator_port.exit.if.end349_crit_edge
  call void @_raw_spin_unlock(ptr noundef %dev_reservation_lock) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @core_scsi3_emulate_pro_register_and_move.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@core_scsi3_emulate_pro_register_and_move, %if.then363)) #15
          to label %do.body371 [label %if.then363], !srcloc !541

if.then363:                                       ; preds = %if.end349
  %fabric_name364 = getelementptr inbounds %struct.target_core_fabric_ops, ptr %dest_tf_ops.2, i32 0, i32 2
  %108 = ptrtoint ptr %fabric_name364 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %fabric_name364, align 4
  %switch.tableidx = add i32 %79, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %110 = icmp ult i32 %switch.tableidx, 6
  br i1 %110, label %switch.lookup, label %if.then363.core_scsi3_pr_dump_type.exit635_crit_edge

if.then363.core_scsi3_pr_dump_type.exit635_crit_edge: ; preds = %if.then363
  call void @__sanitizer_cov_trace_pc() #17
  br label %core_scsi3_pr_dump_type.exit635

switch.lookup:                                    ; preds = %if.then363
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep = getelementptr inbounds [6 x ptr], ptr @switch.table.core_scsi3_emulate_pro_register_and_move, i32 0, i32 %switch.tableidx
  %111 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %111)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %core_scsi3_pr_dump_type.exit635

core_scsi3_pr_dump_type.exit635:                  ; preds = %switch.lookup, %if.then363.core_scsi3_pr_dump_type.exit635_crit_edge
  %retval.0.i634 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.32, %if.then363.core_scsi3_pr_dump_type.exit635_crit_edge ]
  %conv366 = zext i16 %25 to i32
  %pr_res_generation367 = getelementptr inbounds %struct.t10_pr_registration, ptr %dest_pr_reg.1, i32 0, i32 14
  %112 = ptrtoint ptr %pr_res_generation367 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %pr_res_generation367, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @core_scsi3_emulate_pro_register_and_move.__UNIQUE_ID_ddebug256, ptr noundef nonnull @.str.258, ptr noundef %109, ptr noundef nonnull %retval.0.i634, i32 noundef %conv366, i32 noundef %113) #15
  br label %do.body371

do.body371:                                       ; preds = %core_scsi3_pr_dump_type.exit635, %if.end349
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @core_scsi3_emulate_pro_register_and_move.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@core_scsi3_emulate_pro_register_and_move, %if.then383)) #15
          to label %do.end399 [label %if.then383], !srcloc !541

if.then383:                                       ; preds = %do.body371
  call void @__sanitizer_cov_trace_pc() #17
  %fabric_name384 = getelementptr inbounds %struct.target_core_fabric_ops, ptr %12, i32 0, i32 2
  %114 = ptrtoint ptr %fabric_name384 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %fabric_name384, align 4
  %fabric_name388 = getelementptr inbounds %struct.target_core_fabric_ops, ptr %dest_tf_ops.2, i32 0, i32 2
  %116 = ptrtoint ptr %fabric_name388 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %fabric_name388, align 4
  %118 = ptrtoint ptr %iport_ptr to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %iport_ptr, align 4
  %cmp391.not = icmp eq ptr %119, null
  %spec.select592 = select i1 %cmp391.not, ptr @.str.25, ptr %119
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @core_scsi3_emulate_pro_register_and_move.__UNIQUE_ID_ddebug257, ptr noundef nonnull @.str.259, ptr noundef %115, ptr noundef %51, ptr noundef nonnull %i_buf, ptr noundef %117, ptr noundef nonnull %call186, ptr noundef nonnull %spec.select592) #15
  br label %do.end399

do.end399:                                        ; preds = %if.then383, %do.body371
  call fastcc void @core_scsi3_lunacl_undepend_item(ptr noundef nonnull %call229)
  %120 = ptrtoint ptr %dynamic_node_acl.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %dynamic_node_acl.i, align 4, !range !540
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool.not.i637 = icmp eq i8 %121, 0
  br i1 %tobool.not.i637, label %if.then.i639, label %do.end399.core_scsi3_nodeacl_undepend_item.exit_crit_edge

do.end399.core_scsi3_nodeacl_undepend_item.exit_crit_edge: ; preds = %do.end399
  call void @__sanitizer_cov_trace_pc() #17
  br label %core_scsi3_nodeacl_undepend_item.exit

if.then.i639:                                     ; preds = %do.end399
  call void @__sanitizer_cov_trace_pc() #17
  %acl_group.i638 = getelementptr inbounds %struct.se_node_acl, ptr %call186, i32 0, i32 13
  call void @target_undepend_item(ptr noundef %acl_group.i638) #15
  br label %core_scsi3_nodeacl_undepend_item.exit

core_scsi3_nodeacl_undepend_item.exit:            ; preds = %if.then.i639, %do.end399.core_scsi3_nodeacl_undepend_item.exit_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !542
  %call.i.i.i.i640 = call zeroext i1 @__kasan_check_write(ptr noundef %acl_pr_ref_count, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %acl_pr_ref_count, i32 1, i32 3, i32 1) #15
  %122 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %acl_pr_ref_count, ptr %acl_pr_ref_count, i32 1, ptr elementtype(i32) %acl_pr_ref_count) #15, !srcloc !543
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !544
  %tpg_group.i642 = getelementptr inbounds %struct.se_portal_group, ptr %dest_se_tpg.2, i32 0, i32 12
  call void @target_undepend_item(ptr noundef %tpg_group.i642) #15
  %tpg_pr_ref_count.i = getelementptr inbounds %struct.se_portal_group, ptr %dest_se_tpg.2, i32 0, i32 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !542
  %call.i.i.i.i643 = call zeroext i1 @__kasan_check_write(ptr noundef %tpg_pr_ref_count.i, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %tpg_pr_ref_count.i, i32 1, i32 3, i32 1) #15
  %123 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tpg_pr_ref_count.i, ptr %tpg_pr_ref_count.i, i32 1, ptr elementtype(i32) %tpg_pr_ref_count.i) #15, !srcloc !543
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !544
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %unreg)
  %tobool400.not = icmp eq i32 %unreg, 0
  br i1 %tobool400.not, label %if.else, label %if.then401

if.then401:                                       ; preds = %core_scsi3_nodeacl_undepend_item.exit
  call void @__sanitizer_cov_trace_pc() #17
  %registration_lock = getelementptr inbounds %struct.se_device, ptr %3, i32 0, i32 38, i32 3
  call void @_raw_spin_lock(ptr noundef %registration_lock) #15
  call fastcc void @__core_scsi3_free_registration(ptr noundef %3, ptr noundef nonnull %call4.i, ptr noundef null, i32 noundef 1)
  call void @_raw_spin_unlock(ptr noundef %registration_lock) #15
  br label %if.end403

if.else:                                          ; preds = %core_scsi3_nodeacl_undepend_item.exit
  call void @__sanitizer_cov_trace_pc() #17
  %pr_res_holders.i = getelementptr inbounds %struct.t10_pr_registration, ptr %call4.i, i32 0, i32 17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !542
  %call.i.i.i.i644 = call zeroext i1 @__kasan_check_write(ptr noundef %pr_res_holders.i, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %pr_res_holders.i, i32 1, i32 3, i32 1) #15
  %124 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pr_res_holders.i, ptr %pr_res_holders.i, i32 1, ptr elementtype(i32) %pr_res_holders.i) #15, !srcloc !543
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !544
  br label %if.end403

if.end403:                                        ; preds = %if.else, %if.then401
  %125 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %se_dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %aptpl)
  %tobool405 = icmp ne i32 %aptpl, 0
  %call406 = call fastcc i32 @core_scsi3_update_and_write_aptpl(ptr noundef %126, i1 noundef zeroext %tobool405)
  %pr_res_holders.i645 = getelementptr inbounds %struct.t10_pr_registration, ptr %dest_pr_reg.1, i32 0, i32 17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !542
  %call.i.i.i.i646 = call zeroext i1 @__kasan_check_write(ptr noundef %pr_res_holders.i645, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %pr_res_holders.i645, i32 1, i32 3, i32 1) #15
  %127 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pr_res_holders.i645, ptr %pr_res_holders.i645, i32 1, ptr elementtype(i32) %pr_res_holders.i645) #15, !srcloc !543
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !544
  br label %cleanup416

if.end412.thread:                                 ; preds = %do.end125, %do.end113
  call void @transport_kunmap_data_sg(ptr noundef %cmd) #15
  br label %if.end415

if.end412.thread707.sink.split:                   ; preds = %do.end297, %do.end283, %do.end273
  %ret.1.ph.ph = phi i32 [ 16, %do.end297 ], [ 16, %do.end283 ], [ 8, %do.end273 ]
  call void @_raw_spin_unlock(ptr noundef %dev_reservation_lock) #15
  br label %if.end412.thread707

if.end412.thread707:                              ; preds = %if.end412.thread707.sink.split, %do.end330.if.end412.thread707_crit_edge
  %ret.1.ph = phi i32 [ 29, %do.end330.if.end412.thread707_crit_edge ], [ %ret.1.ph.ph, %if.end412.thread707.sink.split ]
  call fastcc void @core_scsi3_lunacl_undepend_item(ptr noundef nonnull %call229)
  br label %if.then414

if.then414:                                       ; preds = %if.end412.thread707, %do.end245, %do.end234
  %ret.1689697711 = phi i32 [ %ret.1.ph, %if.end412.thread707 ], [ 10, %do.end245 ], [ 9, %do.end234 ]
  %128 = ptrtoint ptr %dynamic_node_acl.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %dynamic_node_acl.i, align 4, !range !540
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool.not.i648 = icmp eq i8 %129, 0
  br i1 %tobool.not.i648, label %if.then.i650, label %if.then414.core_scsi3_nodeacl_undepend_item.exit654_crit_edge

if.then414.core_scsi3_nodeacl_undepend_item.exit654_crit_edge: ; preds = %if.then414
  call void @__sanitizer_cov_trace_pc() #17
  br label %core_scsi3_nodeacl_undepend_item.exit654

if.then.i650:                                     ; preds = %if.then414
  call void @__sanitizer_cov_trace_pc() #17
  %acl_group.i649 = getelementptr inbounds %struct.se_node_acl, ptr %call186, i32 0, i32 13
  call void @target_undepend_item(ptr noundef %acl_group.i649) #15
  br label %core_scsi3_nodeacl_undepend_item.exit654

core_scsi3_nodeacl_undepend_item.exit654:         ; preds = %if.then.i650, %if.then414.core_scsi3_nodeacl_undepend_item.exit654_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !542
  %call.i.i.i.i652 = call zeroext i1 @__kasan_check_write(ptr noundef %acl_pr_ref_count, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %acl_pr_ref_count, i32 1, i32 3, i32 1) #15
  %130 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %acl_pr_ref_count, ptr %acl_pr_ref_count, i32 1, ptr elementtype(i32) %acl_pr_ref_count) #15, !srcloc !543
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !544
  br label %if.end415

if.end415:                                        ; preds = %core_scsi3_nodeacl_undepend_item.exit654, %if.end412.thread, %do.end205, %do.end195.critedge, %do.end178, %do.end166
  %ret.1689697706 = phi i32 [ 9, %if.end412.thread ], [ %ret.1689697711, %core_scsi3_nodeacl_undepend_item.exit654 ], [ 9, %do.end205 ], [ 9, %do.end195.critedge ], [ 9, %do.end178 ], [ 9, %do.end166 ]
  %tpg_group.i655 = getelementptr inbounds %struct.se_portal_group, ptr %dest_se_tpg.2, i32 0, i32 12
  call void @target_undepend_item(ptr noundef %tpg_group.i655) #15
  %tpg_pr_ref_count.i656 = getelementptr inbounds %struct.se_portal_group, ptr %dest_se_tpg.2, i32 0, i32 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !542
  %call.i.i.i.i657 = call zeroext i1 @__kasan_check_write(ptr noundef %tpg_pr_ref_count.i656, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %tpg_pr_ref_count.i656, i32 1, i32 3, i32 1) #15
  %131 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tpg_pr_ref_count.i656, ptr %tpg_pr_ref_count.i656, i32 1, ptr elementtype(i32) %tpg_pr_ref_count.i656) #15, !srcloc !543
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !544
  br label %out_put_pr_reg

out_put_pr_reg:                                   ; preds = %if.end415, %if.end87.out_put_pr_reg_crit_edge, %do.end83, %do.end65, %do.end42, %if.end30.out_put_pr_reg_crit_edge, %do.end27, %do.end18
  %ret.2 = phi i32 [ 16, %do.end18 ], [ 9, %do.end42 ], [ 10, %do.end65 ], [ %ret.1689697706, %if.end415 ], [ 9, %do.end83 ], [ 9, %do.end27 ], [ 29, %if.end30.out_put_pr_reg_crit_edge ], [ 29, %if.end87.out_put_pr_reg_crit_edge ]
  %pr_res_holders.i658 = getelementptr inbounds %struct.t10_pr_registration, ptr %call4.i, i32 0, i32 17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !542
  %call.i.i.i.i659 = call zeroext i1 @__kasan_check_write(ptr noundef %pr_res_holders.i658, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %pr_res_holders.i658, i32 1, i32 3, i32 1) #15
  %132 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pr_res_holders.i658, ptr %pr_res_holders.i658, i32 1, ptr elementtype(i32) %pr_res_holders.i658) #15, !srcloc !543
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !544
  br label %cleanup416

cleanup416:                                       ; preds = %out_put_pr_reg, %if.end403, %do.end11, %do.end
  %retval.0 = phi i32 [ %ret.2, %out_put_pr_reg ], [ 0, %if.end403 ], [ 10, %do.end11 ], [ 10, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp_tid_len) #15
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %i_buf) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iport_ptr) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @target_scsi3_emulate_pr_in(ptr noundef %cmd) local_unnamed_addr #3 align 64 {
entry:
  %format_code.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %se_dev = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 19
  %0 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_dev, align 4
  %dev_reservation_flags = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %dev_reservation_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev_reservation_flags, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %t_task_cdb = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 30
  %4 = ptrtoint ptr %t_task_cdb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %t_task_cdb, align 8
  %arrayidx = getelementptr i8, ptr %5, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %8 = and i8 %7, 31
  %and1 = zext i8 %8 to i32
  %9 = zext i32 %and1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.289)
  switch i32 %and1, label %do.end11 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb5
    i32 3, label %sw.bb7
  ]

sw.bb:                                            ; preds = %if.end
  %data_length.i = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 12
  %10 = ptrtoint ptr %data_length.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %11)
  %cmp.i = icmp ult i32 %11, 8
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.260, i32 noundef %11) #18
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  %call2.i = tail call ptr @transport_kmap_data_sg(ptr noundef %cmd) #15
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %if.end4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %pr_generation.i = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 38, i32 2
  %12 = ptrtoint ptr %pr_generation.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pr_generation.i, align 8
  %14 = ptrtoint ptr %call2.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %13, ptr %call2.i, align 1
  %registration_lock.i = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 38, i32 3
  tail call void @_raw_spin_lock(ptr noundef %registration_lock.i) #15
  %registration_list.i = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 38, i32 6
  %15 = ptrtoint ptr %registration_list.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn49.i = load ptr, ptr %registration_list.i, align 4
  %cmp10.not50.i = icmp eq ptr %.pn49.i, %registration_list.i
  br i1 %cmp10.not50.i, label %if.end4.i.for.end.i_crit_edge, label %if.end4.i.for.body.i_crit_edge

if.end4.i.for.body.i_crit_edge:                   ; preds = %if.end4.i
  br label %for.body.i

if.end4.i.for.end.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.body.i:                                       ; preds = %if.end15.i.for.body.i_crit_edge, %if.end4.i.for.body.i_crit_edge
  %.pn53.i = phi ptr [ %.pn.i, %if.end15.i.for.body.i_crit_edge ], [ %.pn49.i, %if.end4.i.for.body.i_crit_edge ]
  %add_len.052.i = phi i32 [ %add16.i, %if.end15.i.for.body.i_crit_edge ], [ 0, %if.end4.i.for.body.i_crit_edge ]
  %off.051.i = phi i32 [ %off.1.i, %if.end15.i.for.body.i_crit_edge ], [ 8, %if.end4.i.for.body.i_crit_edge ]
  %add.i = add i32 %off.051.i, 8
  %16 = ptrtoint ptr %data_length.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data_length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %17)
  %cmp12.not.i = icmp ugt i32 %add.i, %17
  br i1 %cmp12.not.i, label %for.body.i.if.end15.i_crit_edge, label %if.then13.i

for.body.i.if.end15.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.i

if.then13.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %pr_res_key.i = getelementptr i8, ptr %.pn53.i, i32 -20
  %18 = ptrtoint ptr %pr_res_key.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %pr_res_key.i, align 8
  %arrayidx.i = getelementptr i8, ptr %call2.i, i32 %off.051.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 8)
  store i64 %19, ptr %arrayidx.i, align 1
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then13.i, %for.body.i.if.end15.i_crit_edge
  %off.1.i = phi i32 [ %add.i, %if.then13.i ], [ %off.051.i, %for.body.i.if.end15.i_crit_edge ]
  %add16.i = add i32 %add_len.052.i, 8
  %21 = ptrtoint ptr %.pn53.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn.i = load ptr, ptr %.pn53.i, align 4
  %cmp10.not.i = icmp eq ptr %.pn.i, %registration_list.i
  br i1 %cmp10.not.i, label %if.end15.i.for.end.i_crit_edge, label %if.end15.i.for.body.i_crit_edge

if.end15.i.for.body.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

if.end15.i.for.end.i_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.end.i:                                        ; preds = %if.end15.i.for.end.i_crit_edge, %if.end4.i.for.end.i_crit_edge
  %add_len.0.lcssa.i = phi i32 [ 0, %if.end4.i.for.end.i_crit_edge ], [ %add16.i, %if.end15.i.for.end.i_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %registration_lock.i) #15
  %arrayidx24.i = getelementptr i8, ptr %call2.i, i32 4
  %22 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %add_len.0.lcssa.i, ptr %arrayidx24.i, align 1
  %add25.i = add i32 %add_len.0.lcssa.i, 8
  tail call void @target_set_cmd_data_length(ptr noundef %cmd, i32 noundef %add25.i) #15
  tail call void @transport_kunmap_data_sg(ptr noundef %cmd) #15
  br label %if.then19

sw.bb3:                                           ; preds = %if.end
  %data_length.i30 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 12
  %23 = ptrtoint ptr %data_length.i30 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data_length.i30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %24)
  %cmp.i31 = icmp ult i32 %24, 8
  br i1 %cmp.i31, label %do.end.i33, label %if.end.i36

do.end.i33:                                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #17
  %call.i32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.262, i32 noundef %24) #18
  br label %cleanup

if.end.i36:                                       ; preds = %sw.bb3
  %call2.i34 = tail call ptr @transport_kmap_data_sg(ptr noundef %cmd) #15
  %tobool.not.i35 = icmp eq ptr %call2.i34, null
  br i1 %tobool.not.i35, label %if.end.i36.cleanup_crit_edge, label %if.end4.i38

if.end.i36.cleanup_crit_edge:                     ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4.i38:                                      ; preds = %if.end.i36
  %pr_generation.i37 = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 38, i32 2
  %25 = ptrtoint ptr %pr_generation.i37 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pr_generation.i37, align 8
  %27 = ptrtoint ptr %call2.i34 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %26, ptr %call2.i34, align 1
  %dev_reservation_lock.i = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 20
  tail call void @_raw_spin_lock(ptr noundef %dev_reservation_lock.i) #15
  %dev_pr_res_holder.i = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 28
  %28 = ptrtoint ptr %dev_pr_res_holder.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_pr_res_holder.i, align 4
  %tobool5.not.i = icmp eq ptr %29, null
  br i1 %tobool5.not.i, label %if.end4.i38.if.end22.i_crit_edge, label %if.then6.i

if.end4.i38.if.end22.i_crit_edge:                 ; preds = %if.end4.i38
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end22.i

if.then6.i:                                       ; preds = %if.end4.i38
  %arrayidx7.i = getelementptr i8, ptr %call2.i34, i32 4
  %30 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 16, ptr %arrayidx7.i, align 1
  %31 = ptrtoint ptr %data_length.i30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %data_length.i30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %32)
  %cmp9.i = icmp ult i32 %32, 22
  br i1 %cmp9.i, label %if.then6.i.err.i_crit_edge, label %if.end11.i

if.then6.i.err.i_crit_edge:                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %err.i

if.end11.i:                                       ; preds = %if.then6.i
  %pr_res_type.i = getelementptr inbounds %struct.t10_pr_registration, ptr %29, i32 0, i32 8
  %33 = ptrtoint ptr %pr_res_type.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pr_res_type.i, align 8
  %.off.i = add i32 %34, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.end11.i.if.end17.i_crit_edge, label %if.else.i

if.end11.i.if.end17.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17.i

if.else.i:                                        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #17
  %pr_res_key16.i = getelementptr inbounds %struct.t10_pr_registration, ptr %29, i32 0, i32 16
  %35 = ptrtoint ptr %pr_res_key16.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %pr_res_key16.i, align 8
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.else.i, %if.end11.i.if.end17.i_crit_edge
  %pr_res_key.0.i = phi i64 [ %36, %if.else.i ], [ 0, %if.end11.i.if.end17.i_crit_edge ]
  %arrayidx18.i = getelementptr i8, ptr %call2.i34, i32 8
  %37 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_storeN_noabort(i32 %37, i32 8)
  store i64 %pr_res_key.0.i, ptr %arrayidx18.i, align 1
  %pr_res_scope.i = getelementptr inbounds %struct.t10_pr_registration, ptr %29, i32 0, i32 9
  %38 = ptrtoint ptr %pr_res_scope.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pr_res_scope.i, align 4
  %and.i = and i32 %39, 240
  %40 = ptrtoint ptr %pr_res_type.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pr_res_type.i, align 8
  %and20.i = and i32 %41, 15
  %or.i = or i32 %and20.i, %and.i
  %conv.i = trunc i32 %or.i to i8
  %arrayidx21.i = getelementptr i8, ptr %call2.i34, i32 21
  %42 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv.i, ptr %arrayidx21.i, align 1
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.end17.i, %if.end4.i38.if.end22.i_crit_edge
  %add_len.0.i = phi i32 [ 24, %if.end17.i ], [ 8, %if.end4.i38.if.end22.i_crit_edge ]
  tail call void @target_set_cmd_data_length(ptr noundef %cmd, i32 noundef %add_len.0.i) #15
  br label %err.i

err.i:                                            ; preds = %if.end22.i, %if.then6.i.err.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %dev_reservation_lock.i) #15
  tail call void @transport_kunmap_data_sg(ptr noundef %cmd) #15
  br label %if.then19

sw.bb5:                                           ; preds = %if.end
  %data_length.i41 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 12
  %43 = ptrtoint ptr %data_length.i41 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %data_length.i41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %44)
  %cmp.i42 = icmp ult i32 %44, 6
  br i1 %cmp.i42, label %do.end.i44, label %if.end.i47

do.end.i44:                                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #17
  %call.i43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.264, i32 noundef %44) #18
  br label %cleanup

if.end.i47:                                       ; preds = %sw.bb5
  %call2.i45 = tail call ptr @transport_kmap_data_sg(ptr noundef %cmd) #15
  %tobool.not.i46 = icmp eq ptr %call2.i45, null
  br i1 %tobool.not.i46, label %if.end.i47.cleanup_crit_edge, label %if.end4.i48

if.end.i47.cleanup_crit_edge:                     ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4.i48:                                      ; preds = %if.end.i47
  %45 = ptrtoint ptr %call2.i45 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 2)
  store i16 8, ptr %call2.i45, align 1
  %arrayidx5.i = getelementptr i8, ptr %call2.i45, i32 2
  %46 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx5.i, align 1
  %48 = or i8 %47, 29
  store i8 %48, ptr %arrayidx5.i, align 1
  %arrayidx19.i = getelementptr i8, ptr %call2.i45, i32 3
  %49 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx19.i, align 1
  %51 = or i8 %50, -112
  store i8 %51, ptr %arrayidx19.i, align 1
  %pr_aptpl_active.i = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 38, i32 1
  %52 = ptrtoint ptr %pr_aptpl_active.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pr_aptpl_active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool27.not.i = icmp eq i32 %53, 0
  br i1 %tobool27.not.i, label %if.end4.i48.if.end33.i_crit_edge, label %if.then28.i

if.end4.i48.if.end33.i_crit_edge:                 ; preds = %if.end4.i48
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33.i

if.then28.i:                                      ; preds = %if.end4.i48
  call void @__sanitizer_cov_trace_pc() #17
  %54 = or i8 %50, -111
  %55 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %arrayidx19.i, align 1
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then28.i, %if.end4.i48.if.end33.i_crit_edge
  %arrayidx34.i = getelementptr i8, ptr %call2.i45, i32 4
  %56 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx34.i, align 1
  %58 = or i8 %57, -22
  store i8 %58, ptr %arrayidx34.i, align 1
  %arrayidx54.i = getelementptr i8, ptr %call2.i45, i32 5
  %59 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx54.i, align 1
  %61 = or i8 %60, 1
  store i8 %61, ptr %arrayidx54.i, align 1
  tail call void @target_set_cmd_data_length(ptr noundef %cmd, i32 noundef 8) #15
  tail call void @transport_kunmap_data_sg(ptr noundef %cmd) #15
  br label %if.then19

sw.bb7:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %format_code.i) #15
  %62 = ptrtoint ptr %format_code.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %format_code.i, align 4
  %data_length.i51 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 12
  %63 = ptrtoint ptr %data_length.i51 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %data_length.i51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %64)
  %cmp.i52 = icmp ult i32 %64, 8
  br i1 %cmp.i52, label %do.end.i54, label %if.end.i57

do.end.i54:                                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #17
  %call.i53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.266, i32 noundef %64) #18
  br label %sw.epilog.thread84

if.end.i57:                                       ; preds = %sw.bb7
  %call2.i55 = tail call ptr @transport_kmap_data_sg(ptr noundef %cmd) #15
  %tobool.not.i56 = icmp eq ptr %call2.i55, null
  br i1 %tobool.not.i56, label %if.end.i57.sw.epilog.thread84_crit_edge, label %if.end4.i61

if.end.i57.sw.epilog.thread84_crit_edge:          ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.thread84

if.end4.i61:                                      ; preds = %if.end.i57
  %pr_generation.i58 = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 38, i32 2
  %65 = ptrtoint ptr %pr_generation.i58 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %pr_generation.i58, align 8
  %67 = ptrtoint ptr %call2.i55 to i32
  call void @__asan_storeN_noabort(i32 %67, i32 4)
  store i32 %66, ptr %call2.i55, align 1
  %dev_reservation_lock.i59 = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 20
  tail call void @_raw_spin_lock(ptr noundef %dev_reservation_lock.i59) #15
  %dev_pr_res_holder.i60 = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 28
  %68 = ptrtoint ptr %dev_pr_res_holder.i60 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev_pr_res_holder.i60, align 4
  %tobool6.not.i = icmp eq ptr %69, null
  br i1 %tobool6.not.i, label %if.end4.i61.if.end17.i67_crit_edge, label %if.then7.i

if.end4.i61.if.end17.i67_crit_edge:               ; preds = %if.end4.i61
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17.i67

if.then7.i:                                       ; preds = %if.end4.i61
  %pr_res_type9.i = getelementptr inbounds %struct.t10_pr_registration, ptr %69, i32 0, i32 8
  %70 = ptrtoint ptr %pr_res_type9.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %pr_res_type9.i, align 8
  %.off.i62 = add i32 %71, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i62)
  %switch.i63 = icmp ult i32 %.off.i62, 2
  br i1 %switch.i63, label %if.then13.i64, label %if.then7.i.if.end17.i67_crit_edge

if.then7.i.if.end17.i67_crit_edge:                ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17.i67

if.then13.i64:                                    ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #17
  %pr_res_scope15.i = getelementptr inbounds %struct.t10_pr_registration, ptr %69, i32 0, i32 9
  %72 = ptrtoint ptr %pr_res_scope15.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %pr_res_scope15.i, align 4
  %phi.bo.i = and i32 %73, 240
  br label %if.end17.i67

if.end17.i67:                                     ; preds = %if.then13.i64, %if.then7.i.if.end17.i67_crit_edge, %if.end4.i61.if.end17.i67_crit_edge
  %pr_res_type.1.i = phi i32 [ 0, %if.end4.i61.if.end17.i67_crit_edge ], [ %71, %if.then13.i64 ], [ 0, %if.then7.i.if.end17.i67_crit_edge ]
  %pr_res_scope.1.i = phi i32 [ 0, %if.end4.i61.if.end17.i67_crit_edge ], [ %phi.bo.i, %if.then13.i64 ], [ 0, %if.then7.i.if.end17.i67_crit_edge ]
  %all_reg.1.off0.i = phi i1 [ false, %if.end4.i61.if.end17.i67_crit_edge ], [ true, %if.then13.i64 ], [ false, %if.then7.i.if.end17.i67_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %dev_reservation_lock.i59) #15
  %registration_lock.i65 = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 38, i32 3
  tail call void @_raw_spin_lock(ptr noundef %registration_lock.i65) #15
  %registration_list.i66 = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 38, i32 6
  %74 = ptrtoint ptr %registration_list.i66 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %registration_list.i66, align 4
  %cmp26.not213.i = icmp eq ptr %75, %registration_list.i66
  br i1 %cmp26.not213.i, label %if.end17.i67.sw.epilog_crit_edge, label %for.body.lr.ph.i

if.end17.i67.sw.epilog_crit_edge:                 ; preds = %if.end17.i67
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

for.body.lr.ph.i:                                 ; preds = %if.end17.i67
  %or72.i = or i32 %pr_res_scope.1.i, %pr_res_type.1.i
  br label %for.body.i68

for.body.i68:                                     ; preds = %if.end100.i.for.body.i68_crit_edge, %for.body.lr.ph.i
  %.pn.in217.i = phi ptr [ %75, %for.body.lr.ph.i ], [ %.pn219.i, %if.end100.i.for.body.i68_crit_edge ]
  %off.0215.i = phi i32 [ 8, %for.body.lr.ph.i ], [ %add104.i, %if.end100.i.for.body.i68_crit_edge ]
  %add_len.0214.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add105.i, %if.end100.i.for.body.i68_crit_edge ]
  %pr_reg.0218.i = getelementptr i8, ptr %.pn.in217.i, i32 -612
  %76 = ptrtoint ptr %.pn.in217.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %.pn219.i = load ptr, ptr %.pn.in217.i, align 4
  %pr_reg_nacl.i = getelementptr i8, ptr %.pn.in217.i, i32 -8
  %77 = ptrtoint ptr %pr_reg_nacl.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pr_reg_nacl.i, align 4
  %se_tpg28.i = getelementptr inbounds %struct.se_node_acl, ptr %78, i32 0, i32 10
  %79 = ptrtoint ptr %se_tpg28.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %se_tpg28.i, align 4
  %pr_res_holders.i = getelementptr i8, ptr %.pn.in217.i, i32 -12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !553
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %pr_res_holders.i, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %pr_res_holders.i, i32 1, i32 3, i32 1) #15
  %81 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pr_res_holders.i, ptr %pr_res_holders.i, i32 1, ptr elementtype(i32) %pr_res_holders.i) #15, !srcloc !554
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !555
  call void @_raw_spin_unlock(ptr noundef %registration_lock.i65) #15
  %call30.i = call i32 @target_get_pr_transport_id_len(ptr noundef %78, ptr noundef %pr_reg.0218.i, ptr noundef nonnull %format_code.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %cmp31.i = icmp slt i32 %call30.i, 0
  br i1 %cmp31.i, label %for.body.i68.do.end38.i_crit_edge, label %lor.lhs.false32.i

for.body.i68.do.end38.i_crit_edge:                ; preds = %for.body.i68
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end38.i

lor.lhs.false32.i:                                ; preds = %for.body.i68
  %add.i69 = add i32 %call30.i, %add_len.0214.i
  %82 = ptrtoint ptr %data_length.i51 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %data_length.i51, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i69, i32 %83)
  %cmp34.i = icmp ugt i32 %add.i69, %83
  br i1 %cmp34.i, label %lor.lhs.false32.i.do.end38.i_crit_edge, label %if.end44.i

lor.lhs.false32.i.do.end38.i_crit_edge:           ; preds = %lor.lhs.false32.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end38.i

do.end38.i:                                       ; preds = %lor.lhs.false32.i.do.end38.i_crit_edge, %for.body.i68.do.end38.i_crit_edge
  %84 = ptrtoint ptr %data_length.i51 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %data_length.i51, align 4
  %call41.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.269, i32 noundef %85) #18
  call void @_raw_spin_lock(ptr noundef %registration_lock.i65) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !542
  %call.i.i.i206.i = call zeroext i1 @__kasan_check_write(ptr noundef %pr_res_holders.i, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %pr_res_holders.i, i32 1, i32 3, i32 1) #15
  %86 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pr_res_holders.i, ptr %pr_res_holders.i, i32 1, ptr elementtype(i32) %pr_res_holders.i) #15, !srcloc !543
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !544
  br label %sw.epilog

if.end44.i:                                       ; preds = %lor.lhs.false32.i
  %pr_res_key.i70 = getelementptr i8, ptr %.pn.in217.i, i32 -20
  %87 = ptrtoint ptr %pr_res_key.i70 to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %pr_res_key.i70, align 8
  %arrayidx45.i = getelementptr i8, ptr %call2.i55, i32 %off.0215.i
  %89 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_storeN_noabort(i32 %89, i32 8)
  store i64 %88, ptr %arrayidx45.i, align 1
  %add47.i = add i32 %off.0215.i, 12
  %pr_reg_all_tg_pt.i = getelementptr i8, ptr %.pn.in217.i, i32 -80
  %90 = ptrtoint ptr %pr_reg_all_tg_pt.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %pr_reg_all_tg_pt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool48.not.i = icmp eq i32 %91, 0
  br i1 %tobool48.not.i, label %if.end44.i.if.end51.i_crit_edge, label %if.then49.i

if.end44.i.if.end51.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end51.i

if.then49.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx50.i = getelementptr i8, ptr %call2.i55, i32 %add47.i
  %92 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 2, ptr %arrayidx50.i, align 1
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then49.i, %if.end44.i.if.end51.i_crit_edge
  %pr_res_holder.i = getelementptr i8, ptr %.pn.in217.i, i32 -72
  %93 = ptrtoint ptr %pr_res_holder.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %pr_res_holder.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool52.not.i = icmp eq i32 %94, 0
  br i1 %tobool52.not.i, label %if.else.i73, label %if.then53.i

if.then53.i:                                      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx54.i71 = getelementptr i8, ptr %call2.i55, i32 %add47.i
  %95 = ptrtoint ptr %arrayidx54.i71 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx54.i71, align 1
  %97 = or i8 %96, 1
  store i8 %97, ptr %arrayidx54.i71, align 1
  %pr_res_scope56.i = getelementptr i8, ptr %.pn.in217.i, i32 -64
  %98 = ptrtoint ptr %pr_res_scope56.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %pr_res_scope56.i, align 4
  %and.i72 = and i32 %99, 240
  %pr_res_type57.i = getelementptr i8, ptr %.pn.in217.i, i32 -68
  %100 = ptrtoint ptr %pr_res_type57.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %pr_res_type57.i, align 8
  %and58.i = and i32 %101, 15
  %or59.i = or i32 %and58.i, %and.i72
  br label %if.end79.sink.split.i

if.else.i73:                                      ; preds = %if.end51.i
  br i1 %all_reg.1.off0.i, label %if.then64.i, label %if.else.i73.if.end79.i_crit_edge

if.else.i73.if.end79.i_crit_edge:                 ; preds = %if.else.i73
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end79.i

if.then64.i:                                      ; preds = %if.else.i73
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx66.i = getelementptr i8, ptr %call2.i55, i32 %add47.i
  %102 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx66.i, align 1
  %104 = or i8 %103, 1
  store i8 %104, ptr %arrayidx66.i, align 1
  br label %if.end79.sink.split.i

if.end79.sink.split.i:                            ; preds = %if.then64.i, %if.then53.i
  %conv73.sink.in.i = phi i32 [ %or72.i, %if.then64.i ], [ %or59.i, %if.then53.i ]
  %conv73.sink.i = trunc i32 %conv73.sink.in.i to i8
  %inc65.sink.i = add i32 %off.0215.i, 13
  %arrayidx75.i = getelementptr i8, ptr %call2.i55, i32 %inc65.sink.i
  %105 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %conv73.sink.i, ptr %arrayidx75.i, align 1
  br label %if.end79.i

if.end79.i:                                       ; preds = %if.end79.sink.split.i, %if.else.i73.if.end79.i_crit_edge
  %106 = ptrtoint ptr %pr_reg_all_tg_pt.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %pr_reg_all_tg_pt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool82.not.i = icmp eq i32 %107, 0
  br i1 %tobool82.not.i, label %if.then83.i, label %if.end79.i.if.end88.i_crit_edge

if.end79.i.if.end88.i_crit_edge:                  ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end88.i

if.then83.i:                                      ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #17
  %add80.i = add i32 %off.0215.i, 18
  %tg_pt_sep_rtpi.i = getelementptr i8, ptr %.pn.in217.i, i32 -36
  %108 = ptrtoint ptr %tg_pt_sep_rtpi.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %tg_pt_sep_rtpi.i, align 8
  %arrayidx84.i = getelementptr i8, ptr %call2.i55, i32 %add80.i
  %110 = ptrtoint ptr %arrayidx84.i to i32
  call void @__asan_storeN_noabort(i32 %110, i32 2)
  store i16 %109, ptr %arrayidx84.i, align 1
  br label %if.end88.i

if.end88.i:                                       ; preds = %if.then83.i, %if.end79.i.if.end88.i_crit_edge
  %111 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %80, align 4
  %conv89.i = trunc i32 %112 to i8
  %add90.i = add i32 %off.0215.i, 24
  %arrayidx91.i = getelementptr i8, ptr %call2.i55, i32 %add90.i
  %113 = ptrtoint ptr %arrayidx91.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %conv89.i, ptr %arrayidx91.i, align 1
  %call94.i = call i32 @target_get_pr_transport_id(ptr noundef %78, ptr noundef %pr_reg.0218.i, ptr noundef nonnull %format_code.i, ptr noundef %arrayidx91.i) #15
  call void @_raw_spin_lock(ptr noundef %registration_lock.i65) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !542
  %call.i.i.i207.i = call zeroext i1 @__kasan_check_write(ptr noundef %pr_res_holders.i, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %pr_res_holders.i, i32 1, i32 3, i32 1) #15
  %114 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pr_res_holders.i, ptr %pr_res_holders.i, i32 1, ptr elementtype(i32) %pr_res_holders.i) #15, !srcloc !543
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !544
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94.i)
  %cmp97.i = icmp slt i32 %call94.i, 0
  br i1 %cmp97.i, label %if.end88.i.sw.epilog_crit_edge, label %if.end100.i

if.end88.i.sw.epilog_crit_edge:                   ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.end100.i:                                      ; preds = %if.end88.i
  %off.2.i = add i32 %off.0215.i, 20
  %arrayidx101.i = getelementptr i8, ptr %call2.i55, i32 %off.2.i
  %115 = ptrtoint ptr %arrayidx101.i to i32
  call void @__asan_storeN_noabort(i32 %115, i32 4)
  store i32 %call94.i, ptr %arrayidx101.i, align 1
  %add104.i = add i32 %call94.i, %add90.i
  %add103.i = add i32 %add_len.0214.i, 24
  %add105.i = add i32 %add103.i, %call94.i
  %cmp26.not.i = icmp eq ptr %.pn219.i, %registration_list.i66
  br i1 %cmp26.not.i, label %if.end100.i.sw.epilog_crit_edge, label %if.end100.i.for.body.i68_crit_edge

if.end100.i.for.body.i68_crit_edge:               ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i68

if.end100.i.sw.epilog_crit_edge:                  ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef %and1) #18
  br label %cleanup

sw.epilog.thread84:                               ; preds = %if.end.i57.sw.epilog.thread84_crit_edge, %do.end.i54
  %retval.0.i75.ph = phi i32 [ 10, %if.end.i57.sw.epilog.thread84_crit_edge ], [ 8, %do.end.i54 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %format_code.i) #15
  br label %cleanup

sw.epilog:                                        ; preds = %if.end100.i.sw.epilog_crit_edge, %if.end88.i.sw.epilog_crit_edge, %do.end38.i, %if.end17.i67.sw.epilog_crit_edge
  %add_len.0210.i = phi i32 [ %add_len.0214.i, %do.end38.i ], [ 0, %if.end17.i67.sw.epilog_crit_edge ], [ %add_len.0214.i, %if.end88.i.sw.epilog_crit_edge ], [ %add105.i, %if.end100.i.sw.epilog_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %registration_lock.i65) #15
  %arrayidx112.i = getelementptr i8, ptr %call2.i55, i32 4
  %116 = ptrtoint ptr %arrayidx112.i to i32
  call void @__asan_storeN_noabort(i32 %116, i32 4)
  store i32 %add_len.0210.i, ptr %arrayidx112.i, align 1
  %add113.i = add i32 %add_len.0210.i, 8
  call void @target_set_cmd_data_length(ptr noundef %cmd, i32 noundef %add113.i) #15
  call void @transport_kunmap_data_sg(ptr noundef %cmd) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %format_code.i) #15
  br label %if.then19

if.then19:                                        ; preds = %sw.epilog, %if.end33.i, %err.i, %for.end.i
  call void @target_complete_cmd(ptr noundef %cmd, i8 noundef zeroext 0) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %sw.epilog.thread84, %do.end11, %if.end.i47.cleanup_crit_edge, %do.end.i44, %if.end.i36.cleanup_crit_edge, %do.end.i33, %if.end.i.cleanup_crit_edge, %do.end.i, %do.end
  %retval.0 = phi i32 [ 16, %do.end ], [ 8, %do.end11 ], [ 0, %if.then19 ], [ %retval.0.i75.ph, %sw.epilog.thread84 ], [ 10, %if.end.i47.cleanup_crit_edge ], [ 8, %do.end.i44 ], [ 10, %if.end.i36.cleanup_crit_edge ], [ 8, %do.end.i33 ], [ 10, %if.end.i.cleanup_crit_edge ], [ 8, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @target_check_reservation(ptr noundef %cmd) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %se_dev = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 19
  %0 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_dev, align 4
  %se_sess = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 21
  %2 = ptrtoint ptr %se_sess to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %se_sess, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %se_hba = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 35
  %4 = ptrtoint ptr %se_hba to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %se_hba, align 8
  %hba_flags = getelementptr inbounds %struct.se_hba, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %hba_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hba_flags, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %emulate_pr = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 11
  %8 = ptrtoint ptr %emulate_pr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %emulate_pr, align 1, !range !540
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not = icmp eq i8 %9, 0
  br i1 %tobool4.not, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %transport_flags = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %transport_flags to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %transport_flags, align 4
  %12 = and i8 %11, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool8.not = icmp eq i8 %12, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %dev_reservation_lock = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 20
  tail call void @_raw_spin_lock(ptr noundef %dev_reservation_lock) #15
  %dev_reservation_flags = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 21
  %13 = ptrtoint ptr %dev_reservation_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dev_reservation_flags, align 4
  %and11 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %15 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %se_dev, align 4
  %17 = ptrtoint ptr %se_sess to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %se_sess, align 4
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end10
  %t_task_cdb.i = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 30
  %19 = ptrtoint ptr %t_task_cdb.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %t_task_cdb.i, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %20, align 1
  %23 = zext i8 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.290)
  switch i8 %22, label %sw.epilog.i [
    i8 18, label %if.then13.if.end15_crit_edge
    i8 23, label %if.then13.if.end15_crit_edge35
    i8 87, label %if.then13.if.end15_crit_edge36
  ]

if.then13.if.end15_crit_edge36:                   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.then13.if.end15_crit_edge35:                   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.then13.if.end15_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

sw.epilog.i:                                      ; preds = %if.then13
  %reservation_holder.i = getelementptr inbounds %struct.se_device, ptr %16, i32 0, i32 26
  %24 = ptrtoint ptr %reservation_holder.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reservation_holder.i, align 4
  %tobool.not.i = icmp eq ptr %25, null
  %tobool1.not.i = icmp eq ptr %18, null
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool1.not.i
  br i1 %or.cond.i, label %sw.epilog.i.if.end15_crit_edge, label %if.end.i

sw.epilog.i.if.end15_crit_edge:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.end.i:                                         ; preds = %sw.epilog.i
  %se_node_acl.i = getelementptr inbounds %struct.se_session, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %se_node_acl.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %se_node_acl.i, align 8
  %se_node_acl3.i = getelementptr inbounds %struct.se_session, ptr %18, i32 0, i32 4
  %28 = ptrtoint ptr %se_node_acl3.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %se_node_acl3.i, align 8
  %cmp.not.i = icmp eq ptr %27, %29
  br i1 %cmp.not.i, label %if.end6.i, label %if.end.i.if.end15_crit_edge

if.end.i.if.end15_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.end6.i:                                        ; preds = %if.end.i
  %dev_reservation_flags.i = getelementptr inbounds %struct.se_device, ptr %16, i32 0, i32 21
  %30 = ptrtoint ptr %dev_reservation_flags.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dev_reservation_flags.i, align 4
  %and.i = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i, label %if.end6.i.if.end13.i_crit_edge, label %if.then8.i

if.end6.i.if.end13.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13.i

if.then8.i:                                       ; preds = %if.end6.i
  %dev_res_bin_isid.i = getelementptr inbounds %struct.se_device, ptr %16, i32 0, i32 5
  %32 = ptrtoint ptr %dev_res_bin_isid.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %dev_res_bin_isid.i, align 8
  %sess_bin_isid.i = getelementptr inbounds %struct.se_session, ptr %18, i32 0, i32 1
  %34 = ptrtoint ptr %sess_bin_isid.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %sess_bin_isid.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %33, i64 %35)
  %cmp9.not.i = icmp eq i64 %33, %35
  br i1 %cmp9.not.i, label %if.then8.i.if.end13.i_crit_edge, label %if.then8.i.if.end15_crit_edge

if.then8.i.if.end15_crit_edge:                    ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.then8.i.if.end13.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then8.i.if.end13.i_crit_edge, %if.end6.i.if.end13.i_crit_edge
  br label %if.end15

if.else:                                          ; preds = %if.end10
  %dev_pr_res_holder.i = getelementptr inbounds %struct.se_device, ptr %16, i32 0, i32 28
  %36 = ptrtoint ptr %dev_pr_res_holder.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev_pr_res_holder.i, align 4
  %tobool.not.i28 = icmp eq ptr %37, null
  br i1 %tobool.not.i28, label %if.else.if.end15_crit_edge, label %if.end.i31

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.end.i31:                                       ; preds = %if.else
  %pr_res_type.i = getelementptr inbounds %struct.t10_pr_registration, ptr %37, i32 0, i32 8
  %38 = ptrtoint ptr %pr_res_type.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pr_res_type.i, align 8
  %pr_res_key.i = getelementptr inbounds %struct.t10_pr_registration, ptr %37, i32 0, i32 16
  %40 = ptrtoint ptr %pr_res_key.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %pr_res_key.i, align 8
  %pr_res_key3.i = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 15
  %42 = ptrtoint ptr %pr_res_key3.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %pr_res_key3.i, align 8
  %43 = ptrtoint ptr %dev_pr_res_holder.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev_pr_res_holder.i, align 4
  %pr_reg_nacl.i = getelementptr inbounds %struct.t10_pr_registration, ptr %44, i32 0, i32 18
  %45 = ptrtoint ptr %pr_reg_nacl.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pr_reg_nacl.i, align 4
  %se_node_acl.i29 = getelementptr inbounds %struct.se_session, ptr %18, i32 0, i32 4
  %47 = ptrtoint ptr %se_node_acl.i29 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %se_node_acl.i29, align 8
  %cmp.not.i30 = icmp eq ptr %46, %48
  br i1 %cmp.not.i30, label %if.end6.i32, label %if.end.i31.check_nonholder.i_crit_edge

if.end.i31.check_nonholder.i_crit_edge:           ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #17
  br label %check_nonholder.i

if.end6.i32:                                      ; preds = %if.end.i31
  %isid_present_at_reg.i = getelementptr inbounds %struct.t10_pr_registration, ptr %44, i32 0, i32 10
  %49 = ptrtoint ptr %isid_present_at_reg.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %isid_present_at_reg.i, align 8, !range !540
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool8.not.i = icmp eq i8 %50, 0
  br i1 %tobool8.not.i, label %if.end6.i32.if.end15_crit_edge, label %if.then9.i

if.end6.i32.if.end15_crit_edge:                   ; preds = %if.end6.i32
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.then9.i:                                       ; preds = %if.end6.i32
  %pr_reg_bin_isid.i = getelementptr inbounds %struct.t10_pr_registration, ptr %44, i32 0, i32 15
  %51 = ptrtoint ptr %pr_reg_bin_isid.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %pr_reg_bin_isid.i, align 8
  %sess_bin_isid.i33 = getelementptr inbounds %struct.se_session, ptr %18, i32 0, i32 1
  %53 = ptrtoint ptr %sess_bin_isid.i33 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %sess_bin_isid.i33, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %52, i64 %54)
  %cmp11.not.i = icmp eq i64 %52, %54
  br i1 %cmp11.not.i, label %if.then9.i.if.end15_crit_edge, label %if.then9.i.check_nonholder.i_crit_edge

if.then9.i.check_nonholder.i_crit_edge:           ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %check_nonholder.i

if.then9.i.if.end15_crit_edge:                    ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

check_nonholder.i:                                ; preds = %if.then9.i.check_nonholder.i_crit_edge, %if.end.i31.check_nonholder.i_crit_edge
  %call.i = tail call fastcc i32 @core_scsi3_pr_seq_non_holder(ptr noundef %cmd, i32 noundef %39, i1 noundef zeroext %cmp.not.i30) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool16.not.i = icmp eq i32 %call.i, 0
  %..i = select i1 %tobool16.not.i, i32 0, i32 16
  br label %if.end15

if.end15:                                         ; preds = %check_nonholder.i, %if.then9.i.if.end15_crit_edge, %if.end6.i32.if.end15_crit_edge, %if.else.if.end15_crit_edge, %if.end13.i, %if.then8.i.if.end15_crit_edge, %if.end.i.if.end15_crit_edge, %sw.epilog.i.if.end15_crit_edge, %if.then13.if.end15_crit_edge, %if.then13.if.end15_crit_edge35, %if.then13.if.end15_crit_edge36
  %ret.0 = phi i32 [ 0, %if.end13.i ], [ 0, %if.then13.if.end15_crit_edge ], [ 0, %if.then13.if.end15_crit_edge35 ], [ 0, %if.then13.if.end15_crit_edge36 ], [ 0, %sw.epilog.i.if.end15_crit_edge ], [ 16, %if.end.i.if.end15_crit_edge ], [ 16, %if.then8.i.if.end15_crit_edge ], [ 0, %if.else.if.end15_crit_edge ], [ 0, %if.then9.i.if.end15_crit_edge ], [ 0, %if.end6.i32.if.end15_crit_edge ], [ %..i, %check_nonholder.i ]
  tail call void @_raw_spin_unlock(ptr noundef %dev_reservation_lock) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end15 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @core_scsi3_put_pr_reg(ptr noundef %pr_reg) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %pr_res_holders = getelementptr inbounds %struct.t10_pr_registration, ptr %pr_reg, i32 0, i32 17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !542
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pr_res_holders, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %pr_res_holders, i32 1, i32 3, i32 1) #15
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pr_res_holders, ptr %pr_res_holders, i32 1, ptr elementtype(i32) %pr_res_holders) #15, !srcloc !543
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !544
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__core_scsi3_locate_pr_reg(ptr noundef %dev, ptr noundef readnone %nacl, ptr noundef readonly %isid) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %registration_lock = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 38, i32 3
  tail call void @_raw_spin_lock(ptr noundef %registration_lock) #15
  %registration_list = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 38, i32 6
  %0 = ptrtoint ptr %registration_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %registration_list, align 4
  %cmp.not50 = icmp eq ptr %1, %registration_list
  br i1 %cmp.not50, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %tobool11.not = icmp eq ptr %isid, null
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn.in51 = phi ptr [ %1, %for.body.lr.ph ], [ %.pn53, %for.inc.for.body_crit_edge ]
  %pr_reg.052 = getelementptr i8, ptr %.pn.in51, i32 -612
  %2 = ptrtoint ptr %.pn.in51 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn53 = load ptr, ptr %.pn.in51, align 4
  %pr_reg_nacl = getelementptr i8, ptr %.pn.in51, i32 -8
  %3 = ptrtoint ptr %pr_reg_nacl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pr_reg_nacl, align 4
  %cmp7.not = icmp eq ptr %4, %nacl
  br i1 %cmp7.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end:                                           ; preds = %for.body
  %isid_present_at_reg = getelementptr i8, ptr %.pn.in51, i32 -60
  %5 = ptrtoint ptr %isid_present_at_reg to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %isid_present_at_reg, align 8, !range !540
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %pr_res_holders = getelementptr i8, ptr %.pn.in51, i32 -12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !553
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pr_res_holders, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %pr_res_holders, i32 1, i32 3, i32 1) #15
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pr_res_holders, ptr %pr_res_holders, i32 1, ptr elementtype(i32) %pr_res_holders) #15, !srcloc !554
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !555
  br label %cleanup

if.end10:                                         ; preds = %if.end
  br i1 %tobool11.not, label %if.end10.for.inc_crit_edge, label %if.end13

if.end10.for.inc_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end13:                                         ; preds = %if.end10
  %call = tail call i32 @strcmp(ptr noundef nonnull %isid, ptr noundef %pr_reg.052) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool14.not = icmp eq i32 %call, 0
  br i1 %tobool14.not, label %if.end16, label %if.end13.for.inc_crit_edge

if.end13.for.inc_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end16:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  %pr_res_holders17 = getelementptr i8, ptr %.pn.in51, i32 -12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !553
  %call.i.i.i43 = tail call zeroext i1 @__kasan_check_write(ptr noundef %pr_res_holders17, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %pr_res_holders17, i32 1, i32 3, i32 1) #15
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pr_res_holders17, ptr %pr_res_holders17, i32 1, ptr elementtype(i32) %pr_res_holders17) #15, !srcloc !554
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !555
  br label %cleanup

for.inc:                                          ; preds = %if.end13.for.inc_crit_edge, %if.end10.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn53, %registration_list
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end16, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %pr_reg.052, %if.end16 ], [ %pr_reg.052, %if.then8 ], [ null, %entry.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %registration_lock) #15
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atomic_dec_mb(ptr noundef %v) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !542
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %v, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %v, i32 1, i32 3, i32 1) #15
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %v, ptr %v, i32 1, ptr elementtype(i32) %v) #15, !srcloc !543
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !544
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @target_nacl_find_deve(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__core_scsi3_add_registration(ptr noundef %dev, ptr noundef %nacl, ptr noundef %pr_reg, i32 noundef %register_type, i32 noundef %register_move) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %se_tpg = getelementptr inbounds %struct.se_node_acl, ptr %nacl, i32 0, i32 10
  %0 = ptrtoint ptr %se_tpg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_tpg, align 4
  %se_tpg_tfo = getelementptr inbounds %struct.se_portal_group, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %se_tpg_tfo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %se_tpg_tfo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %register_move)
  %tobool.not = icmp eq i32 %register_move, 0
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %pr_generation = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 38, i32 2
  %4 = ptrtoint ptr %pr_generation to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pr_generation, align 8
  %inc = add i32 %5, 1
  store i32 %inc, ptr %pr_generation, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %dev_reservation_lock.i = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 20
  tail call void @_raw_spin_lock(ptr noundef %dev_reservation_lock.i) #15
  %pr_generation.i = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 38, i32 2
  %6 = ptrtoint ptr %pr_generation.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pr_generation.i, align 8
  %inc.i = add i32 %7, 1
  store i32 %inc.i, ptr %pr_generation.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %dev_reservation_lock.i) #15
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %5, %cond.true ], [ %7, %cond.false ]
  %pr_res_generation = getelementptr inbounds %struct.t10_pr_registration, ptr %pr_reg, i32 0, i32 14
  %8 = ptrtoint ptr %pr_res_generation to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cond, ptr %pr_res_generation, align 4
  %registration_lock = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 38, i32 3
  tail call void @_raw_spin_lock(ptr noundef %registration_lock) #15
  %pr_reg_list = getelementptr inbounds %struct.t10_pr_registration, ptr %pr_reg, i32 0, i32 20
  %registration_list = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 38, i32 6
  %prev.i = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 38, i32 6, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %pr_reg_list, ptr noundef %10, ptr noundef %registration_list) #15
  br i1 %call.i.i, label %if.end.i.i, label %cond.end.list_add_tail.exit_crit_edge

cond.end.list_add_tail.exit_crit_edge:            ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %pr_reg_list, ptr %prev.i, align 4
  %12 = ptrtoint ptr %pr_reg_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %registration_list, ptr %pr_reg_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.t10_pr_registration, ptr %pr_reg, i32 0, i32 20, i32 1
  %13 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev3.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %pr_reg_list, ptr %10, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %cond.end.list_add_tail.exit_crit_edge
  tail call fastcc void @__core_scsi3_dump_registration(ptr noundef %3, ptr noundef %dev, ptr noundef %nacl, ptr noundef %pr_reg, i32 noundef %register_type)
  tail call void @_raw_spin_unlock(ptr noundef %registration_lock) #15
  %pr_reg_all_tg_pt = getelementptr inbounds %struct.t10_pr_registration, ptr %pr_reg, i32 0, i32 5
  %15 = ptrtoint ptr %pr_reg_all_tg_pt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pr_reg_all_tg_pt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool3.not = icmp ne i32 %16, 0
  %17 = and i1 %tobool.not, %tobool3.not
  br i1 %17, label %if.end, label %list_add_tail.exit.out_crit_edge

list_add_tail.exit.out_crit_edge:                 ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %list_add_tail.exit
  %pr_reg_atp_list = getelementptr inbounds %struct.t10_pr_registration, ptr %pr_reg, i32 0, i32 23
  %18 = ptrtoint ptr %pr_reg_atp_list to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pr_reg_atp_list, align 4
  %cmp.not115 = icmp eq ptr %19, %pr_reg_atp_list
  br i1 %cmp.not115, label %if.end.out_crit_edge, label %for.body.lr.ph

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

for.body.lr.ph:                                   ; preds = %if.end
  %dev_reservation_lock.i85 = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 20
  %pr_generation.i86 = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 38, i32 2
  br label %for.body

for.body:                                         ; preds = %rcu_read_unlock.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn.in116 = phi ptr [ %19, %for.body.lr.ph ], [ %.pn118, %rcu_read_unlock.exit.for.body_crit_edge ]
  %20 = ptrtoint ptr %.pn.in116 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn118 = load ptr, ptr %.pn.in116, align 4
  %pr_reg_tmp.0 = getelementptr i8, ptr %.pn.in116, i32 -644
  %pr_reg_nacl = getelementptr i8, ptr %.pn.in116, i32 -40
  %21 = ptrtoint ptr %pr_reg_nacl to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pr_reg_nacl, align 4
  %call.i.i82 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in116) #15
  br i1 %call.i.i82, label %if.end.i.i83, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i83:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in116, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i, align 4
  %25 = ptrtoint ptr %.pn.in116 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %.pn.in116, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i83, %for.body.list_del.exit_crit_edge
  %29 = ptrtoint ptr %.pn.in116 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in116, align 4
  %prev.i84 = getelementptr inbounds %struct.list_head, ptr %.pn.in116, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i84 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i84, align 4
  tail call void @_raw_spin_lock(ptr noundef %dev_reservation_lock.i85) #15
  %31 = ptrtoint ptr %pr_generation.i86 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pr_generation.i86, align 8
  %inc.i87 = add i32 %32, 1
  store i32 %inc.i87, ptr %pr_generation.i86, align 8
  tail call void @_raw_spin_unlock(ptr noundef %dev_reservation_lock.i85) #15
  %pr_res_generation13 = getelementptr i8, ptr %.pn.in116, i32 -64
  %33 = ptrtoint ptr %pr_res_generation13 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %pr_res_generation13, align 4
  tail call void @_raw_spin_lock(ptr noundef %registration_lock) #15
  %pr_reg_list15 = getelementptr i8, ptr %.pn.in116, i32 -32
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i, align 4
  %call.i.i89 = tail call zeroext i1 @__list_add_valid(ptr noundef %pr_reg_list15, ptr noundef %35, ptr noundef %registration_list) #15
  br i1 %call.i.i89, label %if.end.i.i91, label %list_del.exit.list_add_tail.exit92_crit_edge

list_del.exit.list_add_tail.exit92_crit_edge:     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit92

if.end.i.i91:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  %36 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %pr_reg_list15, ptr %prev.i, align 4
  %37 = ptrtoint ptr %pr_reg_list15 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %registration_list, ptr %pr_reg_list15, align 4
  %prev3.i.i90 = getelementptr i8, ptr %.pn.in116, i32 -28
  %38 = ptrtoint ptr %prev3.i.i90 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev3.i.i90, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %pr_reg_list15, ptr %35, align 4
  br label %list_add_tail.exit92

list_add_tail.exit92:                             ; preds = %if.end.i.i91, %list_del.exit.list_add_tail.exit92_crit_edge
  tail call fastcc void @__core_scsi3_dump_registration(ptr noundef %3, ptr noundef %dev, ptr noundef %22, ptr noundef %pr_reg_tmp.0, i32 noundef %register_type)
  tail call void @_raw_spin_unlock(ptr noundef %registration_lock) #15
  %40 = tail call i32 @llvm.read_register.i32(metadata !530) #15
  %and.i.i.i.i.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %43, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !545
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %list_add_tail.exit92.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

list_add_tail.exit92.rcu_read_lock.exit_crit_edge: ; preds = %list_add_tail.exit92
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %list_add_tail.exit92
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.52, i32 noundef 696, ptr noundef nonnull @.str.53) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %list_add_tail.exit92.rcu_read_lock.exit_crit_edge
  %pr_reg_deve = getelementptr i8, ptr %.pn.in116, i32 -36
  %44 = ptrtoint ptr %pr_reg_deve to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pr_reg_deve, align 8
  %tobool18.not = icmp eq ptr %45, null
  br i1 %tobool18.not, label %rcu_read_lock.exit.if.end21_crit_edge, label %if.then19

rcu_read_lock.exit.if.end21_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21

if.then19:                                        ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  %deve_flags = getelementptr inbounds %struct.se_dev_entry, ptr %45, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 1, ptr noundef %deve_flags) #15
  tail call fastcc void @core_scsi3_lunacl_undepend_item(ptr noundef nonnull %45)
  %46 = ptrtoint ptr %pr_reg_deve to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %pr_reg_deve, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %rcu_read_lock.exit.if.end21_crit_edge
  %call.i93 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i93, label %if.end21.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i96

if.end21.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i96:                                ; preds = %if.end21
  %call1.i94 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i94)
  %tobool.not.i95 = icmp eq i32 %call1.i94, 0
  br i1 %tobool.not.i95, label %land.lhs.true.i96.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i98

land.lhs.true.i96.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i96
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i98:                               ; preds = %land.lhs.true.i96
  %.b4.i97 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i97, label %land.lhs.true2.i98.rcu_read_unlock.exit_crit_edge, label %if.then.i99

land.lhs.true2.i98.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i98
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i99:                                      ; preds = %land.lhs.true2.i98
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.52, i32 noundef 724, ptr noundef nonnull @.str.54) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i99, %land.lhs.true2.i98.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i96.rcu_read_unlock.exit_crit_edge, %if.end21.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !546
  %47 = tail call i32 @llvm.read_register.i32(metadata !530) #15
  %and.i.i.i.i.i100 = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i.i.i100 to ptr
  %preempt_count.i.i.i.i101 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %preempt_count.i.i.i.i101 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %preempt_count.i.i.i.i101, align 4
  %sub.i.i.i = add i32 %50, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i101, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  %cmp.not = icmp eq ptr %.pn118, %pr_reg_atp_list
  br i1 %cmp.not, label %rcu_read_unlock.exit.out_crit_edge, label %rcu_read_unlock.exit.for.body_crit_edge

rcu_read_unlock.exit.for.body_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

rcu_read_unlock.exit.out_crit_edge:               ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

out:                                              ; preds = %rcu_read_unlock.exit.out_crit_edge, %if.end.out_crit_edge, %list_add_tail.exit.out_crit_edge
  %51 = tail call i32 @llvm.read_register.i32(metadata !530) #15
  %and.i.i.i.i.i71 = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i.i.i71 to ptr
  %preempt_count.i.i.i.i72 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %preempt_count.i.i.i.i72 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %preempt_count.i.i.i.i72, align 4
  %add.i.i.i73 = add i32 %54, 1
  store volatile i32 %add.i.i.i73, ptr %preempt_count.i.i.i.i72, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !545
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i74 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i74, label %out.rcu_read_lock.exit81_crit_edge, label %land.lhs.true.i77

out.rcu_read_lock.exit81_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit81

land.lhs.true.i77:                                ; preds = %out
  %call1.i75 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i75)
  %tobool.not.i76 = icmp eq i32 %call1.i75, 0
  br i1 %tobool.not.i76, label %land.lhs.true.i77.rcu_read_lock.exit81_crit_edge, label %land.lhs.true2.i79

land.lhs.true.i77.rcu_read_lock.exit81_crit_edge: ; preds = %land.lhs.true.i77
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit81

land.lhs.true2.i79:                               ; preds = %land.lhs.true.i77
  %.b4.i78 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i78, label %land.lhs.true2.i79.rcu_read_lock.exit81_crit_edge, label %if.then.i80

land.lhs.true2.i79.rcu_read_lock.exit81_crit_edge: ; preds = %land.lhs.true2.i79
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit81

if.then.i80:                                      ; preds = %land.lhs.true2.i79
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.52, i32 noundef 696, ptr noundef nonnull @.str.53) #15
  br label %rcu_read_lock.exit81

rcu_read_lock.exit81:                             ; preds = %if.then.i80, %land.lhs.true2.i79.rcu_read_lock.exit81_crit_edge, %land.lhs.true.i77.rcu_read_lock.exit81_crit_edge, %out.rcu_read_lock.exit81_crit_edge
  %pr_reg_deve27 = getelementptr inbounds %struct.t10_pr_registration, ptr %pr_reg, i32 0, i32 19
  %55 = ptrtoint ptr %pr_reg_deve27 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pr_reg_deve27, align 8
  %tobool28.not = icmp eq ptr %56, null
  br i1 %tobool28.not, label %rcu_read_lock.exit81.if.end33_crit_edge, label %if.then29

rcu_read_lock.exit81.if.end33_crit_edge:          ; preds = %rcu_read_lock.exit81
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

if.then29:                                        ; preds = %rcu_read_lock.exit81
  %deve_flags30 = getelementptr inbounds %struct.se_dev_entry, ptr %56, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 1, ptr noundef %deve_flags30) #15
  %pr_kref = getelementptr inbounds %struct.se_dev_entry, ptr %56, i32 0, i32 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pr_kref, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !556
  tail call void @llvm.prefetch.p0(ptr %pr_kref, i32 1, i32 3, i32 1) #15
  %57 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pr_kref, ptr %pr_kref, i32 1, ptr elementtype(i32) %pr_kref) #15, !srcloc !557
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %57, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i102, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !549

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %pr_kref, i32 noundef 3) #15
  br label %kref_put.exit

if.then.i102:                                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !558
  tail call void @target_pr_kref_release(ptr noundef %pr_kref) #15
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i102, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  %58 = ptrtoint ptr %pr_reg_deve27 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %pr_reg_deve27, align 8
  br label %if.end33

if.end33:                                         ; preds = %kref_put.exit, %rcu_read_lock.exit81.if.end33_crit_edge
  %call.i103 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i103, label %if.end33.rcu_read_unlock.exit113_crit_edge, label %land.lhs.true.i106

if.end33.rcu_read_unlock.exit113_crit_edge:       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit113

land.lhs.true.i106:                               ; preds = %if.end33
  %call1.i104 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i104)
  %tobool.not.i105 = icmp eq i32 %call1.i104, 0
  br i1 %tobool.not.i105, label %land.lhs.true.i106.rcu_read_unlock.exit113_crit_edge, label %land.lhs.true2.i108

land.lhs.true.i106.rcu_read_unlock.exit113_crit_edge: ; preds = %land.lhs.true.i106
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit113

land.lhs.true2.i108:                              ; preds = %land.lhs.true.i106
  %.b4.i107 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i107, label %land.lhs.true2.i108.rcu_read_unlock.exit113_crit_edge, label %if.then.i109

land.lhs.true2.i108.rcu_read_unlock.exit113_crit_edge: ; preds = %land.lhs.true2.i108
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit113

if.then.i109:                                     ; preds = %land.lhs.true2.i108
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.52, i32 noundef 724, ptr noundef nonnull @.str.54) #15
  br label %rcu_read_unlock.exit113

rcu_read_unlock.exit113:                          ; preds = %if.then.i109, %land.lhs.true2.i108.rcu_read_unlock.exit113_crit_edge, %land.lhs.true.i106.rcu_read_unlock.exit113_crit_edge, %if.end33.rcu_read_unlock.exit113_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !546
  %59 = tail call i32 @llvm.read_register.i32(metadata !530) #15
  %and.i.i.i.i.i110 = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i.i.i.i110 to ptr
  %preempt_count.i.i.i.i111 = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %preempt_count.i.i.i.i111 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %preempt_count.i.i.i.i111, align 4
  %sub.i.i.i112 = add i32 %62, -1
  store volatile i32 %sub.i.i.i112, ptr %preempt_count.i.i.i.i111, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @core_scsi3_aptpl_reserve(ptr noundef %dev, ptr nocapture noundef readonly %tpg, ptr noundef %node_acl, ptr noundef %pr_reg) unnamed_addr #3 align 64 {
entry:
  %i_buf = alloca [21 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %i_buf) #15
  %0 = call ptr @memset(ptr %i_buf, i32 0, i32 21)
  %isid_present_at_reg.i = getelementptr inbounds %struct.t10_pr_registration, ptr %pr_reg, i32 0, i32 10
  %1 = ptrtoint ptr %isid_present_at_reg.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %isid_present_at_reg.i, align 8, !range !540
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %entry.core_pr_dump_initiator_port.exit_crit_edge, label %if.end.i

entry.core_pr_dump_initiator_port.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %core_pr_dump_initiator_port.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %i_buf, i32 noundef 21, ptr noundef nonnull @.str, ptr noundef %pr_reg) #15
  br label %core_pr_dump_initiator_port.exit

core_pr_dump_initiator_port.exit:                 ; preds = %if.end.i, %entry.core_pr_dump_initiator_port.exit_crit_edge
  %dev_reservation_lock = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 20
  tail call void @_raw_spin_lock(ptr noundef %dev_reservation_lock) #15
  %dev_pr_res_holder = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 28
  %3 = ptrtoint ptr %dev_pr_res_holder to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %pr_reg, ptr %dev_pr_res_holder, align 4
  tail call void @_raw_spin_unlock(ptr noundef %dev_reservation_lock) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @core_scsi3_aptpl_reserve.__UNIQUE_ID_ddebug219, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@core_scsi3_aptpl_reserve, %if.then)) #15
          to label %do.body6 [label %if.then], !srcloc !541

if.then:                                          ; preds = %core_pr_dump_initiator_port.exit
  %se_tpg_tfo = getelementptr inbounds %struct.se_portal_group, ptr %tpg, i32 0, i32 10
  %4 = ptrtoint ptr %se_tpg_tfo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %se_tpg_tfo, align 4
  %fabric_name = getelementptr inbounds %struct.target_core_fabric_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %fabric_name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fabric_name, align 4
  %pr_res_type = getelementptr inbounds %struct.t10_pr_registration, ptr %pr_reg, i32 0, i32 8
  %8 = ptrtoint ptr %pr_res_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pr_res_type, align 8
  %switch.tableidx = add i32 %9, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %10 = icmp ult i32 %switch.tableidx, 8
  br i1 %10, label %switch.lookup, label %if.then.core_scsi3_pr_dump_type.exit_crit_edge

if.then.core_scsi3_pr_dump_type.exit_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %core_scsi3_pr_dump_type.exit

switch.lookup:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep = getelementptr inbounds [8 x ptr], ptr @switch.table.core_scsi3_aptpl_reserve, i32 0, i32 %switch.tableidx
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %core_scsi3_pr_dump_type.exit

core_scsi3_pr_dump_type.exit:                     ; preds = %switch.lookup, %if.then.core_scsi3_pr_dump_type.exit_crit_edge
  %retval.0.i35 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.32, %if.then.core_scsi3_pr_dump_type.exit_crit_edge ]
  %pr_reg_all_tg_pt = getelementptr inbounds %struct.t10_pr_registration, ptr %pr_reg, i32 0, i32 5
  %12 = ptrtoint ptr %pr_reg_all_tg_pt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pr_reg_all_tg_pt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool5.not = icmp ne i32 %13, 0
  %cond = zext i1 %tobool5.not to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @core_scsi3_aptpl_reserve.__UNIQUE_ID_ddebug219, ptr noundef nonnull @.str.66, ptr noundef %7, ptr noundef nonnull %retval.0.i35, i32 noundef %cond) #15
  br label %do.body6

do.body6:                                         ; preds = %core_scsi3_pr_dump_type.exit, %core_pr_dump_initiator_port.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @core_scsi3_aptpl_reserve.__UNIQUE_ID_ddebug220, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@core_scsi3_aptpl_reserve, %if.then18)) #15
          to label %do.end25 [label %if.then18], !srcloc !541

if.then18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #17
  %se_tpg_tfo19 = getelementptr inbounds %struct.se_portal_group, ptr %tpg, i32 0, i32 10
  %14 = ptrtoint ptr %se_tpg_tfo19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %se_tpg_tfo19, align 4
  %fabric_name20 = getelementptr inbounds %struct.target_core_fabric_ops, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %fabric_name20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fabric_name20, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @core_scsi3_aptpl_reserve.__UNIQUE_ID_ddebug220, ptr noundef nonnull @.str.67, ptr noundef %17, ptr noundef %node_acl, ptr noundef nonnull %i_buf) #15
  br label %do.end25

do.end25:                                         ; preds = %if.then18, %do.body6
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %i_buf) #15
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__core_scsi3_dump_registration(ptr nocapture noundef readonly %tfo, ptr nocapture noundef readonly %dev, ptr noundef %nacl, ptr noundef %pr_reg, i32 noundef %register_type) unnamed_addr #3 align 64 {
entry:
  %i_buf = alloca [21 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %se_tpg1 = getelementptr inbounds %struct.se_node_acl, ptr %nacl, i32 0, i32 10
  %0 = ptrtoint ptr %se_tpg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_tpg1, align 4
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %i_buf) #15
  %2 = call ptr @memset(ptr %i_buf, i32 0, i32 21)
  %isid_present_at_reg.i = getelementptr inbounds %struct.t10_pr_registration, ptr %pr_reg, i32 0, i32 10
  %3 = ptrtoint ptr %isid_present_at_reg.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %isid_present_at_reg.i, align 8, !range !540
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %entry.core_pr_dump_initiator_port.exit_crit_edge, label %if.end.i

entry.core_pr_dump_initiator_port.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %core_pr_dump_initiator_port.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %i_buf, i32 noundef 21, ptr noundef nonnull @.str, ptr noundef %pr_reg) #15
  br label %core_pr_dump_initiator_port.exit

core_pr_dump_initiator_port.exit:                 ; preds = %if.end.i, %entry.core_pr_dump_initiator_port.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__core_scsi3_dump_registration.__UNIQUE_ID_ddebug221, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__core_scsi3_dump_registration, %if.then)) #15
          to label %do.body8 [label %if.then], !srcloc !541

if.then:                                          ; preds = %core_pr_dump_initiator_port.exit
  call void @__sanitizer_cov_trace_pc() #17
  %fabric_name = getelementptr inbounds %struct.target_core_fabric_ops, ptr %tfo, i32 0, i32 2
  %5 = ptrtoint ptr %fabric_name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fabric_name, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %register_type)
  %cmp = icmp eq i32 %register_type, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %register_type)
  %cmp4 = icmp eq i32 %register_type, 1
  %cond = select i1 %cmp4, ptr @.str.58, ptr @.str.25
  %cond5 = select i1 %cmp, ptr @.str.57, ptr %cond
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__core_scsi3_dump_registration.__UNIQUE_ID_ddebug221, ptr noundef nonnull @.str.56, ptr noundef %6, ptr noundef nonnull %cond5, ptr noundef %nacl, ptr noundef nonnull %i_buf) #15
  br label %do.body8

do.body8:                                         ; preds = %if.then, %core_pr_dump_initiator_port.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__core_scsi3_dump_registration.__UNIQUE_ID_ddebug222, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__core_scsi3_dump_registration, %if.then20)) #15
          to label %do.body27 [label %if.then20], !srcloc !541

if.then20:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #17
  %fabric_name21 = getelementptr inbounds %struct.target_core_fabric_ops, ptr %tfo, i32 0, i32 2
  %7 = ptrtoint ptr %fabric_name21 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fabric_name21, align 4
  %tpg_get_wwn = getelementptr inbounds %struct.target_core_fabric_ops, ptr %tfo, i32 0, i32 5
  %9 = ptrtoint ptr %tpg_get_wwn to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tpg_get_wwn, align 4
  %call22 = call ptr %10(ptr noundef %1) #15
  %tpg_get_tag = getelementptr inbounds %struct.target_core_fabric_ops, ptr %tfo, i32 0, i32 6
  %11 = ptrtoint ptr %tpg_get_tag to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tpg_get_tag, align 4
  %call23 = call zeroext i16 %12(ptr noundef %1) #15
  %conv = zext i16 %call23 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__core_scsi3_dump_registration.__UNIQUE_ID_ddebug222, ptr noundef nonnull @.str.59, ptr noundef %8, ptr noundef %call22, i32 noundef %conv) #15
  br label %do.body27

do.body27:                                        ; preds = %if.then20, %do.body8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__core_scsi3_dump_registration.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__core_scsi3_dump_registration, %if.then39)) #15
          to label %do.body47 [label %if.then39], !srcloc !541

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #17
  %fabric_name40 = getelementptr inbounds %struct.target_core_fabric_ops, ptr %tfo, i32 0, i32 2
  %13 = ptrtoint ptr %fabric_name40 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fabric_name40, align 4
  %pr_reg_all_tg_pt = getelementptr inbounds %struct.t10_pr_registration, ptr %pr_reg, i32 0, i32 5
  %15 = ptrtoint ptr %pr_reg_all_tg_pt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pr_reg_all_tg_pt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool41.not = icmp eq i32 %16, 0
  %cond42 = select i1 %tobool41.not, ptr @.str.62, ptr @.str.61
  %transport = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 46
  %17 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %transport, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__core_scsi3_dump_registration.__UNIQUE_ID_ddebug223, ptr noundef nonnull @.str.60, ptr noundef %14, ptr noundef nonnull %cond42, ptr noundef %18) #15
  br label %do.body47

do.body47:                                        ; preds = %if.then39, %do.body27
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__core_scsi3_dump_registration.__UNIQUE_ID_ddebug224, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__core_scsi3_dump_registration, %if.then59)) #15
          to label %do.end63 [label %if.then59], !srcloc !541

if.then59:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #17
  %fabric_name60 = getelementptr inbounds %struct.target_core_fabric_ops, ptr %tfo, i32 0, i32 2
  %19 = ptrtoint ptr %fabric_name60 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fabric_name60, align 4
  %pr_res_key = getelementptr inbounds %struct.t10_pr_registration, ptr %pr_reg, i32 0, i32 16
  %21 = ptrtoint ptr %pr_res_key to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %pr_res_key, align 8
  %pr_res_generation = getelementptr inbounds %struct.t10_pr_registration, ptr %pr_reg, i32 0, i32 14
  %23 = ptrtoint ptr %pr_res_generation to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pr_res_generation, align 4
  %pr_reg_aptpl = getelementptr inbounds %struct.t10_pr_registration, ptr %pr_reg, i32 0, i32 6
  %25 = ptrtoint ptr %pr_reg_aptpl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pr_reg_aptpl, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__core_scsi3_dump_registration.__UNIQUE_ID_ddebug224, ptr noundef nonnull @.str.63, ptr noundef %20, i64 noundef %22, i32 noundef %24, i32 noundef %26) #15
  br label %do.end63

do.end63:                                         ; preds = %if.then59, %do.body47
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %i_buf) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @core_scsi3_lunacl_undepend_item(ptr noundef %se_deve) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %se_lun_acl = getelementptr inbounds %struct.se_dev_entry, ptr %se_deve, i32 0, i32 10
  %0 = ptrtoint ptr %se_lun_acl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %se_lun_acl, align 8
  %pr_kref = getelementptr inbounds %struct.se_dev_entry, ptr %se_deve, i32 0, i32 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pr_kref, i32 noundef 4) #15
  %2 = ptrtoint ptr %pr_kref to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %pr_kref, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.do.end8_crit_edge

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end8

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %lor.lhs.false.do.end8_crit_edge

lor.lhs.false.do.end8_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end8

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b21 = load i1, ptr @core_scsi3_lunacl_undepend_item.__warned, align 1
  br i1 %.b21, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @core_scsi3_lunacl_undepend_item.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1461, ptr noundef nonnull @.str.64) #15
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %lor.lhs.false.do.end8_crit_edge, %entry.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %1, null
  br i1 %tobool10.not, label %if.then11, label %if.end14

if.then11:                                        ; preds = %do.end8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pr_kref, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !556
  tail call void @llvm.prefetch.p0(ptr %pr_kref, i32 1, i32 3, i32 1) #15
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pr_kref, ptr %pr_kref, i32 1, ptr elementtype(i32) %pr_kref) #15, !srcloc !557
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !549

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %pr_kref, i32 noundef 3) #15
  br label %cleanup

if.then.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !558
  tail call void @target_pr_kref_release(ptr noundef %pr_kref) #15
  br label %cleanup

if.end14:                                         ; preds = %do.end8
  %se_lun_group = getelementptr inbounds %struct.se_lun_acl, ptr %1, i32 0, i32 3
  tail call void @target_undepend_item(ptr noundef %se_lun_group) #15
  %call.i.i.i.i.i.i22 = tail call zeroext i1 @__kasan_check_write(ptr noundef %pr_kref, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !556
  tail call void @llvm.prefetch.p0(ptr %pr_kref, i32 1, i32 3, i32 1) #15
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pr_kref, ptr %pr_kref, i32 1, ptr elementtype(i32) %pr_kref) #15, !srcloc !557
  %asmresult.i.i.i.i.i.i.i23 = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i23)
  %cmp.i.i.i.i24 = icmp eq i32 %asmresult.i.i.i.i.i.i.i23, 1
  br i1 %cmp.i.i.i.i24, label %if.then.i28, label %if.end5.i.i.i.i26

if.end5.i.i.i.i26:                                ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i23)
  %.not.i.i.i.i25 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i23, 0
  br i1 %.not.i.i.i.i25, label %if.end5.i.i.i.i26.cleanup_crit_edge, label %if.then10.i.i.i.i27, !prof !549

if.end5.i.i.i.i26.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i26
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.i.i.i.i27:                              ; preds = %if.end5.i.i.i.i26
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %pr_kref, i32 noundef 3) #15
  br label %cleanup

if.then.i28:                                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !558
  tail call void @target_pr_kref_release(ptr noundef %pr_kref) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i28, %if.then10.i.i.i.i27, %if.end5.i.i.i.i26.cleanup_crit_edge, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kref_put(ptr noundef %kref) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !556
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #15
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #15, !srcloc !557
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.return_crit_edge, label %if.then10.i.i.i, !prof !549

if.end5.i.i.i.return_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #15
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !558
  tail call void @target_pr_kref_release(ptr noundef %kref) #15
  br label %return

return:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_pr_kref_release(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_undepend_item(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @core_scsi3_decode_spec_i_port(ptr noundef %cmd, ptr noundef %tpg, ptr noundef %l_isid, i64 noundef %sa_res_key, i32 noundef %all_tg_pt, i32 noundef %aptpl) unnamed_addr #3 align 64 {
entry:
  %tid_dest_list = alloca %struct.list_head, align 4
  %iport_ptr = alloca ptr, align 4
  %i_buf = alloca [21 x i8], align 1
  %tid_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %se_dev = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 19
  %0 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_dev, align 4
  %se_sess1 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 21
  %2 = ptrtoint ptr %se_sess1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %se_sess1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tid_dest_list) #15
  %4 = getelementptr inbounds %struct.list_head, ptr %tid_dest_list, i32 0, i32 1
  %5 = ptrtoint ptr %tid_dest_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %tid_dest_list, ptr %tid_dest_list, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %tid_dest_list, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iport_ptr) #15
  %7 = ptrtoint ptr %iport_ptr to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %iport_ptr, align 4
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %i_buf) #15
  %8 = call ptr @memset(ptr %i_buf, i32 255, i32 21)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tid_len) #15
  %9 = ptrtoint ptr %tid_len to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %tid_len, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 24) #21
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102) #18
  br label %cleanup374

if.end:                                           ; preds = %entry
  %dest_list = getelementptr inbounds %struct.pr_transport_id_holder, ptr %call7.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %dest_list to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %dest_list, ptr %dest_list, align 8
  %prev.i = getelementptr inbounds %struct.pr_transport_id_holder, ptr %call7.i.i, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dest_list, ptr %prev.i, align 4
  %dest_tpg3 = getelementptr inbounds %struct.pr_transport_id_holder, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %dest_tpg3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %tpg, ptr %dest_tpg3, align 4
  %se_node_acl = getelementptr inbounds %struct.se_session, ptr %3, i32 0, i32 4
  %14 = ptrtoint ptr %se_node_acl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %se_node_acl, align 8
  %dest_node_acl4 = getelementptr inbounds %struct.pr_transport_id_holder, ptr %call7.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %dest_node_acl4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %dest_node_acl4, align 8
  %17 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %se_dev, align 4
  %19 = load ptr, ptr %se_node_acl, align 8
  %se_lun = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 20
  %20 = ptrtoint ptr %se_lun to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %se_lun, align 8
  %orig_fe_lun = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 14
  %22 = ptrtoint ptr %orig_fe_lun to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %orig_fe_lun, align 8
  %call7 = call fastcc ptr @__core_scsi3_alloc_registration(ptr noundef %18, ptr noundef %19, ptr noundef %21, ptr noundef null, i64 noundef %23, ptr noundef %l_isid, i64 noundef %sa_res_key, i32 noundef %all_tg_pt, i32 noundef %aptpl)
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %cleanup374

if.end10:                                         ; preds = %if.end
  %pr_reg_deve = getelementptr inbounds %struct.t10_pr_registration, ptr %call7, i32 0, i32 19
  %24 = ptrtoint ptr %pr_reg_deve to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pr_reg_deve, align 8
  %se_lun_acl.i = getelementptr inbounds %struct.se_dev_entry, ptr %25, i32 0, i32 10
  %26 = ptrtoint ptr %se_lun_acl.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %se_lun_acl.i, align 8
  %pr_kref.i = getelementptr inbounds %struct.se_dev_entry, ptr %25, i32 0, i32 8
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %pr_kref.i, i32 noundef 4) #15
  %28 = ptrtoint ptr %pr_kref.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %pr_kref.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.not.i = icmp eq i32 %29, 0
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end10.do.end8.i_crit_edge

if.end10.do.end8.i_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end8.i

lor.lhs.false.i:                                  ; preds = %if.end10
  %call2.i = call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.do.end8.i_crit_edge

lor.lhs.false.i.do.end8.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end8.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call3.i = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.do.end8.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.do.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end8.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b16.i = load i1, ptr @core_scsi3_lunacl_depend_item.__warned, align 1
  br i1 %.b16.i, label %land.lhs.true5.i.do.end8.i_crit_edge, label %if.then.i

land.lhs.true5.i.do.end8.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end8.i

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @core_scsi3_lunacl_depend_item.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1446, ptr noundef nonnull @.str.64) #15
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then.i, %land.lhs.true5.i.do.end8.i_crit_edge, %land.lhs.true.i.do.end8.i_crit_edge, %lor.lhs.false.i.do.end8.i_crit_edge, %if.end10.do.end8.i_crit_edge
  %tobool10.not.i = icmp eq ptr %27, null
  br i1 %tobool10.not.i, label %do.end8.i.if.end16_crit_edge, label %core_scsi3_lunacl_depend_item.exit

do.end8.i.if.end16_crit_edge:                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

core_scsi3_lunacl_depend_item.exit:               ; preds = %do.end8.i
  %se_lun_group.i = getelementptr inbounds %struct.se_lun_acl, ptr %27, i32 0, i32 3
  %call13.i = call i32 @target_depend_item(ptr noundef %se_lun_group.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool12.not = icmp eq i32 %call13.i, 0
  br i1 %tobool12.not, label %core_scsi3_lunacl_depend_item.exit.if.end16_crit_edge, label %if.then13

core_scsi3_lunacl_depend_item.exit.if.end16_crit_edge: ; preds = %core_scsi3_lunacl_depend_item.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

if.then13:                                        ; preds = %core_scsi3_lunacl_depend_item.exit
  call void @kfree(ptr noundef nonnull %call7.i.i) #15
  %30 = ptrtoint ptr %pr_reg_deve to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pr_reg_deve, align 8
  %pr_kref = getelementptr inbounds %struct.se_dev_entry, ptr %31, i32 0, i32 8
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %pr_kref, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !556
  call void @llvm.prefetch.p0(ptr %pr_kref, i32 1, i32 3, i32 1) #15
  %32 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pr_kref, ptr %pr_kref, i32 1, ptr elementtype(i32) %pr_kref) #15, !srcloc !557
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i578, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !549

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @refcount_warn_saturate(ptr noundef %pr_kref, i32 noundef 3) #15
  br label %kref_put.exit

if.then.i578:                                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !558
  call void @target_pr_kref_release(ptr noundef %pr_kref) #15
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i578, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @t10_pr_reg_cache to i32))
  %33 = load ptr, ptr @t10_pr_reg_cache, align 4
  call void @kmem_cache_free(ptr noundef %33, ptr noundef nonnull %call7) #15
  br label %cleanup374

if.end16:                                         ; preds = %core_scsi3_lunacl_depend_item.exit.if.end16_crit_edge, %do.end8.i.if.end16_crit_edge
  %34 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call7, ptr %call7.i.i, align 8
  %35 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %4, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %dest_list, ptr noundef %36, ptr noundef nonnull %tid_dest_list) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.end16.list_add_tail.exit_crit_edge

if.end16.list_add_tail.exit_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  %37 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %dest_list, ptr %4, align 4
  %38 = ptrtoint ptr %dest_list to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %tid_dest_list, ptr %dest_list, align 8
  %39 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev.i, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %dest_list, ptr %36, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end16.list_add_tail.exit_crit_edge
  %data_length = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 12
  %41 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %data_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %42)
  %cmp = icmp ult i32 %42, 28
  br i1 %cmp, label %do.end22, label %if.end26

do.end22:                                         ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %42) #18
  br label %out

if.end26:                                         ; preds = %list_add_tail.exit
  %call27 = call ptr @transport_kmap_data_sg(ptr noundef %cmd) #15
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %if.end26.out_crit_edge, label %if.end30

if.end26.out_crit_edge:                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end30:                                         ; preds = %if.end26
  %arrayidx = getelementptr i8, ptr %call27, i32 24
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %arrayidx, align 1
  %add = add i32 %44, 28
  %45 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %data_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %46)
  %cmp33.not = icmp eq i32 %add, %46
  br i1 %cmp33.not, label %if.end41, label %do.end37

do.end37:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  %call40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, i32 noundef %44, i32 noundef %46) #18
  br label %out_unmap

if.end41:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp43.not848 = icmp eq i32 %44, 0
  br i1 %cmp43.not848, label %if.end41.while.end_crit_edge, label %while.body.lr.ph

if.end41.while.end_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end41
  %arrayidx42 = getelementptr i8, ptr %call27, i32 28
  %se_port_lock = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 22
  %dev_sep_list = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 29
  %se_tpg_tfo = getelementptr inbounds %struct.se_portal_group, ptr %tpg, i32 0, i32 10
  %enforce_pr_isids = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 15
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %ptr.0850 = phi ptr [ %arrayidx42, %while.body.lr.ph ], [ %ptr.1, %cleanup.while.body_crit_edge ]
  %tpdl.0849 = phi i32 [ %44, %while.body.lr.ph ], [ %tpdl.1, %cleanup.while.body_crit_edge ]
  %47 = ptrtoint ptr %ptr.0850 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %ptr.0850, align 1
  call void @_raw_spin_lock(ptr noundef %se_port_lock) #15
  %49 = ptrtoint ptr %dev_sep_list to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pn563843 = load ptr, ptr %dev_sep_list, align 8
  %cmp49.not844 = icmp eq ptr %.pn563843, %dev_sep_list
  br i1 %cmp49.not844, label %while.body.for.end.thread_crit_edge, label %for.body.lr.ph

while.body.for.end.thread_crit_edge:              ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.thread

for.body.lr.ph:                                   ; preds = %while.body
  %50 = and i8 %48, 15
  %conv51 = zext i8 %50 to i32
  br label %for.body

for.end.thread:                                   ; preds = %for.inc.for.end.thread_crit_edge, %while.body.for.end.thread_crit_edge
  call void @_raw_spin_unlock(ptr noundef %se_port_lock) #15
  br label %do.end127

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn563846 = phi ptr [ %.pn563843, %for.body.lr.ph ], [ %.pn563, %for.inc.for.body_crit_edge ]
  %lun_tpg = getelementptr i8, ptr %.pn563846, i32 -480
  %51 = ptrtoint ptr %lun_tpg to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %lun_tpg, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %conv51)
  %cmp52.not = icmp eq i32 %54, %conv51
  br i1 %cmp52.not, label %if.end55, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end55:                                         ; preds = %for.body
  %lun_rtpi = getelementptr i8, ptr %.pn563846, i32 -704
  %55 = ptrtoint ptr %lun_rtpi to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %lun_rtpi, align 8
  %57 = ptrtoint ptr %iport_ptr to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %iport_ptr, align 4
  %call57 = call ptr @target_parse_pr_out_transport_id(ptr noundef %52, ptr noundef %ptr.0850, ptr noundef nonnull %tid_len, ptr noundef nonnull %iport_ptr) #15
  %tobool58.not = icmp eq ptr %call57, null
  br i1 %tobool58.not, label %if.end55.for.inc_crit_edge, label %if.end60

if.end55.for.inc_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end60:                                         ; preds = %if.end55
  %58 = ptrtoint ptr %se_tpg_tfo to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %se_tpg_tfo, align 4
  %sess_get_initiator_sid = getelementptr inbounds %struct.target_core_fabric_ops, ptr %59, i32 0, i32 19
  %60 = ptrtoint ptr %sess_get_initiator_sid to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sess_get_initiator_sid, align 4
  %tobool61.not = icmp eq ptr %61, null
  br i1 %tobool61.not, label %if.end60.if.end73_crit_edge, label %land.lhs.true

if.end60.if.end73_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end73

land.lhs.true:                                    ; preds = %if.end60
  %62 = ptrtoint ptr %enforce_pr_isids to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %enforce_pr_isids, align 1, !range !540
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool62.not = icmp eq i8 %63, 0
  br i1 %tobool62.not, label %land.lhs.true.if.end73_crit_edge, label %land.lhs.true64

land.lhs.true.if.end73_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end73

land.lhs.true64:                                  ; preds = %land.lhs.true
  %64 = ptrtoint ptr %iport_ptr to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %iport_ptr, align 4
  %tobool65.not = icmp eq ptr %65, null
  br i1 %tobool65.not, label %do.end69, label %land.lhs.true64.if.end73_crit_edge

land.lhs.true64.if.end73_crit_edge:               ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end73

do.end69:                                         ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #17
  %call71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef nonnull %call57) #18
  call void @_raw_spin_unlock(ptr noundef %se_port_lock) #15
  br label %out_unmap

if.end73:                                         ; preds = %land.lhs.true64.if.end73_crit_edge, %land.lhs.true.if.end73_crit_edge, %if.end60.if.end73_crit_edge
  %tpg_pr_ref_count = getelementptr inbounds %struct.se_portal_group, ptr %52, i32 0, i32 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !553
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %tpg_pr_ref_count, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %tpg_pr_ref_count, i32 1, i32 3, i32 1) #15
  %66 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tpg_pr_ref_count, ptr %tpg_pr_ref_count, i32 1, ptr elementtype(i32) %tpg_pr_ref_count) #15, !srcloc !554
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !555
  call void @_raw_spin_unlock(ptr noundef %se_port_lock) #15
  %tpg_group.i = getelementptr inbounds %struct.se_portal_group, ptr %52, i32 0, i32 12
  %call.i = call i32 @target_depend_item(ptr noundef %tpg_group.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool76.not = icmp eq i32 %call.i, 0
  br i1 %tobool76.not, label %if.end84, label %do.end80

do.end80:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #17
  %call82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113) #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !542
  %call.i.i.i580 = call zeroext i1 @__kasan_check_write(ptr noundef %tpg_pr_ref_count, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %tpg_pr_ref_count, i32 1, i32 3, i32 1) #15
  %67 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tpg_pr_ref_count, ptr %tpg_pr_ref_count, i32 1, ptr elementtype(i32) %tpg_pr_ref_count) #15, !srcloc !543
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !544
  br label %out_unmap

if.end84:                                         ; preds = %if.end73
  %acl_node_mutex = getelementptr inbounds %struct.se_portal_group, ptr %52, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %acl_node_mutex, i32 noundef 0) #15
  %call85 = call ptr @__core_tpg_get_initiator_node_acl(ptr noundef %52, ptr noundef nonnull %call57) #15
  %tobool86.not = icmp eq ptr %call85, null
  br i1 %tobool86.not, label %if.then91.critedge, label %if.then87

if.then87:                                        ; preds = %if.end84
  %conv56.le = zext i16 %56 to i32
  %acl_pr_ref_count = getelementptr inbounds %struct.se_node_acl, ptr %call85, i32 0, i32 7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !553
  %call.i.i.i581 = call zeroext i1 @__kasan_check_write(ptr noundef %acl_pr_ref_count, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %acl_pr_ref_count, i32 1, i32 3, i32 1) #15
  %68 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %acl_pr_ref_count, ptr %acl_pr_ref_count, i32 1, ptr elementtype(i32) %acl_pr_ref_count) #15, !srcloc !554
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !555
  call void @mutex_unlock(ptr noundef %acl_node_mutex) #15
  %dynamic_node_acl.i = getelementptr inbounds %struct.se_node_acl, ptr %call85, i32 0, i32 1
  %69 = ptrtoint ptr %dynamic_node_acl.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %dynamic_node_acl.i, align 4, !range !540
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool.not.i582 = icmp eq i8 %70, 0
  br i1 %tobool.not.i582, label %core_scsi3_nodeacl_depend_item.exit, label %if.then87.if.end103_crit_edge

if.then87.if.end103_crit_edge:                    ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end103

core_scsi3_nodeacl_depend_item.exit:              ; preds = %if.then87
  %acl_group.i = getelementptr inbounds %struct.se_node_acl, ptr %call85, i32 0, i32 13
  %call.i583 = call i32 @target_depend_item(ptr noundef %acl_group.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i583)
  %tobool95.not = icmp eq i32 %call.i583, 0
  br i1 %tobool95.not, label %core_scsi3_nodeacl_depend_item.exit.if.end103_crit_edge, label %do.end99

core_scsi3_nodeacl_depend_item.exit.if.end103_crit_edge: ; preds = %core_scsi3_nodeacl_depend_item.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end103

if.then91.critedge:                               ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #17
  call void @mutex_unlock(ptr noundef %acl_node_mutex) #15
  call void @target_undepend_item(ptr noundef %tpg_group.i) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !542
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %tpg_pr_ref_count, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %tpg_pr_ref_count, i32 1, i32 3, i32 1) #15
  %71 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tpg_pr_ref_count, ptr %tpg_pr_ref_count, i32 1, ptr elementtype(i32) %tpg_pr_ref_count) #15, !srcloc !543
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !544
  call void @_raw_spin_lock(ptr noundef %se_port_lock) #15
  br label %for.inc

do.end99:                                         ; preds = %core_scsi3_nodeacl_depend_item.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call101 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116) #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !542
  %call.i.i.i586 = call zeroext i1 @__kasan_check_write(ptr noundef %acl_pr_ref_count, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %acl_pr_ref_count, i32 1, i32 3, i32 1) #15
  %72 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %acl_pr_ref_count, ptr %acl_pr_ref_count, i32 1, ptr elementtype(i32) %acl_pr_ref_count) #15, !srcloc !543
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !544
  call void @target_undepend_item(ptr noundef %tpg_group.i) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !542
  %call.i.i.i.i589 = call zeroext i1 @__kasan_check_write(ptr noundef %tpg_pr_ref_count, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %tpg_pr_ref_count, i32 1, i32 3, i32 1) #15
  %73 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tpg_pr_ref_count, ptr %tpg_pr_ref_count, i32 1, ptr elementtype(i32) %tpg_pr_ref_count) #15, !srcloc !543
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !544
  br label %out_unmap

if.end103:                                        ; preds = %core_scsi3_nodeacl_depend_item.exit.if.end103_crit_edge, %if.then87.if.end103_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @core_scsi3_decode_spec_i_port.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@core_scsi3_decode_spec_i_port, %if.then111)) #15
          to label %for.end [label %if.then111], !srcloc !541

if.then111:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #17
  %se_tpg_tfo112 = getelementptr inbounds %struct.se_portal_group, ptr %52, i32 0, i32 10
  %74 = ptrtoint ptr %se_tpg_tfo112 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %se_tpg_tfo112, align 4
  %fabric_name = getelementptr inbounds %struct.target_core_fabric_ops, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %fabric_name to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %fabric_name, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @core_scsi3_decode_spec_i_port.__UNIQUE_ID_ddebug233, ptr noundef nonnull @.str.118, ptr noundef %77, ptr noundef nonnull %call85, i32 noundef %conv56.le) #15
  br label %for.end

for.inc:                                          ; preds = %if.then91.critedge, %if.end55.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %78 = ptrtoint ptr %.pn563846 to i32
  call void @__asan_load4_noabort(i32 %78)
  %.pn563 = load ptr, ptr %.pn563846, align 8
  %cmp49.not = icmp eq ptr %.pn563, %dev_sep_list
  br i1 %cmp49.not, label %for.inc.for.end.thread_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end.thread_crit_edge:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.thread

for.end:                                          ; preds = %if.then111, %if.end103
  call void @_raw_spin_lock(ptr noundef %se_port_lock) #15
  call void @_raw_spin_unlock(ptr noundef %se_port_lock) #15
  %tobool123.not = icmp eq ptr %52, null
  br i1 %tobool123.not, label %for.end.do.end127_crit_edge, label %do.body131

for.end.do.end127_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end127

do.end127:                                        ; preds = %for.end.do.end127_crit_edge, %for.end.thread
  %call129 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120) #18
  br label %out_unmap

do.body131:                                       ; preds = %for.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @core_scsi3_decode_spec_i_port.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@core_scsi3_decode_spec_i_port, %if.then143)) #15
          to label %do.end149 [label %if.then143], !srcloc !541

if.then143:                                       ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #17
  %se_tpg_tfo144 = getelementptr inbounds %struct.se_portal_group, ptr %52, i32 0, i32 10
  %79 = ptrtoint ptr %se_tpg_tfo144 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %se_tpg_tfo144, align 4
  %fabric_name145 = getelementptr inbounds %struct.target_core_fabric_ops, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %fabric_name145 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %fabric_name145, align 4
  %83 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %data_length, align 4
  %85 = ptrtoint ptr %tid_len to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %tid_len, align 4
  %87 = ptrtoint ptr %iport_ptr to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %iport_ptr, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @core_scsi3_decode_spec_i_port.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.122, ptr noundef %82, i32 noundef %84, i32 noundef %tpdl.0849, i32 noundef %86, ptr noundef nonnull %call57, ptr noundef %88) #15
  br label %do.end149

do.end149:                                        ; preds = %if.then143, %do.body131
  %89 = ptrtoint ptr %tid_len to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %tid_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %90, i32 %tpdl.0849)
  %cmp150 = icmp ugt i32 %90, %tpdl.0849
  br i1 %cmp150, label %do.end155, label %if.end158

do.end155:                                        ; preds = %do.end149
  %call157 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, i32 noundef %90, ptr noundef %ptr.0850) #18
  %91 = ptrtoint ptr %dynamic_node_acl.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %dynamic_node_acl.i, align 4, !range !540
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool.not.i591 = icmp eq i8 %92, 0
  br i1 %tobool.not.i591, label %if.then.i593, label %do.end155.core_scsi3_nodeacl_undepend_item.exit_crit_edge

do.end155.core_scsi3_nodeacl_undepend_item.exit_crit_edge: ; preds = %do.end155
  call void @__sanitizer_cov_trace_pc() #17
  br label %core_scsi3_nodeacl_undepend_item.exit

if.then.i593:                                     ; preds = %do.end155
  call void @__sanitizer_cov_trace_pc() #17
  %acl_group.i592 = getelementptr inbounds %struct.se_node_acl, ptr %call85, i32 0, i32 13
  call void @target_undepend_item(ptr noundef %acl_group.i592) #15
  br label %core_scsi3_nodeacl_undepend_item.exit

core_scsi3_nodeacl_undepend_item.exit:            ; preds = %if.then.i593, %do.end155.core_scsi3_nodeacl_undepend_item.exit_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !542
  %call.i.i.i.i594 = call zeroext i1 @__kasan_check_write(ptr noundef %acl_pr_ref_count, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %acl_pr_ref_count, i32 1, i32 3, i32 1) #15
  %93 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %acl_pr_ref_count, ptr %acl_pr_ref_count, i32 1, ptr elementtype(i32) %acl_pr_ref_count) #15, !srcloc !543
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !544
  call void @target_undepend_item(ptr noundef %tpg_group.i) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !542
  %call.i.i.i.i598 = call zeroext i1 @__kasan_check_write(ptr noundef %tpg_pr_ref_count, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %tpg_pr_ref_count, i32 1, i32 3, i32 1) #15
  %94 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tpg_pr_ref_count, ptr %tpg_pr_ref_count, i32 1, ptr elementtype(i32) %tpg_pr_ref_count) #15, !srcloc !543
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !544
  br label %out_unmap

if.end158:                                        ; preds = %do.end149
  %call160 = call ptr @core_get_se_deve_from_rtpi(ptr noundef nonnull %call85, i16 noundef zeroext %56) #15
  %tobool161.not = icmp eq ptr %call160, null
  br i1 %tobool161.not, label %do.end165, label %if.end170

do.end165:                                        ; preds = %if.end158
  %se_tpg_tfo167 = getelementptr inbounds %struct.se_portal_group, ptr %52, i32 0, i32 10
  %95 = ptrtoint ptr %se_tpg_tfo167 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %se_tpg_tfo167, align 4
  %fabric_name168 = getelementptr inbounds %struct.target_core_fabric_ops, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %fabric_name168 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %fabric_name168, align 4
  %call169 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, ptr noundef %98, i32 noundef %conv56.le) #18
  %99 = ptrtoint ptr %dynamic_node_acl.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %dynamic_node_acl.i, align 4, !range !540
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool.not.i600 = icmp eq i8 %100, 0
  br i1 %tobool.not.i600, label %if.then.i602, label %do.end165.core_scsi3_nodeacl_undepend_item.exit606_crit_edge

do.end165.core_scsi3_nodeacl_undepend_item.exit606_crit_edge: ; preds = %do.end165
  call void @__sanitizer_cov_trace_pc() #17
  br label %core_scsi3_nodeacl_undepend_item.exit606

if.then.i602:                                     ; preds = %do.end165
  call void @__sanitizer_cov_trace_pc() #17
  %acl_group.i601 = getelementptr inbounds %struct.se_node_acl, ptr %call85, i32 0, i32 13
  call void @target_undepend_item(ptr noundef %acl_group.i601) #15
  br label %core_scsi3_nodeacl_undepend_item.exit606

core_scsi3_nodeacl_undepend_item.exit606:         ; preds = %if.then.i602, %do.end165.core_scsi3_nodeacl_undepend_item.exit606_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !542
  %call.i.i.i.i604 = call zeroext i1 @__kasan_check_write(ptr noundef %acl_pr_ref_count, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %acl_pr_ref_count, i32 1, i32 3, i32 1) #15
  %101 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %acl_pr_ref_count, ptr %acl_pr_ref_count, i32 1, ptr elementtype(i32) %acl_pr_ref_count) #15, !srcloc !543
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !544
  call void @target_undepend_item(ptr noundef %tpg_group.i) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !542
  %call.i.i.i.i609 = call zeroext i1 @__kasan_check_write(ptr noundef %tpg_pr_ref_count, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %tpg_pr_ref_count, i32 1, i32 3, i32 1) #15
  %102 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tpg_pr_ref_count, ptr %tpg_pr_ref_count, i32 1, ptr elementtype(i32) %tpg_pr_ref_count) #15, !srcloc !543
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !544
  br label %out_unmap

if.end170:                                        ; preds = %if.end158
  %se_lun_acl.i610 = getelementptr inbounds %struct.se_dev_entry, ptr %call160, i32 0, i32 10
  %103 = ptrtoint ptr %se_lun_acl.i610 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile ptr, ptr %se_lun_acl.i610, align 8
  %pr_kref.i611 = getelementptr inbounds %struct.se_dev_entry, ptr %call160, i32 0, i32 8
  %call.i.i.i.i.i612 = call zeroext i1 @__kasan_check_read(ptr noundef %pr_kref.i611, i32 noundef 4) #15
  %105 = ptrtoint ptr %pr_kref.i611 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %pr_kref.i611, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp.not.i613 = icmp eq i32 %106, 0
  br i1 %cmp.not.i613, label %lor.lhs.false.i616, label %if.end170.do.end8.i624_crit_edge

if.end170.do.end8.i624_crit_edge:                 ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end8.i624

lor.lhs.false.i616:                               ; preds = %if.end170
  %call2.i614 = call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i614)
  %tobool.not.i615 = icmp eq i32 %call2.i614, 0
  br i1 %tobool.not.i615, label %land.lhs.true.i619, label %lor.lhs.false.i616.do.end8.i624_crit_edge

lor.lhs.false.i616.do.end8.i624_crit_edge:        ; preds = %lor.lhs.false.i616
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end8.i624

land.lhs.true.i619:                               ; preds = %lor.lhs.false.i616
  %call3.i617 = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i617)
  %tobool4.not.i618 = icmp eq i32 %call3.i617, 0
  br i1 %tobool4.not.i618, label %land.lhs.true.i619.do.end8.i624_crit_edge, label %land.lhs.true5.i621

land.lhs.true.i619.do.end8.i624_crit_edge:        ; preds = %land.lhs.true.i619
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end8.i624

land.lhs.true5.i621:                              ; preds = %land.lhs.true.i619
  %.b16.i620 = load i1, ptr @core_scsi3_lunacl_depend_item.__warned, align 1
  br i1 %.b16.i620, label %land.lhs.true5.i621.do.end8.i624_crit_edge, label %if.then.i622

land.lhs.true5.i621.do.end8.i624_crit_edge:       ; preds = %land.lhs.true5.i621
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end8.i624

if.then.i622:                                     ; preds = %land.lhs.true5.i621
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @core_scsi3_lunacl_depend_item.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1446, ptr noundef nonnull @.str.64) #15
  br label %do.end8.i624

do.end8.i624:                                     ; preds = %if.then.i622, %land.lhs.true5.i621.do.end8.i624_crit_edge, %land.lhs.true.i619.do.end8.i624_crit_edge, %lor.lhs.false.i616.do.end8.i624_crit_edge, %if.end170.do.end8.i624_crit_edge
  %tobool10.not.i623 = icmp eq ptr %104, null
  br i1 %tobool10.not.i623, label %do.end8.i624.do.body182_crit_edge, label %core_scsi3_lunacl_depend_item.exit629

do.end8.i624.do.body182_crit_edge:                ; preds = %do.end8.i624
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body182

core_scsi3_lunacl_depend_item.exit629:            ; preds = %do.end8.i624
  %se_lun_group.i625 = getelementptr inbounds %struct.se_lun_acl, ptr %104, i32 0, i32 3
  %call13.i626 = call i32 @target_depend_item(ptr noundef %se_lun_group.i625) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i626)
  %tobool172.not = icmp eq i32 %call13.i626, 0
  br i1 %tobool172.not, label %core_scsi3_lunacl_depend_item.exit629.do.body182_crit_edge, label %do.end176

core_scsi3_lunacl_depend_item.exit629.do.body182_crit_edge: ; preds = %core_scsi3_lunacl_depend_item.exit629
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body182

do.end176:                                        ; preds = %core_scsi3_lunacl_depend_item.exit629
  %call178 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94) #18
  %call.i.i.i.i.i.i630 = call zeroext i1 @__kasan_check_write(ptr noundef %pr_kref.i611, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !556
  call void @llvm.prefetch.p0(ptr %pr_kref.i611, i32 1, i32 3, i32 1) #15
  %107 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pr_kref.i611, ptr %pr_kref.i611, i32 1, ptr elementtype(i32) %pr_kref.i611) #15, !srcloc !557
  %asmresult.i.i.i.i.i.i.i631 = extractvalue { i32, i32, i32 } %107, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i631)
  %cmp.i.i.i.i632 = icmp eq i32 %asmresult.i.i.i.i.i.i.i631, 1
  br i1 %cmp.i.i.i.i632, label %if.then.i636, label %if.end5.i.i.i.i634

if.end5.i.i.i.i634:                               ; preds = %do.end176
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i631)
  %.not.i.i.i.i633 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i631, 0
  br i1 %.not.i.i.i.i633, label %if.end5.i.i.i.i634.kref_put.exit637_crit_edge, label %if.then10.i.i.i.i635, !prof !549

if.end5.i.i.i.i634.kref_put.exit637_crit_edge:    ; preds = %if.end5.i.i.i.i634
  call void @__sanitizer_cov_trace_pc() #17
  br label %kref_put.exit637

if.then10.i.i.i.i635:                             ; preds = %if.end5.i.i.i.i634
  call void @__sanitizer_cov_trace_pc() #17
  call void @refcount_warn_saturate(ptr noundef %pr_kref.i611, i32 noundef 3) #15
  br label %kref_put.exit637

if.then.i636:                                     ; preds = %do.end176
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !558
  call void @target_pr_kref_release(ptr noundef %pr_kref.i611) #15
  br label %kref_put.exit637

kref_put.exit637:                                 ; preds = %if.then.i636, %if.then10.i.i.i.i635, %if.end5.i.i.i.i634.kref_put.exit637_crit_edge
  %108 = ptrtoint ptr %dynamic_node_acl.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %dynamic_node_acl.i, align 4, !range !540
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool.not.i639 = icmp eq i8 %109, 0
  br i1 %tobool.not.i639, label %if.then.i641, label %kref_put.exit637.core_scsi3_nodeacl_undepend_item.exit645_crit_edge

kref_put.exit637.core_scsi3_nodeacl_undepend_item.exit645_crit_edge: ; preds = %kref_put.exit637
  call void @__sanitizer_cov_trace_pc() #17
  br label %core_scsi3_nodeacl_undepend_item.exit645

if.then.i641:                                     ; preds = %kref_put.exit637
  call void @__sanitizer_cov_trace_pc() #17
  %acl_group.i640 = getelementptr inbounds %struct.se_node_acl, ptr %call85, i32 0, i32 13
  call void @target_undepend_item(ptr noundef %acl_group.i640) #15
  br label %core_scsi3_nodeacl_undepend_item.exit645

core_scsi3_nodeacl_undepend_item.exit645:         ; preds = %if.then.i641, %kref_put.exit637.core_scsi3_nodeacl_undepend_item.exit645_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !542
  %call.i.i.i.i643 = call zeroext i1 @__kasan_check_write(ptr noundef %acl_pr_ref_count, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %acl_pr_ref_count, i32 1, i32 3, i32 1) #15
  %110 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %acl_pr_ref_count, ptr %acl_pr_ref_count, i32 1, ptr elementtype(i32) %acl_pr_ref_count) #15, !srcloc !543
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !544
  call void @target_undepend_item(ptr noundef %tpg_group.i) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !542
  %call.i.i.i.i648 = call zeroext i1 @__kasan_check_write(ptr noundef %tpg_pr_ref_count, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %tpg_pr_ref_count, i32 1, i32 3, i32 1) #15
  %111 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tpg_pr_ref_count, ptr %tpg_pr_ref_count, i32 1, ptr elementtype(i32) %tpg_pr_ref_count) #15, !srcloc !543
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !544
  br label %out_unmap

do.body182:                                       ; preds = %core_scsi3_lunacl_depend_item.exit629.do.body182_crit_edge, %do.end8.i624.do.body182_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @core_scsi3_decode_spec_i_port.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@core_scsi3_decode_spec_i_port, %if.then194)) #15
          to label %do.end201 [label %if.then194], !srcloc !541

if.then194:                                       ; preds = %do.body182
  call void @__sanitizer_cov_trace_pc() #17
  %se_tpg_tfo195 = getelementptr inbounds %struct.se_portal_group, ptr %52, i32 0, i32 10
  %112 = ptrtoint ptr %se_tpg_tfo195 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %se_tpg_tfo195, align 4
  %fabric_name196 = getelementptr inbounds %struct.target_core_fabric_ops, ptr %113, i32 0, i32 2
  %114 = ptrtoint ptr %fabric_name196 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %fabric_name196, align 4
  %116 = ptrtoint ptr %call160 to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %call160, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @core_scsi3_decode_spec_i_port.__UNIQUE_ID_ddebug235, ptr noundef nonnull @.str.131, ptr noundef %115, ptr noundef nonnull %call85, i64 noundef %117) #15
  br label %do.end201

do.end201:                                        ; preds = %if.then194, %do.body182
  %118 = ptrtoint ptr %iport_ptr to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %iport_ptr, align 4
  %call202 = call fastcc ptr @__core_scsi3_locate_pr_reg(ptr noundef %1, ptr noundef nonnull %call85, ptr noundef %119)
  %tobool203.not = icmp eq ptr %call202, null
  br i1 %tobool203.not, label %if.end206, label %if.then204

if.then204:                                       ; preds = %do.end201
  %pr_res_holders.i = getelementptr inbounds %struct.t10_pr_registration, ptr %call202, i32 0, i32 17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !542
  %call.i.i.i.i649 = call zeroext i1 @__kasan_check_write(ptr noundef %pr_res_holders.i, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %pr_res_holders.i, i32 1, i32 3, i32 1) #15
  %120 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pr_res_holders.i, ptr %pr_res_holders.i, i32 1, ptr elementtype(i32) %pr_res_holders.i) #15, !srcloc !543
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !544
  call fastcc void @core_scsi3_lunacl_undepend_item(ptr noundef nonnull %call160)
  %121 = ptrtoint ptr %dynamic_node_acl.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %dynamic_node_acl.i, align 4, !range !540
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool.not.i651 = icmp eq i8 %122, 0
  br i1 %tobool.not.i651, label %if.then.i653, label %if.then204.core_scsi3_nodeacl_undepend_item.exit657_crit_edge

if.then204.core_scsi3_nodeacl_undepend_item.exit657_crit_edge: ; preds = %if.then204
  call void @__sanitizer_cov_trace_pc() #17
  br label %core_scsi3_nodeacl_undepend_item.exit657

if.then.i653:                                     ; preds = %if.then204
  call void @__sanitizer_cov_trace_pc() #17
  %acl_group.i652 = getelementptr inbounds %struct.se_node_acl, ptr %call85, i32 0, i32 13
  call void @target_undepend_item(ptr noundef %acl_group.i652) #15
  br label %core_scsi3_nodeacl_undepend_item.exit657

core_scsi3_nodeacl_undepend_item.exit657:         ; preds = %if.then.i653, %if.then204.core_scsi3_nodeacl_undepend_item.exit657_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !542
  %call.i.i.i.i655 = call zeroext i1 @__kasan_check_write(ptr noundef %acl_pr_ref_count, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %acl_pr_ref_count, i32 1, i32 3, i32 1) #15
  %123 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %acl_pr_ref_count, ptr %acl_pr_ref_count, i32 1, ptr elementtype(i32) %acl_pr_ref_count) #15, !srcloc !543
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !544
  call void @target_undepend_item(ptr noundef %tpg_group.i) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !542
  %call.i.i.i.i660 = call zeroext i1 @__kasan_check_write(ptr noundef %tpg_pr_ref_count, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %tpg_pr_ref_count, i32 1, i32 3, i32 1) #15
  %124 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tpg_pr_ref_count, ptr %tpg_pr_ref_count, i32 1, ptr elementtype(i32) %tpg_pr_ref_count) #15, !srcloc !543
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !544
  br label %cleanup

if.end206:                                        ; preds = %do.end201
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %125 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i661 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %125, i32 noundef 3520, i32 noundef 24) #21
  %tobool208.not = icmp eq ptr %call7.i.i661, null
  br i1 %tobool208.not, label %do.end212, label %if.end215

do.end212:                                        ; preds = %if.end206
  %call214 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102) #18
  call fastcc void @core_scsi3_lunacl_undepend_item(ptr noundef nonnull %call160)
  %126 = ptrtoint ptr %dynamic_node_acl.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %dynamic_node_acl.i, align 4, !range !540
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool.not.i663 = icmp eq i8 %127, 0
  br i1 %tobool.not.i663, label %if.then.i665, label %do.end212.core_scsi3_nodeacl_undepend_item.exit669_crit_edge

do.end212.core_scsi3_nodeacl_undepend_item.exit669_crit_edge: ; preds = %do.end212
  call void @__sanitizer_cov_trace_pc() #17
  br label %core_scsi3_nodeacl_undepend_item.exit669

if.then.i665:                                     ; preds = %do.end212
  call void @__sanitizer_cov_trace_pc() #17
  %acl_group.i664 = getelementptr inbounds %struct.se_node_acl, ptr %call85, i32 0, i32 13
  call void @target_undepend_item(ptr noundef %acl_group.i664) #15
  br label %core_scsi3_nodeacl_undepend_item.exit669

core_scsi3_nodeacl_undepend_item.exit669:         ; preds = %if.then.i665, %do.end212.core_scsi3_nodeacl_undepend_item.exit669_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !542
  %call.i.i.i.i667 = call zeroext i1 @__kasan_check_write(ptr noundef %acl_pr_ref_count, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %acl_pr_ref_count, i32 1, i32 3, i32 1) #15
  %128 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %acl_pr_ref_count, ptr %acl_pr_ref_count, i32 1, ptr elementtype(i32) %acl_pr_ref_count) #15, !srcloc !543
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !544
  call void @target_undepend_item(ptr noundef %tpg_group.i) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !542
  %call.i.i.i.i672 = call zeroext i1 @__kasan_check_write(ptr noundef %tpg_pr_ref_count, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %tpg_pr_ref_count, i32 1, i32 3, i32 1) #15
  %129 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tpg_pr_ref_count, ptr %tpg_pr_ref_count, i32 1, ptr elementtype(i32) %tpg_pr_ref_count) #15, !srcloc !543
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !544
  br label %out_unmap

if.end215:                                        ; preds = %if.end206
  %dest_list216 = getelementptr inbounds %struct.pr_transport_id_holder, ptr %call7.i.i661, i32 0, i32 4
  %130 = ptrtoint ptr %dest_list216 to i32
  call void @__asan_store4_noabort(i32 %130)
  store volatile ptr %dest_list216, ptr %dest_list216, align 8
  %prev.i673 = getelementptr inbounds %struct.pr_transport_id_holder, ptr %call7.i.i661, i32 0, i32 4, i32 1
  %131 = ptrtoint ptr %prev.i673 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %dest_list216, ptr %prev.i673, align 4
  %dest_tpg217 = getelementptr inbounds %struct.pr_transport_id_holder, ptr %call7.i.i661, i32 0, i32 1
  %132 = ptrtoint ptr %dest_tpg217 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %52, ptr %dest_tpg217, align 4
  %dest_node_acl218 = getelementptr inbounds %struct.pr_transport_id_holder, ptr %call7.i.i661, i32 0, i32 2
  %133 = ptrtoint ptr %dest_node_acl218 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %call85, ptr %dest_node_acl218, align 8
  %dest_se_deve219 = getelementptr inbounds %struct.pr_transport_id_holder, ptr %call7.i.i661, i32 0, i32 3
  %134 = ptrtoint ptr %dest_se_deve219 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %call160, ptr %dest_se_deve219, align 4
  %se_lun224 = getelementptr inbounds %struct.se_dev_entry, ptr %call160, i32 0, i32 12
  %135 = ptrtoint ptr %se_lun224 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load volatile ptr, ptr %se_lun224, align 8
  %call.i.i.i.i674 = call zeroext i1 @__kasan_check_read(ptr noundef %pr_kref.i611, i32 noundef 4) #15
  %137 = ptrtoint ptr %pr_kref.i611 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load volatile i32, ptr %pr_kref.i611, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %cmp228.not = icmp eq i32 %138, 0
  br i1 %cmp228.not, label %lor.lhs.false, label %if.end215.do.end240_crit_edge

if.end215.do.end240_crit_edge:                    ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end240

lor.lhs.false:                                    ; preds = %if.end215
  %call230 = call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call230)
  %tobool231.not = icmp eq i32 %call230, 0
  br i1 %tobool231.not, label %land.lhs.true232, label %lor.lhs.false.do.end240_crit_edge

lor.lhs.false.do.end240_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end240

land.lhs.true232:                                 ; preds = %lor.lhs.false
  %call233 = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call233)
  %tobool234.not = icmp eq i32 %call233, 0
  br i1 %tobool234.not, label %land.lhs.true232.do.end240_crit_edge, label %land.lhs.true235

land.lhs.true232.do.end240_crit_edge:             ; preds = %land.lhs.true232
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end240

land.lhs.true235:                                 ; preds = %land.lhs.true232
  %.b564 = load i1, ptr @core_scsi3_decode_spec_i_port.__warned, align 1
  br i1 %.b564, label %land.lhs.true235.do.end240_crit_edge, label %if.then237

land.lhs.true235.do.end240_crit_edge:             ; preds = %land.lhs.true235
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end240

if.then237:                                       ; preds = %land.lhs.true235
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @core_scsi3_decode_spec_i_port.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1755, ptr noundef nonnull @.str.64) #15
  br label %do.end240

do.end240:                                        ; preds = %if.then237, %land.lhs.true235.do.end240_crit_edge, %land.lhs.true232.do.end240_crit_edge, %lor.lhs.false.do.end240_crit_edge, %if.end215.do.end240_crit_edge
  %139 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %se_dev, align 4
  %141 = ptrtoint ptr %call160 to i32
  call void @__asan_load8_noabort(i32 %141)
  %142 = load i64, ptr %call160, align 8
  %143 = ptrtoint ptr %iport_ptr to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %iport_ptr, align 4
  %call244 = call fastcc ptr @__core_scsi3_alloc_registration(ptr noundef %140, ptr noundef nonnull %call85, ptr noundef %136, ptr noundef nonnull %call160, i64 noundef %142, ptr noundef %144, i64 noundef %sa_res_key, i32 noundef %all_tg_pt, i32 noundef %aptpl)
  %tobool245.not = icmp eq ptr %call244, null
  br i1 %tobool245.not, label %if.then246, label %if.end247

if.then246:                                       ; preds = %do.end240
  call fastcc void @core_scsi3_lunacl_undepend_item(ptr noundef nonnull %call160)
  %145 = ptrtoint ptr %dynamic_node_acl.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %dynamic_node_acl.i, align 4, !range !540
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %tobool.not.i676 = icmp eq i8 %146, 0
  br i1 %tobool.not.i676, label %if.then.i678, label %if.then246.core_scsi3_nodeacl_undepend_item.exit682_crit_edge

if.then246.core_scsi3_nodeacl_undepend_item.exit682_crit_edge: ; preds = %if.then246
  call void @__sanitizer_cov_trace_pc() #17
  br label %core_scsi3_nodeacl_undepend_item.exit682

if.then.i678:                                     ; preds = %if.then246
  call void @__sanitizer_cov_trace_pc() #17
  %acl_group.i677 = getelementptr inbounds %struct.se_node_acl, ptr %call85, i32 0, i32 13
  call void @target_undepend_item(ptr noundef %acl_group.i677) #15
  br label %core_scsi3_nodeacl_undepend_item.exit682

core_scsi3_nodeacl_undepend_item.exit682:         ; preds = %if.then.i678, %if.then246.core_scsi3_nodeacl_undepend_item.exit682_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !542
  %call.i.i.i.i680 = call zeroext i1 @__kasan_check_write(ptr noundef %acl_pr_ref_count, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %acl_pr_ref_count, i32 1, i32 3, i32 1) #15
  %147 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %acl_pr_ref_count, ptr %acl_pr_ref_count, i32 1, ptr elementtype(i32) %acl_pr_ref_count) #15, !srcloc !543
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !544
  call void @target_undepend_item(ptr noundef %tpg_group.i) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !542
  %call.i.i.i.i685 = call zeroext i1 @__kasan_check_write(ptr noundef %tpg_pr_ref_count, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %tpg_pr_ref_count, i32 1, i32 3, i32 1) #15
  %148 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tpg_pr_ref_count, ptr %tpg_pr_ref_count, i32 1, ptr elementtype(i32) %tpg_pr_ref_count) #15, !srcloc !543
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !544
  call void @kfree(ptr noundef nonnull %call7.i.i661) #15
  br label %out_unmap

if.end247:                                        ; preds = %do.end240
  %149 = ptrtoint ptr %call7.i.i661 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %call244, ptr %call7.i.i661, align 8
  %150 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %4, align 4
  %call.i.i687 = call zeroext i1 @__list_add_valid(ptr noundef %dest_list216, ptr noundef %151, ptr noundef nonnull %tid_dest_list) #15
  br i1 %call.i.i687, label %if.end.i.i689, label %if.end247.cleanup_crit_edge

if.end247.cleanup_crit_edge:                      ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i.i689:                                    ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #17
  %152 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %dest_list216, ptr %4, align 4
  %153 = ptrtoint ptr %dest_list216 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %tid_dest_list, ptr %dest_list216, align 8
  %154 = ptrtoint ptr %prev.i673 to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %151, ptr %prev.i673, align 4
  %155 = ptrtoint ptr %151 to i32
  call void @__asan_store4_noabort(i32 %155)
  store volatile ptr %dest_list216, ptr %151, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i689, %if.end247.cleanup_crit_edge, %core_scsi3_nodeacl_undepend_item.exit657
  %156 = ptrtoint ptr %tid_len to i32
  call void @__asan_load4_noabort(i32 %156)
  %.pn758 = load i32, ptr %tid_len, align 4
  %ptr.1 = getelementptr i8, ptr %ptr.0850, i32 %.pn758
  %tpdl.1 = sub i32 %tpdl.0849, %.pn758
  store i32 0, ptr %tid_len, align 4
  %cmp43.not = icmp eq i32 %tpdl.1, 0
  br i1 %cmp43.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end41.while.end_crit_edge
  call void @transport_kunmap_data_sg(ptr noundef %cmd) #15
  %157 = ptrtoint ptr %tid_dest_list to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %tid_dest_list, align 4
  %cmp264.not853 = icmp eq ptr %158, %tid_dest_list
  br i1 %cmp264.not853, label %while.end.cleanup374_crit_edge, label %while.end.for.body268_crit_edge

while.end.for.body268_crit_edge:                  ; preds = %while.end
  br label %for.body268

while.end.cleanup374_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup374

for.body268:                                      ; preds = %for.inc304.for.body268_crit_edge, %while.end.for.body268_crit_edge
  %.pn562.in854 = phi ptr [ %.pn562856, %for.inc304.for.body268_crit_edge ], [ %158, %while.end.for.body268_crit_edge ]
  %159 = ptrtoint ptr %.pn562.in854 to i32
  call void @__asan_load4_noabort(i32 %159)
  %.pn562856 = load ptr, ptr %.pn562.in854, align 4
  %tidh.0 = getelementptr i8, ptr %.pn562.in854, i32 -16
  %dest_tpg269 = getelementptr i8, ptr %.pn562.in854, i32 -12
  %160 = ptrtoint ptr %dest_tpg269 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %dest_tpg269, align 4
  %dest_node_acl270 = getelementptr i8, ptr %.pn562.in854, i32 -8
  %162 = ptrtoint ptr %dest_node_acl270 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %dest_node_acl270, align 4
  %dest_se_deve271 = getelementptr i8, ptr %.pn562.in854, i32 -4
  %164 = ptrtoint ptr %dest_se_deve271 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %dest_se_deve271, align 4
  %166 = ptrtoint ptr %tidh.0 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %tidh.0, align 4
  %call.i.i691 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn562.in854) #15
  br i1 %call.i.i691, label %if.end.i.i692, label %for.body268.list_del.exit_crit_edge

for.body268.list_del.exit_crit_edge:              ; preds = %for.body268
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i692:                                    ; preds = %for.body268
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn562.in854, i32 0, i32 1
  %168 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %prev.i.i, align 4
  %170 = ptrtoint ptr %.pn562.in854 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %.pn562.in854, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %171, i32 0, i32 1
  %172 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %169, ptr %prev1.i.i.i, align 4
  %173 = ptrtoint ptr %169 to i32
  call void @__asan_store4_noabort(i32 %173)
  store volatile ptr %171, ptr %169, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i692, %for.body268.list_del.exit_crit_edge
  %174 = ptrtoint ptr %.pn562.in854 to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn562.in854, align 4
  %prev.i693 = getelementptr inbounds %struct.list_head, ptr %.pn562.in854, i32 0, i32 1
  %175 = ptrtoint ptr %prev.i693 to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i693, align 4
  call void @kfree(ptr noundef %tidh.0) #15
  %176 = call ptr @memset(ptr %i_buf, i32 0, i32 21)
  %isid_present_at_reg.i = getelementptr inbounds %struct.t10_pr_registration, ptr %167, i32 0, i32 10
  %177 = ptrtoint ptr %isid_present_at_reg.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %isid_present_at_reg.i, align 8, !range !540
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %178)
  %tobool.not.i694 = icmp eq i8 %178, 0
  br i1 %tobool.not.i694, label %list_del.exit.core_pr_dump_initiator_port.exit_crit_edge, label %if.end.i697

list_del.exit.core_pr_dump_initiator_port.exit_crit_edge: ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %core_pr_dump_initiator_port.exit

if.end.i697:                                      ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call.i696 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %i_buf, i32 noundef 21, ptr noundef nonnull @.str, ptr noundef %167) #15
  br label %core_pr_dump_initiator_port.exit

core_pr_dump_initiator_port.exit:                 ; preds = %if.end.i697, %list_del.exit.core_pr_dump_initiator_port.exit_crit_edge
  %179 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %se_dev, align 4
  call fastcc void @__core_scsi3_add_registration(ptr noundef %180, ptr noundef %163, ptr noundef %167, i32 noundef 0, i32 noundef 0)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @core_scsi3_decode_spec_i_port.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@core_scsi3_decode_spec_i_port, %if.then289)) #15
          to label %do.end299 [label %if.then289], !srcloc !541

if.then289:                                       ; preds = %core_pr_dump_initiator_port.exit
  %se_tpg_tfo290 = getelementptr inbounds %struct.se_portal_group, ptr %161, i32 0, i32 10
  %181 = ptrtoint ptr %se_tpg_tfo290 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %se_tpg_tfo290, align 4
  %fabric_name291 = getelementptr inbounds %struct.target_core_fabric_ops, ptr %182, i32 0, i32 2
  %183 = ptrtoint ptr %fabric_name291 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %fabric_name291, align 4
  %tobool295.not = icmp eq ptr %165, null
  br i1 %tobool295.not, label %if.then289.cond.end_crit_edge, label %cond.true

if.then289.cond.end_crit_edge:                    ; preds = %if.then289
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

cond.true:                                        ; preds = %if.then289
  call void @__sanitizer_cov_trace_pc() #17
  %185 = ptrtoint ptr %165 to i32
  call void @__asan_load8_noabort(i32 %185)
  %186 = load i64, ptr %165, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then289.cond.end_crit_edge
  %cond = phi i64 [ %186, %cond.true ], [ 0, %if.then289.cond.end_crit_edge ]
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @core_scsi3_decode_spec_i_port.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.134, ptr noundef %184, ptr noundef %163, ptr noundef nonnull %i_buf, i64 noundef %cond) #15
  br label %do.end299

do.end299:                                        ; preds = %cond.end, %core_pr_dump_initiator_port.exit
  %cmp300 = icmp eq ptr %167, %call7
  br i1 %cmp300, label %do.end299.for.inc304_crit_edge, label %if.end303

do.end299.for.inc304_crit_edge:                   ; preds = %do.end299
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc304

if.end303:                                        ; preds = %do.end299
  %dynamic_node_acl.i698 = getelementptr inbounds %struct.se_node_acl, ptr %163, i32 0, i32 1
  %187 = ptrtoint ptr %dynamic_node_acl.i698 to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %dynamic_node_acl.i698, align 4, !range !540
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %188)
  %tobool.not.i699 = icmp eq i8 %188, 0
  br i1 %tobool.not.i699, label %if.then.i701, label %if.end303.core_scsi3_nodeacl_undepend_item.exit705_crit_edge

if.end303.core_scsi3_nodeacl_undepend_item.exit705_crit_edge: ; preds = %if.end303
  call void @__sanitizer_cov_trace_pc() #17
  br label %core_scsi3_nodeacl_undepend_item.exit705

if.then.i701:                                     ; preds = %if.end303
  call void @__sanitizer_cov_trace_pc() #17
  %acl_group.i700 = getelementptr inbounds %struct.se_node_acl, ptr %163, i32 0, i32 13
  call void @target_undepend_item(ptr noundef %acl_group.i700) #15
  br label %core_scsi3_nodeacl_undepend_item.exit705

core_scsi3_nodeacl_undepend_item.exit705:         ; preds = %if.then.i701, %if.end303.core_scsi3_nodeacl_undepend_item.exit705_crit_edge
  %acl_pr_ref_count.i702 = getelementptr inbounds %struct.se_node_acl, ptr %163, i32 0, i32 7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !542
  %call.i.i.i.i703 = call zeroext i1 @__kasan_check_write(ptr noundef %acl_pr_ref_count.i702, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %acl_pr_ref_count.i702, i32 1, i32 3, i32 1) #15
  %189 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %acl_pr_ref_count.i702, ptr %acl_pr_ref_count.i702, i32 1, ptr elementtype(i32) %acl_pr_ref_count.i702) #15, !srcloc !543
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !544
  %tpg_group.i706 = getelementptr inbounds %struct.se_portal_group, ptr %161, i32 0, i32 12
  call void @target_undepend_item(ptr noundef %tpg_group.i706) #15
  %tpg_pr_ref_count.i707 = getelementptr inbounds %struct.se_portal_group, ptr %161, i32 0, i32 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !542
  %call.i.i.i.i708 = call zeroext i1 @__kasan_check_write(ptr noundef %tpg_pr_ref_count.i707, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %tpg_pr_ref_count.i707, i32 1, i32 3, i32 1) #15
  %190 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tpg_pr_ref_count.i707, ptr %tpg_pr_ref_count.i707, i32 1, ptr elementtype(i32) %tpg_pr_ref_count.i707) #15, !srcloc !543
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !544
  br label %for.inc304

for.inc304:                                       ; preds = %core_scsi3_nodeacl_undepend_item.exit705, %do.end299.for.inc304_crit_edge
  %cmp264.not = icmp eq ptr %.pn562856, %tid_dest_list
  br i1 %cmp264.not, label %for.inc304.cleanup374_crit_edge, label %for.inc304.for.body268_crit_edge

for.inc304.for.body268_crit_edge:                 ; preds = %for.inc304
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body268

for.inc304.cleanup374_crit_edge:                  ; preds = %for.inc304
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup374

out_unmap:                                        ; preds = %core_scsi3_nodeacl_undepend_item.exit682, %core_scsi3_nodeacl_undepend_item.exit669, %core_scsi3_nodeacl_undepend_item.exit645, %core_scsi3_nodeacl_undepend_item.exit606, %core_scsi3_nodeacl_undepend_item.exit, %do.end127, %do.end99, %do.end80, %do.end69, %do.end37
  %ret.2 = phi i32 [ 9, %do.end37 ], [ 9, %do.end69 ], [ 9, %do.end127 ], [ 9, %core_scsi3_nodeacl_undepend_item.exit606 ], [ 10, %core_scsi3_nodeacl_undepend_item.exit669 ], [ 29, %core_scsi3_nodeacl_undepend_item.exit682 ], [ 10, %core_scsi3_nodeacl_undepend_item.exit645 ], [ 9, %core_scsi3_nodeacl_undepend_item.exit ], [ 10, %do.end99 ], [ 10, %do.end80 ]
  call void @transport_kunmap_data_sg(ptr noundef %cmd) #15
  br label %out

out:                                              ; preds = %out_unmap, %if.end26.out_crit_edge, %do.end22
  %ret.3 = phi i32 [ 9, %do.end22 ], [ %ret.2, %out_unmap ], [ 29, %if.end26.out_crit_edge ]
  %191 = ptrtoint ptr %tid_dest_list to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %tid_dest_list, align 4
  %cmp322.not862 = icmp eq ptr %192, %tid_dest_list
  br i1 %cmp322.not862, label %out.cleanup374_crit_edge, label %out.for.body326_crit_edge

out.for.body326_crit_edge:                        ; preds = %out
  br label %for.body326

out.cleanup374_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup374

for.body326:                                      ; preds = %cleanup364.for.body326_crit_edge, %out.for.body326_crit_edge
  %.pn.in863 = phi ptr [ %.pn866, %cleanup364.for.body326_crit_edge ], [ %192, %out.for.body326_crit_edge ]
  %tidh.1865 = getelementptr i8, ptr %.pn.in863, i32 -16
  %193 = ptrtoint ptr %.pn.in863 to i32
  call void @__asan_load4_noabort(i32 %193)
  %.pn866 = load ptr, ptr %.pn.in863, align 4
  %dest_tpg327 = getelementptr i8, ptr %.pn.in863, i32 -12
  %194 = ptrtoint ptr %dest_tpg327 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %dest_tpg327, align 4
  %dest_node_acl328 = getelementptr i8, ptr %.pn.in863, i32 -8
  %196 = ptrtoint ptr %dest_node_acl328 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %dest_node_acl328, align 4
  %dest_se_deve329 = getelementptr i8, ptr %.pn.in863, i32 -4
  %198 = ptrtoint ptr %dest_se_deve329 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %dest_se_deve329, align 4
  %200 = ptrtoint ptr %tidh.1865 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %tidh.1865, align 4
  %cmp331 = icmp eq ptr %201, %call7
  %call.i.i709 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in863) #15
  br i1 %call.i.i709, label %if.end.i.i712, label %for.body326.list_del.exit714_crit_edge

for.body326.list_del.exit714_crit_edge:           ; preds = %for.body326
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit714

if.end.i.i712:                                    ; preds = %for.body326
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i710 = getelementptr inbounds %struct.list_head, ptr %.pn.in863, i32 0, i32 1
  %202 = ptrtoint ptr %prev.i.i710 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %prev.i.i710, align 4
  %204 = ptrtoint ptr %.pn.in863 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %.pn.in863, align 4
  %prev1.i.i.i711 = getelementptr inbounds %struct.list_head, ptr %205, i32 0, i32 1
  %206 = ptrtoint ptr %prev1.i.i.i711 to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr %203, ptr %prev1.i.i.i711, align 4
  %207 = ptrtoint ptr %203 to i32
  call void @__asan_store4_noabort(i32 %207)
  store volatile ptr %205, ptr %203, align 4
  br label %list_del.exit714

list_del.exit714:                                 ; preds = %if.end.i.i712, %for.body326.list_del.exit714_crit_edge
  %208 = ptrtoint ptr %.pn.in863 to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in863, align 4
  %prev.i713 = getelementptr inbounds %struct.list_head, ptr %.pn.in863, i32 0, i32 1
  %209 = ptrtoint ptr %prev.i713 to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i713, align 4
  call void @kfree(ptr noundef %tidh.1865) #15
  %pr_reg_atp_list = getelementptr inbounds %struct.t10_pr_registration, ptr %201, i32 0, i32 23
  %210 = ptrtoint ptr %pr_reg_atp_list to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %pr_reg_atp_list, align 4
  %cmp347.not857 = icmp eq ptr %211, %pr_reg_atp_list
  br i1 %cmp347.not857, label %list_del.exit714.for.end360_crit_edge, label %list_del.exit714.for.body351_crit_edge

list_del.exit714.for.body351_crit_edge:           ; preds = %list_del.exit714
  br label %for.body351

list_del.exit714.for.end360_crit_edge:            ; preds = %list_del.exit714
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end360

for.body351:                                      ; preds = %list_del.exit720.for.body351_crit_edge, %list_del.exit714.for.body351_crit_edge
  %.pn561.in858 = phi ptr [ %.pn561, %list_del.exit720.for.body351_crit_edge ], [ %211, %list_del.exit714.for.body351_crit_edge ]
  %pr_reg_tmp.0 = getelementptr i8, ptr %.pn561.in858, i32 -644
  %212 = ptrtoint ptr %.pn561.in858 to i32
  call void @__asan_load4_noabort(i32 %212)
  %.pn561 = load ptr, ptr %.pn561.in858, align 4
  %call.i.i715 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn561.in858) #15
  br i1 %call.i.i715, label %if.end.i.i718, label %for.body351.list_del.exit720_crit_edge

for.body351.list_del.exit720_crit_edge:           ; preds = %for.body351
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit720

if.end.i.i718:                                    ; preds = %for.body351
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i716 = getelementptr inbounds %struct.list_head, ptr %.pn561.in858, i32 0, i32 1
  %213 = ptrtoint ptr %prev.i.i716 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %prev.i.i716, align 4
  %215 = ptrtoint ptr %.pn561.in858 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %.pn561.in858, align 4
  %prev1.i.i.i717 = getelementptr inbounds %struct.list_head, ptr %216, i32 0, i32 1
  %217 = ptrtoint ptr %prev1.i.i.i717 to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr %214, ptr %prev1.i.i.i717, align 4
  %218 = ptrtoint ptr %214 to i32
  call void @__asan_store4_noabort(i32 %218)
  store volatile ptr %216, ptr %214, align 4
  br label %list_del.exit720

list_del.exit720:                                 ; preds = %if.end.i.i718, %for.body351.list_del.exit720_crit_edge
  %219 = ptrtoint ptr %.pn561.in858 to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn561.in858, align 4
  %prev.i719 = getelementptr inbounds %struct.list_head, ptr %.pn561.in858, i32 0, i32 1
  %220 = ptrtoint ptr %prev.i719 to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i719, align 4
  %pr_reg_deve353 = getelementptr i8, ptr %.pn561.in858, i32 -36
  %221 = ptrtoint ptr %pr_reg_deve353 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %pr_reg_deve353, align 8
  call fastcc void @core_scsi3_lunacl_undepend_item(ptr noundef %222)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @t10_pr_reg_cache to i32))
  %223 = load ptr, ptr @t10_pr_reg_cache, align 4
  call void @kmem_cache_free(ptr noundef %223, ptr noundef %pr_reg_tmp.0) #15
  %cmp347.not = icmp eq ptr %.pn561, %pr_reg_atp_list
  br i1 %cmp347.not, label %list_del.exit720.for.end360_crit_edge, label %list_del.exit720.for.body351_crit_edge

list_del.exit720.for.body351_crit_edge:           ; preds = %list_del.exit720
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body351

list_del.exit720.for.end360_crit_edge:            ; preds = %list_del.exit720
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end360

for.end360:                                       ; preds = %list_del.exit720.for.end360_crit_edge, %list_del.exit714.for.end360_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @t10_pr_reg_cache to i32))
  %224 = load ptr, ptr @t10_pr_reg_cache, align 4
  call void @kmem_cache_free(ptr noundef %224, ptr noundef %201) #15
  call fastcc void @core_scsi3_lunacl_undepend_item(ptr noundef %199)
  br i1 %cmp331, label %for.end360.cleanup364_crit_edge, label %if.end363

for.end360.cleanup364_crit_edge:                  ; preds = %for.end360
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup364

if.end363:                                        ; preds = %for.end360
  %dynamic_node_acl.i721 = getelementptr inbounds %struct.se_node_acl, ptr %197, i32 0, i32 1
  %225 = ptrtoint ptr %dynamic_node_acl.i721 to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %dynamic_node_acl.i721, align 4, !range !540
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %226)
  %tobool.not.i722 = icmp eq i8 %226, 0
  br i1 %tobool.not.i722, label %if.then.i724, label %if.end363.core_scsi3_nodeacl_undepend_item.exit728_crit_edge

if.end363.core_scsi3_nodeacl_undepend_item.exit728_crit_edge: ; preds = %if.end363
  call void @__sanitizer_cov_trace_pc() #17
  br label %core_scsi3_nodeacl_undepend_item.exit728

if.then.i724:                                     ; preds = %if.end363
  call void @__sanitizer_cov_trace_pc() #17
  %acl_group.i723 = getelementptr inbounds %struct.se_node_acl, ptr %197, i32 0, i32 13
  call void @target_undepend_item(ptr noundef %acl_group.i723) #15
  br label %core_scsi3_nodeacl_undepend_item.exit728

core_scsi3_nodeacl_undepend_item.exit728:         ; preds = %if.then.i724, %if.end363.core_scsi3_nodeacl_undepend_item.exit728_crit_edge
  %acl_pr_ref_count.i725 = getelementptr inbounds %struct.se_node_acl, ptr %197, i32 0, i32 7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !542
  %call.i.i.i.i726 = call zeroext i1 @__kasan_check_write(ptr noundef %acl_pr_ref_count.i725, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %acl_pr_ref_count.i725, i32 1, i32 3, i32 1) #15
  %227 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %acl_pr_ref_count.i725, ptr %acl_pr_ref_count.i725, i32 1, ptr elementtype(i32) %acl_pr_ref_count.i725) #15, !srcloc !543
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !544
  %tpg_group.i729 = getelementptr inbounds %struct.se_portal_group, ptr %195, i32 0, i32 12
  call void @target_undepend_item(ptr noundef %tpg_group.i729) #15
  %tpg_pr_ref_count.i730 = getelementptr inbounds %struct.se_portal_group, ptr %195, i32 0, i32 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !542
  %call.i.i.i.i731 = call zeroext i1 @__kasan_check_write(ptr noundef %tpg_pr_ref_count.i730, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %tpg_pr_ref_count.i730, i32 1, i32 3, i32 1) #15
  %228 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tpg_pr_ref_count.i730, ptr %tpg_pr_ref_count.i730, i32 1, ptr elementtype(i32) %tpg_pr_ref_count.i730) #15, !srcloc !543
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !544
  br label %cleanup364

cleanup364:                                       ; preds = %core_scsi3_nodeacl_undepend_item.exit728, %for.end360.cleanup364_crit_edge
  %cmp322.not = icmp eq ptr %.pn866, %tid_dest_list
  br i1 %cmp322.not, label %cleanup364.cleanup374_crit_edge, label %cleanup364.for.body326_crit_edge

cleanup364.for.body326_crit_edge:                 ; preds = %cleanup364
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body326

cleanup364.cleanup374_crit_edge:                  ; preds = %cleanup364
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup374

cleanup374:                                       ; preds = %cleanup364.cleanup374_crit_edge, %out.cleanup374_crit_edge, %for.inc304.cleanup374_crit_edge, %while.end.cleanup374_crit_edge, %kref_put.exit, %if.then9, %do.end
  %retval.0 = phi i32 [ 29, %kref_put.exit ], [ 29, %if.then9 ], [ 29, %do.end ], [ %ret.3, %out.cleanup374_crit_edge ], [ 0, %while.end.cleanup374_crit_edge ], [ %ret.3, %cleanup364.cleanup374_crit_edge ], [ 0, %for.inc304.cleanup374_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tid_len) #15
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %i_buf) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iport_ptr) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tid_dest_list) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @core_scsi3_update_and_write_aptpl(ptr noundef %dev, i1 noundef zeroext %aptpl) unnamed_addr #3 align 64 {
entry:
  %tmp.i = alloca [512 x i8], align 1
  %isid_buf.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %aptpl, label %retry.preheader, label %if.then

retry.preheader:                                  ; preds = %entry
  %call1177 = call noalias ptr @vzalloc(i32 noundef 262144) #22
  %tobool12.not78 = icmp eq ptr %call1177, null
  br i1 %tobool12.not78, label %retry.preheader.cleanup45_crit_edge, label %if.end14.lr.ph

retry.preheader.cleanup45_crit_edge:              ; preds = %retry.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup45

if.end14.lr.ph:                                   ; preds = %retry.preheader
  %0 = getelementptr inbounds i8, ptr %tmp.i, i32 1
  %dev_reservation_lock.i = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 20
  %registration_lock.i = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 38, i32 3
  %registration_list.i = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 38, i32 6
  %dev_pr_res_holder.i = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 28
  br label %if.end14

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @__core_scsi3_write_aptpl_to_file(ptr noundef %dev, ptr noundef nonnull @.str.135)
  %pr_aptpl_active = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 38, i32 1
  %1 = ptrtoint ptr %pr_aptpl_active to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %pr_aptpl_active, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @core_scsi3_update_and_write_aptpl.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@core_scsi3_update_and_write_aptpl, %if.then6)) #15
          to label %do.end [label %if.then6], !srcloc !541

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @core_scsi3_update_and_write_aptpl.__UNIQUE_ID_ddebug240, ptr noundef nonnull @.str.137) #15
  br label %do.end

do.end:                                           ; preds = %if.then6, %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  %. = select i1 %tobool7.not, i32 0, i32 10
  br label %cleanup45

if.end14:                                         ; preds = %if.then16.if.end14_crit_edge, %if.end14.lr.ph
  %call1181 = phi ptr [ %call1177, %if.end14.lr.ph ], [ %call11, %if.then16.if.end14_crit_edge ]
  %len.079 = phi i32 [ 262144, %if.end14.lr.ph ], [ %mul, %if.then16.if.end14_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %tmp.i) #15
  %2 = call ptr @memset(ptr %0, i32 255, i32 511)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %isid_buf.i) #15
  %3 = call ptr @memset(ptr %isid_buf.i, i32 255, i32 32)
  call void @_raw_spin_lock(ptr noundef %dev_reservation_lock.i) #15
  call void @_raw_spin_lock(ptr noundef %registration_lock.i) #15
  %4 = ptrtoint ptr %registration_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn124.i = load ptr, ptr %registration_list.i, align 4
  %cmp.not126.i = icmp eq ptr %.pn124.i, %registration_list.i
  br i1 %cmp.not126.i, label %if.end14.if.then68.i_crit_edge, label %if.end14.for.body.i_crit_edge

if.end14.for.body.i_crit_edge:                    ; preds = %if.end14
  br label %for.body.i

if.end14.if.then68.i_crit_edge:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then68.i

for.body.i:                                       ; preds = %if.end57.i.for.body.i_crit_edge, %if.end14.for.body.i_crit_edge
  %.pn130.i = phi ptr [ %.pn.i, %if.end57.i.for.body.i_crit_edge ], [ %.pn124.i, %if.end14.for.body.i_crit_edge ]
  %len.0129.i = phi i32 [ %add61.i, %if.end57.i.for.body.i_crit_edge ], [ 0, %if.end14.for.body.i_crit_edge ]
  %reg_count.0127.i = phi i32 [ %inc.i, %if.end57.i.for.body.i_crit_edge ], [ 0, %if.end14.for.body.i_crit_edge ]
  %pr_reg.0131.i = getelementptr i8, ptr %.pn130.i, i32 -612
  %5 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %tmp.i, align 1
  %6 = ptrtoint ptr %isid_buf.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %isid_buf.i, align 1
  %pr_reg_nacl.i = getelementptr i8, ptr %.pn130.i, i32 -8
  %7 = ptrtoint ptr %pr_reg_nacl.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pr_reg_nacl.i, align 4
  %se_tpg.i = getelementptr inbounds %struct.se_node_acl, ptr %8, i32 0, i32 10
  %9 = ptrtoint ptr %se_tpg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %se_tpg.i, align 4
  %isid_present_at_reg.i = getelementptr i8, ptr %.pn130.i, i32 -60
  %11 = ptrtoint ptr %isid_present_at_reg.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %isid_present_at_reg.i, align 8, !range !540
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %isid_buf.i, i32 noundef 32, ptr noundef nonnull @.str.144, ptr noundef %pr_reg.0131.i) #15
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %13 = ptrtoint ptr %dev_pr_res_holder.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_pr_res_holder.i, align 4
  %cmp7.i = icmp eq ptr %14, %pr_reg.0131.i
  %se_tpg_tfo.i = getelementptr inbounds %struct.se_portal_group, ptr %10, i32 0, i32 10
  %15 = ptrtoint ptr %se_tpg_tfo.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %se_tpg_tfo.i, align 4
  %fabric_name.i = getelementptr inbounds %struct.target_core_fabric_ops, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %fabric_name.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fabric_name.i, align 4
  %19 = ptrtoint ptr %pr_reg_nacl.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pr_reg_nacl.i, align 4
  %pr_res_key.i = getelementptr i8, ptr %.pn130.i, i32 -20
  %21 = ptrtoint ptr %pr_res_key.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %pr_res_key.i, align 8
  br i1 %cmp7.i, label %if.then8.i, label %if.else.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %pr_res_type.i = getelementptr i8, ptr %.pn130.i, i32 -68
  %23 = ptrtoint ptr %pr_res_type.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pr_res_type.i, align 8
  %pr_res_scope.i = getelementptr i8, ptr %.pn130.i, i32 -64
  %25 = ptrtoint ptr %pr_res_scope.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pr_res_scope.i, align 4
  %pr_reg_all_tg_pt.i = getelementptr i8, ptr %.pn130.i, i32 -80
  %27 = ptrtoint ptr %pr_reg_all_tg_pt.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pr_reg_all_tg_pt.i, align 4
  %pr_res_mapped_lun.i = getelementptr i8, ptr %.pn130.i, i32 -52
  %29 = ptrtoint ptr %pr_res_mapped_lun.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %pr_res_mapped_lun.i, align 8
  %call13.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp.i, i32 noundef 512, ptr noundef nonnull @.str.145, i32 noundef %reg_count.0127.i, ptr noundef %18, ptr noundef %20, ptr noundef nonnull %isid_buf.i, i64 noundef %22, i32 noundef %24, i32 noundef %26, i32 noundef %28, i64 noundef %30) #15
  br label %if.end25.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %pr_reg_all_tg_pt22.i = getelementptr i8, ptr %.pn130.i, i32 -80
  %31 = ptrtoint ptr %pr_reg_all_tg_pt22.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pr_reg_all_tg_pt22.i, align 4
  %pr_res_mapped_lun23.i = getelementptr i8, ptr %.pn130.i, i32 -52
  %33 = ptrtoint ptr %pr_res_mapped_lun23.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %pr_res_mapped_lun23.i, align 8
  %call24.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp.i, i32 noundef 512, ptr noundef nonnull @.str.146, i32 noundef %reg_count.0127.i, ptr noundef %18, ptr noundef %20, ptr noundef nonnull %isid_buf.i, i64 noundef %22, i32 noundef %32, i64 noundef %34) #15
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.else.i, %if.then8.i
  %call27.i = call i32 @strlen(ptr noundef nonnull %tmp.i) #19
  %add.i = add i32 %call27.i, %len.0129.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %len.079)
  %cmp28.not.i = icmp ult i32 %add.i, %len.079
  br i1 %cmp28.not.i, label %if.end32.i, label %do.end.i

do.end.i:                                         ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #17
  %call31.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147) #18
  call void @_raw_spin_unlock(ptr noundef %registration_lock.i) #15
  call void @_raw_spin_unlock(ptr noundef %dev_reservation_lock.i) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %isid_buf.i) #15
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %tmp.i) #15
  br label %if.then16

if.end32.i:                                       ; preds = %if.end25.i
  %add.ptr33.i = getelementptr i8, ptr %call1181, i32 %len.0129.i
  %stpcpy.i = call ptr @stpcpy(ptr %add.ptr33.i, ptr nonnull %tmp.i) #19
  %35 = ptrtoint ptr %stpcpy.i to i32
  %36 = ptrtoint ptr %add.ptr33.i to i32
  %37 = sub i32 %35, %36
  %add36.i = add i32 %37, %len.0129.i
  %38 = ptrtoint ptr %se_tpg_tfo.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %se_tpg_tfo.i, align 4
  %fabric_name39.i = getelementptr inbounds %struct.target_core_fabric_ops, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %fabric_name39.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fabric_name39.i, align 4
  %tpg_get_wwn.i = getelementptr inbounds %struct.target_core_fabric_ops, ptr %39, i32 0, i32 5
  %42 = ptrtoint ptr %tpg_get_wwn.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tpg_get_wwn.i, align 4
  %call41.i = call ptr %43(ptr noundef %10) #15
  %44 = ptrtoint ptr %se_tpg_tfo.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %se_tpg_tfo.i, align 4
  %tpg_get_tag.i = getelementptr inbounds %struct.target_core_fabric_ops, ptr %45, i32 0, i32 6
  %46 = ptrtoint ptr %tpg_get_tag.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tpg_get_tag.i, align 4
  %call43.i = call zeroext i16 %47(ptr noundef %10) #15
  %conv.i = zext i16 %call43.i to i32
  %tg_pt_sep_rtpi.i = getelementptr i8, ptr %.pn130.i, i32 -36
  %48 = ptrtoint ptr %tg_pt_sep_rtpi.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %tg_pt_sep_rtpi.i, align 8
  %conv44.i = zext i16 %49 to i32
  %pr_aptpl_target_lun.i = getelementptr i8, ptr %.pn130.i, i32 -44
  %50 = ptrtoint ptr %pr_aptpl_target_lun.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %pr_aptpl_target_lun.i, align 8
  %call45.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp.i, i32 noundef 512, ptr noundef nonnull @.str.149, ptr noundef %41, ptr noundef %call41.i, i32 noundef %conv.i, i32 noundef %conv44.i, i64 noundef %51, i32 noundef %reg_count.0127.i) #15
  %call47.i = call i32 @strlen(ptr noundef nonnull %tmp.i) #19
  %add48.i = add i32 %call47.i, %add36.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add48.i, i32 %len.079)
  %cmp49.not.i = icmp ult i32 %add48.i, %len.079
  br i1 %cmp49.not.i, label %if.end57.i, label %do.end54.i

do.end54.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #17
  %call56.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147) #18
  call void @_raw_spin_unlock(ptr noundef %registration_lock.i) #15
  call void @_raw_spin_unlock(ptr noundef %dev_reservation_lock.i) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %isid_buf.i) #15
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %tmp.i) #15
  br label %if.then16

if.end57.i:                                       ; preds = %if.end32.i
  %add.ptr58.i = getelementptr i8, ptr %call1181, i32 %add36.i
  %stpcpy119.i = call ptr @stpcpy(ptr %add.ptr58.i, ptr nonnull %tmp.i) #19
  %52 = ptrtoint ptr %stpcpy119.i to i32
  %53 = ptrtoint ptr %add.ptr58.i to i32
  %54 = sub i32 %add36.i, %53
  %add61.i = add i32 %54, %52
  %inc.i = add i32 %reg_count.0127.i, 1
  %55 = ptrtoint ptr %.pn130.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pn.i = load ptr, ptr %.pn130.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %registration_list.i
  br i1 %cmp.not.i, label %for.end.i, label %if.end57.i.for.body.i_crit_edge

if.end57.i.for.body.i_crit_edge:                  ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.end.i:                                        ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %phi.cmp.i = icmp eq i32 %inc.i, 0
  br i1 %phi.cmp.i, label %for.end.i.if.then68.i_crit_edge, label %for.end.i.core_scsi3_update_aptpl_buf.exit_crit_edge

for.end.i.core_scsi3_update_aptpl_buf.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %core_scsi3_update_aptpl_buf.exit

for.end.i.if.then68.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then68.i

if.then68.i:                                      ; preds = %for.end.i.if.then68.i_crit_edge, %if.end14.if.then68.i_crit_edge
  %len.0.lcssa135.i = phi i32 [ %add61.i, %for.end.i.if.then68.i_crit_edge ], [ 0, %if.end14.if.then68.i_crit_edge ]
  %add.ptr69.i = getelementptr i8, ptr %call1181, i32 %len.0.lcssa135.i
  %56 = call ptr @memcpy(ptr %add.ptr69.i, ptr @.str.152, i32 33)
  br label %core_scsi3_update_aptpl_buf.exit

core_scsi3_update_aptpl_buf.exit:                 ; preds = %if.then68.i, %for.end.i.core_scsi3_update_aptpl_buf.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %registration_lock.i) #15
  call void @_raw_spin_unlock(ptr noundef %dev_reservation_lock.i) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %isid_buf.i) #15
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %tmp.i) #15
  %call18 = call fastcc i32 @__core_scsi3_write_aptpl_to_file(ptr noundef %dev, ptr noundef nonnull %call1181)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19.not = icmp eq i32 %call18, 0
  br i1 %cmp19.not, label %if.end26, label %do.end23

if.then16:                                        ; preds = %do.end54.i, %do.end.i
  call void @vfree(ptr noundef nonnull %call1181) #15
  %mul = shl i32 %len.079, 1
  %call11 = call noalias ptr @vzalloc(i32 noundef %mul) #22
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.then16.cleanup45_crit_edge, label %if.then16.if.end14_crit_edge

if.then16.if.end14_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.then16.cleanup45_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup45

do.end23:                                         ; preds = %core_scsi3_update_aptpl_buf.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138) #18
  call void @vfree(ptr noundef nonnull %call1181) #15
  br label %cleanup45

if.end26:                                         ; preds = %core_scsi3_update_aptpl_buf.exit
  call void @__sanitizer_cov_trace_pc() #17
  %pr_aptpl_active28 = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 38, i32 1
  %57 = ptrtoint ptr %pr_aptpl_active28 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %pr_aptpl_active28, align 4
  call void @vfree(ptr noundef nonnull %call1181) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @core_scsi3_update_and_write_aptpl.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@core_scsi3_update_and_write_aptpl, %if.then41)) #15
          to label %cleanup45 [label %if.then41], !srcloc !541

if.then41:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @core_scsi3_update_and_write_aptpl.__UNIQUE_ID_ddebug241, ptr noundef nonnull @.str.139) #15
  br label %cleanup45

cleanup45:                                        ; preds = %if.then41, %if.end26, %do.end23, %if.then16.cleanup45_crit_edge, %do.end, %retry.preheader.cleanup45_crit_edge
  %retval.1 = phi i32 [ 10, %do.end23 ], [ %., %do.end ], [ 0, %if.then41 ], [ 0, %if.end26 ], [ 18, %retry.preheader.cleanup45_crit_edge ], [ 18, %if.then16.cleanup45_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_ua_allocate_lun(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__core_scsi3_alloc_registration(ptr noundef %dev, ptr noundef %nacl, ptr nocapture noundef readonly %lun, ptr noundef %deve, i64 noundef %mapped_lun, ptr noundef %isid, i64 noundef %sa_res_key, i32 noundef %all_tg_pt, i32 noundef %aptpl) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %se_tpg = getelementptr inbounds %struct.se_node_acl, ptr %nacl, i32 0, i32 10
  %0 = ptrtoint ptr %se_tpg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_tpg, align 4
  %se_tpg_tfo = getelementptr inbounds %struct.se_portal_group, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %se_tpg_tfo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %se_tpg_tfo, align 4
  %call = tail call fastcc ptr @__core_scsi3_do_alloc_registration(ptr noundef %nacl, ptr noundef %lun, ptr noundef %deve, i64 noundef %mapped_lun, ptr noundef %isid, i64 noundef %sa_res_key, i32 noundef %all_tg_pt, i32 noundef %aptpl)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %all_tg_pt)
  %tobool1.not = icmp eq i32 %all_tg_pt, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %se_port_lock = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 22
  tail call void @_raw_spin_lock(ptr noundef %se_port_lock) #15
  %dev_sep_list = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 29
  %4 = ptrtoint ptr %dev_sep_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_sep_list, align 8
  %cmp.not228 = icmp eq ptr %5, %dev_sep_list
  br i1 %cmp.not228, label %if.end3.for.end113_crit_edge, label %for.body.lr.ph

if.end3.for.end113_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end113

for.body.lr.ph:                                   ; preds = %if.end3
  %pr_reg_atp_list = getelementptr inbounds %struct.t10_pr_registration, ptr %call, i32 0, i32 23
  %prev.i = getelementptr inbounds %struct.t10_pr_registration, ptr %call, i32 0, i32 23, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc107.for.body_crit_edge, %for.body.lr.ph
  %.pn.in229 = phi ptr [ %5, %for.body.lr.ph ], [ %.pn231, %for.inc107.for.body_crit_edge ]
  %6 = ptrtoint ptr %.pn.in229 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn231 = load ptr, ptr %.pn.in229, align 8
  %lun_ref = getelementptr i8, ptr %.pn.in229, i32 -8
  %7 = tail call i32 @llvm.read_register.i32(metadata !530) #15
  %and.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !545
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i.i, label %for.body.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

for.body.rcu_read_lock.exit.i_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %for.body
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.52, i32 noundef 696, ptr noundef nonnull @.str.53) #15
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %for.body.rcu_read_lock.exit.i_crit_edge
  %call.i1.i = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %tobool.not.i2.i = icmp eq i32 %call.i1.i, 0
  br i1 %tobool.not.i2.i, label %land.rhs.i.i, label %rcu_read_lock.exit.i.if.end29.i.i_crit_edge

rcu_read_lock.exit.i.if.end29.i.i_crit_edge:      ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29.i.i

land.rhs.i.i:                                     ; preds = %rcu_read_lock.exit.i
  %.b104.i.i = load i1, ptr @percpu_ref_tryget_live_rcu.__already_done, align 1
  br i1 %.b104.i.i, label %land.rhs.i.i.if.end29.i.i_crit_edge, label %if.then.i3.i, !prof !549

land.rhs.i.i.if.end29.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29.i.i

if.then.i3.i:                                     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @percpu_ref_tryget_live_rcu.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.101, i32 noundef 280, i32 noundef 9, ptr noundef null) #15
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.then.i3.i, %land.rhs.i.i.if.end29.i.i_crit_edge, %rcu_read_lock.exit.i.if.end29.i.i_crit_edge
  %11 = ptrtoint ptr %lun_ref to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %lun_ref, align 4
  %and.i.i.i = and i32 %12, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body46.i.i, label %if.else.i.i, !prof !549

do.body46.i.i:                                    ; preds = %if.end29.i.i
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !559
  %14 = tail call i32 @llvm.read_register.i32(metadata !530) #15
  %and.i105.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i105.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %19, %12
  %20 = inttoptr i32 %add.i.i to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %add63.i.i = add i32 %22, 1
  store i32 %add63.i.i, ptr %20, align 4
  %23 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !560
  %and.i.i.i.i = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool74.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool74.not.i.i, label %if.then83.i.i, label %do.body46.i.i.do.end86.i.i_crit_edge, !prof !548

do.body46.i.i.do.end86.i.i_crit_edge:             ; preds = %do.body46.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end86.i.i

if.then83.i.i:                                    ; preds = %do.body46.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %do.end86.i.i

do.end86.i.i:                                     ; preds = %if.then83.i.i, %do.body46.i.i.do.end86.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %13) #15, !srcloc !561
  br label %percpu_ref_tryget_live_rcu.exit.i

if.else.i.i:                                      ; preds = %if.end29.i.i
  %and.i.i = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool93.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool93.not.i.i, label %if.then94.i.i, label %if.else.i.i.percpu_ref_tryget_live_rcu.exit.i_crit_edge

if.else.i.i.percpu_ref_tryget_live_rcu.exit.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %percpu_ref_tryget_live_rcu.exit.i

if.then94.i.i:                                    ; preds = %if.else.i.i
  %data.i.i = getelementptr i8, ptr %.pn.in229, i32 -4
  %24 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %25, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !562
  tail call void @llvm.prefetch.p0(ptr %25, i32 1, i32 3, i32 1) #15
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %25, ptr %25, i32 0, i32 1, ptr elementtype(i32) %25) #15, !srcloc !563
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i.i, label %if.then94.i.i.atomic_long_inc_not_zero.exit.i.i_crit_edge, label %do.end11.i.i.i.i.i.i.i

if.then94.i.i.atomic_long_inc_not_zero.exit.i.i_crit_edge: ; preds = %if.then94.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %atomic_long_inc_not_zero.exit.i.i

do.end11.i.i.i.i.i.i.i:                           ; preds = %if.then94.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !564
  br label %atomic_long_inc_not_zero.exit.i.i

atomic_long_inc_not_zero.exit.i.i:                ; preds = %do.end11.i.i.i.i.i.i.i, %if.then94.i.i.atomic_long_inc_not_zero.exit.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp ne i32 %asmresult.i.i.i.i.i.i.i, 0
  br label %percpu_ref_tryget_live_rcu.exit.i

percpu_ref_tryget_live_rcu.exit.i:                ; preds = %atomic_long_inc_not_zero.exit.i.i, %if.else.i.i.percpu_ref_tryget_live_rcu.exit.i_crit_edge, %do.end86.i.i
  %ret.0.off0.i.i = phi i1 [ true, %do.end86.i.i ], [ false, %if.else.i.i.percpu_ref_tryget_live_rcu.exit.i_crit_edge ], [ %cmp.i.i.i.i.i.i, %atomic_long_inc_not_zero.exit.i.i ]
  %call.i4.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i4.i, label %percpu_ref_tryget_live_rcu.exit.i.percpu_ref_tryget_live.exit_crit_edge, label %land.lhs.true.i7.i

percpu_ref_tryget_live_rcu.exit.i.percpu_ref_tryget_live.exit_crit_edge: ; preds = %percpu_ref_tryget_live_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %percpu_ref_tryget_live.exit

land.lhs.true.i7.i:                               ; preds = %percpu_ref_tryget_live_rcu.exit.i
  %call1.i5.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5.i)
  %tobool.not.i6.i = icmp eq i32 %call1.i5.i, 0
  br i1 %tobool.not.i6.i, label %land.lhs.true.i7.i.percpu_ref_tryget_live.exit_crit_edge, label %land.lhs.true2.i9.i

land.lhs.true.i7.i.percpu_ref_tryget_live.exit_crit_edge: ; preds = %land.lhs.true.i7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %percpu_ref_tryget_live.exit

land.lhs.true2.i9.i:                              ; preds = %land.lhs.true.i7.i
  %.b4.i8.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8.i, label %land.lhs.true2.i9.i.percpu_ref_tryget_live.exit_crit_edge, label %if.then.i10.i

land.lhs.true2.i9.i.percpu_ref_tryget_live.exit_crit_edge: ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %percpu_ref_tryget_live.exit

if.then.i10.i:                                    ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.52, i32 noundef 724, ptr noundef nonnull @.str.54) #15
  br label %percpu_ref_tryget_live.exit

percpu_ref_tryget_live.exit:                      ; preds = %if.then.i10.i, %land.lhs.true2.i9.i.percpu_ref_tryget_live.exit_crit_edge, %land.lhs.true.i7.i.percpu_ref_tryget_live.exit_crit_edge, %percpu_ref_tryget_live_rcu.exit.i.percpu_ref_tryget_live.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !546
  %27 = tail call i32 @llvm.read_register.i32(metadata !530) #15
  %and.i.i.i.i.i11.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i11.i to ptr
  %preempt_count.i.i.i.i12.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i.i12.i, align 4
  %sub.i.i.i.i = add i32 %30, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i12.i, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  br i1 %ret.0.off0.i.i, label %if.end13, label %percpu_ref_tryget_live.exit.for.inc107_crit_edge

percpu_ref_tryget_live.exit.for.inc107_crit_edge: ; preds = %percpu_ref_tryget_live.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc107

if.end13:                                         ; preds = %percpu_ref_tryget_live.exit
  tail call void @_raw_spin_unlock(ptr noundef %se_port_lock) #15
  %lun_deve_lock = getelementptr i8, ptr %.pn.in229, i32 -684
  tail call void @_raw_spin_lock(ptr noundef %lun_deve_lock) #15
  %lun_deve_list = getelementptr i8, ptr %.pn.in229, i32 -692
  %31 = ptrtoint ptr %lun_deve_list to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn204222 = load ptr, ptr %lun_deve_list, align 4
  %cmp21.not224 = icmp eq ptr %.pn204222, %lun_deve_list
  br i1 %cmp21.not224, label %if.end13.for.end_crit_edge, label %for.body23.lr.ph

if.end13.for.end_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body23.lr.ph:                                 ; preds = %if.end13
  %dep_map = getelementptr i8, ptr %.pn.in229, i32 -668
  br label %for.body23

for.body23:                                       ; preds = %for.inc.for.body23_crit_edge, %for.body23.lr.ph
  %.pn204225 = phi ptr [ %.pn204222, %for.body23.lr.ph ], [ %.pn204, %for.inc.for.body23_crit_edge ]
  %deve_tmp.0226 = getelementptr i8, ptr %.pn204225, i32 -168
  %se_lun_acl = getelementptr i8, ptr %.pn204225, i32 -64
  %32 = ptrtoint ptr %se_lun_acl to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %se_lun_acl, align 8
  %tobool24.not = icmp eq ptr %33, null
  br i1 %tobool24.not, label %for.body23.for.inc_crit_edge, label %if.end26

for.body23.for.inc_crit_edge:                     ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end26:                                         ; preds = %for.body23
  %34 = ptrtoint ptr %se_lun_acl to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %se_lun_acl, align 8
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool32.not = icmp eq i32 %call.i, 0
  br i1 %tobool32.not, label %lor.lhs.false, label %if.end26.do.end42_crit_edge

if.end26.do.end42_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end42

lor.lhs.false:                                    ; preds = %if.end26
  %call33 = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %land.lhs.true, label %lor.lhs.false.do.end42_crit_edge

lor.lhs.false.do.end42_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end42

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call35 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %land.lhs.true.do.end42_crit_edge, label %land.lhs.true37

land.lhs.true.do.end42_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end42

land.lhs.true37:                                  ; preds = %land.lhs.true
  %.b207 = load i1, ptr @__core_scsi3_alloc_registration.__warned, align 1
  br i1 %.b207, label %land.lhs.true37.do.end42_crit_edge, label %if.then39

land.lhs.true37.do.end42_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end42

if.then39:                                        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @__core_scsi3_alloc_registration.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 743, ptr noundef nonnull @.str.64) #15
  br label %do.end42

do.end42:                                         ; preds = %if.then39, %land.lhs.true37.do.end42_crit_edge, %land.lhs.true.do.end42_crit_edge, %lor.lhs.false.do.end42_crit_edge, %if.end26.do.end42_crit_edge
  %se_lun_nacl = getelementptr inbounds %struct.se_lun_acl, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %se_lun_nacl to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %se_lun_nacl, align 8
  %cmp44 = icmp eq ptr %37, %nacl
  br i1 %cmp44, label %do.end42.for.inc_crit_edge, label %if.end46

do.end42.for.inc_crit_edge:                       ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end46:                                         ; preds = %do.end42
  %se_tpg47 = getelementptr inbounds %struct.se_node_acl, ptr %37, i32 0, i32 10
  %38 = ptrtoint ptr %se_tpg47 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %se_tpg47, align 4
  %se_tpg_tfo48 = getelementptr inbounds %struct.se_portal_group, ptr %39, i32 0, i32 10
  %40 = ptrtoint ptr %se_tpg_tfo48 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %se_tpg_tfo48, align 4
  %cmp49.not = icmp eq ptr %3, %41
  br i1 %cmp49.not, label %if.end51, label %if.end46.for.inc_crit_edge

if.end46.for.inc_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end51:                                         ; preds = %if.end46
  %call54 = tail call i32 @strcmp(ptr noundef %nacl, ptr noundef %37) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %if.end51.for.inc_crit_edge

if.end51.for.inc_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end57:                                         ; preds = %if.end51
  %pr_kref = getelementptr i8, ptr %.pn204225, i32 -124
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pr_kref, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %pr_kref, i32 1, i32 3, i32 1) #15
  %42 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pr_kref, ptr %pr_kref, i32 1, ptr elementtype(i32) %pr_kref) #15, !srcloc !547
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end57.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !548

if.end57.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end57
  %add.i.i.i.i210 = add i32 %asmresult.i.i.i.i.i.i, 1
  %43 = or i32 %add.i.i.i.i210, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %43)
  %.not.i.i.i.i = icmp sgt i32 %43, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !549

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end57.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end57.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %pr_kref, i32 noundef %.sink.i.i.i.i) #15
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lun_deve_lock) #15
  %44 = ptrtoint ptr %se_lun_acl to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %se_lun_acl, align 8
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pr_kref, i32 noundef 4) #15
  %46 = ptrtoint ptr %pr_kref to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %pr_kref, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp.not.i = icmp eq i32 %47, 0
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %kref_get.exit.do.end8.i_crit_edge

kref_get.exit.do.end8.i_crit_edge:                ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end8.i

lor.lhs.false.i:                                  ; preds = %kref_get.exit
  %call2.i = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.do.end8.i_crit_edge

lor.lhs.false.i.do.end8.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end8.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.do.end8.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.do.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end8.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b16.i = load i1, ptr @core_scsi3_lunacl_depend_item.__warned, align 1
  br i1 %.b16.i, label %land.lhs.true5.i.do.end8.i_crit_edge, label %if.then.i

land.lhs.true5.i.do.end8.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end8.i

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @core_scsi3_lunacl_depend_item.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1446, ptr noundef nonnull @.str.64) #15
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then.i, %land.lhs.true5.i.do.end8.i_crit_edge, %land.lhs.true.i.do.end8.i_crit_edge, %lor.lhs.false.i.do.end8.i_crit_edge, %kref_get.exit.do.end8.i_crit_edge
  %tobool10.not.i = icmp eq ptr %45, null
  br i1 %tobool10.not.i, label %do.end8.i.if.end70_crit_edge, label %core_scsi3_lunacl_depend_item.exit

do.end8.i.if.end70_crit_edge:                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end70

core_scsi3_lunacl_depend_item.exit:               ; preds = %do.end8.i
  %se_lun_group.i = getelementptr inbounds %struct.se_lun_acl, ptr %45, i32 0, i32 3
  %call13.i = tail call i32 @target_depend_item(ptr noundef %se_lun_group.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp60 = icmp slt i32 %call13.i, 0
  br i1 %cmp60, label %do.end64, label %core_scsi3_lunacl_depend_item.exit.if.end70_crit_edge

core_scsi3_lunacl_depend_item.exit.if.end70_crit_edge: ; preds = %core_scsi3_lunacl_depend_item.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end70

do.end64:                                         ; preds = %core_scsi3_lunacl_depend_item.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94) #18
  tail call fastcc void @percpu_ref_put(ptr noundef %lun_ref)
  tail call fastcc void @kref_put(ptr noundef %pr_kref)
  br label %out

if.end70:                                         ; preds = %core_scsi3_lunacl_depend_item.exit.if.end70_crit_edge, %do.end8.i.if.end70_crit_edge
  %se_lun = getelementptr i8, ptr %.pn204225, i32 -16
  %48 = ptrtoint ptr %se_lun to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile ptr, ptr %se_lun, align 8
  %call.i.i.i.i211 = tail call zeroext i1 @__kasan_check_read(ptr noundef %pr_kref, i32 noundef 4) #15
  %50 = ptrtoint ptr %pr_kref to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %pr_kref, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp78.not = icmp eq i32 %51, 0
  br i1 %cmp78.not, label %lor.lhs.false79, label %if.end70.do.end90_crit_edge

if.end70.do.end90_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end90

lor.lhs.false79:                                  ; preds = %if.end70
  %call80 = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %land.lhs.true82, label %lor.lhs.false79.do.end90_crit_edge

lor.lhs.false79.do.end90_crit_edge:               ; preds = %lor.lhs.false79
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end90

land.lhs.true82:                                  ; preds = %lor.lhs.false79
  %call83 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %land.lhs.true82.do.end90_crit_edge, label %land.lhs.true85

land.lhs.true82.do.end90_crit_edge:               ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end90

land.lhs.true85:                                  ; preds = %land.lhs.true82
  %.b203206 = load i1, ptr @__core_scsi3_alloc_registration.__warned.96, align 1
  br i1 %.b203206, label %land.lhs.true85.do.end90_crit_edge, label %if.then87

land.lhs.true85.do.end90_crit_edge:               ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end90

if.then87:                                        ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @__core_scsi3_alloc_registration.__warned.96, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 788, ptr noundef nonnull @.str.64) #15
  br label %do.end90

do.end90:                                         ; preds = %if.then87, %land.lhs.true85.do.end90_crit_edge, %land.lhs.true82.do.end90_crit_edge, %lor.lhs.false79.do.end90_crit_edge, %if.end70.do.end90_crit_edge
  %52 = ptrtoint ptr %deve_tmp.0226 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %deve_tmp.0226, align 8
  %call93 = tail call fastcc ptr @__core_scsi3_do_alloc_registration(ptr noundef %37, ptr noundef %49, ptr noundef %deve_tmp.0226, i64 noundef %53, ptr noundef null, i64 noundef %sa_res_key, i32 noundef 1, i32 noundef %aptpl)
  %tobool94.not = icmp eq ptr %call93, null
  br i1 %tobool94.not, label %if.then95, label %if.end97

if.then95:                                        ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @percpu_ref_put(ptr noundef %lun_ref)
  tail call fastcc void @core_scsi3_lunacl_undepend_item(ptr noundef %deve_tmp.0226)
  br label %out

if.end97:                                         ; preds = %do.end90
  %pr_reg_atp_mem_list = getelementptr inbounds %struct.t10_pr_registration, ptr %call93, i32 0, i32 24
  %54 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %prev.i, align 4
  %call.i.i212 = tail call zeroext i1 @__list_add_valid(ptr noundef %pr_reg_atp_mem_list, ptr noundef %55, ptr noundef %pr_reg_atp_list) #15
  br i1 %call.i.i212, label %if.end.i.i, label %if.end97.list_add_tail.exit_crit_edge

if.end97.list_add_tail.exit_crit_edge:            ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #17
  %56 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %pr_reg_atp_mem_list, ptr %prev.i, align 4
  %57 = ptrtoint ptr %pr_reg_atp_mem_list to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %pr_reg_atp_list, ptr %pr_reg_atp_mem_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.t10_pr_registration, ptr %call93, i32 0, i32 24, i32 1
  %58 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %55, ptr %prev3.i.i, align 4
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %pr_reg_atp_mem_list, ptr %55, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end97.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %lun_deve_lock) #15
  br label %for.inc

for.inc:                                          ; preds = %list_add_tail.exit, %if.end51.for.inc_crit_edge, %if.end46.for.inc_crit_edge, %do.end42.for.inc_crit_edge, %for.body23.for.inc_crit_edge
  %60 = ptrtoint ptr %.pn204225 to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pn204 = load ptr, ptr %.pn204225, align 4
  %cmp21.not = icmp eq ptr %.pn204, %lun_deve_list
  br i1 %cmp21.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body23_crit_edge

for.inc.for.body23_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body23

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end13.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lun_deve_lock) #15
  tail call void @_raw_spin_lock(ptr noundef %se_port_lock) #15
  tail call fastcc void @percpu_ref_put(ptr noundef %lun_ref)
  br label %for.inc107

for.inc107:                                       ; preds = %for.end, %percpu_ref_tryget_live.exit.for.inc107_crit_edge
  %cmp.not = icmp eq ptr %.pn231, %dev_sep_list
  br i1 %cmp.not, label %for.inc107.for.end113_crit_edge, label %for.inc107.for.body_crit_edge

for.inc107.for.body_crit_edge:                    ; preds = %for.inc107
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc107.for.end113_crit_edge:                  ; preds = %for.inc107
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end113

for.end113:                                       ; preds = %for.inc107.for.end113_crit_edge, %if.end3.for.end113_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %se_port_lock) #15
  br label %cleanup

out:                                              ; preds = %if.then95, %do.end64
  %61 = ptrtoint ptr %pr_reg_atp_list to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pr_reg_atp_list, align 4
  %cmp128.not232 = icmp eq ptr %62, %pr_reg_atp_list
  br i1 %cmp128.not232, label %out.for.end138_crit_edge, label %out.for.body130_crit_edge

out.for.body130_crit_edge:                        ; preds = %out
  br label %for.body130

out.for.end138_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end138

for.body130:                                      ; preds = %list_del.exit.for.body130_crit_edge, %out.for.body130_crit_edge
  %.pn205.in233 = phi ptr [ %.pn205, %list_del.exit.for.body130_crit_edge ], [ %62, %out.for.body130_crit_edge ]
  %pr_reg_tmp.0 = getelementptr i8, ptr %.pn205.in233, i32 -644
  %63 = ptrtoint ptr %.pn205.in233 to i32
  call void @__asan_load4_noabort(i32 %63)
  %.pn205 = load ptr, ptr %.pn205.in233, align 4
  %call.i.i213 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn205.in233) #15
  br i1 %call.i.i213, label %if.end.i.i214, label %for.body130.list_del.exit_crit_edge

for.body130.list_del.exit_crit_edge:              ; preds = %for.body130
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i214:                                    ; preds = %for.body130
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn205.in233, i32 0, i32 1
  %64 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %prev.i.i, align 4
  %66 = ptrtoint ptr %.pn205.in233 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %.pn205.in233, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %65, ptr %prev1.i.i.i, align 4
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %67, ptr %65, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i214, %for.body130.list_del.exit_crit_edge
  %70 = ptrtoint ptr %.pn205.in233 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn205.in233, align 4
  %prev.i215 = getelementptr inbounds %struct.list_head, ptr %.pn205.in233, i32 0, i32 1
  %71 = ptrtoint ptr %prev.i215 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i215, align 4
  %pr_reg_deve = getelementptr i8, ptr %.pn205.in233, i32 -36
  %72 = ptrtoint ptr %pr_reg_deve to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pr_reg_deve, align 8
  tail call fastcc void @core_scsi3_lunacl_undepend_item(ptr noundef %73)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @t10_pr_reg_cache to i32))
  %74 = load ptr, ptr @t10_pr_reg_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %74, ptr noundef %pr_reg_tmp.0) #15
  %cmp128.not = icmp eq ptr %.pn205, %pr_reg_atp_list
  br i1 %cmp128.not, label %list_del.exit.for.end138_crit_edge, label %list_del.exit.for.body130_crit_edge

list_del.exit.for.body130_crit_edge:              ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body130

list_del.exit.for.end138_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end138

for.end138:                                       ; preds = %list_del.exit.for.end138_crit_edge, %out.for.end138_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @t10_pr_reg_cache to i32))
  %75 = load ptr, ptr @t10_pr_reg_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %75, ptr noundef nonnull %call) #15
  br label %cleanup

cleanup:                                          ; preds = %for.end138, %for.end113, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %for.end138 ], [ %call, %for.end113 ], [ null, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__core_scsi3_do_alloc_registration(ptr noundef %nacl, ptr nocapture noundef readonly %lun, ptr noundef %dest_deve, i64 noundef %mapped_lun, ptr noundef %isid, i64 noundef %sa_res_key, i32 noundef %all_tg_pt, i32 noundef %aptpl) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @t10_pr_reg_cache to i32))
  %0 = load ptr, ptr @t10_pr_reg_cache, align 4
  %call.i1 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 2848) #15
  %tobool.not = icmp eq ptr %call.i1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %pr_reg_list = getelementptr inbounds %struct.t10_pr_registration, ptr %call.i1, i32 0, i32 20
  %1 = ptrtoint ptr %pr_reg_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %pr_reg_list, ptr %pr_reg_list, align 4
  %prev.i = getelementptr inbounds %struct.t10_pr_registration, ptr %call.i1, i32 0, i32 20, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pr_reg_list, ptr %prev.i, align 8
  %pr_reg_abort_list = getelementptr inbounds %struct.t10_pr_registration, ptr %call.i1, i32 0, i32 21
  %3 = ptrtoint ptr %pr_reg_abort_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %pr_reg_abort_list, ptr %pr_reg_abort_list, align 4
  %prev.i2 = getelementptr inbounds %struct.t10_pr_registration, ptr %call.i1, i32 0, i32 21, i32 1
  %4 = ptrtoint ptr %prev.i2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %pr_reg_abort_list, ptr %prev.i2, align 8
  %pr_reg_aptpl_list = getelementptr inbounds %struct.t10_pr_registration, ptr %call.i1, i32 0, i32 22
  %5 = ptrtoint ptr %pr_reg_aptpl_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %pr_reg_aptpl_list, ptr %pr_reg_aptpl_list, align 4
  %prev.i3 = getelementptr inbounds %struct.t10_pr_registration, ptr %call.i1, i32 0, i32 22, i32 1
  %6 = ptrtoint ptr %prev.i3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %pr_reg_aptpl_list, ptr %prev.i3, align 8
  %pr_reg_atp_list = getelementptr inbounds %struct.t10_pr_registration, ptr %call.i1, i32 0, i32 23
  %7 = ptrtoint ptr %pr_reg_atp_list to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %pr_reg_atp_list, ptr %pr_reg_atp_list, align 4
  %prev.i4 = getelementptr inbounds %struct.t10_pr_registration, ptr %call.i1, i32 0, i32 23, i32 1
  %8 = ptrtoint ptr %prev.i4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %pr_reg_atp_list, ptr %prev.i4, align 8
  %pr_reg_atp_mem_list = getelementptr inbounds %struct.t10_pr_registration, ptr %call.i1, i32 0, i32 24
  %9 = ptrtoint ptr %pr_reg_atp_mem_list to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %pr_reg_atp_mem_list, ptr %pr_reg_atp_mem_list, align 4
  %prev.i5 = getelementptr inbounds %struct.t10_pr_registration, ptr %call.i1, i32 0, i32 24, i32 1
  %10 = ptrtoint ptr %prev.i5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %pr_reg_atp_mem_list, ptr %prev.i5, align 8
  %pr_res_holders = getelementptr inbounds %struct.t10_pr_registration, ptr %call.i1, i32 0, i32 17
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pr_res_holders, i32 noundef 4) #15
  %11 = ptrtoint ptr %pr_res_holders to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 0, ptr %pr_res_holders, align 8
  %pr_reg_nacl = getelementptr inbounds %struct.t10_pr_registration, ptr %call.i1, i32 0, i32 18
  %12 = ptrtoint ptr %pr_reg_nacl to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %nacl, ptr %pr_reg_nacl, align 4
  %tobool2.not = icmp eq ptr %dest_deve, null
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %pr_reg_deve = getelementptr inbounds %struct.t10_pr_registration, ptr %call.i1, i32 0, i32 19
  %13 = ptrtoint ptr %pr_reg_deve to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dest_deve, ptr %pr_reg_deve, align 8
  br label %if.end16

if.else:                                          ; preds = %if.end
  %14 = tail call i32 @llvm.read_register.i32(metadata !530) #15
  %and.i.i.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %17, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !545
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %if.else.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.else.rcu_read_lock.exit_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.else
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.52, i32 noundef 696, ptr noundef nonnull @.str.53) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.else.rcu_read_lock.exit_crit_edge
  %call4 = tail call ptr @target_nacl_find_deve(ptr noundef %nacl, i64 noundef %mapped_lun) #15
  %pr_reg_deve5 = getelementptr inbounds %struct.t10_pr_registration, ptr %call.i1, i32 0, i32 19
  %18 = ptrtoint ptr %pr_reg_deve5 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call4, ptr %pr_reg_deve5, align 8
  %tobool7.not = icmp eq ptr %call4, null
  br i1 %tobool7.not, label %if.then8, label %if.end14

if.then8:                                         ; preds = %rcu_read_lock.exit
  %call.i6 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i6, label %if.then8.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i9

if.then8.rcu_read_unlock.exit_crit_edge:          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i9:                                 ; preds = %if.then8
  %call1.i7 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7)
  %tobool.not.i8 = icmp eq i32 %call1.i7, 0
  br i1 %tobool.not.i8, label %land.lhs.true.i9.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i11

land.lhs.true.i9.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i9
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i11:                               ; preds = %land.lhs.true.i9
  %.b4.i10 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i10, label %land.lhs.true2.i11.rcu_read_unlock.exit_crit_edge, label %if.then.i12

land.lhs.true2.i11.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i11
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i12:                                      ; preds = %land.lhs.true2.i11
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.52, i32 noundef 724, ptr noundef nonnull @.str.54) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i12, %land.lhs.true2.i11.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i9.rcu_read_unlock.exit_crit_edge, %if.then8.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !546
  %19 = tail call i32 @llvm.read_register.i32(metadata !530) #15
  %and.i.i.i.i.i13 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i13 to ptr
  %preempt_count.i.i.i.i14 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i14, align 4
  %sub.i.i.i = add i32 %22, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i14, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, ptr noundef %nacl, i64 noundef %mapped_lun) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @t10_pr_reg_cache to i32))
  %23 = load ptr, ptr @t10_pr_reg_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %23, ptr noundef nonnull %call.i1) #15
  br label %cleanup

if.end14:                                         ; preds = %rcu_read_lock.exit
  %pr_kref = getelementptr inbounds %struct.se_dev_entry, ptr %call4, i32 0, i32 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pr_kref, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %pr_kref, i32 1, i32 3, i32 1) #15
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pr_kref, ptr %pr_kref, i32 1, ptr elementtype(i32) %pr_kref) #15, !srcloc !547
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end14.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !548

if.end14.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end14
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %25 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %.not.i.i.i.i = icmp sgt i32 %25, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !549

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end14.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end14.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %pr_kref, i32 noundef %.sink.i.i.i.i) #15
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %call.i15 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i15, label %kref_get.exit.rcu_read_unlock.exit25_crit_edge, label %land.lhs.true.i18

kref_get.exit.rcu_read_unlock.exit25_crit_edge:   ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit25

land.lhs.true.i18:                                ; preds = %kref_get.exit
  %call1.i16 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i16)
  %tobool.not.i17 = icmp eq i32 %call1.i16, 0
  br i1 %tobool.not.i17, label %land.lhs.true.i18.rcu_read_unlock.exit25_crit_edge, label %land.lhs.true2.i20

land.lhs.true.i18.rcu_read_unlock.exit25_crit_edge: ; preds = %land.lhs.true.i18
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit25

land.lhs.true2.i20:                               ; preds = %land.lhs.true.i18
  %.b4.i19 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i19, label %land.lhs.true2.i20.rcu_read_unlock.exit25_crit_edge, label %if.then.i21

land.lhs.true2.i20.rcu_read_unlock.exit25_crit_edge: ; preds = %land.lhs.true2.i20
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit25

if.then.i21:                                      ; preds = %land.lhs.true2.i20
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.52, i32 noundef 724, ptr noundef nonnull @.str.54) #15
  br label %rcu_read_unlock.exit25

rcu_read_unlock.exit25:                           ; preds = %if.then.i21, %land.lhs.true2.i20.rcu_read_unlock.exit25_crit_edge, %land.lhs.true.i18.rcu_read_unlock.exit25_crit_edge, %kref_get.exit.rcu_read_unlock.exit25_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !546
  %26 = tail call i32 @llvm.read_register.i32(metadata !530) #15
  %and.i.i.i.i.i22 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i22 to ptr
  %preempt_count.i.i.i.i23 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i23, align 4
  %sub.i.i.i24 = add i32 %29, -1
  store volatile i32 %sub.i.i.i24, ptr %preempt_count.i.i.i.i23, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  br label %if.end16

if.end16:                                         ; preds = %rcu_read_unlock.exit25, %if.then3
  %pr_res_mapped_lun = getelementptr inbounds %struct.t10_pr_registration, ptr %call.i1, i32 0, i32 11
  %30 = ptrtoint ptr %pr_res_mapped_lun to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %mapped_lun, ptr %pr_res_mapped_lun, align 8
  %31 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %lun, align 8
  %pr_aptpl_target_lun = getelementptr inbounds %struct.t10_pr_registration, ptr %call.i1, i32 0, i32 12
  %33 = ptrtoint ptr %pr_aptpl_target_lun to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %pr_aptpl_target_lun, align 8
  %lun_rtpi = getelementptr inbounds %struct.se_lun, ptr %lun, i32 0, i32 4
  %34 = ptrtoint ptr %lun_rtpi to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %lun_rtpi, align 8
  %tg_pt_sep_rtpi = getelementptr inbounds %struct.t10_pr_registration, ptr %call.i1, i32 0, i32 13
  %36 = ptrtoint ptr %tg_pt_sep_rtpi to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %tg_pt_sep_rtpi, align 8
  %pr_res_key = getelementptr inbounds %struct.t10_pr_registration, ptr %call.i1, i32 0, i32 16
  %37 = ptrtoint ptr %pr_res_key to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %sa_res_key, ptr %pr_res_key, align 8
  %pr_reg_all_tg_pt = getelementptr inbounds %struct.t10_pr_registration, ptr %call.i1, i32 0, i32 5
  %38 = ptrtoint ptr %pr_reg_all_tg_pt to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %all_tg_pt, ptr %pr_reg_all_tg_pt, align 4
  %pr_reg_aptpl = getelementptr inbounds %struct.t10_pr_registration, ptr %call.i1, i32 0, i32 6
  %39 = ptrtoint ptr %pr_reg_aptpl to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %aptpl, ptr %pr_reg_aptpl, align 8
  %cmp.not = icmp eq ptr %isid, null
  br i1 %cmp.not, label %if.end16.cleanup_crit_edge, label %if.then17

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then17:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  %40 = ptrtoint ptr %isid to i32
  call void @__asan_loadN_noabort(i32 %40, i32 8)
  %41 = load i64, ptr %isid, align 1
  %pr_reg_bin_isid = getelementptr inbounds %struct.t10_pr_registration, ptr %call.i1, i32 0, i32 15
  %42 = ptrtoint ptr %pr_reg_bin_isid to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %pr_reg_bin_isid, align 8
  %call20 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call.i1, i32 noundef 16, ptr noundef nonnull @.str.22, ptr noundef nonnull %isid)
  %isid_present_at_reg = getelementptr inbounds %struct.t10_pr_registration, ptr %call.i1, i32 0, i32 10
  %43 = ptrtoint ptr %isid_present_at_reg to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %isid_present_at_reg, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end16.cleanup_crit_edge, %rcu_read_unlock.exit, %do.end
  %retval.0 = phi ptr [ null, %rcu_read_unlock.exit ], [ null, %do.end ], [ %call.i1, %if.then17 ], [ %call.i1, %if.end16.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @percpu_ref_put(ptr noundef %ref) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = tail call i32 @llvm.read_register.i32(metadata !530) #15
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !545
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.52, i32 noundef 696, ptr noundef nonnull @.str.53) #15
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %4 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %ref, align 4
  %and.i.i = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i1.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i1.i, label %do.body1.i, label %if.else.i, !prof !549

do.body1.i:                                       ; preds = %rcu_read_lock.exit.i
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !559
  %7 = tail call i32 @llvm.read_register.i32(metadata !530) #15
  %and.i2.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i2.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %12, %5
  %13 = inttoptr i32 %add.i to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add15.i = add i32 %15, -1
  store i32 %add15.i, ptr %13, align 4
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !560
  %and.i.i.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %if.then29.i, label %do.body1.i.do.end31.i_crit_edge, !prof !548

do.body1.i.do.end31.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end31.i

if.then29.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %do.end31.i

do.end31.i:                                       ; preds = %if.then29.i, %do.body1.i.do.end31.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #15, !srcloc !561
  br label %if.end48.i

if.else.i:                                        ; preds = %rcu_read_lock.exit.i
  %data.i = getelementptr inbounds %struct.percpu_ref, ptr %ref, i32 0, i32 1
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %18, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !565
  tail call void @llvm.prefetch.p0(ptr %18, i32 1, i32 3, i32 1) #15
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 1, ptr elementtype(i32) %18) #15, !srcloc !566
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %19, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !567
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.then45.i, label %if.else.i.if.end48.i_crit_edge, !prof !548

if.else.i.if.end48.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end48.i

if.then45.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i, align 4
  %release.i = getelementptr inbounds %struct.percpu_ref_data, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %release.i, align 4
  tail call void %23(ptr noundef %ref) #15
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then45.i, %if.else.i.if.end48.i_crit_edge, %do.end31.i
  %call.i3.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i3.i, label %if.end48.i.percpu_ref_put_many.exit_crit_edge, label %land.lhs.true.i6.i

if.end48.i.percpu_ref_put_many.exit_crit_edge:    ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %percpu_ref_put_many.exit

land.lhs.true.i6.i:                               ; preds = %if.end48.i
  %call1.i4.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i)
  %tobool.not.i5.i = icmp eq i32 %call1.i4.i, 0
  br i1 %tobool.not.i5.i, label %land.lhs.true.i6.i.percpu_ref_put_many.exit_crit_edge, label %land.lhs.true2.i8.i

land.lhs.true.i6.i.percpu_ref_put_many.exit_crit_edge: ; preds = %land.lhs.true.i6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %percpu_ref_put_many.exit

land.lhs.true2.i8.i:                              ; preds = %land.lhs.true.i6.i
  %.b4.i7.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i, label %land.lhs.true2.i8.i.percpu_ref_put_many.exit_crit_edge, label %if.then.i9.i

land.lhs.true2.i8.i.percpu_ref_put_many.exit_crit_edge: ; preds = %land.lhs.true2.i8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %percpu_ref_put_many.exit

if.then.i9.i:                                     ; preds = %land.lhs.true2.i8.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.52, i32 noundef 724, ptr noundef nonnull @.str.54) #15
  br label %percpu_ref_put_many.exit

percpu_ref_put_many.exit:                         ; preds = %if.then.i9.i, %land.lhs.true2.i8.i.percpu_ref_put_many.exit_crit_edge, %land.lhs.true.i6.i.percpu_ref_put_many.exit_crit_edge, %if.end48.i.percpu_ref_put_many.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !546
  %24 = tail call i32 @llvm.read_register.i32(metadata !530) #15
  %and.i.i.i.i.i10.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i10.i to ptr
  %preempt_count.i.i.i.i11.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i11.i, align 4
  %sub.i.i.i.i = add i32 %27, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i11.i, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @target_depend_item(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @target_parse_pr_out_transport_id(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__core_tpg_get_initiator_node_acl(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @core_get_se_deve_from_rtpi(ptr noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__core_scsi3_write_aptpl_to_file(ptr noundef %dev, ptr noundef %buf) unnamed_addr #3 align 64 {
entry:
  %pos = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos) #15
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %pos, align 8
  %unit_serial = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 36, i32 3
  %call = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.140, ptr noundef nonnull @db_root, ptr noundef %unit_serial) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @filp_open(ptr noundef nonnull %call, i32 noundef 578, i16 noundef zeroext 384) #15
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, ptr noundef nonnull %call) #18
  tail call void @kfree(ptr noundef nonnull %call) #15
  %1 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @strlen(ptr noundef %buf) #20
  %add = add i32 %call7, 1
  %call8 = call i32 @kernel_write(ptr noundef %call1, ptr noundef %buf, i32 noundef %add, ptr noundef nonnull %pos) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %do.body10, label %if.end6.if.end20_crit_edge

if.end6.if.end20_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

do.body10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__core_scsi3_write_aptpl_to_file.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__core_scsi3_write_aptpl_to_file, %if.then16)) #15
          to label %if.end20 [label %if.then16], !srcloc !541

if.then16:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__core_scsi3_write_aptpl_to_file.__UNIQUE_ID_ddebug239, ptr noundef nonnull @.str.143, ptr noundef nonnull %call) #15
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %do.body10, %if.end6.if.end20_crit_edge
  %cond = phi i32 [ -5, %if.then16 ], [ 0, %if.end6.if.end20_crit_edge ], [ -5, %do.body10 ]
  call void @fput(ptr noundef %call1) #15
  call void @kfree(ptr noundef nonnull %call) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %do.end ], [ %cond, %if.end20 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @filp_open(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @core_scsi3_pro_reserve(ptr nocapture noundef readonly %cmd, i32 noundef %type, i32 noundef %scope, i64 noundef %res_key) unnamed_addr #3 align 64 {
entry:
  %buf.i = alloca [16 x i8], align 1
  %i_buf = alloca [21 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %se_dev = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 19
  %0 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_dev, align 4
  %se_sess1 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 21
  %2 = ptrtoint ptr %se_sess1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %se_sess1, align 4
  %se_lun2 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 20
  %4 = ptrtoint ptr %se_lun2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %se_lun2, align 8
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %i_buf) #15
  %6 = call ptr @memset(ptr %i_buf, i32 0, i32 21)
  %tobool.not = icmp eq ptr %3, null
  %tobool3.not = icmp eq ptr %5, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %se_node_acl = getelementptr inbounds %struct.se_session, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %se_node_acl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %se_node_acl, align 8
  %se_tpg.i = getelementptr inbounds %struct.se_node_acl, ptr %8, i32 0, i32 10
  %9 = ptrtoint ptr %se_tpg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %se_tpg.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf.i) #15
  %11 = call ptr @memset(ptr %buf.i, i32 0, i32 16)
  %se_tpg_tfo.i = getelementptr inbounds %struct.se_portal_group, ptr %10, i32 0, i32 10
  %12 = ptrtoint ptr %se_tpg_tfo.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %se_tpg_tfo.i, align 4
  %sess_get_initiator_sid.i = getelementptr inbounds %struct.target_core_fabric_ops, ptr %13, i32 0, i32 19
  %14 = ptrtoint ptr %sess_get_initiator_sid.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sess_get_initiator_sid.i, align 4
  %cmp.not.i = icmp eq ptr %15, null
  br i1 %cmp.not.i, label %if.end.core_scsi3_locate_pr_reg.exit_crit_edge, label %if.then.i

if.end.core_scsi3_locate_pr_reg.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %core_scsi3_locate_pr_reg.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = call i32 %15(ptr noundef nonnull %3, ptr noundef nonnull %buf.i, i32 noundef 16) #15
  br label %core_scsi3_locate_pr_reg.exit

core_scsi3_locate_pr_reg.exit:                    ; preds = %if.then.i, %if.end.core_scsi3_locate_pr_reg.exit_crit_edge
  %isid_ptr.0.i = phi ptr [ %buf.i, %if.then.i ], [ null, %if.end.core_scsi3_locate_pr_reg.exit_crit_edge ]
  %call4.i = call fastcc ptr @__core_scsi3_locate_pr_reg(ptr noundef %1, ptr noundef %8, ptr noundef %isid_ptr.0.i) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf.i) #15
  %tobool6.not = icmp eq ptr %call4.i, null
  br i1 %tobool6.not, label %do.end10, label %if.end13

do.end10:                                         ; preds = %core_scsi3_locate_pr_reg.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159) #18
  br label %cleanup

if.end13:                                         ; preds = %core_scsi3_locate_pr_reg.exit
  %pr_res_key = getelementptr inbounds %struct.t10_pr_registration, ptr %call4.i, i32 0, i32 16
  %16 = ptrtoint ptr %pr_res_key to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %pr_res_key, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %res_key)
  %cmp.not = icmp eq i64 %17, %res_key
  br i1 %cmp.not, label %if.end21, label %do.end17

do.end17:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.162, i64 noundef %res_key, i64 noundef %17) #18
  br label %out_put_pr_reg

if.end21:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %scope)
  %cmp22.not = icmp eq i32 %scope, 0
  br i1 %cmp22.not, label %if.end29, label %do.end26

do.end26:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.165, i32 noundef %scope) #18
  br label %out_put_pr_reg

if.end29:                                         ; preds = %if.end21
  %dev_reservation_lock = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 20
  call void @_raw_spin_lock(ptr noundef %dev_reservation_lock) #15
  %dev_pr_res_holder = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 28
  %18 = ptrtoint ptr %dev_pr_res_holder to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_pr_res_holder, align 4
  %tobool30.not = icmp eq ptr %19, null
  br i1 %tobool30.not, label %if.end72, label %is_reservation_holder.exit

is_reservation_holder.exit:                       ; preds = %if.end29
  %pr_res_type1.i = getelementptr inbounds %struct.t10_pr_registration, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %pr_res_type1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pr_res_type1.i, align 8
  %cmp.i = icmp ne ptr %19, %call4.i
  %22 = freeze i1 %cmp.i
  %.not = xor i1 %22, true
  %.off = add i32 %21, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %or.cond187 = select i1 %.not, i1 true, i1 %switch
  br i1 %or.cond187, label %if.end46, label %if.then34

if.then34:                                        ; preds = %is_reservation_holder.exit
  call void @__sanitizer_cov_trace_pc() #17
  %pr_reg_nacl = getelementptr inbounds %struct.t10_pr_registration, ptr %19, i32 0, i32 18
  %23 = ptrtoint ptr %pr_reg_nacl to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pr_reg_nacl, align 4
  %se_tfo = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 26
  %25 = ptrtoint ptr %se_tfo to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %se_tfo, align 8
  %fabric_name = getelementptr inbounds %struct.target_core_fabric_ops, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %fabric_name to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fabric_name, align 4
  %29 = ptrtoint ptr %se_node_acl to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %se_node_acl, align 8
  %se_tpg = getelementptr inbounds %struct.se_node_acl, ptr %24, i32 0, i32 10
  %31 = ptrtoint ptr %se_tpg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %se_tpg, align 4
  %se_tpg_tfo = getelementptr inbounds %struct.se_portal_group, ptr %32, i32 0, i32 10
  %33 = ptrtoint ptr %se_tpg_tfo to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %se_tpg_tfo, align 4
  %fabric_name40 = getelementptr inbounds %struct.target_core_fabric_ops, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %fabric_name40 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fabric_name40, align 4
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168, ptr noundef %28, ptr noundef %30, ptr noundef %36, ptr noundef %24) #18
  call void @_raw_spin_unlock(ptr noundef %dev_reservation_lock) #15
  br label %out_put_pr_reg

if.end46:                                         ; preds = %is_reservation_holder.exit
  %37 = ptrtoint ptr %pr_res_type1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pr_res_type1.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %type)
  %cmp47.not = icmp eq i32 %38, %type
  br i1 %cmp47.not, label %lor.lhs.false48, label %if.end46.if.then50_crit_edge

if.end46.if.then50_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then50

lor.lhs.false48:                                  ; preds = %if.end46
  %pr_res_scope = getelementptr inbounds %struct.t10_pr_registration, ptr %19, i32 0, i32 9
  %39 = ptrtoint ptr %pr_res_scope to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pr_res_scope, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp49.not = icmp eq i32 %40, 0
  br i1 %cmp49.not, label %if.end70, label %lor.lhs.false48.if.then50_crit_edge

lor.lhs.false48.if.then50_crit_edge:              ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then50

if.then50:                                        ; preds = %lor.lhs.false48.if.then50_crit_edge, %if.end46.if.then50_crit_edge
  %pr_reg_nacl52 = getelementptr inbounds %struct.t10_pr_registration, ptr %19, i32 0, i32 18
  %41 = ptrtoint ptr %pr_reg_nacl52 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pr_reg_nacl52, align 4
  %se_tfo57 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 26
  %43 = ptrtoint ptr %se_tfo57 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %se_tfo57, align 8
  %fabric_name58 = getelementptr inbounds %struct.target_core_fabric_ops, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %fabric_name58 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fabric_name58, align 4
  %47 = ptrtoint ptr %se_node_acl to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %se_node_acl, align 8
  %se_tpg62 = getelementptr inbounds %struct.se_node_acl, ptr %42, i32 0, i32 10
  %49 = ptrtoint ptr %se_tpg62 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %se_tpg62, align 4
  %se_tpg_tfo63 = getelementptr inbounds %struct.se_portal_group, ptr %50, i32 0, i32 10
  %51 = ptrtoint ptr %se_tpg_tfo63 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %se_tpg_tfo63, align 4
  %fabric_name64 = getelementptr inbounds %struct.target_core_fabric_ops, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %fabric_name64 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %fabric_name64, align 4
  %call68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.171, ptr noundef %46, ptr noundef %48, ptr noundef %54, ptr noundef %42) #18
  call void @_raw_spin_unlock(ptr noundef %dev_reservation_lock) #15
  br label %out_put_pr_reg

if.end70:                                         ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #17
  call void @_raw_spin_unlock(ptr noundef %dev_reservation_lock) #15
  br label %out_put_pr_reg

if.end72:                                         ; preds = %if.end29
  %pr_res_scope73 = getelementptr inbounds %struct.t10_pr_registration, ptr %call4.i, i32 0, i32 9
  %55 = ptrtoint ptr %pr_res_scope73 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %pr_res_scope73, align 4
  %pr_res_type74 = getelementptr inbounds %struct.t10_pr_registration, ptr %call4.i, i32 0, i32 8
  %56 = ptrtoint ptr %pr_res_type74 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %type, ptr %pr_res_type74, align 8
  %pr_res_holder75 = getelementptr inbounds %struct.t10_pr_registration, ptr %call4.i, i32 0, i32 7
  %57 = ptrtoint ptr %pr_res_holder75 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %pr_res_holder75, align 4
  %58 = ptrtoint ptr %dev_pr_res_holder to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call4.i, ptr %dev_pr_res_holder, align 4
  %isid_present_at_reg.i = getelementptr inbounds %struct.t10_pr_registration, ptr %call4.i, i32 0, i32 10
  %59 = ptrtoint ptr %isid_present_at_reg.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %isid_present_at_reg.i, align 8, !range !540
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool.not.i181 = icmp eq i8 %60, 0
  br i1 %tobool.not.i181, label %if.then.i182, label %if.end.i

if.then.i182:                                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #17
  %61 = ptrtoint ptr %i_buf to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %i_buf, align 1
  br label %core_pr_dump_initiator_port.exit

if.end.i:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #17
  %call.i183 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %i_buf, i32 noundef 21, ptr noundef nonnull @.str, ptr noundef nonnull %call4.i) #15
  br label %core_pr_dump_initiator_port.exit

core_pr_dump_initiator_port.exit:                 ; preds = %if.end.i, %if.then.i182
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @core_scsi3_pro_reserve.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@core_scsi3_pro_reserve, %if.then84)) #15
          to label %do.body92 [label %if.then84], !srcloc !541

if.then84:                                        ; preds = %core_pr_dump_initiator_port.exit
  %se_tfo85 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 26
  %62 = ptrtoint ptr %se_tfo85 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %se_tfo85, align 8
  %fabric_name86 = getelementptr inbounds %struct.target_core_fabric_ops, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %fabric_name86 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %fabric_name86, align 4
  %switch.tableidx = add i32 %type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %66 = icmp ult i32 %switch.tableidx, 8
  br i1 %66, label %switch.lookup, label %if.then84.core_scsi3_pr_dump_type.exit_crit_edge

if.then84.core_scsi3_pr_dump_type.exit_crit_edge: ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #17
  br label %core_scsi3_pr_dump_type.exit

switch.lookup:                                    ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep = getelementptr inbounds [8 x ptr], ptr @switch.table.core_scsi3_pro_reserve, i32 0, i32 %switch.tableidx
  %67 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %67)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %core_scsi3_pr_dump_type.exit

core_scsi3_pr_dump_type.exit:                     ; preds = %switch.lookup, %if.then84.core_scsi3_pr_dump_type.exit_crit_edge
  %retval.0.i184 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.32, %if.then84.core_scsi3_pr_dump_type.exit_crit_edge ]
  %pr_reg_all_tg_pt = getelementptr inbounds %struct.t10_pr_registration, ptr %call4.i, i32 0, i32 5
  %68 = ptrtoint ptr %pr_reg_all_tg_pt to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pr_reg_all_tg_pt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool88.not = icmp ne i32 %69, 0
  %cond = zext i1 %tobool88.not to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @core_scsi3_pro_reserve.__UNIQUE_ID_ddebug243, ptr noundef nonnull @.str.173, ptr noundef %65, ptr noundef nonnull %retval.0.i184, i32 noundef %cond) #15
  br label %do.body92

do.body92:                                        ; preds = %core_scsi3_pr_dump_type.exit, %core_pr_dump_initiator_port.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @core_scsi3_pro_reserve.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@core_scsi3_pro_reserve, %if.then104)) #15
          to label %do.end113 [label %if.then104], !srcloc !541

if.then104:                                       ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #17
  %se_tfo105 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 26
  %70 = ptrtoint ptr %se_tfo105 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %se_tfo105, align 8
  %fabric_name106 = getelementptr inbounds %struct.target_core_fabric_ops, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %fabric_name106 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %fabric_name106, align 4
  %74 = ptrtoint ptr %se_node_acl to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %se_node_acl, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @core_scsi3_pro_reserve.__UNIQUE_ID_ddebug244, ptr noundef nonnull @.str.67, ptr noundef %73, ptr noundef %75, ptr noundef nonnull %i_buf) #15
  br label %do.end113

do.end113:                                        ; preds = %if.then104, %do.body92
  call void @_raw_spin_unlock(ptr noundef %dev_reservation_lock) #15
  %pr_aptpl_active = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 38, i32 1
  %76 = ptrtoint ptr %pr_aptpl_active to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %pr_aptpl_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool115.not = icmp eq i32 %77, 0
  br i1 %tobool115.not, label %do.end113.out_put_pr_reg_crit_edge, label %if.then116

do.end113.out_put_pr_reg_crit_edge:               ; preds = %do.end113
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_put_pr_reg

if.then116:                                       ; preds = %do.end113
  call void @__sanitizer_cov_trace_pc() #17
  %78 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %se_dev, align 4
  %call118 = call fastcc i32 @core_scsi3_update_and_write_aptpl(ptr noundef %79, i1 noundef zeroext true)
  br label %out_put_pr_reg

out_put_pr_reg:                                   ; preds = %if.then116, %do.end113.out_put_pr_reg_crit_edge, %if.end70, %if.then50, %if.then34, %do.end26, %do.end17
  %ret.0 = phi i32 [ 16, %do.end17 ], [ 9, %do.end26 ], [ 16, %if.then50 ], [ 0, %if.end70 ], [ 16, %if.then34 ], [ 0, %if.then116 ], [ 0, %do.end113.out_put_pr_reg_crit_edge ]
  %pr_res_holders.i = getelementptr inbounds %struct.t10_pr_registration, ptr %call4.i, i32 0, i32 17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !542
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %pr_res_holders.i, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %pr_res_holders.i, i32 1, i32 3, i32 1) #15
  %80 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pr_res_holders.i, ptr %pr_res_holders.i, i32 1, ptr elementtype(i32) %pr_res_holders.i) #15, !srcloc !543
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !544
  br label %cleanup

cleanup:                                          ; preds = %out_put_pr_reg, %do.end10, %do.end
  %retval.0 = phi i32 [ %ret.0, %out_put_pr_reg ], [ 10, %do.end10 ], [ 10, %do.end ]
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %i_buf) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__core_scsi3_complete_pro_preempt(ptr noundef %dev, ptr noundef %pr_reg, ptr noundef %preempt_and_abort_list, i32 noundef %type, i32 noundef %preempt_type) unnamed_addr #3 align 64 {
entry:
  %i_buf = alloca [21 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %pr_reg_nacl = getelementptr inbounds %struct.t10_pr_registration, ptr %pr_reg, i32 0, i32 18
  %0 = ptrtoint ptr %pr_reg_nacl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pr_reg_nacl, align 4
  %se_tpg = getelementptr inbounds %struct.se_node_acl, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %se_tpg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %se_tpg, align 4
  %se_tpg_tfo = getelementptr inbounds %struct.se_portal_group, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %se_tpg_tfo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %se_tpg_tfo, align 4
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %i_buf) #15
  %6 = call ptr @memset(ptr %i_buf, i32 0, i32 21)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %7 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 20, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !548

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2763, i32 noundef 9, ptr noundef null) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %isid_present_at_reg.i = getelementptr inbounds %struct.t10_pr_registration, ptr %pr_reg, i32 0, i32 10
  %8 = ptrtoint ptr %isid_present_at_reg.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %isid_present_at_reg.i, align 8, !range !540
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %i_buf to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %i_buf, align 1
  br label %core_pr_dump_initiator_port.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call.i4 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %i_buf, i32 noundef 21, ptr noundef nonnull @.str, ptr noundef %pr_reg) #15
  br label %core_pr_dump_initiator_port.exit

core_pr_dump_initiator_port.exit:                 ; preds = %if.end.i, %if.then.i
  %dev_pr_res_holder = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 28
  %11 = ptrtoint ptr %dev_pr_res_holder to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_pr_res_holder, align 4
  %tobool24.not = icmp eq ptr %12, null
  br i1 %tobool24.not, label %core_pr_dump_initiator_port.exit.if.end27_crit_edge, label %if.then25

core_pr_dump_initiator_port.exit.if.end27_crit_edge: ; preds = %core_pr_dump_initiator_port.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27

if.then25:                                        ; preds = %core_pr_dump_initiator_port.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @__core_scsi3_complete_pro_release(ptr noundef %dev, ptr noundef %1, ptr noundef nonnull %12, i32 noundef 0, i32 noundef 0)
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %core_pr_dump_initiator_port.exit.if.end27_crit_edge
  %13 = ptrtoint ptr %dev_pr_res_holder to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %pr_reg, ptr %dev_pr_res_holder, align 4
  %pr_res_holder = getelementptr inbounds %struct.t10_pr_registration, ptr %pr_reg, i32 0, i32 7
  %14 = ptrtoint ptr %pr_res_holder to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %pr_res_holder, align 4
  %pr_res_type = getelementptr inbounds %struct.t10_pr_registration, ptr %pr_reg, i32 0, i32 8
  %15 = ptrtoint ptr %pr_res_type to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %type, ptr %pr_res_type, align 8
  %pr_res_scope = getelementptr inbounds %struct.t10_pr_registration, ptr %pr_reg, i32 0, i32 9
  %16 = ptrtoint ptr %pr_res_scope to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %pr_res_scope, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__core_scsi3_complete_pro_preempt.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__core_scsi3_complete_pro_preempt, %if.then39)) #15
          to label %do.body47 [label %if.then39], !srcloc !541

if.then39:                                        ; preds = %if.end27
  %fabric_name = getelementptr inbounds %struct.target_core_fabric_ops, ptr %5, i32 0, i32 2
  %17 = ptrtoint ptr %fabric_name to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fabric_name, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %preempt_type)
  %cmp40 = icmp eq i32 %preempt_type, 1
  %cond = select i1 %cmp40, ptr @.str.191, ptr @.str.25
  %switch.tableidx = add i32 %type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %19 = icmp ult i32 %switch.tableidx, 8
  br i1 %19, label %switch.lookup, label %if.then39.core_scsi3_pr_dump_type.exit_crit_edge

if.then39.core_scsi3_pr_dump_type.exit_crit_edge: ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #17
  br label %core_scsi3_pr_dump_type.exit

switch.lookup:                                    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep = getelementptr inbounds [8 x ptr], ptr @switch.table.__core_scsi3_complete_pro_preempt, i32 0, i32 %switch.tableidx
  %20 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %20)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %core_scsi3_pr_dump_type.exit

core_scsi3_pr_dump_type.exit:                     ; preds = %switch.lookup, %if.then39.core_scsi3_pr_dump_type.exit_crit_edge
  %retval.0.i5 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.32, %if.then39.core_scsi3_pr_dump_type.exit_crit_edge ]
  %pr_reg_all_tg_pt = getelementptr inbounds %struct.t10_pr_registration, ptr %pr_reg, i32 0, i32 5
  %21 = ptrtoint ptr %pr_reg_all_tg_pt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pr_reg_all_tg_pt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool42.not = icmp ne i32 %22, 0
  %cond43 = zext i1 %tobool42.not to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__core_scsi3_complete_pro_preempt.__UNIQUE_ID_ddebug248, ptr noundef nonnull @.str.197, ptr noundef %18, ptr noundef nonnull %cond, ptr noundef nonnull %retval.0.i5, i32 noundef %cond43) #15
  br label %do.body47

do.body47:                                        ; preds = %core_scsi3_pr_dump_type.exit, %if.end27
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__core_scsi3_complete_pro_preempt.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__core_scsi3_complete_pro_preempt, %if.then59)) #15
          to label %do.end67 [label %if.then59], !srcloc !541

if.then59:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #17
  %fabric_name60 = getelementptr inbounds %struct.target_core_fabric_ops, ptr %5, i32 0, i32 2
  %23 = ptrtoint ptr %fabric_name60 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fabric_name60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %preempt_type)
  %cmp61 = icmp eq i32 %preempt_type, 1
  %cond62 = select i1 %cmp61, ptr @.str.191, ptr @.str.25
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__core_scsi3_complete_pro_preempt.__UNIQUE_ID_ddebug249, ptr noundef nonnull @.str.198, ptr noundef %24, ptr noundef nonnull %cond62, ptr noundef %1, ptr noundef nonnull %i_buf) #15
  br label %do.end67

do.end67:                                         ; preds = %if.then59, %do.body47
  %tobool68.not = icmp eq ptr %preempt_and_abort_list, null
  br i1 %tobool68.not, label %do.end67.if.end70_crit_edge, label %if.then69

do.end67.if.end70_crit_edge:                      ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end70

if.then69:                                        ; preds = %do.end67
  %pr_reg_abort_list = getelementptr inbounds %struct.t10_pr_registration, ptr %pr_reg, i32 0, i32 21
  %prev.i = getelementptr inbounds %struct.list_head, ptr %preempt_and_abort_list, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %pr_reg_abort_list, ptr noundef %26, ptr noundef nonnull %preempt_and_abort_list) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.then69.if.end70_crit_edge

if.then69.if.end70_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end70

if.end.i.i:                                       ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #17
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %pr_reg_abort_list, ptr %prev.i, align 4
  %28 = ptrtoint ptr %pr_reg_abort_list to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %preempt_and_abort_list, ptr %pr_reg_abort_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.t10_pr_registration, ptr %pr_reg, i32 0, i32 21, i32 1
  %29 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev3.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %pr_reg_abort_list, ptr %26, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.end.i.i, %if.then69.if.end70_crit_edge, %do.end67.if.end70_crit_edge
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %i_buf) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @core_scsi3_release_preempt_and_abort(ptr noundef readonly %preempt_and_abort_list, ptr noundef readnone %pr_reg_holder) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %preempt_and_abort_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %preempt_and_abort_list, align 4
  %cmp.not28 = icmp eq ptr %1, %preempt_and_abort_list
  br i1 %cmp.not28, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in29 = phi ptr [ %.pn32, %for.inc.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %pr_reg.031 = getelementptr i8, ptr %.pn.in29, i32 -620
  %2 = ptrtoint ptr %.pn.in29 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn32 = load ptr, ptr %.pn.in29, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in29) #15
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in29, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in29 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in29, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %.pn.in29 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in29, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in29, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %cmp7 = icmp eq ptr %pr_reg.031, %pr_reg_holder
  br i1 %cmp7, label %list_del.exit.for.inc_crit_edge, label %if.end

list_del.exit.for.inc_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end:                                           ; preds = %list_del.exit
  %pr_res_holder = getelementptr i8, ptr %.pn.in29, i32 -80
  %11 = ptrtoint ptr %pr_res_holder to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pr_res_holder, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.end10, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.199) #18
  br label %for.inc

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %pr_reg_deve = getelementptr i8, ptr %.pn.in29, i32 -12
  %13 = ptrtoint ptr %pr_reg_deve to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %pr_reg_deve, align 8
  %pr_reg_nacl = getelementptr i8, ptr %.pn.in29, i32 -16
  %14 = ptrtoint ptr %pr_reg_nacl to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %pr_reg_nacl, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @t10_pr_reg_cache to i32))
  %15 = load ptr, ptr @t10_pr_reg_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %15, ptr noundef %pr_reg.031) #15
  br label %for.inc

for.inc:                                          ; preds = %if.end10, %do.end, %list_del.exit.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn32, %preempt_and_abort_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @core_tmr_lun_reset(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_set_cmd_data_length(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @target_get_pr_transport_id_len(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @target_get_pr_transport_id(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @core_scsi3_pr_seq_non_holder(ptr noundef %cmd, i32 noundef %pr_reg_type, i1 noundef zeroext %isid_mismatch) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %t_task_cdb = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 30
  %0 = ptrtoint ptr %t_task_cdb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t_task_cdb, align 8
  %se_sess1 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 21
  %2 = ptrtoint ptr %se_sess1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %se_sess1, align 4
  %se_node_acl = getelementptr inbounds %struct.se_session, ptr %3, i32 0, i32 4
  br i1 %isid_mismatch, label %entry.if.end5_crit_edge, label %if.else

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.else:                                          ; preds = %entry
  %4 = ptrtoint ptr %se_node_acl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %se_node_acl, align 8
  %6 = tail call i32 @llvm.read_register.i32(metadata !530) #15
  %and.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !545
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %if.else.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.else.rcu_read_lock.exit_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.else
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.52, i32 noundef 696, ptr noundef nonnull @.str.53) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.else.rcu_read_lock.exit_crit_edge
  %orig_fe_lun = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 14
  %10 = ptrtoint ptr %orig_fe_lun to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %orig_fe_lun, align 8
  %call = tail call ptr @target_nacl_find_deve(ptr noundef %5, i64 noundef %11) #15
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %rcu_read_lock.exit.if.end_crit_edge, label %if.then3

rcu_read_lock.exit.if.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then3:                                         ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  %deve_flags = getelementptr inbounds %struct.se_dev_entry, ptr %call, i32 0, i32 13
  %12 = ptrtoint ptr %deve_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %deve_flags, align 4
  %shr.i = lshr i32 %13, 1
  %and1.i = and i32 %shr.i, 1
  br label %if.end

if.end:                                           ; preds = %if.then3, %rcu_read_lock.exit.if.end_crit_edge
  %registered_nexus.0 = phi i32 [ %and1.i, %if.then3 ], [ 0, %rcu_read_lock.exit.if.end_crit_edge ]
  %call.i301 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i301, label %if.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i304

if.end.rcu_read_unlock.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i304:                               ; preds = %if.end
  %call1.i302 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i302)
  %tobool.not.i303 = icmp eq i32 %call1.i302, 0
  br i1 %tobool.not.i303, label %land.lhs.true.i304.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i306

land.lhs.true.i304.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i304
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i306:                              ; preds = %land.lhs.true.i304
  %.b4.i305 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i305, label %land.lhs.true2.i306.rcu_read_unlock.exit_crit_edge, label %if.then.i307

land.lhs.true2.i306.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i306
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i307:                                     ; preds = %land.lhs.true2.i306
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.52, i32 noundef 724, ptr noundef nonnull @.str.54) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i307, %land.lhs.true2.i306.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i304.rcu_read_unlock.exit_crit_edge, %if.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !546
  %14 = tail call i32 @llvm.read_register.i32(metadata !530) #15
  %and.i.i.i.i.i308 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i308 to ptr
  %preempt_count.i.i.i.i309 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i309 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i309, align 4
  %sub.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i309, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  br label %if.end5

if.end5:                                          ; preds = %rcu_read_unlock.exit, %entry.if.end5_crit_edge
  %registered_nexus.1 = phi i32 [ %registered_nexus.0, %rcu_read_unlock.exit ], [ 0, %entry.if.end5_crit_edge ]
  %18 = zext i32 %pr_reg_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.291)
  switch i32 %pr_reg_type, label %if.end5.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %if.end5.sw.epilog_crit_edge
    i32 5, label %sw.bb6
    i32 6, label %if.end5.sw.bb7_crit_edge
    i32 7, label %sw.bb8
    i32 8, label %if.end5.sw.bb9_crit_edge
  ]

if.end5.sw.bb9_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb9

if.end5.sw.bb7_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb7

if.end5.sw.epilog_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb:                                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb7

sw.bb7:                                           ; preds = %sw.bb6, %if.end5.sw.bb7_crit_edge
  %we.0 = phi i32 [ 0, %if.end5.sw.bb7_crit_edge ], [ 1, %sw.bb6 ]
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb9

sw.bb9:                                           ; preds = %sw.bb8, %if.end5.sw.bb9_crit_edge
  %we.1 = phi i32 [ 0, %if.end5.sw.bb9_crit_edge ], [ 1, %sw.bb8 ]
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb7, %sw.bb, %if.end5.sw.epilog_crit_edge
  %we.2 = phi i32 [ %we.1, %sw.bb9 ], [ %we.0, %sw.bb7 ], [ 0, %if.end5.sw.epilog_crit_edge ], [ 1, %sw.bb ]
  %tobool148.not = phi i1 [ false, %sw.bb9 ], [ true, %sw.bb7 ], [ false, %if.end5.sw.epilog_crit_edge ], [ false, %sw.bb ]
  %tobool149.not = phi i1 [ true, %sw.bb9 ], [ false, %sw.bb7 ], [ false, %if.end5.sw.epilog_crit_edge ], [ false, %sw.bb ]
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %1, align 1
  %21 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.292)
  switch i8 %20, label %sw.epilog.if.end96_crit_edge [
    i8 -94, label %sw.bb10
    i8 26, label %sw.epilog.if.end18_crit_edge
    i8 90, label %sw.epilog.if.end18_crit_edge383
    i8 -116, label %sw.epilog.if.end18_crit_edge384
    i8 60, label %sw.epilog.if.end18_crit_edge385
    i8 28, label %sw.epilog.if.end18_crit_edge386
    i8 95, label %sw.bb24
    i8 23, label %sw.epilog.do.body82_crit_edge
    i8 87, label %sw.epilog.do.body82_crit_edge387
    i8 22, label %sw.epilog.do.body82_crit_edge388
    i8 86, label %sw.epilog.do.body82_crit_edge389
    i8 0, label %sw.epilog.do.body82_crit_edge390
    i8 -93, label %sw.bb46
    i8 -122, label %sw.epilog.do.body82_crit_edge391
    i8 -121, label %sw.epilog.do.body82_crit_edge392
    i8 18, label %sw.epilog.do.body82_crit_edge393
    i8 77, label %sw.epilog.do.body82_crit_edge394
    i8 -85, label %sw.epilog.do.body82_crit_edge395
    i8 -96, label %sw.epilog.do.body82_crit_edge396
    i8 3, label %sw.epilog.do.body82_crit_edge397
    i8 94, label %sw.epilog.do.body82_crit_edge398
  ]

sw.epilog.do.body82_crit_edge398:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body82

sw.epilog.do.body82_crit_edge397:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body82

sw.epilog.do.body82_crit_edge396:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body82

sw.epilog.do.body82_crit_edge395:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body82

sw.epilog.do.body82_crit_edge394:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body82

sw.epilog.do.body82_crit_edge393:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body82

sw.epilog.do.body82_crit_edge392:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body82

sw.epilog.do.body82_crit_edge391:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body82

sw.epilog.do.body82_crit_edge390:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body82

sw.epilog.do.body82_crit_edge389:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body82

sw.epilog.do.body82_crit_edge388:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body82

sw.epilog.do.body82_crit_edge387:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body82

sw.epilog.do.body82_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body82

sw.epilog.if.end18_crit_edge386:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

sw.epilog.if.end18_crit_edge385:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

sw.epilog.if.end18_crit_edge384:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

sw.epilog.if.end18_crit_edge383:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

sw.epilog.if.end18_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

sw.epilog.if.end96_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end96

sw.bb10:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %registered_nexus.1)
  %tobool11.not = icmp eq i32 %registered_nexus.1, 0
  br i1 %tobool11.not, label %sw.bb10.sw.epilog78_crit_edge, label %sw.bb10.cleanup_crit_edge

sw.bb10.cleanup_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb10.sw.epilog78_crit_edge:                    ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog78

if.end18:                                         ; preds = %sw.epilog.if.end18_crit_edge, %sw.epilog.if.end18_crit_edge383, %sw.epilog.if.end18_crit_edge384, %sw.epilog.if.end18_crit_edge385, %sw.epilog.if.end18_crit_edge386
  %22 = or i32 %we.2, %registered_nexus.1
  br label %sw.epilog78

sw.bb24:                                          ; preds = %sw.epilog
  %arrayidx25 = getelementptr i8, ptr %1, i32 1
  %23 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx25, align 1
  %25 = and i8 %24, 31
  %and = zext i8 %25 to i32
  %26 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.293)
  switch i32 %and, label %do.end [
    i32 3, label %sw.bb24.sw.epilog78_crit_edge
    i32 4, label %sw.bb24.sw.epilog78_crit_edge399
    i32 5, label %sw.bb24.sw.epilog78_crit_edge400
    i32 0, label %sw.bb24.do.body82_crit_edge
    i32 6, label %sw.bb24.do.body82_crit_edge401
    i32 7, label %sw.bb24.if.end96_crit_edge
    i32 1, label %sw.bb24.if.end96_crit_edge402
    i32 2, label %sw.bb24.sw.epilog78_crit_edge403
  ]

sw.bb24.sw.epilog78_crit_edge403:                 ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog78

sw.bb24.if.end96_crit_edge402:                    ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end96

sw.bb24.if.end96_crit_edge:                       ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end96

sw.bb24.do.body82_crit_edge401:                   ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body82

sw.bb24.do.body82_crit_edge:                      ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body82

sw.bb24.sw.epilog78_crit_edge400:                 ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog78

sw.bb24.sw.epilog78_crit_edge399:                 ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog78

sw.bb24.sw.epilog78_crit_edge:                    ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog78

do.end:                                           ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #17
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %and) #18
  br label %cleanup

sw.bb46:                                          ; preds = %sw.epilog
  %arrayidx47 = getelementptr i8, ptr %1, i32 1
  %27 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx47, align 1
  %29 = and i8 %28, 31
  %and49 = zext i8 %29 to i32
  %30 = zext i32 %and49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.294)
  switch i32 %and49, label %do.end69 [
    i32 16, label %sw.bb50
    i32 12, label %sw.bb46.if.end59_crit_edge
    i32 13, label %sw.bb46.if.end59_crit_edge404
    i32 11, label %sw.bb46.do.body82_crit_edge
    i32 5, label %sw.bb46.do.body82_crit_edge405
    i32 14, label %sw.bb46.do.body82_crit_edge406
    i32 10, label %sw.bb46.do.body82_crit_edge407
    i32 15, label %sw.bb46.do.body82_crit_edge408
  ]

sw.bb46.do.body82_crit_edge408:                   ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body82

sw.bb46.do.body82_crit_edge407:                   ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body82

sw.bb46.do.body82_crit_edge406:                   ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body82

sw.bb46.do.body82_crit_edge405:                   ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body82

sw.bb46.do.body82_crit_edge:                      ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body82

sw.bb46.if.end59_crit_edge404:                    ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end59

sw.bb46.if.end59_crit_edge:                       ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end59

sw.bb50:                                          ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #17
  %31 = or i32 %we.2, %registered_nexus.1
  br label %sw.epilog78

if.end59:                                         ; preds = %sw.bb46.if.end59_crit_edge, %sw.bb46.if.end59_crit_edge404
  %32 = or i32 %we.2, %registered_nexus.1
  br label %sw.epilog78

do.end69:                                         ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #17
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.273, i32 noundef %and49) #18
  br label %cleanup

sw.epilog78:                                      ; preds = %if.end59, %sw.bb50, %sw.bb24.sw.epilog78_crit_edge, %sw.bb24.sw.epilog78_crit_edge399, %sw.bb24.sw.epilog78_crit_edge400, %sw.bb24.sw.epilog78_crit_edge403, %if.end18, %sw.bb10.sw.epilog78_crit_edge
  %ret.0.shrunk.in = phi i32 [ %22, %if.end18 ], [ %31, %sw.bb50 ], [ %32, %if.end59 ], [ %we.2, %sw.bb10.sw.epilog78_crit_edge ], [ %registered_nexus.1, %sw.bb24.sw.epilog78_crit_edge ], [ %registered_nexus.1, %sw.bb24.sw.epilog78_crit_edge399 ], [ %registered_nexus.1, %sw.bb24.sw.epilog78_crit_edge400 ], [ %registered_nexus.1, %sw.bb24.sw.epilog78_crit_edge403 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.shrunk.in)
  %ret.0.shrunk = icmp eq i32 %ret.0.shrunk.in, 0
  br i1 %ret.0.shrunk, label %sw.epilog78.if.end96_crit_edge, label %sw.epilog78.do.body82_crit_edge

sw.epilog78.do.body82_crit_edge:                  ; preds = %sw.epilog78
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body82

sw.epilog78.if.end96_crit_edge:                   ; preds = %sw.epilog78
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end96

do.body82:                                        ; preds = %sw.epilog78.do.body82_crit_edge, %sw.bb46.do.body82_crit_edge, %sw.bb46.do.body82_crit_edge405, %sw.bb46.do.body82_crit_edge406, %sw.bb46.do.body82_crit_edge407, %sw.bb46.do.body82_crit_edge408, %sw.bb24.do.body82_crit_edge, %sw.bb24.do.body82_crit_edge401, %sw.epilog.do.body82_crit_edge, %sw.epilog.do.body82_crit_edge387, %sw.epilog.do.body82_crit_edge388, %sw.epilog.do.body82_crit_edge389, %sw.epilog.do.body82_crit_edge390, %sw.epilog.do.body82_crit_edge391, %sw.epilog.do.body82_crit_edge392, %sw.epilog.do.body82_crit_edge393, %sw.epilog.do.body82_crit_edge394, %sw.epilog.do.body82_crit_edge395, %sw.epilog.do.body82_crit_edge396, %sw.epilog.do.body82_crit_edge397, %sw.epilog.do.body82_crit_edge398
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @core_scsi3_pr_seq_non_holder.__UNIQUE_ID_ddebug208, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@core_scsi3_pr_seq_non_holder, %if.then89)) #15
          to label %cleanup [label %if.then89], !srcloc !541

if.then89:                                        ; preds = %do.body82
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %1, align 1
  %conv91 = zext i8 %34 to i32
  %switch.tableidx = add i32 %pr_reg_type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %35 = icmp ult i32 %switch.tableidx, 8
  br i1 %35, label %switch.lookup, label %if.then89.core_scsi3_pr_dump_type.exit_crit_edge

if.then89.core_scsi3_pr_dump_type.exit_crit_edge: ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #17
  br label %core_scsi3_pr_dump_type.exit

switch.lookup:                                    ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep = getelementptr inbounds [8 x ptr], ptr @switch.table.core_scsi3_pr_seq_non_holder, i32 0, i32 %switch.tableidx
  %36 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %36)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %core_scsi3_pr_dump_type.exit

core_scsi3_pr_dump_type.exit:                     ; preds = %switch.lookup, %if.then89.core_scsi3_pr_dump_type.exit_crit_edge
  %retval.0.i310 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.32, %if.then89.core_scsi3_pr_dump_type.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @core_scsi3_pr_seq_non_holder.__UNIQUE_ID_ddebug208, ptr noundef nonnull @.str.275, i32 noundef %conv91, ptr noundef nonnull %retval.0.i310) #15
  br label %cleanup

if.end96:                                         ; preds = %sw.epilog78.if.end96_crit_edge, %sw.bb24.if.end96_crit_edge, %sw.bb24.if.end96_crit_edge402, %sw.epilog.if.end96_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %we.2)
  %tobool97.not = icmp eq i32 %we.2, 0
  %tobool97.not.not = xor i1 %tobool97.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %registered_nexus.1)
  %tobool99.not = icmp eq i32 %registered_nexus.1, 0
  %or.cond = select i1 %tobool97.not.not, i1 %tobool99.not, i1 false
  br i1 %or.cond, label %if.then100, label %if.else147

if.then100:                                       ; preds = %if.end96
  %data_direction = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 6
  %37 = ptrtoint ptr %data_direction to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp = icmp eq i32 %38, 1
  br i1 %cmp, label %do.body103, label %do.body127

do.body103:                                       ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @core_scsi3_pr_seq_non_holder.__UNIQUE_ID_ddebug209, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@core_scsi3_pr_seq_non_holder, %if.then115)) #15
          to label %cleanup [label %if.then115], !srcloc !541

if.then115:                                       ; preds = %do.body103
  %call116 = tail call ptr @transport_dump_cmd_direction(ptr noundef %cmd) #15
  %39 = ptrtoint ptr %se_node_acl to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %se_node_acl, align 8
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %1, align 1
  %conv119 = zext i8 %42 to i32
  %switch.tableidx364 = add i32 %pr_reg_type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx364)
  %43 = icmp ult i32 %switch.tableidx364, 8
  br i1 %43, label %switch.lookup363, label %if.then115.core_scsi3_pr_dump_type.exit318_crit_edge

if.then115.core_scsi3_pr_dump_type.exit318_crit_edge: ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #17
  br label %core_scsi3_pr_dump_type.exit318

switch.lookup363:                                 ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep365 = getelementptr inbounds [8 x ptr], ptr @switch.table.core_scsi3_pr_seq_non_holder.282, i32 0, i32 %switch.tableidx364
  %44 = ptrtoint ptr %switch.gep365 to i32
  call void @__asan_load4_noabort(i32 %44)
  %switch.load366 = load ptr, ptr %switch.gep365, align 4
  br label %core_scsi3_pr_dump_type.exit318

core_scsi3_pr_dump_type.exit318:                  ; preds = %switch.lookup363, %if.then115.core_scsi3_pr_dump_type.exit318_crit_edge
  %retval.0.i317 = phi ptr [ %switch.load366, %switch.lookup363 ], [ @.str.32, %if.then115.core_scsi3_pr_dump_type.exit318_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @core_scsi3_pr_seq_non_holder.__UNIQUE_ID_ddebug209, ptr noundef nonnull @.str.276, ptr noundef %call116, ptr noundef %40, i32 noundef %conv119, ptr noundef nonnull %retval.0.i317) #15
  br label %cleanup

do.body127:                                       ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @core_scsi3_pr_seq_non_holder.__UNIQUE_ID_ddebug210, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@core_scsi3_pr_seq_non_holder, %if.then139)) #15
          to label %cleanup [label %if.then139], !srcloc !541

if.then139:                                       ; preds = %do.body127
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %1, align 1
  %conv141 = zext i8 %46 to i32
  %switch.tableidx368 = add i32 %pr_reg_type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx368)
  %47 = icmp ult i32 %switch.tableidx368, 8
  br i1 %47, label %switch.lookup367, label %if.then139.core_scsi3_pr_dump_type.exit326_crit_edge

if.then139.core_scsi3_pr_dump_type.exit326_crit_edge: ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #17
  br label %core_scsi3_pr_dump_type.exit326

switch.lookup367:                                 ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep369 = getelementptr inbounds [8 x ptr], ptr @switch.table.core_scsi3_pr_seq_non_holder.283, i32 0, i32 %switch.tableidx368
  %48 = ptrtoint ptr %switch.gep369 to i32
  call void @__asan_load4_noabort(i32 %48)
  %switch.load370 = load ptr, ptr %switch.gep369, align 4
  br label %core_scsi3_pr_dump_type.exit326

core_scsi3_pr_dump_type.exit326:                  ; preds = %switch.lookup367, %if.then139.core_scsi3_pr_dump_type.exit326_crit_edge
  %retval.0.i325 = phi ptr [ %switch.load370, %switch.lookup367 ], [ @.str.32, %if.then139.core_scsi3_pr_dump_type.exit326_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @core_scsi3_pr_seq_non_holder.__UNIQUE_ID_ddebug210, ptr noundef nonnull @.str.277, i32 noundef %conv141, ptr noundef nonnull %retval.0.i325) #15
  br label %cleanup

if.else147:                                       ; preds = %if.end96
  %brmerge282 = or i1 %tobool148.not, %tobool149.not
  br i1 %brmerge282, label %if.then150, label %if.else173

if.then150:                                       ; preds = %if.else147
  br i1 %tobool99.not, label %if.then150.do.body205_crit_edge, label %do.body153

if.then150.do.body205_crit_edge:                  ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body205

do.body153:                                       ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @core_scsi3_pr_seq_non_holder.__UNIQUE_ID_ddebug211, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@core_scsi3_pr_seq_non_holder, %if.then165)) #15
          to label %cleanup [label %if.then165], !srcloc !541

if.then165:                                       ; preds = %do.body153
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %1, align 1
  %conv167 = zext i8 %50 to i32
  %switch.tableidx372 = add i32 %pr_reg_type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx372)
  %51 = icmp ult i32 %switch.tableidx372, 8
  br i1 %51, label %switch.lookup371, label %if.then165.core_scsi3_pr_dump_type.exit334_crit_edge

if.then165.core_scsi3_pr_dump_type.exit334_crit_edge: ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #17
  br label %core_scsi3_pr_dump_type.exit334

switch.lookup371:                                 ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep373 = getelementptr inbounds [8 x ptr], ptr @switch.table.core_scsi3_pr_seq_non_holder.284, i32 0, i32 %switch.tableidx372
  %52 = ptrtoint ptr %switch.gep373 to i32
  call void @__asan_load4_noabort(i32 %52)
  %switch.load374 = load ptr, ptr %switch.gep373, align 4
  br label %core_scsi3_pr_dump_type.exit334

core_scsi3_pr_dump_type.exit334:                  ; preds = %switch.lookup371, %if.then165.core_scsi3_pr_dump_type.exit334_crit_edge
  %retval.0.i333 = phi ptr [ %switch.load374, %switch.lookup371 ], [ @.str.32, %if.then165.core_scsi3_pr_dump_type.exit334_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @core_scsi3_pr_seq_non_holder.__UNIQUE_ID_ddebug211, ptr noundef nonnull @.str.278, i32 noundef %conv167, ptr noundef nonnull %retval.0.i333) #15
  br label %cleanup

if.else173:                                       ; preds = %if.else147
  %or.cond283 = select i1 %tobool97.not, i1 true, i1 %tobool99.not
  br i1 %or.cond283, label %if.else173.do.body205_crit_edge, label %if.then177

if.else173.do.body205_crit_edge:                  ; preds = %if.else173
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body205

if.then177:                                       ; preds = %if.else173
  %data_direction178 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 6
  %53 = ptrtoint ptr %data_direction178 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %data_direction178, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %54)
  %cmp179 = icmp eq i32 %54, 2
  br i1 %cmp179, label %do.body182, label %if.then177.do.body205_crit_edge

if.then177.do.body205_crit_edge:                  ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body205

do.body182:                                       ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @core_scsi3_pr_seq_non_holder.__UNIQUE_ID_ddebug212, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@core_scsi3_pr_seq_non_holder, %if.then194)) #15
          to label %cleanup [label %if.then194], !srcloc !541

if.then194:                                       ; preds = %do.body182
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %1, align 1
  %conv196 = zext i8 %56 to i32
  %switch.tableidx376 = add i32 %pr_reg_type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx376)
  %57 = icmp ult i32 %switch.tableidx376, 8
  br i1 %57, label %switch.lookup375, label %if.then194.core_scsi3_pr_dump_type.exit342_crit_edge

if.then194.core_scsi3_pr_dump_type.exit342_crit_edge: ; preds = %if.then194
  call void @__sanitizer_cov_trace_pc() #17
  br label %core_scsi3_pr_dump_type.exit342

switch.lookup375:                                 ; preds = %if.then194
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep377 = getelementptr inbounds [8 x ptr], ptr @switch.table.core_scsi3_pr_seq_non_holder.285, i32 0, i32 %switch.tableidx376
  %58 = ptrtoint ptr %switch.gep377 to i32
  call void @__asan_load4_noabort(i32 %58)
  %switch.load378 = load ptr, ptr %switch.gep377, align 4
  br label %core_scsi3_pr_dump_type.exit342

core_scsi3_pr_dump_type.exit342:                  ; preds = %switch.lookup375, %if.then194.core_scsi3_pr_dump_type.exit342_crit_edge
  %retval.0.i341 = phi ptr [ %switch.load378, %switch.lookup375 ], [ @.str.32, %if.then194.core_scsi3_pr_dump_type.exit342_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @core_scsi3_pr_seq_non_holder.__UNIQUE_ID_ddebug212, ptr noundef nonnull @.str.279, i32 noundef %conv196, ptr noundef nonnull %retval.0.i341) #15
  br label %cleanup

do.body205:                                       ; preds = %if.then177.do.body205_crit_edge, %if.else173.do.body205_crit_edge, %if.then150.do.body205_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @core_scsi3_pr_seq_non_holder.__UNIQUE_ID_ddebug213, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@core_scsi3_pr_seq_non_holder, %if.then217)) #15
          to label %cleanup [label %if.then217], !srcloc !541

if.then217:                                       ; preds = %do.body205
  %call218 = tail call ptr @transport_dump_cmd_direction(ptr noundef %cmd) #15
  %cond220 = select i1 %tobool99.not, ptr @.str.281, ptr @.str.25
  %59 = ptrtoint ptr %se_node_acl to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %se_node_acl, align 8
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %1, align 1
  %conv225 = zext i8 %62 to i32
  %switch.tableidx380 = add i32 %pr_reg_type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx380)
  %63 = icmp ult i32 %switch.tableidx380, 8
  br i1 %63, label %switch.lookup379, label %if.then217.core_scsi3_pr_dump_type.exit350_crit_edge

if.then217.core_scsi3_pr_dump_type.exit350_crit_edge: ; preds = %if.then217
  call void @__sanitizer_cov_trace_pc() #17
  br label %core_scsi3_pr_dump_type.exit350

switch.lookup379:                                 ; preds = %if.then217
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep381 = getelementptr inbounds [8 x ptr], ptr @switch.table.core_scsi3_pr_seq_non_holder.286, i32 0, i32 %switch.tableidx380
  %64 = ptrtoint ptr %switch.gep381 to i32
  call void @__asan_load4_noabort(i32 %64)
  %switch.load382 = load ptr, ptr %switch.gep381, align 4
  br label %core_scsi3_pr_dump_type.exit350

core_scsi3_pr_dump_type.exit350:                  ; preds = %switch.lookup379, %if.then217.core_scsi3_pr_dump_type.exit350_crit_edge
  %retval.0.i349 = phi ptr [ %switch.load382, %switch.lookup379 ], [ @.str.32, %if.then217.core_scsi3_pr_dump_type.exit350_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @core_scsi3_pr_seq_non_holder.__UNIQUE_ID_ddebug213, ptr noundef nonnull @.str.280, ptr noundef %call218, ptr noundef nonnull %cond220, ptr noundef %60, i32 noundef %conv225, ptr noundef nonnull %retval.0.i349) #15
  br label %cleanup

cleanup:                                          ; preds = %core_scsi3_pr_dump_type.exit350, %do.body205, %core_scsi3_pr_dump_type.exit342, %do.body182, %core_scsi3_pr_dump_type.exit334, %do.body153, %core_scsi3_pr_dump_type.exit326, %do.body127, %core_scsi3_pr_dump_type.exit318, %do.body103, %core_scsi3_pr_dump_type.exit, %do.body82, %do.end69, %do.end, %sw.bb10.cleanup_crit_edge, %if.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end69 ], [ -22, %do.end ], [ -22, %if.end5.cleanup_crit_edge ], [ 0, %sw.bb10.cleanup_crit_edge ], [ 0, %core_scsi3_pr_dump_type.exit ], [ 1, %core_scsi3_pr_dump_type.exit318 ], [ 0, %core_scsi3_pr_dump_type.exit326 ], [ 0, %core_scsi3_pr_dump_type.exit334 ], [ 0, %core_scsi3_pr_dump_type.exit342 ], [ 1, %core_scsi3_pr_dump_type.exit350 ], [ 0, %do.body82 ], [ 1, %do.body103 ], [ 0, %do.body127 ], [ 0, %do.body153 ], [ 0, %do.body182 ], [ 1, %do.body205 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @transport_dump_cmd_direction(ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare ptr @stpcpy(ptr noalias writeonly, ptr noalias nocapture readonly) local_unnamed_addr #14

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 261)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 261)
  ret void
}

attributes #0 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind readonly }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { argmemonly nofree nounwind willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }
attributes #19 = { nobuiltin nounwind }
attributes #20 = { nobuiltin }
attributes #21 = { nounwind allocsize(2) }
attributes #22 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !30, !31, !32, !33, !35, !36, !37, !39, !41, !42, !43, !44, !46, !48, !50, !52, !54, !56, !58, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !93, !95, !96, !97, !99, !100, !102, !103, !104, !105, !106, !108, !109, !111, !112, !113, !114, !116, !117, !119, !120, !122, !123, !124, !126, !127, !129, !130, !131, !133, !134, !136, !138, !139, !141, !142, !143, !144, !145, !147, !148, !150, !151, !152, !153, !155, !156, !157, !159, !160, !162, !163, !164, !166, !167, !168, !170, !171, !172, !174, !175, !177, !179, !180, !181, !182, !184, !186, !187, !188, !190, !191, !192, !194, !195, !197, !199, !200, !201, !202, !204, !205, !207, !208, !209, !211, !212, !213, !215, !216, !217, !219, !220, !221, !223, !224, !226, !227, !228, !230, !231, !233, !234, !235, !237, !238, !239, !241, !242, !244, !245, !247, !248, !250, !252, !253, !255, !257, !258, !259, !261, !262, !263, !265, !266, !268, !270, !271, !272, !273, !275, !276, !278, !280, !282, !284, !285, !286, !287, !289, !291, !292, !294, !296, !297, !298, !299, !301, !302, !303, !304, !306, !307, !308, !310, !311, !312, !314, !315, !316, !318, !319, !320, !322, !323, !324, !326, !327, !328, !330, !331, !333, !335, !336, !337, !339, !340, !341, !343, !344, !345, !347, !348, !349, !351, !352, !353, !354, !356, !357, !359, !360, !362, !363, !364, !365, !366, !368, !369, !370, !371, !373, !374, !376, !377, !378, !380, !381, !383, !384, !385, !386, !388, !389, !390, !392, !393, !394, !396, !397, !398, !400, !401, !402, !404, !405, !406, !408, !409, !410, !412, !413, !414, !416, !417, !419, !420, !421, !423, !424, !425, !427, !428, !429, !430, !432, !433, !434, !436, !437, !438, !440, !441, !442, !444, !445, !446, !448, !449, !451, !452, !453, !455, !456, !458, !459, !461, !462, !463, !465, !466, !467, !469, !470, !471, !473, !475, !476, !478, !479, !481, !482, !483, !484, !486, !487, !488, !489, !491, !492, !493, !494, !496, !497, !498, !499, !501, !502, !503, !505, !506, !507, !509, !510, !511, !513, !514, !516, !517, !519, !520, !522, !523, !525, !526, !528, !529}
!llvm.named.register.sp = !{!530}
!llvm.module.flags = !{!531, !532, !533, !534, !535, !536, !537, !538}
!llvm.ident = !{!539}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/target/target_core_pr.c", i32 53, i32 22}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/target/target_core_pr.c", i32 228, i32 2}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @target_scsi2_reservation_release.__UNIQUE_ID_ddebug206, !3, !"__UNIQUE_ID_ddebug206", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/target/target_core_pr.c", i32 252, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @target_scsi2_reservation_reserve._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @target_scsi2_reservation_reserve._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/target/target_core_pr.c", i32 272, i32 3}
!15 = !{ptr @target_scsi2_reservation_reserve._entry.7, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @target_scsi2_reservation_reserve._entry_ptr.9, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/target/target_core_pr.c", i32 274, i32 3}
!19 = !{ptr @target_scsi2_reservation_reserve._entry.10, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @target_scsi2_reservation_reserve._entry_ptr.12, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/target/target_core_pr.c", i32 277, i32 3}
!23 = !{ptr @target_scsi2_reservation_reserve._entry.13, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @target_scsi2_reservation_reserve._entry_ptr.15, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/target/target_core_pr.c", i32 291, i32 2}
!27 = !{ptr @target_scsi2_reservation_reserve.__UNIQUE_ID_ddebug207, !26, !"__UNIQUE_ID_ddebug207", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/target/target_core_pr.c", i32 839, i32 3}
!30 = !{ptr @.str.18, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @core_scsi3_alloc_aptpl_registration._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @core_scsi3_alloc_aptpl_registration._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/target/target_core_pr.c", i32 845, i32 3}
!35 = !{ptr @core_scsi3_alloc_aptpl_registration._entry.19, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @core_scsi3_alloc_aptpl_registration._entry_ptr.21, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.22, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/target/target_core_pr.c", i32 870, i32 50}
!39 = !{ptr @.str.23, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/target/target_core_pr.c", i32 888, i32 2}
!41 = !{ptr @core_scsi3_alloc_aptpl_registration.__UNIQUE_ID_ddebug218, !40, !"__UNIQUE_ID_ddebug218", i1 false, i1 false}
!42 = !{ptr @.str.24, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.25, !40, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.26, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/target/target_core_pr.c", i32 2252, i32 10}
!46 = !{ptr @.str.27, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/target/target_core_pr.c", i32 2254, i32 10}
!48 = !{ptr @.str.28, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/target/target_core_pr.c", i32 2256, i32 10}
!50 = !{ptr @.str.29, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/target/target_core_pr.c", i32 2258, i32 10}
!52 = !{ptr @.str.30, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/target/target_core_pr.c", i32 2260, i32 10}
!54 = !{ptr @.str.31, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/target/target_core_pr.c", i32 2262, i32 10}
!56 = !{ptr @.str.32, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/target/target_core_pr.c", i32 2267, i32 9}
!58 = !{ptr @.str.33, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/target/target_core_pr.c", i32 3558, i32 3}
!60 = !{ptr @.str.34, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @target_scsi3_emulate_pr_out._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @target_scsi3_emulate_pr_out._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.36, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/target/target_core_pr.c", i32 3572, i32 3}
!65 = !{ptr @target_scsi3_emulate_pr_out._entry.35, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @target_scsi3_emulate_pr_out._entry_ptr.37, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.39, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/target/target_core_pr.c", i32 3632, i32 3}
!69 = !{ptr @target_scsi3_emulate_pr_out._entry.38, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @target_scsi3_emulate_pr_out._entry_ptr.40, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.42, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/target/target_core_pr.c", i32 3673, i32 3}
!73 = !{ptr @target_scsi3_emulate_pr_out._entry.41, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @target_scsi3_emulate_pr_out._entry_ptr.43, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.44, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/target/target_core_pr.c", i32 4050, i32 3}
!77 = !{ptr @target_scsi3_emulate_pr_in._entry, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @target_scsi3_emulate_pr_in._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.46, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/target/target_core_pr.c", i32 4070, i32 3}
!81 = !{ptr @target_scsi3_emulate_pr_in._entry.45, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @target_scsi3_emulate_pr_in._entry_ptr.47, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.48, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/target/target_core_pr.c", i32 181, i32 3}
!85 = !{ptr @.str.49, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @target_check_scsi2_reservation_conflict._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @target_check_scsi2_reservation_conflict._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.50, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/target/target_core_pr.c", i32 963, i32 5}
!90 = !{ptr @.str.51, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @__core_scsi3_check_aptpl_registration._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @__core_scsi3_check_aptpl_registration._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = distinct !{null, !94, !"__warned", i1 false, i1 false}
!94 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!95 = !{ptr @.str.52, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.53, !94, !"<string literal>", i1 false, i1 false}
!97 = distinct !{null, !98, !"__warned", i1 false, i1 false}
!98 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!99 = !{ptr @.str.54, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.55, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/target/target_core_pr.c", i32 1027, i32 2}
!102 = !{ptr @.str.56, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @__core_scsi3_dump_registration.__UNIQUE_ID_ddebug221, !101, !"__UNIQUE_ID_ddebug221", i1 false, i1 false}
!104 = !{ptr @.str.57, !101, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.58, !101, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.59, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/target/target_core_pr.c", i32 1032, i32 2}
!108 = !{ptr @__core_scsi3_dump_registration.__UNIQUE_ID_ddebug222, !107, !"__UNIQUE_ID_ddebug222", i1 false, i1 false}
!109 = !{ptr @.str.60, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/target/target_core_pr.c", i32 1035, i32 2}
!111 = !{ptr @__core_scsi3_dump_registration.__UNIQUE_ID_ddebug223, !110, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!112 = !{ptr @.str.61, !110, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.62, !110, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.63, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/target/target_core_pr.c", i32 1039, i32 2}
!116 = !{ptr @__core_scsi3_dump_registration.__UNIQUE_ID_ddebug224, !115, !"__UNIQUE_ID_ddebug224", i1 false, i1 false}
!117 = distinct !{null, !118, !"__warned", i1 false, i1 false}
!118 = !{!"../drivers/target/target_core_pr.c", i32 1460, i32 12}
!119 = !{ptr @.str.64, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.65, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/target/target_core_pr.c", i32 907, i32 2}
!122 = !{ptr @.str.66, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @core_scsi3_aptpl_reserve.__UNIQUE_ID_ddebug219, !121, !"__UNIQUE_ID_ddebug219", i1 false, i1 false}
!124 = !{ptr @.str.67, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/target/target_core_pr.c", i32 912, i32 2}
!126 = !{ptr @core_scsi3_aptpl_reserve.__UNIQUE_ID_ddebug220, !125, !"__UNIQUE_ID_ddebug220", i1 false, i1 false}
!127 = !{ptr @.str.68, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/target/target_core_pr.c", i32 1307, i32 3}
!129 = !{ptr @.str.69, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @__core_scsi3_free_registration.__UNIQUE_ID_ddebug225, !128, !"__UNIQUE_ID_ddebug225", i1 false, i1 false}
!131 = !{ptr @.str.70, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/target/target_core_pr.c", i32 1319, i32 2}
!133 = !{ptr @__core_scsi3_free_registration.__UNIQUE_ID_ddebug226, !132, !"__UNIQUE_ID_ddebug226", i1 false, i1 false}
!134 = !{ptr @__core_scsi3_free_registration.__UNIQUE_ID_ddebug227, !135, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!135 = !{!"../drivers/target/target_core_pr.c", i32 1323, i32 2}
!136 = !{ptr @.str.71, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/target/target_core_pr.c", i32 1327, i32 2}
!138 = !{ptr @__core_scsi3_free_registration.__UNIQUE_ID_ddebug228, !137, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!139 = !{ptr @.str.72, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/target/target_core_pr.c", i32 2495, i32 3}
!141 = !{ptr @.str.73, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @__core_scsi3_complete_pro_release.__UNIQUE_ID_ddebug245, !140, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!143 = !{ptr @.str.74, !140, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.75, !140, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.76, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/target/target_core_pr.c", i32 2501, i32 2}
!147 = !{ptr @__core_scsi3_complete_pro_release.__UNIQUE_ID_ddebug246, !146, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!148 = !{ptr @.str.77, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/target/target_core_pr.c", i32 2061, i32 3}
!150 = !{ptr @.str.78, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @core_scsi3_emulate_pro_register._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @core_scsi3_emulate_pro_register._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.80, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/target/target_core_pr.c", i32 2077, i32 4}
!155 = !{ptr @core_scsi3_emulate_pro_register._entry.79, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @core_scsi3_emulate_pro_register._entry_ptr.81, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @core_scsi3_emulate_pro_register._entry.82, !158, !"_entry", i1 false, i1 false}
!158 = !{!"../drivers/target/target_core_pr.c", i32 2098, i32 5}
!159 = !{ptr @core_scsi3_emulate_pro_register._entry_ptr.83, !158, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.85, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/target/target_core_pr.c", i32 2122, i32 3}
!162 = !{ptr @core_scsi3_emulate_pro_register._entry.84, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @core_scsi3_emulate_pro_register._entry_ptr.86, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.88, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/target/target_core_pr.c", i32 2132, i32 3}
!166 = !{ptr @core_scsi3_emulate_pro_register._entry.87, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @core_scsi3_emulate_pro_register._entry_ptr.89, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.91, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/target/target_core_pr.c", i32 2143, i32 3}
!170 = !{ptr @core_scsi3_emulate_pro_register._entry.90, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @core_scsi3_emulate_pro_register._entry_ptr.92, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.93, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/target/target_core_pr.c", i32 2161, i32 3}
!174 = !{ptr @core_scsi3_emulate_pro_register.__UNIQUE_ID_ddebug242, !173, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!175 = distinct !{null, !176, !"__warned", i1 false, i1 false}
!176 = !{!"../drivers/target/target_core_pr.c", i32 742, i32 15}
!177 = !{ptr @.str.94, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/target/target_core_pr.c", i32 774, i32 5}
!179 = !{ptr @.str.95, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @__core_scsi3_alloc_registration._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @__core_scsi3_alloc_registration._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = distinct !{null, !183, !"__warned", i1 false, i1 false}
!183 = !{!"../drivers/target/target_core_pr.c", i32 787, i32 15}
!184 = !{ptr @.str.97, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/target/target_core_pr.c", i32 630, i32 3}
!186 = !{ptr @__core_scsi3_do_alloc_registration._entry, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @__core_scsi3_do_alloc_registration._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.99, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/target/target_core_pr.c", i32 656, i32 4}
!190 = !{ptr @__core_scsi3_do_alloc_registration._entry.98, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @__core_scsi3_do_alloc_registration._entry_ptr.100, !189, !"_entry_ptr", i1 false, i1 false}
!192 = distinct !{null, !193, !"__already_done", i1 false, i1 false}
!193 = !{!"../include/linux/percpu-refcount.h", i32 280, i32 2}
!194 = !{ptr @.str.101, !193, !"<string literal>", i1 false, i1 false}
!195 = distinct !{null, !196, !"__warned", i1 false, i1 false}
!196 = !{!"../drivers/target/target_core_pr.c", i32 1445, i32 12}
!197 = !{ptr @.str.102, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/target/target_core_pr.c", i32 1503, i32 3}
!199 = !{ptr @.str.103, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @core_scsi3_decode_spec_i_port._entry, !198, !"_entry", i1 false, i1 false}
!201 = !{ptr @core_scsi3_decode_spec_i_port._entry_ptr, !198, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @core_scsi3_decode_spec_i_port._entry.104, !203, !"_entry", i1 false, i1 false}
!203 = !{!"../drivers/target/target_core_pr.c", i32 1531, i32 3}
!204 = !{ptr @core_scsi3_decode_spec_i_port._entry_ptr.105, !203, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.107, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/target/target_core_pr.c", i32 1551, i32 3}
!207 = !{ptr @core_scsi3_decode_spec_i_port._entry.106, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @core_scsi3_decode_spec_i_port._entry_ptr.108, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.110, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/target/target_core_pr.c", i32 1595, i32 5}
!211 = !{ptr @core_scsi3_decode_spec_i_port._entry.109, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @core_scsi3_decode_spec_i_port._entry_ptr.111, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.113, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/target/target_core_pr.c", i32 1606, i32 5}
!215 = !{ptr @core_scsi3_decode_spec_i_port._entry.112, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @core_scsi3_decode_spec_i_port._entry_ptr.114, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.116, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/target/target_core_pr.c", i32 1631, i32 5}
!219 = !{ptr @core_scsi3_decode_spec_i_port._entry.115, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @core_scsi3_decode_spec_i_port._entry_ptr.117, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.118, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/target/target_core_pr.c", i32 1640, i32 4}
!223 = !{ptr @core_scsi3_decode_spec_i_port.__UNIQUE_ID_ddebug233, !222, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!224 = !{ptr @.str.120, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/target/target_core_pr.c", i32 1650, i32 4}
!226 = !{ptr @core_scsi3_decode_spec_i_port._entry.119, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @core_scsi3_decode_spec_i_port._entry_ptr.121, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.122, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/target/target_core_pr.c", i32 1656, i32 3}
!230 = !{ptr @core_scsi3_decode_spec_i_port.__UNIQUE_ID_ddebug234, !229, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!231 = !{ptr @.str.124, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/target/target_core_pr.c", i32 1662, i32 4}
!233 = !{ptr @core_scsi3_decode_spec_i_port._entry.123, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @core_scsi3_decode_spec_i_port._entry_ptr.125, !232, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.127, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/target/target_core_pr.c", i32 1677, i32 4}
!237 = !{ptr @core_scsi3_decode_spec_i_port._entry.126, !236, !"_entry", i1 false, i1 false}
!238 = !{ptr @core_scsi3_decode_spec_i_port._entry_ptr.128, !236, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @core_scsi3_decode_spec_i_port._entry.129, !240, !"_entry", i1 false, i1 false}
!240 = !{!"../drivers/target/target_core_pr.c", i32 1688, i32 4}
!241 = !{ptr @core_scsi3_decode_spec_i_port._entry_ptr.130, !240, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.131, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/target/target_core_pr.c", i32 1697, i32 3}
!244 = !{ptr @core_scsi3_decode_spec_i_port.__UNIQUE_ID_ddebug235, !243, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!245 = !{ptr @core_scsi3_decode_spec_i_port._entry.132, !246, !"_entry", i1 false, i1 false}
!246 = !{!"../drivers/target/target_core_pr.c", i32 1726, i32 4}
!247 = !{ptr @core_scsi3_decode_spec_i_port._entry_ptr.133, !246, !"_entry_ptr", i1 false, i1 false}
!248 = distinct !{null, !249, !"__warned", i1 false, i1 false}
!249 = !{!"../drivers/target/target_core_pr.c", i32 1754, i32 14}
!250 = !{ptr @.str.134, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/target/target_core_pr.c", i32 1808, i32 3}
!252 = !{ptr @core_scsi3_decode_spec_i_port.__UNIQUE_ID_ddebug238, !251, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!253 = !{ptr @.str.135, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/target/target_core_pr.c", i32 2010, i32 20}
!255 = !{ptr @.str.136, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/target/target_core_pr.c", i32 2014, i32 3}
!257 = !{ptr @.str.137, !256, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @core_scsi3_update_and_write_aptpl.__UNIQUE_ID_ddebug240, !256, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!259 = !{ptr @.str.138, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/target/target_core_pr.c", i32 2035, i32 3}
!261 = !{ptr @core_scsi3_update_and_write_aptpl._entry, !260, !"_entry", i1 false, i1 false}
!262 = !{ptr @core_scsi3_update_and_write_aptpl._entry_ptr, !260, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.139, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/target/target_core_pr.c", i32 2041, i32 2}
!265 = !{ptr @core_scsi3_update_and_write_aptpl.__UNIQUE_ID_ddebug241, !264, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!266 = !{ptr @.str.140, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/target/target_core_pr.c", i32 1975, i32 31}
!268 = !{ptr @.str.141, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/target/target_core_pr.c", i32 1982, i32 3}
!270 = !{ptr @.str.142, !269, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @__core_scsi3_write_aptpl_to_file._entry, !269, !"_entry", i1 false, i1 false}
!272 = !{ptr @__core_scsi3_write_aptpl_to_file._entry_ptr, !269, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.143, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/target/target_core_pr.c", i32 1993, i32 3}
!275 = !{ptr @__core_scsi3_write_aptpl_to_file.__UNIQUE_ID_ddebug239, !274, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!276 = !{ptr @.str.144, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/target/target_core_pr.c", i32 1894, i32 27}
!278 = !{ptr @.str.145, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/target/target_core_pr.c", i32 1901, i32 23}
!280 = !{ptr @.str.146, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/target/target_core_pr.c", i32 1914, i32 23}
!282 = !{ptr @.str.147, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/target/target_core_pr.c", i32 1925, i32 4}
!284 = !{ptr @.str.148, !283, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @core_scsi3_update_aptpl_buf._entry, !283, !"_entry", i1 false, i1 false}
!286 = !{ptr @core_scsi3_update_aptpl_buf._entry_ptr, !283, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.149, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/target/target_core_pr.c", i32 1935, i32 22}
!289 = !{ptr @core_scsi3_update_aptpl_buf._entry.150, !290, !"_entry", i1 false, i1 false}
!290 = !{!"../drivers/target/target_core_pr.c", i32 1944, i32 4}
!291 = !{ptr @core_scsi3_update_aptpl_buf._entry_ptr.151, !290, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @.str.152, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/target/target_core_pr.c", i32 1954, i32 27}
!294 = !{ptr @.str.153, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/target/target_core_pr.c", i32 1260, i32 3}
!296 = !{ptr @.str.154, !295, !"<string literal>", i1 false, i1 false}
!297 = !{ptr @core_scsi3_check_implicit_release._entry, !295, !"_entry", i1 false, i1 false}
!298 = !{ptr @core_scsi3_check_implicit_release._entry_ptr, !295, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @.str.155, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/target/target_core_pr.c", i32 2437, i32 3}
!301 = !{ptr @.str.156, !300, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @core_scsi3_emulate_pro_reserve._entry, !300, !"_entry", i1 false, i1 false}
!303 = !{ptr @core_scsi3_emulate_pro_reserve._entry_ptr, !300, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @.str.157, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/target/target_core_pr.c", i32 2282, i32 3}
!306 = !{ptr @core_scsi3_pro_reserve._entry, !305, !"_entry", i1 false, i1 false}
!307 = !{ptr @core_scsi3_pro_reserve._entry_ptr, !305, !"_entry_ptr", i1 false, i1 false}
!308 = !{ptr @.str.159, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/target/target_core_pr.c", i32 2291, i32 3}
!310 = !{ptr @core_scsi3_pro_reserve._entry.158, !309, !"_entry", i1 false, i1 false}
!311 = !{ptr @core_scsi3_pro_reserve._entry_ptr.160, !309, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @.str.162, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/target/target_core_pr.c", i32 2305, i32 3}
!314 = !{ptr @core_scsi3_pro_reserve._entry.161, !313, !"_entry", i1 false, i1 false}
!315 = !{ptr @core_scsi3_pro_reserve._entry_ptr.163, !313, !"_entry_ptr", i1 false, i1 false}
!316 = !{ptr @.str.165, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/target/target_core_pr.c", i32 2322, i32 3}
!318 = !{ptr @core_scsi3_pro_reserve._entry.164, !317, !"_entry", i1 false, i1 false}
!319 = !{ptr @core_scsi3_pro_reserve._entry_ptr.166, !317, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @.str.168, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/target/target_core_pr.c", i32 2346, i32 4}
!322 = !{ptr @core_scsi3_pro_reserve._entry.167, !321, !"_entry", i1 false, i1 false}
!323 = !{ptr @core_scsi3_pro_reserve._entry_ptr.169, !321, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @.str.171, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/target/target_core_pr.c", i32 2368, i32 4}
!326 = !{ptr @core_scsi3_pro_reserve._entry.170, !325, !"_entry", i1 false, i1 false}
!327 = !{ptr @core_scsi3_pro_reserve._entry_ptr.172, !325, !"_entry_ptr", i1 false, i1 false}
!328 = !{ptr @.str.173, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/target/target_core_pr.c", i32 2405, i32 2}
!330 = !{ptr @core_scsi3_pro_reserve.__UNIQUE_ID_ddebug243, !329, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!331 = !{ptr @core_scsi3_pro_reserve.__UNIQUE_ID_ddebug244, !332, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!332 = !{!"../drivers/target/target_core_pr.c", i32 2409, i32 2}
!333 = !{ptr @.str.174, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/target/target_core_pr.c", i32 2522, i32 3}
!335 = !{ptr @core_scsi3_emulate_pro_release._entry, !334, !"_entry", i1 false, i1 false}
!336 = !{ptr @core_scsi3_emulate_pro_release._entry_ptr, !334, !"_entry_ptr", i1 false, i1 false}
!337 = !{ptr @.str.176, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/target/target_core_pr.c", i32 2530, i32 3}
!339 = !{ptr @core_scsi3_emulate_pro_release._entry.175, !338, !"_entry", i1 false, i1 false}
!340 = !{ptr @core_scsi3_emulate_pro_release._entry_ptr.177, !338, !"_entry_ptr", i1 false, i1 false}
!341 = !{ptr @.str.179, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/target/target_core_pr.c", i32 2580, i32 3}
!343 = !{ptr @core_scsi3_emulate_pro_release._entry.178, !342, !"_entry", i1 false, i1 false}
!344 = !{ptr @core_scsi3_emulate_pro_release._entry_ptr.180, !342, !"_entry_ptr", i1 false, i1 false}
!345 = !{ptr @.str.182, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/target/target_core_pr.c", i32 2596, i32 3}
!347 = !{ptr @core_scsi3_emulate_pro_release._entry.181, !346, !"_entry", i1 false, i1 false}
!348 = !{ptr @core_scsi3_emulate_pro_release._entry_ptr.183, !346, !"_entry_ptr", i1 false, i1 false}
!349 = !{ptr @.str.184, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/target/target_core_pr.c", i32 2683, i32 3}
!351 = !{ptr @.str.185, !350, !"<string literal>", i1 false, i1 false}
!352 = !{ptr @core_scsi3_emulate_pro_clear._entry, !350, !"_entry", i1 false, i1 false}
!353 = !{ptr @core_scsi3_emulate_pro_clear._entry_ptr, !350, !"_entry_ptr", i1 false, i1 false}
!354 = !{ptr @core_scsi3_emulate_pro_clear._entry.186, !355, !"_entry", i1 false, i1 false}
!355 = !{!"../drivers/target/target_core_pr.c", i32 2699, i32 3}
!356 = !{ptr @core_scsi3_emulate_pro_clear._entry_ptr.187, !355, !"_entry_ptr", i1 false, i1 false}
!357 = !{ptr @.str.188, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/target/target_core_pr.c", i32 2742, i32 2}
!359 = !{ptr @core_scsi3_emulate_pro_clear.__UNIQUE_ID_ddebug247, !358, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!360 = !{ptr @.str.189, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/target/target_core_pr.c", i32 3128, i32 3}
!362 = !{ptr @.str.190, !361, !"<string literal>", i1 false, i1 false}
!363 = !{ptr @core_scsi3_emulate_pro_preempt._entry, !361, !"_entry", i1 false, i1 false}
!364 = !{ptr @core_scsi3_emulate_pro_preempt._entry_ptr, !361, !"_entry_ptr", i1 false, i1 false}
!365 = !{ptr @.str.191, !361, !"<string literal>", i1 false, i1 false}
!366 = !{ptr @.str.192, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/target/target_core_pr.c", i32 2840, i32 3}
!368 = !{ptr @.str.193, !367, !"<string literal>", i1 false, i1 false}
!369 = !{ptr @core_scsi3_pro_preempt._entry, !367, !"_entry", i1 false, i1 false}
!370 = !{ptr @core_scsi3_pro_preempt._entry_ptr, !367, !"_entry_ptr", i1 false, i1 false}
!371 = !{ptr @core_scsi3_pro_preempt._entry.194, !372, !"_entry", i1 false, i1 false}
!372 = !{!"../drivers/target/target_core_pr.c", i32 2850, i32 3}
!373 = !{ptr @core_scsi3_pro_preempt._entry_ptr.195, !372, !"_entry_ptr", i1 false, i1 false}
!374 = !{ptr @.str.196, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/target/target_core_pr.c", i32 2778, i32 2}
!376 = !{ptr @.str.197, !375, !"<string literal>", i1 false, i1 false}
!377 = !{ptr @__core_scsi3_complete_pro_preempt.__UNIQUE_ID_ddebug248, !375, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!378 = !{ptr @.str.198, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/target/target_core_pr.c", i32 2783, i32 2}
!380 = !{ptr @__core_scsi3_complete_pro_preempt.__UNIQUE_ID_ddebug249, !379, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!381 = !{ptr @.str.199, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/target/target_core_pr.c", i32 2809, i32 4}
!383 = !{ptr @.str.200, !382, !"<string literal>", i1 false, i1 false}
!384 = !{ptr @core_scsi3_release_preempt_and_abort._entry, !382, !"_entry", i1 false, i1 false}
!385 = !{ptr @core_scsi3_release_preempt_and_abort._entry_ptr, !382, !"_entry_ptr", i1 false, i1 false}
!386 = !{ptr @.str.201, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/target/target_core_pr.c", i32 3158, i32 3}
!388 = !{ptr @core_scsi3_emulate_pro_register_and_move._entry, !387, !"_entry", i1 false, i1 false}
!389 = !{ptr @core_scsi3_emulate_pro_register_and_move._entry_ptr, !387, !"_entry_ptr", i1 false, i1 false}
!390 = !{ptr @.str.203, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/target/target_core_pr.c", i32 3173, i32 3}
!392 = !{ptr @core_scsi3_emulate_pro_register_and_move._entry.202, !391, !"_entry", i1 false, i1 false}
!393 = !{ptr @core_scsi3_emulate_pro_register_and_move._entry_ptr.204, !391, !"_entry_ptr", i1 false, i1 false}
!394 = !{ptr @.str.206, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/target/target_core_pr.c", i32 3182, i32 3}
!396 = !{ptr @core_scsi3_emulate_pro_register_and_move._entry.205, !395, !"_entry", i1 false, i1 false}
!397 = !{ptr @core_scsi3_emulate_pro_register_and_move._entry_ptr.207, !395, !"_entry_ptr", i1 false, i1 false}
!398 = !{ptr @.str.209, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/target/target_core_pr.c", i32 3192, i32 3}
!400 = !{ptr @core_scsi3_emulate_pro_register_and_move._entry.208, !399, !"_entry", i1 false, i1 false}
!401 = !{ptr @core_scsi3_emulate_pro_register_and_move._entry_ptr.210, !399, !"_entry_ptr", i1 false, i1 false}
!402 = !{ptr @.str.212, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/target/target_core_pr.c", i32 3215, i32 3}
!404 = !{ptr @core_scsi3_emulate_pro_register_and_move._entry.211, !403, !"_entry", i1 false, i1 false}
!405 = !{ptr @core_scsi3_emulate_pro_register_and_move._entry_ptr.213, !403, !"_entry_ptr", i1 false, i1 false}
!406 = !{ptr @.str.215, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/target/target_core_pr.c", i32 3235, i32 4}
!408 = !{ptr @core_scsi3_emulate_pro_register_and_move._entry.214, !407, !"_entry", i1 false, i1 false}
!409 = !{ptr @core_scsi3_emulate_pro_register_and_move._entry_ptr.216, !407, !"_entry_ptr", i1 false, i1 false}
!410 = !{ptr @.str.218, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/target/target_core_pr.c", i32 3248, i32 3}
!412 = !{ptr @core_scsi3_emulate_pro_register_and_move._entry.217, !411, !"_entry", i1 false, i1 false}
!413 = !{ptr @core_scsi3_emulate_pro_register_and_move._entry_ptr.219, !411, !"_entry_ptr", i1 false, i1 false}
!414 = !{ptr @.str.220, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/target/target_core_pr.c", i32 3262, i32 2}
!416 = !{ptr @core_scsi3_emulate_pro_register_and_move.__UNIQUE_ID_ddebug250, !415, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!417 = !{ptr @.str.222, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/target/target_core_pr.c", i32 3266, i32 3}
!419 = !{ptr @core_scsi3_emulate_pro_register_and_move._entry.221, !418, !"_entry", i1 false, i1 false}
!420 = !{ptr @core_scsi3_emulate_pro_register_and_move._entry_ptr.223, !418, !"_entry_ptr", i1 false, i1 false}
!421 = !{ptr @.str.225, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/target/target_core_pr.c", i32 3277, i32 3}
!423 = !{ptr @core_scsi3_emulate_pro_register_and_move._entry.224, !422, !"_entry", i1 false, i1 false}
!424 = !{ptr @core_scsi3_emulate_pro_register_and_move._entry_ptr.226, !422, !"_entry_ptr", i1 false, i1 false}
!425 = !{ptr @.str.227, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/target/target_core_pr.c", i32 3286, i32 2}
!427 = !{ptr @core_scsi3_emulate_pro_register_and_move.__UNIQUE_ID_ddebug251, !426, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!428 = !{ptr @.str.228, !426, !"<string literal>", i1 false, i1 false}
!429 = !{ptr @.str.229, !426, !"<string literal>", i1 false, i1 false}
!430 = !{ptr @.str.231, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/target/target_core_pr.c", i32 3305, i32 3}
!432 = !{ptr @core_scsi3_emulate_pro_register_and_move._entry.230, !431, !"_entry", i1 false, i1 false}
!433 = !{ptr @core_scsi3_emulate_pro_register_and_move._entry_ptr.232, !431, !"_entry_ptr", i1 false, i1 false}
!434 = !{ptr @.str.234, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/target/target_core_pr.c", i32 3312, i32 3}
!436 = !{ptr @core_scsi3_emulate_pro_register_and_move._entry.233, !435, !"_entry", i1 false, i1 false}
!437 = !{ptr @core_scsi3_emulate_pro_register_and_move._entry_ptr.235, !435, !"_entry_ptr", i1 false, i1 false}
!438 = !{ptr @.str.237, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/target/target_core_pr.c", i32 3331, i32 3}
!440 = !{ptr @core_scsi3_emulate_pro_register_and_move._entry.236, !439, !"_entry", i1 false, i1 false}
!441 = !{ptr @core_scsi3_emulate_pro_register_and_move._entry_ptr.238, !439, !"_entry_ptr", i1 false, i1 false}
!442 = !{ptr @.str.240, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/target/target_core_pr.c", i32 3339, i32 3}
!444 = !{ptr @core_scsi3_emulate_pro_register_and_move._entry.239, !443, !"_entry", i1 false, i1 false}
!445 = !{ptr @core_scsi3_emulate_pro_register_and_move._entry_ptr.241, !443, !"_entry_ptr", i1 false, i1 false}
!446 = !{ptr @.str.242, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/target/target_core_pr.c", i32 3347, i32 2}
!448 = !{ptr @core_scsi3_emulate_pro_register_and_move.__UNIQUE_ID_ddebug252, !447, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!449 = !{ptr @.str.244, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../drivers/target/target_core_pr.c", i32 3357, i32 3}
!451 = !{ptr @core_scsi3_emulate_pro_register_and_move._entry.243, !450, !"_entry", i1 false, i1 false}
!452 = !{ptr @core_scsi3_emulate_pro_register_and_move._entry_ptr.245, !450, !"_entry_ptr", i1 false, i1 false}
!453 = !{ptr @core_scsi3_emulate_pro_register_and_move._entry.246, !454, !"_entry", i1 false, i1 false}
!454 = !{!"../drivers/target/target_core_pr.c", i32 3364, i32 3}
!455 = !{ptr @core_scsi3_emulate_pro_register_and_move._entry_ptr.247, !454, !"_entry_ptr", i1 false, i1 false}
!456 = !{ptr @.str.248, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/target/target_core_pr.c", i32 3371, i32 2}
!458 = !{ptr @core_scsi3_emulate_pro_register_and_move.__UNIQUE_ID_ddebug253, !457, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!459 = !{ptr @.str.250, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../drivers/target/target_core_pr.c", i32 3383, i32 3}
!461 = !{ptr @core_scsi3_emulate_pro_register_and_move._entry.249, !460, !"_entry", i1 false, i1 false}
!462 = !{ptr @core_scsi3_emulate_pro_register_and_move._entry_ptr.251, !460, !"_entry_ptr", i1 false, i1 false}
!463 = !{ptr @.str.253, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../drivers/target/target_core_pr.c", i32 3396, i32 3}
!465 = !{ptr @core_scsi3_emulate_pro_register_and_move._entry.252, !464, !"_entry", i1 false, i1 false}
!466 = !{ptr @core_scsi3_emulate_pro_register_and_move._entry_ptr.254, !464, !"_entry_ptr", i1 false, i1 false}
!467 = !{ptr @.str.256, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../drivers/target/target_core_pr.c", i32 3413, i32 3}
!469 = !{ptr @core_scsi3_emulate_pro_register_and_move._entry.255, !468, !"_entry", i1 false, i1 false}
!470 = !{ptr @core_scsi3_emulate_pro_register_and_move._entry_ptr.257, !468, !"_entry_ptr", i1 false, i1 false}
!471 = distinct !{null, !472, !"__warned", i1 false, i1 false}
!472 = !{!"../drivers/target/target_core_pr.c", i32 3449, i32 29}
!473 = !{ptr @.str.258, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../drivers/target/target_core_pr.c", i32 3487, i32 2}
!475 = !{ptr @core_scsi3_emulate_pro_register_and_move.__UNIQUE_ID_ddebug256, !474, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!476 = !{ptr @.str.259, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../drivers/target/target_core_pr.c", i32 3492, i32 2}
!478 = !{ptr @core_scsi3_emulate_pro_register_and_move.__UNIQUE_ID_ddebug257, !477, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!479 = !{ptr @.str.260, !480, !"<string literal>", i1 false, i1 false}
!480 = !{!"../drivers/target/target_core_pr.c", i32 3697, i32 3}
!481 = !{ptr @.str.261, !480, !"<string literal>", i1 false, i1 false}
!482 = !{ptr @core_scsi3_pri_read_keys._entry, !480, !"_entry", i1 false, i1 false}
!483 = !{ptr @core_scsi3_pri_read_keys._entry_ptr, !480, !"_entry_ptr", i1 false, i1 false}
!484 = !{ptr @.str.262, !485, !"<string literal>", i1 false, i1 false}
!485 = !{!"../drivers/target/target_core_pr.c", i32 3752, i32 3}
!486 = !{ptr @.str.263, !485, !"<string literal>", i1 false, i1 false}
!487 = !{ptr @core_scsi3_pri_read_reservation._entry, !485, !"_entry", i1 false, i1 false}
!488 = !{ptr @core_scsi3_pri_read_reservation._entry_ptr, !485, !"_entry_ptr", i1 false, i1 false}
!489 = !{ptr @.str.264, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../drivers/target/target_core_pr.c", i32 3828, i32 3}
!491 = !{ptr @.str.265, !490, !"<string literal>", i1 false, i1 false}
!492 = !{ptr @core_scsi3_pri_report_capabilities._entry, !490, !"_entry", i1 false, i1 false}
!493 = !{ptr @core_scsi3_pri_report_capabilities._entry_ptr, !490, !"_entry_ptr", i1 false, i1 false}
!494 = !{ptr @.str.266, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../drivers/target/target_core_pr.c", i32 3894, i32 3}
!496 = !{ptr @.str.267, !495, !"<string literal>", i1 false, i1 false}
!497 = !{ptr @core_scsi3_pri_read_full_status._entry, !495, !"_entry", i1 false, i1 false}
!498 = !{ptr @core_scsi3_pri_read_full_status._entry_ptr, !495, !"_entry_ptr", i1 false, i1 false}
!499 = !{ptr @.str.269, !500, !"<string literal>", i1 false, i1 false}
!500 = !{!"../drivers/target/target_core_pr.c", i32 3936, i32 4}
!501 = !{ptr @core_scsi3_pri_read_full_status._entry.268, !500, !"_entry", i1 false, i1 false}
!502 = !{ptr @core_scsi3_pri_read_full_status._entry_ptr.270, !500, !"_entry_ptr", i1 false, i1 false}
!503 = !{ptr @.str.271, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../drivers/target/target_core_pr.c", i32 416, i32 4}
!505 = !{ptr @core_scsi3_pr_seq_non_holder._entry, !504, !"_entry", i1 false, i1 false}
!506 = !{ptr @core_scsi3_pr_seq_non_holder._entry_ptr, !504, !"_entry_ptr", i1 false, i1 false}
!507 = !{ptr @.str.273, !508, !"<string literal>", i1 false, i1 false}
!508 = !{!"../drivers/target/target_core_pr.c", i32 463, i32 4}
!509 = !{ptr @core_scsi3_pr_seq_non_holder._entry.272, !508, !"_entry", i1 false, i1 false}
!510 = !{ptr @core_scsi3_pr_seq_non_holder._entry_ptr.274, !508, !"_entry_ptr", i1 false, i1 false}
!511 = !{ptr @.str.275, !512, !"<string literal>", i1 false, i1 false}
!512 = !{!"../drivers/target/target_core_pr.c", i32 487, i32 3}
!513 = !{ptr @core_scsi3_pr_seq_non_holder.__UNIQUE_ID_ddebug208, !512, !"__UNIQUE_ID_ddebug208", i1 false, i1 false}
!514 = !{ptr @.str.276, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../drivers/target/target_core_pr.c", i32 502, i32 4}
!516 = !{ptr @core_scsi3_pr_seq_non_holder.__UNIQUE_ID_ddebug209, !515, !"__UNIQUE_ID_ddebug209", i1 false, i1 false}
!517 = !{ptr @.str.277, !518, !"<string literal>", i1 false, i1 false}
!518 = !{!"../drivers/target/target_core_pr.c", i32 520, i32 5}
!519 = !{ptr @core_scsi3_pr_seq_non_holder.__UNIQUE_ID_ddebug210, !518, !"__UNIQUE_ID_ddebug210", i1 false, i1 false}
!520 = !{ptr @.str.278, !521, !"<string literal>", i1 false, i1 false}
!521 = !{!"../drivers/target/target_core_pr.c", i32 535, i32 4}
!522 = !{ptr @core_scsi3_pr_seq_non_holder.__UNIQUE_ID_ddebug211, !521, !"__UNIQUE_ID_ddebug211", i1 false, i1 false}
!523 = !{ptr @.str.279, !524, !"<string literal>", i1 false, i1 false}
!524 = !{!"../drivers/target/target_core_pr.c", i32 547, i32 24}
!525 = !{ptr @core_scsi3_pr_seq_non_holder.__UNIQUE_ID_ddebug212, !524, !"__UNIQUE_ID_ddebug212", i1 false, i1 false}
!526 = !{ptr @.str.280, !527, !"<string literal>", i1 false, i1 false}
!527 = !{!"../drivers/target/target_core_pr.c", i32 554, i32 2}
!528 = !{ptr @core_scsi3_pr_seq_non_holder.__UNIQUE_ID_ddebug213, !527, !"__UNIQUE_ID_ddebug213", i1 false, i1 false}
!529 = !{ptr @.str.281, !527, !"<string literal>", i1 false, i1 false}
!530 = !{!"sp"}
!531 = !{i32 1, !"wchar_size", i32 2}
!532 = !{i32 1, !"min_enum_size", i32 4}
!533 = !{i32 8, !"branch-target-enforcement", i32 0}
!534 = !{i32 8, !"sign-return-address", i32 0}
!535 = !{i32 8, !"sign-return-address-all", i32 0}
!536 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!537 = !{i32 7, !"uwtable", i32 1}
!538 = !{i32 7, !"frame-pointer", i32 2}
!539 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!540 = !{i8 0, i8 2}
!541 = !{i64 2148324339, i64 2148324344, i64 2148324357, i64 2148324401, i64 2148324435, i64 2148324456}
!542 = !{i64 2153181097}
!543 = !{i64 2148706078, i64 2148706104, i64 2148706133, i64 2148706167, i64 2148706198, i64 2148706221}
!544 = !{i64 2153181274}
!545 = !{i64 2150040484}
!546 = !{i64 2150040750}
!547 = !{i64 2148705143, i64 2148705175, i64 2148705204, i64 2148705238, i64 2148705269, i64 2148705292}
!548 = !{!"branch_weights", i32 1, i32 2000}
!549 = !{!"branch_weights", i32 2000, i32 1}
!550 = !{i64 2153330969}
!551 = !{i64 2153330811}
!552 = !{!"auto-init"}
!553 = !{i64 2153180573}
!554 = !{i64 2148703613, i64 2148703639, i64 2148703668, i64 2148703702, i64 2148703733, i64 2148703756}
!555 = !{i64 2153180750}
!556 = !{i64 2148793168}
!557 = !{i64 2148707608, i64 2148707640, i64 2148707669, i64 2148707703, i64 2148707734, i64 2148707757}
!558 = !{i64 2149990941}
!559 = !{i64 1108293, i64 1108354}
!560 = !{i64 1111025}
!561 = !{i64 1111310}
!562 = !{i64 2148703032}
!563 = !{i64 1189632, i64 1189657, i64 1189679, i64 1189695, i64 1189707, i64 1189727, i64 1189751, i64 1189767, i64 1189779}
!564 = !{i64 2148703220}
!565 = !{i64 2148792089}
!566 = !{i64 2148706798, i64 2148706830, i64 2148706859, i64 2148706893, i64 2148706924, i64 2148706947}
!567 = !{i64 2148792318}
