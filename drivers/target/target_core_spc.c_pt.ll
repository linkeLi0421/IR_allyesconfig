; ModuleID = '/llk/IR_all_yes/drivers/target/target_core_spc.c_pt.bc'
source_filename = "../drivers/target/target_core_spc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+spc_emulate_inquiry_std\22, \22a\22\09"
module asm "\09.weak\09__crc_spc_emulate_inquiry_std\09\09\09\09"
module asm "\09.long\09__crc_spc_emulate_inquiry_std\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spc_emulate_inquiry_std:\09\09\09\09\09"
module asm "\09.asciz \09\22spc_emulate_inquiry_std\22\09\09\09\09\09"
module asm "__kstrtabns_spc_emulate_inquiry_std:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+spc_emulate_evpd_83\22, \22a\22\09"
module asm "\09.weak\09__crc_spc_emulate_evpd_83\09\09\09\09"
module asm "\09.long\09__crc_spc_emulate_evpd_83\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spc_emulate_evpd_83:\09\09\09\09\09"
module asm "\09.asciz \09\22spc_emulate_evpd_83\22\09\09\09\09\09"
module asm "__kstrtabns_spc_emulate_evpd_83:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+spc_emulate_report_luns\22, \22a\22\09"
module asm "\09.weak\09__crc_spc_emulate_report_luns\09\09\09\09"
module asm "\09.long\09__crc_spc_emulate_report_luns\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spc_emulate_report_luns:\09\09\09\09\09"
module asm "\09.asciz \09\22spc_emulate_report_luns\22\09\09\09\09\09"
module asm "__kstrtabns_spc_emulate_report_luns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+spc_parse_cdb\22, \22a\22\09"
module asm "\09.weak\09__crc_spc_parse_cdb\09\09\09\09"
module asm "\09.long\09__crc_spc_parse_cdb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spc_parse_cdb:\09\09\09\09\09"
module asm "\09.asciz \09\22spc_parse_cdb\22\09\09\09\09\09"
module asm "__kstrtabns_spc_parse_cdb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.84 = type { i8, i8, ptr }
%struct.anon.89 = type { i8, ptr }
%struct.se_cmd = type { i32, i8, i16, i8, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.llist_node, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i64, i32, i32, %struct.spinlock, %struct.kref, %struct.completion, %struct.work_struct, ptr, ptr, i32, i32, ptr, ptr, i32, i32, %struct.list_head, ptr, i32, i32, i8, i8, i32, i32, ptr, i32, i32, i64, i32 }
%struct.llist_node = type { ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.se_lun = type { i64, i8, i8, i32, i16, %struct.atomic_t, ptr, %struct.list_head, %struct.spinlock, i32, i32, %struct.atomic_t, %struct.mutex, %struct.list_head, ptr, %struct.spinlock, ptr, %struct.scsi_port_stats, %struct.config_group, %struct.se_port_stat_grps, %struct.completion, %struct.percpu_ref, %struct.list_head, %struct.hlist_node, %struct.callback_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.scsi_port_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.se_port_stat_grps = type { %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group }
%struct.percpu_ref = type { i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.se_device = type { i16, i32, i32, i8, i32, i64, i32, i64, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i8, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.spinlock, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.semaphore, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.list_head, ptr, %struct.t10_wwn, %struct.t10_alua, %struct.t10_reservation, %struct.se_dev_attrib, %struct.config_group, %struct.config_group, %struct.config_group, %struct.se_dev_stat_grps, [512 x i8], [512 x i8], ptr, %struct.se_lun, i32, i32, %struct.callback_head, i32, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.t10_wwn = type { [9 x i8], [17 x i8], [5 x i8], [254 x i8], i32, %struct.spinlock, ptr, %struct.config_group, %struct.list_head }
%struct.t10_alua = type { i16, i32, %struct.spinlock, i32, i32, %struct.list_head, %struct.spinlock, ptr, ptr, %struct.config_group, %struct.list_head }
%struct.t10_reservation = type { i32, i32, i32, %struct.spinlock, %struct.spinlock, ptr, %struct.list_head, %struct.list_head }
%struct.se_dev_attrib = type { i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.config_group }
%struct.se_dev_stat_grps = type { %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group }
%struct.target_backend_ops = type { [16 x i8], [16 x i8], [4 x i8], ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.t10_alua_tg_pt_gp = type { i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.mutex, ptr, %struct.config_group, %struct.list_head, %struct.list_head, ptr, ptr }
%struct.se_session = type { %struct.atomic_t, i64, i32, i32, ptr, ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.completion, ptr, %struct.sbitmap_queue }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, ptr, %struct.atomic_t, i32 }
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.t10_alua_lu_gp_member = type { i8, %struct.atomic_t, %struct.spinlock, ptr, ptr, %struct.list_head }
%struct.se_portal_group = type { i32, i8, %struct.atomic_t, %struct.mutex, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.hlist_head, ptr, %struct.list_head, ptr, ptr, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group }
%struct.hlist_head = type { ptr }
%struct.target_core_fabric_ops = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.scsi_lun = type { [8 x i8] }
%struct.se_node_acl = type { [224 x i8], i8, i8, i32, i32, i32, [64 x i8], %struct.atomic_t, %struct.hlist_head, ptr, ptr, %struct.mutex, %struct.spinlock, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.list_head, %struct.list_head, %struct.completion, %struct.kref }
%struct.se_dev_entry = type { i64, i64, i64, i8, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.kref, %struct.completion, ptr, %struct.spinlock, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hlist_node, %struct.callback_head }

@__kstrtab_spc_emulate_inquiry_std = external dso_local constant [0 x i8], align 1
@__kstrtabns_spc_emulate_inquiry_std = external dso_local constant [0 x i8], align 1
@__ksymtab_spc_emulate_inquiry_std = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spc_emulate_inquiry_std to i32), ptr @__kstrtab_spc_emulate_inquiry_std, ptr @__kstrtabns_spc_emulate_inquiry_std }, section "___ksymtab+spc_emulate_inquiry_std", align 4
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s:%s\00", [26 x i8] zeroinitializer }, align 32
@spc_emulate_evpd_83.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/target/target_core_spc.c\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s,t,0x%04x\00", [20 x i8] zeroinitializer }, align 32
@__kstrtab_spc_emulate_evpd_83 = external dso_local constant [0 x i8], align 1
@__kstrtabns_spc_emulate_evpd_83 = external dso_local constant [0 x i8], align 1
@__ksymtab_spc_emulate_evpd_83 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spc_emulate_evpd_83 to i32), ptr @__kstrtab_spc_emulate_evpd_83, ptr @__kstrtabns_spc_emulate_evpd_83 }, section "___ksymtab+spc_emulate_evpd_83", align 4
@spc_emulate_report_luns.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@__kstrtab_spc_emulate_report_luns = external dso_local constant [0 x i8], align 1
@__kstrtabns_spc_emulate_report_luns = external dso_local constant [0 x i8], align 1
@__ksymtab_spc_emulate_report_luns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spc_emulate_report_luns to i32), ptr @__kstrtab_spc_emulate_report_luns, ptr @__kstrtabns_spc_emulate_report_luns }, section "___ksymtab+spc_emulate_report_luns", align 4
@__kstrtab_spc_parse_cdb = external dso_local constant [0 x i8], align 1
@__kstrtabns_spc_parse_cdb = external dso_local constant [0 x i8], align 1
@__ksymtab_spc_parse_cdb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spc_parse_cdb to i32), ptr @__kstrtab_spc_parse_cdb, ptr @__kstrtabns_spc_parse_cdb }, section "___ksymtab+spc_parse_cdb", align 4
@spc_fill_alua_data.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@spc_find_scsi_transport_vd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.1, i32 66, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"\014Cannot find VERSION DESCRIPTOR value for unknown SCSI transport PROTOCOL IDENTIFIER %#x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"spc_find_scsi_transport_vd\00", [37 x i8] zeroinitializer }, align 32
@spc_find_scsi_transport_vd._entry_ptr = internal global ptr @spc_find_scsi_transport_vd._entry, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@modesense_handlers = internal constant { [4 x %struct.anon.84], [32 x i8] } { [4 x %struct.anon.84] [%struct.anon.84 { i8 1, i8 0, ptr @spc_modesense_rwrecovery }, %struct.anon.84 { i8 8, i8 0, ptr @spc_modesense_caching }, %struct.anon.84 { i8 10, i8 0, ptr @spc_modesense_control }, %struct.anon.84 { i8 28, i8 0, ptr @spc_modesense_informational_exceptions }], [32 x i8] zeroinitializer }, align 32
@spc_emulate_modesense._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.1, i32 1087, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014MODE_SENSE: Invalid subpage code: 0x%02x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"spc_emulate_modesense\00", [42 x i8] zeroinitializer }, align 32
@spc_emulate_modesense._entry_ptr = internal global ptr @spc_emulate_modesense._entry, section ".printk_index", align 4
@spc_emulate_modesense._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.1, i32 1122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013MODE SENSE: unimplemented page/subpage: 0x%02x/0x%02x\0A\00", [39 x i8] zeroinitializer }, align 32
@spc_emulate_modesense._entry_ptr.15 = internal global ptr @spc_emulate_modesense._entry.13, section ".printk_index", align 4
@spc_emulate_request_sense._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.1, i32 1215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013REQUEST_SENSE description emulation not supported\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"spc_emulate_request_sense\00", [38 x i8] zeroinitializer }, align 32
@spc_emulate_request_sense._entry_ptr = internal global ptr @spc_emulate_request_sense._entry, section ".printk_index", align 4
@spc_emulate_inquiry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.1, i32 744, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013Unable to allocate response buffer for INQUIRY\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"spc_emulate_inquiry\00", [44 x i8] zeroinitializer }, align 32
@spc_emulate_inquiry._entry_ptr = internal global ptr @spc_emulate_inquiry._entry, section ".printk_index", align 4
@spc_emulate_inquiry._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.1, i32 753, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013INQUIRY with EVPD==0 but PAGE CODE=%02x\0A\00", [53 x i8] zeroinitializer }, align 32
@spc_emulate_inquiry._entry_ptr.22 = internal global ptr @spc_emulate_inquiry._entry.20, section ".printk_index", align 4
@evpd_handlers = internal constant { [8 x %struct.anon.89], [32 x i8] } { [8 x %struct.anon.89] [%struct.anon.89 { i8 0, ptr @spc_emulate_evpd_00 }, %struct.anon.89 { i8 -128, ptr @spc_emulate_evpd_80 }, %struct.anon.89 { i8 -125, ptr @spc_emulate_evpd_83 }, %struct.anon.89 { i8 -122, ptr @spc_emulate_evpd_86 }, %struct.anon.89 { i8 -80, ptr @spc_emulate_evpd_b0 }, %struct.anon.89 { i8 -79, ptr @spc_emulate_evpd_b1 }, %struct.anon.89 { i8 -78, ptr @spc_emulate_evpd_b2 }, %struct.anon.89 { i8 -77, ptr @spc_emulate_evpd_b3 }], [32 x i8] zeroinitializer }, align 32
@spc_emulate_inquiry._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.1, i32 772, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013Unknown VPD Code: 0x%02x\0A\00", [36 x i8] zeroinitializer }, align 32
@spc_emulate_inquiry._entry_ptr.25 = internal global ptr @spc_emulate_inquiry._entry.23, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@switch.table.spc_emulate_inquiry_std = internal constant { [7 x i16], [18 x i8] } { [7 x i16] [i16 2624, i16 2624, i16 2624, i16 2432, i16 2368, i16 2400, i16 3168], [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [23 x i64] [i64 21, i64 8, i64 0, i64 3, i64 18, i64 21, i64 26, i64 28, i64 29, i64 59, i64 76, i64 77, i64 85, i64 90, i64 131, i64 132, i64 140, i64 141, i64 160, i64 162, i64 163, i64 164, i64 181]
@__sancov_gen_cov_switch_values.26 = internal global [29 x i64] [i64 27, i64 8, i64 0, i64 3, i64 18, i64 21, i64 22, i64 23, i64 26, i64 28, i64 29, i64 59, i64 76, i64 77, i64 85, i64 86, i64 87, i64 90, i64 94, i64 95, i64 131, i64 132, i64 140, i64 141, i64 160, i64 162, i64 163, i64 164, i64 181]
@__sancov_gen_cov_switch_values.27 = internal global [6 x i64] [i64 4, i64 6, i64 1, i64 8, i64 10, i64 28]
@__sancov_gen_cov_switch_values.28 = internal global [6 x i64] [i64 4, i64 6, i64 1, i64 8, i64 10, i64 28]
@__sancov_gen_cov_switch_values.29 = internal global [8 x i64] [i64 6, i64 6, i64 1, i64 3, i64 8, i64 10, i64 28, i64 63]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.31 = internal global [9 x i64] [i64 7, i64 8, i64 128, i64 131, i64 134, i64 176, i64 177, i64 178, i64 179]
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 273, i32 35 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 329, i32 14 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 400, i32 38 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 1261, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 65, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 695, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 723, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [19 x i8] c"modesense_handlers\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 960, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 1087, i32 4 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 1121, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 1214, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 744, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 752, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant [14 x i8] c"evpd_handlers\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 700, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.114 = private constant [36 x i8] c"../drivers/target/target_core_spc.c\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 772, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant [37 x i8] c"switch.table.spc_emulate_inquiry_std\00", align 1
@llvm.compiler.used = appending global [40 x ptr] [ptr @__ksymtab_spc_emulate_evpd_83, ptr @__ksymtab_spc_emulate_inquiry_std, ptr @__ksymtab_spc_emulate_report_luns, ptr @__ksymtab_spc_parse_cdb, ptr @spc_emulate_inquiry._entry, ptr @spc_emulate_inquiry._entry.20, ptr @spc_emulate_inquiry._entry.23, ptr @spc_emulate_inquiry._entry_ptr, ptr @spc_emulate_inquiry._entry_ptr.22, ptr @spc_emulate_inquiry._entry_ptr.25, ptr @spc_emulate_modesense._entry, ptr @spc_emulate_modesense._entry.13, ptr @spc_emulate_modesense._entry_ptr, ptr @spc_emulate_modesense._entry_ptr.15, ptr @spc_emulate_request_sense._entry, ptr @spc_emulate_request_sense._entry_ptr, ptr @spc_find_scsi_transport_vd._entry, ptr @spc_find_scsi_transport_vd._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @modesense_handlers, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @evpd_handlers, ptr @.str.24, ptr @switch.table.spc_emulate_inquiry_std], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spc_find_scsi_transport_vd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @modesense_handlers to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spc_emulate_modesense._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spc_emulate_modesense._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spc_emulate_request_sense._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spc_emulate_inquiry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spc_emulate_inquiry._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evpd_handlers to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spc_emulate_inquiry._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.spc_emulate_inquiry_std to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spc_emulate_inquiry_std(ptr nocapture noundef readonly %cmd, ptr nocapture noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %se_lun = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 20
  %0 = ptrtoint ptr %se_lun to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_lun, align 8
  %lun_tpg = getelementptr inbounds %struct.se_lun, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %lun_tpg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lun_tpg, align 8
  %se_dev = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 19
  %4 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %se_dev, align 4
  %se_sess = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 21
  %6 = ptrtoint ptr %se_sess to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %se_sess, align 4
  %transport = getelementptr inbounds %struct.se_device, ptr %5, i32 0, i32 46
  %8 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %transport, align 8
  %get_device_type = getelementptr inbounds %struct.target_backend_ops, ptr %9, i32 0, i32 19
  %10 = ptrtoint ptr %get_device_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_device_type, align 4
  %call = tail call i32 %11(ptr noundef %5) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx = getelementptr i8, ptr %buf, i32 1
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -128, ptr %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx1 = getelementptr i8, ptr %buf, i32 2
  %13 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 6, ptr %arrayidx1, align 1
  %arrayidx2 = getelementptr i8, ptr %buf, i32 3
  %14 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 2, ptr %arrayidx2, align 1
  %arrayidx.i = getelementptr i8, ptr %buf, i32 5
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -128, ptr %arrayidx.i, align 1
  %16 = tail call i32 @llvm.read_register.i32(metadata !66) #15
  %and.i.i.i.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %19, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !76
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i.i, label %if.end.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.rcu_read_lock.exit.i_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #15
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end.rcu_read_lock.exit.i_crit_edge
  %lun_tg_pt_gp.i = getelementptr inbounds %struct.se_lun, ptr %1, i32 0, i32 14
  %20 = ptrtoint ptr %lun_tg_pt_gp.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %lun_tg_pt_gp.i, align 8
  %call.i = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end7.i_crit_edge

rcu_read_lock.exit.i.do.end7.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b16.i = load i1, ptr @spc_fill_alua_data.__warned, align 1
  br i1 %.b16.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @spc_fill_alua_data.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 44, ptr noundef nonnull @.str.2) #15
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %rcu_read_lock.exit.i.do.end7.i_crit_edge
  %tobool9.not.i = icmp eq ptr %21, null
  br i1 %tobool9.not.i, label %do.end7.i.if.end13.i_crit_edge, label %if.then10.i

do.end7.i.if.end13.i_crit_edge:                   ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13.i

if.then10.i:                                      ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  %tg_pt_gp_alua_access_type.i = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %tg_pt_gp_alua_access_type.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tg_pt_gp_alua_access_type.i, align 4
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.i, align 1
  %26 = trunc i32 %23 to i8
  %conv12.i = or i8 %25, %26
  store i8 %conv12.i, ptr %arrayidx.i, align 1
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then10.i, %do.end7.i.if.end13.i_crit_edge
  %call.i17.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i17.i, label %if.end13.i.spc_fill_alua_data.exit_crit_edge, label %land.lhs.true.i20.i

if.end13.i.spc_fill_alua_data.exit_crit_edge:     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spc_fill_alua_data.exit

land.lhs.true.i20.i:                              ; preds = %if.end13.i
  %call1.i18.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i18.i)
  %tobool.not.i19.i = icmp eq i32 %call1.i18.i, 0
  br i1 %tobool.not.i19.i, label %land.lhs.true.i20.i.spc_fill_alua_data.exit_crit_edge, label %land.lhs.true2.i22.i

land.lhs.true.i20.i.spc_fill_alua_data.exit_crit_edge: ; preds = %land.lhs.true.i20.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spc_fill_alua_data.exit

land.lhs.true2.i22.i:                             ; preds = %land.lhs.true.i20.i
  %.b4.i21.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i21.i, label %land.lhs.true2.i22.i.spc_fill_alua_data.exit_crit_edge, label %if.then.i23.i

land.lhs.true2.i22.i.spc_fill_alua_data.exit_crit_edge: ; preds = %land.lhs.true2.i22.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spc_fill_alua_data.exit

if.then.i23.i:                                    ; preds = %land.lhs.true2.i22.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #15
  br label %spc_fill_alua_data.exit

spc_fill_alua_data.exit:                          ; preds = %if.then.i23.i, %land.lhs.true2.i22.i.spc_fill_alua_data.exit_crit_edge, %land.lhs.true.i20.i.spc_fill_alua_data.exit_crit_edge, %if.end13.i.spc_fill_alua_data.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !77
  %27 = tail call i32 @llvm.read_register.i32(metadata !66) #15
  %and.i.i.i.i.i24.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i24.i to ptr
  %preempt_count.i.i.i.i25.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i.i25.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i.i25.i, align 4
  %sub.i.i.i.i = add i32 %30, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i25.i, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  %emulate_3pc = getelementptr inbounds %struct.se_device, ptr %5, i32 0, i32 39, i32 10
  %31 = ptrtoint ptr %emulate_3pc to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %emulate_3pc, align 8, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not = icmp eq i8 %32, 0
  br i1 %tobool.not, label %spc_fill_alua_data.exit.if.end6_crit_edge, label %if.then3

spc_fill_alua_data.exit.if.end6_crit_edge:        ; preds = %spc_fill_alua_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.then3:                                         ; preds = %spc_fill_alua_data.exit
  call void @__sanitizer_cov_trace_pc() #17
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i, align 1
  %35 = or i8 %34, 8
  store i8 %35, ptr %arrayidx.i, align 1
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %spc_fill_alua_data.exit.if.end6_crit_edge
  %sup_prot_ops = getelementptr inbounds %struct.se_session, ptr %7, i32 0, i32 2
  %36 = ptrtoint ptr %sup_prot_ops to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sup_prot_ops, align 8
  %and = and i32 %37, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end6.if.end19_crit_edge, label %if.then8

if.end6.if.end19_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

if.then8:                                         ; preds = %if.end6
  %pi_prot_type = getelementptr inbounds %struct.se_device, ptr %5, i32 0, i32 39, i32 12
  %38 = ptrtoint ptr %pi_prot_type to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pi_prot_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool10.not = icmp eq i32 %39, 0
  br i1 %tobool10.not, label %lor.lhs.false, label %if.then8.if.then13_crit_edge

if.then8.if.then13_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then13

lor.lhs.false:                                    ; preds = %if.then8
  %40 = ptrtoint ptr %se_sess to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %se_sess, align 4
  %sess_prot_type = getelementptr inbounds %struct.se_session, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %sess_prot_type to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sess_prot_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool12.not = icmp eq i32 %43, 0
  br i1 %tobool12.not, label %lor.lhs.false.if.end19_crit_edge, label %lor.lhs.false.if.then13_crit_edge

lor.lhs.false.if.then13_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then13

lor.lhs.false.if.end19_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

if.then13:                                        ; preds = %lor.lhs.false.if.then13_crit_edge, %if.then8.if.then13_crit_edge
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.i, align 1
  %46 = or i8 %45, 1
  store i8 %46, ptr %arrayidx.i, align 1
  br label %if.end19

if.end19:                                         ; preds = %if.then13, %lor.lhs.false.if.end19_crit_edge, %if.end6.if.end19_crit_edge
  %arrayidx20 = getelementptr i8, ptr %buf, i32 7
  %47 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 2, ptr %arrayidx20, align 1
  %arrayidx21 = getelementptr i8, ptr %buf, i32 8
  %48 = call ptr @memset(ptr %arrayidx21, i32 32, i32 28)
  %t10_wwn = getelementptr inbounds %struct.se_device, ptr %5, i32 0, i32 36
  %call26 = tail call i32 @strnlen(ptr noundef %t10_wwn, i32 noundef 8) #18
  %49 = call ptr @memcpy(ptr %arrayidx21, ptr %t10_wwn, i32 %call26)
  %arrayidx27 = getelementptr i8, ptr %buf, i32 16
  %model = getelementptr inbounds %struct.se_device, ptr %5, i32 0, i32 36, i32 1
  %call33 = tail call i32 @strnlen(ptr noundef %model, i32 noundef 16) #18
  %50 = call ptr @memcpy(ptr %arrayidx27, ptr %model, i32 %call33)
  %arrayidx34 = getelementptr i8, ptr %buf, i32 32
  %revision = getelementptr inbounds %struct.se_device, ptr %5, i32 0, i32 36, i32 2
  %call40 = tail call i32 @strnlen(ptr noundef %revision, i32 noundef 4) #18
  %51 = call ptr @memcpy(ptr %arrayidx34, ptr %revision, i32 %call40)
  %arrayidx41 = getelementptr i8, ptr %buf, i32 58
  %52 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_storeN_noabort(i32 %52, i32 2)
  store i16 160, ptr %arrayidx41, align 1
  %53 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %54)
  %55 = icmp ult i32 %54, 7
  br i1 %55, label %switch.hole_check, label %if.end19.do.end.i_crit_edge

if.end19.do.end.i_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

do.end.i:                                         ; preds = %switch.hole_check.do.end.i_crit_edge, %if.end19.do.end.i_crit_edge
  %call.i85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %54) #19
  br label %spc_find_scsi_transport_vd.exit

switch.hole_check:                                ; preds = %if.end19
  %switch.maskindex = trunc i32 %54 to i8
  %switch.shifted = lshr i8 121, %switch.maskindex
  %56 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %switch.lobit.not = icmp eq i8 %56, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end.i_crit_edge, label %switch.lookup

switch.hole_check.do.end.i_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep = getelementptr inbounds [7 x i16], ptr @switch.table.spc_emulate_inquiry_std, i32 0, i32 %54
  %57 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %57)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %spc_find_scsi_transport_vd.exit

spc_find_scsi_transport_vd.exit:                  ; preds = %switch.lookup, %do.end.i
  %retval.0.i = phi i16 [ 0, %do.end.i ], [ %switch.load, %switch.lookup ]
  %arrayidx43 = getelementptr i8, ptr %buf, i32 60
  %58 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_storeN_noabort(i32 %58, i32 2)
  store i16 %retval.0.i, ptr %arrayidx43, align 1
  %arrayidx44 = getelementptr i8, ptr %buf, i32 62
  %59 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_storeN_noabort(i32 %59, i32 2)
  store i16 1120, ptr %arrayidx44, align 1
  %60 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %se_dev, align 4
  %transport46 = getelementptr inbounds %struct.se_device, ptr %61, i32 0, i32 46
  %62 = ptrtoint ptr %transport46 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %transport46, align 8
  %get_device_type47 = getelementptr inbounds %struct.target_backend_ops, ptr %63, i32 0, i32 19
  %64 = ptrtoint ptr %get_device_type47 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %get_device_type47, align 4
  %call48 = tail call i32 %65(ptr noundef %5) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp eq i32 %call48, 0
  br i1 %cmp49, label %if.then51, label %spc_find_scsi_transport_vd.exit.if.end53_crit_edge

spc_find_scsi_transport_vd.exit.if.end53_crit_edge: ; preds = %spc_find_scsi_transport_vd.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end53

if.then51:                                        ; preds = %spc_find_scsi_transport_vd.exit
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx52 = getelementptr i8, ptr %buf, i32 64
  %66 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_storeN_noabort(i32 %66, i32 2)
  store i16 1216, ptr %arrayidx52, align 1
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %spc_find_scsi_transport_vd.exit.if.end53_crit_edge
  %arrayidx54 = getelementptr i8, ptr %buf, i32 4
  %67 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 91, ptr %arrayidx54, align 1
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @spc_gen_naa_6h_vendor_specific(ptr nocapture noundef readonly %dev, ptr nocapture noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %unit_serial = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 36, i32 3
  %company_id2 = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 36, i32 4
  %0 = ptrtoint ptr %company_id2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %company_id2, align 4
  %shr = lshr i32 %1, 20
  %2 = trunc i32 %shr to i8
  %3 = and i8 %2, 15
  %conv5 = or i8 %3, 96
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv5, ptr %buf, align 1
  %shr6 = lshr i32 %1, 12
  %conv8 = trunc i32 %shr6 to i8
  %arrayidx10 = getelementptr i8, ptr %buf, i32 1
  %5 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv8, ptr %arrayidx10, align 1
  %shr11 = lshr i32 %1, 4
  %conv13 = trunc i32 %shr11 to i8
  %arrayidx15 = getelementptr i8, ptr %buf, i32 2
  %6 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv13, ptr %arrayidx15, align 1
  %.tr = trunc i32 %1 to i8
  %conv17 = shl i8 %.tr, 4
  %arrayidx18 = getelementptr i8, ptr %buf, i32 3
  %7 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv17, ptr %arrayidx18, align 1
  %8 = ptrtoint ptr %unit_serial to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %unit_serial, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not58.not = icmp eq i8 %9, 0
  br i1 %tobool.not58.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %10 = phi i8 [ %17, %cleanup.for.body_crit_edge ], [ %9, %entry.for.body_crit_edge ]
  %next.0.off061 = phi i1 [ %next.2.off0, %cleanup.for.body_crit_edge ], [ true, %entry.for.body_crit_edge ]
  %off.060 = phi i32 [ %off.2, %cleanup.for.body_crit_edge ], [ 3, %entry.for.body_crit_edge ]
  %p.059 = phi ptr [ %incdec.ptr, %cleanup.for.body_crit_edge ], [ %unit_serial, %entry.for.body_crit_edge ]
  %call = tail call i32 @hex_to_bin(i8 noundef zeroext %10) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp21 = icmp slt i32 %call, 0
  br i1 %cmp21, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %for.body
  br i1 %next.0.off061, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %inc25 = add nsw i32 %off.060, 1
  %arrayidx26 = getelementptr i8, ptr %buf, i32 %off.060
  %11 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx26, align 1
  %13 = trunc i32 %call to i8
  %conv29 = or i8 %12, %13
  store i8 %conv29, ptr %arrayidx26, align 1
  br label %if.end33

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call.tr = trunc i32 %call to i8
  %conv31 = shl i8 %call.tr, 4
  %arrayidx32 = getelementptr i8, ptr %buf, i32 %off.060
  %14 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv31, ptr %arrayidx32, align 1
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then24
  %off.1 = phi i32 [ %inc25, %if.then24 ], [ %off.060, %if.else ]
  %15 = xor i1 %next.0.off061, true
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %for.body.cleanup_crit_edge
  %off.2 = phi i32 [ %off.1, %if.end33 ], [ %off.060, %for.body.cleanup_crit_edge ]
  %next.2.off0 = phi i1 [ %15, %if.end33 ], [ %next.0.off061, %for.body.cleanup_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %p.059, i32 1
  %16 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %incdec.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp ne i8 %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %off.2)
  %cmp = icmp slt i32 %off.2, 16
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex_to_bin(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spc_emulate_evpd_83(ptr nocapture noundef readonly %cmd, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %se_dev = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 19
  %0 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_dev, align 4
  %se_lun = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 20
  %2 = ptrtoint ptr %se_lun to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %se_lun, align 8
  %t10_wwn = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 36
  %model = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 36, i32 1
  %dev_flags = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dev_flags, align 8
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.check_t10_vend_desc_crit_edge, label %if.end

entry.check_t10_vend_desc_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %check_t10_vend_desc

if.end:                                           ; preds = %entry
  %arrayidx1 = getelementptr i8, ptr %buf, i32 4
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %arrayidx1, align 1
  %arrayidx2 = getelementptr i8, ptr %buf, i32 5
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 3, ptr %arrayidx2, align 1
  %arrayidx8 = getelementptr i8, ptr %buf, i32 7
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 16, ptr %arrayidx8, align 1
  %arrayidx9 = getelementptr i8, ptr %buf, i32 8
  %unit_serial.i = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 36, i32 3
  %company_id2.i = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 36, i32 4
  %9 = ptrtoint ptr %company_id2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %company_id2.i, align 4
  %shr.i = lshr i32 %10, 20
  %11 = trunc i32 %shr.i to i8
  %12 = and i8 %11, 15
  %conv5.i = or i8 %12, 96
  %13 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv5.i, ptr %arrayidx9, align 1
  %shr6.i = lshr i32 %10, 12
  %conv8.i = trunc i32 %shr6.i to i8
  %arrayidx10.i = getelementptr i8, ptr %buf, i32 9
  %14 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv8.i, ptr %arrayidx10.i, align 1
  %shr11.i = lshr i32 %10, 4
  %conv13.i = trunc i32 %shr11.i to i8
  %arrayidx15.i = getelementptr i8, ptr %buf, i32 10
  %15 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv13.i, ptr %arrayidx15.i, align 1
  %.tr.i = trunc i32 %10 to i8
  %conv17.i = shl i8 %.tr.i, 4
  %arrayidx18.i = getelementptr i8, ptr %buf, i32 11
  %16 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv17.i, ptr %arrayidx18.i, align 1
  %17 = ptrtoint ptr %unit_serial.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %unit_serial.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not58.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not58.not.i, label %if.end.check_t10_vend_desc_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.check_t10_vend_desc_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %check_t10_vend_desc

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %19 = phi i8 [ %26, %cleanup.i.for.body.i_crit_edge ], [ %18, %if.end.for.body.i_crit_edge ]
  %next.0.off061.i = phi i1 [ %next.2.off0.i, %cleanup.i.for.body.i_crit_edge ], [ true, %if.end.for.body.i_crit_edge ]
  %off.060.i = phi i32 [ %off.2.i, %cleanup.i.for.body.i_crit_edge ], [ 3, %if.end.for.body.i_crit_edge ]
  %p.059.i = phi ptr [ %incdec.ptr.i, %cleanup.i.for.body.i_crit_edge ], [ %unit_serial.i, %if.end.for.body.i_crit_edge ]
  %call.i412 = tail call i32 @hex_to_bin(i8 noundef zeroext %19) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i412)
  %cmp21.i = icmp slt i32 %call.i412, 0
  br i1 %cmp21.i, label %for.body.i.cleanup.i_crit_edge, label %if.end.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body.i
  br i1 %next.0.off061.i, label %if.then24.i, label %if.else.i

if.then24.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %inc25.i = add nsw i32 %off.060.i, 1
  %arrayidx26.i = getelementptr i8, ptr %arrayidx9, i32 %off.060.i
  %20 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx26.i, align 1
  %22 = trunc i32 %call.i412 to i8
  %conv29.i = or i8 %21, %22
  store i8 %conv29.i, ptr %arrayidx26.i, align 1
  br label %if.end33.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.tr.i = trunc i32 %call.i412 to i8
  %conv31.i = shl i8 %call.tr.i, 4
  %arrayidx32.i = getelementptr i8, ptr %arrayidx9, i32 %off.060.i
  %23 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv31.i, ptr %arrayidx32.i, align 1
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.else.i, %if.then24.i
  %off.1.i = phi i32 [ %inc25.i, %if.then24.i ], [ %off.060.i, %if.else.i ]
  %24 = xor i1 %next.0.off061.i, true
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end33.i, %for.body.i.cleanup.i_crit_edge
  %off.2.i = phi i32 [ %off.1.i, %if.end33.i ], [ %off.060.i, %for.body.i.cleanup.i_crit_edge ]
  %next.2.off0.i = phi i1 [ %24, %if.end33.i ], [ %next.0.off061.i, %for.body.i.cleanup.i_crit_edge ]
  %incdec.ptr.i = getelementptr i8, ptr %p.059.i, i32 1
  %25 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %incdec.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i413 = icmp ne i8 %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %off.2.i)
  %cmp.i = icmp slt i32 %off.2.i, 16
  %or.cond.i = select i1 %tobool.not.i413, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %cleanup.i.for.body.i_crit_edge, label %cleanup.i.check_t10_vend_desc_crit_edge

cleanup.i.check_t10_vend_desc_crit_edge:          ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %check_t10_vend_desc

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

check_t10_vend_desc:                              ; preds = %cleanup.i.check_t10_vend_desc_crit_edge, %if.end.check_t10_vend_desc_crit_edge, %entry.check_t10_vend_desc_crit_edge
  %off.0 = phi i32 [ 4, %entry.check_t10_vend_desc_crit_edge ], [ 24, %if.end.check_t10_vend_desc_crit_edge ], [ 24, %cleanup.i.check_t10_vend_desc_crit_edge ]
  %len.0 = phi i32 [ 0, %entry.check_t10_vend_desc_crit_edge ], [ 20, %if.end.check_t10_vend_desc_crit_edge ], [ 20, %cleanup.i.check_t10_vend_desc_crit_edge ]
  %27 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dev_flags, align 8
  %and15 = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %check_t10_vend_desc.if.end31_crit_edge, label %if.then17

check_t10_vend_desc.if.end31_crit_edge:           ; preds = %check_t10_vend_desc
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31

if.then17:                                        ; preds = %check_t10_vend_desc
  call void @__sanitizer_cov_trace_pc() #17
  %unit_serial = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 36, i32 3
  %add22 = add nuw nsw i32 %off.0, 12
  %arrayidx23 = getelementptr i8, ptr %buf, i32 %add22
  %call27 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx23, ptr noundef nonnull @.str, ptr noundef %model, ptr noundef %unit_serial)
  %29 = trunc i32 %call27 to i16
  %phi.bo = add i16 %29, 9
  br label %if.end31

if.end31:                                         ; preds = %if.then17, %check_t10_vend_desc.if.end31_crit_edge
  %id_len.0 = phi i16 [ %phi.bo, %if.then17 ], [ 9, %check_t10_vend_desc.if.end31_crit_edge ]
  %arrayidx32 = getelementptr i8, ptr %buf, i32 %off.0
  %30 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 2, ptr %arrayidx32, align 1
  %add33 = or i32 %off.0, 1
  %arrayidx34 = getelementptr i8, ptr %buf, i32 %add33
  %31 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %arrayidx34, align 1
  %add35 = or i32 %off.0, 2
  %arrayidx36 = getelementptr i8, ptr %buf, i32 %add35
  %32 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %arrayidx36, align 1
  %add37 = add nuw nsw i32 %off.0, 4
  %arrayidx38 = getelementptr i8, ptr %buf, i32 %add37
  %33 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 8)
  store i64 2314885530818453536, ptr %arrayidx38, align 1
  %call45 = tail call i32 @strnlen(ptr noundef %t10_wwn, i32 noundef 8) #18
  %34 = call ptr @memcpy(ptr %arrayidx38, ptr %t10_wwn, i32 %call45)
  %conv47 = trunc i16 %id_len.0 to i8
  %add48 = or i32 %off.0, 3
  %arrayidx49 = getelementptr i8, ptr %buf, i32 %add48
  %35 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv47, ptr %arrayidx49, align 1
  %conv50 = zext i16 %id_len.0 to i32
  %add51 = add nuw nsw i32 %conv50, 4
  %add53 = add nuw nsw i32 %add51, %len.0
  %add57 = add nuw nsw i32 %add51, %off.0
  %lun_tpg = getelementptr inbounds %struct.se_lun, ptr %3, i32 0, i32 16
  %36 = ptrtoint ptr %lun_tpg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %lun_tpg, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %arrayidx59 = getelementptr i8, ptr %buf, i32 %add57
  %inc60 = add nuw nsw i32 %add57, 1
  %.tr = trunc i32 %39 to i8
  %40 = shl i8 %.tr, 4
  %conv64 = or i8 %40, 1
  %41 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv64, ptr %arrayidx59, align 1
  %arrayidx65 = getelementptr i8, ptr %buf, i32 %inc60
  %42 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -108, ptr %arrayidx65, align 1
  %inc75 = add nuw nsw i32 %add57, 3
  %arrayidx77 = getelementptr i8, ptr %buf, i32 %inc75
  %43 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 4, ptr %arrayidx77, align 1
  %add78 = add nuw nsw i32 %add57, 6
  %lun_rtpi = getelementptr inbounds %struct.se_lun, ptr %3, i32 0, i32 4
  %44 = ptrtoint ptr %lun_rtpi to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %lun_rtpi, align 8
  %arrayidx79 = getelementptr i8, ptr %buf, i32 %add78
  %46 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_storeN_noabort(i32 %46, i32 2)
  store i16 %45, ptr %arrayidx79, align 1
  %add80 = add nuw nsw i32 %add57, 8
  %47 = trunc i32 %add53 to i16
  %conv83 = add i16 %47, 8
  %48 = tail call i32 @llvm.read_register.i32(metadata !66) #15
  %and.i.i.i.i.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %51, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !76
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %if.end31.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end31.rcu_read_lock.exit_crit_edge:            ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end31
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end31.rcu_read_lock.exit_crit_edge
  %lun_tg_pt_gp = getelementptr inbounds %struct.se_lun, ptr %3, i32 0, i32 14
  %52 = ptrtoint ptr %lun_tg_pt_gp to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %lun_tg_pt_gp, align 8
  %call85 = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end94_crit_edge

rcu_read_lock.exit.do.end94_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end94

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call87 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %land.lhs.true.do.end94_crit_edge, label %land.lhs.true89

land.lhs.true.do.end94_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end94

land.lhs.true89:                                  ; preds = %land.lhs.true
  %.b411 = load i1, ptr @spc_emulate_evpd_83.__warned, align 1
  br i1 %.b411, label %land.lhs.true89.do.end94_crit_edge, label %if.then91

land.lhs.true89.do.end94_crit_edge:               ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end94

if.then91:                                        ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @spc_emulate_evpd_83.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 329, ptr noundef nonnull @.str.2) #15
  br label %do.end94

do.end94:                                         ; preds = %if.then91, %land.lhs.true89.do.end94_crit_edge, %land.lhs.true.do.end94_crit_edge, %rcu_read_lock.exit.do.end94_crit_edge
  %tobool96.not = icmp eq ptr %53, null
  br i1 %tobool96.not, label %if.then97, label %if.end98

if.then97:                                        ; preds = %do.end94
  %call.i414 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i414, label %if.then97.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i417

if.then97.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i417:                               ; preds = %if.then97
  %call1.i415 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i415)
  %tobool.not.i416 = icmp eq i32 %call1.i415, 0
  br i1 %tobool.not.i416, label %land.lhs.true.i417.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i419

land.lhs.true.i417.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i417
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i419:                              ; preds = %land.lhs.true.i417
  %.b4.i418 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i418, label %land.lhs.true2.i419.rcu_read_unlock.exit_crit_edge, label %if.then.i420

land.lhs.true2.i419.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i419
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i420:                                     ; preds = %land.lhs.true2.i419
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i420, %land.lhs.true2.i419.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i417.rcu_read_unlock.exit_crit_edge, %if.then97.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !77
  %54 = tail call i32 @llvm.read_register.i32(metadata !66) #15
  %and.i.i.i.i.i421 = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i.i.i421 to ptr
  %preempt_count.i.i.i.i422 = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %preempt_count.i.i.i.i422 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %preempt_count.i.i.i.i422, align 4
  %sub.i.i.i = add i32 %57, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i422, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  br label %check_lu_gp

if.end98:                                         ; preds = %do.end94
  %58 = ptrtoint ptr %53 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %53, align 4
  %call.i423 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i423, label %if.end98.rcu_read_unlock.exit433_crit_edge, label %land.lhs.true.i426

if.end98.rcu_read_unlock.exit433_crit_edge:       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit433

land.lhs.true.i426:                               ; preds = %if.end98
  %call1.i424 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i424)
  %tobool.not.i425 = icmp eq i32 %call1.i424, 0
  br i1 %tobool.not.i425, label %land.lhs.true.i426.rcu_read_unlock.exit433_crit_edge, label %land.lhs.true2.i428

land.lhs.true.i426.rcu_read_unlock.exit433_crit_edge: ; preds = %land.lhs.true.i426
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit433

land.lhs.true2.i428:                              ; preds = %land.lhs.true.i426
  %.b4.i427 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i427, label %land.lhs.true2.i428.rcu_read_unlock.exit433_crit_edge, label %if.then.i429

land.lhs.true2.i428.rcu_read_unlock.exit433_crit_edge: ; preds = %land.lhs.true2.i428
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit433

if.then.i429:                                     ; preds = %land.lhs.true2.i428
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #15
  br label %rcu_read_unlock.exit433

rcu_read_unlock.exit433:                          ; preds = %if.then.i429, %land.lhs.true2.i428.rcu_read_unlock.exit433_crit_edge, %land.lhs.true.i426.rcu_read_unlock.exit433_crit_edge, %if.end98.rcu_read_unlock.exit433_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !77
  %60 = tail call i32 @llvm.read_register.i32(metadata !66) #15
  %and.i.i.i.i.i430 = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i.i.i430 to ptr
  %preempt_count.i.i.i.i431 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %preempt_count.i.i.i.i431 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %preempt_count.i.i.i.i431, align 4
  %sub.i.i.i432 = add i32 %63, -1
  store volatile i32 %sub.i.i.i432, ptr %preempt_count.i.i.i.i431, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  %64 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %37, align 4
  %arrayidx103 = getelementptr i8, ptr %buf, i32 %add80
  %inc104 = add nuw nsw i32 %add57, 9
  %.tr410 = trunc i32 %65 to i8
  %66 = shl i8 %.tr410, 4
  %conv108 = or i8 %66, 1
  %67 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv108, ptr %arrayidx103, align 1
  %arrayidx109 = getelementptr i8, ptr %buf, i32 %inc104
  %68 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 -107, ptr %arrayidx109, align 1
  %inc119 = add nuw nsw i32 %add57, 11
  %arrayidx121 = getelementptr i8, ptr %buf, i32 %inc119
  %69 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 4, ptr %arrayidx121, align 1
  %add122 = add nuw nsw i32 %add57, 14
  %arrayidx123 = getelementptr i8, ptr %buf, i32 %add122
  %70 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_storeN_noabort(i32 %70, i32 2)
  store i16 %59, ptr %arrayidx123, align 1
  %add124 = add nuw nsw i32 %add57, 16
  %add126 = add i16 %47, 16
  br label %check_lu_gp

check_lu_gp:                                      ; preds = %rcu_read_unlock.exit433, %rcu_read_unlock.exit
  %off.1 = phi i32 [ %add124, %rcu_read_unlock.exit433 ], [ %add80, %rcu_read_unlock.exit ]
  %len.1 = phi i16 [ %add126, %rcu_read_unlock.exit433 ], [ %conv83, %rcu_read_unlock.exit ]
  %dev_alua_lu_gp_mem = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 27
  %71 = ptrtoint ptr %dev_alua_lu_gp_mem to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev_alua_lu_gp_mem, align 8
  %tobool128.not = icmp eq ptr %72, null
  br i1 %tobool128.not, label %check_lu_gp.check_scsi_name_crit_edge, label %if.end130

check_lu_gp.check_scsi_name_crit_edge:            ; preds = %check_lu_gp
  call void @__sanitizer_cov_trace_pc() #17
  br label %check_scsi_name

if.end130:                                        ; preds = %check_lu_gp
  %lu_gp_mem_lock = getelementptr inbounds %struct.t10_alua_lu_gp_member, ptr %72, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lu_gp_mem_lock) #15
  %lu_gp131 = getelementptr inbounds %struct.t10_alua_lu_gp_member, ptr %72, i32 0, i32 3
  %73 = ptrtoint ptr %lu_gp131 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %lu_gp131, align 4
  %tobool132.not = icmp eq ptr %74, null
  br i1 %tobool132.not, label %if.then133, label %if.end135

if.then133:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock(ptr noundef %lu_gp_mem_lock) #15
  br label %check_scsi_name

if.end135:                                        ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #17
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %74, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lu_gp_mem_lock) #15
  %inc138 = add nuw nsw i32 %off.1, 1
  %arrayidx139 = getelementptr i8, ptr %buf, i32 %off.1
  %77 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx139, align 1
  %79 = or i8 %78, 1
  store i8 %79, ptr %arrayidx139, align 1
  %arrayidx144 = getelementptr i8, ptr %buf, i32 %inc138
  %80 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx144, align 1
  %82 = or i8 %81, 6
  store i8 %82, ptr %arrayidx144, align 1
  %inc148 = add nuw nsw i32 %off.1, 3
  %arrayidx150 = getelementptr i8, ptr %buf, i32 %inc148
  %83 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 4, ptr %arrayidx150, align 1
  %add151 = add nuw nsw i32 %off.1, 6
  %arrayidx152 = getelementptr i8, ptr %buf, i32 %add151
  %84 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_storeN_noabort(i32 %84, i32 2)
  store i16 %76, ptr %arrayidx152, align 1
  %add153 = add nuw nsw i32 %off.1, 8
  %add155 = add i16 %len.1, 8
  br label %check_scsi_name

check_scsi_name:                                  ; preds = %if.end135, %if.then133, %check_lu_gp.check_scsi_name_crit_edge
  %off.2 = phi i32 [ %add153, %if.end135 ], [ %off.1, %if.then133 ], [ %off.1, %check_lu_gp.check_scsi_name_crit_edge ]
  %len.2 = phi i16 [ %add155, %if.end135 ], [ %len.1, %if.then133 ], [ %len.1, %check_lu_gp.check_scsi_name_crit_edge ]
  %85 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %37, align 4
  %arrayidx160 = getelementptr i8, ptr %buf, i32 %off.2
  %inc161 = add nuw nsw i32 %off.2, 1
  %.tr406 = trunc i32 %86 to i8
  %87 = shl i8 %.tr406, 4
  %conv165 = or i8 %87, 3
  %88 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %conv165, ptr %arrayidx160, align 1
  %arrayidx166 = getelementptr i8, ptr %buf, i32 %inc161
  %89 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 -104, ptr %arrayidx166, align 1
  %add176 = add nuw nsw i32 %off.2, 4
  %se_tpg_tfo = getelementptr inbounds %struct.se_portal_group, ptr %37, i32 0, i32 10
  %90 = ptrtoint ptr %se_tpg_tfo to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %se_tpg_tfo, align 4
  %tpg_get_tag = getelementptr inbounds %struct.target_core_fabric_ops, ptr %91, i32 0, i32 6
  %92 = ptrtoint ptr %tpg_get_tag to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %tpg_get_tag, align 4
  %call177 = tail call zeroext i16 %93(ptr noundef %37) #15
  %arrayidx178 = getelementptr i8, ptr %buf, i32 %add176
  %94 = ptrtoint ptr %se_tpg_tfo to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %se_tpg_tfo, align 4
  %tpg_get_wwn = getelementptr inbounds %struct.target_core_fabric_ops, ptr %95, i32 0, i32 5
  %96 = ptrtoint ptr %tpg_get_wwn to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %tpg_get_wwn, align 4
  %call180 = tail call ptr %97(ptr noundef %37) #15
  %conv181 = zext i16 %call177 to i32
  %call182 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx178, ptr noundef nonnull @.str.3, ptr noundef %call180, i32 noundef %conv181)
  %98 = or i32 %call182, -4
  %sub434 = sub i32 %call182, %98
  %99 = tail call i32 @llvm.umin.i32(i32 %sub434, i32 256)
  %conv192 = trunc i32 %99 to i8
  %sub193 = add nuw nsw i32 %off.2, 3
  %arrayidx194 = getelementptr i8, ptr %buf, i32 %sub193
  %100 = ptrtoint ptr %arrayidx194 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %conv192, ptr %arrayidx194, align 1
  %add195 = add nuw nsw i32 %99, %add176
  %101 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %37, align 4
  %arrayidx203 = getelementptr i8, ptr %buf, i32 %add195
  %inc204 = add nuw nsw i32 %add195, 1
  %.tr408 = trunc i32 %102 to i8
  %103 = shl i8 %.tr408, 4
  %conv208 = or i8 %103, 3
  %104 = ptrtoint ptr %arrayidx203 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %conv208, ptr %arrayidx203, align 1
  %arrayidx209 = getelementptr i8, ptr %buf, i32 %inc204
  %105 = ptrtoint ptr %arrayidx209 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 -88, ptr %arrayidx209, align 1
  %add219 = add nuw nsw i32 %add195, 4
  %arrayidx220 = getelementptr i8, ptr %buf, i32 %add219
  %106 = ptrtoint ptr %se_tpg_tfo to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %se_tpg_tfo, align 4
  %tpg_get_wwn222 = getelementptr inbounds %struct.target_core_fabric_ops, ptr %107, i32 0, i32 5
  %108 = ptrtoint ptr %tpg_get_wwn222 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %tpg_get_wwn222, align 4
  %call223 = tail call ptr %109(ptr noundef %37) #15
  %stpcpy = tail call ptr @stpcpy(ptr %arrayidx220, ptr %call223) #18
  %110 = ptrtoint ptr %stpcpy to i32
  %111 = ptrtoint ptr %arrayidx220 to i32
  %112 = sub i32 %110, %111
  %113 = or i32 %112, -4
  %sub = sub i32 %112, %113
  %114 = trunc i32 %99 to i16
  %115 = tail call i32 @llvm.umin.i32(i32 %sub, i32 256)
  %conv236 = trunc i32 %115 to i8
  %sub237 = add nuw nsw i32 %add195, 3
  %arrayidx238 = getelementptr i8, ptr %buf, i32 %sub237
  %116 = ptrtoint ptr %arrayidx238 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %conv236, ptr %arrayidx238, align 1
  %117 = trunc i32 %115 to i16
  %118 = add i16 %len.2, 8
  %conv199 = add i16 %118, %114
  %conv243 = add i16 %conv199, %117
  %arrayidx244 = getelementptr i8, ptr %buf, i32 2
  %119 = ptrtoint ptr %arrayidx244 to i32
  call void @__asan_storeN_noabort(i32 %119, i32 2)
  store i16 %conv243, ptr %arrayidx244, align 1
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spc_emulate_report_luns(ptr noundef %cmd) #0 align 64 {
entry:
  %slun = alloca %struct.scsi_lun, align 8
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %se_sess = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 21
  %0 = ptrtoint ptr %se_sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_sess, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %slun) #15
  %2 = ptrtoint ptr %slun to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %slun, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len)
  %call = tail call ptr @transport_kmap_data_sg(ptr noundef %cmd) #15
  %data_length = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 12
  %3 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp ne i32 %4, 0
  %tobool1.not = icmp eq ptr %call, null
  %or.cond = select i1 %tobool.not, i1 %tobool1.not, i1 false
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.end.if.then49_crit_edge, label %if.end4

if.end.if.then49_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then49

if.end4:                                          ; preds = %if.end
  %se_node_acl = getelementptr inbounds %struct.se_session, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %se_node_acl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %se_node_acl, align 8
  %7 = tail call i32 @llvm.read_register.i32(metadata !66) #15
  %and.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !76
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %if.end4.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end4.rcu_read_lock.exit_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end4
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end4.rcu_read_lock.exit_crit_edge
  %call5 = tail call i32 @rcu_read_lock_any_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true7, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true7:                                   ; preds = %rcu_read_lock.exit
  %call8 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true7.do.end_crit_edge, label %land.lhs.true10

land.lhs.true7.do.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true10:                                  ; preds = %land.lhs.true7
  %.b119 = load i1, ptr @spc_emulate_report_luns.__warned, align 1
  br i1 %.b119, label %land.lhs.true10.do.end_crit_edge, label %if.then12

land.lhs.true10.do.end_crit_edge:                 ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.then12:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @spc_emulate_report_luns.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 1261, ptr noundef nonnull @.str.5) #15
  br label %do.end

do.end:                                           ; preds = %if.then12, %land.lhs.true10.do.end_crit_edge, %land.lhs.true7.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %lun_entry_hlist = getelementptr inbounds %struct.se_node_acl, ptr %6, i32 0, i32 8
  %11 = ptrtoint ptr %lun_entry_hlist to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %lun_entry_hlist, align 4
  %tobool19.not = icmp eq ptr %12, null
  %add.ptr = getelementptr i8, ptr %12, i32 -184
  %tobool21.not136141 = icmp eq ptr %add.ptr, null
  %tobool21.not136 = or i1 %tobool19.not, %tobool21.not136141
  br i1 %tobool21.not136, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %deve.0139 = phi ptr [ %add.ptr44, %for.inc.for.body_crit_edge ], [ %add.ptr, %do.end.for.body_crit_edge ]
  %lun_count.0138 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %offset.0137 = phi i32 [ %offset.1, %for.inc.for.body_crit_edge ], [ 8, %do.end.for.body_crit_edge ]
  %inc = add i32 %lun_count.0138, 1
  %13 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.0137, i32 %14)
  %cmp.not = icmp ult i32 %offset.0137, %14
  br i1 %cmp.not, label %if.end24, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end24:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %15 = ptrtoint ptr %deve.0139 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %deve.0139, align 8
  call void @int_to_scsilun(i64 noundef %16, ptr noundef nonnull %slun) #15
  %add.ptr25 = getelementptr i8, ptr %call, i32 %offset.0137
  %17 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data_length, align 4
  %sub = sub i32 %18, %offset.0137
  %19 = call i32 @llvm.umin.i32(i32 %sub, i32 8)
  %20 = call ptr @memcpy(ptr %add.ptr25, ptr %slun, i32 %19)
  %add = add i32 %offset.0137, 8
  br label %for.inc

for.inc:                                          ; preds = %if.end24, %for.body.for.inc_crit_edge
  %offset.1 = phi i32 [ %offset.0137, %for.body.for.inc_crit_edge ], [ %add, %if.end24 ]
  %link = getelementptr inbounds %struct.se_dev_entry, ptr %deve.0139, i32 0, i32 17
  %21 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %link, align 8
  %tobool40.not = icmp eq ptr %22, null
  %add.ptr44 = getelementptr i8, ptr %22, i32 -184
  %tobool21.not142 = icmp eq ptr %add.ptr44, null
  %tobool21.not = or i1 %tobool40.not, %tobool21.not142
  br i1 %tobool21.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %offset.0.lcssa = phi i32 [ 8, %do.end.for.end_crit_edge ], [ %offset.1, %for.inc.for.end_crit_edge ]
  %lun_count.0.lcssa = phi i32 [ 0, %do.end.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  %call.i121 = call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i121, label %for.end.done_crit_edge, label %land.lhs.true.i124

for.end.done_crit_edge:                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

land.lhs.true.i124:                               ; preds = %for.end
  %call1.i122 = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i122)
  %tobool.not.i123 = icmp eq i32 %call1.i122, 0
  br i1 %tobool.not.i123, label %land.lhs.true.i124.done_crit_edge, label %land.lhs.true2.i126

land.lhs.true.i124.done_crit_edge:                ; preds = %land.lhs.true.i124
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

land.lhs.true2.i126:                              ; preds = %land.lhs.true.i124
  %.b4.i125 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i125, label %land.lhs.true2.i126.done_crit_edge, label %if.then.i127

land.lhs.true2.i126.done_crit_edge:               ; preds = %land.lhs.true2.i126
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

if.then.i127:                                     ; preds = %land.lhs.true2.i126
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #15
  br label %done

done:                                             ; preds = %if.then.i127, %land.lhs.true2.i126.done_crit_edge, %land.lhs.true.i124.done_crit_edge, %for.end.done_crit_edge
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !77
  %23 = call i32 @llvm.read_register.i32(metadata !66) #15
  %and.i.i.i.i.i128 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i128 to ptr
  %preempt_count.i.i.i.i129 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i.i129 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i.i129, align 4
  %sub.i.i.i = add i32 %26, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i129, align 4
  call void @rcu_read_unlock_strict() #15
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lun_count.0.lcssa)
  %cmp48 = icmp eq i32 %lun_count.0.lcssa, 0
  br i1 %cmp48, label %done.if.then49_crit_edge, label %done.if.end63_crit_edge

done.if.end63_crit_edge:                          ; preds = %done
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end63

done.if.then49_crit_edge:                         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then49

if.then49:                                        ; preds = %done.if.then49_crit_edge, %if.end.if.then49_crit_edge
  %offset.2134 = phi i32 [ %offset.0.lcssa, %done.if.then49_crit_edge ], [ 8, %if.end.if.then49_crit_edge ]
  call void @int_to_scsilun(i64 noundef 0, ptr noundef nonnull %slun) #15
  %27 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %data_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %28)
  %cmp51 = icmp ugt i32 %28, 8
  br i1 %cmp51, label %if.then52, label %if.then49.if.end63_crit_edge

if.then49.if.end63_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end63

if.then52:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr53 = getelementptr i8, ptr %call, i32 %offset.2134
  %sub55 = sub i32 %28, %offset.2134
  %29 = call i32 @llvm.umin.i32(i32 %sub55, i32 8)
  %30 = call ptr @memcpy(ptr %add.ptr53, ptr %slun, i32 %29)
  br label %if.end63

if.end63:                                         ; preds = %if.then52, %if.then49.if.end63_crit_edge, %done.if.end63_crit_edge
  %lun_count.2 = phi i32 [ %lun_count.0.lcssa, %done.if.end63_crit_edge ], [ 1, %if.then52 ], [ 1, %if.then49.if.end63_crit_edge ]
  %.pre = shl i32 %lun_count.2, 3
  br i1 %tobool1.not, label %if.end63.if.end73_crit_edge, label %if.then65

if.end63.if.end73_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end73

if.then65:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #17
  %31 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %.pre, ptr %len, align 4
  %32 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %data_length, align 4
  %34 = call i32 @llvm.smin.i32(i32 %33, i32 4)
  %35 = call ptr @memcpy(ptr %call, ptr %len, i32 %34)
  call void @transport_kunmap_data_sg(ptr noundef %cmd) #15
  br label %if.end73

if.end73:                                         ; preds = %if.then65, %if.end63.if.end73_crit_edge
  %add75 = add i32 %.pre, 8
  call void @target_complete_cmd_with_length(ptr noundef %cmd, i8 noundef zeroext 0, i32 noundef %add75) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end73, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end73 ], [ 10, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %slun) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @transport_kmap_data_sg(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @int_to_scsilun(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @transport_kunmap_data_sg(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_complete_cmd_with_length(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spc_parse_cdb(ptr noundef %cmd, ptr noundef writeonly %size) #0 align 64 {
entry:
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
  %emulate_pr = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 11
  %4 = ptrtoint ptr %emulate_pr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %emulate_pr, align 1, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %3, align 1
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i8 %7, label %land.lhs.true.cleanup_crit_edge [
    i8 0, label %land.lhs.true.sw.bb115_crit_edge
    i8 -96, label %land.lhs.true.sw.bb110_crit_edge
    i8 59, label %land.lhs.true.sw.bb107_crit_edge
    i8 29, label %land.lhs.true.sw.bb103_crit_edge
    i8 28, label %land.lhs.true.sw.bb103_crit_edge240
    i8 -115, label %land.lhs.true.sw.bb100_crit_edge
    i8 21, label %land.lhs.true.sw.bb_crit_edge
    i8 85, label %land.lhs.true.sw.bb30_crit_edge
    i8 26, label %land.lhs.true.sw.bb34_crit_edge
    i8 90, label %land.lhs.true.sw.bb38_crit_edge
    i8 76, label %land.lhs.true.sw.bb43_crit_edge
    i8 77, label %land.lhs.true.sw.bb43_crit_edge241
    i8 -92, label %land.lhs.true.sw.bb136_crit_edge
    i8 -93, label %land.lhs.true.sw.bb117_crit_edge
    i8 3, label %land.lhs.true.sw.bb80_crit_edge
    i8 18, label %land.lhs.true.sw.bb84_crit_edge
    i8 -94, label %land.lhs.true.sw.bb89_crit_edge
    i8 -75, label %land.lhs.true.sw.bb89_crit_edge242
    i8 -125, label %land.lhs.true.sw.bb92_crit_edge
    i8 -124, label %land.lhs.true.sw.bb96_crit_edge
    i8 -116, label %land.lhs.true.sw.bb100_crit_edge243
  ]

land.lhs.true.sw.bb100_crit_edge243:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb100

land.lhs.true.sw.bb96_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb96

land.lhs.true.sw.bb92_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb92

land.lhs.true.sw.bb89_crit_edge242:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb89

land.lhs.true.sw.bb89_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb89

land.lhs.true.sw.bb84_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb84

land.lhs.true.sw.bb80_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb80

land.lhs.true.sw.bb117_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb117

land.lhs.true.sw.bb136_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb136

land.lhs.true.sw.bb43_crit_edge241:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb43

land.lhs.true.sw.bb43_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb43

land.lhs.true.sw.bb38_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb38

land.lhs.true.sw.bb34_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb34

land.lhs.true.sw.bb30_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb30

land.lhs.true.sw.bb_crit_edge:                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

land.lhs.true.sw.bb100_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb100

land.lhs.true.sw.bb103_crit_edge240:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb103

land.lhs.true.sw.bb103_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb103

land.lhs.true.sw.bb107_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb107

land.lhs.true.sw.bb110_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb110

land.lhs.true.sw.bb115_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb115

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %7, label %if.end.cleanup_crit_edge [
    i8 21, label %if.end.sw.bb_crit_edge
    i8 85, label %if.end.sw.bb30_crit_edge
    i8 26, label %if.end.sw.bb34_crit_edge
    i8 90, label %if.end.sw.bb38_crit_edge
    i8 76, label %if.end.sw.bb43_crit_edge
    i8 77, label %if.end.sw.bb43_crit_edge244
    i8 94, label %sw.bb47
    i8 95, label %sw.bb52
    i8 -92, label %if.end.sw.bb136_crit_edge
    i8 -93, label %if.end.sw.bb117_crit_edge
    i8 23, label %if.else
    i8 87, label %if.then61
    i8 3, label %if.end.sw.bb80_crit_edge
    i8 18, label %if.end.sw.bb84_crit_edge
    i8 -94, label %if.end.sw.bb89_crit_edge
    i8 -75, label %if.end.sw.bb89_crit_edge245
    i8 -125, label %if.end.sw.bb92_crit_edge
    i8 -124, label %if.end.sw.bb96_crit_edge
    i8 -116, label %if.end.sw.bb100_crit_edge
    i8 -115, label %if.end.sw.bb100_crit_edge246
    i8 28, label %if.end.sw.bb103_crit_edge
    i8 29, label %if.end.sw.bb103_crit_edge247
    i8 59, label %if.end.sw.bb107_crit_edge
    i8 -96, label %if.end.sw.bb110_crit_edge
    i8 0, label %if.end.sw.bb115_crit_edge
    i8 86, label %if.then72
    i8 22, label %if.else76
  ]

if.end.sw.bb115_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb115

if.end.sw.bb110_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb110

if.end.sw.bb107_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb107

if.end.sw.bb103_crit_edge247:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb103

if.end.sw.bb103_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb103

if.end.sw.bb100_crit_edge246:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb100

if.end.sw.bb100_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb100

if.end.sw.bb96_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb96

if.end.sw.bb92_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb92

if.end.sw.bb89_crit_edge245:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb89

if.end.sw.bb89_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb89

if.end.sw.bb84_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb84

if.end.sw.bb80_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb80

if.end.sw.bb117_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb117

if.end.sw.bb136_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb136

if.end.sw.bb43_crit_edge244:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb43

if.end.sw.bb43_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb43

if.end.sw.bb38_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb38

if.end.sw.bb34_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb34

if.end.sw.bb30_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb30

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %land.lhs.true.sw.bb_crit_edge
  %arrayidx28 = getelementptr i8, ptr %3, i32 4
  %10 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %11 to i32
  %12 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv29, ptr %size, align 4
  %execute_cmd = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 27
  %13 = ptrtoint ptr %execute_cmd to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @spc_emulate_modeselect, ptr %execute_cmd, align 4
  br label %cleanup

sw.bb30:                                          ; preds = %if.end.sw.bb30_crit_edge, %land.lhs.true.sw.bb30_crit_edge
  %arrayidx31 = getelementptr i8, ptr %3, i32 7
  %14 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %arrayidx31, align 1
  %conv32 = zext i16 %15 to i32
  %16 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv32, ptr %size, align 4
  %execute_cmd33 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 27
  %17 = ptrtoint ptr %execute_cmd33 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @spc_emulate_modeselect, ptr %execute_cmd33, align 4
  br label %cleanup

sw.bb34:                                          ; preds = %if.end.sw.bb34_crit_edge, %land.lhs.true.sw.bb34_crit_edge
  %arrayidx35 = getelementptr i8, ptr %3, i32 4
  %18 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx35, align 1
  %conv36 = zext i8 %19 to i32
  %20 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv36, ptr %size, align 4
  %execute_cmd37 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 27
  %21 = ptrtoint ptr %execute_cmd37 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @spc_emulate_modesense, ptr %execute_cmd37, align 4
  br label %cleanup

sw.bb38:                                          ; preds = %if.end.sw.bb38_crit_edge, %land.lhs.true.sw.bb38_crit_edge
  %arrayidx39 = getelementptr i8, ptr %3, i32 7
  %22 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %arrayidx39, align 1
  %conv41 = zext i16 %23 to i32
  %24 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv41, ptr %size, align 4
  %execute_cmd42 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 27
  %25 = ptrtoint ptr %execute_cmd42 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @spc_emulate_modesense, ptr %execute_cmd42, align 4
  br label %cleanup

sw.bb43:                                          ; preds = %if.end.sw.bb43_crit_edge, %if.end.sw.bb43_crit_edge244, %land.lhs.true.sw.bb43_crit_edge, %land.lhs.true.sw.bb43_crit_edge241
  %arrayidx44 = getelementptr i8, ptr %3, i32 7
  %26 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %arrayidx44, align 1
  %conv46 = zext i16 %27 to i32
  %28 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv46, ptr %size, align 4
  br label %cleanup

sw.bb47:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx48 = getelementptr i8, ptr %3, i32 7
  %29 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %arrayidx48, align 1
  %conv50 = zext i16 %30 to i32
  %31 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv50, ptr %size, align 4
  %execute_cmd51 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 27
  %32 = ptrtoint ptr %execute_cmd51 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @target_scsi3_emulate_pr_in, ptr %execute_cmd51, align 4
  br label %cleanup

sw.bb52:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx53 = getelementptr i8, ptr %3, i32 5
  %33 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %arrayidx53, align 1
  %35 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %size, align 4
  %execute_cmd55 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 27
  %36 = ptrtoint ptr %execute_cmd55 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @target_scsi3_emulate_pr_out, ptr %execute_cmd55, align 4
  br label %cleanup

if.then61:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx62 = getelementptr i8, ptr %3, i32 7
  %37 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %arrayidx62, align 1
  %conv64 = zext i16 %38 to i32
  br label %if.end65

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %data_length = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 12
  %39 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %data_length, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.else, %if.then61
  %storemerge239 = phi i32 [ %40, %if.else ], [ %conv64, %if.then61 ]
  %41 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %storemerge239, ptr %size, align 4
  %execute_cmd66 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 27
  %42 = ptrtoint ptr %execute_cmd66 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @target_scsi2_reservation_release, ptr %execute_cmd66, align 4
  br label %cleanup

if.then72:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx73 = getelementptr i8, ptr %3, i32 7
  %43 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %44 = load i16, ptr %arrayidx73, align 1
  %conv75 = zext i16 %44 to i32
  br label %if.end78

if.else76:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %data_length77 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 12
  %45 = ptrtoint ptr %data_length77 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %data_length77, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.else76, %if.then72
  %storemerge = phi i32 [ %46, %if.else76 ], [ %conv75, %if.then72 ]
  %47 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %storemerge, ptr %size, align 4
  %execute_cmd79 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 27
  %48 = ptrtoint ptr %execute_cmd79 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @target_scsi2_reservation_reserve, ptr %execute_cmd79, align 4
  br label %cleanup

sw.bb80:                                          ; preds = %if.end.sw.bb80_crit_edge, %land.lhs.true.sw.bb80_crit_edge
  %arrayidx81 = getelementptr i8, ptr %3, i32 4
  %49 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx81, align 1
  %conv82 = zext i8 %50 to i32
  %51 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv82, ptr %size, align 4
  %execute_cmd83 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 27
  %52 = ptrtoint ptr %execute_cmd83 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @spc_emulate_request_sense, ptr %execute_cmd83, align 4
  br label %cleanup

sw.bb84:                                          ; preds = %if.end.sw.bb84_crit_edge, %land.lhs.true.sw.bb84_crit_edge
  %arrayidx85 = getelementptr i8, ptr %3, i32 3
  %53 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_loadN_noabort(i32 %53, i32 2)
  %54 = load i16, ptr %arrayidx85, align 1
  %conv87 = zext i16 %54 to i32
  %55 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv87, ptr %size, align 4
  %sam_task_attr = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 7
  %56 = ptrtoint ptr %sam_task_attr to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 33, ptr %sam_task_attr, align 8
  %execute_cmd88 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 27
  %57 = ptrtoint ptr %execute_cmd88 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @spc_emulate_inquiry, ptr %execute_cmd88, align 4
  br label %cleanup

sw.bb89:                                          ; preds = %if.end.sw.bb89_crit_edge, %if.end.sw.bb89_crit_edge245, %land.lhs.true.sw.bb89_crit_edge, %land.lhs.true.sw.bb89_crit_edge242
  %arrayidx90 = getelementptr i8, ptr %3, i32 6
  %58 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_loadN_noabort(i32 %58, i32 4)
  %59 = load i32, ptr %arrayidx90, align 1
  %60 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %size, align 4
  br label %cleanup

sw.bb92:                                          ; preds = %if.end.sw.bb92_crit_edge, %land.lhs.true.sw.bb92_crit_edge
  %arrayidx93 = getelementptr i8, ptr %3, i32 10
  %61 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %62 = load i32, ptr %arrayidx93, align 1
  %63 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %size, align 4
  %execute_cmd95 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 27
  %64 = ptrtoint ptr %execute_cmd95 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @target_do_xcopy, ptr %execute_cmd95, align 4
  br label %cleanup

sw.bb96:                                          ; preds = %if.end.sw.bb96_crit_edge, %land.lhs.true.sw.bb96_crit_edge
  %arrayidx97 = getelementptr i8, ptr %3, i32 10
  %65 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %66 = load i32, ptr %arrayidx97, align 1
  %67 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %size, align 4
  %execute_cmd99 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 27
  %68 = ptrtoint ptr %execute_cmd99 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @target_do_receive_copy_results, ptr %execute_cmd99, align 4
  br label %cleanup

sw.bb100:                                         ; preds = %if.end.sw.bb100_crit_edge, %if.end.sw.bb100_crit_edge246, %land.lhs.true.sw.bb100_crit_edge, %land.lhs.true.sw.bb100_crit_edge243
  %arrayidx101 = getelementptr i8, ptr %3, i32 10
  %69 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %70 = load i32, ptr %arrayidx101, align 1
  %71 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %size, align 4
  br label %cleanup

sw.bb103:                                         ; preds = %if.end.sw.bb103_crit_edge, %if.end.sw.bb103_crit_edge247, %land.lhs.true.sw.bb103_crit_edge, %land.lhs.true.sw.bb103_crit_edge240
  %arrayidx104 = getelementptr i8, ptr %3, i32 3
  %72 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_loadN_noabort(i32 %72, i32 2)
  %73 = load i16, ptr %arrayidx104, align 1
  %conv106 = zext i16 %73 to i32
  %74 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %conv106, ptr %size, align 4
  br label %cleanup

sw.bb107:                                         ; preds = %if.end.sw.bb107_crit_edge, %land.lhs.true.sw.bb107_crit_edge
  %arrayidx108 = getelementptr i8, ptr %3, i32 6
  %75 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx108, align 1
  %conv.i.i = zext i8 %76 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 16
  %arrayidx1.i.i = getelementptr i8, ptr %3, i32 7
  %77 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %78 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 8
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr i8, ptr %3, i32 8
  %79 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i = zext i8 %80 to i32
  %or6.i.i = or i32 %or.i.i, %conv5.i.i
  %81 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %or6.i.i, ptr %size, align 4
  br label %cleanup

sw.bb110:                                         ; preds = %if.end.sw.bb110_crit_edge, %land.lhs.true.sw.bb110_crit_edge
  %execute_cmd111 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 27
  %82 = ptrtoint ptr %execute_cmd111 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @spc_emulate_report_luns, ptr %execute_cmd111, align 4
  %arrayidx112 = getelementptr i8, ptr %3, i32 6
  %83 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %84 = load i32, ptr %arrayidx112, align 1
  %85 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %size, align 4
  %sam_task_attr114 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 7
  %86 = ptrtoint ptr %sam_task_attr114 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 33, ptr %sam_task_attr114, align 8
  br label %cleanup

sw.bb115:                                         ; preds = %if.end.sw.bb115_crit_edge, %land.lhs.true.sw.bb115_crit_edge
  %execute_cmd116 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 27
  %87 = ptrtoint ptr %execute_cmd116 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @spc_emulate_testunitready, ptr %execute_cmd116, align 4
  %88 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %size, align 4
  br label %cleanup

sw.bb117:                                         ; preds = %if.end.sw.bb117_crit_edge, %land.lhs.true.sw.bb117_crit_edge
  %transport = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 46
  %89 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %transport, align 8
  %get_device_type = getelementptr inbounds %struct.target_backend_ops, ptr %90, i32 0, i32 19
  %91 = ptrtoint ptr %get_device_type to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %get_device_type, align 4
  %call118 = tail call i32 %92(ptr noundef %1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call118)
  %cmp119.not = icmp eq i32 %call118, 5
  br i1 %cmp119.not, label %if.else131, label %if.then121

if.then121:                                       ; preds = %sw.bb117
  %arrayidx122 = getelementptr i8, ptr %3, i32 1
  %93 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx122, align 1
  %95 = and i8 %94, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %95)
  %cmp124 = icmp eq i8 %95, 10
  br i1 %cmp124, label %if.then126, label %if.then121.if.end128_crit_edge

if.then121.if.end128_crit_edge:                   ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end128

if.then126:                                       ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #17
  %execute_cmd127 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 27
  %96 = ptrtoint ptr %execute_cmd127 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @target_emulate_report_target_port_groups, ptr %execute_cmd127, align 4
  br label %if.end128

if.end128:                                        ; preds = %if.then126, %if.then121.if.end128_crit_edge
  %arrayidx129 = getelementptr i8, ptr %3, i32 6
  %97 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_loadN_noabort(i32 %97, i32 4)
  %98 = load i32, ptr %arrayidx129, align 1
  %99 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %size, align 4
  br label %cleanup

if.else131:                                       ; preds = %sw.bb117
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx132 = getelementptr i8, ptr %3, i32 8
  %100 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_loadN_noabort(i32 %100, i32 2)
  %101 = load i16, ptr %arrayidx132, align 1
  %conv134 = zext i16 %101 to i32
  %102 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %conv134, ptr %size, align 4
  br label %cleanup

sw.bb136:                                         ; preds = %if.end.sw.bb136_crit_edge, %land.lhs.true.sw.bb136_crit_edge
  %transport137 = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 46
  %103 = ptrtoint ptr %transport137 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %transport137, align 8
  %get_device_type138 = getelementptr inbounds %struct.target_backend_ops, ptr %104, i32 0, i32 19
  %105 = ptrtoint ptr %get_device_type138 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %get_device_type138, align 4
  %call139 = tail call i32 %106(ptr noundef %1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call139)
  %cmp140.not = icmp eq i32 %call139, 5
  br i1 %cmp140.not, label %if.else152, label %if.then142

if.then142:                                       ; preds = %sw.bb136
  %arrayidx143 = getelementptr i8, ptr %3, i32 1
  %107 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx143, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %108)
  %cmp145 = icmp eq i8 %108, 10
  br i1 %cmp145, label %if.then147, label %if.then142.if.end149_crit_edge

if.then142.if.end149_crit_edge:                   ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end149

if.then147:                                       ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #17
  %execute_cmd148 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 27
  %109 = ptrtoint ptr %execute_cmd148 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr @target_emulate_set_target_port_groups, ptr %execute_cmd148, align 4
  br label %if.end149

if.end149:                                        ; preds = %if.then147, %if.then142.if.end149_crit_edge
  %arrayidx150 = getelementptr i8, ptr %3, i32 6
  %110 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_loadN_noabort(i32 %110, i32 4)
  %111 = load i32, ptr %arrayidx150, align 1
  %112 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %size, align 4
  br label %cleanup

if.else152:                                       ; preds = %sw.bb136
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx153 = getelementptr i8, ptr %3, i32 8
  %113 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_loadN_noabort(i32 %113, i32 2)
  %114 = load i16, ptr %arrayidx153, align 1
  %conv155 = zext i16 %114 to i32
  %115 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %conv155, ptr %size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else152, %if.end149, %if.else131, %if.end128, %sw.bb115, %sw.bb110, %sw.bb107, %sw.bb103, %sw.bb100, %sw.bb96, %sw.bb92, %sw.bb89, %sw.bb84, %sw.bb80, %if.end78, %if.end65, %sw.bb52, %sw.bb47, %sw.bb43, %sw.bb38, %sw.bb34, %sw.bb30, %sw.bb, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.end.cleanup_crit_edge ], [ 0, %if.end149 ], [ 0, %if.else152 ], [ 0, %if.end128 ], [ 0, %if.else131 ], [ 0, %sw.bb115 ], [ 0, %sw.bb110 ], [ 0, %sw.bb107 ], [ 0, %sw.bb103 ], [ 0, %sw.bb100 ], [ 0, %sw.bb96 ], [ 0, %sw.bb92 ], [ 0, %sw.bb89 ], [ 0, %sw.bb84 ], [ 0, %sw.bb80 ], [ 0, %if.end78 ], [ 0, %if.end65 ], [ 0, %sw.bb52 ], [ 0, %sw.bb47 ], [ 0, %sw.bb43 ], [ 0, %sw.bb38 ], [ 0, %sw.bb34 ], [ 0, %sw.bb30 ], [ 0, %sw.bb ], [ 2, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spc_emulate_modeselect(ptr noundef %cmd) #0 align 64 {
entry:
  %tbuf = alloca [512 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %t_task_cdb = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 30
  %0 = ptrtoint ptr %t_task_cdb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t_task_cdb, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %3)
  %cmp = icmp eq i8 %3, 85
  %cond = select i1 %cmp, i32 8, i32 4
  %arrayidx3 = getelementptr i8, ptr %1, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx3, align 1
  %6 = and i8 %5, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool5.not = icmp eq i8 %6, 0
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %tbuf) #15
  %7 = call ptr @memset(ptr %tbuf, i32 255, i32 512)
  %data_length = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 12
  %8 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool8.not = icmp eq i32 %9, 0
  br i1 %tobool8.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @target_complete_cmd(ptr noundef %cmd, i8 noundef zeroext 0) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = or i32 %cond, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %add)
  %cmp10 = icmp ult i32 %9, %add
  br i1 %cmp10, label %if.end.cleanup_crit_edge, label %if.end13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %call = tail call ptr @transport_kmap_data_sg(ptr noundef %cmd) #15
  %tobool14.not = icmp eq ptr %call, null
  br i1 %tobool14.not, label %if.end13.cleanup_crit_edge, label %if.end16

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end16:                                         ; preds = %if.end13
  br i1 %tobool5.not, label %if.end16.out.thread_crit_edge, label %if.end19

if.end16.out.thread_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread

if.end19:                                         ; preds = %if.end16
  %arrayidx20 = getelementptr i8, ptr %call, i32 %cond
  %10 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx20, align 1
  %12 = and i8 %11, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool27.not = icmp eq i8 %12, 0
  br i1 %tobool27.not, label %cond.end.thread, label %cond.end

cond.end:                                         ; preds = %if.end19
  %add28 = or i32 %cond, 1
  %arrayidx29 = getelementptr i8, ptr %call, i32 %add28
  %13 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx29, align 1
  %trunc = trunc i8 %11 to i6
  %15 = zext i6 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.27)
  switch i6 %trunc, label %cond.end.out.thread_crit_edge [
    i6 1, label %land.lhs.true
    i6 8, label %land.lhs.true.1
    i6 10, label %land.lhs.true.2
    i6 28, label %land.lhs.true.3
  ]

cond.end.out.thread_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread

cond.end.thread:                                  ; preds = %if.end19
  %trunc141 = trunc i8 %11 to i6
  %16 = zext i6 %trunc141 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.28)
  switch i6 %trunc141, label %cond.end.thread.out.thread_crit_edge [
    i6 1, label %cond.end.thread.if.then47_crit_edge
    i6 8, label %if.then47.fold.split
    i6 10, label %if.then47.fold.split139
    i6 28, label %if.then47.fold.split140
  ]

cond.end.thread.if.then47_crit_edge:              ; preds = %cond.end.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then47

cond.end.thread.out.thread_crit_edge:             ; preds = %cond.end.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread

land.lhs.true:                                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp45 = icmp eq i8 %14, 0
  br i1 %cmp45, label %land.lhs.true.if.then47_crit_edge, label %land.lhs.true.out.thread_crit_edge

land.lhs.true.out.thread_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread

land.lhs.true.if.then47_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then47

if.then47.fold.split:                             ; preds = %cond.end.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then47

if.then47.fold.split139:                          ; preds = %cond.end.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then47

if.then47.fold.split140:                          ; preds = %cond.end.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then47

if.then47:                                        ; preds = %land.lhs.true.3.if.then47_crit_edge, %land.lhs.true.2.if.then47_crit_edge, %land.lhs.true.1.if.then47_crit_edge, %if.then47.fold.split140, %if.then47.fold.split139, %if.then47.fold.split, %land.lhs.true.if.then47_crit_edge, %cond.end.thread.if.then47_crit_edge
  %i.0104.lcssa = phi i32 [ 0, %land.lhs.true.if.then47_crit_edge ], [ 1, %land.lhs.true.1.if.then47_crit_edge ], [ 2, %land.lhs.true.2.if.then47_crit_edge ], [ 3, %land.lhs.true.3.if.then47_crit_edge ], [ 0, %cond.end.thread.if.then47_crit_edge ], [ 1, %if.then47.fold.split ], [ 2, %if.then47.fold.split139 ], [ 3, %if.then47.fold.split140 ]
  %17 = call ptr @memset(ptr %tbuf, i32 0, i32 512)
  %emulate = getelementptr [4 x %struct.anon.84], ptr @modesense_handlers, i32 0, i32 %i.0104.lcssa, i32 2
  %18 = ptrtoint ptr %emulate to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %emulate, align 4
  %call50 = call i32 %19(ptr noundef %cmd, i8 noundef zeroext 0, ptr noundef nonnull %tbuf) #15
  %20 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data_length, align 4
  %add53 = add i32 %call50, %cond
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %add53)
  %cmp54 = icmp ult i32 %21, %add53
  br i1 %cmp54, label %if.then47.out.thread_crit_edge, label %out

if.then47.out.thread_crit_edge:                   ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread

land.lhs.true.1:                                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp45.1 = icmp eq i8 %14, 0
  br i1 %cmp45.1, label %land.lhs.true.1.if.then47_crit_edge, label %land.lhs.true.1.out.thread_crit_edge

land.lhs.true.1.out.thread_crit_edge:             ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread

land.lhs.true.1.if.then47_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then47

land.lhs.true.2:                                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp45.2 = icmp eq i8 %14, 0
  br i1 %cmp45.2, label %land.lhs.true.2.if.then47_crit_edge, label %land.lhs.true.2.out.thread_crit_edge

land.lhs.true.2.out.thread_crit_edge:             ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread

land.lhs.true.2.if.then47_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then47

land.lhs.true.3:                                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp45.3 = icmp eq i8 %14, 0
  br i1 %cmp45.3, label %land.lhs.true.3.if.then47_crit_edge, label %land.lhs.true.3.out.thread_crit_edge

land.lhs.true.3.out.thread_crit_edge:             ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread

land.lhs.true.3.if.then47_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then47

out.thread:                                       ; preds = %land.lhs.true.3.out.thread_crit_edge, %land.lhs.true.2.out.thread_crit_edge, %land.lhs.true.1.out.thread_crit_edge, %if.then47.out.thread_crit_edge, %land.lhs.true.out.thread_crit_edge, %cond.end.thread.out.thread_crit_edge, %cond.end.out.thread_crit_edge, %if.end16.out.thread_crit_edge
  %ret.0.ph = phi i32 [ 19, %if.then47.out.thread_crit_edge ], [ 8, %if.end16.out.thread_crit_edge ], [ 11, %land.lhs.true.3.out.thread_crit_edge ], [ 11, %land.lhs.true.2.out.thread_crit_edge ], [ 11, %land.lhs.true.1.out.thread_crit_edge ], [ 11, %land.lhs.true.out.thread_crit_edge ], [ 11, %cond.end.out.thread_crit_edge ], [ 11, %cond.end.thread.out.thread_crit_edge ]
  call void @transport_kunmap_data_sg(ptr noundef %cmd) #15
  br label %cleanup

out:                                              ; preds = %if.then47
  %bcmp = call i32 @bcmp(ptr %arrayidx20, ptr nonnull %tbuf, i32 %call50) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool60.not = icmp eq i32 %bcmp, 0
  call void @transport_kunmap_data_sg(ptr noundef %cmd) #15
  br i1 %tobool60.not, label %if.then64, label %out.cleanup_crit_edge

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then64:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  call void @target_complete_cmd(ptr noundef %cmd, i8 noundef zeroext 0) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then64, %out.cleanup_crit_edge, %out.thread, %if.end13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 19, %if.end.cleanup_crit_edge ], [ 10, %if.end13.cleanup_crit_edge ], [ 0, %if.then64 ], [ 9, %out.cleanup_crit_edge ], [ %ret.0.ph, %out.thread ]
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %tbuf) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spc_emulate_modesense(ptr noundef %cmd) #0 align 64 {
entry:
  %buf = alloca [512 x i8], align 2
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
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %buf) #15
  %transport = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 46
  %4 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %transport, align 8
  %get_device_type = getelementptr inbounds %struct.target_backend_ops, ptr %5, i32 0, i32 19
  %6 = ptrtoint ptr %get_device_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_device_type, align 4
  %call = tail call i32 %7(ptr noundef %1) #15
  %8 = ptrtoint ptr %t_task_cdb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %t_task_cdb, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 90, i8 %11)
  %cmp = icmp eq i8 %11, 90
  %arrayidx3 = getelementptr i8, ptr %3, i32 1
  %12 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %13 to i32
  %and = and i32 %conv4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond24 = select i1 %cmp, i32 3, i32 2
  %14 = and i32 %conv4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool13.not253 = icmp eq i32 %14, 0
  %not.cmp = xor i1 %cmp, true
  %tobool13.not = select i1 %not.cmp, i1 true, i1 %tobool13.not253
  %arrayidx15 = getelementptr i8, ptr %3, i32 2
  %15 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx15, align 1
  %17 = lshr i8 %16, 6
  %18 = and i8 %16, 63
  %arrayidx22 = getelementptr i8, ptr %3, i32 3
  %19 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx22, align 1
  %21 = call ptr @memset(ptr %buf, i32 0, i32 512)
  %se_lun = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 20
  %22 = ptrtoint ptr %se_lun to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %se_lun, align 8
  %lun_access_ro = getelementptr inbounds %struct.se_lun, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %lun_access_ro to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %lun_access_ro, align 1, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool25.not = icmp eq i8 %25, 0
  br i1 %tobool25.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call27 = tail call zeroext i1 @target_lun_is_rdonly(ptr noundef %cmd) #15
  br i1 %call27, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %arrayidx29 = getelementptr [512 x i8], ptr %buf, i32 0, i32 %cond24
  %26 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx29, align 1
  %28 = or i8 %27, -128
  store i8 %28, ptr %arrayidx29, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %call30 = tail call zeroext i1 @target_check_fua(ptr noundef %1) #15
  br i1 %call30, label %if.then31, label %if.end.if.end33_crit_edge

if.end.if.end33_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

if.then31:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cond.i = icmp eq i32 %call, 0
  br i1 %cond.i, label %sw.bb.i, label %if.then31.if.else57_crit_edge

if.then31.if.else57_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else57

sw.bb.i:                                          ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx32 = getelementptr [512 x i8], ptr %buf, i32 0, i32 %cond24
  %29 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx32, align 1
  %31 = or i8 %30, 16
  store i8 %31, ptr %arrayidx32, align 1
  br label %if.end33

if.end33:                                         ; preds = %sw.bb.i, %if.end.if.end33_crit_edge
  %inc = add nuw nsw i32 %cond24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp35 = icmp eq i32 %call, 0
  %or.cond = select i1 %tobool.not, i1 %cmp35, i1 false
  br i1 %or.cond, label %if.then37, label %if.end33.if.else57_crit_edge

if.end33.if.else57_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else57

if.then37:                                        ; preds = %if.end33
  %32 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %transport, align 8
  %get_blocks = getelementptr inbounds %struct.target_backend_ops, ptr %33, i32 0, i32 20
  %34 = ptrtoint ptr %get_blocks to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %get_blocks, align 4
  %call39 = tail call i64 %35(ptr noundef %1) #15
  %block_size40 = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 21
  %36 = ptrtoint ptr %block_size40 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %block_size40, align 8
  br i1 %cmp, label %if.then42, label %if.else52

if.then42:                                        ; preds = %if.then37
  br i1 %tobool13.not, label %if.else, label %if.then44

if.then44:                                        ; preds = %if.then42
  %arrayidx45 = getelementptr [512 x i8], ptr %buf, i32 0, i32 %inc
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %call39)
  %cmp.i = icmp ult i64 %call39, 4294967296
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #17
  %38 = trunc i64 %call39 to i32
  %incdec.ptr.i.i = getelementptr i8, ptr %arrayidx45, i32 4
  %39 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 %38, ptr %incdec.ptr.i.i, align 1
  br label %spc_modesense_long_blockdesc.exit

if.end.i:                                         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #17
  %40 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %arrayidx45, align 1
  %incdec.ptr2.i = getelementptr i8, ptr %arrayidx45, i32 4
  %41 = ptrtoint ptr %incdec.ptr2.i to i32
  call void @__asan_storeN_noabort(i32 %41, i32 8)
  store i64 %call39, ptr %incdec.ptr2.i, align 1
  br label %spc_modesense_long_blockdesc.exit

spc_modesense_long_blockdesc.exit:                ; preds = %if.end.i, %if.then.i
  %.sink13.i = phi i32 [ 16, %if.end.i ], [ 8, %if.then.i ]
  %.sink.i = phi i8 [ 16, %if.end.i ], [ 8, %if.then.i ]
  %retval.0.i = phi i32 [ 17, %if.end.i ], [ 12, %if.then.i ]
  %add.ptr3.i = getelementptr i8, ptr %arrayidx45, i32 %.sink13.i
  %42 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 %37, ptr %add.ptr3.i, align 1
  %43 = getelementptr i8, ptr %arrayidx45, i32 3
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %.sink.i, ptr %43, align 1
  %add = add nuw nsw i32 %retval.0.i, %inc
  br label %if.end64

if.else:                                          ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #17
  %add47 = or i32 %cond24, 4
  %arrayidx48 = getelementptr [512 x i8], ptr %buf, i32 0, i32 %add47
  %45 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 8, ptr %arrayidx48, align 1
  %46 = tail call i64 @llvm.umin.i64(i64 %call39, i64 4294967295) #15
  %47 = trunc i64 %46 to i32
  %incdec.ptr.i = getelementptr i8, ptr %arrayidx48, i32 1
  %48 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 %47, ptr %incdec.ptr.i, align 1
  %add.ptr.i = getelementptr i8, ptr %arrayidx48, i32 5
  %49 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %49, i32 4)
  store i32 %37, ptr %add.ptr.i, align 1
  %add50 = add nuw nsw i32 %cond24, 13
  br label %if.end64

if.else52:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx53 = getelementptr [512 x i8], ptr %buf, i32 0, i32 %inc
  %50 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 8, ptr %arrayidx53, align 1
  %51 = tail call i64 @llvm.umin.i64(i64 %call39, i64 4294967295) #15
  %52 = trunc i64 %51 to i32
  %incdec.ptr.i248 = getelementptr i8, ptr %arrayidx53, i32 1
  %53 = ptrtoint ptr %incdec.ptr.i248 to i32
  call void @__asan_storeN_noabort(i32 %53, i32 4)
  store i32 %52, ptr %incdec.ptr.i248, align 1
  %add.ptr.i249 = getelementptr i8, ptr %arrayidx53, i32 5
  %54 = ptrtoint ptr %add.ptr.i249 to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 %37, ptr %add.ptr.i249, align 1
  %add55 = add nuw nsw i32 %cond24, 10
  br label %if.end64

if.else57:                                        ; preds = %if.end33.if.else57_crit_edge, %if.then31.if.else57_crit_edge
  br i1 %cmp, label %if.then59, label %if.else61

if.then59:                                        ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #17
  %add60 = add nuw nsw i32 %cond24, 5
  br label %if.end64

if.else61:                                        ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #17
  %add62 = add nuw nsw i32 %cond24, 2
  br label %if.end64

if.end64:                                         ; preds = %if.else61, %if.then59, %if.else52, %if.else, %spc_modesense_long_blockdesc.exit
  %length.1 = phi i32 [ %add60, %if.then59 ], [ %add62, %if.else61 ], [ %add, %spc_modesense_long_blockdesc.exit ], [ %add50, %if.else ], [ %add55, %if.else52 ]
  %conv65 = zext i8 %18 to i32
  %trunc = trunc i8 %16 to i6
  %55 = zext i6 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.29)
  switch i6 %trunc, label %if.end64.do.end137_crit_edge [
    i6 -1, label %if.then68
    i6 1, label %land.lhs.true114
    i6 8, label %land.lhs.true114.1
    i6 10, label %land.lhs.true114.2
    i6 28, label %land.lhs.true114.3
    i6 3, label %if.end64.cleanup_crit_edge
  ]

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end64.do.end137_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end137

if.then68:                                        ; preds = %if.end64
  %56 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.30)
  switch i8 %20, label %do.end [
    i8 0, label %if.then68.if.then89_crit_edge
    i8 -1, label %if.then68.if.then89_crit_edge280
  ]

if.then68.if.then89_crit_edge280:                 ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then89

if.then68.if.then89_crit_edge:                    ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then89

do.end:                                           ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #17
  %conv69 = zext i8 %20 to i32
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %conv69) #19
  br label %cleanup

if.then89:                                        ; preds = %if.then68.if.then89_crit_edge, %if.then68.if.then89_crit_edge280
  %arrayidx91 = getelementptr [512 x i8], ptr %buf, i32 0, i32 %length.1
  %57 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %arrayidx91, align 1
  %arrayidx1.i = getelementptr i8, ptr %arrayidx91, i32 1
  %58 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 10, ptr %arrayidx1.i, align 1
  %add95 = add nuw nsw i32 %length.1, 12
  %arrayidx91.1 = getelementptr [512 x i8], ptr %buf, i32 0, i32 %add95
  %59 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %se_dev, align 4
  %61 = ptrtoint ptr %arrayidx91.1 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 8, ptr %arrayidx91.1, align 1
  %arrayidx1.i267 = getelementptr i8, ptr %arrayidx91.1, i32 1
  %62 = ptrtoint ptr %arrayidx1.i267 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 18, ptr %arrayidx1.i267, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %17)
  %cmp.i268 = icmp eq i8 %17, 1
  br i1 %cmp.i268, label %spc_modesense_caching.exit.thread, label %if.end.i269

spc_modesense_caching.exit.thread:                ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #17
  %add95.1276 = add nuw nsw i32 %length.1, 32
  %arrayidx91.2277 = getelementptr [512 x i8], ptr %buf, i32 0, i32 %add95.1276
  %63 = ptrtoint ptr %arrayidx91.2277 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 10, ptr %arrayidx91.2277, align 1
  %arrayidx1.i271279 = getelementptr i8, ptr %arrayidx91.2277, i32 1
  %64 = ptrtoint ptr %arrayidx1.i271279 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 10, ptr %arrayidx1.i271279, align 1
  br label %if.then89.3

if.end.i269:                                      ; preds = %if.then89
  %call.i = tail call zeroext i1 @target_check_wce(ptr noundef %60) #15
  br i1 %call.i, label %if.then3.i, label %if.end.i269.if.end.i274_crit_edge

if.end.i269.if.end.i274_crit_edge:                ; preds = %if.end.i269
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i274

if.then3.i:                                       ; preds = %if.end.i269
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx4.i = getelementptr i8, ptr %arrayidx91.1, i32 2
  %65 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 4, ptr %arrayidx4.i, align 1
  br label %if.end.i274

if.end.i274:                                      ; preds = %if.then3.i, %if.end.i269.if.end.i274_crit_edge
  %arrayidx6.i = getelementptr i8, ptr %arrayidx91.1, i32 12
  %66 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 32, ptr %arrayidx6.i, align 1
  %add95.1 = add nuw nsw i32 %length.1, 32
  %arrayidx91.2 = getelementptr [512 x i8], ptr %buf, i32 0, i32 %add95.1
  %67 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %se_dev, align 4
  %se_sess.i = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 21
  %69 = ptrtoint ptr %se_sess.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %se_sess.i, align 4
  %71 = ptrtoint ptr %arrayidx91.2 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 10, ptr %arrayidx91.2, align 1
  %arrayidx1.i271 = getelementptr i8, ptr %arrayidx91.2, i32 1
  %72 = ptrtoint ptr %arrayidx1.i271 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 10, ptr %arrayidx1.i271, align 1
  %arrayidx3.i = getelementptr i8, ptr %arrayidx91.2, i32 2
  %73 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 2, ptr %arrayidx3.i, align 1
  %call.i273 = tail call zeroext i1 @target_sense_desc_format(ptr noundef %68) #15
  br i1 %call.i273, label %if.then4.i, label %if.end.i274.if.end8.i_crit_edge

if.end.i274.if.end8.i_crit_edge:                  ; preds = %if.end.i274
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8.i

if.then4.i:                                       ; preds = %if.end.i274
  call void @__sanitizer_cov_trace_pc() #17
  %74 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx3.i, align 1
  %76 = or i8 %75, 4
  store i8 %76, ptr %arrayidx3.i, align 1
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then4.i, %if.end.i274.if.end8.i_crit_edge
  %emulate_rest_reord.i = getelementptr inbounds %struct.se_device, ptr %68, i32 0, i32 39, i32 18
  %77 = ptrtoint ptr %emulate_rest_reord.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %emulate_rest_reord.i, align 8, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool.not.i = icmp eq i8 %78, 0
  %conv12.i = select i1 %tobool.not.i, i8 16, i8 0
  %arrayidx13.i = getelementptr i8, ptr %arrayidx91.2, i32 3
  %79 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv12.i, ptr %arrayidx13.i, align 1
  %emulate_ua_intlck_ctrl.i = getelementptr inbounds %struct.se_device, ptr %68, i32 0, i32 39, i32 5
  %80 = ptrtoint ptr %emulate_ua_intlck_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %emulate_ua_intlck_ctrl.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %81)
  %switch.selectcmp.i = icmp eq i32 %81, 1
  %switch.select.i = select i1 %switch.selectcmp.i, i8 32, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %81)
  %switch.selectcmp58.i = icmp eq i32 %81, 2
  %switch.select59.i = select i1 %switch.selectcmp58.i, i8 48, i8 %switch.select.i
  %arrayidx18.i = getelementptr i8, ptr %arrayidx91.2, i32 4
  %82 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %switch.select59.i, ptr %arrayidx18.i, align 1
  %emulate_tas.i = getelementptr inbounds %struct.se_device, ptr %68, i32 0, i32 39, i32 6
  %83 = ptrtoint ptr %emulate_tas.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %emulate_tas.i, align 4, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool20.not.i = icmp eq i8 %84, 0
  %conv23.i = select i1 %tobool20.not.i, i8 0, i8 64
  %arrayidx24.i = getelementptr i8, ptr %arrayidx91.2, i32 5
  %85 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %conv23.i, ptr %arrayidx24.i, align 1
  %sup_prot_ops.i = getelementptr inbounds %struct.se_session, ptr %70, i32 0, i32 2
  %86 = ptrtoint ptr %sup_prot_ops.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %sup_prot_ops.i, align 8
  %and.i = and i32 %87, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool25.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool25.not.i, label %if.end8.i.if.end36.i_crit_edge, label %if.then26.i

if.end8.i.if.end36.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36.i

if.then26.i:                                      ; preds = %if.end8.i
  %pi_prot_type.i = getelementptr inbounds %struct.se_device, ptr %68, i32 0, i32 39, i32 12
  %88 = ptrtoint ptr %pi_prot_type.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %pi_prot_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool28.not.i = icmp eq i32 %89, 0
  br i1 %tobool28.not.i, label %lor.lhs.false.i, label %if.then26.i.if.then30.i_crit_edge

if.then26.i.if.then30.i_crit_edge:                ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then30.i

lor.lhs.false.i:                                  ; preds = %if.then26.i
  %sess_prot_type.i = getelementptr inbounds %struct.se_session, ptr %70, i32 0, i32 3
  %90 = ptrtoint ptr %sess_prot_type.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %sess_prot_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool29.not.i = icmp eq i32 %91, 0
  br i1 %tobool29.not.i, label %lor.lhs.false.i.if.end36.i_crit_edge, label %lor.lhs.false.i.if.then30.i_crit_edge

lor.lhs.false.i.if.then30.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then30.i

lor.lhs.false.i.if.end36.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36.i

if.then30.i:                                      ; preds = %lor.lhs.false.i.if.then30.i_crit_edge, %if.then26.i.if.then30.i_crit_edge
  %92 = or i8 %conv23.i, -128
  %93 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %arrayidx24.i, align 1
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then30.i, %lor.lhs.false.i.if.end36.i_crit_edge, %if.end8.i.if.end36.i_crit_edge
  %arrayidx37.i = getelementptr i8, ptr %arrayidx91.2, i32 8
  %94 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 -1, ptr %arrayidx37.i, align 1
  %arrayidx38.i = getelementptr i8, ptr %arrayidx91.2, i32 9
  %95 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 -1, ptr %arrayidx38.i, align 1
  %arrayidx39.i = getelementptr i8, ptr %arrayidx91.2, i32 11
  %96 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 30, ptr %arrayidx39.i, align 1
  br label %if.then89.3

if.then89.3:                                      ; preds = %if.end36.i, %spc_modesense_caching.exit.thread
  %add95.2 = add nuw nsw i32 %length.1, 44
  %arrayidx91.3 = getelementptr [512 x i8], ptr %buf, i32 0, i32 %add95.2
  %97 = ptrtoint ptr %arrayidx91.3 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 28, ptr %arrayidx91.3, align 1
  %arrayidx1.i275 = getelementptr i8, ptr %arrayidx91.3, i32 1
  %98 = ptrtoint ptr %arrayidx1.i275 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 10, ptr %arrayidx1.i275, align 1
  %add95.3 = add nuw nsw i32 %length.1, 56
  br label %set_length

land.lhs.true114:                                 ; preds = %if.end64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp119 = icmp eq i8 %20, 0
  br i1 %cmp119, label %land.lhs.true114.if.then121_crit_edge, label %land.lhs.true114.do.end137_crit_edge

land.lhs.true114.do.end137_crit_edge:             ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end137

land.lhs.true114.if.then121_crit_edge:            ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then121

if.then121:                                       ; preds = %land.lhs.true114.3.if.then121_crit_edge, %land.lhs.true114.2.if.then121_crit_edge, %land.lhs.true114.1.if.then121_crit_edge, %land.lhs.true114.if.then121_crit_edge
  %i.1255.lcssa = phi i32 [ 0, %land.lhs.true114.if.then121_crit_edge ], [ 1, %land.lhs.true114.1.if.then121_crit_edge ], [ 2, %land.lhs.true114.2.if.then121_crit_edge ], [ 3, %land.lhs.true114.3.if.then121_crit_edge ]
  %emulate123 = getelementptr [4 x %struct.anon.84], ptr @modesense_handlers, i32 0, i32 %i.1255.lcssa, i32 2
  %99 = ptrtoint ptr %emulate123 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %emulate123, align 4
  %arrayidx124 = getelementptr [512 x i8], ptr %buf, i32 0, i32 %length.1
  %call125 = call i32 %100(ptr noundef %cmd, i8 noundef zeroext %17, ptr noundef %arrayidx124) #15
  %add126 = add i32 %call125, %length.1
  br label %set_length

land.lhs.true114.1:                               ; preds = %if.end64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp119.1 = icmp eq i8 %20, 0
  br i1 %cmp119.1, label %land.lhs.true114.1.if.then121_crit_edge, label %land.lhs.true114.1.do.end137_crit_edge

land.lhs.true114.1.do.end137_crit_edge:           ; preds = %land.lhs.true114.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end137

land.lhs.true114.1.if.then121_crit_edge:          ; preds = %land.lhs.true114.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then121

land.lhs.true114.2:                               ; preds = %if.end64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp119.2 = icmp eq i8 %20, 0
  br i1 %cmp119.2, label %land.lhs.true114.2.if.then121_crit_edge, label %land.lhs.true114.2.do.end137_crit_edge

land.lhs.true114.2.do.end137_crit_edge:           ; preds = %land.lhs.true114.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end137

land.lhs.true114.2.if.then121_crit_edge:          ; preds = %land.lhs.true114.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then121

land.lhs.true114.3:                               ; preds = %if.end64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp119.3 = icmp eq i8 %20, 0
  br i1 %cmp119.3, label %land.lhs.true114.3.if.then121_crit_edge, label %land.lhs.true114.3.do.end137_crit_edge

land.lhs.true114.3.do.end137_crit_edge:           ; preds = %land.lhs.true114.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end137

land.lhs.true114.3.if.then121_crit_edge:          ; preds = %land.lhs.true114.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then121

do.end137:                                        ; preds = %land.lhs.true114.3.do.end137_crit_edge, %land.lhs.true114.2.do.end137_crit_edge, %land.lhs.true114.1.do.end137_crit_edge, %land.lhs.true114.do.end137_crit_edge, %if.end64.do.end137_crit_edge
  %conv140 = zext i8 %20 to i32
  %call141 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %conv65, i32 noundef %conv140) #19
  br label %cleanup

set_length:                                       ; preds = %if.then121, %if.then89.3
  %length.4 = phi i32 [ %add126, %if.then121 ], [ %add95.3, %if.then89.3 ]
  br i1 %cmp, label %if.then144, label %if.else147

if.then144:                                       ; preds = %set_length
  call void @__sanitizer_cov_trace_pc() #17
  %101 = trunc i32 %length.4 to i16
  %conv145 = add i16 %101, -2
  %102 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %conv145, ptr %buf, align 2
  br label %if.end151

if.else147:                                       ; preds = %set_length
  call void @__sanitizer_cov_trace_pc() #17
  %103 = trunc i32 %length.4 to i8
  %conv149 = add i8 %103, -1
  %104 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %conv149, ptr %buf, align 2
  br label %if.end151

if.end151:                                        ; preds = %if.else147, %if.then144
  %call152 = call ptr @transport_kmap_data_sg(ptr noundef %cmd) #15
  %tobool153.not = icmp eq ptr %call152, null
  br i1 %tobool153.not, label %if.end151.if.end163_crit_edge, label %if.then154

if.end151.if.end163_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end163

if.then154:                                       ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #17
  %data_length = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 12
  %105 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %data_length, align 4
  %107 = call i32 @llvm.umin.i32(i32 %106, i32 512)
  %108 = call ptr @memcpy(ptr %call152, ptr %buf, i32 %107)
  call void @transport_kunmap_data_sg(ptr noundef %cmd) #15
  br label %if.end163

if.end163:                                        ; preds = %if.then154, %if.end151.if.end163_crit_edge
  call void @target_complete_cmd_with_length(ptr noundef %cmd, i8 noundef zeroext 0, i32 noundef %length.4) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end163, %do.end137, %do.end, %if.end64.cleanup_crit_edge
  %retval.0 = phi i32 [ 8, %do.end ], [ 0, %if.end163 ], [ 11, %do.end137 ], [ 11, %if.end64.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %buf) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @target_scsi3_emulate_pr_in(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @target_scsi3_emulate_pr_out(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @target_scsi2_reservation_release(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @target_scsi2_reservation_reserve(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spc_emulate_request_sense(ptr noundef %cmd) #0 align 64 {
entry:
  %ua_asc = alloca i8, align 1
  %ua_ascq = alloca i8, align 1
  %buf = alloca [96 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %t_task_cdb = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 30
  %0 = ptrtoint ptr %t_task_cdb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t_task_cdb, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ua_asc) #15
  %2 = ptrtoint ptr %ua_asc to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %ua_asc, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ua_ascq) #15
  %3 = ptrtoint ptr %ua_ascq to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %ua_ascq, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %buf) #15
  %se_dev = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 19
  %4 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %se_dev, align 4
  %call = tail call zeroext i1 @target_sense_desc_format(ptr noundef %5) #15
  %6 = call ptr @memset(ptr %buf, i32 0, i32 96)
  %arrayidx = getelementptr i8, ptr %1, i32 1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @transport_kmap_data_sg(ptr noundef %cmd) #15
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = call i32 @core_scsi3_ua_clear_for_request_sense(ptr noundef %cmd, ptr noundef nonnull %ua_asc, ptr noundef nonnull %ua_ascq) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  %conv10 = zext i1 %call to i32
  br i1 %tobool7.not, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %ua_asc to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ua_asc, align 1
  %12 = ptrtoint ptr %ua_ascq to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ua_ascq, align 1
  call void @scsi_build_sense_buffer(i32 noundef %conv10, ptr noundef nonnull %buf, i8 noundef zeroext 6, i8 noundef zeroext %11, i8 noundef zeroext %13) #15
  br label %if.end15

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  call void @scsi_build_sense_buffer(i32 noundef %conv10, ptr noundef nonnull %buf, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then8
  %data_length = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 12
  %14 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_length, align 4
  %16 = call i32 @llvm.umin.i32(i32 %15, i32 96)
  %17 = call ptr @memcpy(ptr %call2, ptr %buf, i32 %16)
  call void @transport_kunmap_data_sg(ptr noundef %cmd) #15
  call void @target_complete_cmd(ptr noundef %cmd, i8 noundef zeroext 0) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 8, %do.end ], [ 0, %if.end15 ], [ 10, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %buf) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ua_ascq) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ua_asc) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spc_emulate_inquiry(ptr noundef %cmd) #0 align 64 {
entry:
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
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 1024) #20
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %transport = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 46
  %5 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %transport, align 8
  %get_device_type = getelementptr inbounds %struct.target_backend_ops, ptr %6, i32 0, i32 19
  %7 = ptrtoint ptr %get_device_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %get_device_type, align 4
  %call2 = tail call i32 %8(ptr noundef %1) #15
  %conv = trunc i32 %call2 to i8
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %call7.i.i, align 8
  %arrayidx3 = getelementptr i8, ptr %3, i32 1
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx3, align 1
  %12 = and i8 %11, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool5.not = icmp eq i8 %12, 0
  %arrayidx7 = getelementptr i8, ptr %3, i32 2
  %13 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool8.not = icmp eq i8 %14, 0
  br i1 %tobool5.not, label %if.then6, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  br i1 %tobool8.not, label %for.cond.preheader.if.then29_crit_edge, label %for.inc

for.cond.preheader.if.then29_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then29

if.then6:                                         ; preds = %if.end
  br i1 %tobool8.not, label %if.end17, label %do.end12

do.end12:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  %conv15 = zext i8 %14 to i32
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %conv15) #19
  br label %out

if.end17:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  %call18 = tail call i32 @spc_emulate_inquiry_std(ptr noundef %cmd, ptr noundef nonnull %call7.i.i)
  %arrayidx19 = getelementptr i8, ptr %call7.i.i, i32 4
  %15 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx19, align 4
  %conv20 = zext i8 %16 to i32
  %add = add nuw nsw i32 %conv20, 5
  br label %out

if.then29.fold.split:                             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then29

if.then29.fold.split94:                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then29

if.then29.fold.split95:                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then29

if.then29.fold.split96:                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then29

if.then29.fold.split97:                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then29

if.then29.fold.split98:                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then29

if.then29:                                        ; preds = %for.inc.if.then29_crit_edge, %if.then29.fold.split98, %if.then29.fold.split97, %if.then29.fold.split96, %if.then29.fold.split95, %if.then29.fold.split94, %if.then29.fold.split, %for.cond.preheader.if.then29_crit_edge
  %p.092.lcssa = phi i32 [ 0, %for.cond.preheader.if.then29_crit_edge ], [ 1, %for.inc.if.then29_crit_edge ], [ 2, %if.then29.fold.split ], [ 3, %if.then29.fold.split94 ], [ 4, %if.then29.fold.split95 ], [ 5, %if.then29.fold.split96 ], [ 6, %if.then29.fold.split97 ], [ 7, %if.then29.fold.split98 ]
  %arrayidx31 = getelementptr i8, ptr %call7.i.i, i32 1
  %17 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %14, ptr %arrayidx31, align 1
  %emulate = getelementptr [8 x %struct.anon.89], ptr @evpd_handlers, i32 0, i32 %p.092.lcssa, i32 1
  %18 = ptrtoint ptr %emulate to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %emulate, align 4
  %call33 = tail call i32 %19(ptr noundef %cmd, ptr noundef nonnull %call7.i.i) #15
  %arrayidx34 = getelementptr i8, ptr %call7.i.i, i32 2
  %20 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx34, align 2
  %conv36 = zext i16 %21 to i32
  %add37 = add nuw nsw i32 %conv36, 4
  br label %out

for.inc:                                          ; preds = %for.cond.preheader
  %22 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.31)
  switch i8 %14, label %for.inc.7 [
    i8 -128, label %for.inc.if.then29_crit_edge
    i8 -125, label %if.then29.fold.split
    i8 -122, label %if.then29.fold.split94
    i8 -80, label %if.then29.fold.split95
    i8 -79, label %if.then29.fold.split96
    i8 -78, label %if.then29.fold.split97
    i8 -77, label %if.then29.fold.split98
  ]

for.inc.if.then29_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then29

for.inc.7:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  %23 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx7, align 1
  %conv44 = zext i8 %24 to i32
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %conv44) #19
  br label %out

out:                                              ; preds = %for.inc.7, %if.then29, %if.end17, %do.end12
  %ret.0 = phi i32 [ %call33, %if.then29 ], [ 8, %for.inc.7 ], [ 8, %do.end12 ], [ 0, %if.end17 ]
  %len.0 = phi i32 [ %add37, %if.then29 ], [ 0, %for.inc.7 ], [ 0, %do.end12 ], [ %add, %if.end17 ]
  %call46 = tail call ptr @transport_kmap_data_sg(ptr noundef %cmd) #15
  %tobool47.not = icmp eq ptr %call46, null
  br i1 %tobool47.not, label %out.if.end52_crit_edge, label %if.then48

out.if.end52_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end52

if.then48:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  %data_length = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 12
  %25 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data_length, align 4
  %27 = tail call i32 @llvm.umin.i32(i32 %26, i32 1024)
  %28 = call ptr @memcpy(ptr %call46, ptr %call7.i.i, i32 %27)
  tail call void @transport_kunmap_data_sg(ptr noundef %cmd) #15
  br label %if.end52

if.end52:                                         ; preds = %if.then48, %out.if.end52_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool53.not = icmp eq i32 %ret.0, 0
  br i1 %tobool53.not, label %if.then54, label %if.end52.cleanup_crit_edge

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then54:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @target_complete_cmd_with_length(ptr noundef %cmd, i8 noundef zeroext 0, i32 noundef %len.0) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then54, %if.end52.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 10, %do.end ], [ 0, %if.then54 ], [ %ret.0, %if.end52.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @target_do_xcopy(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @target_do_receive_copy_results(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spc_emulate_testunitready(ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @target_complete_cmd(ptr noundef %cmd, i8 noundef zeroext 0) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @target_emulate_report_target_port_groups(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @target_emulate_set_target_port_groups(ptr noundef) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_complete_cmd(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @spc_modesense_rwrecovery(ptr nocapture noundef readnone %cmd, i8 noundef zeroext %pc, ptr nocapture noundef writeonly %p) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %p, align 1
  %arrayidx1 = getelementptr i8, ptr %p, i32 1
  %1 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 10, ptr %arrayidx1, align 1
  ret i32 12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spc_modesense_caching(ptr nocapture noundef readonly %cmd, i8 noundef zeroext %pc, ptr nocapture noundef writeonly %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %se_dev = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 19
  %0 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_dev, align 4
  %2 = ptrtoint ptr %p to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 8, ptr %p, align 1
  %arrayidx1 = getelementptr i8, ptr %p, i32 1
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 18, ptr %arrayidx1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %pc)
  %cmp = icmp eq i8 %pc, 1
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %entry
  %call = tail call zeroext i1 @target_check_wce(ptr noundef %1) #15
  br i1 %call, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx4 = getelementptr i8, ptr %p, i32 2
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 4, ptr %arrayidx4, align 1
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %arrayidx6 = getelementptr i8, ptr %p, i32 12
  %5 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 32, ptr %arrayidx6, align 1
  br label %out

out:                                              ; preds = %if.end5, %entry.out_crit_edge
  ret i32 20
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spc_modesense_control(ptr nocapture noundef readonly %cmd, i8 noundef zeroext %pc, ptr nocapture noundef %p) #0 align 64 {
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
  %4 = ptrtoint ptr %p to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 10, ptr %p, align 1
  %arrayidx1 = getelementptr i8, ptr %p, i32 1
  %5 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 10, ptr %arrayidx1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %pc)
  %cmp = icmp eq i8 %pc, 1
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %entry
  %arrayidx3 = getelementptr i8, ptr %p, i32 2
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 2, ptr %arrayidx3, align 1
  %call = tail call zeroext i1 @target_sense_desc_format(ptr noundef %1) #15
  br i1 %call, label %if.then4, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx3, align 1
  %9 = or i8 %8, 4
  store i8 %9, ptr %arrayidx3, align 1
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end.if.end8_crit_edge
  %emulate_rest_reord = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 18
  %10 = ptrtoint ptr %emulate_rest_reord to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %emulate_rest_reord, align 8, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  %conv12 = select i1 %tobool.not, i8 16, i8 0
  %arrayidx13 = getelementptr i8, ptr %p, i32 3
  %12 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv12, ptr %arrayidx13, align 1
  %emulate_ua_intlck_ctrl = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 5
  %13 = ptrtoint ptr %emulate_ua_intlck_ctrl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %emulate_ua_intlck_ctrl, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %switch.selectcmp = icmp eq i32 %14, 1
  %switch.select = select i1 %switch.selectcmp, i8 32, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %switch.selectcmp58 = icmp eq i32 %14, 2
  %switch.select59 = select i1 %switch.selectcmp58, i8 48, i8 %switch.select
  %arrayidx18 = getelementptr i8, ptr %p, i32 4
  %15 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %switch.select59, ptr %arrayidx18, align 1
  %emulate_tas = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 6
  %16 = ptrtoint ptr %emulate_tas to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %emulate_tas, align 4, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool20.not = icmp eq i8 %17, 0
  %conv23 = select i1 %tobool20.not, i8 0, i8 64
  %arrayidx24 = getelementptr i8, ptr %p, i32 5
  %18 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv23, ptr %arrayidx24, align 1
  %sup_prot_ops = getelementptr inbounds %struct.se_session, ptr %3, i32 0, i32 2
  %19 = ptrtoint ptr %sup_prot_ops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sup_prot_ops, align 8
  %and = and i32 %20, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %if.end8.if.end36_crit_edge, label %if.then26

if.end8.if.end36_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36

if.then26:                                        ; preds = %if.end8
  %pi_prot_type = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 12
  %21 = ptrtoint ptr %pi_prot_type to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pi_prot_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool28.not = icmp eq i32 %22, 0
  br i1 %tobool28.not, label %lor.lhs.false, label %if.then26.if.then30_crit_edge

if.then26.if.then30_crit_edge:                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then30

lor.lhs.false:                                    ; preds = %if.then26
  %sess_prot_type = getelementptr inbounds %struct.se_session, ptr %3, i32 0, i32 3
  %23 = ptrtoint ptr %sess_prot_type to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sess_prot_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool29.not = icmp eq i32 %24, 0
  br i1 %tobool29.not, label %lor.lhs.false.if.end36_crit_edge, label %lor.lhs.false.if.then30_crit_edge

lor.lhs.false.if.then30_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then30

lor.lhs.false.if.end36_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36

if.then30:                                        ; preds = %lor.lhs.false.if.then30_crit_edge, %if.then26.if.then30_crit_edge
  %25 = or i8 %conv23, -128
  %26 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %arrayidx24, align 1
  br label %if.end36

if.end36:                                         ; preds = %if.then30, %lor.lhs.false.if.end36_crit_edge, %if.end8.if.end36_crit_edge
  %arrayidx37 = getelementptr i8, ptr %p, i32 8
  %27 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -1, ptr %arrayidx37, align 1
  %arrayidx38 = getelementptr i8, ptr %p, i32 9
  %28 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -1, ptr %arrayidx38, align 1
  %arrayidx39 = getelementptr i8, ptr %p, i32 11
  %29 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 30, ptr %arrayidx39, align 1
  br label %out

out:                                              ; preds = %if.end36, %entry.out_crit_edge
  ret i32 12
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @spc_modesense_informational_exceptions(ptr nocapture noundef readnone %cmd, i8 noundef zeroext %pc, ptr nocapture noundef writeonly %p) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 28, ptr %p, align 1
  %arrayidx1 = getelementptr i8, ptr %p, i32 1
  %1 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 10, ptr %arrayidx1, align 1
  ret i32 12
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @target_check_wce(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @target_sense_desc_format(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @target_lun_is_rdonly(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @target_check_fua(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @core_scsi3_ua_clear_for_request_sense(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_build_sense_buffer(i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spc_emulate_evpd_00(ptr nocapture noundef readonly %cmd, ptr nocapture noundef writeonly %buf) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %se_dev = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 19
  %0 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_dev, align 4
  %dev_flags = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev_flags, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx = getelementptr i8, ptr %buf, i32 3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 8, ptr %arrayidx, align 1
  %arrayidx2 = getelementptr i8, ptr %buf, i32 4
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx2, align 1
  %arrayidx2.1 = getelementptr i8, ptr %buf, i32 5
  %6 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -128, ptr %arrayidx2.1, align 1
  %arrayidx2.2 = getelementptr i8, ptr %buf, i32 6
  %7 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -125, ptr %arrayidx2.2, align 1
  %arrayidx2.3 = getelementptr i8, ptr %buf, i32 7
  %8 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -122, ptr %arrayidx2.3, align 1
  %arrayidx2.4 = getelementptr i8, ptr %buf, i32 8
  %9 = ptrtoint ptr %arrayidx2.4 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -80, ptr %arrayidx2.4, align 1
  %arrayidx2.5 = getelementptr i8, ptr %buf, i32 9
  %10 = ptrtoint ptr %arrayidx2.5 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -79, ptr %arrayidx2.5, align 1
  %arrayidx2.6 = getelementptr i8, ptr %buf, i32 10
  %11 = ptrtoint ptr %arrayidx2.6 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -78, ptr %arrayidx2.6, align 1
  %arrayidx2.7 = getelementptr i8, ptr %buf, i32 11
  %12 = ptrtoint ptr %arrayidx2.7 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -77, ptr %arrayidx2.7, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @spc_emulate_evpd_80(ptr nocapture noundef readonly %cmd, ptr noundef %buf) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %se_dev = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 19
  %0 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_dev, align 4
  %dev_flags = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev_flags, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx = getelementptr i8, ptr %buf, i32 4
  %unit_serial = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 36, i32 3
  %stpcpy = tail call ptr @stpcpy(ptr %arrayidx, ptr %unit_serial) #18
  %4 = ptrtoint ptr %stpcpy to i32
  %5 = trunc i32 %4 to i8
  %6 = ptrtoint ptr %arrayidx to i32
  %7 = trunc i32 %6 to i8
  %8 = sub i8 1, %7
  %inc = add i8 %8, %5
  %arrayidx2 = getelementptr i8, ptr %buf, i32 3
  %9 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %inc, ptr %arrayidx2, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spc_emulate_evpd_86(ptr nocapture noundef readonly %cmd, ptr nocapture noundef %buf) #0 align 64 {
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
  %arrayidx = getelementptr i8, ptr %buf, i32 3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 60, ptr %arrayidx, align 1
  %sup_prot_ops = getelementptr inbounds %struct.se_session, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %sup_prot_ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sup_prot_ops, align 8
  %and = and i32 %6, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %if.then

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.then:                                          ; preds = %entry
  %pi_prot_type = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 12
  %7 = ptrtoint ptr %pi_prot_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pi_prot_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp eq i32 %8, 1
  br i1 %cmp, label %if.then.if.end15.sink.split_crit_edge, label %lor.lhs.false

if.then.if.end15.sink.split_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split

lor.lhs.false:                                    ; preds = %if.then
  %9 = ptrtoint ptr %se_sess to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %se_sess, align 4
  %sess_prot_type = getelementptr inbounds %struct.se_session, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %sess_prot_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sess_prot_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp2 = icmp eq i32 %12, 1
  br i1 %cmp2, label %lor.lhs.false.if.end15.sink.split_crit_edge, label %if.else

lor.lhs.false.if.end15.sink.split_crit_edge:      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp7 = icmp eq i32 %8, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %cmp11 = icmp eq i32 %12, 3
  %or.cond = select i1 %cmp7, i1 true, i1 %cmp11
  br i1 %or.cond, label %if.else.if.end15.sink.split_crit_edge, label %if.else.if.end15_crit_edge

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.else.if.end15.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split

if.end15.sink.split:                              ; preds = %if.else.if.end15.sink.split_crit_edge, %lor.lhs.false.if.end15.sink.split_crit_edge, %if.then.if.end15.sink.split_crit_edge
  %.sink = phi i8 [ 5, %lor.lhs.false.if.end15.sink.split_crit_edge ], [ 5, %if.then.if.end15.sink.split_crit_edge ], [ 4, %if.else.if.end15.sink.split_crit_edge ]
  %arrayidx4 = getelementptr i8, ptr %buf, i32 4
  %13 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %.sink, ptr %arrayidx4, align 1
  br label %if.end15

if.end15:                                         ; preds = %if.end15.sink.split, %if.else.if.end15_crit_edge, %entry.if.end15_crit_edge
  %transport = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 46
  %14 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %transport, align 8
  %get_device_type = getelementptr inbounds %struct.target_backend_ops, ptr %15, i32 0, i32 19
  %16 = ptrtoint ptr %get_device_type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %get_device_type, align 4
  %call = tail call i32 %17(ptr noundef %1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp16 = icmp eq i32 %call, 0
  br i1 %cmp16, label %land.lhs.true, label %if.end15.if.end31_crit_edge

if.end15.if.end31_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31

land.lhs.true:                                    ; preds = %if.end15
  %18 = ptrtoint ptr %sup_prot_ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sup_prot_ops, align 8
  %and18 = and i32 %19, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %land.lhs.true.if.end31_crit_edge, label %land.lhs.true20

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31

land.lhs.true20:                                  ; preds = %land.lhs.true
  %pi_prot_type22 = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 12
  %20 = ptrtoint ptr %pi_prot_type22 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pi_prot_type22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool23.not = icmp eq i32 %21, 0
  br i1 %tobool23.not, label %lor.lhs.false24, label %land.lhs.true20.if.then28_crit_edge

land.lhs.true20.if.then28_crit_edge:              ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then28

lor.lhs.false24:                                  ; preds = %land.lhs.true20
  %22 = ptrtoint ptr %se_sess to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %se_sess, align 4
  %sess_prot_type26 = getelementptr inbounds %struct.se_session, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %sess_prot_type26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sess_prot_type26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool27.not = icmp eq i32 %25, 0
  br i1 %tobool27.not, label %lor.lhs.false24.if.end31_crit_edge, label %lor.lhs.false24.if.then28_crit_edge

lor.lhs.false24.if.then28_crit_edge:              ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then28

lor.lhs.false24.if.end31_crit_edge:               ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31

if.then28:                                        ; preds = %lor.lhs.false24.if.then28_crit_edge, %land.lhs.true20.if.then28_crit_edge
  %arrayidx29 = getelementptr i8, ptr %buf, i32 4
  %26 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx29, align 1
  %28 = or i8 %27, 24
  store i8 %28, ptr %arrayidx29, align 1
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %lor.lhs.false24.if.end31_crit_edge, %land.lhs.true.if.end31_crit_edge, %if.end15.if.end31_crit_edge
  %arrayidx32 = getelementptr i8, ptr %buf, i32 5
  %29 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 7, ptr %arrayidx32, align 1
  %call33 = tail call zeroext i1 @target_check_wce(ptr noundef %1) #15
  br i1 %call33, label %if.then34, label %if.end31.if.end36_crit_edge

if.end31.if.end36_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx35 = getelementptr i8, ptr %buf, i32 6
  %30 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %arrayidx35, align 1
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end31.if.end36_crit_edge
  %31 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %se_dev, align 4
  %lba_map_lock = getelementptr inbounds %struct.se_device, ptr %32, i32 0, i32 37, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lba_map_lock) #15
  %lba_map_list = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 37, i32 5
  %33 = ptrtoint ptr %lba_map_list to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %lba_map_list, align 4
  %cmp.i.not = icmp eq ptr %34, %lba_map_list
  br i1 %cmp.i.not, label %if.end36.if.end43_crit_edge, label %if.then41

if.end36.if.end43_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end43

if.then41:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx42 = getelementptr i8, ptr %buf, i32 8
  %35 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 16, ptr %arrayidx42, align 1
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end36.if.end43_crit_edge
  %36 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %se_dev, align 4
  %lba_map_lock46 = getelementptr inbounds %struct.se_device, ptr %37, i32 0, i32 37, i32 2
  tail call void @_raw_spin_unlock(ptr noundef %lba_map_lock46) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spc_emulate_evpd_b0(ptr nocapture noundef readonly %cmd, ptr nocapture noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %se_dev = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 19
  %0 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_dev, align 4
  %emulate_tpu = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 7
  %2 = ptrtoint ptr %emulate_tpu to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %emulate_tpu, align 1, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %emulate_tpws = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 8
  %4 = ptrtoint ptr %emulate_tpws to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %emulate_tpws, align 2, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %tobool3.not = phi i1 [ false, %if.then ], [ true, %lor.lhs.false.if.end_crit_edge ]
  %transport = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 46
  %6 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %transport, align 8
  %get_device_type = getelementptr inbounds %struct.target_backend_ops, ptr %7, i32 0, i32 19
  %8 = ptrtoint ptr %get_device_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_device_type, align 4
  %call = tail call i32 %9(ptr noundef %1) #15
  %conv = trunc i32 %call to i8
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %buf, align 1
  %spec.select = select i1 %tobool3.not, i8 16, i8 60
  %arrayidx5 = getelementptr i8, ptr %buf, i32 3
  %11 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %spec.select, ptr %arrayidx5, align 1
  %arrayidx6 = getelementptr i8, ptr %buf, i32 4
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %arrayidx6, align 1
  %emulate_caw = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 9
  %13 = ptrtoint ptr %emulate_caw to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %emulate_caw, align 1, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool8.not = icmp eq i8 %14, 0
  br i1 %tobool8.not, label %if.end.if.end11_crit_edge, label %if.then9

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx10 = getelementptr i8, ptr %buf, i32 5
  %15 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %arrayidx10, align 1
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end.if.end11_crit_edge
  %16 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %transport, align 8
  %get_io_min = getelementptr inbounds %struct.target_backend_ops, ptr %17, i32 0, i32 23
  %18 = ptrtoint ptr %get_io_min to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %get_io_min, align 4
  %tobool13.not = icmp eq ptr %19, null
  br i1 %tobool13.not, label %if.end11.if.end23_crit_edge, label %land.lhs.true

if.end11.if.end23_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

land.lhs.true:                                    ; preds = %if.end11
  %call16 = tail call i32 %19(ptr noundef %1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.lhs.true.if.end23_crit_edge, label %if.then18

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %block_size = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 21
  %20 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %block_size, align 8
  %div = udiv i32 %call16, %21
  %conv20 = trunc i32 %div to i16
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %land.lhs.true.if.end23_crit_edge, %if.end11.if.end23_crit_edge
  %.sink = phi i16 [ %conv20, %if.then18 ], [ 1, %land.lhs.true.if.end23_crit_edge ], [ 1, %if.end11.if.end23_crit_edge ]
  %arrayidx22 = getelementptr i8, ptr %buf, i32 6
  %22 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 2)
  store i16 %.sink, ptr %arrayidx22, align 1
  %se_tfo = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 26
  %23 = ptrtoint ptr %se_tfo to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %se_tfo, align 8
  %max_data_sg_nents = getelementptr inbounds %struct.target_core_fabric_ops, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %max_data_sg_nents to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max_data_sg_nents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool24.not = icmp eq i32 %26, 0
  br i1 %tobool24.not, label %if.end31.thread, label %if.end31

if.end31.thread:                                  ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  %hw_max_sectors136 = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 22
  %27 = ptrtoint ptr %hw_max_sectors136 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hw_max_sectors136, align 4
  br label %cond.end46

if.end31:                                         ; preds = %if.end23
  %mul = shl i32 %26, 12
  %block_size29 = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 21
  %29 = ptrtoint ptr %block_size29 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %block_size29, align 8
  %hw_max_sectors = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 22
  %31 = ptrtoint ptr %hw_max_sectors to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %hw_max_sectors, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %mul)
  %cmp = icmp ugt i32 %30, %mul
  br i1 %cmp, label %if.end31.cond.end46_crit_edge, label %cond.false

if.end31.cond.end46_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end46

cond.false:                                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  %div30 = udiv i32 %mul, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp34 = icmp eq i32 %32, 0
  %33 = tail call i32 @llvm.umin.i32(i32 %div30, i32 %32)
  %spec.select138 = select i1 %cmp34, i32 %div30, i32 %33
  br label %cond.end46

cond.end46:                                       ; preds = %cond.false, %if.end31.cond.end46_crit_edge, %if.end31.thread
  %cond47 = phi i32 [ %32, %if.end31.cond.end46_crit_edge ], [ %28, %if.end31.thread ], [ %spec.select138, %cond.false ]
  %arrayidx48 = getelementptr i8, ptr %buf, i32 8
  %34 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %cond47, ptr %arrayidx48, align 1
  %35 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %transport, align 8
  %get_io_opt = getelementptr inbounds %struct.target_backend_ops, ptr %36, i32 0, i32 24
  %37 = ptrtoint ptr %get_io_opt to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %get_io_opt, align 4
  %tobool50.not = icmp eq ptr %38, null
  br i1 %tobool50.not, label %cond.end46.if.else61_crit_edge, label %land.lhs.true51

cond.end46.if.else61_crit_edge:                   ; preds = %cond.end46
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else61

land.lhs.true51:                                  ; preds = %cond.end46
  %call54 = tail call i32 %38(ptr noundef %1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %land.lhs.true51.if.else61_crit_edge, label %if.then56

land.lhs.true51.if.else61_crit_edge:              ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else61

if.then56:                                        ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #17
  %block_size58 = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 21
  %39 = ptrtoint ptr %block_size58 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %block_size58, align 8
  %div59 = udiv i32 %call54, %40
  br label %if.end64

if.else61:                                        ; preds = %land.lhs.true51.if.else61_crit_edge, %cond.end46.if.else61_crit_edge
  %optimal_sectors = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 23
  %41 = ptrtoint ptr %optimal_sectors to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %optimal_sectors, align 8
  br label %if.end64

if.end64:                                         ; preds = %if.else61, %if.then56
  %.sink139 = phi i32 [ %42, %if.else61 ], [ %div59, %if.then56 ]
  %arrayidx63 = getelementptr i8, ptr %buf, i32 12
  %43 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 %.sink139, ptr %arrayidx63, align 1
  br i1 %tobool3.not, label %if.end64.max_write_same_crit_edge, label %if.end67

if.end64.max_write_same_crit_edge:                ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #17
  br label %max_write_same

if.end67:                                         ; preds = %if.end64
  %max_unmap_lba_count = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 26
  %44 = ptrtoint ptr %max_unmap_lba_count to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %max_unmap_lba_count, align 4
  %arrayidx69 = getelementptr i8, ptr %buf, i32 20
  %46 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_storeN_noabort(i32 %46, i32 4)
  store i32 %45, ptr %arrayidx69, align 1
  %max_unmap_block_desc_count = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 27
  %47 = ptrtoint ptr %max_unmap_block_desc_count to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %max_unmap_block_desc_count, align 8
  %arrayidx71 = getelementptr i8, ptr %buf, i32 24
  %49 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_storeN_noabort(i32 %49, i32 4)
  store i32 %48, ptr %arrayidx71, align 1
  %unmap_granularity = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 28
  %50 = ptrtoint ptr %unmap_granularity to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %unmap_granularity, align 4
  %arrayidx73 = getelementptr i8, ptr %buf, i32 28
  %52 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store i32 %51, ptr %arrayidx73, align 1
  %unmap_granularity_alignment = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 29
  %53 = ptrtoint ptr %unmap_granularity_alignment to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %unmap_granularity_alignment, align 8
  %arrayidx75 = getelementptr i8, ptr %buf, i32 32
  %55 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_storeN_noabort(i32 %55, i32 4)
  store i32 %54, ptr %arrayidx75, align 1
  %56 = load i32, ptr %unmap_granularity_alignment, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp78.not = icmp eq i32 %56, 0
  br i1 %cmp78.not, label %if.end67.max_write_same_crit_edge, label %if.then80

if.end67.max_write_same_crit_edge:                ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #17
  br label %max_write_same

if.then80:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #17
  %57 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx75, align 1
  %59 = or i8 %58, -128
  store i8 %59, ptr %arrayidx75, align 1
  br label %max_write_same

max_write_same:                                   ; preds = %if.then80, %if.end67.max_write_same_crit_edge, %if.end64.max_write_same_crit_edge
  %max_write_same_len = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 30
  %60 = ptrtoint ptr %max_write_same_len to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %max_write_same_len, align 4
  %conv86 = zext i32 %61 to i64
  %arrayidx87 = getelementptr i8, ptr %buf, i32 36
  %62 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_storeN_noabort(i32 %62, i32 8)
  store i64 %conv86, ptr %arrayidx87, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spc_emulate_evpd_b1(ptr nocapture noundef readonly %cmd, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %se_dev = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 19
  %0 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_dev, align 4
  %transport = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transport, align 8
  %get_device_type = getelementptr inbounds %struct.target_backend_ops, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %get_device_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_device_type, align 4
  %call = tail call i32 %5(ptr noundef %1) #15
  %conv = trunc i32 %call to i8
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %buf, align 1
  %arrayidx1 = getelementptr i8, ptr %buf, i32 3
  %7 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 60, ptr %arrayidx1, align 1
  %is_nonrot = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 17
  %8 = ptrtoint ptr %is_nonrot to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_nonrot, align 1, !range !78
  %arrayidx4 = getelementptr i8, ptr %buf, i32 5
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %arrayidx4, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spc_emulate_evpd_b2(ptr nocapture noundef readonly %cmd, ptr nocapture noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %se_dev = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 19
  %0 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_dev, align 4
  %transport = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transport, align 8
  %get_device_type = getelementptr inbounds %struct.target_backend_ops, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %get_device_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_device_type, align 4
  %call = tail call i32 %5(ptr noundef %1) #15
  %conv = trunc i32 %call to i8
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %buf, align 1
  %arrayidx1 = getelementptr i8, ptr %buf, i32 2
  %7 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 4, ptr %arrayidx1, align 1
  %arrayidx2 = getelementptr i8, ptr %buf, i32 4
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx2, align 1
  %emulate_tpu = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 7
  %9 = ptrtoint ptr %emulate_tpu to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %emulate_tpu, align 1, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx5 = getelementptr i8, ptr %buf, i32 5
  %11 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -128, ptr %arrayidx5, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %emulate_tpws = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 8
  %12 = ptrtoint ptr %emulate_tpws to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %emulate_tpws, align 2, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool7.not = icmp eq i8 %13, 0
  br i1 %tobool7.not, label %if.end.if.end15_crit_edge, label %if.then11

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx12 = getelementptr i8, ptr %buf, i32 5
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx12, align 1
  %16 = or i8 %15, 96
  store i8 %16, ptr %arrayidx12, align 1
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end.if.end15_crit_edge
  %17 = ptrtoint ptr %emulate_tpu to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %emulate_tpu, align 1, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool18.not = icmp eq i8 %18, 0
  br i1 %tobool18.not, label %lor.lhs.false, label %if.end15.land.lhs.true_crit_edge

if.end15.land.lhs.true_crit_edge:                 ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %if.end15
  %19 = ptrtoint ptr %emulate_tpws to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %emulate_tpws, align 2, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool24.not = icmp eq i8 %20, 0
  br i1 %tobool24.not, label %lor.lhs.false.if.end38_crit_edge, label %lor.lhs.false.land.lhs.true_crit_edge

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true

lor.lhs.false.if.end38_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end38

land.lhs.true:                                    ; preds = %lor.lhs.false.land.lhs.true_crit_edge, %if.end15.land.lhs.true_crit_edge
  %unmap_zeroes_data = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 19
  %21 = ptrtoint ptr %unmap_zeroes_data to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %unmap_zeroes_data, align 1, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool29.not = icmp eq i8 %22, 0
  br i1 %tobool29.not, label %land.lhs.true.if.end38_crit_edge, label %if.then33

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end38

if.then33:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx34 = getelementptr i8, ptr %buf, i32 5
  %23 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx34, align 1
  %25 = or i8 %24, 4
  store i8 %25, ptr %arrayidx34, align 1
  br label %if.end38

if.end38:                                         ; preds = %if.then33, %land.lhs.true.if.end38_crit_edge, %lor.lhs.false.if.end38_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spc_emulate_evpd_b3(ptr nocapture noundef readonly %cmd, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %se_dev = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 19
  %0 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_dev, align 4
  %transport = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transport, align 8
  %get_device_type = getelementptr inbounds %struct.target_backend_ops, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %get_device_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_device_type, align 4
  %call = tail call i32 %5(ptr noundef %1) #15
  %conv = trunc i32 %call to i8
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %buf, align 1
  %arrayidx1 = getelementptr i8, ptr %buf, i32 3
  %7 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 12, ptr %arrayidx1, align 1
  %lba_map_segment_size = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 37, i32 3
  %8 = ptrtoint ptr %lba_map_segment_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lba_map_segment_size, align 4
  %arrayidx2 = getelementptr i8, ptr %buf, i32 8
  %10 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %9, ptr %arrayidx2, align 1
  %lba_map_segment_multiplier = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 37, i32 4
  %11 = ptrtoint ptr %lba_map_segment_multiplier to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %lba_map_segment_multiplier, align 8
  %arrayidx4 = getelementptr i8, ptr %buf, i32 12
  %13 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %12, ptr %arrayidx4, align 1
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: argmemonly nofree nounwind willreturn
declare ptr @stpcpy(ptr noalias writeonly, ptr noalias nocapture readonly) local_unnamed_addr #13

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { argmemonly nofree nounwind willreturn }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { nobuiltin }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !10, !12, !14, !16, !17, !19, !21, !23, !25, !26, !27, !28, !30, !31, !32, !34, !35, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64}
!llvm.named.register.sp = !{!66}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @__ksymtab_spc_emulate_inquiry_std, !1, !"__ksymtab_spc_emulate_inquiry_std", i1 false, i1 false}
!1 = !{!"../drivers/target/target_core_spc.c", i32 147, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/target/target_core_spc.c", i32 273, i32 35}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../drivers/target/target_core_spc.c", i32 329, i32 14}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/target/target_core_spc.c", i32 400, i32 38}
!10 = distinct !{null, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/target/target_core_spc.c", i32 439, i32 40}
!12 = !{ptr @__ksymtab_spc_emulate_evpd_83, !13, !"__ksymtab_spc_emulate_evpd_83", i1 false, i1 false}
!13 = !{!"../drivers/target/target_core_spc.c", i32 465, i32 1}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../drivers/target/target_core_spc.c", i32 1261, i32 2}
!16 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @__ksymtab_spc_emulate_report_luns, !18, !"__ksymtab_spc_emulate_report_luns", i1 false, i1 false}
!18 = !{!"../drivers/target/target_core_spc.c", i32 1302, i32 1}
!19 = !{ptr @__ksymtab_spc_parse_cdb, !20, !"__ksymtab_spc_parse_cdb", i1 false, i1 false}
!20 = !{!"../drivers/target/target_core_spc.c", i32 1468, i32 1}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../drivers/target/target_core_spc.c", i32 44, i32 13}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/target/target_core_spc.c", i32 65, i32 3}
!25 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @spc_find_scsi_transport_vd._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @spc_find_scsi_transport_vd._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!30 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!34 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @modesense_handlers, !36, !"modesense_handlers", i1 false, i1 false}
!36 = !{!"../drivers/target/target_core_spc.c", i32 960, i32 3}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/target/target_core_spc.c", i32 1087, i32 4}
!39 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @spc_emulate_modesense._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @spc_emulate_modesense._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/target/target_core_spc.c", i32 1121, i32 3}
!44 = !{ptr @spc_emulate_modesense._entry.13, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @spc_emulate_modesense._entry_ptr.15, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/target/target_core_spc.c", i32 1214, i32 3}
!48 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @spc_emulate_request_sense._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @spc_emulate_request_sense._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/target/target_core_spc.c", i32 744, i32 3}
!53 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @spc_emulate_inquiry._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @spc_emulate_inquiry._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/target/target_core_spc.c", i32 752, i32 4}
!58 = !{ptr @spc_emulate_inquiry._entry.20, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @spc_emulate_inquiry._entry_ptr.22, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/target/target_core_spc.c", i32 772, i32 2}
!62 = !{ptr @spc_emulate_inquiry._entry.23, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @spc_emulate_inquiry._entry_ptr.25, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @evpd_handlers, !65, !"evpd_handlers", i1 false, i1 false}
!65 = !{!"../drivers/target/target_core_spc.c", i32 700, i32 3}
!66 = !{!"sp"}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{i64 2149394375}
!77 = !{i64 2149394641}
!78 = !{i8 0, i8 2}
