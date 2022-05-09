; ModuleID = '/llk/IR_all_yes/drivers/target/target_core_alua.c_pt.bc'
source_filename = "../drivers/target/target_core_alua.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+core_alua_check_nonop_delay\22, \22a\22\09"
module asm "\09.weak\09__crc_core_alua_check_nonop_delay\09\09\09\09"
module asm "\09.long\09__crc_core_alua_check_nonop_delay\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_core_alua_check_nonop_delay:\09\09\09\09\09"
module asm "\09.asciz \09\22core_alua_check_nonop_delay\22\09\09\09\09\09"
module asm "__kstrtabns_core_alua_check_nonop_delay:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.se_cmd = type { i32, i8, i16, i8, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.llist_node, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i64, i32, i32, %struct.spinlock, %struct.kref, %struct.completion, %struct.work_struct, ptr, ptr, i32, i32, ptr, ptr, i32, i32, %struct.list_head, ptr, i32, i32, i8, i8, i32, i32, ptr, i32, i32, i64, i32 }
%struct.llist_node = type { ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.se_device = type { i16, i32, i32, i8, i32, i64, i32, i64, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i8, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.spinlock, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.semaphore, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.list_head, ptr, %struct.t10_wwn, %struct.t10_alua, %struct.t10_reservation, %struct.se_dev_attrib, %struct.config_group, %struct.config_group, %struct.config_group, %struct.se_dev_stat_grps, [512 x i8], [512 x i8], ptr, %struct.se_lun, i32, i32, %struct.callback_head, i32, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.t10_wwn = type { [9 x i8], [17 x i8], [5 x i8], [254 x i8], i32, %struct.spinlock, ptr, %struct.config_group, %struct.list_head }
%struct.t10_alua = type { i16, i32, %struct.spinlock, i32, i32, %struct.list_head, %struct.spinlock, ptr, ptr, %struct.config_group, %struct.list_head }
%struct.t10_reservation = type { i32, i32, i32, %struct.spinlock, %struct.spinlock, ptr, %struct.list_head, %struct.list_head }
%struct.se_dev_attrib = type { i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.config_group }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.se_dev_stat_grps = type { %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group }
%struct.se_lun = type { i64, i8, i8, i32, i16, %struct.atomic_t, ptr, %struct.list_head, %struct.spinlock, i32, i32, %struct.atomic_t, %struct.mutex, %struct.list_head, ptr, %struct.spinlock, ptr, %struct.scsi_port_stats, %struct.config_group, %struct.se_port_stat_grps, %struct.completion, %struct.percpu_ref, %struct.list_head, %struct.hlist_node, %struct.callback_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.scsi_port_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.se_port_stat_grps = type { %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group }
%struct.percpu_ref = type { i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.t10_alua_lba_map_member = type { %struct.list_head, i32, i32 }
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
%struct.t10_alua_lu_gp = type { i16, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.config_group, %struct.list_head, %struct.list_head }
%struct.se_portal_group = type { i32, i8, %struct.atomic_t, %struct.mutex, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.hlist_head, ptr, %struct.list_head, ptr, ptr, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group }
%struct.hlist_head = type { ptr }
%struct.target_core_fabric_ops = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.se_hba = type { i16, i32, i32, i32, i32, ptr, %struct.list_head, %struct.spinlock, %struct.config_group, %struct.mutex, ptr }
%struct.t10_alua_lba_map = type { i64, i64, %struct.list_head, %struct.list_head }
%struct.se_lun_acl = type { i64, ptr, ptr, %struct.config_group, %struct.se_ml_stat_grps }
%struct.se_ml_stat_grps = type { %struct.config_group, %struct.config_group, %struct.config_group }
%struct.percpu_ref_data = type { %struct.atomic_t, ptr, ptr, i8, %struct.callback_head, ptr }

@target_emulate_report_referrals._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 66, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014REPORT REFERRALS allocation length %u too small\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"target_emulate_report_referrals\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/target/target_core_alua.c\00", [62 x i8] zeroinitializer }, align 32
@target_emulate_report_referrals._entry_ptr = internal global ptr @target_emulate_report_referrals._entry, section ".printk_index", align 4
@target_emulate_report_target_port_groups._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\014REPORT TARGET PORT GROUPS allocation length %u too small for %s header\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"target_emulate_report_target_port_groups\00", [55 x i8] zeroinitializer }, align 32
@target_emulate_report_target_port_groups._entry_ptr = internal global ptr @target_emulate_report_target_port_groups._entry, section ".printk_index", align 4
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"extended\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"normal\00", [25 x i8] zeroinitializer }, align 32
@target_emulate_report_target_port_groups.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@target_emulate_set_target_port_groups._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 283, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\014SET TARGET PORT GROUPS parameter list length %u too small\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"target_emulate_set_target_port_groups\00", [58 x i8] zeroinitializer }, align 32
@target_emulate_set_target_port_groups._entry_ptr = internal global ptr @target_emulate_set_target_port_groups._entry, section ".printk_index", align 4
@target_emulate_set_target_port_groups.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@target_emulate_set_target_port_groups._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 299, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013Unable to access l_lun->tg_pt_gp\0A\00", [60 x i8] zeroinitializer }, align 32
@target_emulate_set_target_port_groups._entry_ptr.12 = internal global ptr @target_emulate_set_target_port_groups._entry.10, section ".printk_index", align 4
@target_emulate_set_target_port_groups.__UNIQUE_ID_ddebug210 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.9, ptr @.str.2, ptr @.str.14, i8 0, i8 76, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"target_core_mod\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"Unable to process SET_TARGET_PORT_GROUPS while TPGS_EXPLICIT_ALUA is disabled\0A\00", [49 x i8] zeroinitializer }, align 32
@target_alua_state_check.__UNIQUE_ID_ddebug211 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 -91, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"target_alua_state_check\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"ALUA: Got secondary offline status for local target port\0A\00", [38 x i8] zeroinitializer }, align 32
@target_alua_state_check.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@target_alua_state_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 708, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013Unknown ALUA access state: 0x%02x\0A\00", [59 x i8] zeroinitializer }, align 32
@target_alua_state_check._entry_ptr = internal global ptr @target_alua_state_check._entry, section ".printk_index", align 4
@target_alua_state_check.__UNIQUE_ID_ddebug214 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.15, ptr @.str.2, ptr @.str.18, i8 0, i8 -78, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"[%s]: ALUA TG Port not available, SenseKey: NOT_READY, ASC/rc: 0x04/%d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"None\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Altered by Explicit STPG\00", [39 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Altered by Implicit ALUA\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@__kstrtab_core_alua_check_nonop_delay = external dso_local constant [0 x i8], align 1
@__kstrtabns_core_alua_check_nonop_delay = external dso_local constant [0 x i8], align 1
@__ksymtab_core_alua_check_nonop_delay = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @core_alua_check_nonop_delay to i32), ptr @__kstrtab_core_alua_check_nonop_delay, ptr @__kstrtabns_core_alua_check_nonop_delay }, section "___ksymtab+core_alua_check_nonop_delay", align 4
@core_alua_do_port_transition.__UNIQUE_ID_ddebug218 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 1, i8 34, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"core_alua_do_port_transition\00", [35 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [102 x i8], [58 x i8] } { [102 x i8] c"Successfully processed LU Group: %s all ALUA TG PT Group IDs: %hu %s transition to primary state: %s\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"explicit\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"implicit\00", [23 x i8] zeroinitializer }, align 32
@t10_alua_lba_map_cache = external dso_local local_unnamed_addr global ptr, align 4
@core_alua_allocate_lba_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 1274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013Unable to allocate struct t10_alua_lba_map\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"core_alua_allocate_lba_map\00", [37 x i8] zeroinitializer }, align 32
@core_alua_allocate_lba_map._entry_ptr = internal global ptr @core_alua_allocate_lba_map._entry, section ".printk_index", align 4
@core_alua_allocate_lba_map_mem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 1294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013Duplicate pg_id %d in lba_map\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"core_alua_allocate_lba_map_mem\00", [33 x i8] zeroinitializer }, align 32
@core_alua_allocate_lba_map_mem._entry_ptr = internal global ptr @core_alua_allocate_lba_map_mem._entry, section ".printk_index", align 4
@t10_alua_lba_map_mem_cache = external dso_local local_unnamed_addr global ptr, align 4
@core_alua_allocate_lba_map_mem._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.2, i32 1301, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013Unable to allocate struct t10_alua_lba_map_mem\0A\00", [46 x i8] zeroinitializer }, align 32
@core_alua_allocate_lba_map_mem._entry_ptr.33 = internal global ptr @core_alua_allocate_lba_map_mem._entry.31, section ".printk_index", align 4
@t10_alua_lu_gp_cache = external dso_local local_unnamed_addr global ptr, align 4
@core_alua_allocate_lu_gp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 1374, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013Unable to allocate struct t10_alua_lu_gp\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"core_alua_allocate_lu_gp\00", [39 x i8] zeroinitializer }, align 32
@core_alua_allocate_lu_gp._entry_ptr = internal global ptr @core_alua_allocate_lu_gp._entry, section ".printk_index", align 4
@core_alua_allocate_lu_gp.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&lu_gp->lu_gp_lock\00", [45 x i8] zeroinitializer }, align 32
@alua_lu_gps_counter = internal global { i16, [30 x i8] } zeroinitializer, align 32
@alua_lu_gps_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@core_alua_set_lu_gp_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 1400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014ALUA LU Group already has a valid ID, ignoring request\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"core_alua_set_lu_gp_id\00", [41 x i8] zeroinitializer }, align 32
@core_alua_set_lu_gp_id._entry_ptr = internal global ptr @core_alua_set_lu_gp_id._entry, section ".printk_index", align 4
@lu_gps_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.148, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@core_alua_set_lu_gp_id._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.2, i32 1407, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013Maximum ALUA alua_lu_gps_count: 0x0000ffff reached\0A\00", [42 x i8] zeroinitializer }, align 32
@core_alua_set_lu_gp_id._entry_ptr.41 = internal global ptr @core_alua_set_lu_gp_id._entry.39, section ".printk_index", align 4
@lu_gps_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @lu_gps_list, ptr @lu_gps_list }, [24 x i8] zeroinitializer }, align 32
@core_alua_set_lu_gp_id._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.38, ptr @.str.2, i32 1423, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\014ALUA Logical Unit Group ID: %hu already exists, ignoring request\0A\00", [60 x i8] zeroinitializer }, align 32
@core_alua_set_lu_gp_id._entry_ptr.44 = internal global ptr @core_alua_set_lu_gp_id._entry.42, section ".printk_index", align 4
@default_lu_gp = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@t10_alua_lu_gp_mem_cache = external dso_local local_unnamed_addr global ptr, align 4
@t10_alua_tg_pt_gp_cache = external dso_local local_unnamed_addr global ptr, align 4
@core_alua_allocate_tg_pt_gp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 1611, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013Unable to allocate struct t10_alua_tg_pt_gp\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"core_alua_allocate_tg_pt_gp\00", [36 x i8] zeroinitializer }, align 32
@core_alua_allocate_tg_pt_gp._entry_ptr = internal global ptr @core_alua_allocate_tg_pt_gp._entry, section ".printk_index", align 4
@core_alua_allocate_tg_pt_gp.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.47 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"&tg_pt_gp->tg_pt_gp_transition_mutex\00", [59 x i8] zeroinitializer }, align 32
@core_alua_allocate_tg_pt_gp.__key.48 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&tg_pt_gp->tg_pt_gp_lock\00", [39 x i8] zeroinitializer }, align 32
@core_alua_set_tg_pt_gp_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 1668, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\014ALUA TG PT Group already has a valid ID, ignoring request\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"core_alua_set_tg_pt_gp_id\00", [38 x i8] zeroinitializer }, align 32
@core_alua_set_tg_pt_gp_id._entry_ptr = internal global ptr @core_alua_set_tg_pt_gp_id._entry, section ".printk_index", align 4
@core_alua_set_tg_pt_gp_id._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.2, i32 1675, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013Maximum ALUA alua_tg_pt_gps_count: 0x0000ffff reached\0A\00", [39 x i8] zeroinitializer }, align 32
@core_alua_set_tg_pt_gp_id._entry_ptr.54 = internal global ptr @core_alua_set_tg_pt_gp_id._entry.52, section ".printk_index", align 4
@core_alua_set_tg_pt_gp_id._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.51, ptr @.str.2, i32 1690, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013ALUA Target Port Group ID: %hu already exists, ignoring request\0A\00", [61 x i8] zeroinitializer }, align 32
@core_alua_set_tg_pt_gp_id._entry_ptr.57 = internal global ptr @core_alua_set_tg_pt_gp_id._entry.55, section ".printk_index", align 4
@target_detach_tg_pt_gp.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@core_alua_show_tg_pt_gp_info.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.58 = internal constant { [179 x i8], [45 x i8] } { [179 x i8] c"TG Port Alias: %s\0ATG Port Group ID: %hu\0ATG Port Primary Access State: %s\0ATG Port Primary Access Status: %s\0ATG Port Secondary Access State: %s\0ATG Port Secondary Access Status: %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Offline\00", [24 x i8] zeroinitializer }, align 32
@core_alua_store_tg_pt_gp_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.2, i32 1914, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013ALUA Target Port Group alias too large!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"core_alua_store_tg_pt_gp_info\00", [34 x i8] zeroinitializer }, align 32
@core_alua_store_tg_pt_gp_info._entry_ptr = internal global ptr @core_alua_store_tg_pt_gp_info._entry, section ".printk_index", align 4
@.str.62 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NULL\00", [27 x i8] zeroinitializer }, align 32
@core_alua_store_tg_pt_gp_info.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@core_alua_store_tg_pt_gp_info.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.61, ptr @.str.2, ptr @.str.63, i8 1, i8 -24, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [116 x i8], [44 x i8] } { [116 x i8] c"Target_Core_ConfigFS: Moving %s/tpgt_%hu/%s from ALUA Target Port Group: alua/%s, ID: %hu back to default_tg_pt_gp\0A\00", [44 x i8] zeroinitializer }, align 32
@core_alua_store_tg_pt_gp_info.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.61, ptr @.str.2, ptr @.str.64, i8 1, i8 -19, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"Target_Core_ConfigFS: %s %s/tpgt_%hu/%s to ALUA Target Port Group: alua/%s, ID: %hu\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Moving\00", [25 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Adding\00", [25 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Implicit and Explicit\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Implicit\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Explicit\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"None\0A\00", [26 x i8] zeroinitializer }, align 32
@core_alua_store_access_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.2, i32 2005, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013Unable to extract alua_access_type\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"core_alua_store_access_type\00", [36 x i8] zeroinitializer }, align 32
@core_alua_store_access_type._entry_ptr = internal global ptr @core_alua_store_access_type._entry, section ".printk_index", align 4
@core_alua_store_access_type._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.2, i32 2010, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013Illegal value for alua_access_type: %lu\0A\00", [53 x i8] zeroinitializer }, align 32
@core_alua_store_access_type._entry_ptr.75 = internal global ptr @core_alua_store_access_type._entry.73, section ".printk_index", align 4
@.str.76 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@core_alua_store_nonop_delay_msecs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.2, i32 2043, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013Unable to extract nonop_delay_msecs\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"core_alua_store_nonop_delay_msecs\00", [62 x i8] zeroinitializer }, align 32
@core_alua_store_nonop_delay_msecs._entry_ptr = internal global ptr @core_alua_store_nonop_delay_msecs._entry, section ".printk_index", align 4
@core_alua_store_nonop_delay_msecs._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.2, i32 2049, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\013Passed nonop_delay_msecs: %lu, exceeds ALUA_MAX_NONOP_DELAY_MSECS: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@core_alua_store_nonop_delay_msecs._entry_ptr.81 = internal global ptr @core_alua_store_nonop_delay_msecs._entry.79, section ".printk_index", align 4
@core_alua_store_trans_delay_msecs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.2, i32 2074, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013Unable to extract trans_delay_msecs\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"core_alua_store_trans_delay_msecs\00", [62 x i8] zeroinitializer }, align 32
@core_alua_store_trans_delay_msecs._entry_ptr = internal global ptr @core_alua_store_trans_delay_msecs._entry, section ".printk_index", align 4
@core_alua_store_trans_delay_msecs._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.2, i32 2080, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\013Passed trans_delay_msecs: %lu, exceeds ALUA_MAX_TRANS_DELAY_MSECS: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@core_alua_store_trans_delay_msecs._entry_ptr.86 = internal global ptr @core_alua_store_trans_delay_msecs._entry.84, section ".printk_index", align 4
@core_alua_store_implicit_trans_secs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.2, i32 2105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013Unable to extract implicit_trans_secs\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"core_alua_store_implicit_trans_secs\00", [60 x i8] zeroinitializer }, align 32
@core_alua_store_implicit_trans_secs._entry_ptr = internal global ptr @core_alua_store_implicit_trans_secs._entry, section ".printk_index", align 4
@core_alua_store_implicit_trans_secs._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.88, ptr @.str.2, i32 2111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\013Passed implicit_trans_secs: %lu, exceeds ALUA_MAX_IMPLICIT_TRANS_SECS: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@core_alua_store_implicit_trans_secs._entry_ptr.91 = internal global ptr @core_alua_store_implicit_trans_secs._entry.89, section ".printk_index", align 4
@core_alua_store_preferred_bit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.2, i32 2136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013Unable to extract preferred ALUA value\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"core_alua_store_preferred_bit\00", [34 x i8] zeroinitializer }, align 32
@core_alua_store_preferred_bit._entry_ptr = internal global ptr @core_alua_store_preferred_bit._entry, section ".printk_index", align 4
@core_alua_store_preferred_bit._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.93, ptr @.str.2, i32 2140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013Illegal value for preferred ALUA: %lu\0A\00", [55 x i8] zeroinitializer }, align 32
@core_alua_store_preferred_bit._entry_ptr.96 = internal global ptr @core_alua_store_preferred_bit._entry.94, section ".printk_index", align 4
@core_alua_store_offline_bit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.2, i32 2173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013Unable to extract alua_tg_pt_offline value\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"core_alua_store_offline_bit\00", [36 x i8] zeroinitializer }, align 32
@core_alua_store_offline_bit._entry_ptr = internal global ptr @core_alua_store_offline_bit._entry, section ".printk_index", align 4
@core_alua_store_offline_bit._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.98, ptr @.str.2, i32 2178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013Illegal value for alua_tg_pt_offline: %lu\0A\00", [51 x i8] zeroinitializer }, align 32
@core_alua_store_offline_bit._entry_ptr.101 = internal global ptr @core_alua_store_offline_bit._entry.99, section ".printk_index", align 4
@core_alua_store_secondary_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.2, i32 2206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013Unable to extract alua_tg_pt_status\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"core_alua_store_secondary_status\00", [63 x i8] zeroinitializer }, align 32
@core_alua_store_secondary_status._entry_ptr = internal global ptr @core_alua_store_secondary_status._entry, section ".printk_index", align 4
@core_alua_store_secondary_status._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.103, ptr @.str.2, i32 2213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013Illegal value for alua_tg_pt_status: %lu\0A\00", [52 x i8] zeroinitializer }, align 32
@core_alua_store_secondary_status._entry_ptr.106 = internal global ptr @core_alua_store_secondary_status._entry.104, section ".printk_index", align 4
@core_alua_store_secondary_write_metadata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.108, ptr @.str.2, i32 2238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013Unable to extract alua_tg_pt_write_md\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"core_alua_store_secondary_write_metadata\00", [55 x i8] zeroinitializer }, align 32
@core_alua_store_secondary_write_metadata._entry_ptr = internal global ptr @core_alua_store_secondary_write_metadata._entry, section ".printk_index", align 4
@core_alua_store_secondary_write_metadata._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.108, ptr @.str.2, i32 2243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013Illegal value for alua_tg_pt_write_md: %lu\0A\00", [50 x i8] zeroinitializer }, align 32
@core_alua_store_secondary_write_metadata._entry_ptr.111 = internal global ptr @core_alua_store_secondary_write_metadata._entry.109, section ".printk_index", align 4
@core_setup_alua.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.112, ptr @.str.2, ptr @.str.113, i8 2, i8 56, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"core_setup_alua\00", [16 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"%s: Adding to default ALUA LU Group: core/alua/lu_gps/default_lu_gp\0A\00", [59 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.114 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.116 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@core_alua_check_transition._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.117, ptr @.str.2, i32 776, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"core_alua_check_transition\00", [37 x i8] zeroinitializer }, align 32
@core_alua_check_transition._entry_ptr = internal global ptr @core_alua_check_transition._entry, section ".printk_index", align 4
@core_alua_check_transition._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.117, ptr @.str.2, i32 784, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013ALUA access state %s not supported\00", [59 x i8] zeroinitializer }, align 32
@core_alua_check_transition._entry_ptr.120 = internal global ptr @core_alua_check_transition._entry.118, section ".printk_index", align 4
@core_alua_do_transition_tg_pt.__UNIQUE_ID_ddebug217 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.121, ptr @.str.2, ptr @.str.122, i8 1, i8 4, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.121 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"core_alua_do_transition_tg_pt\00", [34 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"Successful %s ALUA transition TG PT Group: %s ID: %hu from primary access state %s to %s\0A\00", [38 x i8] zeroinitializer }, align 32
@core_alua_queue_state_change_ua.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@percpu_ref_tryget_live_rcu.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.123 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"include/linux/percpu-refcount.h\00", [32 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@core_alua_update_tpg_primary_metadata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.125, ptr @.str.2, i32 884, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013Unable to allocate buf for ALUA metadata\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"core_alua_update_tpg_primary_metadata\00", [58 x i8] zeroinitializer }, align 32
@core_alua_update_tpg_primary_metadata._entry_ptr = internal global ptr @core_alua_update_tpg_primary_metadata._entry, section ".printk_index", align 4
@.str.126 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"tg_pt_gp_id=%hu\0Aalua_access_state=0x%02x\0Aalua_access_status=0x%02x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s/alua/tpgs_%s/%s\00", [45 x i8] zeroinitializer }, align 32
@db_root = external dso_local global [0 x i8], align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@core_alua_write_tpg_metadata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.129, ptr @.str.2, i32 862, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013filp_open(%s) for ALUA metadata failed\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"core_alua_write_tpg_metadata\00", [35 x i8] zeroinitializer }, align 32
@core_alua_write_tpg_metadata._entry_ptr = internal global ptr @core_alua_write_tpg_metadata._entry, section ".printk_index", align 4
@core_alua_write_tpg_metadata._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.129, ptr @.str.2, i32 867, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013Error writing ALUA metadata file: %s\0A\00", [56 x i8] zeroinitializer }, align 32
@core_alua_write_tpg_metadata._entry_ptr.132 = internal global ptr @core_alua_write_tpg_metadata._entry.130, section ".printk_index", align 4
@.str.133 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Active/Optimized\00", [47 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Active/NonOptimized\00", [44 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"LBA Dependent\00", [18 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Standby\00", [24 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Unavailable\00", [20 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Transitioning\00", [18 x i8] zeroinitializer }, align 32
@core_alua_set_tg_pt_secondary_state.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@core_alua_set_tg_pt_secondary_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str.2, i32 1227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013Unable to complete secondary state transition\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"core_alua_set_tg_pt_secondary_state\00", [60 x i8] zeroinitializer }, align 32
@core_alua_set_tg_pt_secondary_state._entry_ptr = internal global ptr @core_alua_set_tg_pt_secondary_state._entry, section ".printk_index", align 4
@core_alua_set_tg_pt_secondary_state.__UNIQUE_ID_ddebug221 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.140, ptr @.str.2, ptr @.str.141, i8 1, i8 55, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.141 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"Successful %s ALUA transition TG PT Group: %s ID: %hu to secondary access state: %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"OFFLINE\00", [24 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ONLINE\00", [25 x i8] zeroinitializer }, align 32
@core_alua_update_tpg_secondary_metadata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.144, ptr @.str.2, i32 1178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"core_alua_update_tpg_secondary_metadata\00", [56 x i8] zeroinitializer }, align 32
@core_alua_update_tpg_secondary_metadata._entry_ptr = internal global ptr @core_alua_update_tpg_secondary_metadata._entry, section ".printk_index", align 4
@.str.145 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"alua_tg_pt_offline=%d\0Aalua_tg_pt_status=0x%02x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s/alua/%s/%s+%hu/lun_%llu\00", [37 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s/alua/%s/%s/lun_%llu\00", [41 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lu_gps_lock\00", [20 x i8] zeroinitializer }, align 32
@core_alua_allocate_lu_gp_mem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.150, ptr @.str.2, i32 1445, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013Unable to allocate struct t10_alua_lu_gp_member\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"core_alua_allocate_lu_gp_mem\00", [35 x i8] zeroinitializer }, align 32
@core_alua_allocate_lu_gp_mem._entry_ptr = internal global ptr @core_alua_allocate_lu_gp_mem._entry, section ".printk_index", align 4
@core_alua_allocate_lu_gp_mem.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.151 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&lu_gp_mem->lu_gp_mem_lock\00", [37 x i8] zeroinitializer }, align 32
@switch.table.core_alua_do_port_transition = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.133, ptr @.str.134, ptr @.str.136, ptr @.str.137, ptr @.str.135, ptr @.str.22, ptr @.str.22, ptr @.str.22, ptr @.str.22, ptr @.str.22, ptr @.str.22, ptr @.str.22, ptr @.str.22, ptr @.str.22, ptr @.str.59, ptr @.str.138], [32 x i8] zeroinitializer }, align 32
@switch.table.core_alua_dump_status = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.19, ptr @.str.20, ptr @.str.21], [20 x i8] zeroinitializer }, align 32
@switch.table.core_alua_do_transition_tg_pt = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.133, ptr @.str.134, ptr @.str.136, ptr @.str.137, ptr @.str.135, ptr @.str.22, ptr @.str.22, ptr @.str.22, ptr @.str.22, ptr @.str.22, ptr @.str.22, ptr @.str.22, ptr @.str.22, ptr @.str.22, ptr @.str.59, ptr @.str.138], [32 x i8] zeroinitializer }, align 32
@switch.table.core_alua_do_transition_tg_pt.152 = internal constant { [15 x ptr], [36 x i8] } { [15 x ptr] [ptr @.str.133, ptr @.str.134, ptr @.str.136, ptr @.str.137, ptr @.str.135, ptr @.str.22, ptr @.str.22, ptr @.str.22, ptr @.str.22, ptr @.str.22, ptr @.str.22, ptr @.str.22, ptr @.str.22, ptr @.str.22, ptr @.str.59], [36 x i8] zeroinitializer }, align 32
@switch.table.core_alua_show_tg_pt_gp_info = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.133, ptr @.str.134, ptr @.str.136, ptr @.str.137, ptr @.str.135, ptr @.str.22, ptr @.str.22, ptr @.str.22, ptr @.str.22, ptr @.str.22, ptr @.str.22, ptr @.str.22, ptr @.str.22, ptr @.str.22, ptr @.str.59, ptr @.str.138], [32 x i8] zeroinitializer }, align 32
@switch.table.core_alua_show_tg_pt_gp_info.153 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.19, ptr @.str.20, ptr @.str.21], [20 x i8] zeroinitializer }, align 32
@switch.table.core_alua_show_tg_pt_gp_info.154 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.19, ptr @.str.20, ptr @.str.21], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 14, i64 15]
@__sancov_gen_cov_switch_values.155 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 15]
@__sancov_gen_cov_switch_values.156 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 8]
@__sancov_gen_cov_switch_values.157 = internal global [19 x i64] [i64 17, i64 8, i64 3, i64 18, i64 21, i64 26, i64 28, i64 29, i64 37, i64 59, i64 60, i64 76, i64 77, i64 94, i64 95, i64 158, i64 160, i64 163, i64 164]
@__sancov_gen_cov_switch_values.158 = internal global [9 x i64] [i64 7, i64 8, i64 3, i64 18, i64 59, i64 60, i64 160, i64 163, i64 164]
@__sancov_gen_cov_switch_values.159 = internal global [8 x i64] [i64 6, i64 8, i64 3, i64 18, i64 59, i64 60, i64 160, i64 163]
@__sancov_gen_cov_switch_values.160 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.161 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 65, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 155, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 251, i32 14 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 282, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 299, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 306, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 661, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 707, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 713, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 816, i32 10 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 818, i32 10 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 820, i32 10 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 822, i32 10 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 1155, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 1274, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 1294, i32 4 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 1301, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 1374, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 1379, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant [20 x i8] c"alua_lu_gps_counter\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 42, i32 12 }
@___asan_gen_.294 = private unnamed_addr constant [18 x i8] c"alua_lu_gps_count\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 43, i32 12 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 1399, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant [12 x i8] c"lu_gps_lock\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 1406, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant [12 x i8] c"lu_gps_list\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 46, i32 8 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 1421, i32 4 }
@___asan_gen_.324 = private unnamed_addr constant [14 x i8] c"default_lu_gp\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 48, i32 24 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 1611, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 1616, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 1617, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 1667, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 1674, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 1689, i32 4 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 1876, i32 24 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 1886, i32 4 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 1914, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 1923, i32 28 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 1944, i32 4 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 1966, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 1986, i32 24 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 1988, i32 24 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 1990, i32 24 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 1992, i32 24 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 2005, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 2009, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 2030, i32 23 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 2043, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 2047, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 2074, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 2078, i32 3 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 2105, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 2109, i32 3 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 2136, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 2140, i32 3 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 2173, i32 3 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 2177, i32 3 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 2206, i32 3 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 2212, i32 3 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 2238, i32 3 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 2242, i32 3 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 2271, i32 3 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 695, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 723, i32 2 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 776, i32 3 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 783, i32 2 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 1038, i32 2 }
@___asan_gen_.568 = private unnamed_addr constant [35 x i8] c"../include/linux/percpu-refcount.h\00", align 1
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 280, i32 2 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 884, i32 3 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 889, i32 4 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 897, i32 31 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 862, i32 3 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 867, i32 3 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 792, i32 10 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 794, i32 10 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 796, i32 10 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 798, i32 10 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 800, i32 10 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 804, i32 10 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 1226, i32 3 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 1244, i32 2 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 1178, i32 3 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 1183, i32 42 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 1189, i32 32 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 1195, i32 32 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 45, i32 8 }
@___asan_gen_.654 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 1445, i32 3 }
@___asan_gen_.663 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.666 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.667 = private constant [37 x i8] c"../drivers/target/target_core_alua.c\00", align 1
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.667, i32 1449, i32 2 }
@___asan_gen_.669 = private unnamed_addr constant [42 x i8] c"switch.table.core_alua_do_port_transition\00", align 1
@___asan_gen_.670 = private unnamed_addr constant [35 x i8] c"switch.table.core_alua_dump_status\00", align 1
@___asan_gen_.671 = private unnamed_addr constant [43 x i8] c"switch.table.core_alua_do_transition_tg_pt\00", align 1
@___asan_gen_.672 = private unnamed_addr constant [47 x i8] c"switch.table.core_alua_do_transition_tg_pt.152\00", align 1
@___asan_gen_.673 = private unnamed_addr constant [42 x i8] c"switch.table.core_alua_show_tg_pt_gp_info\00", align 1
@___asan_gen_.674 = private unnamed_addr constant [46 x i8] c"switch.table.core_alua_show_tg_pt_gp_info.153\00", align 1
@___asan_gen_.675 = private unnamed_addr constant [46 x i8] c"switch.table.core_alua_show_tg_pt_gp_info.154\00", align 1
@llvm.compiler.used = appending global [218 x ptr] [ptr @__ksymtab_core_alua_check_nonop_delay, ptr @core_alua_allocate_lba_map._entry, ptr @core_alua_allocate_lba_map._entry_ptr, ptr @core_alua_allocate_lba_map_mem._entry, ptr @core_alua_allocate_lba_map_mem._entry.31, ptr @core_alua_allocate_lba_map_mem._entry_ptr, ptr @core_alua_allocate_lba_map_mem._entry_ptr.33, ptr @core_alua_allocate_lu_gp._entry, ptr @core_alua_allocate_lu_gp._entry_ptr, ptr @core_alua_allocate_lu_gp_mem._entry, ptr @core_alua_allocate_lu_gp_mem._entry_ptr, ptr @core_alua_allocate_tg_pt_gp._entry, ptr @core_alua_allocate_tg_pt_gp._entry_ptr, ptr @core_alua_check_transition._entry, ptr @core_alua_check_transition._entry.118, ptr @core_alua_check_transition._entry_ptr, ptr @core_alua_check_transition._entry_ptr.120, ptr @core_alua_set_lu_gp_id._entry, ptr @core_alua_set_lu_gp_id._entry.39, ptr @core_alua_set_lu_gp_id._entry.42, ptr @core_alua_set_lu_gp_id._entry_ptr, ptr @core_alua_set_lu_gp_id._entry_ptr.41, ptr @core_alua_set_lu_gp_id._entry_ptr.44, ptr @core_alua_set_tg_pt_gp_id._entry, ptr @core_alua_set_tg_pt_gp_id._entry.52, ptr @core_alua_set_tg_pt_gp_id._entry.55, ptr @core_alua_set_tg_pt_gp_id._entry_ptr, ptr @core_alua_set_tg_pt_gp_id._entry_ptr.54, ptr @core_alua_set_tg_pt_gp_id._entry_ptr.57, ptr @core_alua_set_tg_pt_secondary_state._entry, ptr @core_alua_set_tg_pt_secondary_state._entry_ptr, ptr @core_alua_store_access_type._entry, ptr @core_alua_store_access_type._entry.73, ptr @core_alua_store_access_type._entry_ptr, ptr @core_alua_store_access_type._entry_ptr.75, ptr @core_alua_store_implicit_trans_secs._entry, ptr @core_alua_store_implicit_trans_secs._entry.89, ptr @core_alua_store_implicit_trans_secs._entry_ptr, ptr @core_alua_store_implicit_trans_secs._entry_ptr.91, ptr @core_alua_store_nonop_delay_msecs._entry, ptr @core_alua_store_nonop_delay_msecs._entry.79, ptr @core_alua_store_nonop_delay_msecs._entry_ptr, ptr @core_alua_store_nonop_delay_msecs._entry_ptr.81, ptr @core_alua_store_offline_bit._entry, ptr @core_alua_store_offline_bit._entry.99, ptr @core_alua_store_offline_bit._entry_ptr, ptr @core_alua_store_offline_bit._entry_ptr.101, ptr @core_alua_store_preferred_bit._entry, ptr @core_alua_store_preferred_bit._entry.94, ptr @core_alua_store_preferred_bit._entry_ptr, ptr @core_alua_store_preferred_bit._entry_ptr.96, ptr @core_alua_store_secondary_status._entry, ptr @core_alua_store_secondary_status._entry.104, ptr @core_alua_store_secondary_status._entry_ptr, ptr @core_alua_store_secondary_status._entry_ptr.106, ptr @core_alua_store_secondary_write_metadata._entry, ptr @core_alua_store_secondary_write_metadata._entry.109, ptr @core_alua_store_secondary_write_metadata._entry_ptr, ptr @core_alua_store_secondary_write_metadata._entry_ptr.111, ptr @core_alua_store_tg_pt_gp_info._entry, ptr @core_alua_store_tg_pt_gp_info._entry_ptr, ptr @core_alua_store_trans_delay_msecs._entry, ptr @core_alua_store_trans_delay_msecs._entry.84, ptr @core_alua_store_trans_delay_msecs._entry_ptr, ptr @core_alua_store_trans_delay_msecs._entry_ptr.86, ptr @core_alua_update_tpg_primary_metadata._entry, ptr @core_alua_update_tpg_primary_metadata._entry_ptr, ptr @core_alua_update_tpg_secondary_metadata._entry, ptr @core_alua_update_tpg_secondary_metadata._entry_ptr, ptr @core_alua_write_tpg_metadata._entry, ptr @core_alua_write_tpg_metadata._entry.130, ptr @core_alua_write_tpg_metadata._entry_ptr, ptr @core_alua_write_tpg_metadata._entry_ptr.132, ptr @target_alua_state_check._entry, ptr @target_alua_state_check._entry_ptr, ptr @target_emulate_report_referrals._entry, ptr @target_emulate_report_referrals._entry_ptr, ptr @target_emulate_report_target_port_groups._entry, ptr @target_emulate_report_target_port_groups._entry_ptr, ptr @target_emulate_set_target_port_groups._entry, ptr @target_emulate_set_target_port_groups._entry.10, ptr @target_emulate_set_target_port_groups._entry_ptr, ptr @target_emulate_set_target_port_groups._entry_ptr.12, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @core_alua_allocate_lu_gp.__key, ptr @.str.36, ptr @alua_lu_gps_counter, ptr @alua_lu_gps_count, ptr @.str.37, ptr @.str.38, ptr @lu_gps_lock, ptr @.str.40, ptr @lu_gps_list, ptr @.str.43, ptr @default_lu_gp, ptr @.str.45, ptr @.str.46, ptr @core_alua_allocate_tg_pt_gp.__key, ptr @.str.47, ptr @core_alua_allocate_tg_pt_gp.__key.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @.str.87, ptr @.str.88, ptr @.str.90, ptr @.str.92, ptr @.str.93, ptr @.str.95, ptr @.str.97, ptr @.str.98, ptr @.str.100, ptr @.str.102, ptr @.str.103, ptr @.str.105, ptr @.str.107, ptr @.str.108, ptr @.str.110, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.119, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.131, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @core_alua_allocate_lu_gp_mem.__key, ptr @.str.151, ptr @switch.table.core_alua_do_port_transition, ptr @switch.table.core_alua_dump_status, ptr @switch.table.core_alua_do_transition_tg_pt, ptr @switch.table.core_alua_do_transition_tg_pt.152, ptr @switch.table.core_alua_show_tg_pt_gp_info, ptr @switch.table.core_alua_show_tg_pt_gp_info.153, ptr @switch.table.core_alua_show_tg_pt_gp_info.154], section "llvm.metadata"
@0 = internal global [176 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_emulate_report_referrals._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_emulate_report_target_port_groups._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_emulate_set_target_port_groups._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_emulate_set_target_port_groups._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_alua_state_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 102, i32 160, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_alua_allocate_lba_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_alua_allocate_lba_map_mem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_alua_allocate_lba_map_mem._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_alua_allocate_lu_gp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_alua_allocate_lu_gp.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alua_lu_gps_counter to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alua_lu_gps_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_alua_set_lu_gp_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lu_gps_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_alua_set_lu_gp_id._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lu_gps_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_alua_set_lu_gp_id._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_lu_gp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_alua_allocate_tg_pt_gp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_alua_allocate_tg_pt_gp.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_alua_allocate_tg_pt_gp.__key.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_alua_set_tg_pt_gp_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_alua_set_tg_pt_gp_id._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_alua_set_tg_pt_gp_id._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 179, i32 224, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_alua_store_tg_pt_gp_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_alua_store_access_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_alua_store_access_type._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_alua_store_nonop_delay_msecs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_alua_store_nonop_delay_msecs._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_alua_store_trans_delay_msecs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_alua_store_trans_delay_msecs._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_alua_store_implicit_trans_secs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_alua_store_implicit_trans_secs._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_alua_store_preferred_bit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_alua_store_preferred_bit._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_alua_store_offline_bit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_alua_store_offline_bit._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_alua_store_secondary_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_alua_store_secondary_status._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_alua_store_secondary_write_metadata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_alua_store_secondary_write_metadata._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_alua_check_transition._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_alua_check_transition._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_alua_update_tpg_primary_metadata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_alua_write_tpg_metadata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_alua_write_tpg_metadata._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_alua_set_tg_pt_secondary_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_alua_update_tpg_secondary_metadata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_alua_allocate_lu_gp_mem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_alua_allocate_lu_gp_mem.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.core_alua_do_port_transition to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.core_alua_dump_status to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.core_alua_do_transition_tg_pt to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.core_alua_do_transition_tg_pt.152 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.core_alua_show_tg_pt_gp_info to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.core_alua_show_tg_pt_gp_info.153 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.core_alua_show_tg_pt_gp_info.154 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @target_emulate_report_referrals(ptr noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %se_dev = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 19
  %0 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_dev, align 4
  %data_length = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 12
  %2 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp ult i32 %3, 4
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %3) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @transport_kmap_data_sg(ptr noundef %cmd) #14
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %lba_map_lock = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 37, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lba_map_lock) #14
  %lba_map_list = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 37, i32 5
  %4 = ptrtoint ptr %lba_map_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %lba_map_list, align 4
  %cmp.i.not = icmp eq ptr %5, %lba_map_list
  br i1 %cmp.i.not, label %if.then8, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end4
  %6 = ptrtoint ptr %lba_map_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn156 = load ptr, ptr %lba_map_list, align 4
  %cmp18.not158 = icmp eq ptr %.pn156, %lba_map_list
  br i1 %cmp18.not158, label %for.cond.preheader.for.end85_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end85_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end85

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock(ptr noundef %lba_map_lock) #14
  tail call void @transport_kunmap_data_sg(ptr noundef %cmd) #14
  br label %cleanup

for.body:                                         ; preds = %if.end78.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %.pn161 = phi ptr [ %.pn, %if.end78.for.body_crit_edge ], [ %.pn156, %for.cond.preheader.for.body_crit_edge ]
  %rd_len.0160 = phi i32 [ %rd_len.1.lcssa, %if.end78.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %off.0159 = phi i32 [ %off.1.lcssa, %if.end78.for.body_crit_edge ], [ 4, %for.cond.preheader.for.body_crit_edge ]
  %add = add i32 %off.0159, 3
  %add19 = add i32 %off.0159, 4
  %7 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %add19)
  %cmp21 = icmp ugt i32 %8, %add19
  br i1 %cmp21, label %if.then22, label %for.body.if.end23_crit_edge

for.body.if.end23_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

if.then22:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %map.0162 = getelementptr i8, ptr %.pn161, i32 -16
  %9 = ptrtoint ptr %map.0162 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %map.0162, align 8
  %arrayidx = getelementptr i8, ptr %call2, i32 %add19
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 %10, ptr %arrayidx, align 1
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %for.body.if.end23_crit_edge
  %add24 = add i32 %off.0159, 12
  %12 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %add24)
  %cmp26 = icmp ugt i32 %13, %add24
  br i1 %cmp26, label %if.then27, label %if.end23.if.end29_crit_edge

if.end23.if.end29_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  %lba_map_last_lba = getelementptr i8, ptr %.pn161, i32 -8
  %14 = ptrtoint ptr %lba_map_last_lba to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %lba_map_last_lba, align 8
  %arrayidx28 = getelementptr i8, ptr %call2, i32 %add24
  %16 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 8)
  store i64 %15, ptr %arrayidx28, align 1
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end23.if.end29_crit_edge
  %add30 = add i32 %off.0159, 20
  %add31 = add i32 %rd_len.0160, 20
  %lba_map_mem_list = getelementptr i8, ptr %.pn161, i32 8
  %17 = ptrtoint ptr %lba_map_mem_list to i32
  call void @__asan_load4_noabort(i32 %17)
  %map_mem.0148 = load ptr, ptr %lba_map_mem_list, align 4
  %cmp39.not149 = icmp eq ptr %map_mem.0148, %lba_map_mem_list
  br i1 %cmp39.not149, label %if.end29.for.end_crit_edge, label %if.end29.for.body41_crit_edge

if.end29.for.body41_crit_edge:                    ; preds = %if.end29
  br label %for.body41

if.end29.for.end_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body41:                                       ; preds = %if.end63.for.body41_crit_edge, %if.end29.for.body41_crit_edge
  %map_mem.0153 = phi ptr [ %map_mem.0, %if.end63.for.body41_crit_edge ], [ %map_mem.0148, %if.end29.for.body41_crit_edge ]
  %rd_len.1152 = phi i32 [ %add65, %if.end63.for.body41_crit_edge ], [ %add31, %if.end29.for.body41_crit_edge ]
  %pg_num.0151 = phi i32 [ %inc66, %if.end63.for.body41_crit_edge ], [ 0, %if.end29.for.body41_crit_edge ]
  %off.1150 = phi i32 [ %inc64, %if.end63.for.body41_crit_edge ], [ %add30, %if.end29.for.body41_crit_edge ]
  %lba_map_mem_alua_pg_id = getelementptr inbounds %struct.t10_alua_lba_map_member, ptr %map_mem.0153, i32 0, i32 2
  %18 = ptrtoint ptr %lba_map_mem_alua_pg_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %lba_map_mem_alua_pg_id, align 4
  %20 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %off.1150)
  %cmp43 = icmp ugt i32 %21, %off.1150
  br i1 %cmp43, label %if.then44, label %for.body41.if.end46_crit_edge

for.body41.if.end46_crit_edge:                    ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46

if.then44:                                        ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #16
  %lba_map_mem_alua_state = getelementptr inbounds %struct.t10_alua_lba_map_member, ptr %map_mem.0153, i32 0, i32 1
  %22 = ptrtoint ptr %lba_map_mem_alua_state to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %lba_map_mem_alua_state, align 4
  %24 = trunc i32 %23 to i8
  %conv = and i8 %24, 15
  %arrayidx45 = getelementptr i8, ptr %call2, i32 %off.1150
  %25 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv, ptr %arrayidx45, align 1
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %for.body41.if.end46_crit_edge
  %add47 = add i32 %off.1150, 2
  %26 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %data_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %add47)
  %cmp49 = icmp ugt i32 %27, %add47
  br i1 %cmp49, label %if.then51, label %if.end46.if.end55_crit_edge

if.end46.if.end55_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55

if.then51:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  %28 = lshr i32 %19, 8
  %conv53 = trunc i32 %28 to i8
  %arrayidx54 = getelementptr i8, ptr %call2, i32 %add47
  %29 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv53, ptr %arrayidx54, align 1
  br label %if.end55

if.end55:                                         ; preds = %if.then51, %if.end46.if.end55_crit_edge
  %inc = add i32 %off.1150, 3
  %30 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %data_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %inc)
  %cmp57 = icmp ugt i32 %31, %inc
  br i1 %cmp57, label %if.then59, label %if.end55.if.end63_crit_edge

if.end55.if.end63_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end63

if.then59:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #16
  %conv61 = trunc i32 %19 to i8
  %arrayidx62 = getelementptr i8, ptr %call2, i32 %inc
  %32 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv61, ptr %arrayidx62, align 1
  br label %if.end63

if.end63:                                         ; preds = %if.then59, %if.end55.if.end63_crit_edge
  %inc64 = add i32 %off.1150, 4
  %add65 = add i32 %rd_len.1152, 4
  %inc66 = add i32 %pg_num.0151, 1
  %33 = ptrtoint ptr %map_mem.0153 to i32
  call void @__asan_load4_noabort(i32 %33)
  %map_mem.0 = load ptr, ptr %map_mem.0153, align 4
  %cmp39.not = icmp eq ptr %map_mem.0, %lba_map_mem_list
  br i1 %cmp39.not, label %if.end63.for.end_crit_edge, label %if.end63.for.body41_crit_edge

if.end63.for.body41_crit_edge:                    ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body41

if.end63.for.end_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %if.end63.for.end_crit_edge, %if.end29.for.end_crit_edge
  %off.1.lcssa = phi i32 [ %add30, %if.end29.for.end_crit_edge ], [ %inc64, %if.end63.for.end_crit_edge ]
  %pg_num.0.lcssa = phi i32 [ 0, %if.end29.for.end_crit_edge ], [ %inc66, %if.end63.for.end_crit_edge ]
  %rd_len.1.lcssa = phi i32 [ %add31, %if.end29.for.end_crit_edge ], [ %add65, %if.end63.for.end_crit_edge ]
  %34 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %data_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %add)
  %cmp73 = icmp ugt i32 %35, %add
  br i1 %cmp73, label %if.then75, label %for.end.if.end78_crit_edge

for.end.if.end78_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end78

if.then75:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %conv76 = trunc i32 %pg_num.0.lcssa to i8
  %arrayidx77 = getelementptr i8, ptr %call2, i32 %add
  %36 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv76, ptr %arrayidx77, align 1
  br label %if.end78

if.end78:                                         ; preds = %if.then75, %for.end.if.end78_crit_edge
  %37 = ptrtoint ptr %.pn161 to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn = load ptr, ptr %.pn161, align 4
  %cmp18.not = icmp eq ptr %.pn, %lba_map_list
  br i1 %cmp18.not, label %if.end78.for.end85_crit_edge, label %if.end78.for.body_crit_edge

if.end78.for.body_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.end78.for.end85_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end85

for.end85:                                        ; preds = %if.end78.for.end85_crit_edge, %for.cond.preheader.for.end85_crit_edge
  %rd_len.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end85_crit_edge ], [ %rd_len.1.lcssa, %if.end78.for.end85_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lba_map_lock) #14
  %conv88 = trunc i32 %rd_len.0.lcssa to i16
  %arrayidx89 = getelementptr i8, ptr %call2, i32 2
  %38 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 2)
  store i16 %conv88, ptr %arrayidx89, align 1
  tail call void @transport_kunmap_data_sg(ptr noundef %cmd) #14
  tail call void @target_complete_cmd(ptr noundef %cmd, i8 noundef zeroext 0) #14
  br label %cleanup

cleanup:                                          ; preds = %for.end85, %if.then8, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 8, %do.end ], [ 2, %if.then8 ], [ 0, %for.end85 ], [ 10, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @transport_kmap_data_sg(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @transport_kunmap_data_sg(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_complete_cmd(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @target_emulate_report_target_port_groups(ptr noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %se_dev = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 19
  %0 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_dev, align 4
  %t_task_cdb = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 30
  %2 = ptrtoint ptr %t_task_cdb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %t_task_cdb, align 8
  %arrayidx = getelementptr i8, ptr %3, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %6 = and i8 %5, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp.not = icmp eq i8 %6, 0
  %. = select i1 %cmp.not, i32 4, i32 8
  %data_length = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 12
  %7 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %.)
  %cmp2 = icmp ult i32 %8, %.
  br i1 %cmp2, label %do.end, label %if.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %cond = select i1 %cmp.not, ptr @.str.6, ptr @.str.5
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %8, ptr noundef nonnull %cond) #17
  br label %cleanup

if.end6:                                          ; preds = %entry
  %call7 = tail call ptr @transport_kmap_data_sg(ptr noundef %cmd) #14
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %tg_pt_gps_lock = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 37, i32 6
  tail call void @_raw_spin_lock(ptr noundef %tg_pt_gps_lock) #14
  %tg_pt_gps_list = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 37, i32 10
  %9 = ptrtoint ptr %tg_pt_gps_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn194 = load ptr, ptr %tg_pt_gps_list, align 4
  %cmp15.not196 = icmp eq ptr %.pn194, %tg_pt_gps_list
  br i1 %cmp15.not196, label %if.end10.for.end81_crit_edge, label %if.end10.for.body_crit_edge

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  br label %for.body

if.end10.for.end81_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end81

for.body:                                         ; preds = %for.inc75.for.body_crit_edge, %if.end10.for.body_crit_edge
  %.pn199 = phi ptr [ %.pn, %for.inc75.for.body_crit_edge ], [ %.pn194, %if.end10.for.body_crit_edge ]
  %rd_len.0198 = phi i32 [ %rd_len.2, %for.inc75.for.body_crit_edge ], [ 0, %if.end10.for.body_crit_edge ]
  %off.1197 = phi i32 [ %off.3, %for.inc75.for.body_crit_edge ], [ %., %if.end10.for.body_crit_edge ]
  %tg_pt_gp.0200 = getelementptr i8, ptr %.pn199, i32 -272
  %add = add i32 %off.1197, 8
  %tg_pt_gp_members = getelementptr i8, ptr %.pn199, i32 -232
  %10 = ptrtoint ptr %tg_pt_gp_members to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tg_pt_gp_members, align 4
  %mul = shl i32 %11, 2
  %add17 = add i32 %mul, %add
  %12 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add17, i32 %13)
  %cmp19 = icmp ugt i32 %add17, %13
  br i1 %cmp19, label %if.then21, label %if.end26

if.then21:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %add24 = add i32 %rd_len.0198, 8
  %add25 = add i32 %add24, %mul
  br label %for.inc75

if.end26:                                         ; preds = %for.body
  %tg_pt_gp_pref = getelementptr i8, ptr %.pn199, i32 -240
  %14 = ptrtoint ptr %tg_pt_gp_pref to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tg_pt_gp_pref, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool27.not = icmp eq i32 %15, 0
  br i1 %tobool27.not, label %if.end26.if.end30_crit_edge, label %if.then28

if.end26.if.end30_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx29 = getelementptr i8, ptr %call7, i32 %off.1197
  %16 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -128, ptr %arrayidx29, align 1
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end26.if.end30_crit_edge
  %tg_pt_gp_alua_access_state = getelementptr i8, ptr %.pn199, i32 -228
  %17 = ptrtoint ptr %tg_pt_gp_alua_access_state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tg_pt_gp_alua_access_state, align 4
  %inc = add i32 %off.1197, 1
  %arrayidx32 = getelementptr i8, ptr %call7, i32 %off.1197
  %19 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx32, align 1
  %21 = trunc i32 %18 to i8
  %conv34 = or i8 %20, %21
  store i8 %conv34, ptr %arrayidx32, align 1
  %tg_pt_gp_alua_supported_states = getelementptr i8, ptr %.pn199, i32 -264
  %22 = ptrtoint ptr %tg_pt_gp_alua_supported_states to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tg_pt_gp_alua_supported_states, align 4
  %inc35 = add i32 %off.1197, 2
  %arrayidx36 = getelementptr i8, ptr %call7, i32 %inc
  %24 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx36, align 1
  %26 = trunc i32 %23 to i8
  %conv39 = or i8 %25, %26
  store i8 %conv39, ptr %arrayidx36, align 1
  %27 = ptrtoint ptr %tg_pt_gp.0200 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %tg_pt_gp.0200, align 4
  %arrayidx40 = getelementptr i8, ptr %call7, i32 %inc35
  %29 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 %28, ptr %arrayidx40, align 1
  %inc42 = add i32 %off.1197, 5
  %tg_pt_gp_alua_access_status = getelementptr i8, ptr %.pn199, i32 -260
  %30 = ptrtoint ptr %tg_pt_gp_alua_access_status to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tg_pt_gp_alua_access_status, align 4
  %conv44 = trunc i32 %31 to i8
  %inc45 = add i32 %off.1197, 6
  %arrayidx46 = getelementptr i8, ptr %call7, i32 %inc42
  %32 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv44, ptr %arrayidx46, align 1
  %inc47 = add i32 %off.1197, 7
  %arrayidx48 = getelementptr i8, ptr %call7, i32 %inc45
  %33 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %arrayidx48, align 1
  %34 = ptrtoint ptr %tg_pt_gp_members to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tg_pt_gp_members, align 4
  %conv51 = trunc i32 %35 to i8
  %arrayidx53 = getelementptr i8, ptr %call7, i32 %inc47
  %36 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv51, ptr %arrayidx53, align 1
  %add54 = add i32 %rd_len.0198, 8
  %tg_pt_gp_lock = getelementptr i8, ptr %.pn199, i32 -220
  tail call void @_raw_spin_lock(ptr noundef %tg_pt_gp_lock) #14
  %tg_pt_gp_lun_list = getelementptr i8, ptr %.pn199, i32 8
  %37 = ptrtoint ptr %tg_pt_gp_lun_list to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn178188 = load ptr, ptr %tg_pt_gp_lun_list, align 4
  %cmp61.not189 = icmp eq ptr %.pn178188, %tg_pt_gp_lun_list
  br i1 %cmp61.not189, label %if.end30.for.end_crit_edge, label %if.end30.for.body64_crit_edge

if.end30.for.body64_crit_edge:                    ; preds = %if.end30
  br label %for.body64

if.end30.for.end_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body64:                                       ; preds = %for.body64.for.body64_crit_edge, %if.end30.for.body64_crit_edge
  %.pn178192 = phi ptr [ %.pn178, %for.body64.for.body64_crit_edge ], [ %.pn178188, %if.end30.for.body64_crit_edge ]
  %rd_len.1191 = phi i32 [ %add68, %for.body64.for.body64_crit_edge ], [ %add54, %if.end30.for.body64_crit_edge ]
  %off.2190 = phi i32 [ %add67, %for.body64.for.body64_crit_edge ], [ %add, %if.end30.for.body64_crit_edge ]
  %add65 = add i32 %off.2190, 2
  %lun_rtpi = getelementptr i8, ptr %.pn178192, i32 -168
  %38 = ptrtoint ptr %lun_rtpi to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %lun_rtpi, align 8
  %arrayidx66 = getelementptr i8, ptr %call7, i32 %add65
  %40 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 2)
  store i16 %39, ptr %arrayidx66, align 1
  %add67 = add i32 %off.2190, 4
  %add68 = add i32 %rd_len.1191, 4
  %41 = ptrtoint ptr %.pn178192 to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pn178 = load ptr, ptr %.pn178192, align 4
  %cmp61.not = icmp eq ptr %.pn178, %tg_pt_gp_lun_list
  br i1 %cmp61.not, label %for.body64.for.end_crit_edge, label %for.body64.for.body64_crit_edge

for.body64.for.body64_crit_edge:                  ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body64

for.body64.for.end_crit_edge:                     ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body64.for.end_crit_edge, %if.end30.for.end_crit_edge
  %off.2.lcssa = phi i32 [ %add, %if.end30.for.end_crit_edge ], [ %add67, %for.body64.for.end_crit_edge ]
  %rd_len.1.lcssa = phi i32 [ %add54, %if.end30.for.end_crit_edge ], [ %add68, %for.body64.for.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %tg_pt_gp_lock) #14
  br label %for.inc75

for.inc75:                                        ; preds = %for.end, %if.then21
  %off.3 = phi i32 [ %off.1197, %if.then21 ], [ %off.2.lcssa, %for.end ]
  %rd_len.2 = phi i32 [ %add25, %if.then21 ], [ %rd_len.1.lcssa, %for.end ]
  %42 = ptrtoint ptr %.pn199 to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pn = load ptr, ptr %.pn199, align 4
  %cmp15.not = icmp eq ptr %.pn, %tg_pt_gps_list
  br i1 %cmp15.not, label %for.inc75.for.end81_crit_edge, label %for.inc75.for.body_crit_edge

for.inc75.for.body_crit_edge:                     ; preds = %for.inc75
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc75.for.end81_crit_edge:                    ; preds = %for.inc75
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end81

for.end81:                                        ; preds = %for.inc75.for.end81_crit_edge, %if.end10.for.end81_crit_edge
  %rd_len.0.lcssa = phi i32 [ 0, %if.end10.for.end81_crit_edge ], [ %rd_len.2, %for.inc75.for.end81_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %tg_pt_gps_lock) #14
  %43 = ptrtoint ptr %call7 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 %rd_len.0.lcssa, ptr %call7, align 1
  br i1 %cmp.not, label %for.end81.if.end110_crit_edge, label %if.then87

for.end81.if.end110_crit_edge:                    ; preds = %for.end81
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end110

if.then87:                                        ; preds = %for.end81
  %arrayidx88 = getelementptr i8, ptr %call7, i32 4
  %44 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 16, ptr %arrayidx88, align 1
  %45 = tail call i32 @llvm.read_register.i32(metadata !325) #14
  %and.i.i.i.i.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %48, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !335
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %if.then87.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then87.rcu_read_lock.exit_crit_edge:           ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then87
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.114, i32 noundef 696, ptr noundef nonnull @.str.115) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then87.rcu_read_lock.exit_crit_edge
  %se_lun = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 20
  %49 = ptrtoint ptr %se_lun to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %se_lun, align 8
  %lun_tg_pt_gp = getelementptr inbounds %struct.se_lun, ptr %50, i32 0, i32 14
  %51 = ptrtoint ptr %lun_tg_pt_gp to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %lun_tg_pt_gp, align 8
  %call94 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end103_crit_edge

rcu_read_lock.exit.do.end103_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end103

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call96 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %land.lhs.true.do.end103_crit_edge, label %land.lhs.true98

land.lhs.true.do.end103_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end103

land.lhs.true98:                                  ; preds = %land.lhs.true
  %.b177 = load i1, ptr @target_emulate_report_target_port_groups.__warned, align 1
  br i1 %.b177, label %land.lhs.true98.do.end103_crit_edge, label %if.then100

land.lhs.true98.do.end103_crit_edge:              ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end103

if.then100:                                       ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @target_emulate_report_target_port_groups.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 251, ptr noundef nonnull @.str.7) #14
  br label %do.end103

do.end103:                                        ; preds = %if.then100, %land.lhs.true98.do.end103_crit_edge, %land.lhs.true.do.end103_crit_edge, %rcu_read_lock.exit.do.end103_crit_edge
  %tobool105.not = icmp eq ptr %52, null
  br i1 %tobool105.not, label %do.end103.if.end109_crit_edge, label %if.then106

do.end103.if.end109_crit_edge:                    ; preds = %do.end103
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end109

if.then106:                                       ; preds = %do.end103
  call void @__sanitizer_cov_trace_pc() #16
  %tg_pt_gp_implicit_trans_secs = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %52, i32 0, i32 7
  %53 = ptrtoint ptr %tg_pt_gp_implicit_trans_secs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %tg_pt_gp_implicit_trans_secs, align 4
  %conv107 = trunc i32 %54 to i8
  %arrayidx108 = getelementptr i8, ptr %call7, i32 5
  %55 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv107, ptr %arrayidx108, align 1
  br label %if.end109

if.end109:                                        ; preds = %if.then106, %do.end103.if.end109_crit_edge
  %call.i179 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i179, label %if.end109.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i182

if.end109.rcu_read_unlock.exit_crit_edge:         ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i182:                               ; preds = %if.end109
  %call1.i180 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i180)
  %tobool.not.i181 = icmp eq i32 %call1.i180, 0
  br i1 %tobool.not.i181, label %land.lhs.true.i182.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i184

land.lhs.true.i182.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i182
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i184:                              ; preds = %land.lhs.true.i182
  %.b4.i183 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i183, label %land.lhs.true2.i184.rcu_read_unlock.exit_crit_edge, label %if.then.i185

land.lhs.true2.i184.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i184
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i185:                                     ; preds = %land.lhs.true2.i184
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.114, i32 noundef 724, ptr noundef nonnull @.str.116) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i185, %land.lhs.true2.i184.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i182.rcu_read_unlock.exit_crit_edge, %if.end109.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !336
  %56 = tail call i32 @llvm.read_register.i32(metadata !325) #14
  %and.i.i.i.i.i186 = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i.i.i186 to ptr
  %preempt_count.i.i.i.i187 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %preempt_count.i.i.i.i187 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %preempt_count.i.i.i.i187, align 4
  %sub.i.i.i = add i32 %59, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i187, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  br label %if.end110

if.end110:                                        ; preds = %rcu_read_unlock.exit, %for.end81.if.end110_crit_edge
  tail call void @transport_kunmap_data_sg(ptr noundef %cmd) #14
  %add111 = add i32 %rd_len.0.lcssa, 4
  tail call void @target_complete_cmd_with_length(ptr noundef %cmd, i8 noundef zeroext 0, i32 noundef %add111) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end110, %if.end6.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 8, %do.end ], [ 0, %if.end110 ], [ 10, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_complete_cmd_with_length(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @target_emulate_set_target_port_groups(ptr noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  %primary = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %se_dev = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 19
  %0 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_dev, align 4
  %se_lun = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 20
  %2 = ptrtoint ptr %se_lun to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %se_lun, align 8
  %se_sess = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 21
  %4 = ptrtoint ptr %se_sess to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %se_sess, align 4
  %se_node_acl = getelementptr inbounds %struct.se_session, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %se_node_acl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %se_node_acl, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %primary) #14
  %8 = ptrtoint ptr %primary to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %primary, align 4
  %data_length = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 12
  %9 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %cmp = icmp ult i32 %10, 4
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %10) #17
  br label %cleanup128

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @transport_kmap_data_sg(ptr noundef %cmd) #14
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.cleanup128_crit_edge, label %if.end4

if.end.cleanup128_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup128

if.end4:                                          ; preds = %if.end
  %11 = tail call i32 @llvm.read_register.i32(metadata !325) #14
  %and.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %14, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !335
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %if.end4.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end4.rcu_read_lock.exit_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end4
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.114, i32 noundef 696, ptr noundef nonnull @.str.115) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end4.rcu_read_lock.exit_crit_edge
  %lun_tg_pt_gp = getelementptr inbounds %struct.se_lun, ptr %3, i32 0, i32 14
  %15 = ptrtoint ptr %lun_tg_pt_gp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %lun_tg_pt_gp, align 8
  %call10 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end19_crit_edge

rcu_read_lock.exit.do.end19_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end19

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call12 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true.do.end19_crit_edge, label %land.lhs.true14

land.lhs.true.do.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end19

land.lhs.true14:                                  ; preds = %land.lhs.true
  %.b186 = load i1, ptr @target_emulate_set_target_port_groups.__warned, align 1
  br i1 %.b186, label %land.lhs.true14.do.end19_crit_edge, label %if.then16

land.lhs.true14.do.end19_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end19

if.then16:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @target_emulate_set_target_port_groups.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 296, ptr noundef nonnull @.str.7) #14
  br label %do.end19

do.end19:                                         ; preds = %if.then16, %land.lhs.true14.do.end19_crit_edge, %land.lhs.true.do.end19_crit_edge, %rcu_read_lock.exit.do.end19_crit_edge
  %tobool21.not = icmp eq ptr %16, null
  br i1 %tobool21.not, label %if.then22, label %if.end28

if.then22:                                        ; preds = %do.end19
  %call.i187 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i187, label %if.then22.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i190

if.then22.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i190:                               ; preds = %if.then22
  %call1.i188 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i188)
  %tobool.not.i189 = icmp eq i32 %call1.i188, 0
  br i1 %tobool.not.i189, label %land.lhs.true.i190.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i192

land.lhs.true.i190.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i190
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i192:                              ; preds = %land.lhs.true.i190
  %.b4.i191 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i191, label %land.lhs.true2.i192.rcu_read_unlock.exit_crit_edge, label %if.then.i193

land.lhs.true2.i192.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i192
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i193:                                     ; preds = %land.lhs.true2.i192
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.114, i32 noundef 724, ptr noundef nonnull @.str.116) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i193, %land.lhs.true2.i192.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i190.rcu_read_unlock.exit_crit_edge, %if.then22.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !336
  %17 = tail call i32 @llvm.read_register.i32(metadata !325) #14
  %and.i.i.i.i.i194 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i194 to ptr
  %preempt_count.i.i.i.i195 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i195 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i195, align 4
  %sub.i.i.i = add i32 %20, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i195, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #17
  br label %out.thread

if.end28:                                         ; preds = %do.end19
  %tg_pt_gp_alua_access_type = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %16, i32 0, i32 4
  %21 = ptrtoint ptr %tg_pt_gp_alua_access_type to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tg_pt_gp_alua_access_type, align 4
  %and = and i32 %22, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp eq i32 %and, 0
  br i1 %tobool29.not, label %if.then30, label %if.end41

if.then30:                                        ; preds = %if.end28
  %call.i196 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i196, label %if.then30.rcu_read_unlock.exit206_crit_edge, label %land.lhs.true.i199

if.then30.rcu_read_unlock.exit206_crit_edge:      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit206

land.lhs.true.i199:                               ; preds = %if.then30
  %call1.i197 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i197)
  %tobool.not.i198 = icmp eq i32 %call1.i197, 0
  br i1 %tobool.not.i198, label %land.lhs.true.i199.rcu_read_unlock.exit206_crit_edge, label %land.lhs.true2.i201

land.lhs.true.i199.rcu_read_unlock.exit206_crit_edge: ; preds = %land.lhs.true.i199
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit206

land.lhs.true2.i201:                              ; preds = %land.lhs.true.i199
  %.b4.i200 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i200, label %land.lhs.true2.i201.rcu_read_unlock.exit206_crit_edge, label %if.then.i202

land.lhs.true2.i201.rcu_read_unlock.exit206_crit_edge: ; preds = %land.lhs.true2.i201
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit206

if.then.i202:                                     ; preds = %land.lhs.true2.i201
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.114, i32 noundef 724, ptr noundef nonnull @.str.116) #14
  br label %rcu_read_unlock.exit206

rcu_read_unlock.exit206:                          ; preds = %if.then.i202, %land.lhs.true2.i201.rcu_read_unlock.exit206_crit_edge, %land.lhs.true.i199.rcu_read_unlock.exit206_crit_edge, %if.then30.rcu_read_unlock.exit206_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !336
  %23 = tail call i32 @llvm.read_register.i32(metadata !325) #14
  %and.i.i.i.i.i203 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i203 to ptr
  %preempt_count.i.i.i.i204 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i.i204 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i.i204, align 4
  %sub.i.i.i205 = add i32 %26, -1
  store volatile i32 %sub.i.i.i205, ptr %preempt_count.i.i.i.i204, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @target_emulate_set_target_port_groups.__UNIQUE_ID_ddebug210, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_emulate_set_target_port_groups, %if.then37)) #14
          to label %out [label %if.then37], !srcloc !337

if.then37:                                        ; preds = %rcu_read_unlock.exit206
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @target_emulate_set_target_port_groups.__UNIQUE_ID_ddebug210, ptr noundef nonnull @.str.14) #14
  br label %out.thread

if.end41:                                         ; preds = %if.end28
  %tg_pt_gp_alua_supported_states = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %16, i32 0, i32 2
  %27 = ptrtoint ptr %tg_pt_gp_alua_supported_states to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tg_pt_gp_alua_supported_states, align 4
  %call.i207 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i207, label %if.end41.rcu_read_unlock.exit217_crit_edge, label %land.lhs.true.i210

if.end41.rcu_read_unlock.exit217_crit_edge:       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit217

land.lhs.true.i210:                               ; preds = %if.end41
  %call1.i208 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i208)
  %tobool.not.i209 = icmp eq i32 %call1.i208, 0
  br i1 %tobool.not.i209, label %land.lhs.true.i210.rcu_read_unlock.exit217_crit_edge, label %land.lhs.true2.i212

land.lhs.true.i210.rcu_read_unlock.exit217_crit_edge: ; preds = %land.lhs.true.i210
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit217

land.lhs.true2.i212:                              ; preds = %land.lhs.true.i210
  %.b4.i211 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i211, label %land.lhs.true2.i212.rcu_read_unlock.exit217_crit_edge, label %if.then.i213

land.lhs.true2.i212.rcu_read_unlock.exit217_crit_edge: ; preds = %land.lhs.true2.i212
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit217

if.then.i213:                                     ; preds = %land.lhs.true2.i212
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.114, i32 noundef 724, ptr noundef nonnull @.str.116) #14
  br label %rcu_read_unlock.exit217

rcu_read_unlock.exit217:                          ; preds = %if.then.i213, %land.lhs.true2.i212.rcu_read_unlock.exit217_crit_edge, %land.lhs.true.i210.rcu_read_unlock.exit217_crit_edge, %if.end41.rcu_read_unlock.exit217_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !336
  %29 = tail call i32 @llvm.read_register.i32(metadata !325) #14
  %and.i.i.i.i.i214 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i214 to ptr
  %preempt_count.i.i.i.i215 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i215 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i215, align 4
  %sub.i.i.i216 = add i32 %32, -1
  store volatile i32 %sub.i.i.i216, ptr %preempt_count.i.i.i.i215, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  %33 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %data_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %34)
  %cmp43243 = icmp ugt i32 %34, 4
  br i1 %cmp43243, label %while.body.lr.ph, label %rcu_read_unlock.exit217.if.then126_crit_edge

rcu_read_unlock.exit217.if.then126_crit_edge:     ; preds = %rcu_read_unlock.exit217
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then126

while.body.lr.ph:                                 ; preds = %rcu_read_unlock.exit217
  %tg_pt_gps_lock = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 37, i32 6
  %tg_pt_gps_list = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 37, i32 10
  %se_port_lock = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 22
  %dev_sep_list = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 29
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %call2.pn245 = phi ptr [ %call2, %while.body.lr.ph ], [ %ptr.0246, %cleanup.while.body_crit_edge ]
  %len.0244 = phi i32 [ 4, %while.body.lr.ph ], [ %add, %cleanup.while.body_crit_edge ]
  %ptr.0246 = getelementptr i8, ptr %call2.pn245, i32 4
  %35 = ptrtoint ptr %ptr.0246 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %ptr.0246, align 1
  %37 = and i8 %36, 15
  %and45 = zext i8 %37 to i32
  %call46 = call fastcc i32 @core_alua_check_transition(i32 noundef %and45, i32 noundef %28, ptr noundef nonnull %primary, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %while.body.out.thread_crit_edge

while.body.out.thread_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.thread

if.end49:                                         ; preds = %while.body
  %38 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %primary, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool50.not = icmp eq i32 %39, 0
  %add.ptr87 = getelementptr i8, ptr %call2.pn245, i32 6
  %40 = ptrtoint ptr %add.ptr87 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 2)
  %41 = load i16, ptr %add.ptr87, align 1
  br i1 %tobool50.not, label %if.else, label %if.then51

if.then51:                                        ; preds = %if.end49
  tail call void @_raw_spin_lock(ptr noundef %tg_pt_gps_lock) #14
  %42 = ptrtoint ptr %tg_pt_gps_list to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pn185236 = load ptr, ptr %tg_pt_gps_list, align 4
  %cmp58.not238 = icmp eq ptr %.pn185236, %tg_pt_gps_list
  br i1 %cmp58.not238, label %if.then51.for.end.thread_crit_edge, label %if.then51.for.body_crit_edge

if.then51.for.body_crit_edge:                     ; preds = %if.then51
  br label %for.body

if.then51.for.end.thread_crit_edge:               ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.inc.for.end.thread_crit_edge, %if.then51.for.end.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %tg_pt_gps_lock) #14
  br label %out.thread

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then51.for.body_crit_edge
  %.pn185239 = phi ptr [ %.pn185, %for.inc.for.body_crit_edge ], [ %.pn185236, %if.then51.for.body_crit_edge ]
  %tg_pt_gp_valid_id = getelementptr i8, ptr %.pn185239, i32 -268
  %43 = ptrtoint ptr %tg_pt_gp_valid_id to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tg_pt_gp_valid_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool62.not = icmp eq i32 %44, 0
  br i1 %tobool62.not, label %for.body.for.inc_crit_edge, label %if.end64

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end64:                                         ; preds = %for.body
  %tg_pt_gp.0240 = getelementptr i8, ptr %.pn185239, i32 -272
  %45 = ptrtoint ptr %tg_pt_gp.0240 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %tg_pt_gp.0240, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %41, i16 %46)
  %cmp67.not = icmp eq i16 %41, %46
  br i1 %cmp67.not, label %for.end, label %if.end64.for.inc_crit_edge

if.end64.for.inc_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

for.inc:                                          ; preds = %if.end64.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %47 = ptrtoint ptr %.pn185239 to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pn185 = load ptr, ptr %.pn185239, align 4
  %cmp58.not = icmp eq ptr %.pn185, %tg_pt_gps_list
  br i1 %cmp58.not, label %for.inc.for.end.thread_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end.thread_crit_edge:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.thread

for.end:                                          ; preds = %if.end64
  %tg_pt_gp.0240.le = getelementptr i8, ptr %.pn185239, i32 -272
  %tg_pt_gp_ref_cnt = getelementptr i8, ptr %.pn185239, i32 -224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !338
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tg_pt_gp_ref_cnt, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %tg_pt_gp_ref_cnt, i32 1, i32 3, i32 1) #14
  %48 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tg_pt_gp_ref_cnt, ptr %tg_pt_gp_ref_cnt, i32 1, ptr elementtype(i32) %tg_pt_gp_ref_cnt) #14, !srcloc !339
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !340
  tail call void @_raw_spin_unlock(ptr noundef %tg_pt_gps_lock) #14
  %call73 = tail call i32 @core_alua_do_port_transition(ptr noundef %tg_pt_gp.0240.le, ptr noundef %1, ptr noundef %3, ptr noundef %7, i32 noundef %and45, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  tail call void @_raw_spin_lock(ptr noundef %tg_pt_gps_lock) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !341
  %call.i.i.i218 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tg_pt_gp_ref_cnt, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %tg_pt_gp_ref_cnt, i32 1, i32 3, i32 1) #14
  %49 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tg_pt_gp_ref_cnt, ptr %tg_pt_gp_ref_cnt, i32 1, ptr elementtype(i32) %tg_pt_gp_ref_cnt) #14, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !343
  tail call void @_raw_spin_unlock(ptr noundef %tg_pt_gps_lock) #14
  br i1 %tobool74.not, label %for.end.cleanup_crit_edge, label %for.end.out.thread_crit_edge

for.end.out.thread_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.thread

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else:                                          ; preds = %if.end49
  tail call void @_raw_spin_lock(ptr noundef %se_port_lock) #14
  br label %for.cond93

for.cond93:                                       ; preds = %for.body99.for.cond93_crit_edge, %if.else
  %.pn.in = phi ptr [ %dev_sep_list, %if.else ], [ %.pn, %for.body99.for.cond93_crit_edge ]
  %50 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %50)
  %.pn = load ptr, ptr %.pn.in, align 8
  %cmp95.not = icmp eq ptr %.pn, %dev_sep_list
  br i1 %cmp95.not, label %if.end120.thread, label %for.body99

if.end120.thread:                                 ; preds = %for.cond93
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock(ptr noundef %se_port_lock) #14
  br label %out.thread

for.body99:                                       ; preds = %for.cond93
  %lun_rtpi = getelementptr i8, ptr %.pn, i32 -704
  %51 = ptrtoint ptr %lun_rtpi to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %lun_rtpi, align 8
  %cmp102.not = icmp eq i16 %52, %41
  br i1 %cmp102.not, label %if.end120, label %for.body99.for.cond93_crit_edge

for.body99.for.cond93_crit_edge:                  ; preds = %for.body99
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond93

if.end120:                                        ; preds = %for.body99
  %lun.0.le = getelementptr i8, ptr %.pn, i32 -720
  tail call void @_raw_spin_unlock(ptr noundef %se_port_lock) #14
  %call107 = tail call fastcc i32 @core_alua_set_tg_pt_secondary_state(ptr noundef %lun.0.le, i32 noundef 1, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  tail call void @_raw_spin_lock(ptr noundef %se_port_lock) #14
  tail call void @_raw_spin_unlock(ptr noundef %se_port_lock) #14
  br i1 %tobool108.not, label %if.end120.cleanup_crit_edge, label %if.end120.out.thread_crit_edge

if.end120.out.thread_crit_edge:                   ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.thread

if.end120.cleanup_crit_edge:                      ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %if.end120.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %add = add i32 %len.0244, 4
  %53 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %data_length, align 4
  %cmp43 = icmp ult i32 %add, %54
  br i1 %cmp43, label %cleanup.while.body_crit_edge, label %cleanup.if.then126_crit_edge

cleanup.if.then126_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then126

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

out.thread:                                       ; preds = %if.end120.out.thread_crit_edge, %if.end120.thread, %for.end.out.thread_crit_edge, %for.end.thread, %while.body.out.thread_crit_edge, %if.then37, %rcu_read_unlock.exit
  %rc.2.ph = phi i32 [ 2, %if.then37 ], [ 2, %rcu_read_unlock.exit ], [ 9, %if.end120.thread ], [ 9, %for.end.thread ], [ %call46, %while.body.out.thread_crit_edge ], [ 9, %if.end120.out.thread_crit_edge ], [ 9, %for.end.out.thread_crit_edge ]
  tail call void @transport_kunmap_data_sg(ptr noundef %cmd) #14
  br label %cleanup128

out:                                              ; preds = %rcu_read_unlock.exit206
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @transport_kunmap_data_sg(ptr noundef %cmd) #14
  br label %cleanup128

if.then126:                                       ; preds = %cleanup.if.then126_crit_edge, %rcu_read_unlock.exit217.if.then126_crit_edge
  tail call void @transport_kunmap_data_sg(ptr noundef %cmd) #14
  tail call void @target_complete_cmd(ptr noundef %cmd, i8 noundef zeroext 0) #14
  br label %cleanup128

cleanup128:                                       ; preds = %if.then126, %out, %out.thread, %if.end.cleanup128_crit_edge, %do.end
  %retval.0 = phi i32 [ 9, %do.end ], [ 10, %if.end.cleanup128_crit_edge ], [ 0, %if.then126 ], [ 2, %out ], [ %rc.2.ph, %out.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %primary) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @core_alua_check_transition(i32 noundef %state, i32 noundef %valid, ptr nocapture noundef writeonly %primary, i32 noundef %explicit) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %state, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb6
    i32 3, label %sw.bb11
    i32 4, label %sw.bb16
    i32 14, label %sw.bb21
    i32 15, label %sw.bb26
  ]

sw.bb:                                            ; preds = %entry
  %and = and i32 %valid, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb.core_alua_dump_state.exit_crit_edge, label %if.end

sw.bb.core_alua_dump_state.exit_crit_edge:        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %core_alua_dump_state.exit

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  %1 = ptrtoint ptr %primary to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %primary, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  %and2 = and i32 %valid, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %sw.bb1.core_alua_dump_state.exit_crit_edge, label %if.end5

sw.bb1.core_alua_dump_state.exit_crit_edge:       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #16
  br label %core_alua_dump_state.exit

if.end5:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %primary to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %primary, align 4
  br label %return

sw.bb6:                                           ; preds = %entry
  %and7 = and i32 %valid, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %sw.bb6.core_alua_dump_state.exit_crit_edge, label %if.end10

sw.bb6.core_alua_dump_state.exit_crit_edge:       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #16
  br label %core_alua_dump_state.exit

if.end10:                                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %primary to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %primary, align 4
  br label %return

sw.bb11:                                          ; preds = %entry
  %and12 = and i32 %valid, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %sw.bb11.core_alua_dump_state.exit_crit_edge, label %if.end15

sw.bb11.core_alua_dump_state.exit_crit_edge:      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #16
  br label %core_alua_dump_state.exit

if.end15:                                         ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %primary to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %primary, align 4
  br label %return

sw.bb16:                                          ; preds = %entry
  %and17 = and i32 %valid, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %sw.bb16.core_alua_dump_state.exit_crit_edge, label %if.end20

sw.bb16.core_alua_dump_state.exit_crit_edge:      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #16
  br label %core_alua_dump_state.exit

if.end20:                                         ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %primary to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %primary, align 4
  br label %return

sw.bb21:                                          ; preds = %entry
  %and22 = and i32 %valid, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %sw.bb21.core_alua_dump_state.exit_crit_edge, label %if.end25

sw.bb21.core_alua_dump_state.exit_crit_edge:      ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #16
  br label %core_alua_dump_state.exit

if.end25:                                         ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %primary to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %primary, align 4
  br label %return

sw.bb26:                                          ; preds = %entry
  %and27 = and i32 %valid, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp ne i32 %and27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %explicit)
  %tobool29.not = icmp eq i32 %explicit, 0
  %or.cond = and i1 %tobool28.not, %tobool29.not
  br i1 %or.cond, label %if.end31, label %sw.bb26.core_alua_dump_state.exit_crit_edge

sw.bb26.core_alua_dump_state.exit_crit_edge:      ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #16
  br label %core_alua_dump_state.exit

if.end31:                                         ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %primary to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %primary, align 4
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %state) #17
  br label %return

core_alua_dump_state.exit:                        ; preds = %sw.bb26.core_alua_dump_state.exit_crit_edge, %sw.bb21.core_alua_dump_state.exit_crit_edge, %sw.bb16.core_alua_dump_state.exit_crit_edge, %sw.bb11.core_alua_dump_state.exit_crit_edge, %sw.bb6.core_alua_dump_state.exit_crit_edge, %sw.bb1.core_alua_dump_state.exit_crit_edge, %sw.bb.core_alua_dump_state.exit_crit_edge
  %retval.0.i = phi ptr [ @.str.134, %sw.bb1.core_alua_dump_state.exit_crit_edge ], [ @.str.135, %sw.bb16.core_alua_dump_state.exit_crit_edge ], [ @.str.136, %sw.bb6.core_alua_dump_state.exit_crit_edge ], [ @.str.137, %sw.bb11.core_alua_dump_state.exit_crit_edge ], [ @.str.59, %sw.bb21.core_alua_dump_state.exit_crit_edge ], [ @.str.138, %sw.bb26.core_alua_dump_state.exit_crit_edge ], [ @.str.133, %sw.bb.core_alua_dump_state.exit_crit_edge ]
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, ptr noundef nonnull %retval.0.i) #17
  br label %return

return:                                           ; preds = %core_alua_dump_state.exit, %do.end, %if.end31, %if.end25, %if.end20, %if.end15, %if.end10, %if.end5, %if.end
  %retval.0 = phi i32 [ 9, %do.end ], [ 9, %core_alua_dump_state.exit ], [ 0, %if.end31 ], [ 0, %if.end25 ], [ 0, %if.end20 ], [ 0, %if.end15 ], [ 0, %if.end10 ], [ 0, %if.end5 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @core_alua_do_port_transition(ptr noundef %l_tg_pt_gp, ptr nocapture noundef readonly %l_dev, ptr noundef %l_lun, ptr noundef %l_nacl, i32 noundef %new_state, i32 noundef %explicit) local_unnamed_addr #0 align 64 {
entry:
  %primary = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %primary) #14
  %transport_flags = getelementptr inbounds %struct.se_device, ptr %l_dev, i32 0, i32 3
  %0 = ptrtoint ptr %transport_flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %transport_flags, align 4
  %2 = and i8 %1, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %tg_pt_gp_alua_supported_states = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %l_tg_pt_gp, i32 0, i32 2
  %3 = ptrtoint ptr %tg_pt_gp_alua_supported_states to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tg_pt_gp_alua_supported_states, align 4
  %call = call fastcc i32 @core_alua_check_transition(i32 noundef %new_state, i32 noundef %4, ptr noundef nonnull %primary, i32 noundef %explicit)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %dev_alua_lu_gp_mem = getelementptr inbounds %struct.se_device, ptr %l_dev, i32 0, i32 27
  %5 = ptrtoint ptr %dev_alua_lu_gp_mem to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_alua_lu_gp_mem, align 8
  %lu_gp_mem_lock = getelementptr inbounds %struct.t10_alua_lu_gp_member, ptr %6, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lu_gp_mem_lock) #14
  %lu_gp4 = getelementptr inbounds %struct.t10_alua_lu_gp_member, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %lu_gp4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lu_gp4, align 4
  %lu_gp_ref_cnt = getelementptr inbounds %struct.t10_alua_lu_gp, ptr %8, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %lu_gp_ref_cnt, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %lu_gp_ref_cnt, i32 1, i32 3, i32 1) #14
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %lu_gp_ref_cnt, ptr %lu_gp_ref_cnt, i32 1, ptr elementtype(i32) %lu_gp_ref_cnt) #14, !srcloc !339
  tail call void @_raw_spin_unlock(ptr noundef %lu_gp_mem_lock) #14
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool6.not = icmp eq i16 %11, 0
  br i1 %tobool6.not, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  %tg_pt_gp_alua_lun = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %l_tg_pt_gp, i32 0, i32 19
  %12 = ptrtoint ptr %tg_pt_gp_alua_lun to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %l_lun, ptr %tg_pt_gp_alua_lun, align 4
  %tg_pt_gp_alua_nacl = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %l_tg_pt_gp, i32 0, i32 20
  %13 = ptrtoint ptr %tg_pt_gp_alua_nacl to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %l_nacl, ptr %tg_pt_gp_alua_nacl, align 4
  %call8 = tail call fastcc i32 @core_alua_do_transition_tg_pt(ptr noundef %l_tg_pt_gp, i32 noundef %new_state, i32 noundef %explicit)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !341
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %lu_gp_ref_cnt, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %lu_gp_ref_cnt, i32 1, i32 3, i32 1) #14
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %lu_gp_ref_cnt, ptr %lu_gp_ref_cnt, i32 1, ptr elementtype(i32) %lu_gp_ref_cnt) #14, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !343
  br label %cleanup

if.end10:                                         ; preds = %if.end3
  %lu_gp_lock = getelementptr inbounds %struct.t10_alua_lu_gp, ptr %8, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lu_gp_lock) #14
  %lu_gp_mem_list = getelementptr inbounds %struct.t10_alua_lu_gp, ptr %8, i32 0, i32 7
  %15 = ptrtoint ptr %lu_gp_mem_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn161 = load ptr, ptr %lu_gp_mem_list, align 4
  %cmp13.not162 = icmp eq ptr %.pn161, %lu_gp_mem_list
  br i1 %cmp13.not162, label %for.end70.thread, label %if.end10.for.body_crit_edge

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  br label %for.body

for.end70.thread:                                 ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock(ptr noundef %lu_gp_lock) #14
  br label %do.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %if.end10.for.body_crit_edge
  %.pn164 = phi ptr [ %.pn, %for.end.for.body_crit_edge ], [ %.pn161, %if.end10.for.body_crit_edge ]
  %rc.0163 = phi i32 [ %rc.3, %for.end.for.body_crit_edge ], [ 0, %if.end10.for.body_crit_edge ]
  %lu_gp_mem_dev = getelementptr i8, ptr %.pn164, i32 -4
  %16 = ptrtoint ptr %lu_gp_mem_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lu_gp_mem_dev, align 4
  %lu_gp_mem_ref_cnt = getelementptr i8, ptr %.pn164, i32 -56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !338
  %call.i.i.i147 = tail call zeroext i1 @__kasan_check_write(ptr noundef %lu_gp_mem_ref_cnt, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %lu_gp_mem_ref_cnt, i32 1, i32 3, i32 1) #14
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %lu_gp_mem_ref_cnt, ptr %lu_gp_mem_ref_cnt, i32 1, ptr elementtype(i32) %lu_gp_mem_ref_cnt) #14, !srcloc !339
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !340
  tail call void @_raw_spin_unlock(ptr noundef %lu_gp_lock) #14
  %tg_pt_gps_lock = getelementptr inbounds %struct.se_device, ptr %17, i32 0, i32 37, i32 6
  tail call void @_raw_spin_lock(ptr noundef %tg_pt_gps_lock) #14
  %tg_pt_gps_list = getelementptr inbounds %struct.se_device, ptr %17, i32 0, i32 37, i32 10
  %19 = ptrtoint ptr %tg_pt_gps_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn146154 = load ptr, ptr %tg_pt_gps_list, align 4
  %cmp24.not156 = icmp eq ptr %.pn146154, %tg_pt_gps_list
  br i1 %cmp24.not156, label %for.body.for.end_crit_edge, label %for.body.for.body27_crit_edge

for.body.for.body27_crit_edge:                    ; preds = %for.body
  br label %for.body27

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body27:                                       ; preds = %for.inc.for.body27_crit_edge, %for.body.for.body27_crit_edge
  %.pn146158 = phi ptr [ %.pn146, %for.inc.for.body27_crit_edge ], [ %.pn146154, %for.body.for.body27_crit_edge ]
  %rc.1157 = phi i32 [ %rc.2, %for.inc.for.body27_crit_edge ], [ %rc.0163, %for.body.for.body27_crit_edge ]
  %tg_pt_gp.0159 = getelementptr i8, ptr %.pn146158, i32 -272
  %tg_pt_gp_valid_id = getelementptr i8, ptr %.pn146158, i32 -268
  %20 = ptrtoint ptr %tg_pt_gp_valid_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tg_pt_gp_valid_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool28.not = icmp eq i32 %21, 0
  br i1 %tobool28.not, label %for.body27.for.inc_crit_edge, label %if.end30

for.body27.for.inc_crit_edge:                     ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end30:                                         ; preds = %for.body27
  %22 = ptrtoint ptr %l_tg_pt_gp to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %l_tg_pt_gp, align 4
  %24 = ptrtoint ptr %tg_pt_gp.0159 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %tg_pt_gp.0159, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %25)
  %cmp34.not = icmp eq i16 %23, %25
  br i1 %cmp34.not, label %if.end37, label %if.end30.for.inc_crit_edge

if.end30.for.inc_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end37:                                         ; preds = %if.end30
  %cmp38 = icmp eq ptr %tg_pt_gp.0159, %l_tg_pt_gp
  %spec.select = select i1 %cmp38, ptr %l_lun, ptr null
  %spec.select171 = select i1 %cmp38, ptr %l_nacl, ptr null
  %26 = getelementptr i8, ptr %.pn146158, i32 16
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %spec.select, ptr %26, align 4
  %28 = getelementptr i8, ptr %.pn146158, i32 20
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %spec.select171, ptr %28, align 4
  %tg_pt_gp_ref_cnt = getelementptr i8, ptr %.pn146158, i32 -224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !338
  %call.i.i.i148 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tg_pt_gp_ref_cnt, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %tg_pt_gp_ref_cnt, i32 1, i32 3, i32 1) #14
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tg_pt_gp_ref_cnt, ptr %tg_pt_gp_ref_cnt, i32 1, ptr elementtype(i32) %tg_pt_gp_ref_cnt) #14, !srcloc !339
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !340
  tail call void @_raw_spin_unlock(ptr noundef %tg_pt_gps_lock) #14
  %call48 = tail call fastcc i32 @core_alua_do_transition_tg_pt(ptr noundef %tg_pt_gp.0159, i32 noundef %new_state, i32 noundef %explicit)
  tail call void @_raw_spin_lock(ptr noundef %tg_pt_gps_lock) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !341
  %call.i.i.i149 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tg_pt_gp_ref_cnt, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %tg_pt_gp_ref_cnt, i32 1, i32 3, i32 1) #14
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tg_pt_gp_ref_cnt, ptr %tg_pt_gp_ref_cnt, i32 1, ptr elementtype(i32) %tg_pt_gp_ref_cnt) #14, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !343
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool52.not = icmp eq i32 %call48, 0
  br i1 %tobool52.not, label %if.end37.for.inc_crit_edge, label %if.end37.for.end_crit_edge

if.end37.for.end_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end37.for.inc_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

for.inc:                                          ; preds = %if.end37.for.inc_crit_edge, %if.end30.for.inc_crit_edge, %for.body27.for.inc_crit_edge
  %rc.2 = phi i32 [ %rc.1157, %if.end30.for.inc_crit_edge ], [ 0, %if.end37.for.inc_crit_edge ], [ %rc.1157, %for.body27.for.inc_crit_edge ]
  %32 = ptrtoint ptr %.pn146158 to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn146 = load ptr, ptr %.pn146158, align 4
  %cmp24.not = icmp eq ptr %.pn146, %tg_pt_gps_list
  br i1 %cmp24.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body27_crit_edge

for.inc.for.body27_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body27

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end37.for.end_crit_edge, %for.body.for.end_crit_edge
  %rc.3 = phi i32 [ %rc.0163, %for.body.for.end_crit_edge ], [ %call48, %if.end37.for.end_crit_edge ], [ %rc.2, %for.inc.for.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %tg_pt_gps_lock) #14
  tail call void @_raw_spin_lock(ptr noundef %lu_gp_lock) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !341
  %call.i.i.i150 = tail call zeroext i1 @__kasan_check_write(ptr noundef %lu_gp_mem_ref_cnt, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %lu_gp_mem_ref_cnt, i32 1, i32 3, i32 1) #14
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %lu_gp_mem_ref_cnt, ptr %lu_gp_mem_ref_cnt, i32 1, ptr elementtype(i32) %lu_gp_mem_ref_cnt) #14, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !343
  %34 = ptrtoint ptr %.pn164 to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pn = load ptr, ptr %.pn164, align 4
  %cmp13.not = icmp eq ptr %.pn, %lu_gp_mem_list
  br i1 %cmp13.not, label %for.end70, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end70:                                        ; preds = %for.end
  tail call void @_raw_spin_unlock(ptr noundef %lu_gp_lock) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.3)
  %tobool72.not = icmp eq i32 %rc.3, 0
  br i1 %tobool72.not, label %for.end70.do.body_crit_edge, label %for.end70.if.end87_crit_edge

for.end70.if.end87_crit_edge:                     ; preds = %for.end70
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end87

for.end70.do.body_crit_edge:                      ; preds = %for.end70
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

do.body:                                          ; preds = %for.end70.do.body_crit_edge, %for.end70.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @core_alua_do_port_transition.__UNIQUE_ID_ddebug218, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@core_alua_do_port_transition, %if.then80)) #14
          to label %if.end87 [label %if.then80], !srcloc !337

if.then80:                                        ; preds = %do.body
  %lu_gp_group = getelementptr inbounds %struct.t10_alua_lu_gp, ptr %8, i32 0, i32 5
  %35 = ptrtoint ptr %lu_gp_group to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %lu_gp_group, align 4
  %37 = ptrtoint ptr %l_tg_pt_gp to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %l_tg_pt_gp, align 4
  %conv83 = zext i16 %38 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %explicit)
  %tobool84.not = icmp eq i32 %explicit, 0
  %cond = select i1 %tobool84.not, ptr @.str.26, ptr @.str.25
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %new_state)
  %39 = icmp ult i32 %new_state, 16
  br i1 %39, label %switch.lookup, label %if.then80.core_alua_dump_state.exit_crit_edge

if.then80.core_alua_dump_state.exit_crit_edge:    ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #16
  br label %core_alua_dump_state.exit

switch.lookup:                                    ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #16
  %switch.gep = getelementptr inbounds [16 x ptr], ptr @switch.table.core_alua_do_port_transition, i32 0, i32 %new_state
  %40 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %40)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %core_alua_dump_state.exit

core_alua_dump_state.exit:                        ; preds = %switch.lookup, %if.then80.core_alua_dump_state.exit_crit_edge
  %retval.0.i151 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.22, %if.then80.core_alua_dump_state.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @core_alua_do_port_transition.__UNIQUE_ID_ddebug218, ptr noundef nonnull @.str.24, ptr noundef %36, i32 noundef %conv83, ptr noundef nonnull %cond, ptr noundef nonnull %retval.0.i151) #14
  br label %if.end87

if.end87:                                         ; preds = %core_alua_dump_state.exit, %do.body, %for.end70.if.end87_crit_edge
  %rc.0.lcssa169 = phi i32 [ 0, %do.body ], [ 0, %core_alua_dump_state.exit ], [ %rc.3, %for.end70.if.end87_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !341
  %call.i.i.i152 = tail call zeroext i1 @__kasan_check_write(ptr noundef %lu_gp_ref_cnt, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %lu_gp_ref_cnt, i32 1, i32 3, i32 1) #14
  %41 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %lu_gp_ref_cnt, ptr %lu_gp_ref_cnt, i32 1, ptr elementtype(i32) %lu_gp_ref_cnt) #14, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !343
  br label %cleanup

cleanup:                                          ; preds = %if.end87, %if.then7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0.lcssa169, %if.end87 ], [ %call8, %if.then7 ], [ -19, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %primary) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @core_alua_set_tg_pt_secondary_state(ptr noundef %lun, i32 noundef %explicit, i32 noundef %offline) unnamed_addr #0 align 64 {
entry:
  %pos.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !325) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !335
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.114, i32 noundef 696, ptr noundef nonnull @.str.115) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %lun_tg_pt_gp = getelementptr inbounds %struct.se_lun, ptr %lun, i32 0, i32 14
  %4 = ptrtoint ptr %lun_tg_pt_gp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %lun_tg_pt_gp, align 8
  %call = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b58 = load i1, ptr @core_alua_set_tg_pt_secondary_state.__warned, align 1
  br i1 %.b58, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @core_alua_set_tg_pt_secondary_state.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1223, ptr noundef nonnull @.str.7) #14
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %if.then10, label %if.end16

if.then10:                                        ; preds = %do.end7
  %call.i60 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i60, label %if.then10.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i63

if.then10.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i63:                                ; preds = %if.then10
  %call1.i61 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i61)
  %tobool.not.i62 = icmp eq i32 %call1.i61, 0
  br i1 %tobool.not.i62, label %land.lhs.true.i63.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i65

land.lhs.true.i63.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i63
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i65:                               ; preds = %land.lhs.true.i63
  %.b4.i64 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i64, label %land.lhs.true2.i65.rcu_read_unlock.exit_crit_edge, label %if.then.i66

land.lhs.true2.i65.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i65
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i66:                                      ; preds = %land.lhs.true2.i65
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.114, i32 noundef 724, ptr noundef nonnull @.str.116) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i66, %land.lhs.true2.i65.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i63.rcu_read_unlock.exit_crit_edge, %if.then10.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !336
  %6 = tail call i32 @llvm.read_register.i32(metadata !325) #14
  %and.i.i.i.i.i67 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i67 to ptr
  %preempt_count.i.i.i.i68 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i68 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i68, align 4
  %sub.i.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i68, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139) #17
  br label %cleanup

if.end16:                                         ; preds = %do.end7
  %tg_pt_gp_trans_delay_msecs = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %5, i32 0, i32 6
  %10 = ptrtoint ptr %tg_pt_gp_trans_delay_msecs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tg_pt_gp_trans_delay_msecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offline)
  %tobool17.not = icmp eq i32 %offline, 0
  %lun_tg_pt_secondary_offline19 = getelementptr inbounds %struct.se_lun, ptr %lun, i32 0, i32 11
  %call.i.i59 = tail call zeroext i1 @__kasan_check_write(ptr noundef %lun_tg_pt_secondary_offline19, i32 noundef 4) #14
  %not.tobool17.not = xor i1 %tobool17.not, true
  %. = zext i1 %not.tobool17.not to i32
  %12 = ptrtoint ptr %lun_tg_pt_secondary_offline19 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 %., ptr %lun_tg_pt_secondary_offline19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %explicit)
  %tobool21.not = icmp eq i32 %explicit, 0
  %cond = select i1 %tobool21.not, i32 2, i32 1
  %lun_tg_pt_secondary_stat = getelementptr inbounds %struct.se_lun, ptr %lun, i32 0, i32 9
  %13 = ptrtoint ptr %lun_tg_pt_secondary_stat to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %cond, ptr %lun_tg_pt_secondary_stat, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @core_alua_set_tg_pt_secondary_state.__UNIQUE_ID_ddebug221, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@core_alua_set_tg_pt_secondary_state, %if.then28)) #14
          to label %do.end36 [label %if.then28], !srcloc !337

if.then28:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  %cond30 = select i1 %tobool21.not, ptr @.str.26, ptr @.str.25
  %tg_pt_gp_group = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %5, i32 0, i32 16
  %14 = ptrtoint ptr %tg_pt_gp_group to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tg_pt_gp_group, align 4
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %5, align 4
  %conv = zext i16 %17 to i32
  %cond33 = select i1 %tobool17.not, ptr @.str.143, ptr @.str.142
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @core_alua_set_tg_pt_secondary_state.__UNIQUE_ID_ddebug221, ptr noundef nonnull @.str.141, ptr noundef nonnull %cond30, ptr noundef %15, i32 noundef %conv, ptr noundef nonnull %cond33) #14
  br label %do.end36

do.end36:                                         ; preds = %if.then28, %if.end16
  %call.i69 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i69, label %do.end36.rcu_read_unlock.exit79_crit_edge, label %land.lhs.true.i72

do.end36.rcu_read_unlock.exit79_crit_edge:        ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit79

land.lhs.true.i72:                                ; preds = %do.end36
  %call1.i70 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i70)
  %tobool.not.i71 = icmp eq i32 %call1.i70, 0
  br i1 %tobool.not.i71, label %land.lhs.true.i72.rcu_read_unlock.exit79_crit_edge, label %land.lhs.true2.i74

land.lhs.true.i72.rcu_read_unlock.exit79_crit_edge: ; preds = %land.lhs.true.i72
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit79

land.lhs.true2.i74:                               ; preds = %land.lhs.true.i72
  %.b4.i73 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i73, label %land.lhs.true2.i74.rcu_read_unlock.exit79_crit_edge, label %if.then.i75

land.lhs.true2.i74.rcu_read_unlock.exit79_crit_edge: ; preds = %land.lhs.true2.i74
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit79

if.then.i75:                                      ; preds = %land.lhs.true2.i74
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.114, i32 noundef 724, ptr noundef nonnull @.str.116) #14
  br label %rcu_read_unlock.exit79

rcu_read_unlock.exit79:                           ; preds = %if.then.i75, %land.lhs.true2.i74.rcu_read_unlock.exit79_crit_edge, %land.lhs.true.i72.rcu_read_unlock.exit79_crit_edge, %do.end36.rcu_read_unlock.exit79_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !336
  %18 = tail call i32 @llvm.read_register.i32(metadata !325) #14
  %and.i.i.i.i.i76 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i76 to ptr
  %preempt_count.i.i.i.i77 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i77 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i77, align 4
  %sub.i.i.i78 = add i32 %21, -1
  store volatile i32 %sub.i.i.i78, ptr %preempt_count.i.i.i.i77, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not = icmp eq i32 %11, 0
  br i1 %cmp.not, label %rcu_read_unlock.exit79.if.end40_crit_edge, label %if.then38

rcu_read_unlock.exit79.if.end40_crit_edge:        ; preds = %rcu_read_unlock.exit79
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

if.then38:                                        ; preds = %rcu_read_unlock.exit79
  call void @__sanitizer_cov_trace_pc() #16
  %call39 = tail call i32 @msleep_interruptible(i32 noundef %11) #14
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %rcu_read_unlock.exit79.if.end40_crit_edge
  %lun_tg_pt_secondary_write_md = getelementptr inbounds %struct.se_lun, ptr %lun, i32 0, i32 10
  %22 = ptrtoint ptr %lun_tg_pt_secondary_write_md to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %lun_tg_pt_secondary_write_md, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool41.not = icmp eq i32 %23, 0
  br i1 %tobool41.not, label %if.end40.cleanup_crit_edge, label %if.then42

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then42:                                        ; preds = %if.end40
  %lun_tpg.i = getelementptr inbounds %struct.se_lun, ptr %lun, i32 0, i32 16
  %24 = ptrtoint ptr %lun_tpg.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lun_tpg.i, align 8
  %lun_tg_pt_md_mutex.i = getelementptr inbounds %struct.se_lun, ptr %lun, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %lun_tg_pt_md_mutex.i, i32 noundef 0) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 1024) #18
  %tobool.not.i80 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i80, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #16
  %call1.i81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124) #17
  br label %core_alua_update_tpg_secondary_metadata.exit

if.end.i:                                         ; preds = %if.then42
  %lun_tg_pt_secondary_offline.i = getelementptr inbounds %struct.se_lun, ptr %lun, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %lun_tg_pt_secondary_offline.i, i32 noundef 4) #14
  %27 = ptrtoint ptr %lun_tg_pt_secondary_offline.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %lun_tg_pt_secondary_offline.i, align 4
  %29 = ptrtoint ptr %lun_tg_pt_secondary_stat to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %lun_tg_pt_secondary_stat, align 8
  %call3.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i.i, i32 noundef 1024, ptr noundef nonnull @.str.145, i32 noundef %28, i32 noundef %30) #14
  %se_tpg_tfo.i = getelementptr inbounds %struct.se_portal_group, ptr %25, i32 0, i32 10
  %31 = ptrtoint ptr %se_tpg_tfo.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %se_tpg_tfo.i, align 4
  %tpg_get_tag.i = getelementptr inbounds %struct.target_core_fabric_ops, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %tpg_get_tag.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tpg_get_tag.i, align 4
  %cmp.not.i = icmp eq ptr %34, null
  %fabric_name13.i = getelementptr inbounds %struct.target_core_fabric_ops, ptr %32, i32 0, i32 2
  %35 = ptrtoint ptr %fabric_name13.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fabric_name13.i, align 4
  %tpg_get_wwn15.i = getelementptr inbounds %struct.target_core_fabric_ops, ptr %32, i32 0, i32 5
  %37 = ptrtoint ptr %tpg_get_wwn15.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tpg_get_wwn15.i, align 4
  %call16.i = tail call ptr %38(ptr noundef %25) #14
  br i1 %cmp.not.i, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %39 = ptrtoint ptr %se_tpg_tfo.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %se_tpg_tfo.i, align 4
  %tpg_get_tag9.i = getelementptr inbounds %struct.target_core_fabric_ops, ptr %40, i32 0, i32 6
  %41 = ptrtoint ptr %tpg_get_tag9.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tpg_get_tag9.i, align 4
  %call10.i = tail call zeroext i16 %42(ptr noundef %25) #14
  %conv.i = zext i16 %call10.i to i32
  %43 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %lun, align 8
  %call11.i = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.146, ptr noundef nonnull @db_root, ptr noundef %36, ptr noundef %call16.i, i32 noundef %conv.i, i64 noundef %44) #14
  br label %if.end19.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %45 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %lun, align 8
  %call18.i = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.147, ptr noundef nonnull @db_root, ptr noundef %36, ptr noundef %call16.i, i64 noundef %46) #14
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.else.i, %if.then4.i
  %path.0.i = phi ptr [ %call11.i, %if.then4.i ], [ %call18.i, %if.else.i ]
  %tobool20.not.i = icmp eq ptr %path.0.i, null
  br i1 %tobool20.not.i, label %if.end19.i.out_free.i_crit_edge, label %if.end22.i

if.end19.i.out_free.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free.i

if.end22.i:                                       ; preds = %if.end19.i
  %call.i.i82 = tail call ptr @filp_open(ptr noundef nonnull %path.0.i, i32 noundef 578, i16 noundef zeroext 384) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos.i.i) #14
  %47 = ptrtoint ptr %pos.i.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 0, ptr %pos.i.i, align 8
  %cmp.i.i.i = icmp ugt ptr %call.i.i82, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #16
  %call2.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef nonnull %path.0.i) #17
  br label %core_alua_write_tpg_metadata.exit.i

if.end.i.i:                                       ; preds = %if.end22.i
  %call3.i.i = call i32 @kernel_write(ptr noundef %call.i.i82, ptr noundef nonnull %call7.i.i.i, i32 noundef %call3.i, ptr noundef nonnull %pos.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp.i.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp.i.i, label %do.end7.i.i, label %if.end.i.i.if.end10.i.i_crit_edge

if.end.i.i.if.end10.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.i.i

do.end7.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call9.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, ptr noundef nonnull %path.0.i) #17
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %do.end7.i.i, %if.end.i.i.if.end10.i.i_crit_edge
  call void @fput(ptr noundef %call.i.i82) #14
  br label %core_alua_write_tpg_metadata.exit.i

core_alua_write_tpg_metadata.exit.i:              ; preds = %if.end10.i.i, %do.end.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos.i.i) #14
  call void @kfree(ptr noundef nonnull %path.0.i) #14
  br label %out_free.i

out_free.i:                                       ; preds = %core_alua_write_tpg_metadata.exit.i, %if.end19.i.out_free.i_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #14
  br label %core_alua_update_tpg_secondary_metadata.exit

core_alua_update_tpg_secondary_metadata.exit:     ; preds = %out_free.i, %do.end.i
  call void @mutex_unlock(ptr noundef %lun_tg_pt_md_mutex.i) #14
  br label %cleanup

cleanup:                                          ; preds = %core_alua_update_tpg_secondary_metadata.exit, %if.end40.cleanup_crit_edge, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ -22, %rcu_read_unlock.exit ], [ 0, %core_alua_update_tpg_secondary_metadata.exit ], [ 0, %if.end40.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @target_alua_state_check(ptr nocapture noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %se_dev = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 19
  %0 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_dev, align 4
  %t_task_cdb = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 30
  %2 = ptrtoint ptr %t_task_cdb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %t_task_cdb, align 8
  %se_lun = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 20
  %4 = ptrtoint ptr %se_lun to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %se_lun, align 8
  %se_hba = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 35
  %6 = ptrtoint ptr %se_hba to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %se_hba, align 8
  %hba_flags = getelementptr inbounds %struct.se_hba, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %hba_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hba_flags, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %transport_flags = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %transport_flags to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %transport_flags, align 4
  %12 = and i8 %11, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool2.not = icmp eq i8 %12, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %lun_tg_pt_secondary_offline = getelementptr inbounds %struct.se_lun, ptr %5, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %lun_tg_pt_secondary_offline, i32 noundef 4) #14
  %13 = ptrtoint ptr %lun_tg_pt_secondary_offline to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %lun_tg_pt_secondary_offline, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool5.not = icmp eq i32 %14, 0
  br i1 %tobool5.not, label %if.end13, label %do.body

do.body:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @target_alua_state_check.__UNIQUE_ID_ddebug211, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_alua_state_check, %if.then11)) #14
          to label %cleanup [label %if.then11], !srcloc !337

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @target_alua_state_check.__UNIQUE_ID_ddebug211, ptr noundef nonnull @.str.16) #14
  br label %cleanup

if.end13:                                         ; preds = %if.end4
  %15 = tail call i32 @llvm.read_register.i32(metadata !325) #14
  %and.i.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %18, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !335
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %if.end13.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end13.rcu_read_lock.exit_crit_edge:            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end13
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.114, i32 noundef 696, ptr noundef nonnull @.str.115) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end13.rcu_read_lock.exit_crit_edge
  %lun_tg_pt_gp = getelementptr inbounds %struct.se_lun, ptr %5, i32 0, i32 14
  %19 = ptrtoint ptr %lun_tg_pt_gp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %lun_tg_pt_gp, align 8
  %call19 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end28_crit_edge

rcu_read_lock.exit.do.end28_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end28

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call21 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.lhs.true.do.end28_crit_edge, label %land.lhs.true23

land.lhs.true.do.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end28

land.lhs.true23:                                  ; preds = %land.lhs.true
  %.b102 = load i1, ptr @target_alua_state_check.__warned, align 1
  br i1 %.b102, label %land.lhs.true23.do.end28_crit_edge, label %if.then25

land.lhs.true23.do.end28_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end28

if.then25:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @target_alua_state_check.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 666, ptr noundef nonnull @.str.7) #14
  br label %do.end28

do.end28:                                         ; preds = %if.then25, %land.lhs.true23.do.end28_crit_edge, %land.lhs.true.do.end28_crit_edge, %rcu_read_lock.exit.do.end28_crit_edge
  %tobool30.not = icmp eq ptr %20, null
  br i1 %tobool30.not, label %if.then31, label %if.end32

if.then31:                                        ; preds = %do.end28
  %call.i106 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i106, label %if.then31.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i109

if.then31.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i109:                               ; preds = %if.then31
  %call1.i107 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i107)
  %tobool.not.i108 = icmp eq i32 %call1.i107, 0
  br i1 %tobool.not.i108, label %land.lhs.true.i109.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i111

land.lhs.true.i109.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i109
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i111:                              ; preds = %land.lhs.true.i109
  %.b4.i110 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i110, label %land.lhs.true2.i111.rcu_read_unlock.exit_crit_edge, label %if.then.i112

land.lhs.true2.i111.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i111
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i112:                                     ; preds = %land.lhs.true2.i111
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.114, i32 noundef 724, ptr noundef nonnull @.str.116) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i112, %land.lhs.true2.i111.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i109.rcu_read_unlock.exit_crit_edge, %if.then31.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !336
  %21 = tail call i32 @llvm.read_register.i32(metadata !325) #14
  %and.i.i.i.i.i113 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i113 to ptr
  %preempt_count.i.i.i.i114 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i114 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i114, align 4
  %sub.i.i.i = add i32 %24, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i114, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  br label %cleanup

if.end32:                                         ; preds = %do.end28
  %tg_pt_gp_alua_access_state = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %20, i32 0, i32 11
  %25 = ptrtoint ptr %tg_pt_gp_alua_access_state to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tg_pt_gp_alua_access_state, align 4
  %tg_pt_gp_nonop_delay_msecs = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %20, i32 0, i32 5
  %27 = ptrtoint ptr %tg_pt_gp_nonop_delay_msecs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tg_pt_gp_nonop_delay_msecs, align 4
  %29 = ptrtoint ptr %20 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %20, align 4
  %call.i115 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i115, label %if.end32.rcu_read_unlock.exit125_crit_edge, label %land.lhs.true.i118

if.end32.rcu_read_unlock.exit125_crit_edge:       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit125

land.lhs.true.i118:                               ; preds = %if.end32
  %call1.i116 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i116)
  %tobool.not.i117 = icmp eq i32 %call1.i116, 0
  br i1 %tobool.not.i117, label %land.lhs.true.i118.rcu_read_unlock.exit125_crit_edge, label %land.lhs.true2.i120

land.lhs.true.i118.rcu_read_unlock.exit125_crit_edge: ; preds = %land.lhs.true.i118
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit125

land.lhs.true2.i120:                              ; preds = %land.lhs.true.i118
  %.b4.i119 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i119, label %land.lhs.true2.i120.rcu_read_unlock.exit125_crit_edge, label %if.then.i121

land.lhs.true2.i120.rcu_read_unlock.exit125_crit_edge: ; preds = %land.lhs.true2.i120
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit125

if.then.i121:                                     ; preds = %land.lhs.true2.i120
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.114, i32 noundef 724, ptr noundef nonnull @.str.116) #14
  br label %rcu_read_unlock.exit125

rcu_read_unlock.exit125:                          ; preds = %if.then.i121, %land.lhs.true2.i120.rcu_read_unlock.exit125_crit_edge, %land.lhs.true.i118.rcu_read_unlock.exit125_crit_edge, %if.end32.rcu_read_unlock.exit125_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !336
  %31 = tail call i32 @llvm.read_register.i32(metadata !325) #14
  %and.i.i.i.i.i122 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i122 to ptr
  %preempt_count.i.i.i.i123 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i.i123 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i.i123, align 4
  %sub.i.i.i124 = add i32 %34, -1
  store volatile i32 %sub.i.i.i124, ptr %preempt_count.i.i.i.i123, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  %35 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.155)
  switch i32 %26, label %do.end48 [
    i32 0, label %rcu_read_unlock.exit125.cleanup_crit_edge
    i32 1, label %sw.bb
    i32 2, label %sw.bb37
    i32 3, label %sw.bb39
    i32 15, label %sw.bb41
    i32 4, label %sw.bb43
  ]

rcu_read_unlock.exit125.cleanup_crit_edge:        ; preds = %rcu_read_unlock.exit125
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %rcu_read_unlock.exit125
  call void @__sanitizer_cov_trace_pc() #16
  %se_cmd_flags.i = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 11
  %36 = ptrtoint ptr %se_cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %se_cmd_flags.i, align 8
  %or.i = or i32 %37, 2048
  store i32 %or.i, ptr %se_cmd_flags.i, align 8
  %alua_nonop_delay.i = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 5
  %38 = ptrtoint ptr %alua_nonop_delay.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %28, ptr %alua_nonop_delay.i, align 8
  br label %cleanup

sw.bb37:                                          ; preds = %rcu_read_unlock.exit125
  call void @__sanitizer_cov_trace_pc() #16
  %call38 = tail call fastcc i32 @core_alua_state_standby(ptr noundef %3)
  br label %sw.epilog

sw.bb39:                                          ; preds = %rcu_read_unlock.exit125
  call void @__sanitizer_cov_trace_pc() #16
  %call40 = tail call fastcc i32 @core_alua_state_unavailable(ptr noundef %3)
  br label %sw.epilog

sw.bb41:                                          ; preds = %rcu_read_unlock.exit125
  call void @__sanitizer_cov_trace_pc() #16
  %call42 = tail call fastcc i32 @core_alua_state_transition(ptr noundef %3)
  br label %sw.epilog

sw.bb43:                                          ; preds = %rcu_read_unlock.exit125
  call void @__sanitizer_cov_trace_pc() #16
  %call44 = tail call fastcc i32 @core_alua_state_lba_dependent(ptr noundef %cmd, i16 noundef zeroext %30)
  br label %sw.epilog

do.end48:                                         ; preds = %rcu_read_unlock.exit125
  call void @__sanitizer_cov_trace_pc() #16
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %26) #17
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb43, %sw.bb41, %sw.bb39, %sw.bb37
  %rc.0 = phi i32 [ %call44, %sw.bb43 ], [ %call42, %sw.bb41 ], [ %call40, %sw.bb39 ], [ %call38, %sw.bb37 ]
  %39 = zext i32 %rc.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.156)
  switch i32 %rc.0, label %do.body56 [
    i32 0, label %sw.epilog.cleanup_crit_edge
    i32 8, label %sw.epilog.cleanup_crit_edge129
  ]

sw.epilog.cleanup_crit_edge129:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body56:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @target_alua_state_check.__UNIQUE_ID_ddebug214, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_alua_state_check, %if.then68)) #14
          to label %cleanup [label %if.then68], !srcloc !337

if.then68:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #16
  %se_tfo = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 26
  %40 = ptrtoint ptr %se_tfo to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %se_tfo, align 8
  %fabric_name = getelementptr inbounds %struct.target_core_fabric_ops, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %fabric_name to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fabric_name, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @target_alua_state_check.__UNIQUE_ID_ddebug214, ptr noundef nonnull @.str.18, ptr noundef %43, i32 noundef %rc.0) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then68, %do.body56, %sw.epilog.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge129, %do.end48, %sw.bb, %rcu_read_unlock.exit125.cleanup_crit_edge, %rcu_read_unlock.exit, %if.then11, %do.body, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %rcu_read_unlock.exit ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 35, %if.then11 ], [ %26, %rcu_read_unlock.exit125.cleanup_crit_edge ], [ %rc.0, %sw.epilog.cleanup_crit_edge ], [ %rc.0, %sw.epilog.cleanup_crit_edge129 ], [ %rc.0, %if.then68 ], [ 35, %do.body ], [ %rc.0, %do.body56 ], [ 0, %sw.bb ], [ 8, %do.end48 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @core_alua_state_standby(ptr nocapture noundef readonly %cdb) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %cdb to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cdb, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.157)
  switch i8 %1, label %sw.default17 [
    i8 18, label %entry.return_crit_edge
    i8 76, label %entry.return_crit_edge3
    i8 77, label %entry.return_crit_edge4
    i8 21, label %entry.return_crit_edge5
    i8 26, label %entry.return_crit_edge6
    i8 -96, label %entry.return_crit_edge7
    i8 28, label %entry.return_crit_edge8
    i8 29, label %entry.return_crit_edge9
    i8 37, label %entry.return_crit_edge10
    i8 -98, label %sw.bb1
    i8 -93, label %sw.bb5
    i8 -92, label %sw.bb11
    i8 3, label %entry.return_crit_edge11
    i8 94, label %entry.return_crit_edge12
    i8 95, label %entry.return_crit_edge13
    i8 60, label %entry.return_crit_edge14
    i8 59, label %entry.return_crit_edge15
  ]

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx2 = getelementptr i8, ptr %cdb, i32 1
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx2, align 1
  %5 = and i8 %4, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %5)
  %cond19 = icmp eq i8 %5, 16
  %. = select i1 %cond19, i32 0, i32 32
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx6 = getelementptr i8, ptr %cdb, i32 1
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx6, align 1
  %8 = and i8 %7, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %8)
  %cond18 = icmp eq i8 %8, 10
  %.1 = select i1 %cond18, i32 0, i32 32
  br label %return

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx12 = getelementptr i8, ptr %cdb, i32 1
  %9 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %10)
  %cond = icmp eq i8 %10, 10
  %.2 = select i1 %cond, i32 0, i32 32
  br label %return

sw.default17:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

return:                                           ; preds = %sw.default17, %sw.bb11, %sw.bb5, %sw.bb1, %entry.return_crit_edge, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15
  %retval.0 = phi i32 [ 32, %sw.default17 ], [ 0, %entry.return_crit_edge ], [ 0, %entry.return_crit_edge3 ], [ 0, %entry.return_crit_edge4 ], [ 0, %entry.return_crit_edge5 ], [ 0, %entry.return_crit_edge6 ], [ 0, %entry.return_crit_edge7 ], [ 0, %entry.return_crit_edge8 ], [ 0, %entry.return_crit_edge9 ], [ 0, %entry.return_crit_edge10 ], [ %., %sw.bb1 ], [ %.1, %sw.bb5 ], [ %.2, %sw.bb11 ], [ 0, %entry.return_crit_edge11 ], [ 0, %entry.return_crit_edge12 ], [ 0, %entry.return_crit_edge13 ], [ 0, %entry.return_crit_edge14 ], [ 0, %entry.return_crit_edge15 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @core_alua_state_unavailable(ptr nocapture noundef readonly %cdb) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %cdb to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cdb, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.158)
  switch i8 %1, label %sw.default11 [
    i8 18, label %entry.return_crit_edge
    i8 -96, label %entry.return_crit_edge2
    i8 -93, label %sw.bb1
    i8 -92, label %sw.bb5
    i8 3, label %entry.return_crit_edge3
    i8 60, label %entry.return_crit_edge4
    i8 59, label %entry.return_crit_edge5
  ]

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx2 = getelementptr i8, ptr %cdb, i32 1
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx2, align 1
  %5 = and i8 %4, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %5)
  %cond12 = icmp eq i8 %5, 10
  %. = select i1 %cond12, i32 0, i32 33
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx6 = getelementptr i8, ptr %cdb, i32 1
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %7)
  %cond = icmp eq i8 %7, 10
  %.1 = select i1 %cond, i32 0, i32 33
  br label %return

sw.default11:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

return:                                           ; preds = %sw.default11, %sw.bb5, %sw.bb1, %entry.return_crit_edge, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5
  %retval.0 = phi i32 [ 33, %sw.default11 ], [ 0, %entry.return_crit_edge ], [ 0, %entry.return_crit_edge2 ], [ %., %sw.bb1 ], [ %.1, %sw.bb5 ], [ 0, %entry.return_crit_edge3 ], [ 0, %entry.return_crit_edge4 ], [ 0, %entry.return_crit_edge5 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @core_alua_state_transition(ptr nocapture noundef readonly %cdb) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %cdb to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cdb, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.159)
  switch i8 %1, label %sw.default6 [
    i8 18, label %entry.return_crit_edge
    i8 -96, label %entry.return_crit_edge1
    i8 -93, label %sw.bb1
    i8 3, label %entry.return_crit_edge2
    i8 60, label %entry.return_crit_edge3
    i8 59, label %entry.return_crit_edge4
  ]

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx2 = getelementptr i8, ptr %cdb, i32 1
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx2, align 1
  %5 = and i8 %4, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %5)
  %cond = icmp eq i8 %5, 10
  %. = select i1 %cond, i32 0, i32 34
  br label %return

sw.default6:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

return:                                           ; preds = %sw.default6, %sw.bb1, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4
  %retval.0 = phi i32 [ 34, %sw.default6 ], [ 0, %entry.return_crit_edge ], [ 0, %entry.return_crit_edge1 ], [ %., %sw.bb1 ], [ 0, %entry.return_crit_edge2 ], [ 0, %entry.return_crit_edge3 ], [ 0, %entry.return_crit_edge4 ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @core_alua_state_lba_dependent(ptr nocapture noundef readonly %cmd, i16 noundef zeroext %tg_pt_gp_id) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %se_cmd_flags = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 11
  %0 = ptrtoint ptr %se_cmd_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %se_cmd_flags, align 8
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup280_crit_edge, label %if.end

entry.cleanup280_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup280

if.end:                                           ; preds = %entry
  %se_dev = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 19
  %2 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %se_dev, align 4
  %lba_map_lock = getelementptr inbounds %struct.se_device, ptr %3, i32 0, i32 37, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lba_map_lock) #14
  %lba_map_segment_size = getelementptr inbounds %struct.se_device, ptr %3, i32 0, i32 37, i32 3
  %4 = ptrtoint ptr %lba_map_segment_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lba_map_segment_size, align 4
  %conv = zext i32 %5 to i64
  %data_length = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 12
  %6 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_length, align 4
  %block_size = getelementptr inbounds %struct.se_device, ptr %3, i32 0, i32 39, i32 21
  %8 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %block_size, align 8
  %div = udiv i32 %7, %9
  %conv4 = zext i32 %div to i64
  %t_task_lba = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 32
  %10 = ptrtoint ptr %t_task_lba to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %t_task_lba, align 8
  %add = add i64 %11, %conv4
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %add)
  %cmp448 = icmp ult i64 %11, %add
  br i1 %cmp448, label %while.body.lr.ph, label %if.end.cleanup280.sink.split_crit_edge

if.end.cleanup280.sink.split_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup280.sink.split

while.body.lr.ph:                                 ; preds = %if.end
  %lba_map_segment_multiplier = getelementptr inbounds %struct.se_device, ptr %3, i32 0, i32 37, i32 4
  %12 = ptrtoint ptr %lba_map_segment_multiplier to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lba_map_segment_multiplier, align 8
  %lba_map_list = getelementptr inbounds %struct.se_device, ptr %3, i32 0, i32 37, i32 5
  %14 = ptrtoint ptr %lba_map_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn440 = load ptr, ptr %lba_map_list, align 4
  %cmp11.not442 = icmp eq ptr %.pn440, %lba_map_list
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool13.not = icmp eq i32 %13, 0
  %mul = mul i32 %13, %5
  %add209 = add nsw i64 %conv, -1
  %conv256 = zext i16 %tg_pt_gp_id to i32
  br label %while.body

while.cond.loopexit:                              ; preds = %for.inc266.while.cond.loopexit_crit_edge, %if.end243.while.cond.loopexit_crit_edge
  %cmp = icmp ult i64 %lba.5, %add
  br i1 %cmp, label %while.cond.loopexit.while.body_crit_edge, label %while.cond.loopexit.cleanup280.sink.split_crit_edge

while.cond.loopexit.cleanup280.sink.split_crit_edge: ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup280.sink.split

while.cond.loopexit.while.body_crit_edge:         ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.body:                                       ; preds = %while.cond.loopexit.while.body_crit_edge, %while.body.lr.ph
  %lba.0449 = phi i64 [ %11, %while.body.lr.ph ], [ %lba.5, %while.cond.loopexit.while.body_crit_edge ]
  br i1 %cmp11.not442, label %while.body.cleanup280.sink.split_crit_edge, label %for.body.lr.ph

while.body.cleanup280.sink.split_crit_edge:       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup280.sink.split

for.body.lr.ph:                                   ; preds = %while.body
  %conv35 = trunc i64 %lba.0449 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %lba.0449)
  %cmp191 = icmp ult i64 %lba.0449, 4294967296
  br label %for.body

for.body:                                         ; preds = %cleanup229.for.body_crit_edge, %for.body.lr.ph
  %.pn443 = phi ptr [ %.pn440, %for.body.lr.ph ], [ %.pn, %cleanup229.for.body_crit_edge ]
  %map.0444 = getelementptr i8, ptr %.pn443, i32 -16
  %15 = ptrtoint ptr %map.0444 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %map.0444, align 8
  br i1 %tobool13.not, label %if.else219, label %if.else189

if.else189:                                       ; preds = %for.body
  br i1 %cmp191, label %if.then196, label %if.else202, !prof !344

if.then196:                                       ; preds = %if.else189
  call void @__sanitizer_cov_trace_pc() #16
  %rem198 = urem i32 %conv35, %mul
  br label %if.end206

if.else202:                                       ; preds = %if.else189
  call void @__sanitizer_cov_trace_pc() #16
  %17 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul, i64 %lba.0449) #19, !srcloc !345
  %asmresult.i405 = extractvalue { i64, i64 } %17, 0
  %shr.i = lshr i64 %asmresult.i405, 32
  %conv.i = trunc i64 %shr.i to i32
  br label %if.end206

if.end206:                                        ; preds = %if.else202, %if.then196
  %__rem.0 = phi i32 [ %rem198, %if.then196 ], [ %conv.i, %if.else202 ]
  %conv208 = zext i32 %__rem.0 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %conv208)
  %cmp211.not = icmp ugt i64 %16, %conv208
  %sub210 = add i64 %add209, %16
  call void @__sanitizer_cov_trace_cmp8(i64 %sub210, i64 %conv208)
  %cmp214.not = icmp ult i64 %sub210, %conv208
  %or.cond450 = select i1 %cmp211.not, i1 true, i1 %cmp214.not
  br i1 %or.cond450, label %if.end206.cleanup229_crit_edge, label %cleanup

if.end206.cleanup229_crit_edge:                   ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup229

cleanup:                                          ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #16
  %add217 = add i64 %lba.0449, %conv
  br label %for.end

if.else219:                                       ; preds = %for.body
  %lba_map_last_lba = getelementptr i8, ptr %.pn443, i32 -8
  %18 = ptrtoint ptr %lba_map_last_lba to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %lba_map_last_lba, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %lba.0449, i64 %16)
  %cmp220.not = icmp ult i64 %lba.0449, %16
  call void @__sanitizer_cov_trace_cmp8(i64 %lba.0449, i64 %19)
  %cmp223.not = icmp ugt i64 %lba.0449, %19
  %or.cond = select i1 %cmp220.not, i1 true, i1 %cmp223.not
  br i1 %or.cond, label %if.else219.cleanup229_crit_edge, label %if.then225

if.else219.cleanup229_crit_edge:                  ; preds = %if.else219
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup229

if.then225:                                       ; preds = %if.else219
  call void @__sanitizer_cov_trace_pc() #16
  %add226 = add i64 %19, 1
  br label %for.end

cleanup229:                                       ; preds = %if.else219.cleanup229_crit_edge, %if.end206.cleanup229_crit_edge
  %20 = ptrtoint ptr %.pn443 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn = load ptr, ptr %.pn443, align 4
  %cmp11.not = icmp eq ptr %.pn, %lba_map_list
  br i1 %cmp11.not, label %cleanup229.cleanup280.sink.split_crit_edge, label %cleanup229.for.body_crit_edge

cleanup229.for.body_crit_edge:                    ; preds = %cleanup229
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

cleanup229.cleanup280.sink.split_crit_edge:       ; preds = %cleanup229
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup280.sink.split

for.end:                                          ; preds = %if.then225, %cleanup
  %lba.5 = phi i64 [ %add217, %cleanup ], [ %add226, %if.then225 ]
  %map.0444459 = getelementptr i8, ptr %.pn443, i32 -16
  %tobool239.not = icmp eq ptr %map.0444459, null
  br i1 %tobool239.not, label %for.end.cleanup280.sink.split_crit_edge, label %if.end243

for.end.cleanup280.sink.split_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup280.sink.split

if.end243:                                        ; preds = %for.end
  %lba_map_mem_list = getelementptr i8, ptr %.pn443, i32 8
  %21 = ptrtoint ptr %lba_map_mem_list to i32
  call void @__asan_load4_noabort(i32 %21)
  %map_mem.0445 = load ptr, ptr %lba_map_mem_list, align 4
  %cmp251.not446 = icmp eq ptr %map_mem.0445, %lba_map_mem_list
  br i1 %cmp251.not446, label %if.end243.while.cond.loopexit_crit_edge, label %if.end243.for.body255_crit_edge

if.end243.for.body255_crit_edge:                  ; preds = %if.end243
  br label %for.body255

if.end243.while.cond.loopexit_crit_edge:          ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.loopexit

for.body255:                                      ; preds = %for.inc266.for.body255_crit_edge, %if.end243.for.body255_crit_edge
  %map_mem.0447 = phi ptr [ %map_mem.0, %for.inc266.for.body255_crit_edge ], [ %map_mem.0445, %if.end243.for.body255_crit_edge ]
  %lba_map_mem_alua_pg_id = getelementptr inbounds %struct.t10_alua_lba_map_member, ptr %map_mem.0447, i32 0, i32 2
  %22 = ptrtoint ptr %lba_map_mem_alua_pg_id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %lba_map_mem_alua_pg_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %conv256)
  %cmp257.not = icmp eq i32 %23, %conv256
  br i1 %cmp257.not, label %if.end260, label %for.body255.for.inc266_crit_edge

for.body255.for.inc266_crit_edge:                 ; preds = %for.body255
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc266

if.end260:                                        ; preds = %for.body255
  %lba_map_mem_alua_state = getelementptr inbounds %struct.t10_alua_lba_map_member, ptr %map_mem.0447, i32 0, i32 1
  %24 = ptrtoint ptr %lba_map_mem_alua_state to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %lba_map_mem_alua_state, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.160)
  switch i32 %25, label %if.end260.for.inc266_crit_edge [
    i32 2, label %if.end260.cleanup280.sink.split_crit_edge
    i32 3, label %cleanup280.sink.split.loopexit467
  ]

if.end260.cleanup280.sink.split_crit_edge:        ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup280.sink.split

if.end260.for.inc266_crit_edge:                   ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc266

for.inc266:                                       ; preds = %if.end260.for.inc266_crit_edge, %for.body255.for.inc266_crit_edge
  %27 = ptrtoint ptr %map_mem.0447 to i32
  call void @__asan_load4_noabort(i32 %27)
  %map_mem.0 = load ptr, ptr %map_mem.0447, align 4
  %cmp251.not = icmp eq ptr %map_mem.0, %lba_map_mem_list
  br i1 %cmp251.not, label %for.inc266.while.cond.loopexit_crit_edge, label %for.inc266.for.body255_crit_edge

for.inc266.for.body255_crit_edge:                 ; preds = %for.inc266
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body255

for.inc266.while.cond.loopexit_crit_edge:         ; preds = %for.inc266
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.loopexit

cleanup280.sink.split.loopexit467:                ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup280.sink.split

cleanup280.sink.split:                            ; preds = %cleanup280.sink.split.loopexit467, %if.end260.cleanup280.sink.split_crit_edge, %for.end.cleanup280.sink.split_crit_edge, %cleanup229.cleanup280.sink.split_crit_edge, %while.body.cleanup280.sink.split_crit_edge, %while.cond.loopexit.cleanup280.sink.split_crit_edge, %if.end.cleanup280.sink.split_crit_edge
  %retval.2.ph = phi i32 [ 0, %if.end.cleanup280.sink.split_crit_edge ], [ 33, %cleanup280.sink.split.loopexit467 ], [ 32, %if.end260.cleanup280.sink.split_crit_edge ], [ 33, %cleanup229.cleanup280.sink.split_crit_edge ], [ 33, %while.body.cleanup280.sink.split_crit_edge ], [ 33, %for.end.cleanup280.sink.split_crit_edge ], [ 0, %while.cond.loopexit.cleanup280.sink.split_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lba_map_lock) #14
  br label %cleanup280

cleanup280:                                       ; preds = %cleanup280.sink.split, %entry.cleanup280_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup280_crit_edge ], [ %retval.2.ph, %cleanup280.sink.split ]
  ret i32 %retval.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @core_alua_dump_status(i32 noundef %status) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %status)
  %0 = icmp ult i32 %status, 3
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.core_alua_dump_status, i32 0, i32 %status
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.22, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @core_alua_check_nonop_delay(ptr nocapture noundef readonly %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %se_cmd_flags = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 11
  %0 = ptrtoint ptr %se_cmd_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %se_cmd_flags, align 8
  %and = and i32 %1, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  %alua_nonop_delay = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 5
  %2 = ptrtoint ptr %alua_nonop_delay to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %alua_nonop_delay, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 @msleep_interruptible(i32 noundef %3) #14
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @core_alua_do_transition_tg_pt(ptr noundef %tg_pt_gp, i32 noundef %new_state, i32 noundef %explicit) unnamed_addr #0 align 64 {
entry:
  %pos.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tg_pt_gp_transition_mutex = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %tg_pt_gp, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %tg_pt_gp_transition_mutex, i32 noundef 0) #14
  %tg_pt_gp_alua_access_state = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %tg_pt_gp, i32 0, i32 11
  %0 = ptrtoint ptr %tg_pt_gp_alua_access_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tg_pt_gp_alua_access_state, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %new_state)
  %cmp = icmp eq i32 %1, %new_state
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef %tg_pt_gp_transition_mutex) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %explicit)
  %tobool.not = icmp eq i32 %explicit, 0
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %land.lhs.true

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %new_state)
  %cmp2 = icmp eq i32 %new_state, 15
  br i1 %cmp2, label %if.then3, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef %tg_pt_gp_transition_mutex) #14
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %cond = phi i32 [ 1, %land.lhs.true.if.end5_crit_edge ], [ 2, %if.end.if.end5_crit_edge ]
  %2 = ptrtoint ptr %tg_pt_gp_alua_access_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 15, ptr %tg_pt_gp_alua_access_state, align 4
  %tg_pt_gp_alua_access_status = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %tg_pt_gp, i32 0, i32 3
  %3 = ptrtoint ptr %tg_pt_gp_alua_access_status to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %cond, ptr %tg_pt_gp_alua_access_status, align 4
  tail call fastcc void @core_alua_queue_state_change_ua(ptr noundef %tg_pt_gp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %new_state)
  %cmp9 = icmp eq i32 %new_state, 15
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef %tg_pt_gp_transition_mutex) #14
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  %tg_pt_gp_trans_delay_msecs = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %tg_pt_gp, i32 0, i32 6
  %4 = ptrtoint ptr %tg_pt_gp_trans_delay_msecs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tg_pt_gp_trans_delay_msecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp13.not = icmp eq i32 %5, 0
  br i1 %cmp13.not, label %if.end12.if.end16_crit_edge, label %if.then14

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 @msleep_interruptible(i32 noundef %5) #14
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end12.if.end16_crit_edge
  %6 = ptrtoint ptr %tg_pt_gp_alua_access_state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %new_state, ptr %tg_pt_gp_alua_access_state, align 4
  %tg_pt_gp_write_metadata = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %tg_pt_gp, i32 0, i32 9
  %7 = ptrtoint ptr %tg_pt_gp_write_metadata to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tg_pt_gp_write_metadata, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool18.not = icmp eq i32 %8, 0
  br i1 %tobool18.not, label %if.end16.do.body_crit_edge, label %if.then19

if.end16.do.body_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

if.then19:                                        ; preds = %if.end16
  %tg_pt_gp_dev.i = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %tg_pt_gp, i32 0, i32 15
  %9 = ptrtoint ptr %tg_pt_gp_dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tg_pt_gp_dev.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %11 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %if.then19.if.end.i_crit_edge, label %land.rhs.i

if.then19.if.end.i_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.then19
  %dep_map.i = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %tg_pt_gp, i32 0, i32 14, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !346

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 880, i32 noundef 9, ptr noundef null) #14
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.then19.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 1024) #18
  %tobool25.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool25.not.i, label %do.end29.i, label %if.end32.i

do.end29.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %call31.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124) #17
  br label %do.body

if.end32.i:                                       ; preds = %if.end.i
  %13 = ptrtoint ptr %tg_pt_gp to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %tg_pt_gp, align 4
  %conv.i = zext i16 %14 to i32
  %15 = ptrtoint ptr %tg_pt_gp_alua_access_state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tg_pt_gp_alua_access_state, align 4
  %17 = ptrtoint ptr %tg_pt_gp_alua_access_status to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tg_pt_gp_alua_access_status, align 4
  %call33.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i.i, i32 noundef 1024, ptr noundef nonnull @.str.126, i32 noundef %conv.i, i32 noundef %16, i32 noundef %18) #14
  %unit_serial.i = getelementptr inbounds %struct.se_device, ptr %10, i32 0, i32 36, i32 3
  %tg_pt_gp_group.i = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %tg_pt_gp, i32 0, i32 16
  %19 = ptrtoint ptr %tg_pt_gp_group.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tg_pt_gp_group.i, align 4
  %call35.i = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.127, ptr noundef nonnull @db_root, ptr noundef %unit_serial.i, ptr noundef %20) #14
  %tobool36.not.i = icmp eq ptr %call35.i, null
  br i1 %tobool36.not.i, label %if.end32.i.if.end39.i_crit_edge, label %if.then37.i

if.end32.i.if.end39.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39.i

if.then37.i:                                      ; preds = %if.end32.i
  %call.i1.i = tail call ptr @filp_open(ptr noundef nonnull %call35.i, i32 noundef 578, i16 noundef zeroext 384) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos.i.i) #14
  %21 = ptrtoint ptr %pos.i.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 0, ptr %pos.i.i, align 8
  %cmp.i.i.i = icmp ugt ptr %call.i1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #16
  %call2.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef nonnull %call35.i) #17
  br label %core_alua_write_tpg_metadata.exit.i

if.end.i.i:                                       ; preds = %if.then37.i
  %call3.i.i = call i32 @kernel_write(ptr noundef %call.i1.i, ptr noundef nonnull %call7.i.i.i, i32 noundef %call33.i, ptr noundef nonnull %pos.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp.i.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp.i.i, label %do.end7.i.i, label %if.end.i.i.if.end10.i.i_crit_edge

if.end.i.i.if.end10.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.i.i

do.end7.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call9.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, ptr noundef nonnull %call35.i) #17
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %do.end7.i.i, %if.end.i.i.if.end10.i.i_crit_edge
  call void @fput(ptr noundef %call.i1.i) #14
  br label %core_alua_write_tpg_metadata.exit.i

core_alua_write_tpg_metadata.exit.i:              ; preds = %if.end10.i.i, %do.end.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos.i.i) #14
  call void @kfree(ptr noundef nonnull %call35.i) #14
  br label %if.end39.i

if.end39.i:                                       ; preds = %core_alua_write_tpg_metadata.exit.i, %if.end32.i.if.end39.i_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #14
  br label %do.body

do.body:                                          ; preds = %if.end39.i, %do.end29.i, %if.end16.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @core_alua_do_transition_tg_pt.__UNIQUE_ID_ddebug217, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@core_alua_do_transition_tg_pt, %if.then26)) #14
          to label %do.end [label %if.then26], !srcloc !337

if.then26:                                        ; preds = %do.body
  %cond28 = select i1 %tobool.not, ptr @.str.26, ptr @.str.25
  %tg_pt_gp_group = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %tg_pt_gp, i32 0, i32 16
  %22 = ptrtoint ptr %tg_pt_gp_group to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tg_pt_gp_group, align 4
  %24 = ptrtoint ptr %tg_pt_gp to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %tg_pt_gp, align 4
  %conv = zext i16 %25 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %26 = icmp ult i32 %1, 16
  br i1 %26, label %switch.lookup, label %if.then26.core_alua_dump_state.exit_crit_edge

if.then26.core_alua_dump_state.exit_crit_edge:    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #16
  br label %core_alua_dump_state.exit

switch.lookup:                                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #16
  %switch.gep = getelementptr inbounds [16 x ptr], ptr @switch.table.core_alua_do_transition_tg_pt, i32 0, i32 %1
  %27 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %27)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %core_alua_dump_state.exit

core_alua_dump_state.exit:                        ; preds = %switch.lookup, %if.then26.core_alua_dump_state.exit_crit_edge
  %retval.0.i57 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.22, %if.then26.core_alua_dump_state.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %new_state)
  %28 = icmp ult i32 %new_state, 15
  br i1 %28, label %switch.lookup68, label %core_alua_dump_state.exit.core_alua_dump_state.exit66_crit_edge

core_alua_dump_state.exit.core_alua_dump_state.exit66_crit_edge: ; preds = %core_alua_dump_state.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %core_alua_dump_state.exit66

switch.lookup68:                                  ; preds = %core_alua_dump_state.exit
  call void @__sanitizer_cov_trace_pc() #16
  %switch.gep69 = getelementptr inbounds [15 x ptr], ptr @switch.table.core_alua_do_transition_tg_pt.152, i32 0, i32 %new_state
  %29 = ptrtoint ptr %switch.gep69 to i32
  call void @__asan_load4_noabort(i32 %29)
  %switch.load70 = load ptr, ptr %switch.gep69, align 4
  br label %core_alua_dump_state.exit66

core_alua_dump_state.exit66:                      ; preds = %switch.lookup68, %core_alua_dump_state.exit.core_alua_dump_state.exit66_crit_edge
  %retval.0.i65 = phi ptr [ %switch.load70, %switch.lookup68 ], [ @.str.22, %core_alua_dump_state.exit.core_alua_dump_state.exit66_crit_edge ]
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @core_alua_do_transition_tg_pt.__UNIQUE_ID_ddebug217, ptr noundef nonnull @.str.122, ptr noundef nonnull %cond28, ptr noundef %23, i32 noundef %conv, ptr noundef nonnull %retval.0.i57, ptr noundef nonnull %retval.0.i65) #14
  br label %do.end

do.end:                                           ; preds = %core_alua_dump_state.exit66, %do.body
  call fastcc void @core_alua_queue_state_change_ua(ptr noundef %tg_pt_gp)
  call void @mutex_unlock(ptr noundef %tg_pt_gp_transition_mutex) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then10, %if.then3, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -11, %if.then3 ], [ 0, %if.then10 ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @core_alua_allocate_lba_map(ptr noundef %list, i64 noundef %first_lba, i64 noundef %last_lba) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @t10_alua_lba_map_cache to i32))
  %0 = load ptr, ptr @t10_alua_lba_map_cache, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3520) #14
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %lba_map_mem_list = getelementptr inbounds %struct.t10_alua_lba_map, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %lba_map_mem_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %lba_map_mem_list, ptr %lba_map_mem_list, align 8
  %prev.i = getelementptr inbounds %struct.t10_alua_lba_map, ptr %call.i, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %lba_map_mem_list, ptr %prev.i, align 4
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %first_lba, ptr %call.i, align 8
  %lba_map_last_lba = getelementptr inbounds %struct.t10_alua_lba_map, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %lba_map_last_lba to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %last_lba, ptr %lba_map_last_lba, align 8
  %lba_map_list = getelementptr inbounds %struct.t10_alua_lba_map, ptr %call.i, i32 0, i32 2
  %prev.i8 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i8, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %lba_map_list, ptr noundef %6, ptr noundef %list) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %prev.i8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %lba_map_list, ptr %prev.i8, align 4
  %8 = ptrtoint ptr %lba_map_list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %lba_map_list, align 8
  %prev3.i.i = getelementptr inbounds %struct.t10_alua_lba_map, ptr %call.i, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev3.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %lba_map_list, ptr %6, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %do.end ], [ %call.i, %if.end.cleanup_crit_edge ], [ %call.i, %if.end.i.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @core_alua_allocate_lba_map_mem(ptr noundef %lba_map, i32 noundef %pg_id, i32 noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %lba_map_mem_list = getelementptr inbounds %struct.t10_alua_lba_map, ptr %lba_map, i32 0, i32 3
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %lba_map_mem.0.in = phi ptr [ %lba_map_mem_list, %entry ], [ %lba_map_mem.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %lba_map_mem.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %lba_map_mem.0 = load ptr, ptr %lba_map_mem.0.in, align 4
  %cmp.not = icmp eq ptr %lba_map_mem.0, %lba_map_mem_list
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %lba_map_mem_alua_pg_id = getelementptr inbounds %struct.t10_alua_lba_map_member, ptr %lba_map_mem.0, i32 0, i32 2
  %1 = ptrtoint ptr %lba_map_mem_alua_pg_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %lba_map_mem_alua_pg_id, align 4
  %cmp3 = icmp eq i32 %2, %pg_id
  br i1 %cmp3, label %do.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %pg_id) #17
  br label %cleanup

for.end:                                          ; preds = %for.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @t10_alua_lba_map_mem_cache to i32))
  %3 = load ptr, ptr @t10_alua_lba_map_mem_cache, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %3, i32 noundef 3520) #14
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end14, label %if.end17

do.end14:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #17
  br label %cleanup

if.end17:                                         ; preds = %for.end
  %lba_map_mem_alua_state = getelementptr inbounds %struct.t10_alua_lba_map_member, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %lba_map_mem_alua_state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %state, ptr %lba_map_mem_alua_state, align 8
  %lba_map_mem_alua_pg_id18 = getelementptr inbounds %struct.t10_alua_lba_map_member, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %lba_map_mem_alua_pg_id18 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %pg_id, ptr %lba_map_mem_alua_pg_id18, align 4
  %prev.i = getelementptr inbounds %struct.t10_alua_lba_map, ptr %lba_map, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i, ptr noundef %7, ptr noundef %lba_map_mem_list) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %prev.i, align 4
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %lba_map_mem_list, ptr %call.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %call.i, ptr %7, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end17.cleanup_crit_edge, %do.end14, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -12, %do.end14 ], [ 0, %if.end17.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @core_alua_free_lba_map(ptr noundef readonly %lba_list) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lba_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lba_list, align 4
  %cmp.not58 = icmp eq ptr %1, %lba_list
  br i1 %cmp.not58, label %entry.for.end34_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end34_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end34

for.body:                                         ; preds = %list_del.exit52.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in59 = phi ptr [ %.pn62, %list_del.exit52.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %lba_map.061 = getelementptr i8, ptr %.pn.in59, i32 -16
  %2 = ptrtoint ptr %.pn.in59 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn62 = load ptr, ptr %.pn.in59, align 8
  %lba_map_mem_list = getelementptr i8, ptr %.pn.in59, i32 8
  %3 = ptrtoint ptr %lba_map_mem_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lba_map_mem_list, align 8
  %cmp18.not53 = icmp eq ptr %4, %lba_map_mem_list
  br i1 %cmp18.not53, label %for.body.for.end_crit_edge, label %for.body.for.body20_crit_edge

for.body.for.body20_crit_edge:                    ; preds = %for.body
  br label %for.body20

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body20:                                       ; preds = %list_del.exit.for.body20_crit_edge, %for.body.for.body20_crit_edge
  %lba_map_mem.054 = phi ptr [ %lba_map_mem_tmp.0, %list_del.exit.for.body20_crit_edge ], [ %4, %for.body.for.body20_crit_edge ]
  %5 = ptrtoint ptr %lba_map_mem.054 to i32
  call void @__asan_load4_noabort(i32 %5)
  %lba_map_mem_tmp.0 = load ptr, ptr %lba_map_mem.054, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lba_map_mem.054) #14
  br i1 %call.i.i, label %if.end.i.i, label %for.body20.list_del.exit_crit_edge

for.body20.list_del.exit_crit_edge:               ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %lba_map_mem.054, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %lba_map_mem.054 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lba_map_mem.054, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body20.list_del.exit_crit_edge
  %12 = ptrtoint ptr %lba_map_mem.054 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %lba_map_mem.054, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %lba_map_mem.054, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @t10_alua_lba_map_mem_cache to i32))
  %14 = load ptr, ptr @t10_alua_lba_map_mem_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %14, ptr noundef %lba_map_mem.054) #14
  %cmp18.not = icmp eq ptr %lba_map_mem_tmp.0, %lba_map_mem_list
  br i1 %cmp18.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body20_crit_edge

list_del.exit.for.body20_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body20

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %for.body.for.end_crit_edge
  %call.i.i47 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in59) #14
  br i1 %call.i.i47, label %if.end.i.i50, label %for.end.list_del.exit52_crit_edge

for.end.list_del.exit52_crit_edge:                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit52

if.end.i.i50:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i48 = getelementptr inbounds %struct.list_head, ptr %.pn.in59, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i48 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i48, align 4
  %17 = ptrtoint ptr %.pn.in59 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %.pn.in59, align 4
  %prev1.i.i.i49 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i49 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i49, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del.exit52

list_del.exit52:                                  ; preds = %if.end.i.i50, %for.end.list_del.exit52_crit_edge
  %21 = ptrtoint ptr %.pn.in59 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in59, align 4
  %prev.i51 = getelementptr inbounds %struct.list_head, ptr %.pn.in59, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i51 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @t10_alua_lba_map_cache to i32))
  %23 = load ptr, ptr @t10_alua_lba_map_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %23, ptr noundef %lba_map.061) #14
  %cmp.not = icmp eq ptr %.pn62, %lba_list
  br i1 %cmp.not, label %list_del.exit52.for.end34_crit_edge, label %list_del.exit52.for.body_crit_edge

list_del.exit52.for.body_crit_edge:               ; preds = %list_del.exit52
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

list_del.exit52.for.end34_crit_edge:              ; preds = %list_del.exit52
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end34

for.end34:                                        ; preds = %list_del.exit52.for.end34_crit_edge, %entry.for.end34_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @core_alua_set_lba_map(ptr noundef %dev, ptr noundef %lba_map_list, i32 noundef %segment_size, i32 noundef %segment_mult) local_unnamed_addr #0 align 64 {
entry:
  %old_lba_map_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %old_lba_map_list) #14
  %0 = getelementptr inbounds %struct.list_head, ptr %old_lba_map_list, i32 0, i32 1
  %1 = ptrtoint ptr %old_lba_map_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %old_lba_map_list, ptr %old_lba_map_list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %old_lba_map_list, ptr %0, align 4
  %lba_map_lock = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 37, i32 2
  call void @_raw_spin_lock(ptr noundef %lba_map_lock) #14
  %lba_map_segment_size = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 37, i32 3
  %3 = ptrtoint ptr %lba_map_segment_size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %segment_size, ptr %lba_map_segment_size, align 4
  %lba_map_segment_multiplier = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 37, i32 4
  %4 = ptrtoint ptr %lba_map_segment_multiplier to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %segment_mult, ptr %lba_map_segment_multiplier, align 8
  %lba_map_list4 = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 37, i32 5
  %5 = ptrtoint ptr %lba_map_list4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %lba_map_list4, align 4
  %cmp.i.not.i = icmp eq ptr %6, %lba_map_list4
  br i1 %cmp.i.not.i, label %entry.list_splice_init.exit_crit_edge, label %if.then.i

entry.list_splice_init.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %old_lba_map_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %old_lba_map_list, align 4
  %prev2.i.i = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 37, i32 5, i32 1
  %9 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %old_lba_map_list, ptr %prev3.i.i, align 4
  store ptr %6, ptr %old_lba_map_list, align 4
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %8, ptr %10, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %13 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev6.i.i, align 4
  %14 = ptrtoint ptr %lba_map_list4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %lba_map_list4, ptr %lba_map_list4, align 4
  store ptr %lba_map_list4, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %entry.list_splice_init.exit_crit_edge
  %tobool.not = icmp eq ptr %lba_map_list, null
  br i1 %tobool.not, label %list_splice_init.exit.if.end_crit_edge, label %if.then

list_splice_init.exit.if.end_crit_edge:           ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %list_splice_init.exit
  %15 = ptrtoint ptr %lba_map_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %lba_map_list, align 4
  %cmp.i.not.i43 = icmp eq ptr %16, %lba_map_list
  br i1 %cmp.i.not.i43, label %if.then.if.end_crit_edge, label %if.then.i47

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then.i47:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %17 = ptrtoint ptr %lba_map_list4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lba_map_list4, align 4
  %prev2.i.i44 = getelementptr inbounds %struct.list_head, ptr %lba_map_list, i32 0, i32 1
  %19 = ptrtoint ptr %prev2.i.i44 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev2.i.i44, align 4
  %prev3.i.i45 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %21 = ptrtoint ptr %prev3.i.i45 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %lba_map_list4, ptr %prev3.i.i45, align 4
  store ptr %16, ptr %lba_map_list4, align 4
  %22 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %18, ptr %20, align 4
  %prev6.i.i46 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %23 = ptrtoint ptr %prev6.i.i46 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev6.i.i46, align 4
  %24 = ptrtoint ptr %lba_map_list to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %lba_map_list, ptr %lba_map_list, align 4
  store ptr %lba_map_list, ptr %prev2.i.i44, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.i47, %if.then.if.end_crit_edge, %list_splice_init.exit.if.end_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lba_map_lock) #14
  %tg_pt_gps_lock = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 37, i32 6
  call void @_raw_spin_lock(ptr noundef %tg_pt_gps_lock) #14
  %tg_pt_gps_list = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 37, i32 10
  %25 = ptrtoint ptr %tg_pt_gps_list to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn49 = load ptr, ptr %tg_pt_gps_list, align 4
  %cmp.not50 = icmp eq ptr %.pn49, %tg_pt_gps_list
  br i1 %cmp.not50, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %masksel = select i1 %tobool.not, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn51 = phi ptr [ %.pn49, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %tg_pt_gp_valid_id = getelementptr i8, ptr %.pn51, i32 -268
  %26 = ptrtoint ptr %tg_pt_gp_valid_id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tg_pt_gp_valid_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool13.not = icmp eq i32 %27, 0
  br i1 %tobool13.not, label %for.body.for.inc_crit_edge, label %if.end15

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end15:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %tg_pt_gp_alua_supported_states = getelementptr i8, ptr %.pn51, i32 -264
  %28 = ptrtoint ptr %tg_pt_gp_alua_supported_states to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tg_pt_gp_alua_supported_states, align 4
  %and = and i32 %29, -17
  %supported.0 = or i32 %and, %masksel
  store i32 %supported.0, ptr %tg_pt_gp_alua_supported_states, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end15, %for.body.for.inc_crit_edge
  %30 = ptrtoint ptr %.pn51 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn = load ptr, ptr %.pn51, align 4
  %cmp.not = icmp eq ptr %.pn, %tg_pt_gps_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @_raw_spin_unlock(ptr noundef %tg_pt_gps_lock) #14
  call void @core_alua_free_lba_map(ptr noundef nonnull %old_lba_map_list)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %old_lba_map_list) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @core_alua_allocate_lu_gp(ptr nocapture noundef readnone %name, i32 noundef %def_group) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @t10_alua_lu_gp_cache to i32))
  %0 = load ptr, ptr @t10_alua_lu_gp_cache, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3520) #14
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %lu_gp_node = getelementptr inbounds %struct.t10_alua_lu_gp, ptr %call.i, i32 0, i32 6
  %1 = ptrtoint ptr %lu_gp_node to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %lu_gp_node, ptr %lu_gp_node, align 4
  %prev.i = getelementptr inbounds %struct.t10_alua_lu_gp, ptr %call.i, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %lu_gp_node, ptr %prev.i, align 8
  %lu_gp_mem_list = getelementptr inbounds %struct.t10_alua_lu_gp, ptr %call.i, i32 0, i32 7
  %3 = ptrtoint ptr %lu_gp_mem_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %lu_gp_mem_list, ptr %lu_gp_mem_list, align 4
  %prev.i18 = getelementptr inbounds %struct.t10_alua_lu_gp, ptr %call.i, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %prev.i18 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %lu_gp_mem_list, ptr %prev.i18, align 8
  %lu_gp_lock = getelementptr inbounds %struct.t10_alua_lu_gp, ptr %call.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lu_gp_lock, ptr noundef nonnull @.str.36, ptr noundef nonnull @core_alua_allocate_lu_gp.__key, i16 noundef signext 3) #14
  %lu_gp_ref_cnt = getelementptr inbounds %struct.t10_alua_lu_gp, ptr %call.i, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %lu_gp_ref_cnt, i32 noundef 4) #14
  %5 = ptrtoint ptr %lu_gp_ref_cnt to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 0, ptr %lu_gp_ref_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %def_group)
  %tobool7.not = icmp eq i32 %def_group, 0
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.then8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %6 = load i16, ptr @alua_lu_gps_counter, align 2
  %inc = add i16 %6, 1
  store i16 %inc, ptr @alua_lu_gps_counter, align 2
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %call.i, align 8
  %lu_gp_valid_id = getelementptr inbounds %struct.t10_alua_lu_gp, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %lu_gp_valid_id to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %lu_gp_valid_id, align 4
  %9 = load i32, ptr @alua_lu_gps_count, align 4
  %inc9 = add i32 %9, 1
  store i32 %inc9, ptr @alua_lu_gps_count, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %do.end ], [ %call.i, %if.then8 ], [ %call.i, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @core_alua_set_lu_gp_id(ptr noundef %lu_gp, i16 noundef zeroext %lu_gp_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %lu_gp_valid_id = getelementptr inbounds %struct.t10_alua_lu_gp, ptr %lu_gp, i32 0, i32 1
  %0 = ptrtoint ptr %lu_gp_valid_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lu_gp_valid_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef nonnull @lu_gps_lock) #14
  %2 = load i32, ptr @alua_lu_gps_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %2)
  %cmp = icmp eq i32 %2, 65535
  br i1 %cmp, label %do.end4, label %again.preheader

again.preheader:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %lu_gp_id)
  %cmp8.not = icmp eq i16 %lu_gp_id, 0
  %alua_lu_gps_counter.promoted = load i16, ptr @alua_lu_gps_counter, align 2
  br label %again

do.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #17
  tail call void @_raw_spin_unlock(ptr noundef nonnull @lu_gps_lock) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @t10_alua_lu_gp_cache to i32))
  %3 = load ptr, ptr @t10_alua_lu_gp_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %3, ptr noundef %lu_gp) #14
  br label %cleanup

again:                                            ; preds = %if.then21.again_crit_edge, %again.preheader
  %inc54 = phi i16 [ %alua_lu_gps_counter.promoted, %again.preheader ], [ %inc53, %if.then21.again_crit_edge ]
  br i1 %cmp8.not, label %cond.false, label %again.cond.end_crit_edge

again.cond.end_crit_edge:                         ; preds = %again
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.false:                                       ; preds = %again
  call void @__sanitizer_cov_trace_pc() #16
  %inc = add i16 %inc54, 1
  store i16 %inc, ptr @alua_lu_gps_counter, align 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %again.cond.end_crit_edge
  %inc53 = phi i16 [ %inc, %cond.false ], [ %inc54, %again.cond.end_crit_edge ]
  %cond = phi i16 [ %inc54, %cond.false ], [ %lu_gp_id, %again.cond.end_crit_edge ]
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %cond.end
  %.pn.in = phi ptr [ @lu_gps_list, %cond.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %4 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp14.not = icmp eq ptr %.pn, @lu_gps_list
  br i1 %cmp14.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %lu_gp_tmp.0 = getelementptr i8, ptr %.pn, i32 -140
  %5 = ptrtoint ptr %lu_gp_tmp.0 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %lu_gp_tmp.0, align 4
  %cmp19 = icmp eq i16 %6, %cond
  br i1 %cmp19, label %if.then21, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond

if.then21:                                        ; preds = %for.body
  br i1 %cmp8.not, label %if.then21.again_crit_edge, label %do.end27

if.then21.again_crit_edge:                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #16
  br label %again

do.end27:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #16
  %conv.le = zext i16 %lu_gp_id to i32
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %conv.le) #17
  tail call void @_raw_spin_unlock(ptr noundef nonnull @lu_gps_lock) #14
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %7 = ptrtoint ptr %lu_gp to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %cond, ptr %lu_gp, align 4
  %8 = ptrtoint ptr %lu_gp_valid_id to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %lu_gp_valid_id, align 4
  %lu_gp_node38 = getelementptr inbounds %struct.t10_alua_lu_gp, ptr %lu_gp, i32 0, i32 6
  %9 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @lu_gps_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %lu_gp_node38, ptr noundef %9, ptr noundef nonnull @lu_gps_list) #14
  br i1 %call.i.i, label %if.end.i.i, label %for.end.list_add_tail.exit_crit_edge

for.end.list_add_tail.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  store ptr %lu_gp_node38, ptr getelementptr inbounds (%struct.list_head, ptr @lu_gps_list, i32 0, i32 1), align 4
  %10 = ptrtoint ptr %lu_gp_node38 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @lu_gps_list, ptr %lu_gp_node38, align 4
  %prev3.i.i = getelementptr inbounds %struct.t10_alua_lu_gp, ptr %lu_gp, i32 0, i32 6, i32 1
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %9, ptr %prev3.i.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %lu_gp_node38, ptr %9, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %for.end.list_add_tail.exit_crit_edge
  %13 = load i32, ptr @alua_lu_gps_count, align 4
  %inc39 = add i32 %13, 1
  store i32 %inc39, ptr @alua_lu_gps_count, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @lu_gps_lock) #14
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %do.end27, %do.end4, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -28, %do.end4 ], [ -22, %do.end27 ], [ 0, %list_add_tail.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @core_alua_free_lu_gp(ptr noundef %lu_gp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @lu_gps_lock) #14
  %lu_gp_node = getelementptr inbounds %struct.t10_alua_lu_gp, ptr %lu_gp, i32 0, i32 6
  %call.i.i51 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lu_gp_node) #14
  br i1 %call.i.i51, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.t10_alua_lu_gp, ptr %lu_gp, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %lu_gp_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lu_gp_node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %lu_gp_node to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %lu_gp_node, align 4
  %prev.i = getelementptr inbounds %struct.t10_alua_lu_gp, ptr %lu_gp, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %8 = load i32, ptr @alua_lu_gps_count, align 4
  %dec = add i32 %8, -1
  store i32 %dec, ptr @alua_lu_gps_count, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @lu_gps_lock) #14
  %lu_gp_ref_cnt = getelementptr inbounds %struct.t10_alua_lu_gp, ptr %lu_gp, i32 0, i32 3
  %call.i.i59 = tail call zeroext i1 @__kasan_check_read(ptr noundef %lu_gp_ref_cnt, i32 noundef 4) #14
  %9 = ptrtoint ptr %lu_gp_ref_cnt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %lu_gp_ref_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not60 = icmp eq i32 %10, 0
  br i1 %tobool.not60, label %list_del.exit.while.end_crit_edge, label %list_del.exit.do.end_crit_edge

list_del.exit.do.end_crit_edge:                   ; preds = %list_del.exit
  br label %do.end

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %list_del.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !347
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !348
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %lu_gp_ref_cnt, i32 noundef 4) #14
  %11 = ptrtoint ptr %lu_gp_ref_cnt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %lu_gp_ref_cnt, align 4
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %list_del.exit.while.end_crit_edge
  %lu_gp_lock = getelementptr inbounds %struct.t10_alua_lu_gp, ptr %lu_gp, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lu_gp_lock) #14
  %lu_gp_mem_list = getelementptr inbounds %struct.t10_alua_lu_gp, ptr %lu_gp, i32 0, i32 7
  %13 = ptrtoint ptr %lu_gp_mem_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lu_gp_mem_list, align 4
  %cmp.not63 = icmp eq ptr %14, %lu_gp_mem_list
  br i1 %cmp.not63, label %while.end.for.end_crit_edge, label %for.body.lr.ph

while.end.for.end_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %while.end
  %lu_gp_members = getelementptr inbounds %struct.t10_alua_lu_gp, ptr %lu_gp, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end22.for.body_crit_edge, %for.body.lr.ph
  %.pn.in64 = phi ptr [ %14, %for.body.lr.ph ], [ %.pn66, %if.end22.for.body_crit_edge ]
  %lu_gp_mem.065 = getelementptr i8, ptr %.pn.in64, i32 -60
  %15 = ptrtoint ptr %.pn.in64 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn66 = load ptr, ptr %.pn.in64, align 4
  %16 = ptrtoint ptr %lu_gp_mem.065 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %lu_gp_mem.065, align 4, !range !349
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool14.not = icmp eq i8 %17, 0
  br i1 %tobool14.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %for.body
  %call.i.i52 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in64) #14
  br i1 %call.i.i52, label %if.end.i.i55, label %if.then.list_del.exit57_crit_edge

if.then.list_del.exit57_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit57

if.end.i.i55:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i53 = getelementptr inbounds %struct.list_head, ptr %.pn.in64, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i53 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i53, align 4
  %20 = ptrtoint ptr %.pn.in64 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %.pn.in64, align 4
  %prev1.i.i.i54 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i54 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i54, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del.exit57

list_del.exit57:                                  ; preds = %if.end.i.i55, %if.then.list_del.exit57_crit_edge
  %24 = ptrtoint ptr %.pn.in64 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in64, align 4
  %prev.i56 = getelementptr inbounds %struct.list_head, ptr %.pn.in64, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i56 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i56, align 4
  %26 = ptrtoint ptr %lu_gp_members to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %lu_gp_members, align 4
  %dec16 = add i32 %27, -1
  store i32 %dec16, ptr %lu_gp_members, align 4
  %28 = ptrtoint ptr %lu_gp_mem.065 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %lu_gp_mem.065, align 4
  br label %if.end

if.end:                                           ; preds = %list_del.exit57, %for.body.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lu_gp_lock) #14
  %lu_gp_mem_lock = getelementptr i8, ptr %.pn.in64, i32 -52
  tail call void @_raw_spin_lock(ptr noundef %lu_gp_mem_lock) #14
  %29 = load ptr, ptr @default_lu_gp, align 4
  %cmp19.not = icmp eq ptr %29, %lu_gp
  br i1 %cmp19.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.end
  %lu_gp_lock.i = getelementptr inbounds %struct.t10_alua_lu_gp, ptr %29, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lu_gp_lock.i) #14
  %lu_gp1.i = getelementptr i8, ptr %.pn.in64, i32 -8
  %30 = ptrtoint ptr %lu_gp1.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %lu_gp1.i, align 4
  %31 = ptrtoint ptr %lu_gp_mem.065 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %lu_gp_mem.065, align 4
  %lu_gp_mem_list2.i = getelementptr inbounds %struct.t10_alua_lu_gp, ptr %29, i32 0, i32 7
  %prev.i.i58 = getelementptr inbounds %struct.t10_alua_lu_gp, ptr %29, i32 0, i32 7, i32 1
  %32 = ptrtoint ptr %prev.i.i58 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i58, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn.in64, ptr noundef %33, ptr noundef %lu_gp_mem_list2.i) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then20.__core_alua_attach_lu_gp_mem.exit_crit_edge

if.then20.__core_alua_attach_lu_gp_mem.exit_crit_edge: ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  br label %__core_alua_attach_lu_gp_mem.exit

if.end.i.i.i:                                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  %34 = ptrtoint ptr %prev.i.i58 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %.pn.in64, ptr %prev.i.i58, align 4
  %35 = ptrtoint ptr %.pn.in64 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %lu_gp_mem_list2.i, ptr %.pn.in64, align 4
  %prev3.i.i.i = getelementptr i8, ptr %.pn.in64, i32 4
  %36 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev3.i.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %.pn.in64, ptr %33, align 4
  br label %__core_alua_attach_lu_gp_mem.exit

__core_alua_attach_lu_gp_mem.exit:                ; preds = %if.end.i.i.i, %if.then20.__core_alua_attach_lu_gp_mem.exit_crit_edge
  %lu_gp_members.i = getelementptr inbounds %struct.t10_alua_lu_gp, ptr %29, i32 0, i32 2
  %38 = ptrtoint ptr %lu_gp_members.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %lu_gp_members.i, align 4
  %inc.i = add i32 %39, 1
  store i32 %inc.i, ptr %lu_gp_members.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lu_gp_lock.i) #14
  br label %if.end22

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %lu_gp21 = getelementptr i8, ptr %.pn.in64, i32 -8
  %40 = ptrtoint ptr %lu_gp21 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %lu_gp21, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.else, %__core_alua_attach_lu_gp_mem.exit
  tail call void @_raw_spin_unlock(ptr noundef %lu_gp_mem_lock) #14
  tail call void @_raw_spin_lock(ptr noundef %lu_gp_lock) #14
  %cmp.not = icmp eq ptr %.pn66, %lu_gp_mem_list
  br i1 %cmp.not, label %if.end22.for.end_crit_edge, label %if.end22.for.body_crit_edge

if.end22.for.body_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.end22.for.end_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %if.end22.for.end_crit_edge, %while.end.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lu_gp_lock) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @t10_alua_lu_gp_cache to i32))
  %41 = load ptr, ptr @t10_alua_lu_gp_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %41, ptr noundef %lu_gp) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__core_alua_attach_lu_gp_mem(ptr noundef %lu_gp_mem, ptr noundef %lu_gp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %lu_gp_lock = getelementptr inbounds %struct.t10_alua_lu_gp, ptr %lu_gp, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lu_gp_lock) #14
  %lu_gp1 = getelementptr inbounds %struct.t10_alua_lu_gp_member, ptr %lu_gp_mem, i32 0, i32 3
  %0 = ptrtoint ptr %lu_gp1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %lu_gp, ptr %lu_gp1, align 4
  %1 = ptrtoint ptr %lu_gp_mem to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %lu_gp_mem, align 4
  %lu_gp_mem_list = getelementptr inbounds %struct.t10_alua_lu_gp_member, ptr %lu_gp_mem, i32 0, i32 5
  %lu_gp_mem_list2 = getelementptr inbounds %struct.t10_alua_lu_gp, ptr %lu_gp, i32 0, i32 7
  %prev.i = getelementptr inbounds %struct.t10_alua_lu_gp, ptr %lu_gp, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %lu_gp_mem_list, ptr noundef %3, ptr noundef %lu_gp_mem_list2) #14
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %lu_gp_mem_list, ptr %prev.i, align 4
  %5 = ptrtoint ptr %lu_gp_mem_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %lu_gp_mem_list2, ptr %lu_gp_mem_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.t10_alua_lu_gp_member, ptr %lu_gp_mem, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev3.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %lu_gp_mem_list, ptr %3, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %lu_gp_members = getelementptr inbounds %struct.t10_alua_lu_gp, ptr %lu_gp, i32 0, i32 2
  %8 = ptrtoint ptr %lu_gp_members to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lu_gp_members, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %lu_gp_members, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lu_gp_lock) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @core_alua_free_lu_gp_mem(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_alua_lu_gp_mem = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %dev_alua_lu_gp_mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_alua_lu_gp_mem, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %lu_gp_mem_ref_cnt = getelementptr inbounds %struct.t10_alua_lu_gp_member, ptr %1, i32 0, i32 1
  %call.i.i33 = tail call zeroext i1 @__kasan_check_read(ptr noundef %lu_gp_mem_ref_cnt, i32 noundef 4) #14
  %2 = ptrtoint ptr %lu_gp_mem_ref_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %lu_gp_mem_ref_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not34 = icmp eq i32 %3, 0
  br i1 %tobool1.not34, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.do.end_crit_edge

while.cond.preheader.do.end_crit_edge:            ; preds = %while.cond.preheader
  br label %do.end

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %while.cond.preheader.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !350
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !351
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %lu_gp_mem_ref_cnt, i32 noundef 4) #14
  %4 = ptrtoint ptr %lu_gp_mem_ref_cnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %lu_gp_mem_ref_cnt, align 4
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %lu_gp_mem_lock = getelementptr inbounds %struct.t10_alua_lu_gp_member, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lu_gp_mem_lock) #14
  %lu_gp8 = getelementptr inbounds %struct.t10_alua_lu_gp_member, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %lu_gp8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lu_gp8, align 4
  %tobool9.not = icmp eq ptr %7, null
  br i1 %tobool9.not, label %while.end.if.end17_crit_edge, label %if.then10

while.end.if.end17_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.then10:                                        ; preds = %while.end
  %lu_gp_lock = getelementptr inbounds %struct.t10_alua_lu_gp, ptr %7, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lu_gp_lock) #14
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %1, align 4, !range !349
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool11.not = icmp eq i8 %9, 0
  br i1 %tobool11.not, label %if.then10.if.end14_crit_edge, label %if.then12

if.then10.if.end14_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then12:                                        ; preds = %if.then10
  %lu_gp_mem_list = getelementptr inbounds %struct.t10_alua_lu_gp_member, ptr %1, i32 0, i32 5
  %call.i.i32 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lu_gp_mem_list) #14
  br i1 %call.i.i32, label %if.end.i.i, label %if.then12.list_del.exit_crit_edge

if.then12.list_del.exit_crit_edge:                ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.t10_alua_lu_gp_member, ptr %1, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %lu_gp_mem_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lu_gp_mem_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then12.list_del.exit_crit_edge
  %16 = ptrtoint ptr %lu_gp_mem_list to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %lu_gp_mem_list, align 4
  %prev.i = getelementptr inbounds %struct.t10_alua_lu_gp_member, ptr %1, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %lu_gp_members = getelementptr inbounds %struct.t10_alua_lu_gp, ptr %7, i32 0, i32 2
  %18 = ptrtoint ptr %lu_gp_members to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %lu_gp_members, align 4
  %dec = add i32 %19, -1
  store i32 %dec, ptr %lu_gp_members, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %1, align 4
  br label %if.end14

if.end14:                                         ; preds = %list_del.exit, %if.then10.if.end14_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lu_gp_lock) #14
  %21 = ptrtoint ptr %lu_gp8 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %lu_gp8, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.end14, %while.end.if.end17_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lu_gp_mem_lock) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @t10_alua_lu_gp_mem_cache to i32))
  %22 = load ptr, ptr @t10_alua_lu_gp_mem_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %22, ptr noundef nonnull %1) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @core_alua_get_lu_gp_by_name(ptr nocapture noundef readonly %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @lu_gps_lock) #14
  %.pn17 = load ptr, ptr @lu_gps_list, align 4
  %cmp.not18 = icmp eq ptr %.pn17, @lu_gps_list
  br i1 %cmp.not18, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn19 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn17, %entry.for.body_crit_edge ]
  %lu_gp_valid_id = getelementptr i8, ptr %.pn19, i32 -136
  %0 = ptrtoint ptr %lu_gp_valid_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lu_gp_valid_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end:                                           ; preds = %for.body
  %lu_gp_group = getelementptr i8, ptr %.pn19, i32 -80
  %2 = ptrtoint ptr %lu_gp_group to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lu_gp_group, align 4
  %call1 = tail call i32 @strcmp(ptr noundef %3, ptr noundef %name) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %lu_gp.0.le = getelementptr i8, ptr %.pn19, i32 -140
  %lu_gp_ref_cnt = getelementptr i8, ptr %.pn19, i32 -128
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %lu_gp_ref_cnt, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %lu_gp_ref_cnt, i32 1, i32 3, i32 1) #14
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %lu_gp_ref_cnt, ptr %lu_gp_ref_cnt, i32 1, ptr elementtype(i32) %lu_gp_ref_cnt) #14, !srcloc !339
  br label %cleanup

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %5 = ptrtoint ptr %.pn19 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn19, align 4
  %cmp.not = icmp eq ptr %.pn, @lu_gps_list
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %lu_gp.0.le, %if.then3 ], [ null, %entry.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @lu_gps_lock) #14
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @core_alua_put_lu_gp_from_name(ptr noundef %lu_gp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @lu_gps_lock) #14
  %lu_gp_ref_cnt = getelementptr inbounds %struct.t10_alua_lu_gp, ptr %lu_gp, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %lu_gp_ref_cnt, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %lu_gp_ref_cnt, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %lu_gp_ref_cnt, ptr %lu_gp_ref_cnt, i32 1, ptr elementtype(i32) %lu_gp_ref_cnt) #14, !srcloc !342
  tail call void @_raw_spin_unlock(ptr noundef nonnull @lu_gps_lock) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__core_alua_drop_lu_gp_mem(ptr noundef %lu_gp_mem, ptr noundef %lu_gp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %lu_gp_lock = getelementptr inbounds %struct.t10_alua_lu_gp, ptr %lu_gp, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lu_gp_lock) #14
  %lu_gp_mem_list = getelementptr inbounds %struct.t10_alua_lu_gp_member, ptr %lu_gp_mem, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lu_gp_mem_list) #14
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.t10_alua_lu_gp_member, ptr %lu_gp_mem, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %lu_gp_mem_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lu_gp_mem_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %lu_gp_mem_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %lu_gp_mem_list, align 4
  %prev.i = getelementptr inbounds %struct.t10_alua_lu_gp_member, ptr %lu_gp_mem, i32 0, i32 5, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %lu_gp1 = getelementptr inbounds %struct.t10_alua_lu_gp_member, ptr %lu_gp_mem, i32 0, i32 3
  %8 = ptrtoint ptr %lu_gp1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %lu_gp1, align 4
  %9 = ptrtoint ptr %lu_gp_mem to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %lu_gp_mem, align 4
  %lu_gp_members = getelementptr inbounds %struct.t10_alua_lu_gp, ptr %lu_gp, i32 0, i32 2
  %10 = ptrtoint ptr %lu_gp_members to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lu_gp_members, align 4
  %dec = add i32 %11, -1
  store i32 %dec, ptr %lu_gp_members, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lu_gp_lock) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @core_alua_allocate_tg_pt_gp(ptr noundef %dev, ptr nocapture noundef readnone %name, i32 noundef %def_group) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @t10_alua_tg_pt_gp_cache to i32))
  %0 = load ptr, ptr @t10_alua_tg_pt_gp_cache, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3520) #14
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %tg_pt_gp_list = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %call.i, i32 0, i32 17
  %1 = ptrtoint ptr %tg_pt_gp_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %tg_pt_gp_list, ptr %tg_pt_gp_list, align 8
  %prev.i = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %call.i, i32 0, i32 17, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %tg_pt_gp_list, ptr %prev.i, align 4
  %tg_pt_gp_lun_list = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %call.i, i32 0, i32 18
  %3 = ptrtoint ptr %tg_pt_gp_lun_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %tg_pt_gp_lun_list, ptr %tg_pt_gp_lun_list, align 8
  %prev.i40 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %call.i, i32 0, i32 18, i32 1
  %4 = ptrtoint ptr %prev.i40 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %tg_pt_gp_lun_list, ptr %prev.i40, align 4
  %tg_pt_gp_transition_mutex = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %call.i, i32 0, i32 14
  tail call void @__mutex_init(ptr noundef %tg_pt_gp_transition_mutex, ptr noundef nonnull @.str.47, ptr noundef nonnull @core_alua_allocate_tg_pt_gp.__key) #14
  %tg_pt_gp_lock = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %call.i, i32 0, i32 13
  tail call void @__raw_spin_lock_init(ptr noundef %tg_pt_gp_lock, ptr noundef nonnull @.str.49, ptr noundef nonnull @core_alua_allocate_tg_pt_gp.__key.48, i16 noundef signext 3) #14
  %tg_pt_gp_ref_cnt = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %call.i, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tg_pt_gp_ref_cnt, i32 noundef 4) #14
  %5 = ptrtoint ptr %tg_pt_gp_ref_cnt to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 0, ptr %tg_pt_gp_ref_cnt, align 8
  %tg_pt_gp_dev = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %call.i, i32 0, i32 15
  %6 = ptrtoint ptr %tg_pt_gp_dev to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %tg_pt_gp_dev, align 4
  %tg_pt_gp_alua_access_state = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %call.i, i32 0, i32 11
  %7 = ptrtoint ptr %tg_pt_gp_alua_access_state to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %tg_pt_gp_alua_access_state, align 4
  %tg_pt_gp_alua_access_type = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %tg_pt_gp_alua_access_type to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 48, ptr %tg_pt_gp_alua_access_type, align 8
  %tg_pt_gp_nonop_delay_msecs = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %call.i, i32 0, i32 5
  %9 = ptrtoint ptr %tg_pt_gp_nonop_delay_msecs to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 100, ptr %tg_pt_gp_nonop_delay_msecs, align 4
  %tg_pt_gp_trans_delay_msecs = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %call.i, i32 0, i32 6
  %10 = ptrtoint ptr %tg_pt_gp_trans_delay_msecs to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %tg_pt_gp_trans_delay_msecs, align 8
  %tg_pt_gp_implicit_trans_secs = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %call.i, i32 0, i32 7
  %11 = ptrtoint ptr %tg_pt_gp_implicit_trans_secs to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %tg_pt_gp_implicit_trans_secs, align 4
  %tg_pt_gp_alua_supported_states = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %tg_pt_gp_alua_supported_states to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 207, ptr %tg_pt_gp_alua_supported_states, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %def_group)
  %tobool9.not = icmp eq i32 %def_group, 0
  br i1 %tobool9.not, label %if.end.cleanup_crit_edge, label %if.then10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then10:                                        ; preds = %if.end
  %t10_alua = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 37
  %tg_pt_gps_lock = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 37, i32 6
  tail call void @_raw_spin_lock(ptr noundef %tg_pt_gps_lock) #14
  %13 = ptrtoint ptr %t10_alua to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %t10_alua, align 8
  %inc = add i16 %14, 1
  store i16 %inc, ptr %t10_alua, align 8
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %call.i, align 8
  %tg_pt_gp_valid_id = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %tg_pt_gp_valid_id to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %tg_pt_gp_valid_id, align 4
  %alua_tg_pt_gps_count = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 37, i32 1
  %17 = ptrtoint ptr %alua_tg_pt_gps_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %alua_tg_pt_gps_count, align 4
  %inc13 = add i32 %18, 1
  store i32 %inc13, ptr %alua_tg_pt_gps_count, align 4
  %tg_pt_gps_list = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 37, i32 10
  %prev.i41 = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 37, i32 10, i32 1
  %19 = ptrtoint ptr %prev.i41 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i41, align 4
  %call.i.i42 = tail call zeroext i1 @__list_add_valid(ptr noundef %tg_pt_gp_list, ptr noundef %20, ptr noundef %tg_pt_gps_list) #14
  br i1 %call.i.i42, label %if.end.i.i, label %if.then10.list_add_tail.exit_crit_edge

if.then10.list_add_tail.exit_crit_edge:           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  %21 = ptrtoint ptr %prev.i41 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %tg_pt_gp_list, ptr %prev.i41, align 4
  %22 = ptrtoint ptr %tg_pt_gp_list to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %tg_pt_gps_list, ptr %tg_pt_gp_list, align 8
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %tg_pt_gp_list, ptr %20, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then10.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %tg_pt_gps_lock) #14
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.end.cleanup_crit_edge, %do.end
  ret ptr %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @core_alua_set_tg_pt_gp_id(ptr noundef %tg_pt_gp, i16 noundef zeroext %tg_pt_gp_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tg_pt_gp_valid_id = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %tg_pt_gp, i32 0, i32 1
  %0 = ptrtoint ptr %tg_pt_gp_valid_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tg_pt_gp_valid_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %tg_pt_gp_dev = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %tg_pt_gp, i32 0, i32 15
  %2 = ptrtoint ptr %tg_pt_gp_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tg_pt_gp_dev, align 4
  %t10_alua = getelementptr inbounds %struct.se_device, ptr %3, i32 0, i32 37
  %tg_pt_gps_lock = getelementptr inbounds %struct.se_device, ptr %3, i32 0, i32 37, i32 6
  tail call void @_raw_spin_lock(ptr noundef %tg_pt_gps_lock) #14
  %alua_tg_pt_gps_count = getelementptr inbounds %struct.se_device, ptr %3, i32 0, i32 37, i32 1
  %4 = ptrtoint ptr %alua_tg_pt_gps_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %alua_tg_pt_gps_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %5)
  %cmp = icmp eq i32 %5, 65535
  br i1 %cmp, label %do.end5, label %again.preheader

again.preheader:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %tg_pt_gp_id)
  %cmp11.not = icmp eq i16 %tg_pt_gp_id, 0
  %tg_pt_gps_list = getelementptr inbounds %struct.se_device, ptr %3, i32 0, i32 37, i32 10
  br i1 %cmp11.not, label %again.preheader.cond.false_crit_edge, label %again.preheader.cond.end_crit_edge

again.preheader.cond.end_crit_edge:               ; preds = %again.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

again.preheader.cond.false_crit_edge:             ; preds = %again.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.false

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53) #17
  tail call void @_raw_spin_unlock(ptr noundef %tg_pt_gps_lock) #14
  br label %cleanup

cond.false:                                       ; preds = %if.then28.cond.false_crit_edge, %again.preheader.cond.false_crit_edge
  %6 = ptrtoint ptr %t10_alua to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %t10_alua, align 8
  %inc = add i16 %7, 1
  store i16 %inc, ptr %t10_alua, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %again.preheader.cond.end_crit_edge
  %cond = phi i16 [ %7, %cond.false ], [ %tg_pt_gp_id, %again.preheader.cond.end_crit_edge ]
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %cond.end
  %.pn.in = phi ptr [ %tg_pt_gps_list, %cond.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %8 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp21.not = icmp eq ptr %.pn, %tg_pt_gps_list
  br i1 %cmp21.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %tg_pt_gp_tmp.0 = getelementptr i8, ptr %.pn, i32 -272
  %9 = ptrtoint ptr %tg_pt_gp_tmp.0 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %tg_pt_gp_tmp.0, align 4
  %cmp26 = icmp eq i16 %10, %cond
  br i1 %cmp26, label %if.then28, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond

if.then28:                                        ; preds = %for.body
  br i1 %cmp11.not, label %if.then28.cond.false_crit_edge, label %do.end34

if.then28.cond.false_crit_edge:                   ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.false

do.end34:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #16
  %conv.le = zext i16 %tg_pt_gp_id to i32
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %conv.le) #17
  tail call void @_raw_spin_unlock(ptr noundef %tg_pt_gps_lock) #14
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %11 = ptrtoint ptr %tg_pt_gp to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %cond, ptr %tg_pt_gp, align 4
  %12 = ptrtoint ptr %tg_pt_gp_valid_id to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %tg_pt_gp_valid_id, align 4
  %tg_pt_gp_list48 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %tg_pt_gp, i32 0, i32 17
  %prev.i = getelementptr inbounds %struct.se_device, ptr %3, i32 0, i32 37, i32 10, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %tg_pt_gp_list48, ptr noundef %14, ptr noundef %tg_pt_gps_list) #14
  br i1 %call.i.i, label %if.end.i.i, label %for.end.list_add_tail.exit_crit_edge

for.end.list_add_tail.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %tg_pt_gp_list48, ptr %prev.i, align 4
  %16 = ptrtoint ptr %tg_pt_gp_list48 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %tg_pt_gps_list, ptr %tg_pt_gp_list48, align 4
  %prev3.i.i = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %tg_pt_gp, i32 0, i32 17, i32 1
  %17 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev3.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %tg_pt_gp_list48, ptr %14, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %for.end.list_add_tail.exit_crit_edge
  %19 = ptrtoint ptr %alua_tg_pt_gps_count to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %alua_tg_pt_gps_count, align 4
  %inc53 = add i32 %20, 1
  store i32 %inc53, ptr %alua_tg_pt_gps_count, align 4
  tail call void @_raw_spin_unlock(ptr noundef %tg_pt_gps_lock) #14
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %do.end34, %do.end5, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -28, %do.end5 ], [ -22, %do.end34 ], [ 0, %list_add_tail.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @core_alua_free_tg_pt_gp(ptr noundef %tg_pt_gp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tg_pt_gp_dev = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %tg_pt_gp, i32 0, i32 15
  %0 = ptrtoint ptr %tg_pt_gp_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tg_pt_gp_dev, align 4
  %tg_pt_gps_lock = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 37, i32 6
  tail call void @_raw_spin_lock(ptr noundef %tg_pt_gps_lock) #14
  %tg_pt_gp_valid_id = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %tg_pt_gp, i32 0, i32 1
  %2 = ptrtoint ptr %tg_pt_gp_valid_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tg_pt_gp_valid_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  %tg_pt_gp_list = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %tg_pt_gp, i32 0, i32 17
  %call.i.i100 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %tg_pt_gp_list) #14
  br i1 %call.i.i100, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %tg_pt_gp, i32 0, i32 17, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %tg_pt_gp_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tg_pt_gp_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %10 = ptrtoint ptr %tg_pt_gp_list to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %tg_pt_gp_list, align 4
  %prev.i = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %tg_pt_gp, i32 0, i32 17, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %alua_tg_pt_gps_count = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 37, i32 1
  %12 = ptrtoint ptr %alua_tg_pt_gps_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %alua_tg_pt_gps_count, align 4
  %dec = add i32 %13, -1
  store i32 %dec, ptr %alua_tg_pt_gps_count, align 4
  br label %if.end

if.end:                                           ; preds = %list_del.exit, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %tg_pt_gps_lock) #14
  %tg_pt_gp_ref_cnt = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %tg_pt_gp, i32 0, i32 12
  %call.i.i105 = tail call zeroext i1 @__kasan_check_read(ptr noundef %tg_pt_gp_ref_cnt, i32 noundef 4) #14
  %14 = ptrtoint ptr %tg_pt_gp_ref_cnt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %tg_pt_gp_ref_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool4.not106 = icmp eq i32 %15, 0
  br i1 %tobool4.not106, label %if.end.while.end_crit_edge, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  br label %do.end

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %if.end.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !352
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !353
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tg_pt_gp_ref_cnt, i32 noundef 4) #14
  %16 = ptrtoint ptr %tg_pt_gp_ref_cnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %tg_pt_gp_ref_cnt, align 4
  %tobool4.not = icmp eq i32 %17, 0
  br i1 %tobool4.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %if.end.while.end_crit_edge
  %tg_pt_gp_lock = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %tg_pt_gp, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %tg_pt_gp_lock) #14
  %tg_pt_gp_lun_list = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %tg_pt_gp, i32 0, i32 18
  %18 = ptrtoint ptr %tg_pt_gp_lun_list to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tg_pt_gp_lun_list, align 4
  %cmp.not109 = icmp eq ptr %19, %tg_pt_gp_lun_list
  br i1 %cmp.not109, label %while.end.for.end_crit_edge, label %for.body.lr.ph

while.end.for.end_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %while.end
  %tg_pt_gp_members = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %tg_pt_gp, i32 0, i32 10
  %default_tg_pt_gp = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 37, i32 8
  br label %for.body

for.body:                                         ; preds = %if.end64.for.body_crit_edge, %for.body.lr.ph
  %.pn.in110 = phi ptr [ %19, %for.body.lr.ph ], [ %.pn113, %if.end64.for.body_crit_edge ]
  %lun.0112 = getelementptr i8, ptr %.pn.in110, i32 -184
  %20 = ptrtoint ptr %.pn.in110 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn113 = load ptr, ptr %.pn.in110, align 8
  %call.i.i101 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in110) #14
  br i1 %call.i.i101, label %if.end.i.i104, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_init.exit

if.end.i.i104:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i102 = getelementptr inbounds %struct.list_head, ptr %.pn.in110, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i102 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i102, align 4
  %23 = ptrtoint ptr %.pn.in110 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %.pn.in110, align 4
  %prev1.i.i.i103 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i103 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i103, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i104, %for.body.list_del_init.exit_crit_edge
  %27 = ptrtoint ptr %.pn.in110 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %.pn.in110, ptr %.pn.in110, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in110, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %.pn.in110, ptr %prev.i3.i, align 4
  %29 = ptrtoint ptr %tg_pt_gp_members to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tg_pt_gp_members, align 4
  %dec19 = add i32 %30, -1
  store i32 %dec19, ptr %tg_pt_gp_members, align 4
  tail call void @_raw_spin_unlock(ptr noundef %tg_pt_gp_lock) #14
  %lun_tg_pt_gp_lock = getelementptr i8, ptr %.pn.in110, i32 12
  tail call void @_raw_spin_lock(ptr noundef %lun_tg_pt_gp_lock) #14
  %31 = ptrtoint ptr %default_tg_pt_gp to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %default_tg_pt_gp, align 4
  %cmp22.not = icmp eq ptr %32, %tg_pt_gp
  br i1 %cmp22.not, label %do.body33, label %if.then23

if.then23:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @__target_attach_tg_pt_gp(ptr noundef %lun.0112, ptr noundef %32)
  br label %if.end64

do.body33:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  %lun_tg_pt_gp = getelementptr i8, ptr %.pn.in110, i32 8
  %33 = ptrtoint ptr %lun_tg_pt_gp to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr null, ptr %lun_tg_pt_gp, align 8
  br label %if.end64

if.end64:                                         ; preds = %do.body33, %if.then23
  tail call void @_raw_spin_unlock(ptr noundef %lun_tg_pt_gp_lock) #14
  tail call void @_raw_spin_lock(ptr noundef %tg_pt_gp_lock) #14
  %cmp.not = icmp eq ptr %.pn113, %tg_pt_gp_lun_list
  br i1 %cmp.not, label %if.end64.for.end_crit_edge, label %if.end64.for.body_crit_edge

if.end64.for.body_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.end64.for.end_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %if.end64.for.end_crit_edge, %while.end.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %tg_pt_gp_lock) #14
  tail call void @synchronize_rcu() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @t10_alua_tg_pt_gp_cache to i32))
  %34 = load ptr, ptr @t10_alua_tg_pt_gp_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %34, ptr noundef %tg_pt_gp) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__target_attach_tg_pt_gp(ptr noundef %lun, ptr noundef %tg_pt_gp) unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %lun_tg_pt_gp_lock = getelementptr inbounds %struct.se_lun, ptr %lun, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %0 = ptrtoint ptr %lun_tg_pt_gp_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %lun_tg_pt_gp_lock, align 4
  %1 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body4, label %do.end9, !prof !346

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/target/target_core_alua.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1806, 0\0A.popsection", ""() #14, !srcloc !354
  unreachable

do.end9:                                          ; preds = %entry
  %tg_pt_gp_lock = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %tg_pt_gp, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %tg_pt_gp_lock) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !355
  %lun_tg_pt_gp34 = getelementptr inbounds %struct.se_lun, ptr %lun, i32 0, i32 14
  %2 = ptrtoint ptr %lun_tg_pt_gp34 to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %tg_pt_gp, ptr %lun_tg_pt_gp34, align 8
  %lun_tg_pt_gp_link = getelementptr inbounds %struct.se_lun, ptr %lun, i32 0, i32 13
  %tg_pt_gp_lun_list = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %tg_pt_gp, i32 0, i32 18
  %prev.i = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %tg_pt_gp, i32 0, i32 18, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %lun_tg_pt_gp_link, ptr noundef %4, ptr noundef %tg_pt_gp_lun_list) #14
  br i1 %call.i.i, label %if.end.i.i, label %do.end9.list_add_tail.exit_crit_edge

do.end9.list_add_tail.exit_crit_edge:             ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %lun_tg_pt_gp_link, ptr %prev.i, align 4
  %6 = ptrtoint ptr %lun_tg_pt_gp_link to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %tg_pt_gp_lun_list, ptr %lun_tg_pt_gp_link, align 4
  %prev3.i.i = getelementptr inbounds %struct.se_lun, ptr %lun, i32 0, i32 13, i32 1
  %7 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev3.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %lun_tg_pt_gp_link, ptr %4, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.end9.list_add_tail.exit_crit_edge
  %tg_pt_gp_members = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %tg_pt_gp, i32 0, i32 10
  %9 = ptrtoint ptr %tg_pt_gp_members to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tg_pt_gp_members, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %tg_pt_gp_members, align 4
  %lun_deve_lock = getelementptr inbounds %struct.se_lun, ptr %lun, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %lun_deve_lock) #14
  %lun_deve_list = getelementptr inbounds %struct.se_lun, ptr %lun, i32 0, i32 7
  %11 = ptrtoint ptr %lun_deve_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn70 = load ptr, ptr %lun_deve_list, align 4
  %cmp47.not71 = icmp eq ptr %.pn70, %lun_deve_list
  br i1 %cmp47.not71, label %list_add_tail.exit.for.end_crit_edge, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  br label %for.body

list_add_tail.exit.for.end_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %list_add_tail.exit.for.body_crit_edge
  %.pn72 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn70, %list_add_tail.exit.for.body_crit_edge ]
  %se_deve.0 = getelementptr i8, ptr %.pn72, i32 -168
  %call50 = tail call i32 @core_scsi3_ua_allocate(ptr noundef %se_deve.0, i8 noundef zeroext 63, i8 noundef zeroext 3) #14
  %12 = ptrtoint ptr %.pn72 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn = load ptr, ptr %.pn72, align 4
  %cmp47.not = icmp eq ptr %.pn, %lun_deve_list
  br i1 %cmp47.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %list_add_tail.exit.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lun_deve_lock) #14
  tail call void @_raw_spin_unlock(ptr noundef %tg_pt_gp_lock) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @target_attach_tg_pt_gp(ptr noundef %lun, ptr noundef %tg_pt_gp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %lun_tg_pt_gp_lock = getelementptr inbounds %struct.se_lun, ptr %lun, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %lun_tg_pt_gp_lock) #14
  tail call fastcc void @__target_attach_tg_pt_gp(ptr noundef %lun, ptr noundef %tg_pt_gp)
  tail call void @_raw_spin_unlock(ptr noundef %lun_tg_pt_gp_lock) #14
  tail call void @synchronize_rcu() #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @target_detach_tg_pt_gp(ptr noundef %lun) local_unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %lun_tg_pt_gp_lock = getelementptr inbounds %struct.se_lun, ptr %lun, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %lun_tg_pt_gp_lock) #14
  %lun_tg_pt_gp = getelementptr inbounds %struct.se_lun, ptr %lun, i32 0, i32 14
  %0 = ptrtoint ptr %lun_tg_pt_gp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %lun_tg_pt_gp, align 8
  %dep_map = getelementptr inbounds %struct.se_lun, ptr %lun, i32 0, i32 15, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.end10_crit_edge

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end10

lor.lhs.false:                                    ; preds = %entry
  %call3 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true, label %lor.lhs.false.do.end10_crit_edge

lor.lhs.false.do.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end10

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true7

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end10

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b62 = load i1, ptr @target_detach_tg_pt_gp.__warned, align 1
  br i1 %.b62, label %land.lhs.true7.do.end10_crit_edge, label %if.then

land.lhs.true7.do.end10_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end10

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @target_detach_tg_pt_gp.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1846, ptr noundef nonnull @.str.7) #14
  br label %do.end10

do.end10:                                         ; preds = %if.then, %land.lhs.true7.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %lor.lhs.false.do.end10_crit_edge, %entry.do.end10_crit_edge
  %tobool12.not = icmp eq ptr %1, null
  br i1 %tobool12.not, label %do.end10.if.end51_crit_edge, label %if.then13

do.end10.if.end51_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

if.then13:                                        ; preds = %do.end10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %2 = ptrtoint ptr %lun_tg_pt_gp_lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %lun_tg_pt_gp_lock, align 4
  %3 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.end7.i, !prof !346

do.body4.i:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/target/target_core_alua.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1832, 0\0A.popsection", ""() #14, !srcloc !356
  unreachable

do.end7.i:                                        ; preds = %if.then13
  %tg_pt_gp_lock.i = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %1, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %tg_pt_gp_lock.i) #14
  %lun_tg_pt_gp_link.i = getelementptr inbounds %struct.se_lun, ptr %lun, i32 0, i32 13
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lun_tg_pt_gp_link.i) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end7.i.__target_detach_tg_pt_gp.exit_crit_edge

do.end7.i.__target_detach_tg_pt_gp.exit_crit_edge: ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__target_detach_tg_pt_gp.exit

if.end.i.i.i:                                     ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.se_lun, ptr %lun, i32 0, i32 13, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i, align 4
  %6 = ptrtoint ptr %lun_tg_pt_gp_link.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lun_tg_pt_gp_link.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %__target_detach_tg_pt_gp.exit

__target_detach_tg_pt_gp.exit:                    ; preds = %if.end.i.i.i, %do.end7.i.__target_detach_tg_pt_gp.exit_crit_edge
  %10 = ptrtoint ptr %lun_tg_pt_gp_link.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %lun_tg_pt_gp_link.i, ptr %lun_tg_pt_gp_link.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.se_lun, ptr %lun, i32 0, i32 13, i32 1
  %11 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %lun_tg_pt_gp_link.i, ptr %prev.i3.i.i, align 4
  %tg_pt_gp_members.i = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %tg_pt_gp_members.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tg_pt_gp_members.i, align 4
  %dec.i = add i32 %13, -1
  store i32 %dec.i, ptr %tg_pt_gp_members.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %tg_pt_gp_lock.i) #14
  %14 = ptrtoint ptr %lun_tg_pt_gp to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr null, ptr %lun_tg_pt_gp, align 8
  br label %if.end51

if.end51:                                         ; preds = %__target_detach_tg_pt_gp.exit, %do.end10.if.end51_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lun_tg_pt_gp_lock) #14
  tail call void @synchronize_rcu() #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @core_alua_show_tg_pt_gp_info(ptr noundef %lun, ptr nocapture noundef writeonly %page) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !325) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !335
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.114, i32 noundef 696, ptr noundef nonnull @.str.115) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %lun_tg_pt_gp = getelementptr inbounds %struct.se_lun, ptr %lun, i32 0, i32 14
  %4 = ptrtoint ptr %lun_tg_pt_gp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %lun_tg_pt_gp, align 8
  %call = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b26 = load i1, ptr @core_alua_show_tg_pt_gp_info.__warned, align 1
  br i1 %.b26, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @core_alua_show_tg_pt_gp_info.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1873, ptr noundef nonnull @.str.7) #14
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %do.end7.if.end18_crit_edge, label %if.then10

do.end7.if.end18_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.then10:                                        ; preds = %do.end7
  %tg_pt_gp_group = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %tg_pt_gp_group to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tg_pt_gp_group, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %5, align 4
  %conv = zext i16 %9 to i32
  %tg_pt_gp_alua_access_state = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %5, i32 0, i32 11
  %10 = ptrtoint ptr %tg_pt_gp_alua_access_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tg_pt_gp_alua_access_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %11)
  %12 = icmp ult i32 %11, 16
  br i1 %12, label %switch.lookup, label %if.then10.core_alua_dump_state.exit_crit_edge

if.then10.core_alua_dump_state.exit_crit_edge:    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  br label %core_alua_dump_state.exit

switch.lookup:                                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  %switch.gep = getelementptr inbounds [16 x ptr], ptr @switch.table.core_alua_show_tg_pt_gp_info, i32 0, i32 %11
  %13 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %core_alua_dump_state.exit

core_alua_dump_state.exit:                        ; preds = %switch.lookup, %if.then10.core_alua_dump_state.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.22, %if.then10.core_alua_dump_state.exit_crit_edge ]
  %tg_pt_gp_alua_access_status = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %5, i32 0, i32 3
  %14 = ptrtoint ptr %tg_pt_gp_alua_access_status to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tg_pt_gp_alua_access_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %16 = icmp ult i32 %15, 3
  br i1 %16, label %switch.lookup45, label %core_alua_dump_state.exit.core_alua_dump_status.exit_crit_edge

core_alua_dump_state.exit.core_alua_dump_status.exit_crit_edge: ; preds = %core_alua_dump_state.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %core_alua_dump_status.exit

switch.lookup45:                                  ; preds = %core_alua_dump_state.exit
  call void @__sanitizer_cov_trace_pc() #16
  %switch.gep46 = getelementptr inbounds [3 x ptr], ptr @switch.table.core_alua_show_tg_pt_gp_info.153, i32 0, i32 %15
  %17 = ptrtoint ptr %switch.gep46 to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load47 = load ptr, ptr %switch.gep46, align 4
  br label %core_alua_dump_status.exit

core_alua_dump_status.exit:                       ; preds = %switch.lookup45, %core_alua_dump_state.exit.core_alua_dump_status.exit_crit_edge
  %retval.0.i30 = phi ptr [ %switch.load47, %switch.lookup45 ], [ @.str.22, %core_alua_dump_state.exit.core_alua_dump_status.exit_crit_edge ]
  %lun_tg_pt_secondary_offline = getelementptr inbounds %struct.se_lun, ptr %lun, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %lun_tg_pt_secondary_offline, i32 noundef 4) #14
  %18 = ptrtoint ptr %lun_tg_pt_secondary_offline to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %lun_tg_pt_secondary_offline, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool15.not = icmp eq i32 %19, 0
  %cond = select i1 %tobool15.not, ptr @.str.19, ptr @.str.59
  %lun_tg_pt_secondary_stat = getelementptr inbounds %struct.se_lun, ptr %lun, i32 0, i32 9
  %20 = ptrtoint ptr %lun_tg_pt_secondary_stat to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %lun_tg_pt_secondary_stat, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %21)
  %22 = icmp ult i32 %21, 3
  br i1 %22, label %switch.lookup48, label %core_alua_dump_status.exit.core_alua_dump_status.exit35_crit_edge

core_alua_dump_status.exit.core_alua_dump_status.exit35_crit_edge: ; preds = %core_alua_dump_status.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %core_alua_dump_status.exit35

switch.lookup48:                                  ; preds = %core_alua_dump_status.exit
  call void @__sanitizer_cov_trace_pc() #16
  %switch.gep49 = getelementptr inbounds [3 x ptr], ptr @switch.table.core_alua_show_tg_pt_gp_info.154, i32 0, i32 %21
  %23 = ptrtoint ptr %switch.gep49 to i32
  call void @__asan_load4_noabort(i32 %23)
  %switch.load50 = load ptr, ptr %switch.gep49, align 4
  br label %core_alua_dump_status.exit35

core_alua_dump_status.exit35:                     ; preds = %switch.lookup48, %core_alua_dump_status.exit.core_alua_dump_status.exit35_crit_edge
  %retval.0.i34 = phi ptr [ %switch.load50, %switch.lookup48 ], [ @.str.22, %core_alua_dump_status.exit.core_alua_dump_status.exit35_crit_edge ]
  %call17 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.58, ptr noundef %7, i32 noundef %conv, ptr noundef nonnull %retval.0.i, ptr noundef nonnull %retval.0.i30, ptr noundef nonnull %cond, ptr noundef nonnull %retval.0.i34)
  br label %if.end18

if.end18:                                         ; preds = %core_alua_dump_status.exit35, %do.end7.if.end18_crit_edge
  %len.0 = phi i32 [ %call17, %core_alua_dump_status.exit35 ], [ 0, %do.end7.if.end18_crit_edge ]
  %call.i36 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i36, label %if.end18.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i39

if.end18.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i39:                                ; preds = %if.end18
  %call1.i37 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i37)
  %tobool.not.i38 = icmp eq i32 %call1.i37, 0
  br i1 %tobool.not.i38, label %land.lhs.true.i39.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i41

land.lhs.true.i39.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i39
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i41:                               ; preds = %land.lhs.true.i39
  %.b4.i40 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i40, label %land.lhs.true2.i41.rcu_read_unlock.exit_crit_edge, label %if.then.i42

land.lhs.true2.i41.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i41
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i42:                                      ; preds = %land.lhs.true2.i41
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.114, i32 noundef 724, ptr noundef nonnull @.str.116) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i42, %land.lhs.true2.i41.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i39.rcu_read_unlock.exit_crit_edge, %if.end18.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !336
  %24 = tail call i32 @llvm.read_register.i32(metadata !325) #14
  %and.i.i.i.i.i43 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i43 to ptr
  %preempt_count.i.i.i.i44 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i44 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i44, align 4
  %sub.i.i.i = add i32 %27, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i44, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret i32 %len.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @core_alua_store_tg_pt_gp_info(ptr noundef %lun, ptr nocapture noundef readonly %page, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %lun_tpg = getelementptr inbounds %struct.se_lun, ptr %lun, i32 0, i32 16
  %0 = ptrtoint ptr %lun_tpg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lun_tpg, align 8
  %lun_se_dev = getelementptr inbounds %struct.se_lun, ptr %lun, i32 0, i32 6
  %2 = ptrtoint ptr %lun_se_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %lun_se_dev, align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf) #14
  %4 = call ptr @memset(ptr %buf, i32 255, i32 256)
  %transport_flags = getelementptr inbounds %struct.se_device, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %transport_flags to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %transport_flags, align 4
  %7 = and i8 %6, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %se_hba = getelementptr inbounds %struct.se_device, ptr %3, i32 0, i32 35
  %8 = ptrtoint ptr %se_hba to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %se_hba, align 8
  %hba_flags = getelementptr inbounds %struct.se_hba, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %hba_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hba_flags, align 4
  %and2 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %count)
  %cmp = icmp ugt i32 %count, 256
  br i1 %cmp, label %do.end8, label %if.end10

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60) #17
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %12 = sub i32 256, %count
  %13 = getelementptr i8, ptr %buf, i32 %count
  %14 = call ptr @memset(ptr %13, i32 0, i32 %12)
  %15 = call ptr @memcpy(ptr %buf, ptr %page, i32 %count)
  %call.i = call ptr @strim(ptr noundef nonnull %buf) #14
  %call14 = call i32 @strcmp(ptr noundef %call.i, ptr noundef nonnull dereferenceable(5) @.str.62) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end10.if.end23_crit_edge, label %if.then16

if.end10.if.end23_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

if.then16:                                        ; preds = %if.end10
  %call.i142 = call ptr @strim(ptr noundef nonnull %buf) #14
  %tg_pt_gps_lock.i = getelementptr inbounds %struct.se_device, ptr %3, i32 0, i32 37, i32 6
  call void @_raw_spin_lock(ptr noundef %tg_pt_gps_lock.i) #14
  %tg_pt_gps_list.i = getelementptr inbounds %struct.se_device, ptr %3, i32 0, i32 37, i32 10
  %16 = ptrtoint ptr %tg_pt_gps_list.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn29.i = load ptr, ptr %tg_pt_gps_list.i, align 4
  %cmp.not30.i = icmp eq ptr %.pn29.i, %tg_pt_gps_list.i
  br i1 %cmp.not30.i, label %if.then16.core_alua_get_tg_pt_gp_by_name.exit.thread_crit_edge, label %if.then16.for.body.i_crit_edge

if.then16.for.body.i_crit_edge:                   ; preds = %if.then16
  br label %for.body.i

if.then16.core_alua_get_tg_pt_gp_by_name.exit.thread_crit_edge: ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #16
  br label %core_alua_get_tg_pt_gp_by_name.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then16.for.body.i_crit_edge
  %.pn31.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn29.i, %if.then16.for.body.i_crit_edge ]
  %tg_pt_gp_valid_id.i = getelementptr i8, ptr %.pn31.i, i32 -268
  %17 = ptrtoint ptr %tg_pt_gp_valid_id.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tg_pt_gp_valid_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %tg_pt_gp_group.i = getelementptr i8, ptr %.pn31.i, i32 -80
  %19 = ptrtoint ptr %tg_pt_gp_group.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tg_pt_gp_group.i, align 4
  %call4.i = call i32 @strcmp(ptr noundef %20, ptr noundef %call.i142) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %core_alua_get_tg_pt_gp_by_name.exit, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %21 = ptrtoint ptr %.pn31.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn.i = load ptr, ptr %.pn31.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %tg_pt_gps_list.i
  br i1 %cmp.not.i, label %for.inc.i.core_alua_get_tg_pt_gp_by_name.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.core_alua_get_tg_pt_gp_by_name.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %core_alua_get_tg_pt_gp_by_name.exit.thread

core_alua_get_tg_pt_gp_by_name.exit.thread:       ; preds = %for.inc.i.core_alua_get_tg_pt_gp_by_name.exit.thread_crit_edge, %if.then16.core_alua_get_tg_pt_gp_by_name.exit.thread_crit_edge
  call void @_raw_spin_unlock(ptr noundef %tg_pt_gps_lock.i) #14
  br label %cleanup

core_alua_get_tg_pt_gp_by_name.exit:              ; preds = %if.end.i
  %tg_pt_gp.0.le.i = getelementptr i8, ptr %.pn31.i, i32 -272
  %tg_pt_gp_ref_cnt.i = getelementptr i8, ptr %.pn31.i, i32 -224
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %tg_pt_gp_ref_cnt.i, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %tg_pt_gp_ref_cnt.i, i32 1, i32 3, i32 1) #14
  %22 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tg_pt_gp_ref_cnt.i, ptr %tg_pt_gp_ref_cnt.i, i32 1, ptr elementtype(i32) %tg_pt_gp_ref_cnt.i) #14, !srcloc !339
  call void @_raw_spin_unlock(ptr noundef %tg_pt_gps_lock.i) #14
  %tobool20.not = icmp eq ptr %tg_pt_gp.0.le.i, null
  br i1 %tobool20.not, label %core_alua_get_tg_pt_gp_by_name.exit.cleanup_crit_edge, label %core_alua_get_tg_pt_gp_by_name.exit.if.end23_crit_edge

core_alua_get_tg_pt_gp_by_name.exit.if.end23_crit_edge: ; preds = %core_alua_get_tg_pt_gp_by_name.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

core_alua_get_tg_pt_gp_by_name.exit.cleanup_crit_edge: ; preds = %core_alua_get_tg_pt_gp_by_name.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end23:                                         ; preds = %core_alua_get_tg_pt_gp_by_name.exit.if.end23_crit_edge, %if.end10.if.end23_crit_edge
  %tg_pt_gp_new.0 = phi ptr [ %tg_pt_gp.0.le.i, %core_alua_get_tg_pt_gp_by_name.exit.if.end23_crit_edge ], [ null, %if.end10.if.end23_crit_edge ]
  %lun_tg_pt_gp_lock = getelementptr inbounds %struct.se_lun, ptr %lun, i32 0, i32 15
  call void @_raw_spin_lock(ptr noundef %lun_tg_pt_gp_lock) #14
  %lun_tg_pt_gp = getelementptr inbounds %struct.se_lun, ptr %lun, i32 0, i32 14
  %23 = ptrtoint ptr %lun_tg_pt_gp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %lun_tg_pt_gp, align 8
  %dep_map = getelementptr inbounds %struct.se_lun, ptr %lun, i32 0, i32 15, i32 0, i32 0, i32 4
  %call.i144 = call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i144)
  %tobool31.not = icmp eq i32 %call.i144, 0
  br i1 %tobool31.not, label %lor.lhs.false32, label %if.end23.do.end42_crit_edge

if.end23.do.end42_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end42

lor.lhs.false32:                                  ; preds = %if.end23
  %call33 = call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %land.lhs.true, label %lor.lhs.false32.do.end42_crit_edge

lor.lhs.false32.do.end42_crit_edge:               ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end42

land.lhs.true:                                    ; preds = %lor.lhs.false32
  %call35 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %land.lhs.true.do.end42_crit_edge, label %land.lhs.true37

land.lhs.true.do.end42_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end42

land.lhs.true37:                                  ; preds = %land.lhs.true
  %.b138 = load i1, ptr @core_alua_store_tg_pt_gp_info.__warned, align 1
  br i1 %.b138, label %land.lhs.true37.do.end42_crit_edge, label %if.then39

land.lhs.true37.do.end42_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end42

if.then39:                                        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @core_alua_store_tg_pt_gp_info.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1937, ptr noundef nonnull @.str.7) #14
  br label %do.end42

do.end42:                                         ; preds = %if.then39, %land.lhs.true37.do.end42_crit_edge, %land.lhs.true.do.end42_crit_edge, %lor.lhs.false32.do.end42_crit_edge, %if.end23.do.end42_crit_edge
  %tobool44.not = icmp eq ptr %24, null
  %tobool44.not.not = xor i1 %tobool44.not, true
  %tobool46.not = icmp eq ptr %tg_pt_gp_new.0, null
  %or.cond = select i1 %tobool44.not.not, i1 %tobool46.not, i1 false
  br i1 %or.cond, label %do.body48, label %if.end68

do.body48:                                        ; preds = %do.end42
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @core_alua_store_tg_pt_gp_info.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@core_alua_store_tg_pt_gp_info, %if.then54)) #14
          to label %do.end65 [label %if.then54], !srcloc !337

if.then54:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #16
  %se_tpg_tfo = getelementptr inbounds %struct.se_portal_group, ptr %1, i32 0, i32 10
  %25 = ptrtoint ptr %se_tpg_tfo to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %se_tpg_tfo, align 4
  %tpg_get_wwn = getelementptr inbounds %struct.target_core_fabric_ops, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %tpg_get_wwn to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tpg_get_wwn, align 4
  %call55 = call ptr %28(ptr noundef %1) #14
  %29 = ptrtoint ptr %se_tpg_tfo to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %se_tpg_tfo, align 4
  %tpg_get_tag = getelementptr inbounds %struct.target_core_fabric_ops, ptr %30, i32 0, i32 6
  %31 = ptrtoint ptr %tpg_get_tag to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tpg_get_tag, align 4
  %call57 = call zeroext i16 %32(ptr noundef %1) #14
  %conv58 = zext i16 %call57 to i32
  %lun_group = getelementptr inbounds %struct.se_lun, ptr %lun, i32 0, i32 18
  %33 = ptrtoint ptr %lun_group to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %lun_group, align 4
  %tg_pt_gp_group = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %24, i32 0, i32 16
  %35 = ptrtoint ptr %tg_pt_gp_group to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tg_pt_gp_group, align 4
  %37 = ptrtoint ptr %24 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %24, align 4
  %conv62 = zext i16 %38 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @core_alua_store_tg_pt_gp_info.__UNIQUE_ID_ddebug239, ptr noundef nonnull @.str.63, ptr noundef %call55, i32 noundef %conv58, ptr noundef %34, ptr noundef %36, i32 noundef %conv62) #14
  br label %do.end65

do.end65:                                         ; preds = %if.then54, %do.body48
  %default_tg_pt_gp = getelementptr inbounds %struct.se_device, ptr %3, i32 0, i32 37, i32 8
  %39 = ptrtoint ptr %default_tg_pt_gp to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %default_tg_pt_gp, align 4
  call fastcc void @target_swap_tg_pt_gp(ptr noundef %lun, ptr noundef nonnull %24, ptr noundef %40)
  br label %sync_rcu

if.end68:                                         ; preds = %do.end42
  call fastcc void @target_swap_tg_pt_gp(ptr noundef %lun, ptr noundef %24, ptr noundef %tg_pt_gp_new.0)
  call void @_raw_spin_unlock(ptr noundef %lun_tg_pt_gp_lock) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @core_alua_store_tg_pt_gp_info.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@core_alua_store_tg_pt_gp_info, %if.then82)) #14
          to label %do.end101 [label %if.then82], !srcloc !337

if.then82:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #16
  %cond = select i1 %tobool44.not, ptr @.str.66, ptr @.str.65
  %se_tpg_tfo84 = getelementptr inbounds %struct.se_portal_group, ptr %1, i32 0, i32 10
  %41 = ptrtoint ptr %se_tpg_tfo84 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %se_tpg_tfo84, align 4
  %tpg_get_wwn85 = getelementptr inbounds %struct.target_core_fabric_ops, ptr %42, i32 0, i32 5
  %43 = ptrtoint ptr %tpg_get_wwn85 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tpg_get_wwn85, align 4
  %call86 = call ptr %44(ptr noundef %1) #14
  %45 = ptrtoint ptr %se_tpg_tfo84 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %se_tpg_tfo84, align 4
  %tpg_get_tag88 = getelementptr inbounds %struct.target_core_fabric_ops, ptr %46, i32 0, i32 6
  %47 = ptrtoint ptr %tpg_get_tag88 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tpg_get_tag88, align 4
  %call89 = call zeroext i16 %48(ptr noundef %1) #14
  %conv90 = zext i16 %call89 to i32
  %lun_group91 = getelementptr inbounds %struct.se_lun, ptr %lun, i32 0, i32 18
  %49 = ptrtoint ptr %lun_group91 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %lun_group91, align 4
  %tg_pt_gp_group94 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %tg_pt_gp_new.0, i32 0, i32 16
  %51 = ptrtoint ptr %tg_pt_gp_group94 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tg_pt_gp_group94, align 4
  %53 = ptrtoint ptr %tg_pt_gp_new.0 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %tg_pt_gp_new.0, align 4
  %conv98 = zext i16 %54 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @core_alua_store_tg_pt_gp_info.__UNIQUE_ID_ddebug240, ptr noundef nonnull @.str.64, ptr noundef nonnull %cond, ptr noundef %call86, i32 noundef %conv90, ptr noundef %50, ptr noundef %52, i32 noundef %conv98) #14
  br label %do.end101

do.end101:                                        ; preds = %if.then82, %if.end68
  %tg_pt_gp_dev.i = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %tg_pt_gp_new.0, i32 0, i32 15
  %55 = ptrtoint ptr %tg_pt_gp_dev.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tg_pt_gp_dev.i, align 4
  %tg_pt_gps_lock.i145 = getelementptr inbounds %struct.se_device, ptr %56, i32 0, i32 37, i32 6
  call void @_raw_spin_lock(ptr noundef %tg_pt_gps_lock.i145) #14
  %tg_pt_gp_ref_cnt.i146 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %tg_pt_gp_new.0, i32 0, i32 12
  %call.i.i.i147 = call zeroext i1 @__kasan_check_write(ptr noundef %tg_pt_gp_ref_cnt.i146, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %tg_pt_gp_ref_cnt.i146, i32 1, i32 3, i32 1) #14
  %57 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tg_pt_gp_ref_cnt.i146, ptr %tg_pt_gp_ref_cnt.i146, i32 1, ptr elementtype(i32) %tg_pt_gp_ref_cnt.i146) #14, !srcloc !342
  br label %sync_rcu

sync_rcu:                                         ; preds = %do.end101, %do.end65
  %tg_pt_gps_lock.i145.sink = phi ptr [ %tg_pt_gps_lock.i145, %do.end101 ], [ %lun_tg_pt_gp_lock, %do.end65 ]
  call void @_raw_spin_unlock(ptr noundef %tg_pt_gps_lock.i145.sink) #14
  call void @synchronize_rcu() #14
  br label %cleanup

cleanup:                                          ; preds = %sync_rcu, %core_alua_get_tg_pt_gp_by_name.exit.cleanup_crit_edge, %core_alua_get_tg_pt_gp_by_name.exit.thread, %do.end8, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end8 ], [ %count, %sync_rcu ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -19, %core_alua_get_tg_pt_gp_by_name.exit.cleanup_crit_edge ], [ -19, %core_alua_get_tg_pt_gp_by_name.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @target_swap_tg_pt_gp(ptr noundef %lun, ptr noundef %old_tg_pt_gp, ptr noundef %new_tg_pt_gp) unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  %agg.tmp.sroa.0.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %lun_tg_pt_gp_lock = getelementptr inbounds %struct.se_lun, ptr %lun, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %0 = ptrtoint ptr %lun_tg_pt_gp_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %lun_tg_pt_gp_lock, align 4
  %1 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body4, label %do.end7, !prof !346

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/target/target_core_alua.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1859, 0\0A.popsection", ""() #14, !srcloc !357
  unreachable

do.end7:                                          ; preds = %entry
  %tobool8.not = icmp eq ptr %old_tg_pt_gp, null
  br i1 %tobool8.not, label %do.end7.if.end10_crit_edge, label %if.then9

do.end7.if.end10_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.then9:                                         ; preds = %do.end7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %2 = ptrtoint ptr %lun_tg_pt_gp_lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %lun_tg_pt_gp_lock, align 4
  %3 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.end7.i, !prof !346

do.body4.i:                                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/target/target_core_alua.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1832, 0\0A.popsection", ""() #14, !srcloc !356
  unreachable

do.end7.i:                                        ; preds = %if.then9
  %tg_pt_gp_lock.i = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %old_tg_pt_gp, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %tg_pt_gp_lock.i) #14
  %lun_tg_pt_gp_link.i = getelementptr inbounds %struct.se_lun, ptr %lun, i32 0, i32 13
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lun_tg_pt_gp_link.i) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end7.i.__target_detach_tg_pt_gp.exit_crit_edge

do.end7.i.__target_detach_tg_pt_gp.exit_crit_edge: ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__target_detach_tg_pt_gp.exit

if.end.i.i.i:                                     ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.se_lun, ptr %lun, i32 0, i32 13, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i, align 4
  %6 = ptrtoint ptr %lun_tg_pt_gp_link.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lun_tg_pt_gp_link.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %__target_detach_tg_pt_gp.exit

__target_detach_tg_pt_gp.exit:                    ; preds = %if.end.i.i.i, %do.end7.i.__target_detach_tg_pt_gp.exit_crit_edge
  %10 = ptrtoint ptr %lun_tg_pt_gp_link.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %lun_tg_pt_gp_link.i, ptr %lun_tg_pt_gp_link.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.se_lun, ptr %lun, i32 0, i32 13, i32 1
  %11 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %lun_tg_pt_gp_link.i, ptr %prev.i3.i.i, align 4
  %tg_pt_gp_members.i = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %old_tg_pt_gp, i32 0, i32 10
  %12 = ptrtoint ptr %tg_pt_gp_members.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tg_pt_gp_members.i, align 4
  %dec.i = add i32 %13, -1
  store i32 %dec.i, ptr %tg_pt_gp_members.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %tg_pt_gp_lock.i) #14
  br label %if.end10

if.end10:                                         ; preds = %__target_detach_tg_pt_gp.exit, %do.end7.if.end10_crit_edge
  tail call fastcc void @__target_attach_tg_pt_gp(ptr noundef %lun, ptr noundef %new_tg_pt_gp)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @core_alua_show_access_type(ptr nocapture noundef readonly %tg_pt_gp, ptr nocapture noundef writeonly %page) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tg_pt_gp_alua_access_type = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %tg_pt_gp, i32 0, i32 4
  %0 = ptrtoint ptr %tg_pt_gp_alua_access_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tg_pt_gp_alua_access_type, align 4
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %2 = and i32 %1, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %2)
  %.not = icmp eq i32 %2, 48
  br i1 %.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %3 = call ptr @memcpy(ptr %page, ptr @.str.67, i32 23)
  br label %return

if.else:                                          ; preds = %entry
  %and2 = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.else9, label %if.then7

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %4 = call ptr @memcpy(ptr %page, ptr @.str.68, i32 10)
  br label %return

if.else9:                                         ; preds = %if.else
  br i1 %tobool.not, label %if.else15, label %if.then13

if.then13:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #16
  %5 = call ptr @memcpy(ptr %page, ptr @.str.69, i32 10)
  br label %return

if.else15:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #16
  %6 = call ptr @memcpy(ptr %page, ptr @.str.70, i32 6)
  br label %return

return:                                           ; preds = %if.else15, %if.then13, %if.then7, %if.then
  %retval.0 = phi i32 [ 22, %if.then ], [ 9, %if.then7 ], [ 9, %if.then13 ], [ 5, %if.else15 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @core_alua_store_access_type(ptr nocapture noundef writeonly %tg_pt_gp, ptr noundef %page, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #14
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp, align 4, !annotation !358
  %call.i = call i32 @_kstrtoul(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %tmp) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %switch = icmp ult i32 %2, 4
  br i1 %switch, label %if.end15, label %do.end12

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %2) #17
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.161)
  switch i32 %2, label %if.else25 [
    i32 3, label %if.then17
    i32 2, label %if.then19
    i32 1, label %if.then23
  ]

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  %tg_pt_gp_alua_access_type = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %tg_pt_gp, i32 0, i32 4
  %4 = ptrtoint ptr %tg_pt_gp_alua_access_type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 48, ptr %tg_pt_gp_alua_access_type, align 4
  br label %cleanup

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  %tg_pt_gp_alua_access_type20 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %tg_pt_gp, i32 0, i32 4
  %5 = ptrtoint ptr %tg_pt_gp_alua_access_type20 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 32, ptr %tg_pt_gp_alua_access_type20, align 4
  br label %cleanup

if.then23:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  %tg_pt_gp_alua_access_type24 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %tg_pt_gp, i32 0, i32 4
  %6 = ptrtoint ptr %tg_pt_gp_alua_access_type24 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16, ptr %tg_pt_gp_alua_access_type24, align 4
  br label %cleanup

if.else25:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  %tg_pt_gp_alua_access_type26 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %tg_pt_gp, i32 0, i32 4
  %7 = ptrtoint ptr %tg_pt_gp_alua_access_type26 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %tg_pt_gp_alua_access_type26, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else25, %if.then23, %if.then19, %if.then17, %do.end12, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ -22, %do.end12 ], [ %count, %if.then19 ], [ %count, %if.else25 ], [ %count, %if.then23 ], [ %count, %if.then17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #14
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @core_alua_show_nonop_delay_msecs(ptr nocapture noundef readonly %tg_pt_gp, ptr nocapture noundef writeonly %page) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tg_pt_gp_nonop_delay_msecs = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %tg_pt_gp, i32 0, i32 5
  %0 = ptrtoint ptr %tg_pt_gp_nonop_delay_msecs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tg_pt_gp_nonop_delay_msecs, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.76, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @core_alua_store_nonop_delay_msecs(ptr nocapture noundef writeonly %tg_pt_gp, ptr noundef %page, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #14
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp, align 4, !annotation !358
  %call.i = call i32 @_kstrtoul(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %tmp) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %2)
  %cmp3 = icmp ugt i32 %2, 10000
  br i1 %cmp3, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, i32 noundef %2, i32 noundef 10000) #17
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %tg_pt_gp_nonop_delay_msecs = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %tg_pt_gp, i32 0, i32 5
  %3 = ptrtoint ptr %tg_pt_gp_nonop_delay_msecs to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %tg_pt_gp_nonop_delay_msecs, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end7, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ -22, %do.end7 ], [ %count, %if.end10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #14
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @core_alua_show_trans_delay_msecs(ptr nocapture noundef readonly %tg_pt_gp, ptr nocapture noundef writeonly %page) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tg_pt_gp_trans_delay_msecs = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %tg_pt_gp, i32 0, i32 6
  %0 = ptrtoint ptr %tg_pt_gp_trans_delay_msecs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tg_pt_gp_trans_delay_msecs, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.76, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @core_alua_store_trans_delay_msecs(ptr nocapture noundef writeonly %tg_pt_gp, ptr noundef %page, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #14
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp, align 4, !annotation !358
  %call.i = call i32 @_kstrtoul(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %tmp) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000, i32 %2)
  %cmp3 = icmp ugt i32 %2, 30000
  br i1 %cmp3, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, i32 noundef %2, i32 noundef 30000) #17
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %tg_pt_gp_trans_delay_msecs = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %tg_pt_gp, i32 0, i32 6
  %3 = ptrtoint ptr %tg_pt_gp_trans_delay_msecs to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %tg_pt_gp_trans_delay_msecs, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end7, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ -22, %do.end7 ], [ %count, %if.end10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #14
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @core_alua_show_implicit_trans_secs(ptr nocapture noundef readonly %tg_pt_gp, ptr nocapture noundef writeonly %page) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tg_pt_gp_implicit_trans_secs = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %tg_pt_gp, i32 0, i32 7
  %0 = ptrtoint ptr %tg_pt_gp_implicit_trans_secs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tg_pt_gp_implicit_trans_secs, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.76, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @core_alua_store_implicit_trans_secs(ptr nocapture noundef writeonly %tg_pt_gp, ptr noundef %page, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #14
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp, align 4, !annotation !358
  %call.i = call i32 @_kstrtoul(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %tmp) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %2)
  %cmp3 = icmp ugt i32 %2, 255
  br i1 %cmp3, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, i32 noundef %2, i32 noundef 255) #17
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %tg_pt_gp_implicit_trans_secs = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %tg_pt_gp, i32 0, i32 7
  %3 = ptrtoint ptr %tg_pt_gp_implicit_trans_secs to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %tg_pt_gp_implicit_trans_secs, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end7, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ -22, %do.end7 ], [ %count, %if.end10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #14
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @core_alua_show_preferred_bit(ptr nocapture noundef readonly %tg_pt_gp, ptr nocapture noundef writeonly %page) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tg_pt_gp_pref = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %tg_pt_gp, i32 0, i32 8
  %0 = ptrtoint ptr %tg_pt_gp_pref to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tg_pt_gp_pref, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.76, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @core_alua_store_preferred_bit(ptr nocapture noundef writeonly %tg_pt_gp, ptr noundef %page, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #14
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp, align 4, !annotation !358
  %call.i = call i32 @_kstrtoul(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %tmp) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %switch = icmp ult i32 %2, 2
  br i1 %switch, label %if.end11, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, i32 noundef %2) #17
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %tg_pt_gp_pref = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %tg_pt_gp, i32 0, i32 8
  %3 = ptrtoint ptr %tg_pt_gp_pref to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %tg_pt_gp_pref, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end8, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ -22, %do.end8 ], [ %count, %if.end11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @core_alua_show_offline_bit(ptr noundef %lun, ptr nocapture noundef writeonly %page) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %lun_tg_pt_secondary_offline = getelementptr inbounds %struct.se_lun, ptr %lun, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %lun_tg_pt_secondary_offline, i32 noundef 4) #14
  %0 = ptrtoint ptr %lun_tg_pt_secondary_offline to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %lun_tg_pt_secondary_offline, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.76, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @core_alua_store_offline_bit(ptr noundef %lun, ptr noundef %page, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  %tmp2 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %lun_se_dev = getelementptr inbounds %struct.se_lun, ptr %lun, i32 0, i32 6
  %0 = ptrtoint ptr %lun_se_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %lun_se_dev, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp2) #14
  %2 = ptrtoint ptr %tmp2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %tmp2, align 4, !annotation !358
  %transport_flags = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %transport_flags to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %transport_flags, align 4
  %5 = and i8 %4, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %se_hba = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 35
  %6 = ptrtoint ptr %se_hba to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %se_hba, align 8
  %hba_flags = getelementptr inbounds %struct.se_hba, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %hba_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hba_flags, align 4
  %and3 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call.i = call i32 @_kstrtoul(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %tmp2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end9, label %if.end12

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97) #17
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %10 = ptrtoint ptr %tmp2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tmp2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %switch = icmp ult i32 %11, 2
  br i1 %switch, label %if.end23, label %do.end20

do.end20:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, i32 noundef %11) #17
  br label %cleanup

if.end23:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  %call24 = call fastcc i32 @core_alua_set_tg_pt_secondary_state(ptr noundef %lun, i32 noundef 0, i32 noundef %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  %.count = select i1 %cmp25, i32 -22, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end20, %do.end9, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end9 ], [ -22, %do.end20 ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ %.count, %if.end23 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp2) #14
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @core_alua_show_secondary_status(ptr nocapture noundef readonly %lun, ptr nocapture noundef writeonly %page) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %lun_tg_pt_secondary_stat = getelementptr inbounds %struct.se_lun, ptr %lun, i32 0, i32 9
  %0 = ptrtoint ptr %lun_tg_pt_secondary_stat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lun_tg_pt_secondary_stat, align 8
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.76, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @core_alua_store_secondary_status(ptr nocapture noundef writeonly %lun, ptr noundef %page, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #14
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp, align 4, !annotation !358
  %call.i = call i32 @_kstrtoul(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %tmp) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %2)
  %switch = icmp ult i32 %2, 3
  br i1 %switch, label %if.end13, label %do.end10

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, i32 noundef %2) #17
  br label %cleanup

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %lun_tg_pt_secondary_stat = getelementptr inbounds %struct.se_lun, ptr %lun, i32 0, i32 9
  %3 = ptrtoint ptr %lun_tg_pt_secondary_stat to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %lun_tg_pt_secondary_stat, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %do.end10, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ -22, %do.end10 ], [ %count, %if.end13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #14
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @core_alua_show_secondary_write_metadata(ptr nocapture noundef readonly %lun, ptr nocapture noundef writeonly %page) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %lun_tg_pt_secondary_write_md = getelementptr inbounds %struct.se_lun, ptr %lun, i32 0, i32 10
  %0 = ptrtoint ptr %lun_tg_pt_secondary_write_md to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lun_tg_pt_secondary_write_md, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.76, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @core_alua_store_secondary_write_metadata(ptr nocapture noundef writeonly %lun, ptr noundef %page, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #14
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp, align 4, !annotation !358
  %call.i = call i32 @_kstrtoul(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %tmp) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %switch = icmp ult i32 %2, 2
  br i1 %switch, label %if.end11, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, i32 noundef %2) #17
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %lun_tg_pt_secondary_write_md = getelementptr inbounds %struct.se_lun, ptr %lun, i32 0, i32 10
  %3 = ptrtoint ptr %lun_tg_pt_secondary_write_md to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %lun_tg_pt_secondary_write_md, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end8, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ -22, %do.end8 ], [ %count, %if.end11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @core_setup_alua(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %transport_flags = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %transport_flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %transport_flags, align 4
  %2 = and i8 %1, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

land.lhs.true:                                    ; preds = %entry
  %se_hba = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 35
  %3 = ptrtoint ptr %se_hba to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %se_hba, align 8
  %hba_flags = getelementptr inbounds %struct.se_hba, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %hba_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hba_flags, align 4
  %and1 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.then, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then:                                          ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @t10_alua_lu_gp_mem_cache to i32))
  %7 = load ptr, ptr @t10_alua_lu_gp_mem_cache, align 4
  %call.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %7, i32 noundef 3520) #14
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %core_alua_allocate_lu_gp_mem.exit.thread, label %core_alua_allocate_lu_gp_mem.exit

core_alua_allocate_lu_gp_mem.exit.thread:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149) #17
  br label %cleanup.thread34

core_alua_allocate_lu_gp_mem.exit:                ; preds = %if.then
  %lu_gp_mem_list.i = getelementptr inbounds %struct.t10_alua_lu_gp_member, ptr %call.i.i, i32 0, i32 5
  %8 = ptrtoint ptr %lu_gp_mem_list.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %lu_gp_mem_list.i, ptr %lu_gp_mem_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.t10_alua_lu_gp_member, ptr %call.i.i, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %lu_gp_mem_list.i, ptr %prev.i.i, align 8
  %lu_gp_mem_lock.i = getelementptr inbounds %struct.t10_alua_lu_gp_member, ptr %call.i.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lu_gp_mem_lock.i, ptr noundef nonnull @.str.151, ptr noundef nonnull @core_alua_allocate_lu_gp_mem.__key, i16 noundef signext 3) #14
  %lu_gp_mem_ref_cnt.i = getelementptr inbounds %struct.t10_alua_lu_gp_member, ptr %call.i.i, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %lu_gp_mem_ref_cnt.i, i32 noundef 4) #14
  %10 = ptrtoint ptr %lu_gp_mem_ref_cnt.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 0, ptr %lu_gp_mem_ref_cnt.i, align 4
  %lu_gp_mem_dev.i = getelementptr inbounds %struct.t10_alua_lu_gp_member, ptr %call.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %lu_gp_mem_dev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev, ptr %lu_gp_mem_dev.i, align 8
  %dev_alua_lu_gp_mem.i = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 27
  %12 = ptrtoint ptr %dev_alua_lu_gp_mem.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i.i, ptr %dev_alua_lu_gp_mem.i, align 8
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %core_alua_allocate_lu_gp_mem.exit.cleanup.thread34_crit_edge, label %if.end

core_alua_allocate_lu_gp_mem.exit.cleanup.thread34_crit_edge: ; preds = %core_alua_allocate_lu_gp_mem.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread34

cleanup.thread34:                                 ; preds = %core_alua_allocate_lu_gp_mem.exit.cleanup.thread34_crit_edge, %core_alua_allocate_lu_gp_mem.exit.thread
  %retval.0.i2127 = phi ptr [ inttoptr (i32 -12 to ptr), %core_alua_allocate_lu_gp_mem.exit.thread ], [ %call.i.i, %core_alua_allocate_lu_gp_mem.exit.cleanup.thread34_crit_edge ]
  %13 = ptrtoint ptr %retval.0.i2127 to i32
  br label %return

if.end:                                           ; preds = %core_alua_allocate_lu_gp_mem.exit
  tail call void @_raw_spin_lock(ptr noundef %lu_gp_mem_lock.i) #14
  %14 = load ptr, ptr @default_lu_gp, align 4
  %lu_gp_lock.i = getelementptr inbounds %struct.t10_alua_lu_gp, ptr %14, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lu_gp_lock.i) #14
  %lu_gp1.i = getelementptr inbounds %struct.t10_alua_lu_gp_member, ptr %call.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %lu_gp1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %lu_gp1.i, align 4
  %16 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %call.i.i, align 8
  %lu_gp_mem_list2.i = getelementptr inbounds %struct.t10_alua_lu_gp, ptr %14, i32 0, i32 7
  %prev.i.i23 = getelementptr inbounds %struct.t10_alua_lu_gp, ptr %14, i32 0, i32 7, i32 1
  %17 = ptrtoint ptr %prev.i.i23 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i23, align 4
  %call.i.i.i24 = tail call zeroext i1 @__list_add_valid(ptr noundef %lu_gp_mem_list.i, ptr noundef %18, ptr noundef %lu_gp_mem_list2.i) #14
  br i1 %call.i.i.i24, label %if.end.i.i.i, label %if.end.__core_alua_attach_lu_gp_mem.exit_crit_edge

if.end.__core_alua_attach_lu_gp_mem.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %__core_alua_attach_lu_gp_mem.exit

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %prev.i.i23 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %lu_gp_mem_list.i, ptr %prev.i.i23, align 4
  %20 = ptrtoint ptr %lu_gp_mem_list.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %lu_gp_mem_list2.i, ptr %lu_gp_mem_list.i, align 4
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev.i.i, align 8
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %lu_gp_mem_list.i, ptr %18, align 4
  br label %__core_alua_attach_lu_gp_mem.exit

__core_alua_attach_lu_gp_mem.exit:                ; preds = %if.end.i.i.i, %if.end.__core_alua_attach_lu_gp_mem.exit_crit_edge
  %lu_gp_members.i = getelementptr inbounds %struct.t10_alua_lu_gp, ptr %14, i32 0, i32 2
  %23 = ptrtoint ptr %lu_gp_members.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %lu_gp_members.i, align 4
  %inc.i = add i32 %24, 1
  store i32 %inc.i, ptr %lu_gp_members.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lu_gp_lock.i) #14
  tail call void @_raw_spin_unlock(ptr noundef %lu_gp_mem_lock.i) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @core_setup_alua.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@core_setup_alua, %cleanup.thread)) #14
          to label %return [label %cleanup.thread], !srcloc !337

cleanup.thread:                                   ; preds = %__core_alua_attach_lu_gp_mem.exit
  call void @__sanitizer_cov_trace_pc() #16
  %transport = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 46
  %25 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %transport, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @core_setup_alua.__UNIQUE_ID_ddebug243, ptr noundef nonnull @.str.113, ptr noundef %26) #14
  br label %return

return:                                           ; preds = %cleanup.thread, %__core_alua_attach_lu_gp_mem.exit, %cleanup.thread34, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.1 = phi i32 [ %13, %cleanup.thread34 ], [ 0, %__core_alua_attach_lu_gp_mem.exit ], [ 0, %cleanup.thread ], [ 0, %land.lhs.true.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @core_alua_queue_state_change_ua(ptr noundef %tg_pt_gp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tg_pt_gp_lock = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %tg_pt_gp, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %tg_pt_gp_lock) #14
  %tg_pt_gp_lun_list = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %tg_pt_gp, i32 0, i32 18
  %0 = ptrtoint ptr %tg_pt_gp_lun_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn103 = load ptr, ptr %tg_pt_gp_lun_list, align 4
  %cmp.not105 = icmp eq ptr %.pn103, %tg_pt_gp_lun_list
  br i1 %cmp.not105, label %entry.for.end58_crit_edge, label %for.body.lr.ph

entry.for.end58_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end58

for.body.lr.ph:                                   ; preds = %entry
  %tg_pt_gp_alua_access_status = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %tg_pt_gp, i32 0, i32 3
  %tg_pt_gp_alua_lun = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %tg_pt_gp, i32 0, i32 19
  %tg_pt_gp_alua_nacl = getelementptr inbounds %struct.t10_alua_tg_pt_gp, ptr %tg_pt_gp, i32 0, i32 20
  br label %for.body

for.body:                                         ; preds = %for.inc52.for.body_crit_edge, %for.body.lr.ph
  %.pn106 = phi ptr [ %.pn103, %for.body.lr.ph ], [ %.pn, %for.inc52.for.body_crit_edge ]
  %lun.0107 = getelementptr i8, ptr %.pn106, i32 -184
  %lun_ref = getelementptr i8, ptr %.pn106, i32 528
  %1 = tail call i32 @llvm.read_register.i32(metadata !325) #14
  %and.i.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !335
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i.i, label %for.body.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

for.body.rcu_read_lock.exit.i_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %for.body
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.114, i32 noundef 696, ptr noundef nonnull @.str.115) #14
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %for.body.rcu_read_lock.exit.i_crit_edge
  %call.i1.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %tobool.not.i2.i = icmp eq i32 %call.i1.i, 0
  br i1 %tobool.not.i2.i, label %land.rhs.i.i, label %rcu_read_lock.exit.i.if.end29.i.i_crit_edge

rcu_read_lock.exit.i.if.end29.i.i_crit_edge:      ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29.i.i

land.rhs.i.i:                                     ; preds = %rcu_read_lock.exit.i
  %.b104.i.i = load i1, ptr @percpu_ref_tryget_live_rcu.__already_done, align 1
  br i1 %.b104.i.i, label %land.rhs.i.i.if.end29.i.i_crit_edge, label %if.then.i3.i, !prof !344

land.rhs.i.i.if.end29.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29.i.i

if.then.i3.i:                                     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @percpu_ref_tryget_live_rcu.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.123, i32 noundef 280, i32 noundef 9, ptr noundef null) #14
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.then.i3.i, %land.rhs.i.i.if.end29.i.i_crit_edge, %rcu_read_lock.exit.i.if.end29.i.i_crit_edge
  %5 = ptrtoint ptr %lun_ref to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %lun_ref, align 4
  %and.i.i.i = and i32 %6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body46.i.i, label %if.else.i.i, !prof !344

do.body46.i.i:                                    ; preds = %if.end29.i.i
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !359
  %8 = tail call i32 @llvm.read_register.i32(metadata !325) #14
  %and.i105.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i105.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %13, %6
  %14 = inttoptr i32 %add.i.i to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %add63.i.i = add i32 %16, 1
  store i32 %add63.i.i, ptr %14, align 4
  %17 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !360
  %and.i.i.i.i = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool74.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool74.not.i.i, label %if.then83.i.i, label %do.body46.i.i.do.end86.i.i_crit_edge, !prof !346

do.body46.i.i.do.end86.i.i_crit_edge:             ; preds = %do.body46.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end86.i.i

if.then83.i.i:                                    ; preds = %do.body46.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %do.end86.i.i

do.end86.i.i:                                     ; preds = %if.then83.i.i, %do.body46.i.i.do.end86.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %7) #14, !srcloc !361
  br label %percpu_ref_tryget_live_rcu.exit.i

if.else.i.i:                                      ; preds = %if.end29.i.i
  %and.i.i = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool93.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool93.not.i.i, label %if.then94.i.i, label %if.else.i.i.percpu_ref_tryget_live_rcu.exit.i_crit_edge

if.else.i.i.percpu_ref_tryget_live_rcu.exit.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %percpu_ref_tryget_live_rcu.exit.i

if.then94.i.i:                                    ; preds = %if.else.i.i
  %data.i.i = getelementptr i8, ptr %.pn106, i32 532
  %18 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %19, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !362
  tail call void @llvm.prefetch.p0(ptr %19, i32 1, i32 3, i32 1) #14
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 0, i32 1, ptr elementtype(i32) %19) #14, !srcloc !363
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i.i, label %if.then94.i.i.atomic_long_inc_not_zero.exit.i.i_crit_edge, label %do.end11.i.i.i.i.i.i.i

if.then94.i.i.atomic_long_inc_not_zero.exit.i.i_crit_edge: ; preds = %if.then94.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %atomic_long_inc_not_zero.exit.i.i

do.end11.i.i.i.i.i.i.i:                           ; preds = %if.then94.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !364
  br label %atomic_long_inc_not_zero.exit.i.i

atomic_long_inc_not_zero.exit.i.i:                ; preds = %do.end11.i.i.i.i.i.i.i, %if.then94.i.i.atomic_long_inc_not_zero.exit.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp ne i32 %asmresult.i.i.i.i.i.i.i, 0
  br label %percpu_ref_tryget_live_rcu.exit.i

percpu_ref_tryget_live_rcu.exit.i:                ; preds = %atomic_long_inc_not_zero.exit.i.i, %if.else.i.i.percpu_ref_tryget_live_rcu.exit.i_crit_edge, %do.end86.i.i
  %ret.0.off0.i.i = phi i1 [ true, %do.end86.i.i ], [ false, %if.else.i.i.percpu_ref_tryget_live_rcu.exit.i_crit_edge ], [ %cmp.i.i.i.i.i.i, %atomic_long_inc_not_zero.exit.i.i ]
  %call.i4.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i4.i, label %percpu_ref_tryget_live_rcu.exit.i.percpu_ref_tryget_live.exit_crit_edge, label %land.lhs.true.i7.i

percpu_ref_tryget_live_rcu.exit.i.percpu_ref_tryget_live.exit_crit_edge: ; preds = %percpu_ref_tryget_live_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %percpu_ref_tryget_live.exit

land.lhs.true.i7.i:                               ; preds = %percpu_ref_tryget_live_rcu.exit.i
  %call1.i5.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5.i)
  %tobool.not.i6.i = icmp eq i32 %call1.i5.i, 0
  br i1 %tobool.not.i6.i, label %land.lhs.true.i7.i.percpu_ref_tryget_live.exit_crit_edge, label %land.lhs.true2.i9.i

land.lhs.true.i7.i.percpu_ref_tryget_live.exit_crit_edge: ; preds = %land.lhs.true.i7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %percpu_ref_tryget_live.exit

land.lhs.true2.i9.i:                              ; preds = %land.lhs.true.i7.i
  %.b4.i8.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8.i, label %land.lhs.true2.i9.i.percpu_ref_tryget_live.exit_crit_edge, label %if.then.i10.i

land.lhs.true2.i9.i.percpu_ref_tryget_live.exit_crit_edge: ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %percpu_ref_tryget_live.exit

if.then.i10.i:                                    ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.114, i32 noundef 724, ptr noundef nonnull @.str.116) #14
  br label %percpu_ref_tryget_live.exit

percpu_ref_tryget_live.exit:                      ; preds = %if.then.i10.i, %land.lhs.true2.i9.i.percpu_ref_tryget_live.exit_crit_edge, %land.lhs.true.i7.i.percpu_ref_tryget_live.exit_crit_edge, %percpu_ref_tryget_live_rcu.exit.i.percpu_ref_tryget_live.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !336
  %21 = tail call i32 @llvm.read_register.i32(metadata !325) #14
  %and.i.i.i.i.i11.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i11.i to ptr
  %preempt_count.i.i.i.i12.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i12.i, align 4
  %sub.i.i.i.i = add i32 %24, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i12.i, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  br i1 %ret.0.off0.i.i, label %if.end, label %percpu_ref_tryget_live.exit.for.inc52_crit_edge

percpu_ref_tryget_live.exit.for.inc52_crit_edge:  ; preds = %percpu_ref_tryget_live.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc52

if.end:                                           ; preds = %percpu_ref_tryget_live.exit
  tail call void @_raw_spin_unlock(ptr noundef %tg_pt_gp_lock) #14
  %lun_deve_lock = getelementptr i8, ptr %.pn106, i32 -148
  tail call void @_raw_spin_lock(ptr noundef %lun_deve_lock) #14
  %lun_deve_list = getelementptr i8, ptr %.pn106, i32 -156
  %25 = ptrtoint ptr %lun_deve_list to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn8598 = load ptr, ptr %lun_deve_list, align 4
  %cmp9.not100 = icmp eq ptr %.pn8598, %lun_deve_list
  br i1 %cmp9.not100, label %if.end.for.end_crit_edge, label %for.body11.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body11.lr.ph:                                 ; preds = %if.end
  %dep_map = getelementptr i8, ptr %.pn106, i32 -132
  br label %for.body11

for.body11:                                       ; preds = %for.inc.for.body11_crit_edge, %for.body11.lr.ph
  %.pn85101 = phi ptr [ %.pn8598, %for.body11.lr.ph ], [ %.pn85, %for.inc.for.body11_crit_edge ]
  %se_deve.0102 = getelementptr i8, ptr %.pn85101, i32 -168
  %se_lun_acl = getelementptr i8, ptr %.pn85101, i32 -64
  %26 = ptrtoint ptr %se_lun_acl to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %se_lun_acl, align 8
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %for.body11.do.end25_crit_edge

for.body11.do.end25_crit_edge:                    ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end25

lor.lhs.false:                                    ; preds = %for.body11
  %call16 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.lhs.true, label %lor.lhs.false.do.end25_crit_edge

lor.lhs.false.do.end25_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end25

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call18 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true.do.end25_crit_edge, label %land.lhs.true20

land.lhs.true.do.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end25

land.lhs.true20:                                  ; preds = %land.lhs.true
  %.b86 = load i1, ptr @core_alua_queue_state_change_ua.__warned, align 1
  br i1 %.b86, label %land.lhs.true20.do.end25_crit_edge, label %if.then22

land.lhs.true20.do.end25_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end25

if.then22:                                        ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @core_alua_queue_state_change_ua.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 938, ptr noundef nonnull @.str.7) #14
  br label %do.end25

do.end25:                                         ; preds = %if.then22, %land.lhs.true20.do.end25_crit_edge, %land.lhs.true.do.end25_crit_edge, %lor.lhs.false.do.end25_crit_edge, %for.body11.do.end25_crit_edge
  %28 = ptrtoint ptr %tg_pt_gp_alua_access_status to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tg_pt_gp_alua_access_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp27 = icmp eq i32 %29, 1
  br i1 %cmp27, label %land.lhs.true28, label %do.end25.if.end34_crit_edge

do.end25.if.end34_crit_edge:                      ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34

land.lhs.true28:                                  ; preds = %do.end25
  %30 = ptrtoint ptr %tg_pt_gp_alua_lun to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tg_pt_gp_alua_lun, align 4
  %cmp29.not = icmp ne ptr %31, null
  %cmp32 = icmp eq ptr %31, %lun.0107
  %or.cond = select i1 %cmp29.not, i1 %cmp32, i1 false
  br i1 %or.cond, label %land.lhs.true28.for.inc_crit_edge, label %land.lhs.true28.if.end34_crit_edge

land.lhs.true28.if.end34_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34

land.lhs.true28.for.inc_crit_edge:                ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end34:                                         ; preds = %land.lhs.true28.if.end34_crit_edge, %do.end25.if.end34_crit_edge
  %tobool35.not = icmp eq ptr %27, null
  br i1 %tobool35.not, label %if.end34.if.end42_crit_edge, label %land.lhs.true36

if.end34.if.end42_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42

land.lhs.true36:                                  ; preds = %if.end34
  %32 = ptrtoint ptr %tg_pt_gp_alua_nacl to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tg_pt_gp_alua_nacl, align 4
  %cmp37.not = icmp eq ptr %33, null
  br i1 %cmp37.not, label %land.lhs.true36.if.end42_crit_edge, label %land.lhs.true38

land.lhs.true36.if.end42_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42

land.lhs.true38:                                  ; preds = %land.lhs.true36
  %se_lun_nacl = getelementptr inbounds %struct.se_lun_acl, ptr %27, i32 0, i32 1
  %34 = ptrtoint ptr %se_lun_nacl to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %se_lun_nacl, align 8
  %cmp40 = icmp eq ptr %33, %35
  br i1 %cmp40, label %land.lhs.true38.for.inc_crit_edge, label %land.lhs.true38.if.end42_crit_edge

land.lhs.true38.if.end42_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42

land.lhs.true38.for.inc_crit_edge:                ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end42:                                         ; preds = %land.lhs.true38.if.end42_crit_edge, %land.lhs.true36.if.end42_crit_edge, %if.end34.if.end42_crit_edge
  %call43 = tail call i32 @core_scsi3_ua_allocate(ptr noundef %se_deve.0102, i8 noundef zeroext 42, i8 noundef zeroext 6) #14
  br label %for.inc

for.inc:                                          ; preds = %if.end42, %land.lhs.true38.for.inc_crit_edge, %land.lhs.true28.for.inc_crit_edge
  %36 = ptrtoint ptr %.pn85101 to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn85 = load ptr, ptr %.pn85101, align 4
  %cmp9.not = icmp eq ptr %.pn85, %lun_deve_list
  br i1 %cmp9.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body11_crit_edge

for.inc.for.body11_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body11

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lun_deve_lock) #14
  tail call void @_raw_spin_lock(ptr noundef %tg_pt_gp_lock) #14
  %37 = tail call i32 @llvm.read_register.i32(metadata !325) #14
  %and.i.i.i.i.i.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %40, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !335
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i.i.i, label %for.end.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

for.end.rcu_read_lock.exit.i.i_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %for.end
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i87 = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i87, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.114, i32 noundef 696, ptr noundef nonnull @.str.115) #14
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %for.end.rcu_read_lock.exit.i.i_crit_edge
  %41 = ptrtoint ptr %lun_ref to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %lun_ref, align 4
  %and.i.i.i88 = and i32 %42, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i88)
  %tobool.not.i1.i.i = icmp eq i32 %and.i.i.i88, 0
  br i1 %tobool.not.i1.i.i, label %do.body1.i.i, label %if.else.i.i97, !prof !344

do.body1.i.i:                                     ; preds = %rcu_read_lock.exit.i.i
  %43 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !359
  %44 = tail call i32 @llvm.read_register.i32(metadata !325) #14
  %and.i2.i.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i2.i.i to ptr
  %cpu.i.i89 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %cpu.i.i89 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cpu.i.i89, align 4
  %arrayidx.i.i90 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %47
  %48 = ptrtoint ptr %arrayidx.i.i90 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i.i90, align 4
  %add.i.i91 = add i32 %49, %42
  %50 = inttoptr i32 %add.i.i91 to ptr
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  %add15.i.i = add i32 %52, -1
  store i32 %add15.i.i, ptr %50, align 4
  %53 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !360
  %and.i.i.i.i92 = and i32 %53, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i92)
  %tobool.not.i.i93 = icmp eq i32 %and.i.i.i.i92, 0
  br i1 %tobool.not.i.i93, label %if.then29.i.i, label %do.body1.i.i.do.end31.i.i_crit_edge, !prof !346

do.body1.i.i.do.end31.i.i_crit_edge:              ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end31.i.i

if.then29.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %do.end31.i.i

do.end31.i.i:                                     ; preds = %if.then29.i.i, %do.body1.i.i.do.end31.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %43) #14, !srcloc !361
  br label %if.end48.i.i

if.else.i.i97:                                    ; preds = %rcu_read_lock.exit.i.i
  %data.i.i94 = getelementptr i8, ptr %.pn106, i32 532
  %54 = ptrtoint ptr %data.i.i94 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data.i.i94, align 4
  %call.i.i.i.i95 = tail call zeroext i1 @__kasan_check_write(ptr noundef %55, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !365
  tail call void @llvm.prefetch.p0(ptr %55, i32 1, i32 3, i32 1) #14
  %56 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %55, ptr %55, i32 1, ptr elementtype(i32) %55) #14, !srcloc !366
  %asmresult.i.i.i.i.i.i.i96 = extractvalue { i32, i32 } %56, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !367
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i96)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i96, 0
  br i1 %cmp.i.i.i.i.i, label %if.then45.i.i, label %if.else.i.i97.if.end48.i.i_crit_edge, !prof !346

if.else.i.i97.if.end48.i.i_crit_edge:             ; preds = %if.else.i.i97
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48.i.i

if.then45.i.i:                                    ; preds = %if.else.i.i97
  call void @__sanitizer_cov_trace_pc() #16
  %57 = ptrtoint ptr %data.i.i94 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data.i.i94, align 4
  %release.i.i = getelementptr inbounds %struct.percpu_ref_data, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %release.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %release.i.i, align 4
  tail call void %60(ptr noundef %lun_ref) #14
  br label %if.end48.i.i

if.end48.i.i:                                     ; preds = %if.then45.i.i, %if.else.i.i97.if.end48.i.i_crit_edge, %do.end31.i.i
  %call.i3.i.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i3.i.i, label %if.end48.i.i.percpu_ref_put.exit_crit_edge, label %land.lhs.true.i6.i.i

if.end48.i.i.percpu_ref_put.exit_crit_edge:       ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %percpu_ref_put.exit

land.lhs.true.i6.i.i:                             ; preds = %if.end48.i.i
  %call1.i4.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i.i)
  %tobool.not.i5.i.i = icmp eq i32 %call1.i4.i.i, 0
  br i1 %tobool.not.i5.i.i, label %land.lhs.true.i6.i.i.percpu_ref_put.exit_crit_edge, label %land.lhs.true2.i8.i.i

land.lhs.true.i6.i.i.percpu_ref_put.exit_crit_edge: ; preds = %land.lhs.true.i6.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %percpu_ref_put.exit

land.lhs.true2.i8.i.i:                            ; preds = %land.lhs.true.i6.i.i
  %.b4.i7.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i.i, label %land.lhs.true2.i8.i.i.percpu_ref_put.exit_crit_edge, label %if.then.i9.i.i

land.lhs.true2.i8.i.i.percpu_ref_put.exit_crit_edge: ; preds = %land.lhs.true2.i8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %percpu_ref_put.exit

if.then.i9.i.i:                                   ; preds = %land.lhs.true2.i8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.114, i32 noundef 724, ptr noundef nonnull @.str.116) #14
  br label %percpu_ref_put.exit

percpu_ref_put.exit:                              ; preds = %if.then.i9.i.i, %land.lhs.true2.i8.i.i.percpu_ref_put.exit_crit_edge, %land.lhs.true.i6.i.i.percpu_ref_put.exit_crit_edge, %if.end48.i.i.percpu_ref_put.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !336
  %61 = tail call i32 @llvm.read_register.i32(metadata !325) #14
  %and.i.i.i.i.i10.i.i = and i32 %61, -16384
  %62 = inttoptr i32 %and.i.i.i.i.i10.i.i to ptr
  %preempt_count.i.i.i.i11.i.i = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %preempt_count.i.i.i.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %preempt_count.i.i.i.i11.i.i, align 4
  %sub.i.i.i.i.i = add i32 %64, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i11.i.i, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  br label %for.inc52

for.inc52:                                        ; preds = %percpu_ref_put.exit, %percpu_ref_tryget_live.exit.for.inc52_crit_edge
  %65 = ptrtoint ptr %.pn106 to i32
  call void @__asan_load4_noabort(i32 %65)
  %.pn = load ptr, ptr %.pn106, align 4
  %cmp.not = icmp eq ptr %.pn, %tg_pt_gp_lun_list
  br i1 %cmp.not, label %for.inc52.for.end58_crit_edge, label %for.inc52.for.body_crit_edge

for.inc52.for.body_crit_edge:                     ; preds = %for.inc52
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc52.for.end58_crit_edge:                    ; preds = %for.inc52
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end58

for.end58:                                        ; preds = %for.inc52.for.end58_crit_edge, %entry.for.end58_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %tg_pt_gp_lock) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @core_scsi3_ua_allocate(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @filp_open(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 176)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 176)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind readonly }
attributes #12 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nounwind readnone }
attributes #20 = { nobuiltin }
attributes #21 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !12, !13, !15, !16, !18, !19, !20, !21, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !39, !40, !41, !43, !44, !46, !48, !50, !52, !54, !56, !57, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !78, !79, !81, !82, !84, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !100, !102, !103, !105, !106, !108, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !123, !125, !127, !129, !130, !131, !132, !134, !136, !138, !139, !141, !142, !143, !144, !146, !148, !150, !152, !154, !155, !156, !157, !159, !160, !161, !163, !165, !166, !167, !168, !170, !171, !172, !174, !175, !176, !177, !179, !180, !181, !183, !184, !185, !186, !188, !189, !190, !192, !193, !194, !195, !197, !198, !199, !201, !202, !203, !204, !206, !207, !208, !210, !211, !212, !213, !215, !216, !217, !219, !220, !221, !222, !224, !225, !226, !228, !229, !230, !232, !234, !236, !238, !239, !240, !242, !243, !245, !246, !247, !249, !250, !251, !253, !254, !255, !257, !259, !260, !262, !263, !264, !265, !267, !269, !271, !272, !273, !274, !276, !277, !278, !280, !282, !284, !286, !288, !290, !292, !294, !295, !296, !297, !299, !300, !301, !302, !304, !305, !306, !308, !310, !312, !314, !315, !317, !319, !320, !321, !322, !324}
!llvm.named.register.sp = !{!325}
!llvm.module.flags = !{!326, !327, !328, !329, !330, !331, !332, !333}
!llvm.ident = !{!334}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/target/target_core_alua.c", i32 65, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @target_emulate_report_referrals._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @target_emulate_report_referrals._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/target/target_core_alua.c", i32 155, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @target_emulate_report_target_port_groups._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @target_emulate_report_target_port_groups._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../drivers/target/target_core_alua.c", i32 251, i32 14}
!15 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/target/target_core_alua.c", i32 282, i32 3}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @target_emulate_set_target_port_groups._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @target_emulate_set_target_port_groups._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../drivers/target/target_core_alua.c", i32 296, i32 15}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/target/target_core_alua.c", i32 299, i32 3}
!25 = !{ptr @target_emulate_set_target_port_groups._entry.10, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @target_emulate_set_target_port_groups._entry_ptr.12, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/target/target_core_alua.c", i32 306, i32 3}
!29 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @target_emulate_set_target_port_groups.__UNIQUE_ID_ddebug210, !28, !"__UNIQUE_ID_ddebug210", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/target/target_core_alua.c", i32 661, i32 3}
!33 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @target_alua_state_check.__UNIQUE_ID_ddebug211, !32, !"__UNIQUE_ID_ddebug211", i1 false, i1 false}
!35 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!36 = !{!"../drivers/target/target_core_alua.c", i32 666, i32 13}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/target/target_core_alua.c", i32 707, i32 3}
!39 = !{ptr @target_alua_state_check._entry, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @target_alua_state_check._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/target/target_core_alua.c", i32 713, i32 3}
!43 = !{ptr @target_alua_state_check.__UNIQUE_ID_ddebug214, !42, !"__UNIQUE_ID_ddebug214", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/target/target_core_alua.c", i32 816, i32 10}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/target/target_core_alua.c", i32 818, i32 10}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/target/target_core_alua.c", i32 820, i32 10}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/target/target_core_alua.c", i32 822, i32 10}
!52 = !{ptr @__ksymtab_core_alua_check_nonop_delay, !53, !"__ksymtab_core_alua_check_nonop_delay", i1 false, i1 false}
!53 = !{!"../drivers/target/target_core_alua.c", i32 850, i32 1}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/target/target_core_alua.c", i32 1155, i32 3}
!56 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @core_alua_do_port_transition.__UNIQUE_ID_ddebug218, !55, !"__UNIQUE_ID_ddebug218", i1 false, i1 false}
!58 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/target/target_core_alua.c", i32 1274, i32 3}
!62 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @core_alua_allocate_lba_map._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @core_alua_allocate_lba_map._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/target/target_core_alua.c", i32 1294, i32 4}
!67 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @core_alua_allocate_lba_map_mem._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @core_alua_allocate_lba_map_mem._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/target/target_core_alua.c", i32 1301, i32 3}
!72 = !{ptr @core_alua_allocate_lba_map_mem._entry.31, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @core_alua_allocate_lba_map_mem._entry_ptr.33, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/target/target_core_alua.c", i32 1374, i32 3}
!76 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @core_alua_allocate_lu_gp._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @core_alua_allocate_lu_gp._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @core_alua_allocate_lu_gp.__key, !80, !"__key", i1 false, i1 false}
!80 = !{!"../drivers/target/target_core_alua.c", i32 1379, i32 2}
!81 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/target/target_core_alua.c", i32 1399, i32 3}
!84 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @core_alua_set_lu_gp_id._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @core_alua_set_lu_gp_id._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.40, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/target/target_core_alua.c", i32 1406, i32 3}
!89 = !{ptr @core_alua_set_lu_gp_id._entry.39, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @core_alua_set_lu_gp_id._entry_ptr.41, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/target/target_core_alua.c", i32 1421, i32 4}
!93 = !{ptr @core_alua_set_lu_gp_id._entry.42, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @core_alua_set_lu_gp_id._entry_ptr.44, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.45, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/target/target_core_alua.c", i32 1611, i32 3}
!97 = !{ptr @.str.46, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @core_alua_allocate_tg_pt_gp._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @core_alua_allocate_tg_pt_gp._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @core_alua_allocate_tg_pt_gp.__key, !101, !"__key", i1 false, i1 false}
!101 = !{!"../drivers/target/target_core_alua.c", i32 1616, i32 2}
!102 = !{ptr @.str.47, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @core_alua_allocate_tg_pt_gp.__key.48, !104, !"__key", i1 false, i1 false}
!104 = !{!"../drivers/target/target_core_alua.c", i32 1617, i32 2}
!105 = !{ptr @.str.49, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/target/target_core_alua.c", i32 1667, i32 3}
!108 = !{ptr @.str.51, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @core_alua_set_tg_pt_gp_id._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @core_alua_set_tg_pt_gp_id._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.53, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/target/target_core_alua.c", i32 1674, i32 3}
!113 = !{ptr @core_alua_set_tg_pt_gp_id._entry.52, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @core_alua_set_tg_pt_gp_id._entry_ptr.54, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.56, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/target/target_core_alua.c", i32 1689, i32 4}
!117 = !{ptr @core_alua_set_tg_pt_gp_id._entry.55, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @core_alua_set_tg_pt_gp_id._entry_ptr.57, !116, !"_entry_ptr", i1 false, i1 false}
!119 = distinct !{null, !120, !"__warned", i1 false, i1 false}
!120 = !{!"../drivers/target/target_core_alua.c", i32 1845, i32 13}
!121 = distinct !{null, !122, !"__warned", i1 false, i1 false}
!122 = !{!"../drivers/target/target_core_alua.c", i32 1873, i32 13}
!123 = !{ptr @.str.58, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/target/target_core_alua.c", i32 1876, i32 24}
!125 = !{ptr @.str.59, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/target/target_core_alua.c", i32 1886, i32 4}
!127 = !{ptr @.str.60, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/target/target_core_alua.c", i32 1914, i32 3}
!129 = !{ptr @.str.61, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @core_alua_store_tg_pt_gp_info._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @core_alua_store_tg_pt_gp_info._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.62, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/target/target_core_alua.c", i32 1923, i32 28}
!134 = distinct !{null, !135, !"__warned", i1 false, i1 false}
!135 = !{!"../drivers/target/target_core_alua.c", i32 1936, i32 13}
!136 = !{ptr @.str.63, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/target/target_core_alua.c", i32 1944, i32 4}
!138 = !{ptr @core_alua_store_tg_pt_gp_info.__UNIQUE_ID_ddebug239, !137, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!139 = !{ptr @.str.64, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/target/target_core_alua.c", i32 1966, i32 2}
!141 = !{ptr @core_alua_store_tg_pt_gp_info.__UNIQUE_ID_ddebug240, !140, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!142 = !{ptr @.str.65, !140, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.66, !140, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.67, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/target/target_core_alua.c", i32 1986, i32 24}
!146 = !{ptr @.str.68, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/target/target_core_alua.c", i32 1988, i32 24}
!148 = !{ptr @.str.69, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/target/target_core_alua.c", i32 1990, i32 24}
!150 = !{ptr @.str.70, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/target/target_core_alua.c", i32 1992, i32 24}
!152 = !{ptr @.str.71, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/target/target_core_alua.c", i32 2005, i32 3}
!154 = !{ptr @.str.72, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @core_alua_store_access_type._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @core_alua_store_access_type._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.74, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/target/target_core_alua.c", i32 2009, i32 3}
!159 = !{ptr @core_alua_store_access_type._entry.73, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @core_alua_store_access_type._entry_ptr.75, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.76, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/target/target_core_alua.c", i32 2030, i32 23}
!163 = !{ptr @.str.77, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/target/target_core_alua.c", i32 2043, i32 3}
!165 = !{ptr @.str.78, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @core_alua_store_nonop_delay_msecs._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @core_alua_store_nonop_delay_msecs._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.80, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/target/target_core_alua.c", i32 2047, i32 3}
!170 = !{ptr @core_alua_store_nonop_delay_msecs._entry.79, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @core_alua_store_nonop_delay_msecs._entry_ptr.81, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.82, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/target/target_core_alua.c", i32 2074, i32 3}
!174 = !{ptr @.str.83, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @core_alua_store_trans_delay_msecs._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @core_alua_store_trans_delay_msecs._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.85, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/target/target_core_alua.c", i32 2078, i32 3}
!179 = !{ptr @core_alua_store_trans_delay_msecs._entry.84, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @core_alua_store_trans_delay_msecs._entry_ptr.86, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.87, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/target/target_core_alua.c", i32 2105, i32 3}
!183 = !{ptr @.str.88, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @core_alua_store_implicit_trans_secs._entry, !182, !"_entry", i1 false, i1 false}
!185 = !{ptr @core_alua_store_implicit_trans_secs._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.90, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/target/target_core_alua.c", i32 2109, i32 3}
!188 = !{ptr @core_alua_store_implicit_trans_secs._entry.89, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @core_alua_store_implicit_trans_secs._entry_ptr.91, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.92, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/target/target_core_alua.c", i32 2136, i32 3}
!192 = !{ptr @.str.93, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @core_alua_store_preferred_bit._entry, !191, !"_entry", i1 false, i1 false}
!194 = !{ptr @core_alua_store_preferred_bit._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.95, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/target/target_core_alua.c", i32 2140, i32 3}
!197 = !{ptr @core_alua_store_preferred_bit._entry.94, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @core_alua_store_preferred_bit._entry_ptr.96, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.97, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/target/target_core_alua.c", i32 2173, i32 3}
!201 = !{ptr @.str.98, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @core_alua_store_offline_bit._entry, !200, !"_entry", i1 false, i1 false}
!203 = !{ptr @core_alua_store_offline_bit._entry_ptr, !200, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.100, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/target/target_core_alua.c", i32 2177, i32 3}
!206 = !{ptr @core_alua_store_offline_bit._entry.99, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @core_alua_store_offline_bit._entry_ptr.101, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.102, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/target/target_core_alua.c", i32 2206, i32 3}
!210 = !{ptr @.str.103, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @core_alua_store_secondary_status._entry, !209, !"_entry", i1 false, i1 false}
!212 = !{ptr @core_alua_store_secondary_status._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.105, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/target/target_core_alua.c", i32 2212, i32 3}
!215 = !{ptr @core_alua_store_secondary_status._entry.104, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @core_alua_store_secondary_status._entry_ptr.106, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.107, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/target/target_core_alua.c", i32 2238, i32 3}
!219 = !{ptr @.str.108, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @core_alua_store_secondary_write_metadata._entry, !218, !"_entry", i1 false, i1 false}
!221 = !{ptr @core_alua_store_secondary_write_metadata._entry_ptr, !218, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.110, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/target/target_core_alua.c", i32 2242, i32 3}
!224 = !{ptr @core_alua_store_secondary_write_metadata._entry.109, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @core_alua_store_secondary_write_metadata._entry_ptr.111, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.112, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/target/target_core_alua.c", i32 2271, i32 3}
!228 = !{ptr @.str.113, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @core_setup_alua.__UNIQUE_ID_ddebug243, !227, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!230 = !{ptr @alua_lu_gps_counter, !231, !"alua_lu_gps_counter", i1 false, i1 false}
!231 = !{!"../drivers/target/target_core_alua.c", i32 42, i32 12}
!232 = !{ptr @alua_lu_gps_count, !233, !"alua_lu_gps_count", i1 false, i1 false}
!233 = !{!"../drivers/target/target_core_alua.c", i32 43, i32 12}
!234 = !{ptr @default_lu_gp, !235, !"default_lu_gp", i1 false, i1 false}
!235 = !{!"../drivers/target/target_core_alua.c", i32 48, i32 24}
!236 = distinct !{null, !237, !"__warned", i1 false, i1 false}
!237 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!238 = !{ptr @.str.114, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @.str.115, !237, !"<string literal>", i1 false, i1 false}
!240 = distinct !{null, !241, !"__warned", i1 false, i1 false}
!241 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!242 = !{ptr @.str.116, !241, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @.str.117, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/target/target_core_alua.c", i32 776, i32 3}
!245 = !{ptr @core_alua_check_transition._entry, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @core_alua_check_transition._entry_ptr, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.119, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/target/target_core_alua.c", i32 783, i32 2}
!249 = !{ptr @core_alua_check_transition._entry.118, !248, !"_entry", i1 false, i1 false}
!250 = !{ptr @core_alua_check_transition._entry_ptr.120, !248, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.121, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/target/target_core_alua.c", i32 1038, i32 2}
!253 = !{ptr @.str.122, !252, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @core_alua_do_transition_tg_pt.__UNIQUE_ID_ddebug217, !252, !"__UNIQUE_ID_ddebug217", i1 false, i1 false}
!255 = distinct !{null, !256, !"__warned", i1 false, i1 false}
!256 = !{!"../drivers/target/target_core_alua.c", i32 937, i32 11}
!257 = distinct !{null, !258, !"__already_done", i1 false, i1 false}
!258 = !{!"../include/linux/percpu-refcount.h", i32 280, i32 2}
!259 = !{ptr @.str.123, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @.str.124, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/target/target_core_alua.c", i32 884, i32 3}
!262 = !{ptr @.str.125, !261, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @core_alua_update_tpg_primary_metadata._entry, !261, !"_entry", i1 false, i1 false}
!264 = !{ptr @core_alua_update_tpg_primary_metadata._entry_ptr, !261, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.126, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/target/target_core_alua.c", i32 889, i32 4}
!267 = !{ptr @.str.127, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/target/target_core_alua.c", i32 897, i32 31}
!269 = !{ptr @.str.128, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/target/target_core_alua.c", i32 862, i32 3}
!271 = !{ptr @.str.129, !270, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @core_alua_write_tpg_metadata._entry, !270, !"_entry", i1 false, i1 false}
!273 = !{ptr @core_alua_write_tpg_metadata._entry_ptr, !270, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @.str.131, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/target/target_core_alua.c", i32 867, i32 3}
!276 = !{ptr @core_alua_write_tpg_metadata._entry.130, !275, !"_entry", i1 false, i1 false}
!277 = !{ptr @core_alua_write_tpg_metadata._entry_ptr.132, !275, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @.str.133, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/target/target_core_alua.c", i32 792, i32 10}
!280 = !{ptr @.str.134, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/target/target_core_alua.c", i32 794, i32 10}
!282 = !{ptr @.str.135, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/target/target_core_alua.c", i32 796, i32 10}
!284 = !{ptr @.str.136, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/target/target_core_alua.c", i32 798, i32 10}
!286 = !{ptr @.str.137, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/target/target_core_alua.c", i32 800, i32 10}
!288 = !{ptr @.str.138, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/target/target_core_alua.c", i32 804, i32 10}
!290 = distinct !{null, !291, !"__warned", i1 false, i1 false}
!291 = !{!"../drivers/target/target_core_alua.c", i32 1223, i32 13}
!292 = !{ptr @.str.139, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/target/target_core_alua.c", i32 1226, i32 3}
!294 = !{ptr @.str.140, !293, !"<string literal>", i1 false, i1 false}
!295 = !{ptr @core_alua_set_tg_pt_secondary_state._entry, !293, !"_entry", i1 false, i1 false}
!296 = !{ptr @core_alua_set_tg_pt_secondary_state._entry_ptr, !293, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.141, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/target/target_core_alua.c", i32 1244, i32 2}
!299 = !{ptr @core_alua_set_tg_pt_secondary_state.__UNIQUE_ID_ddebug221, !298, !"__UNIQUE_ID_ddebug221", i1 false, i1 false}
!300 = !{ptr @.str.142, !298, !"<string literal>", i1 false, i1 false}
!301 = !{ptr @.str.143, !298, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @.str.144, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/target/target_core_alua.c", i32 1178, i32 3}
!304 = !{ptr @core_alua_update_tpg_secondary_metadata._entry, !303, !"_entry", i1 false, i1 false}
!305 = !{ptr @core_alua_update_tpg_secondary_metadata._entry_ptr, !303, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @.str.145, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/target/target_core_alua.c", i32 1183, i32 42}
!308 = !{ptr @.str.146, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/target/target_core_alua.c", i32 1189, i32 32}
!310 = !{ptr @.str.147, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/target/target_core_alua.c", i32 1195, i32 32}
!312 = !{ptr @.str.148, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/target/target_core_alua.c", i32 45, i32 8}
!314 = !{ptr @lu_gps_lock, !313, !"lu_gps_lock", i1 false, i1 false}
!315 = !{ptr @lu_gps_list, !316, !"lu_gps_list", i1 false, i1 false}
!316 = !{!"../drivers/target/target_core_alua.c", i32 46, i32 8}
!317 = !{ptr @.str.149, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/target/target_core_alua.c", i32 1445, i32 3}
!319 = !{ptr @.str.150, !318, !"<string literal>", i1 false, i1 false}
!320 = !{ptr @core_alua_allocate_lu_gp_mem._entry, !318, !"_entry", i1 false, i1 false}
!321 = !{ptr @core_alua_allocate_lu_gp_mem._entry_ptr, !318, !"_entry_ptr", i1 false, i1 false}
!322 = !{ptr @core_alua_allocate_lu_gp_mem.__key, !323, !"__key", i1 false, i1 false}
!323 = !{!"../drivers/target/target_core_alua.c", i32 1449, i32 2}
!324 = !{ptr @.str.151, !323, !"<string literal>", i1 false, i1 false}
!325 = !{!"sp"}
!326 = !{i32 1, !"wchar_size", i32 2}
!327 = !{i32 1, !"min_enum_size", i32 4}
!328 = !{i32 8, !"branch-target-enforcement", i32 0}
!329 = !{i32 8, !"sign-return-address", i32 0}
!330 = !{i32 8, !"sign-return-address-all", i32 0}
!331 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!332 = !{i32 7, !"uwtable", i32 1}
!333 = !{i32 7, !"frame-pointer", i32 2}
!334 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!335 = !{i64 2149976294}
!336 = !{i64 2149976560}
!337 = !{i64 2148260149, i64 2148260154, i64 2148260167, i64 2148260211, i64 2148260245, i64 2148260266}
!338 = !{i64 2153111577}
!339 = !{i64 2148639423, i64 2148639449, i64 2148639478, i64 2148639512, i64 2148639543, i64 2148639566}
!340 = !{i64 2153111754}
!341 = !{i64 2153112101}
!342 = !{i64 2148641888, i64 2148641914, i64 2148641943, i64 2148641977, i64 2148642008, i64 2148642031}
!343 = !{i64 2153112278}
!344 = !{!"branch_weights", i32 2000, i32 1}
!345 = !{i64 2148489208, i64 2148489488, i64 2148489822, i64 2148490156}
!346 = !{!"branch_weights", i32 1, i32 2000}
!347 = !{i64 2153308585}
!348 = !{i64 2153308427}
!349 = !{i8 0, i8 2}
!350 = !{i64 2153314886}
!351 = !{i64 2153314728}
!352 = !{i64 2153330830}
!353 = !{i64 2153330672}
!354 = !{i64 2153353331, i64 2153353830, i64 2153353368, i64 2153353424, i64 2153353458, i64 2153353482, i64 2153353523, i64 2153353544, i64 2153353572, i64 2153353606}
!355 = !{i64 2153359980}
!356 = !{i64 2153366824, i64 2153367323, i64 2153366861, i64 2153366917, i64 2153366951, i64 2153366975, i64 2153367016, i64 2153367037, i64 2153367065, i64 2153367099}
!357 = !{i64 2153381138, i64 2153381637, i64 2153381175, i64 2153381231, i64 2153381265, i64 2153381289, i64 2153381330, i64 2153381351, i64 2153381379, i64 2153381413}
!358 = !{!"auto-init"}
!359 = !{i64 1044103, i64 1044164}
!360 = !{i64 1046835}
!361 = !{i64 1047120}
!362 = !{i64 2148638842}
!363 = !{i64 1125442, i64 1125467, i64 1125489, i64 1125505, i64 1125517, i64 1125537, i64 1125561, i64 1125577, i64 1125589}
!364 = !{i64 2148639030}
!365 = !{i64 2148727899}
!366 = !{i64 2148642608, i64 2148642640, i64 2148642669, i64 2148642703, i64 2148642734, i64 2148642757}
!367 = !{i64 2148728128}
