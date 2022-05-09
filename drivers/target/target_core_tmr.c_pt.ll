; ModuleID = '/llk/IR_all_yes/drivers/target/target_core_tmr.c_pt.bc'
source_filename = "../drivers/target/target_core_tmr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+core_tmr_alloc_req\22, \22a\22\09"
module asm "\09.weak\09__crc_core_tmr_alloc_req\09\09\09\09"
module asm "\09.long\09__crc_core_tmr_alloc_req\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_core_tmr_alloc_req:\09\09\09\09\09"
module asm "\09.asciz \09\22core_tmr_alloc_req\22\09\09\09\09\09"
module asm "__kstrtabns_core_tmr_alloc_req:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.se_cmd = type { i32, i8, i16, i8, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.llist_node, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i64, i32, i32, %struct.spinlock, %struct.kref, %struct.completion, %struct.work_struct, ptr, ptr, i32, i32, ptr, ptr, i32, i32, %struct.list_head, ptr, i32, i32, i8, i8, i32, i32, ptr, i32, i32, i64, i32 }
%struct.llist_node = type { ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.se_tmr_req = type { i8, i8, i32, i64, ptr, ptr, ptr, %struct.list_head }
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
%struct.hlist_node = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.se_session = type { %struct.atomic_t, i64, i32, i32, ptr, ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.completion, ptr, %struct.sbitmap_queue }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, ptr, %struct.atomic_t, i32 }
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.se_device_queue = type { %struct.list_head, %struct.spinlock, %struct.se_cmd_queue }
%struct.se_cmd_queue = type { %struct.llist_head, %struct.work_struct }
%struct.llist_head = type { ptr }
%struct.target_core_fabric_ops = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.target_backend_ops = type { [16 x i8], [16 x i8], [4 x i8], ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.se_portal_group = type { i32, i8, %struct.atomic_t, %struct.mutex, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.hlist_head, ptr, %struct.list_head, ptr, ptr, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group }
%struct.hlist_head = type { ptr }

@core_tmr_alloc_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 36, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013Unable to allocate struct se_tmr_req\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"core_tmr_alloc_req\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/target/target_core_tmr.c\00", [63 x i8] zeroinitializer }, align 32
@core_tmr_alloc_req._entry_ptr = internal global ptr @core_tmr_alloc_req._entry, section ".printk_index", align 4
@__kstrtab_core_tmr_alloc_req = external dso_local constant [0 x i8], align 1
@__kstrtabns_core_tmr_alloc_req = external dso_local constant [0 x i8], align 1
@__ksymtab_core_tmr_alloc_req = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @core_tmr_alloc_req to i32), ptr @__kstrtab_core_tmr_alloc_req, ptr @__kstrtabns_core_tmr_alloc_req }, section "___ksymtab+core_tmr_alloc_req", align 4
@core_tmr_abort_task._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013ABORT_TASK: Found referenced %s task_tag: %llu\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"core_tmr_abort_task\00", [44 x i8] zeroinitializer }, align 32
@core_tmr_abort_task._entry_ptr = internal global ptr @core_tmr_abort_task._entry, section ".printk_index", align 4
@core_tmr_abort_task._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013ABORT_TASK: Sending TMR_FUNCTION_COMPLETE for ref_tag: %llu\0A\00", [33 x i8] zeroinitializer }, align 32
@core_tmr_abort_task._entry_ptr.7 = internal global ptr @core_tmr_abort_task._entry.5, section ".printk_index", align 4
@core_tmr_abort_task._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.2, i32 170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"ABORT_TASK: Sending TMR_TASK_DOES_NOT_EXIST for ref_tag: %lld\0A\00", [33 x i8] zeroinitializer }, align 32
@core_tmr_abort_task._entry_ptr.10 = internal global ptr @core_tmr_abort_task._entry.8, section ".printk_index", align 4
@core_tmr_lun_reset.__UNIQUE_ID_ddebug161 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 94, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"target_core_mod\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"core_tmr_lun_reset\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"LUN_RESET: TMR caller fabric: %s initiator port %s\0A\00", [44 x i8] zeroinitializer }, align 32
@core_tmr_lun_reset.__UNIQUE_ID_ddebug162 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str.2, ptr @.str.14, i8 0, i8 96, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"LUN_RESET: %s starting for [%s], tas: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Preempt\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TMR\00", [28 x i8] zeroinitializer }, align 32
@core_tmr_lun_reset.__UNIQUE_ID_ddebug163 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str.2, ptr @.str.17, i8 0, i8 100, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"LUN_RESET: SCSI-2 Released reservation\0A\00", [56 x i8] zeroinitializer }, align 32
@core_tmr_lun_reset.__UNIQUE_ID_ddebug164 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str.2, ptr @.str.18, i8 0, i8 101, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"LUN_RESET: %s for [%s] Complete\0A\00", [63 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__target_check_io_state.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__target_check_io_state.__UNIQUE_ID_ddebug158 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 22, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"__target_check_io_state\00", [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"Attempted to abort io tag: %llu already complete or fabric stop, skipping\0A\00", [53 x i8] zeroinitializer }, align 32
@core_tmr_drain_tmr_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 196, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013Unable to locate struct se_cmd for TMR\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"core_tmr_drain_tmr_list\00", [40 x i8] zeroinitializer }, align 32
@core_tmr_drain_tmr_list._entry_ptr = internal global ptr @core_tmr_drain_tmr_list._entry, section ".printk_index", align 4
@core_tmr_drain_tmr_list.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@core_tmr_drain_tmr_list._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.2, i32 216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"LUN_RESET TMR: non-zero kref_get_unless_zero\0A\00", [50 x i8] zeroinitializer }, align 32
@core_tmr_drain_tmr_list._entry_ptr.25 = internal global ptr @core_tmr_drain_tmr_list._entry.23, section ".printk_index", align 4
@core_tmr_drain_tmr_list.__UNIQUE_ID_ddebug159 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.22, ptr @.str.2, ptr @.str.26, i8 0, i8 58, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"LUN_RESET: %s releasing TMR %p Function: 0x%02x, Response: 0x%02x, t_state: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@core_tmr_drain_state_list.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LUN_RESET: \00", [20 x i8] zeroinitializer }, align 32
@core_tmr_drain_state_list.__UNIQUE_ID_ddebug160 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 0, i8 84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"core_tmr_drain_state_list\00", [38 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"LUN_RESET: ITT[0x%08llx] - %s pr_res_key: 0x%016Lx\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"preempt\00", [24 x i8] zeroinitializer }, align 32
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 36, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 137, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 157, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 169, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 376, i32 4 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 382, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 400, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 405, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 90, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 196, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 216, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 229, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 336, i32 19 }
@___asan_gen_.125 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.126 = private constant [36 x i8] c"../drivers/target/target_core_tmr.c\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 337, i32 3 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__ksymtab_core_tmr_alloc_req, ptr @core_tmr_abort_task._entry, ptr @core_tmr_abort_task._entry.5, ptr @core_tmr_abort_task._entry.8, ptr @core_tmr_abort_task._entry_ptr, ptr @core_tmr_abort_task._entry_ptr.10, ptr @core_tmr_abort_task._entry_ptr.7, ptr @core_tmr_alloc_req._entry, ptr @core_tmr_alloc_req._entry_ptr, ptr @core_tmr_drain_tmr_list._entry, ptr @core_tmr_drain_tmr_list._entry.23, ptr @core_tmr_drain_tmr_list._entry_ptr, ptr @core_tmr_drain_tmr_list._entry_ptr.25, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_tmr_alloc_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_tmr_abort_task._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_tmr_abort_task._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_tmr_abort_task._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_tmr_drain_tmr_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_tmr_drain_tmr_list._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @core_tmr_alloc_req(ptr noundef %se_cmd, ptr noundef %fabric_tmr_ptr, i8 noundef zeroext %function, i32 noundef %gfp_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i.i.i = and i32 %gfp_flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.i, label %entry.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !76

entry.kzalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %entry
  %and2.i.i.i = and i32 %gfp_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kzalloc.exit_crit_edge

if.end.i.i.i.kzalloc.exit_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %and6.i.i.i = and i32 %gfp_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i.i.i.kzalloc.exit_crit_edge, %entry.kzalloc.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %entry.kzalloc.exit_crit_edge ], [ 3, %if.end.i.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %or.i = or i32 %gfp_flags, 256
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i, i32 7
  %0 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 40) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  br label %cleanup

if.end:                                           ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  %se_cmd_flags = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 11
  %2 = ptrtoint ptr %se_cmd_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %se_cmd_flags, align 8
  %or = or i32 %3, 16
  store i32 %or, ptr %se_cmd_flags, align 8
  %se_tmr_req = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 22
  %4 = ptrtoint ptr %se_tmr_req to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %se_tmr_req, align 8
  %task_cmd = getelementptr inbounds %struct.se_tmr_req, ptr %call7.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %task_cmd to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %se_cmd, ptr %task_cmd, align 4
  %fabric_tmr_ptr2 = getelementptr inbounds %struct.se_tmr_req, ptr %call7.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %fabric_tmr_ptr2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %fabric_tmr_ptr, ptr %fabric_tmr_ptr2, align 8
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %function, ptr %call7.i.i, align 8
  %tmr_list = getelementptr inbounds %struct.se_tmr_req, ptr %call7.i.i, i32 0, i32 7
  %8 = ptrtoint ptr %tmr_list to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %tmr_list, ptr %tmr_list, align 4
  %prev.i = getelementptr inbounds %struct.se_tmr_req, ptr %call7.i.i, i32 0, i32 7, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %tmr_list, ptr %prev.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @core_tmr_release_req(ptr noundef %tmr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %tmr) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @core_tmr_abort_task(ptr noundef %dev, ptr nocapture noundef %tmr, ptr noundef %se_sess) local_unnamed_addr #0 align 64 {
entry:
  %aborted_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %aborted_list) #6
  %0 = getelementptr inbounds %struct.list_head, ptr %aborted_list, i32 0, i32 1
  %1 = ptrtoint ptr %aborted_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %aborted_list, ptr %aborted_list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %aborted_list, ptr %0, align 4
  %queue_cnt = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 51
  %3 = ptrtoint ptr %queue_cnt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %queue_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp155 = icmp sgt i32 %4, 0
  br i1 %cmp155, label %for.body.lr.ph, label %entry.for.end70_crit_edge

entry.for.end70_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end70

for.body.lr.ph:                                   ; preds = %entry
  %queues = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 52
  %ref_task_tag = getelementptr inbounds %struct.se_tmr_req, ptr %tmr, i32 0, i32 3
  %sess_cmd_lock = getelementptr inbounds %struct.se_session, ptr %se_sess, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %i.0156 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.end.for.body_crit_edge ]
  %5 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %queues, align 4
  %work = getelementptr %struct.se_device_queue, ptr %6, i32 %i.0156, i32 2, i32 1
  %call = call zeroext i1 @flush_work(ptr noundef %work) #6
  %7 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %queues, align 4
  %lock = getelementptr %struct.se_device_queue, ptr %8, i32 %i.0156, i32 1
  %call7 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %9 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %queues, align 4
  %arrayidx11 = getelementptr %struct.se_device_queue, ptr %10, i32 %i.0156
  %11 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx11, align 4
  %cmp24.not151 = icmp eq ptr %12, %arrayidx11
  br i1 %cmp24.not151, label %for.body.for.end_crit_edge, label %for.body.for.body26_crit_edge

for.body.for.body26_crit_edge:                    ; preds = %for.body
  br label %for.body26

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body26:                                       ; preds = %for.inc.for.body26_crit_edge, %for.body.for.body26_crit_edge
  %.pn.in152 = phi ptr [ %.pn154, %for.inc.for.body26_crit_edge ], [ %12, %for.body.for.body26_crit_edge ]
  %se_cmd.0153 = getelementptr i8, ptr %.pn.in152, i32 -380
  %13 = ptrtoint ptr %.pn.in152 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn154 = load ptr, ptr %.pn.in152, align 4
  %se_sess27 = getelementptr i8, ptr %.pn.in152, i32 -272
  %14 = ptrtoint ptr %se_sess27 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %se_sess27, align 4
  %cmp28.not = icmp eq ptr %15, %se_sess
  br i1 %cmp28.not, label %if.end, label %for.body26.for.inc_crit_edge

for.body26.for.inc_crit_edge:                     ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %for.body26
  %se_cmd_flags = getelementptr i8, ptr %.pn.in152, i32 -332
  %16 = ptrtoint ptr %se_cmd_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %se_cmd_flags, align 8
  %and = and i32 %17, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end31, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end31:                                         ; preds = %if.end
  %tag = getelementptr i8, ptr %.pn.in152, i32 -364
  %18 = ptrtoint ptr %tag to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %tag, align 8
  %20 = ptrtoint ptr %ref_task_tag to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %ref_task_tag, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %19)
  %cmp32.not = icmp eq i64 %21, %19
  br i1 %cmp32.not, label %do.end38, label %if.end31.for.inc_crit_edge

if.end31.for.inc_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.end38:                                         ; preds = %if.end31
  %se_tfo = getelementptr i8, ptr %.pn.in152, i32 -252
  %22 = ptrtoint ptr %se_tfo to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %se_tfo, align 8
  %fabric_name = getelementptr inbounds %struct.target_core_fabric_ops, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %fabric_name to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fabric_name, align 4
  %call40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %25, i64 noundef %19) #10
  call void @_raw_spin_lock(ptr noundef %sess_cmd_lock) #6
  %call41 = call fastcc zeroext i1 @__target_check_io_state(ptr noundef %se_cmd.0153, ptr noundef %se_sess, i1 noundef zeroext false)
  call void @_raw_spin_unlock(ptr noundef %sess_cmd_lock) #6
  br i1 %call41, label %if.end45, label %do.end38.for.inc_crit_edge

do.end38.for.inc_crit_edge:                       ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end45:                                         ; preds = %do.end38
  %call.i.i136 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in152) #6
  br i1 %call.i.i136, label %if.end.i.i, label %if.end45.__list_del_entry.exit.i_crit_edge

if.end45.__list_del_entry.exit.i_crit_edge:       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in152, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i, align 4
  %28 = ptrtoint ptr %.pn.in152 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %.pn.in152, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev1.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %27, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end45.__list_del_entry.exit.i_crit_edge
  %32 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %0, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in152, ptr noundef %33, ptr noundef nonnull %aborted_list) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %.pn.in152, ptr %0, align 4
  %35 = ptrtoint ptr %.pn.in152 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %aborted_list, ptr %.pn.in152, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in152, i32 0, i32 1
  %36 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev3.i.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %.pn.in152, ptr %33, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %state_active = getelementptr i8, ptr %.pn.in152, i32 -372
  %38 = ptrtoint ptr %state_active to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load = load i8, ptr %state_active, align 8
  %bf.clear = and i8 %bf.load, -65
  store i8 %bf.clear, ptr %state_active, align 8
  %39 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %queues, align 4
  %lock49 = getelementptr %struct.se_device_queue, ptr %40, i32 %i.0156, i32 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock49, i32 noundef %call7) #6
  %transport = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 46
  %41 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %transport, align 8
  %tmr_notify = getelementptr inbounds %struct.target_backend_ops, ptr %42, i32 0, i32 18
  %43 = ptrtoint ptr %tmr_notify to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tmr_notify, align 4
  %tobool50.not = icmp eq ptr %44, null
  br i1 %tobool50.not, label %list_move_tail.exit.if.end54_crit_edge, label %if.then51

list_move_tail.exit.if.end54_crit_edge:           ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.then51:                                        ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void %44(ptr noundef %dev, i32 noundef 1, ptr noundef nonnull %aborted_list) #6
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %list_move_tail.exit.if.end54_crit_edge
  %call.i.i137 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in152) #6
  br i1 %call.i.i137, label %if.end.i.i140, label %if.end54.list_del_init.exit_crit_edge

if.end54.list_del_init.exit_crit_edge:            ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit

if.end.i.i140:                                    ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i138 = getelementptr inbounds %struct.list_head, ptr %.pn.in152, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i.i138 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i.i138, align 4
  %47 = ptrtoint ptr %.pn.in152 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %.pn.in152, align 4
  %prev1.i.i.i139 = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %prev1.i.i.i139 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev1.i.i.i139, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %48, ptr %46, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i140, %if.end54.list_del_init.exit_crit_edge
  %51 = ptrtoint ptr %.pn.in152 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %.pn.in152, ptr %.pn.in152, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in152, i32 0, i32 1
  %52 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %.pn.in152, ptr %prev.i3.i, align 4
  call void @target_put_cmd_and_wait(ptr noundef %se_cmd.0153) #6
  %call60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i64 noundef %19) #10
  %response = getelementptr inbounds %struct.se_tmr_req, ptr %tmr, i32 0, i32 1
  %53 = ptrtoint ptr %response to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %response, align 1
  %aborts_complete = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 9
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %aborts_complete, i32 noundef 4) #6
  call void @llvm.prefetch.p0(ptr %aborts_complete, i32 1, i32 3, i32 1) #6
  %54 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %aborts_complete, ptr %aborts_complete, i32 1, ptr elementtype(i32) %aborts_complete) #6, !srcloc !77
  br label %cleanup

for.inc:                                          ; preds = %do.end38.for.inc_crit_edge, %if.end31.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body26.for.inc_crit_edge
  %55 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %queues, align 4
  %arrayidx22 = getelementptr %struct.se_device_queue, ptr %56, i32 %i.0156
  %cmp24.not = icmp eq ptr %.pn154, %arrayidx22
  br i1 %cmp24.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body26_crit_edge

for.inc.for.body26_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body26

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  %.lcssa = phi ptr [ %10, %for.body.for.end_crit_edge ], [ %56, %for.inc.for.end_crit_edge ]
  %lock68 = getelementptr %struct.se_device_queue, ptr %.lcssa, i32 %i.0156, i32 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock68, i32 noundef %call7) #6
  %inc = add nuw nsw i32 %i.0156, 1
  %57 = ptrtoint ptr %queue_cnt to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %queue_cnt, align 8
  %cmp = icmp slt i32 %inc, %58
  br i1 %cmp, label %for.end.for.body_crit_edge, label %for.end.for.end70_crit_edge

for.end.for.end70_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end70

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end70:                                        ; preds = %for.end.for.end70_crit_edge, %entry.for.end70_crit_edge
  %transport71 = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 46
  %59 = ptrtoint ptr %transport71 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %transport71, align 8
  %tmr_notify72 = getelementptr inbounds %struct.target_backend_ops, ptr %60, i32 0, i32 18
  %61 = ptrtoint ptr %tmr_notify72 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %tmr_notify72, align 4
  %tobool73.not = icmp eq ptr %62, null
  br i1 %tobool73.not, label %for.end70.do.end80_crit_edge, label %if.then74

for.end70.do.end80_crit_edge:                     ; preds = %for.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end80

if.then74:                                        ; preds = %for.end70
  call void @__sanitizer_cov_trace_pc() #8
  call void %62(ptr noundef %dev, i32 noundef 1, ptr noundef nonnull %aborted_list) #6
  br label %do.end80

do.end80:                                         ; preds = %if.then74, %for.end70.do.end80_crit_edge
  %ref_task_tag82 = getelementptr inbounds %struct.se_tmr_req, ptr %tmr, i32 0, i32 3
  %63 = ptrtoint ptr %ref_task_tag82 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %ref_task_tag82, align 8
  %call83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i64 noundef %64) #10
  %response84 = getelementptr inbounds %struct.se_tmr_req, ptr %tmr, i32 0, i32 1
  %65 = ptrtoint ptr %response84 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 2, ptr %response84, align 1
  %aborts_no_task = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 10
  %call.i.i135 = call zeroext i1 @__kasan_check_write(ptr noundef %aborts_no_task, i32 noundef 4) #6
  call void @llvm.prefetch.p0(ptr %aborts_no_task, i32 1, i32 3, i32 1) #6
  %66 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %aborts_no_task, ptr %aborts_no_task, i32 1, ptr elementtype(i32) %aborts_no_task) #6, !srcloc !77
  br label %cleanup

cleanup:                                          ; preds = %do.end80, %list_del_init.exit
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %aborted_list) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @__target_check_io_state(ptr noundef %se_cmd, ptr noundef readnone %tmr_sess, i1 noundef zeroext %tas) unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  %agg.tmp.sroa.0.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %se_sess = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 21
  %0 = ptrtoint ptr %se_sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_sess, align 4
  %sess_cmd_lock = getelementptr inbounds %struct.se_session, ptr %1, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %2 = ptrtoint ptr %sess_cmd_lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %sess_cmd_lock, align 4
  %3 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body4, label %do.end9, !prof !78

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/target/target_core_tmr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 76, 0\0A.popsection", ""() #6, !srcloc !79
  unreachable

do.end9:                                          ; preds = %entry
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !80
  %and.i = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool22.not = icmp eq i32 %and.i, 0
  br i1 %tobool22.not, label %land.rhs, label %do.end9.if.end67_crit_edge

do.end9.if.end67_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67

land.rhs:                                         ; preds = %do.end9
  %.b118 = load i1, ptr @__target_check_io_state.__already_done, align 1
  br i1 %.b118, label %land.rhs.if.end67_crit_edge, label %if.then41, !prof !76

land.rhs.if.end67_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67

if.then41:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @__target_check_io_state.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 77, i32 noundef 9, ptr noundef null) #6
  br label %if.end67

if.end67:                                         ; preds = %if.then41, %land.rhs.if.end67_crit_edge, %do.end9.if.end67_crit_edge
  %t_state_lock = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 35
  tail call void @_raw_spin_lock(ptr noundef %t_state_lock) #6
  %transport_state = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 34
  %5 = ptrtoint ptr %transport_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %transport_state, align 4
  %and = and i32 %6, 2052
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool75.not = icmp eq i32 %and, 0
  br i1 %tobool75.not, label %if.end93, label %do.body77

do.body77:                                        ; preds = %if.end67
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__target_check_io_state.__UNIQUE_ID_ddebug158, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__target_check_io_state, %if.then88)) #6
          to label %do.end91 [label %if.then88], !srcloc !81

if.then88:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #8
  %tag = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 4
  %7 = ptrtoint ptr %tag to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %tag, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__target_check_io_state.__UNIQUE_ID_ddebug158, ptr noundef nonnull @.str.20, i64 noundef %8) #6
  br label %do.end91

do.end91:                                         ; preds = %if.then88, %do.body77
  tail call void @_raw_spin_unlock(ptr noundef %t_state_lock) #6
  br label %cleanup

if.end93:                                         ; preds = %if.end67
  %or = or i32 %6, 1
  %9 = ptrtoint ptr %transport_state to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or, ptr %transport_state, align 4
  %10 = ptrtoint ptr %se_sess to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %se_sess, align 4
  %cmp96.not = icmp ne ptr %11, %tmr_sess
  %12 = and i1 %cmp96.not, %tas
  br i1 %12, label %if.then100, label %if.end93.if.end103_crit_edge

if.end93.if.end103_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end103

if.then100:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  %or102 = or i32 %6, 1025
  %13 = ptrtoint ptr %transport_state to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or102, ptr %transport_state, align 4
  br label %if.end103

if.end103:                                        ; preds = %if.then100, %if.end93.if.end103_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %t_state_lock) #6
  %cmd_kref = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cmd_kref, i32 noundef 4) #6
  %14 = ptrtoint ptr %cmd_kref to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %cmd_kref, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end103
  %16 = phi i32 [ %15, %if.end103 ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %17 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.i.i.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %16, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %cmd_kref, i32 noundef 4) #6
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #6
  %18 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %cmd_kref, i32 1, i32 3, i32 1) #6
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %20 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %cmd_kref, ptr %cmd_kref, i32 %19, i32 %add.i.i.i.i, ptr elementtype(i32) %cmd_kref) #6, !srcloc !82
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %20, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %20, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %19
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !76

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %21 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %22, 1
  %23 = or i32 %add5.i.i.i.i, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %.not.i.i.i.i = icmp sgt i32 %23, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !76

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @refcount_warn_saturate(ptr noundef %cmd_kref, i32 noundef 0) #6
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %24 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool12.i.i.i.i = icmp ne i32 %25, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %kref_get_unless_zero.exit, %do.end91
  %retval.0 = phi i1 [ false, %do.end91 ], [ %tobool12.i.i.i.i, %kref_get_unless_zero.exit ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_put_cmd_and_wait(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @core_tmr_lun_reset(ptr noundef %dev, ptr noundef %tmr, ptr noundef %preempt_and_abort_list, ptr noundef %prout_cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %emulate_tas = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 39, i32 6
  %0 = ptrtoint ptr %emulate_tas to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %emulate_tas, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool = icmp ne i8 %1, 0
  %tobool1.not = icmp eq ptr %tmr, null
  br i1 %tobool1.not, label %entry.do.body19_crit_edge, label %land.lhs.true

entry.do.body19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body19

land.lhs.true:                                    ; preds = %entry
  %task_cmd = getelementptr inbounds %struct.se_tmr_req, ptr %tmr, i32 0, i32 5
  %2 = ptrtoint ptr %task_cmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task_cmd, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.do.body19_crit_edge, label %land.lhs.true3

land.lhs.true.do.body19_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body19

land.lhs.true3:                                   ; preds = %land.lhs.true
  %se_sess = getelementptr inbounds %struct.se_cmd, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %se_sess to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %se_sess, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %land.lhs.true3.do.body19_crit_edge, label %if.then

land.lhs.true3.do.body19_crit_edge:               ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body19

if.then:                                          ; preds = %land.lhs.true3
  %se_node_acl = getelementptr inbounds %struct.se_session, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %se_node_acl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %se_node_acl, align 8
  %se_tpg = getelementptr inbounds %struct.se_session, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %se_tpg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %se_tpg, align 4
  %tobool8.not = icmp eq ptr %7, null
  %tobool10.not = icmp eq ptr %9, null
  %or.cond = select i1 %tobool8.not, i1 true, i1 %tobool10.not
  br i1 %or.cond, label %if.then.do.body19_crit_edge, label %do.body

if.then.do.body19_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body19

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @core_tmr_lun_reset.__UNIQUE_ID_ddebug161, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@core_tmr_lun_reset, %if.then16)) #6
          to label %do.body19 [label %if.then16], !srcloc !81

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %se_tpg_tfo = getelementptr inbounds %struct.se_portal_group, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %se_tpg_tfo to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %se_tpg_tfo, align 4
  %fabric_name = getelementptr inbounds %struct.target_core_fabric_ops, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %fabric_name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fabric_name, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @core_tmr_lun_reset.__UNIQUE_ID_ddebug161, ptr noundef nonnull @.str.13, ptr noundef %13, ptr noundef nonnull %7) #6
  br label %do.body19

do.body19:                                        ; preds = %if.then16, %do.body, %if.then.do.body19_crit_edge, %land.lhs.true3.do.body19_crit_edge, %land.lhs.true.do.body19_crit_edge, %entry.do.body19_crit_edge
  %tmr_sess.0 = phi ptr [ %5, %if.then16 ], [ %5, %if.then.do.body19_crit_edge ], [ null, %land.lhs.true3.do.body19_crit_edge ], [ null, %land.lhs.true.do.body19_crit_edge ], [ null, %entry.do.body19_crit_edge ], [ %5, %do.body ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @core_tmr_lun_reset.__UNIQUE_ID_ddebug162, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@core_tmr_lun_reset, %if.then31)) #6
          to label %do.end37 [label %if.then31], !srcloc !81

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #8
  %tobool32.not = icmp eq ptr %preempt_and_abort_list, null
  %cond = select i1 %tobool32.not, ptr @.str.16, ptr @.str.15
  %transport = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 46
  %14 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %transport, align 8
  %16 = zext i8 %1 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @core_tmr_lun_reset.__UNIQUE_ID_ddebug162, ptr noundef nonnull @.str.14, ptr noundef nonnull %cond, ptr noundef %15, i32 noundef %16) #6
  br label %do.end37

do.end37:                                         ; preds = %if.then31, %do.body19
  tail call fastcc void @core_tmr_drain_tmr_list(ptr noundef %dev, ptr noundef %tmr, ptr noundef %preempt_and_abort_list)
  tail call fastcc void @core_tmr_drain_state_list(ptr noundef %dev, ptr noundef %prout_cmd, ptr noundef %tmr_sess.0, i1 noundef zeroext %tobool, ptr noundef %preempt_and_abort_list)
  %tobool39.not = icmp eq ptr %preempt_and_abort_list, null
  br i1 %tobool39.not, label %land.lhs.true40, label %do.end37.if.end62_crit_edge

do.end37.if.end62_crit_edge:                      ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

land.lhs.true40:                                  ; preds = %do.end37
  %dev_reservation_flags = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 21
  %17 = ptrtoint ptr %dev_reservation_flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dev_reservation_flags, align 4
  %and = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool41.not = icmp eq i32 %and, 0
  br i1 %tobool41.not, label %land.lhs.true40.if.end62_crit_edge, label %if.then42

land.lhs.true40.if.end62_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

if.then42:                                        ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #8
  %dev_reservation_lock = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 20
  tail call void @_raw_spin_lock(ptr noundef %dev_reservation_lock) #6
  %reservation_holder = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 26
  %19 = ptrtoint ptr %reservation_holder to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %reservation_holder, align 4
  %20 = ptrtoint ptr %dev_reservation_flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dev_reservation_flags, align 4
  %and44 = and i32 %21, -2
  store i32 %and44, ptr %dev_reservation_flags, align 4
  tail call void @_raw_spin_unlock(ptr noundef %dev_reservation_lock) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @core_tmr_lun_reset.__UNIQUE_ID_ddebug163, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@core_tmr_lun_reset, %if.then58)) #6
          to label %if.end62 [label %if.then58], !srcloc !81

if.then58:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @core_tmr_lun_reset.__UNIQUE_ID_ddebug163, ptr noundef nonnull @.str.17) #6
  br label %if.end62

if.end62:                                         ; preds = %if.then58, %if.then42, %land.lhs.true40.if.end62_crit_edge, %do.end37.if.end62_crit_edge
  %num_resets = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_resets, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %num_resets, i32 1, i32 3, i32 1) #6
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_resets, ptr %num_resets, i32 1, ptr elementtype(i32) %num_resets) #6, !srcloc !77
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @core_tmr_lun_reset.__UNIQUE_ID_ddebug164, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@core_tmr_lun_reset, %if.then75)) #6
          to label %do.end83 [label %if.then75], !srcloc !81

if.then75:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  %cond77 = select i1 %tobool39.not, ptr @.str.16, ptr @.str.15
  %transport78 = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 46
  %23 = ptrtoint ptr %transport78 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %transport78, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @core_tmr_lun_reset.__UNIQUE_ID_ddebug164, ptr noundef nonnull @.str.18, ptr noundef nonnull %cond77, ptr noundef %24) #6
  br label %do.end83

do.end83:                                         ; preds = %if.then75, %if.end62
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @core_tmr_drain_tmr_list(ptr noundef %dev, ptr noundef %tmr, ptr noundef readonly %preempt_and_abort_list) unnamed_addr #0 align 64 {
entry:
  %drain_tmr_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %drain_tmr_list) #6
  %0 = getelementptr inbounds %struct.list_head, ptr %drain_tmr_list, i32 0, i32 1
  %1 = ptrtoint ptr %drain_tmr_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %drain_tmr_list, ptr %drain_tmr_list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %drain_tmr_list, ptr %0, align 4
  %se_tmr_lock = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 23
  %call2 = call i32 @_raw_spin_lock_irqsave(ptr noundef %se_tmr_lock) #6
  %tobool.not = icmp eq ptr %tmr, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %tmr_list = getelementptr inbounds %struct.se_tmr_req, ptr %tmr, i32 0, i32 7
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %tmr_list) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.se_tmr_req, ptr %tmr, i32 0, i32 7, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %tmr_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tmr_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %9 = ptrtoint ptr %tmr_list to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %tmr_list, ptr %tmr_list, align 4
  %prev.i3.i = getelementptr inbounds %struct.se_tmr_req, ptr %tmr, i32 0, i32 7, i32 1
  %10 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %tmr_list, ptr %prev.i3.i, align 4
  br label %if.end

if.end:                                           ; preds = %list_del_init.exit, %entry.if.end_crit_edge
  %dev_tmr_list = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 30
  %11 = ptrtoint ptr %dev_tmr_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_tmr_list, align 8
  %cmp14.not187 = icmp eq ptr %12, %dev_tmr_list
  br i1 %cmp14.not187, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %tobool.not.i = icmp eq ptr %preempt_and_abort_list, null
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn.in188 = phi ptr [ %12, %for.body.lr.ph ], [ %.pn191, %for.inc.for.body_crit_edge ]
  %13 = ptrtoint ptr %.pn.in188 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn191 = load ptr, ptr %.pn.in188, align 4
  %task_cmd = getelementptr i8, ptr %.pn.in188, i32 -8
  %14 = ptrtoint ptr %task_cmd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task_cmd, align 4
  %tobool16.not = icmp eq ptr %15, null
  br i1 %tobool16.not, label %do.end20, label %if.end23

do.end20:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #10
  br label %for.inc

if.end23:                                         ; preds = %for.body
  br i1 %tobool.not.i, label %if.end23.if.end27_crit_edge, label %for.cond.preheader.i

if.end23.if.end27_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

for.cond.preheader.i:                             ; preds = %if.end23
  %pr_res_key1.i = getelementptr inbounds %struct.se_cmd, ptr %15, i32 0, i32 15
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.cond.preheader.i
  %.pn.in.i = phi ptr [ %.pn.i, %for.body.i.for.cond.i_crit_edge ], [ %preempt_and_abort_list, %for.cond.preheader.i ]
  %16 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %preempt_and_abort_list
  br i1 %cmp.not.i, label %for.cond.i.for.inc_crit_edge, label %for.body.i

for.cond.i.for.inc_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.body.i:                                       ; preds = %for.cond.i
  %pr_res_key.i = getelementptr i8, ptr %.pn.i, i32 -28
  %17 = ptrtoint ptr %pr_res_key.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %pr_res_key.i, align 8
  %19 = ptrtoint ptr %pr_res_key1.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %pr_res_key1.i, align 8
  %cmp2.i = icmp eq i64 %18, %20
  br i1 %cmp2.i, label %for.body.i.if.end27_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

for.body.i.if.end27_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.end27:                                         ; preds = %for.body.i.if.end27_crit_edge, %if.end23.if.end27_crit_edge
  %se_sess = getelementptr inbounds %struct.se_cmd, ptr %15, i32 0, i32 21
  %21 = ptrtoint ptr %se_sess to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %se_sess, align 4
  %tobool28.not = icmp eq ptr %22, null
  br i1 %tobool28.not, label %land.rhs, label %if.end75.critedge

land.rhs:                                         ; preds = %if.end27
  %.b167 = load i1, ptr @core_tmr_drain_tmr_list.__already_done, align 1
  br i1 %.b167, label %land.rhs.for.inc_crit_edge, label %if.then39, !prof !76

land.rhs.for.inc_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then39:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @core_tmr_drain_tmr_list.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 208, i32 noundef 9, ptr noundef null) #6
  br label %for.inc

if.end75.critedge:                                ; preds = %if.end27
  %sess_cmd_lock = getelementptr inbounds %struct.se_session, ptr %22, i32 0, i32 10
  call void @_raw_spin_lock(ptr noundef %sess_cmd_lock) #6
  %call76 = call fastcc zeroext i1 @__target_check_io_state(ptr noundef nonnull %15, ptr noundef nonnull %22, i1 noundef zeroext false)
  call void @_raw_spin_unlock(ptr noundef %sess_cmd_lock) #6
  br i1 %call76, label %if.end86, label %do.end83

do.end83:                                         ; preds = %if.end75.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %call85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #10
  br label %for.inc

if.end86:                                         ; preds = %if.end75.critedge
  %call.i.i172 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in188) #6
  br i1 %call.i.i172, label %if.end.i.i175, label %if.end86.__list_del_entry.exit.i_crit_edge

if.end86.__list_del_entry.exit.i_crit_edge:       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  br label %__list_del_entry.exit.i

if.end.i.i175:                                    ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i173 = getelementptr inbounds %struct.list_head, ptr %.pn.in188, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i173 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i173, align 4
  %25 = ptrtoint ptr %.pn.in188 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %.pn.in188, align 4
  %prev1.i.i.i174 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i174 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i174, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i175, %if.end86.__list_del_entry.exit.i_crit_edge
  %29 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %0, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in188, ptr noundef %30, ptr noundef nonnull %drain_tmr_list) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %.pn.in188, ptr %0, align 4
  %32 = ptrtoint ptr %.pn.in188 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %drain_tmr_list, ptr %.pn.in188, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in188, i32 0, i32 1
  %33 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev3.i.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %.pn.in188, ptr %30, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %tmr_dev = getelementptr i8, ptr %.pn.in188, i32 -4
  %35 = ptrtoint ptr %tmr_dev to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %tmr_dev, align 8
  br label %for.inc

for.inc:                                          ; preds = %list_move_tail.exit, %do.end83, %if.then39, %land.rhs.for.inc_crit_edge, %for.cond.i.for.inc_crit_edge, %do.end20
  %cmp14.not = icmp eq ptr %.pn191, %dev_tmr_list
  br i1 %cmp14.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %se_tmr_lock, i32 noundef %call2) #6
  %36 = ptrtoint ptr %drain_tmr_list to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %drain_tmr_list, align 4
  %cmp105.not194 = icmp eq ptr %37, %drain_tmr_list
  br i1 %cmp105.not194, label %for.end.for.end136_crit_edge, label %for.body109.lr.ph

for.end.for.end136_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end136

for.body109.lr.ph:                                ; preds = %for.end
  %tobool124.not = icmp eq ptr %preempt_and_abort_list, null
  %cond = select i1 %tobool124.not, ptr @.str.27, ptr @.str.15
  br label %for.body109

for.body109:                                      ; preds = %do.end129.for.body109_crit_edge, %for.body109.lr.ph
  %.pn166.in195 = phi ptr [ %37, %for.body109.lr.ph ], [ %.pn166198, %do.end129.for.body109_crit_edge ]
  %tmr_p.1197 = getelementptr i8, ptr %.pn166.in195, i32 -28
  %38 = ptrtoint ptr %.pn166.in195 to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pn166198 = load ptr, ptr %.pn166.in195, align 4
  %call.i.i176 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn166.in195) #6
  br i1 %call.i.i176, label %if.end.i.i179, label %for.body109.list_del_init.exit182_crit_edge

for.body109.list_del_init.exit182_crit_edge:      ; preds = %for.body109
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit182

if.end.i.i179:                                    ; preds = %for.body109
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i177 = getelementptr inbounds %struct.list_head, ptr %.pn166.in195, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i.i177 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev.i.i177, align 4
  %41 = ptrtoint ptr %.pn166.in195 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %.pn166.in195, align 4
  %prev1.i.i.i178 = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %prev1.i.i.i178 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev1.i.i.i178, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %42, ptr %40, align 4
  br label %list_del_init.exit182

list_del_init.exit182:                            ; preds = %if.end.i.i179, %for.body109.list_del_init.exit182_crit_edge
  %45 = ptrtoint ptr %.pn166.in195 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %.pn166.in195, ptr %.pn166.in195, align 4
  %prev.i3.i180 = getelementptr inbounds %struct.list_head, ptr %.pn166.in195, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i3.i180 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %.pn166.in195, ptr %prev.i3.i180, align 4
  %task_cmd111 = getelementptr i8, ptr %.pn166.in195, i32 -8
  %47 = ptrtoint ptr %task_cmd111 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %task_cmd111, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @core_tmr_drain_tmr_list.__UNIQUE_ID_ddebug159, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@core_tmr_drain_tmr_list, %if.then123)) #6
          to label %do.end129 [label %if.then123], !srcloc !81

if.then123:                                       ; preds = %list_del_init.exit182
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %tmr_p.1197 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %tmr_p.1197, align 8
  %conv125 = zext i8 %50 to i32
  %response = getelementptr i8, ptr %.pn166.in195, i32 -27
  %51 = ptrtoint ptr %response to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %response, align 1
  %conv126 = zext i8 %52 to i32
  %t_state = getelementptr inbounds %struct.se_cmd, ptr %48, i32 0, i32 10
  %53 = ptrtoint ptr %t_state to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %t_state, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @core_tmr_drain_tmr_list.__UNIQUE_ID_ddebug159, ptr noundef nonnull @.str.26, ptr noundef nonnull %cond, ptr noundef %tmr_p.1197, i32 noundef %conv125, i32 noundef %conv126, i32 noundef %54) #6
  br label %do.end129

do.end129:                                        ; preds = %if.then123, %list_del_init.exit182
  call void @target_put_cmd_and_wait(ptr noundef %48) #6
  %cmp105.not = icmp eq ptr %.pn166198, %drain_tmr_list
  br i1 %cmp105.not, label %do.end129.for.end136_crit_edge, label %do.end129.for.body109_crit_edge

do.end129.for.body109_crit_edge:                  ; preds = %do.end129
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body109

do.end129.for.end136_crit_edge:                   ; preds = %do.end129
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end136

for.end136:                                       ; preds = %do.end129.for.end136_crit_edge, %for.end.for.end136_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %drain_tmr_list) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @core_tmr_drain_state_list(ptr noundef %dev, ptr noundef readnone %prout_cmd, ptr noundef %tmr_sess, i1 noundef zeroext %tas, ptr noundef readonly %preempt_and_abort_list) unnamed_addr #0 align 64 {
entry:
  %drain_task_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %drain_task_list) #6
  %0 = getelementptr inbounds %struct.list_head, ptr %drain_task_list, i32 0, i32 1
  %1 = ptrtoint ptr %drain_task_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %drain_task_list, ptr %drain_task_list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %drain_task_list, ptr %0, align 4
  %queue_cnt = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 51
  %3 = ptrtoint ptr %queue_cnt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %queue_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp188 = icmp sgt i32 %4, 0
  br i1 %cmp188, label %for.body.lr.ph, label %entry.for.end98_crit_edge

entry.for.end98_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end98

for.body.lr.ph:                                   ; preds = %entry
  %queues = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 52
  %tobool.not.i = icmp eq ptr %preempt_and_abort_list, null
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %i.0189 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.end.for.body_crit_edge ]
  %5 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %queues, align 4
  %work = getelementptr %struct.se_device_queue, ptr %6, i32 %i.0189, i32 2, i32 1
  %call = call zeroext i1 @flush_work(ptr noundef %work) #6
  %7 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %queues, align 4
  %lock = getelementptr %struct.se_device_queue, ptr %8, i32 %i.0189, i32 1
  %call7 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %9 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %queues, align 4
  %arrayidx11 = getelementptr %struct.se_device_queue, ptr %10, i32 %i.0189
  %11 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx11, align 4
  %cmp24.not181 = icmp eq ptr %12, %arrayidx11
  br i1 %cmp24.not181, label %for.body.for.end_crit_edge, label %for.body.for.body26_crit_edge

for.body.for.body26_crit_edge:                    ; preds = %for.body
  br label %for.body26

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body26:                                       ; preds = %for.inc.for.body26_crit_edge, %for.body.for.body26_crit_edge
  %.pn.in182 = phi ptr [ %.pn187, %for.inc.for.body26_crit_edge ], [ %12, %for.body.for.body26_crit_edge ]
  %cmd.0186 = getelementptr i8, ptr %.pn.in182, i32 -380
  %13 = ptrtoint ptr %.pn.in182 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn187 = load ptr, ptr %.pn.in182, align 4
  br i1 %tobool.not.i, label %for.body26.target_check_cdb_and_preempt.exit_crit_edge, label %for.cond.preheader.i

for.body26.target_check_cdb_and_preempt.exit_crit_edge: ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #8
  br label %target_check_cdb_and_preempt.exit

for.cond.preheader.i:                             ; preds = %for.body26
  %pr_res_key1.i = getelementptr i8, ptr %.pn.in182, i32 -308
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.cond.preheader.i
  %.pn.in.i = phi ptr [ %.pn.i, %for.body.i.for.cond.i_crit_edge ], [ %preempt_and_abort_list, %for.cond.preheader.i ]
  %14 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %preempt_and_abort_list
  br i1 %cmp.not.i, label %for.cond.i.for.inc_crit_edge, label %for.body.i

for.cond.i.for.inc_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.body.i:                                       ; preds = %for.cond.i
  %pr_res_key.i = getelementptr i8, ptr %.pn.i, i32 -28
  %15 = ptrtoint ptr %pr_res_key.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %pr_res_key.i, align 8
  %17 = ptrtoint ptr %pr_res_key1.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %pr_res_key1.i, align 8
  %cmp2.i = icmp eq i64 %16, %18
  br i1 %cmp2.i, label %for.body.i.target_check_cdb_and_preempt.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

for.body.i.target_check_cdb_and_preempt.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %target_check_cdb_and_preempt.exit

target_check_cdb_and_preempt.exit:                ; preds = %for.body.i.target_check_cdb_and_preempt.exit_crit_edge, %for.body26.target_check_cdb_and_preempt.exit_crit_edge
  %cmp28 = icmp eq ptr %cmd.0186, %prout_cmd
  br i1 %cmp28, label %target_check_cdb_and_preempt.exit.for.inc_crit_edge, label %if.end31

target_check_cdb_and_preempt.exit.for.inc_crit_edge: ; preds = %target_check_cdb_and_preempt.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end31:                                         ; preds = %target_check_cdb_and_preempt.exit
  %se_sess = getelementptr i8, ptr %.pn.in182, i32 -272
  %19 = ptrtoint ptr %se_sess to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %se_sess, align 4
  %tobool32.not = icmp eq ptr %20, null
  br i1 %tobool32.not, label %land.rhs, label %if.end80.critedge

land.rhs:                                         ; preds = %if.end31
  %.b164 = load i1, ptr @core_tmr_drain_state_list.__already_done, align 1
  br i1 %.b164, label %land.rhs.for.inc_crit_edge, label %if.then44, !prof !76

land.rhs.for.inc_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then44:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @core_tmr_drain_state_list.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 312, i32 noundef 9, ptr noundef null) #6
  br label %for.inc

if.end80.critedge:                                ; preds = %if.end31
  %sess_cmd_lock = getelementptr inbounds %struct.se_session, ptr %20, i32 0, i32 10
  call void @_raw_spin_lock(ptr noundef %sess_cmd_lock) #6
  %call82 = call fastcc zeroext i1 @__target_check_io_state(ptr noundef %cmd.0186, ptr noundef %tmr_sess, i1 noundef zeroext %tas)
  call void @_raw_spin_unlock(ptr noundef %sess_cmd_lock) #6
  br i1 %call82, label %if.end87, label %if.end80.critedge.for.inc_crit_edge

if.end80.critedge.for.inc_crit_edge:              ; preds = %if.end80.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end87:                                         ; preds = %if.end80.critedge
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in182) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end87.__list_del_entry.exit.i_crit_edge

if.end87.__list_del_entry.exit.i_crit_edge:       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in182, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i, align 4
  %23 = ptrtoint ptr %.pn.in182 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %.pn.in182, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end87.__list_del_entry.exit.i_crit_edge
  %27 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %0, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in182, ptr noundef %28, ptr noundef nonnull %drain_task_list) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %.pn.in182, ptr %0, align 4
  %30 = ptrtoint ptr %.pn.in182 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %drain_task_list, ptr %.pn.in182, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in182, i32 0, i32 1
  %31 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev3.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %.pn.in182, ptr %28, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %state_active = getelementptr i8, ptr %.pn.in182, i32 -372
  %33 = ptrtoint ptr %state_active to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load = load i8, ptr %state_active, align 8
  %bf.clear = and i8 %bf.load, -65
  store i8 %bf.clear, ptr %state_active, align 8
  br label %for.inc

for.inc:                                          ; preds = %list_move_tail.exit, %if.end80.critedge.for.inc_crit_edge, %if.then44, %land.rhs.for.inc_crit_edge, %target_check_cdb_and_preempt.exit.for.inc_crit_edge, %for.cond.i.for.inc_crit_edge
  %34 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %queues, align 4
  %arrayidx22 = getelementptr %struct.se_device_queue, ptr %35, i32 %i.0189
  %cmp24.not = icmp eq ptr %.pn187, %arrayidx22
  br i1 %cmp24.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body26_crit_edge

for.inc.for.body26_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body26

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  %.lcssa = phi ptr [ %10, %for.body.for.end_crit_edge ], [ %35, %for.inc.for.end_crit_edge ]
  %lock96 = getelementptr %struct.se_device_queue, ptr %.lcssa, i32 %i.0189, i32 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock96, i32 noundef %call7) #6
  %inc = add nuw nsw i32 %i.0189, 1
  %36 = ptrtoint ptr %queue_cnt to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %queue_cnt, align 8
  %cmp = icmp slt i32 %inc, %37
  br i1 %cmp, label %for.end.for.body_crit_edge, label %for.end.for.end98_crit_edge

for.end.for.end98_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end98

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end98:                                        ; preds = %for.end.for.end98_crit_edge, %entry.for.end98_crit_edge
  %transport = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 46
  %38 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %transport, align 8
  %tmr_notify = getelementptr inbounds %struct.target_backend_ops, ptr %39, i32 0, i32 18
  %40 = ptrtoint ptr %tmr_notify to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tmr_notify, align 4
  %tobool99.not = icmp eq ptr %41, null
  br i1 %tobool99.not, label %for.end98.if.end104_crit_edge, label %if.then100

for.end98.if.end104_crit_edge:                    ; preds = %for.end98
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end104

if.then100:                                       ; preds = %for.end98
  call void @__sanitizer_cov_trace_pc() #8
  %tobool103.not = icmp eq ptr %preempt_and_abort_list, null
  %cond = select i1 %tobool103.not, i32 5, i32 128
  call void %41(ptr noundef %dev, i32 noundef %cond, ptr noundef nonnull %drain_task_list) #6
  br label %if.end104

if.end104:                                        ; preds = %if.then100, %for.end98.if.end104_crit_edge
  %42 = ptrtoint ptr %drain_task_list to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %drain_task_list, align 4
  %cmp.i.not190 = icmp eq ptr %43, %drain_task_list
  br i1 %cmp.i.not190, label %if.end104.while.end_crit_edge, label %while.body.lr.ph

if.end104.while.end_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end104
  %tobool126.not = icmp eq ptr %preempt_and_abort_list, null
  %cond127 = select i1 %tobool126.not, ptr @.str.27, ptr @.str.31
  br label %while.body

while.body:                                       ; preds = %do.end130.while.body_crit_edge, %while.body.lr.ph
  %44 = phi ptr [ %43, %while.body.lr.ph ], [ %58, %do.end130.while.body_crit_edge ]
  %add.ptr112 = getelementptr i8, ptr %44, i32 -380
  %call.i.i168 = call zeroext i1 @__list_del_entry_valid(ptr noundef %44) #6
  br i1 %call.i.i168, label %if.end.i.i171, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit

if.end.i.i171:                                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i169 = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i.i169 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i.i169, align 4
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %44, align 4
  %prev1.i.i.i170 = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %prev1.i.i.i170 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev1.i.i.i170, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %48, ptr %46, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i171, %while.body.list_del_init.exit_crit_edge
  %51 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %44, ptr %44, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %52 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %44, ptr %prev.i3.i, align 4
  call void @target_show_cmd(ptr noundef nonnull @.str.28, ptr noundef %add.ptr112) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @core_tmr_drain_state_list.__UNIQUE_ID_ddebug160, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@core_tmr_drain_state_list, %if.then125)) #6
          to label %do.end130 [label %if.then125], !srcloc !81

if.then125:                                       ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  %tag = getelementptr i8, ptr %44, i32 -364
  %53 = ptrtoint ptr %tag to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %tag, align 8
  %pr_res_key = getelementptr i8, ptr %44, i32 -308
  %55 = ptrtoint ptr %pr_res_key to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %pr_res_key, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @core_tmr_drain_state_list.__UNIQUE_ID_ddebug160, ptr noundef nonnull @.str.30, i64 noundef %54, ptr noundef nonnull %cond127, i64 noundef %56) #6
  br label %do.end130

do.end130:                                        ; preds = %if.then125, %list_del_init.exit
  call void @target_put_cmd_and_wait(ptr noundef %add.ptr112) #6
  %57 = ptrtoint ptr %drain_task_list to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile ptr, ptr %drain_task_list, align 4
  %cmp.i.not = icmp eq ptr %58, %drain_task_list
  br i1 %cmp.i.not, label %do.end130.while.end_crit_edge, label %do.end130.while.body_crit_edge

do.end130.while.body_crit_edge:                   ; preds = %do.end130
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

do.end130.while.end_crit_edge:                    ; preds = %do.end130
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %do.end130.while.end_crit_edge, %if.end104.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %drain_task_list) #6
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_show_cmd(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !31, !33, !34, !36, !37, !39, !41, !42, !43, !45, !46, !47, !48, !50, !52, !53, !54, !56, !57, !58, !60, !62, !64, !65, !66}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/target/target_core_tmr.c", i32 36, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @core_tmr_alloc_req._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @core_tmr_alloc_req._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__ksymtab_core_tmr_alloc_req, !7, !"__ksymtab_core_tmr_alloc_req", i1 false, i1 false}
!7 = !{!"../drivers/target/target_core_tmr.c", i32 49, i32 1}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/target/target_core_tmr.c", i32 137, i32 4}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @core_tmr_abort_task._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @core_tmr_abort_task._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/target/target_core_tmr.c", i32 157, i32 4}
!15 = !{ptr @core_tmr_abort_task._entry.5, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @core_tmr_abort_task._entry_ptr.7, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/target/target_core_tmr.c", i32 169, i32 2}
!19 = !{ptr @core_tmr_abort_task._entry.8, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @core_tmr_abort_task._entry_ptr.10, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/target/target_core_tmr.c", i32 376, i32 4}
!23 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @core_tmr_lun_reset.__UNIQUE_ID_ddebug161, !22, !"__UNIQUE_ID_ddebug161", i1 false, i1 false}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/target/target_core_tmr.c", i32 382, i32 2}
!28 = !{ptr @core_tmr_lun_reset.__UNIQUE_ID_ddebug162, !27, !"__UNIQUE_ID_ddebug162", i1 false, i1 false}
!29 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/target/target_core_tmr.c", i32 400, i32 3}
!33 = !{ptr @core_tmr_lun_reset.__UNIQUE_ID_ddebug163, !32, !"__UNIQUE_ID_ddebug163", i1 false, i1 false}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/target/target_core_tmr.c", i32 405, i32 2}
!36 = !{ptr @core_tmr_lun_reset.__UNIQUE_ID_ddebug164, !35, !"__UNIQUE_ID_ddebug164", i1 false, i1 false}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../drivers/target/target_core_tmr.c", i32 77, i32 2}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/target/target_core_tmr.c", i32 90, i32 3}
!41 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @__target_check_io_state.__UNIQUE_ID_ddebug158, !40, !"__UNIQUE_ID_ddebug158", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/target/target_core_tmr.c", i32 196, i32 4}
!45 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @core_tmr_drain_tmr_list._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @core_tmr_drain_tmr_list._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../drivers/target/target_core_tmr.c", i32 208, i32 7}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/target/target_core_tmr.c", i32 216, i32 4}
!52 = !{ptr @core_tmr_drain_tmr_list._entry.23, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @core_tmr_drain_tmr_list._entry_ptr.25, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/target/target_core_tmr.c", i32 229, i32 3}
!56 = !{ptr @core_tmr_drain_tmr_list.__UNIQUE_ID_ddebug159, !55, !"__UNIQUE_ID_ddebug159", i1 false, i1 false}
!57 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../drivers/target/target_core_tmr.c", i32 312, i32 8}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/target/target_core_tmr.c", i32 336, i32 19}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/target/target_core_tmr.c", i32 337, i32 3}
!64 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @core_tmr_drain_state_list.__UNIQUE_ID_ddebug160, !63, !"__UNIQUE_ID_ddebug160", i1 false, i1 false}
!66 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{!"branch_weights", i32 2000, i32 1}
!77 = !{i64 2148590689, i64 2148590715, i64 2148590744, i64 2148590778, i64 2148590809, i64 2148590832}
!78 = !{!"branch_weights", i32 1, i32 2000}
!79 = !{i64 2152199098, i64 2152199594, i64 2152199135, i64 2152199191, i64 2152199225, i64 2152199249, i64 2152199290, i64 2152199311, i64 2152199339, i64 2152199373}
!80 = !{i64 998101}
!81 = !{i64 2148211415, i64 2148211420, i64 2148211433, i64 2148211477, i64 2148211511, i64 2148211532}
!82 = !{i64 1076202, i64 1076226, i64 1076247, i64 1076264, i64 1076281}
!83 = !{i8 0, i8 2}
