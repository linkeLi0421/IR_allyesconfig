; ModuleID = '/llk/IR_all_yes/drivers/target/target_core_ua.c_pt.bc'
source_filename = "../drivers/target/target_core_ua.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.se_cmd = type { i32, i8, i16, i8, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.llist_node, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i64, i32, i32, %struct.spinlock, %struct.kref, %struct.completion, %struct.work_struct, ptr, ptr, i32, i32, ptr, ptr, i32, i32, %struct.list_head, ptr, i32, i32, i8, i8, i32, i32, ptr, i32, i32, i64, i32 }
%struct.llist_node = type { ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.se_session = type { %struct.atomic_t, i64, i32, i32, ptr, ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.completion, ptr, %struct.sbitmap_queue }
%struct.percpu_ref = type { i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, ptr, %struct.atomic_t, i32 }
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.se_dev_entry = type { i64, i64, i64, i8, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.kref, %struct.completion, ptr, %struct.spinlock, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hlist_node, %struct.callback_head }
%struct.hlist_node = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.se_ua = type { i8, i8, %struct.list_head }
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
%struct.se_node_acl = type { [224 x i8], i8, i8, i32, i32, i32, [64 x i8], %struct.atomic_t, %struct.hlist_head, ptr, ptr, %struct.mutex, %struct.spinlock, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.list_head, %struct.list_head, %struct.completion, %struct.kref }
%struct.hlist_head = type { ptr }
%struct.se_portal_group = type { i32, i8, %struct.atomic_t, %struct.mutex, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.hlist_head, ptr, %struct.list_head, ptr, ptr, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group }
%struct.target_core_fabric_ops = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }

@se_ua_cache = external dso_local local_unnamed_addr global ptr, align 4
@core_scsi3_ua_allocate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 84, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013Unable to allocate struct se_ua\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"core_scsi3_ua_allocate\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/target/target_core_ua.c\00", [32 x i8] zeroinitializer }, align 32
@core_scsi3_ua_allocate._entry_ptr = internal global ptr @core_scsi3_ua_allocate._entry, section ".printk_index", align 4
@core_scsi3_ua_allocate.__UNIQUE_ID_ddebug158 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"target_core_mod\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"Allocated UNIT ATTENTION, mapped LUN: %llu, ASC: 0x%02x, ASCQ: 0x%02x\0A\00", [57 x i8] zeroinitializer }, align 32
@core_scsi3_ua_for_check_condition.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@core_scsi3_ua_for_check_condition.__already_done.5 = internal unnamed_addr global i1 false, section ".data.once", align 1
@core_scsi3_ua_for_check_condition.__UNIQUE_ID_ddebug159 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"core_scsi3_ua_for_check_condition\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [126 x i8], [34 x i8] } { [126 x i8] c"[%s]: %s UNIT ATTENTION condition with INTLCK_CTRL: %d, mapped LUN: %llu, got CDB: 0x%02x reported ASC: 0x%02x, ASCQ: 0x%02x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Releasing\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Reporting\00", [22 x i8] zeroinitializer }, align 32
@core_scsi3_ua_clear_for_request_sense.__UNIQUE_ID_ddebug160 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 80, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"core_scsi3_ua_clear_for_request_sense\00", [58 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [113 x i8], [47 x i8] } { [113 x i8] c"[%s]: Released UNIT ATTENTION condition, mapped LUN: %llu, got REQUEST_SENSE reported ASC: 0x%02x, ASCQ: 0x%02x\0A\00", [47 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 18, i64 160]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 8, i64 41, i64 42]
@___asan_gen_.16 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 84, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 149, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 255, i32 2 }
@___asan_gen_.50 = private constant [35 x i8] c"../drivers/target/target_core_ua.c\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 317, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 695, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 723, i32 2 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @core_scsi3_ua_allocate._entry, ptr @core_scsi3_ua_allocate._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_scsi3_ua_allocate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 126, i32 160, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 113, i32 160, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @target_scsi3_ua_check(ptr nocapture noundef readonly %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %se_sess = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 21
  %0 = ptrtoint ptr %se_sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_sess, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %se_node_acl = getelementptr inbounds %struct.se_session, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %se_node_acl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %se_node_acl, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %4 = tail call i32 @llvm.read_register.i32(metadata !31) #5
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !41
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #5
  %call.i = tail call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i, label %if.end3.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end3.rcu_read_lock.exit_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end3
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #5
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end3.rcu_read_lock.exit_crit_edge
  %orig_fe_lun = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 14
  %8 = ptrtoint ptr %orig_fe_lun to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %orig_fe_lun, align 8
  %call = tail call ptr @target_nacl_find_deve(ptr noundef nonnull %3, i64 noundef %9) #5
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %rcu_read_lock.exit
  %call.i19 = tail call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i19, label %if.then5.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i22

if.then5.rcu_read_unlock.exit_crit_edge:          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit

land.lhs.true.i22:                                ; preds = %if.then5
  %call1.i20 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i20)
  %tobool.not.i21 = icmp eq i32 %call1.i20, 0
  br i1 %tobool.not.i21, label %land.lhs.true.i22.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i24

land.lhs.true.i22.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i22
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit

land.lhs.true2.i24:                               ; preds = %land.lhs.true.i22
  %.b4.i23 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i23, label %land.lhs.true2.i24.rcu_read_unlock.exit_crit_edge, label %if.then.i25

land.lhs.true2.i24.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i24
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit

if.then.i25:                                      ; preds = %land.lhs.true2.i24
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #5
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i25, %land.lhs.true2.i24.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i22.rcu_read_unlock.exit_crit_edge, %if.then5.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !42
  %10 = tail call i32 @llvm.read_register.i32(metadata !31) #5
  %and.i.i.i.i.i26 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i26 to ptr
  %preempt_count.i.i.i.i27 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i27, align 4
  %sub.i.i.i = add i32 %13, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i27, align 4
  tail call void @rcu_read_unlock_strict() #5
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #5
  br label %cleanup

if.end6:                                          ; preds = %rcu_read_lock.exit
  %ua_list = getelementptr inbounds %struct.se_dev_entry, ptr %call, i32 0, i32 16
  %14 = ptrtoint ptr %ua_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %ua_list, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !43
  %cmp.i.not.i = icmp eq ptr %15, %ua_list
  br i1 %cmp.i.not.i, label %list_empty_careful.exit, label %if.end6.if.end10_crit_edge

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

list_empty_careful.exit:                          ; preds = %if.end6
  %prev.i = getelementptr inbounds %struct.se_dev_entry, ptr %call, i32 0, i32 16, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i, align 4
  %cmp.i.not = icmp eq ptr %17, %ua_list
  br i1 %cmp.i.not, label %if.then9, label %list_empty_careful.exit.if.end10_crit_edge

list_empty_careful.exit.if.end10_crit_edge:       ; preds = %list_empty_careful.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then9:                                         ; preds = %list_empty_careful.exit
  %call.i28 = tail call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i28, label %if.then9.rcu_read_unlock.exit38_crit_edge, label %land.lhs.true.i31

if.then9.rcu_read_unlock.exit38_crit_edge:        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit38

land.lhs.true.i31:                                ; preds = %if.then9
  %call1.i29 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i29)
  %tobool.not.i30 = icmp eq i32 %call1.i29, 0
  br i1 %tobool.not.i30, label %land.lhs.true.i31.rcu_read_unlock.exit38_crit_edge, label %land.lhs.true2.i33

land.lhs.true.i31.rcu_read_unlock.exit38_crit_edge: ; preds = %land.lhs.true.i31
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit38

land.lhs.true2.i33:                               ; preds = %land.lhs.true.i31
  %.b4.i32 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i32, label %land.lhs.true2.i33.rcu_read_unlock.exit38_crit_edge, label %if.then.i34

land.lhs.true2.i33.rcu_read_unlock.exit38_crit_edge: ; preds = %land.lhs.true2.i33
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit38

if.then.i34:                                      ; preds = %land.lhs.true2.i33
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #5
  br label %rcu_read_unlock.exit38

rcu_read_unlock.exit38:                           ; preds = %if.then.i34, %land.lhs.true2.i33.rcu_read_unlock.exit38_crit_edge, %land.lhs.true.i31.rcu_read_unlock.exit38_crit_edge, %if.then9.rcu_read_unlock.exit38_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !42
  %18 = tail call i32 @llvm.read_register.i32(metadata !31) #5
  %and.i.i.i.i.i35 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i35 to ptr
  %preempt_count.i.i.i.i36 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i36 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i36, align 4
  %sub.i.i.i37 = add i32 %21, -1
  store volatile i32 %sub.i.i.i37, ptr %preempt_count.i.i.i.i36, align 4
  tail call void @rcu_read_unlock_strict() #5
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #5
  br label %cleanup

if.end10:                                         ; preds = %list_empty_careful.exit.if.end10_crit_edge, %if.end6.if.end10_crit_edge
  %call.i39 = tail call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i39, label %if.end10.rcu_read_unlock.exit49_crit_edge, label %land.lhs.true.i42

if.end10.rcu_read_unlock.exit49_crit_edge:        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit49

land.lhs.true.i42:                                ; preds = %if.end10
  %call1.i40 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i40)
  %tobool.not.i41 = icmp eq i32 %call1.i40, 0
  br i1 %tobool.not.i41, label %land.lhs.true.i42.rcu_read_unlock.exit49_crit_edge, label %land.lhs.true2.i44

land.lhs.true.i42.rcu_read_unlock.exit49_crit_edge: ; preds = %land.lhs.true.i42
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit49

land.lhs.true2.i44:                               ; preds = %land.lhs.true.i42
  %.b4.i43 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i43, label %land.lhs.true2.i44.rcu_read_unlock.exit49_crit_edge, label %if.then.i45

land.lhs.true2.i44.rcu_read_unlock.exit49_crit_edge: ; preds = %land.lhs.true2.i44
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit49

if.then.i45:                                      ; preds = %land.lhs.true2.i44
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #5
  br label %rcu_read_unlock.exit49

rcu_read_unlock.exit49:                           ; preds = %if.then.i45, %land.lhs.true2.i44.rcu_read_unlock.exit49_crit_edge, %land.lhs.true.i42.rcu_read_unlock.exit49_crit_edge, %if.end10.rcu_read_unlock.exit49_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !42
  %22 = tail call i32 @llvm.read_register.i32(metadata !31) #5
  %and.i.i.i.i.i46 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i46 to ptr
  %preempt_count.i.i.i.i47 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i47 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i47, align 4
  %sub.i.i.i48 = add i32 %25, -1
  store volatile i32 %sub.i.i.i48, ptr %preempt_count.i.i.i.i47, align 4
  tail call void @rcu_read_unlock_strict() #5
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #5
  %t_task_cdb = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 30
  %26 = ptrtoint ptr %t_task_cdb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %t_task_cdb, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %27, align 1
  %30 = zext i8 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values)
  switch i8 %29, label %sw.default [
    i8 18, label %rcu_read_unlock.exit49.cleanup_crit_edge
    i8 -96, label %rcu_read_unlock.exit49.cleanup_crit_edge51
    i8 3, label %rcu_read_unlock.exit49.cleanup_crit_edge52
  ]

rcu_read_unlock.exit49.cleanup_crit_edge52:       ; preds = %rcu_read_unlock.exit49
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

rcu_read_unlock.exit49.cleanup_crit_edge51:       ; preds = %rcu_read_unlock.exit49
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

rcu_read_unlock.exit49.cleanup_crit_edge:         ; preds = %rcu_read_unlock.exit49
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.default:                                       ; preds = %rcu_read_unlock.exit49
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %rcu_read_unlock.exit49.cleanup_crit_edge, %rcu_read_unlock.exit49.cleanup_crit_edge51, %rcu_read_unlock.exit49.cleanup_crit_edge52, %rcu_read_unlock.exit38, %rcu_read_unlock.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %rcu_read_unlock.exit38 ], [ 14, %sw.default ], [ 0, %rcu_read_unlock.exit ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %rcu_read_unlock.exit49.cleanup_crit_edge ], [ 0, %rcu_read_unlock.exit49.cleanup_crit_edge51 ], [ 0, %rcu_read_unlock.exit49.cleanup_crit_edge52 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @target_nacl_find_deve(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @core_scsi3_ua_allocate(ptr noundef %deve, i8 noundef zeroext %asc, i8 noundef zeroext %ascq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @se_ua_cache to i32))
  %0 = load ptr, ptr @se_ua_cache, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 2848) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %ua_nacl_list = getelementptr inbounds %struct.se_ua, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %ua_nacl_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %ua_nacl_list, ptr %ua_nacl_list, align 4
  %prev.i = getelementptr inbounds %struct.se_ua, ptr %call.i, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ua_nacl_list, ptr %prev.i, align 8
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %asc, ptr %call.i, align 8
  %ua_ascq = getelementptr inbounds %struct.se_ua, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %ua_ascq to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %ascq, ptr %ua_ascq, align 1
  %ua_lock = getelementptr inbounds %struct.se_dev_entry, ptr %deve, i32 0, i32 11
  tail call void @_raw_spin_lock(ptr noundef %ua_lock) #5
  %ua_list = getelementptr inbounds %struct.se_dev_entry, ptr %deve, i32 0, i32 16
  %5 = ptrtoint ptr %ua_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ua_list, align 8
  %cmp.not = icmp eq ptr %6, %ua_list
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %6, i32 -4
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %asc)
  %cmp12 = icmp eq i8 %8, %asc
  br i1 %cmp12, label %land.lhs.true, label %for.body.if.end21_crit_edge

for.body.if.end21_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

land.lhs.true:                                    ; preds = %for.body
  %ua_ascq14 = getelementptr i8, ptr %6, i32 -3
  %9 = ptrtoint ptr %ua_ascq14 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ua_ascq14, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %ascq)
  %cmp17 = icmp eq i8 %10, %ascq
  br i1 %cmp17, label %if.then19, label %land.lhs.true.if.end21_crit_edge

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock(ptr noundef %ua_lock) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @se_ua_cache to i32))
  %11 = load ptr, ptr @se_ua_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %11, ptr noundef nonnull %call.i) #5
  br label %cleanup

if.end21:                                         ; preds = %land.lhs.true.if.end21_crit_edge, %for.body.if.end21_crit_edge
  %12 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.15)
  switch i8 %8, label %if.else63 [
    i8 41, label %if.then26
    i8 42, label %if.then47
  ]

if.then26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp1(i8 41, i8 %asc)
  %cmp28 = icmp eq i8 %asc, 41
  br i1 %cmp28, label %land.lhs.true30, label %if.then26.if.else_crit_edge

if.then26.if.else_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true30:                                  ; preds = %if.then26
  %ua_ascq32 = getelementptr i8, ptr %6, i32 -3
  %13 = ptrtoint ptr %ua_ascq32 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ua_ascq32, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %ascq)
  %cmp34 = icmp ult i8 %14, %ascq
  br i1 %cmp34, label %if.then36, label %land.lhs.true30.if.else_crit_edge

land.lhs.true30.if.else_crit_edge:                ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then36:                                        ; preds = %land.lhs.true30
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ua_nacl_list, ptr noundef %ua_list, ptr noundef %6) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.then36.if.end67_crit_edge

if.then36.if.end67_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67

if.end.i.i:                                       ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  br label %if.end67.sink.split

if.else:                                          ; preds = %land.lhs.true30.if.else_crit_edge, %if.then26.if.else_crit_edge
  %prev.i129 = getelementptr inbounds %struct.se_dev_entry, ptr %deve, i32 0, i32 16, i32 1
  %15 = ptrtoint ptr %prev.i129 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i129, align 4
  %call.i.i130 = tail call zeroext i1 @__list_add_valid(ptr noundef %ua_nacl_list, ptr noundef %16, ptr noundef %ua_list) #5
  br i1 %call.i.i130, label %if.else.if.end67.sink.split_crit_edge, label %if.else.if.end67_crit_edge

if.else.if.end67_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67

if.else.if.end67.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67.sink.split

if.then47:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp1(i8 41, i8 %asc)
  %cmp49 = icmp eq i8 %asc, 41
  call void @__sanitizer_cov_trace_const_cmp1(i8 42, i8 %ascq)
  %cmp54 = icmp ugt i8 %ascq, 42
  %or.cond = or i1 %cmp49, %cmp54
  br i1 %or.cond, label %if.then56, label %if.else59

if.then56:                                        ; preds = %if.then47
  %call.i.i133 = tail call zeroext i1 @__list_add_valid(ptr noundef %ua_nacl_list, ptr noundef %ua_list, ptr noundef %6) #5
  br i1 %call.i.i133, label %if.end.i.i136, label %if.then56.if.end67_crit_edge

if.then56.if.end67_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67

if.end.i.i136:                                    ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i134 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  br label %if.end67.sink.split

if.else59:                                        ; preds = %if.then47
  %prev.i138 = getelementptr inbounds %struct.se_dev_entry, ptr %deve, i32 0, i32 16, i32 1
  %17 = ptrtoint ptr %prev.i138 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i138, align 4
  %call.i.i139 = tail call zeroext i1 @__list_add_valid(ptr noundef %ua_nacl_list, ptr noundef %18, ptr noundef %ua_list) #5
  br i1 %call.i.i139, label %if.else59.if.end67.sink.split_crit_edge, label %if.else59.if.end67_crit_edge

if.else59.if.end67_crit_edge:                     ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67

if.else59.if.end67.sink.split_crit_edge:          ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67.sink.split

if.else63:                                        ; preds = %if.end21
  %prev.i143 = getelementptr inbounds %struct.se_dev_entry, ptr %deve, i32 0, i32 16, i32 1
  %19 = ptrtoint ptr %prev.i143 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i143, align 4
  %call.i.i144 = tail call zeroext i1 @__list_add_valid(ptr noundef %ua_nacl_list, ptr noundef %20, ptr noundef %ua_list) #5
  br i1 %call.i.i144, label %if.else63.if.end67.sink.split_crit_edge, label %if.else63.if.end67_crit_edge

if.else63.if.end67_crit_edge:                     ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67

if.else63.if.end67.sink.split_crit_edge:          ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67.sink.split

if.end67.sink.split:                              ; preds = %if.else63.if.end67.sink.split_crit_edge, %if.else59.if.end67.sink.split_crit_edge, %if.end.i.i136, %if.else.if.end67.sink.split_crit_edge, %if.end.i.i
  %prev.i143.sink = phi ptr [ %prev1.i.i134, %if.end.i.i136 ], [ %prev1.i.i, %if.end.i.i ], [ %prev.i129, %if.else.if.end67.sink.split_crit_edge ], [ %prev.i138, %if.else59.if.end67.sink.split_crit_edge ], [ %prev.i143, %if.else63.if.end67.sink.split_crit_edge ]
  %ua_list.sink = phi ptr [ %6, %if.end.i.i136 ], [ %6, %if.end.i.i ], [ %ua_list, %if.else.if.end67.sink.split_crit_edge ], [ %ua_list, %if.else59.if.end67.sink.split_crit_edge ], [ %ua_list, %if.else63.if.end67.sink.split_crit_edge ]
  %.sink154 = phi ptr [ %ua_list, %if.end.i.i136 ], [ %ua_list, %if.end.i.i ], [ %16, %if.else.if.end67.sink.split_crit_edge ], [ %18, %if.else59.if.end67.sink.split_crit_edge ], [ %20, %if.else63.if.end67.sink.split_crit_edge ]
  %21 = ptrtoint ptr %prev.i143.sink to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %ua_nacl_list, ptr %prev.i143.sink, align 4
  %22 = ptrtoint ptr %ua_nacl_list to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %ua_list.sink, ptr %ua_nacl_list, align 4
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %.sink154, ptr %prev.i, align 8
  %24 = ptrtoint ptr %.sink154 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %ua_nacl_list, ptr %.sink154, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.end67.sink.split, %if.else63.if.end67_crit_edge, %if.else59.if.end67_crit_edge, %if.then56.if.end67_crit_edge, %if.else.if.end67_crit_edge, %if.then36.if.end67_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %ua_lock) #5
  br label %cleanup

for.end:                                          ; preds = %if.end
  %prev.i148 = getelementptr inbounds %struct.se_dev_entry, ptr %deve, i32 0, i32 16, i32 1
  %25 = ptrtoint ptr %prev.i148 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i148, align 4
  %call.i.i149 = tail call zeroext i1 @__list_add_valid(ptr noundef %ua_nacl_list, ptr noundef %26, ptr noundef %ua_list) #5
  br i1 %call.i.i149, label %if.end.i.i151, label %for.end.list_add_tail.exit152_crit_edge

for.end.list_add_tail.exit152_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit152

if.end.i.i151:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %prev.i148 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %ua_nacl_list, ptr %prev.i148, align 4
  %28 = ptrtoint ptr %ua_nacl_list to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %ua_list, ptr %ua_nacl_list, align 4
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev.i, align 8
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %ua_nacl_list, ptr %26, align 4
  br label %list_add_tail.exit152

list_add_tail.exit152:                            ; preds = %if.end.i.i151, %for.end.list_add_tail.exit152_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %ua_lock) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @core_scsi3_ua_allocate.__UNIQUE_ID_ddebug158, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@core_scsi3_ua_allocate, %if.then84)) #5
          to label %cleanup [label %if.then84], !srcloc !44

if.then84:                                        ; preds = %list_add_tail.exit152
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %deve to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %deve, align 8
  %conv85 = zext i8 %asc to i32
  %conv86 = zext i8 %ascq to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @core_scsi3_ua_allocate.__UNIQUE_ID_ddebug158, ptr noundef nonnull @.str.4, i64 noundef %32, i32 noundef %conv85, i32 noundef %conv86) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then84, %list_add_tail.exit152, %if.end67, %if.then19, %do.end
  %retval.0 = phi i32 [ 0, %if.then19 ], [ 0, %if.end67 ], [ -12, %do.end ], [ 0, %if.then84 ], [ 0, %list_add_tail.exit152 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @target_ua_allocate_lun(ptr noundef %nacl, i32 noundef %unpacked_lun, i8 noundef zeroext %asc, i8 noundef zeroext %ascq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %nacl, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !31) #5
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !41
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #5
  %call.i = tail call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #5
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %conv = zext i32 %unpacked_lun to i64
  %call = tail call ptr @target_nacl_find_deve(ptr noundef nonnull %nacl, i64 noundef %conv) #5
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %rcu_read_lock.exit
  %call.i7 = tail call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i7, label %if.then2.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i10

if.then2.rcu_read_unlock.exit_crit_edge:          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit

land.lhs.true.i10:                                ; preds = %if.then2
  %call1.i8 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i8)
  %tobool.not.i9 = icmp eq i32 %call1.i8, 0
  br i1 %tobool.not.i9, label %land.lhs.true.i10.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i12

land.lhs.true.i10.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i10
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit

land.lhs.true2.i12:                               ; preds = %land.lhs.true.i10
  %.b4.i11 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i11, label %land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge, label %if.then.i13

land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i12
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit

if.then.i13:                                      ; preds = %land.lhs.true2.i12
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #5
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i13, %land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i10.rcu_read_unlock.exit_crit_edge, %if.then2.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !42
  br label %cleanup.sink.split

if.end3:                                          ; preds = %rcu_read_lock.exit
  %call4 = tail call i32 @core_scsi3_ua_allocate(ptr noundef nonnull %call, i8 noundef zeroext %asc, i8 noundef zeroext %ascq)
  %call.i16 = tail call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i16, label %if.end3.rcu_read_unlock.exit26_crit_edge, label %land.lhs.true.i19

if.end3.rcu_read_unlock.exit26_crit_edge:         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit26

land.lhs.true.i19:                                ; preds = %if.end3
  %call1.i17 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17)
  %tobool.not.i18 = icmp eq i32 %call1.i17, 0
  br i1 %tobool.not.i18, label %land.lhs.true.i19.rcu_read_unlock.exit26_crit_edge, label %land.lhs.true2.i21

land.lhs.true.i19.rcu_read_unlock.exit26_crit_edge: ; preds = %land.lhs.true.i19
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit26

land.lhs.true2.i21:                               ; preds = %land.lhs.true.i19
  %.b4.i20 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i20, label %land.lhs.true2.i21.rcu_read_unlock.exit26_crit_edge, label %if.then.i22

land.lhs.true2.i21.rcu_read_unlock.exit26_crit_edge: ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit26

if.then.i22:                                      ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #5
  br label %rcu_read_unlock.exit26

rcu_read_unlock.exit26:                           ; preds = %if.then.i22, %land.lhs.true2.i21.rcu_read_unlock.exit26_crit_edge, %land.lhs.true.i19.rcu_read_unlock.exit26_crit_edge, %if.end3.rcu_read_unlock.exit26_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !42
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %rcu_read_unlock.exit26, %rcu_read_unlock.exit
  %4 = tail call i32 @llvm.read_register.i32(metadata !31) #5
  %and.i.i.i.i.i14 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i14 to ptr
  %preempt_count.i.i.i.i15 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i15, align 4
  %sub.i.i.i25 = add i32 %7, -1
  store volatile i32 %sub.i.i.i25, ptr %preempt_count.i.i.i.i15, align 4
  tail call void @rcu_read_unlock_strict() #5
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @core_scsi3_ua_release_all(ptr noundef %deve) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ua_lock = getelementptr inbounds %struct.se_dev_entry, ptr %deve, i32 0, i32 11
  tail call void @_raw_spin_lock(ptr noundef %ua_lock) #5
  %ua_list = getelementptr inbounds %struct.se_dev_entry, ptr %deve, i32 0, i32 16
  %0 = ptrtoint ptr %ua_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ua_list, align 8
  %cmp.not22 = icmp eq ptr %1, %ua_list
  br i1 %cmp.not22, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in23 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %ua.0 = getelementptr i8, ptr %.pn.in23, i32 -4
  %2 = ptrtoint ptr %.pn.in23 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in23, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in23) #5
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in23, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in23 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in23, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %.pn.in23 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in23, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in23, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @se_ua_cache to i32))
  %11 = load ptr, ptr @se_ua_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %11, ptr noundef %ua.0) #5
  %cmp.not = icmp eq ptr %.pn, %ua_list
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %ua_lock) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @core_scsi3_ua_for_check_condition(ptr nocapture noundef readonly %cmd, ptr nocapture noundef writeonly %key, ptr nocapture noundef %asc, ptr nocapture noundef %ascq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %se_dev = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 19
  %0 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_dev, align 4
  %se_sess = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 21
  %2 = ptrtoint ptr %se_sess to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %se_sess, align 4
  %emulate_ua_intlck_ctrl = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 5
  %4 = ptrtoint ptr %emulate_ua_intlck_ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %emulate_ua_intlck_ctrl, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %land.rhs, label %if.end40

land.rhs:                                         ; preds = %entry
  %.b193 = load i1, ptr @core_scsi3_ua_for_check_condition.__already_done, align 1
  br i1 %.b193, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !45

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @core_scsi3_ua_for_check_condition.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 205, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end40:                                         ; preds = %entry
  %se_node_acl = getelementptr inbounds %struct.se_session, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %se_node_acl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %se_node_acl, align 8
  %tobool42.not = icmp eq ptr %7, null
  br i1 %tobool42.not, label %land.rhs51, label %if.end99

land.rhs51:                                       ; preds = %if.end40
  %.b191192 = load i1, ptr @core_scsi3_ua_for_check_condition.__already_done.5, align 1
  br i1 %.b191192, label %land.rhs51.cleanup_crit_edge, label %if.then62, !prof !45

land.rhs51.cleanup_crit_edge:                     ; preds = %land.rhs51
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then62:                                        ; preds = %land.rhs51
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @core_scsi3_ua_for_check_condition.__already_done.5, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 209, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end99:                                         ; preds = %if.end40
  %8 = tail call i32 @llvm.read_register.i32(metadata !31) #5
  %and.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !41
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #5
  %call.i = tail call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i, label %if.end99.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end99.rcu_read_lock.exit_crit_edge:            ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end99
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #5
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end99.rcu_read_lock.exit_crit_edge
  %orig_fe_lun = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 14
  %12 = ptrtoint ptr %orig_fe_lun to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %orig_fe_lun, align 8
  %call = tail call ptr @target_nacl_find_deve(ptr noundef nonnull %7, i64 noundef %13) #5
  %tobool100.not = icmp eq ptr %call, null
  br i1 %tobool100.not, label %if.then101, label %if.end102

if.then101:                                       ; preds = %rcu_read_lock.exit
  %call.i197 = tail call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i197, label %if.then101.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i200

if.then101.rcu_read_unlock.exit_crit_edge:        ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit

land.lhs.true.i200:                               ; preds = %if.then101
  %call1.i198 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i198)
  %tobool.not.i199 = icmp eq i32 %call1.i198, 0
  br i1 %tobool.not.i199, label %land.lhs.true.i200.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i202

land.lhs.true.i200.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i200
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit

land.lhs.true2.i202:                              ; preds = %land.lhs.true.i200
  %.b4.i201 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i201, label %land.lhs.true2.i202.rcu_read_unlock.exit_crit_edge, label %if.then.i203

land.lhs.true2.i202.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i202
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit

if.then.i203:                                     ; preds = %land.lhs.true2.i202
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #5
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i203, %land.lhs.true2.i202.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i200.rcu_read_unlock.exit_crit_edge, %if.then101.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !42
  %14 = tail call i32 @llvm.read_register.i32(metadata !31) #5
  %and.i.i.i.i.i204 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i204 to ptr
  %preempt_count.i.i.i.i205 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i205 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i205, align 4
  %sub.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i205, align 4
  tail call void @rcu_read_unlock_strict() #5
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #5
  %18 = ptrtoint ptr %key to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 5, ptr %key, align 1
  %19 = ptrtoint ptr %asc to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 37, ptr %asc, align 1
  %20 = ptrtoint ptr %ascq to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %ascq, align 1
  br label %cleanup

if.end102:                                        ; preds = %rcu_read_lock.exit
  %21 = ptrtoint ptr %key to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 6, ptr %key, align 1
  %ua_lock = getelementptr inbounds %struct.se_dev_entry, ptr %call, i32 0, i32 11
  tail call void @_raw_spin_lock(ptr noundef %ua_lock) #5
  %ua_list = getelementptr inbounds %struct.se_dev_entry, ptr %call, i32 0, i32 16
  %22 = ptrtoint ptr %ua_list to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ua_list, align 8
  %cmp110.not224 = icmp eq ptr %23, %ua_list
  br i1 %cmp110.not224, label %if.end102.for.end_crit_edge, label %if.end102.for.body_crit_edge

if.end102.for.body_crit_edge:                     ; preds = %if.end102
  br label %for.body

if.end102.for.end_crit_edge:                      ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %if.end102.for.body_crit_edge
  %.pn.in226 = phi ptr [ %.pn229, %list_del.exit.for.body_crit_edge ], [ %23, %if.end102.for.body_crit_edge ]
  %cmp149225 = phi i1 [ true, %list_del.exit.for.body_crit_edge ], [ false, %if.end102.for.body_crit_edge ]
  %ua.0228 = getelementptr i8, ptr %.pn.in226, i32 -4
  %24 = ptrtoint ptr %.pn.in226 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn229 = load ptr, ptr %.pn.in226, align 4
  br i1 %cmp, label %if.end115, label %if.then114

if.then114:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %ua.0228 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ua.0228, align 4
  %27 = ptrtoint ptr %asc to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %asc, align 1
  %ua_ascq = getelementptr i8, ptr %23, i32 -3
  %28 = ptrtoint ptr %ua_ascq to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ua_ascq, align 1
  %30 = ptrtoint ptr %ascq to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %ascq, align 1
  br label %for.end

if.end115:                                        ; preds = %for.body
  br i1 %cmp149225, label %if.end115.if.end120_crit_edge, label %if.then117

if.end115.if.end120_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end120

if.then117:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %ua.0228 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %ua.0228, align 4
  %33 = ptrtoint ptr %asc to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %asc, align 1
  %ua_ascq119 = getelementptr i8, ptr %.pn.in226, i32 -3
  %34 = ptrtoint ptr %ua_ascq119 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %ua_ascq119, align 1
  %36 = ptrtoint ptr %ascq to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %ascq, align 1
  br label %if.end120

if.end120:                                        ; preds = %if.then117, %if.end115.if.end120_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in226) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.end120.list_del.exit_crit_edge

if.end120.list_del.exit_crit_edge:                ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in226, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i, align 4
  %39 = ptrtoint ptr %.pn.in226 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %.pn.in226, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev1.i.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %40, ptr %38, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end120.list_del.exit_crit_edge
  %43 = ptrtoint ptr %.pn.in226 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in226, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in226, i32 0, i32 1
  %44 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @se_ua_cache to i32))
  %45 = load ptr, ptr @se_ua_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %45, ptr noundef %ua.0228) #5
  %cmp110.not = icmp eq ptr %.pn229, %ua_list
  br i1 %cmp110.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %if.then114, %if.end102.for.end_crit_edge
  %cmp149221 = phi i1 [ false, %if.then114 ], [ false, %if.end102.for.end_crit_edge ], [ true, %list_del.exit.for.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %ua_lock) #5
  %call.i206 = tail call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i206, label %for.end.rcu_read_unlock.exit216_crit_edge, label %land.lhs.true.i209

for.end.rcu_read_unlock.exit216_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit216

land.lhs.true.i209:                               ; preds = %for.end
  %call1.i207 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i207)
  %tobool.not.i208 = icmp eq i32 %call1.i207, 0
  br i1 %tobool.not.i208, label %land.lhs.true.i209.rcu_read_unlock.exit216_crit_edge, label %land.lhs.true2.i211

land.lhs.true.i209.rcu_read_unlock.exit216_crit_edge: ; preds = %land.lhs.true.i209
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit216

land.lhs.true2.i211:                              ; preds = %land.lhs.true.i209
  %.b4.i210 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i210, label %land.lhs.true2.i211.rcu_read_unlock.exit216_crit_edge, label %if.then.i212

land.lhs.true2.i211.rcu_read_unlock.exit216_crit_edge: ; preds = %land.lhs.true2.i211
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit216

if.then.i212:                                     ; preds = %land.lhs.true2.i211
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #5
  br label %rcu_read_unlock.exit216

rcu_read_unlock.exit216:                          ; preds = %if.then.i212, %land.lhs.true2.i211.rcu_read_unlock.exit216_crit_edge, %land.lhs.true.i209.rcu_read_unlock.exit216_crit_edge, %for.end.rcu_read_unlock.exit216_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !42
  %46 = tail call i32 @llvm.read_register.i32(metadata !31) #5
  %and.i.i.i.i.i213 = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i.i.i213 to ptr
  %preempt_count.i.i.i.i214 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i.i.i.i214 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i.i.i.i214, align 4
  %sub.i.i.i215 = add i32 %49, -1
  store volatile i32 %sub.i.i.i215, ptr %preempt_count.i.i.i.i214, align 4
  tail call void @rcu_read_unlock_strict() #5
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @core_scsi3_ua_for_check_condition.__UNIQUE_ID_ddebug159, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@core_scsi3_ua_for_check_condition, %if.then139)) #5
          to label %cleanup [label %if.then139], !srcloc !44

if.then139:                                       ; preds = %rcu_read_unlock.exit216
  call void @__sanitizer_cov_trace_pc() #7
  %se_tpg = getelementptr inbounds %struct.se_node_acl, ptr %7, i32 0, i32 10
  %50 = ptrtoint ptr %se_tpg to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %se_tpg, align 4
  %se_tpg_tfo = getelementptr inbounds %struct.se_portal_group, ptr %51, i32 0, i32 10
  %52 = ptrtoint ptr %se_tpg_tfo to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %se_tpg_tfo, align 4
  %fabric_name = getelementptr inbounds %struct.target_core_fabric_ops, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %fabric_name to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %fabric_name, align 4
  %cond = select i1 %cmp, ptr @.str.8, ptr @.str.9
  %56 = ptrtoint ptr %emulate_ua_intlck_ctrl to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %emulate_ua_intlck_ctrl, align 8
  %58 = ptrtoint ptr %orig_fe_lun to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %orig_fe_lun, align 8
  %t_task_cdb = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 30
  %60 = ptrtoint ptr %t_task_cdb to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %t_task_cdb, align 8
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %61, align 1
  %conv = zext i8 %63 to i32
  %64 = ptrtoint ptr %asc to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %asc, align 1
  %conv144 = zext i8 %65 to i32
  %66 = ptrtoint ptr %ascq to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %ascq, align 1
  %conv145 = zext i8 %67 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @core_scsi3_ua_for_check_condition.__UNIQUE_ID_ddebug159, ptr noundef nonnull @.str.7, ptr noundef %55, ptr noundef nonnull %cond, i32 noundef %57, i64 noundef %59, i32 noundef %conv, i32 noundef %conv144, i32 noundef %conv145) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then139, %rcu_read_unlock.exit216, %rcu_read_unlock.exit, %if.then62, %land.rhs51.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %rcu_read_unlock.exit ], [ false, %if.then ], [ false, %if.then62 ], [ %cmp149221, %if.then139 ], [ false, %land.rhs.cleanup_crit_edge ], [ false, %land.rhs51.cleanup_crit_edge ], [ %cmp149221, %rcu_read_unlock.exit216 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @core_scsi3_ua_clear_for_request_sense(ptr nocapture noundef readonly %cmd, ptr nocapture noundef %asc, ptr nocapture noundef %ascq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %se_sess = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 21
  %0 = ptrtoint ptr %se_sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_sess, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %se_node_acl = getelementptr inbounds %struct.se_session, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %se_node_acl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %se_node_acl, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %4 = tail call i32 @llvm.read_register.i32(metadata !31) #5
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !41
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #5
  %call.i = tail call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i, label %if.end3.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end3.rcu_read_lock.exit_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end3
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #5
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end3.rcu_read_lock.exit_crit_edge
  %orig_fe_lun = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 14
  %8 = ptrtoint ptr %orig_fe_lun to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %orig_fe_lun, align 8
  %call = tail call ptr @target_nacl_find_deve(ptr noundef nonnull %3, i64 noundef %9) #5
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %rcu_read_lock.exit
  %call.i65 = tail call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i65, label %if.then5.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i68

if.then5.rcu_read_unlock.exit_crit_edge:          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit

land.lhs.true.i68:                                ; preds = %if.then5
  %call1.i66 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i66)
  %tobool.not.i67 = icmp eq i32 %call1.i66, 0
  br i1 %tobool.not.i67, label %land.lhs.true.i68.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i70

land.lhs.true.i68.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i68
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit

land.lhs.true2.i70:                               ; preds = %land.lhs.true.i68
  %.b4.i69 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i69, label %land.lhs.true2.i70.rcu_read_unlock.exit_crit_edge, label %if.then.i71

land.lhs.true2.i70.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i70
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit

if.then.i71:                                      ; preds = %land.lhs.true2.i70
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #5
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i71, %land.lhs.true2.i70.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i68.rcu_read_unlock.exit_crit_edge, %if.then5.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !42
  %10 = tail call i32 @llvm.read_register.i32(metadata !31) #5
  %and.i.i.i.i.i72 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i72 to ptr
  %preempt_count.i.i.i.i73 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i73 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i73, align 4
  %sub.i.i.i = add i32 %13, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i73, align 4
  tail call void @rcu_read_unlock_strict() #5
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #5
  br label %cleanup

if.end6:                                          ; preds = %rcu_read_lock.exit
  %ua_list = getelementptr inbounds %struct.se_dev_entry, ptr %call, i32 0, i32 16
  %14 = ptrtoint ptr %ua_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %ua_list, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !43
  %cmp.i.not.i = icmp eq ptr %15, %ua_list
  br i1 %cmp.i.not.i, label %list_empty_careful.exit, label %if.end6.if.end10_crit_edge

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

list_empty_careful.exit:                          ; preds = %if.end6
  %prev.i = getelementptr inbounds %struct.se_dev_entry, ptr %call, i32 0, i32 16, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i, align 4
  %cmp.i.not = icmp eq ptr %17, %ua_list
  br i1 %cmp.i.not, label %if.then9, label %list_empty_careful.exit.if.end10_crit_edge

list_empty_careful.exit.if.end10_crit_edge:       ; preds = %list_empty_careful.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then9:                                         ; preds = %list_empty_careful.exit
  %call.i74 = tail call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i74, label %if.then9.rcu_read_unlock.exit84_crit_edge, label %land.lhs.true.i77

if.then9.rcu_read_unlock.exit84_crit_edge:        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit84

land.lhs.true.i77:                                ; preds = %if.then9
  %call1.i75 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i75)
  %tobool.not.i76 = icmp eq i32 %call1.i75, 0
  br i1 %tobool.not.i76, label %land.lhs.true.i77.rcu_read_unlock.exit84_crit_edge, label %land.lhs.true2.i79

land.lhs.true.i77.rcu_read_unlock.exit84_crit_edge: ; preds = %land.lhs.true.i77
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit84

land.lhs.true2.i79:                               ; preds = %land.lhs.true.i77
  %.b4.i78 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i78, label %land.lhs.true2.i79.rcu_read_unlock.exit84_crit_edge, label %if.then.i80

land.lhs.true2.i79.rcu_read_unlock.exit84_crit_edge: ; preds = %land.lhs.true2.i79
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit84

if.then.i80:                                      ; preds = %land.lhs.true2.i79
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #5
  br label %rcu_read_unlock.exit84

rcu_read_unlock.exit84:                           ; preds = %if.then.i80, %land.lhs.true2.i79.rcu_read_unlock.exit84_crit_edge, %land.lhs.true.i77.rcu_read_unlock.exit84_crit_edge, %if.then9.rcu_read_unlock.exit84_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !42
  %18 = tail call i32 @llvm.read_register.i32(metadata !31) #5
  %and.i.i.i.i.i81 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i81 to ptr
  %preempt_count.i.i.i.i82 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i82, align 4
  %sub.i.i.i83 = add i32 %21, -1
  store volatile i32 %sub.i.i.i83, ptr %preempt_count.i.i.i.i82, align 4
  tail call void @rcu_read_unlock_strict() #5
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #5
  br label %cleanup

if.end10:                                         ; preds = %list_empty_careful.exit.if.end10_crit_edge, %if.end6.if.end10_crit_edge
  %ua_lock = getelementptr inbounds %struct.se_dev_entry, ptr %call, i32 0, i32 11
  tail call void @_raw_spin_lock(ptr noundef %ua_lock) #5
  %22 = ptrtoint ptr %ua_list to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ua_list, align 8
  %cmp.not101 = icmp eq ptr %23, %ua_list
  br i1 %cmp.not101, label %if.end10.for.end_crit_edge, label %if.end20.peel

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end20.peel:                                    ; preds = %if.end10
  %ua.0105.peel = getelementptr i8, ptr %23, i32 -4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn106.peel = load ptr, ptr %23, align 4
  %25 = ptrtoint ptr %ua.0105.peel to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ua.0105.peel, align 4
  %27 = ptrtoint ptr %asc to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %asc, align 1
  %ua_ascq.peel = getelementptr i8, ptr %23, i32 -3
  %28 = ptrtoint ptr %ua_ascq.peel to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ua_ascq.peel, align 1
  %30 = ptrtoint ptr %ascq to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %ascq, align 1
  %call.i.i.peel = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %23) #5
  br i1 %call.i.i.peel, label %if.end.i.i.peel, label %if.end20.peel.list_del.exit.peel_crit_edge

if.end20.peel.list_del.exit.peel_crit_edge:       ; preds = %if.end20.peel
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit.peel

if.end.i.i.peel:                                  ; preds = %if.end20.peel
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.peel = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i.peel to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i.peel, align 4
  %33 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %23, align 4
  %prev1.i.i.i.peel = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i.i.peel to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev1.i.i.i.peel, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %32, align 4
  br label %list_del.exit.peel

list_del.exit.peel:                               ; preds = %if.end.i.i.peel, %if.end20.peel.list_del.exit.peel_crit_edge
  %37 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 256 to ptr), ptr %23, align 4
  %prev.i85.peel = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i85.peel to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i85.peel, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @se_ua_cache to i32))
  %39 = load ptr, ptr @se_ua_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %39, ptr noundef %ua.0105.peel) #5
  %cmp.not.peel = icmp eq ptr %.pn106.peel, %ua_list
  br i1 %cmp.not.peel, label %list_del.exit.peel.for.end_crit_edge, label %list_del.exit.peel.if.end20_crit_edge

list_del.exit.peel.if.end20_crit_edge:            ; preds = %list_del.exit.peel
  br label %if.end20

list_del.exit.peel.for.end_crit_edge:             ; preds = %list_del.exit.peel
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end20:                                         ; preds = %list_del.exit.if.end20_crit_edge, %list_del.exit.peel.if.end20_crit_edge
  %.pn.in103 = phi ptr [ %.pn106, %list_del.exit.if.end20_crit_edge ], [ %.pn106.peel, %list_del.exit.peel.if.end20_crit_edge ]
  %ua.0105 = getelementptr i8, ptr %.pn.in103, i32 -4
  %40 = ptrtoint ptr %.pn.in103 to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pn106 = load ptr, ptr %.pn.in103, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in103) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.end20.list_del.exit_crit_edge

if.end20.list_del.exit_crit_edge:                 ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in103, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i.i, align 4
  %43 = ptrtoint ptr %.pn.in103 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %.pn.in103, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev1.i.i.i, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %44, ptr %42, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end20.list_del.exit_crit_edge
  %47 = ptrtoint ptr %.pn.in103 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in103, align 4
  %prev.i85 = getelementptr inbounds %struct.list_head, ptr %.pn.in103, i32 0, i32 1
  %48 = ptrtoint ptr %prev.i85 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i85, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @se_ua_cache to i32))
  %49 = load ptr, ptr @se_ua_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %49, ptr noundef %ua.0105) #5
  %cmp.not = icmp eq ptr %.pn106, %ua_list
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.if.end20_crit_edge, !llvm.loop !46

list_del.exit.if.end20_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %list_del.exit.peel.for.end_crit_edge, %if.end10.for.end_crit_edge
  %tobool38.not.lcssa = phi i32 [ -1, %if.end10.for.end_crit_edge ], [ 0, %list_del.exit.peel.for.end_crit_edge ], [ 0, %list_del.exit.for.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %ua_lock) #5
  %call.i86 = tail call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i86, label %for.end.rcu_read_unlock.exit96_crit_edge, label %land.lhs.true.i89

for.end.rcu_read_unlock.exit96_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit96

land.lhs.true.i89:                                ; preds = %for.end
  %call1.i87 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i87)
  %tobool.not.i88 = icmp eq i32 %call1.i87, 0
  br i1 %tobool.not.i88, label %land.lhs.true.i89.rcu_read_unlock.exit96_crit_edge, label %land.lhs.true2.i91

land.lhs.true.i89.rcu_read_unlock.exit96_crit_edge: ; preds = %land.lhs.true.i89
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit96

land.lhs.true2.i91:                               ; preds = %land.lhs.true.i89
  %.b4.i90 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i90, label %land.lhs.true2.i91.rcu_read_unlock.exit96_crit_edge, label %if.then.i92

land.lhs.true2.i91.rcu_read_unlock.exit96_crit_edge: ; preds = %land.lhs.true2.i91
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit96

if.then.i92:                                      ; preds = %land.lhs.true2.i91
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #5
  br label %rcu_read_unlock.exit96

rcu_read_unlock.exit96:                           ; preds = %if.then.i92, %land.lhs.true2.i91.rcu_read_unlock.exit96_crit_edge, %land.lhs.true.i89.rcu_read_unlock.exit96_crit_edge, %for.end.rcu_read_unlock.exit96_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !42
  %50 = tail call i32 @llvm.read_register.i32(metadata !31) #5
  %and.i.i.i.i.i93 = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i.i.i93 to ptr
  %preempt_count.i.i.i.i94 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %preempt_count.i.i.i.i94 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %preempt_count.i.i.i.i94, align 4
  %sub.i.i.i95 = add i32 %53, -1
  store volatile i32 %sub.i.i.i95, ptr %preempt_count.i.i.i.i94, align 4
  tail call void @rcu_read_unlock_strict() #5
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @core_scsi3_ua_clear_for_request_sense.__UNIQUE_ID_ddebug160, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@core_scsi3_ua_clear_for_request_sense, %if.then34)) #5
          to label %cleanup [label %if.then34], !srcloc !44

if.then34:                                        ; preds = %rcu_read_unlock.exit96
  call void @__sanitizer_cov_trace_pc() #7
  %se_tpg = getelementptr inbounds %struct.se_node_acl, ptr %3, i32 0, i32 10
  %54 = ptrtoint ptr %se_tpg to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %se_tpg, align 4
  %se_tpg_tfo = getelementptr inbounds %struct.se_portal_group, ptr %55, i32 0, i32 10
  %56 = ptrtoint ptr %se_tpg_tfo to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %se_tpg_tfo, align 4
  %fabric_name = getelementptr inbounds %struct.target_core_fabric_ops, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %fabric_name to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %fabric_name, align 4
  %60 = ptrtoint ptr %orig_fe_lun to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %orig_fe_lun, align 8
  %62 = ptrtoint ptr %asc to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %asc, align 1
  %conv = zext i8 %63 to i32
  %64 = ptrtoint ptr %ascq to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %ascq, align 1
  %conv36 = zext i8 %65 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @core_scsi3_ua_clear_for_request_sense.__UNIQUE_ID_ddebug160, ptr noundef nonnull @.str.11, ptr noundef %59, i64 noundef %61, i32 noundef %conv, i32 noundef %conv36) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %rcu_read_unlock.exit96, %rcu_read_unlock.exit84, %rcu_read_unlock.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %rcu_read_unlock.exit84 ], [ -22, %rcu_read_unlock.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %tobool38.not.lcssa, %if.then34 ], [ %tobool38.not.lcssa, %rcu_read_unlock.exit96 ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !16, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30}
!llvm.named.register.sp = !{!31}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/target/target_core_ua.c", i32 84, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @core_scsi3_ua_allocate._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @core_scsi3_ua_allocate._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/target/target_core_ua.c", i32 149, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @core_scsi3_ua_allocate.__UNIQUE_ID_ddebug158, !7, !"__UNIQUE_ID_ddebug158", i1 false, i1 false}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../drivers/target/target_core_ua.c", i32 205, i32 6}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../drivers/target/target_core_ua.c", i32 209, i32 6}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/target/target_core_ua.c", i32 255, i32 2}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @core_scsi3_ua_for_check_condition.__UNIQUE_ID_ddebug159, !15, !"__UNIQUE_ID_ddebug159", i1 false, i1 false}
!18 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/target/target_core_ua.c", i32 317, i32 2}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @core_scsi3_ua_clear_for_request_sense.__UNIQUE_ID_ddebug160, !21, !"__UNIQUE_ID_ddebug160", i1 false, i1 false}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!26 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!30 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!31 = !{!"sp"}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{i64 2149923938}
!42 = !{i64 2149924204}
!43 = !{i64 2148365065}
!44 = !{i64 2148207793, i64 2148207798, i64 2148207811, i64 2148207855, i64 2148207889, i64 2148207910}
!45 = !{!"branch_weights", i32 2000, i32 1}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.peeled.count", i32 1}
