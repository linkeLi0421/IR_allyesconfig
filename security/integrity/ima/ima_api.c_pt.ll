; ModuleID = '/llk/IR_all_yes/security/integrity/ima/ima_api.c_pt.bc'
source_filename = "../security/integrity/ima/ima_api.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ima_h_table = type { %struct.atomic_t, %struct.atomic_t, [1024 x %struct.hlist_head] }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.ima_template_entry = type { i32, ptr, ptr, i32, [0 x %struct.ima_field_data] }
%struct.ima_field_data = type { ptr, i32 }
%struct.ima_template_desc = type { %struct.list_head, ptr, ptr, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.tpm_chip = type { %struct.device, %struct.device, %struct.cdev, %struct.cdev, %struct.rw_semaphore, ptr, %struct.tpm_bios_log, %struct.tpm_chip_seqops, %struct.tpm_chip_seqops, i32, i32, i32, [64 x i8], %struct.hwrng, %struct.mutex, i32, i32, i32, i32, i8, [4 x i32], i8, [3 x ptr], [8 x ptr], i32, i32, ptr, %struct.tpm_space, i32, i32, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tpm_bios_log = type { ptr, ptr }
%struct.tpm_chip_seqops = type { ptr, ptr }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tpm_space = type { [3 x i32], ptr, [3 x i32], ptr, i32 }
%struct.ima_template_field = type { [16 x i8], ptr, ptr }
%struct.ima_event_data = type { ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32 }
%struct.file = type { %union.anon.19, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.19 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.anon.78 = type { %struct.ima_digest_data, [64 x i8] }
%struct.ima_digest_data = type { i8, i8, %union.anon.75, [0 x i8] }
%union.anon.75 = type { %struct.anon.76 }
%struct.anon.76 = type { i8, i8 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.69, %struct.list_head, %struct.list_head, %union.anon.70 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.spinlock, i32 }
%union.anon.69 = type { %struct.list_head }
%union.anon.70 = type { %struct.hlist_node }
%struct.integrity_iint_cache = type { %struct.rb_node, %struct.mutex, ptr, i64, i32, i32, i32, i24, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.71 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.72 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.74 = type { ptr }

@ima_tpm_chip = external dso_local local_unnamed_addr global ptr, align 4
@ima_extra_slots = external dso_local local_unnamed_addr global i32, section ".data..ro_after_init", align 4
@ima_store_template.op = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"add_template_measure\00", [43 x i8] zeroinitializer }, align 32
@ima_store_template.audit_cause = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hashing_error\00", [18 x i8] zeroinitializer }, align 32
@ima_htable = external dso_local global %struct.ima_h_table, align 4
@ima_policy_flag = external dso_local local_unnamed_addr global i32, align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"failed\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"failed(directio)\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"collect_data\00", [19 x i8] zeroinitializer }, align 32
@ima_store_measurement.op = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"add_template_measure\00", [43 x i8] zeroinitializer }, align 32
@ima_store_measurement.audit_cause = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ENOMEM\00", [25 x i8] zeroinitializer }, align 32
@hash_algo_name = external dso_local local_unnamed_addr constant [20 x ptr], align 4
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"file=\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c" hash=\22%s:%s\22\00", [18 x i8] zeroinitializer }, align 32
@names_cachep = external dso_local local_unnamed_addr global ptr, align 4
@hex_asc = external dso_local local_unnamed_addr constant [0 x i8], align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967274, i64 4294967287]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967279]
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 106, i32 20 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 107, i32 20 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 217, i32 28 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 276, i32 18 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 279, i32 19 }
@___asan_gen_.21 = private unnamed_addr constant [3 x i8] c"op\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 306, i32 20 }
@___asan_gen_.24 = private unnamed_addr constant [12 x i8] c"audit_cause\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 307, i32 20 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 368, i32 23 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private constant [36 x i8] c"../security/integrity/ima/ima_api.c\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 370, i32 23 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @ima_store_template.op, ptr @ima_store_template.audit_cause, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @ima_store_measurement.op, ptr @ima_store_measurement.audit_cause, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_store_template.op to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_store_template.audit_cause to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_store_measurement.op to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_store_measurement.audit_cause to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ima_free_template_entry(ptr noundef %entry1) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %template_desc = getelementptr inbounds %struct.ima_template_entry, ptr %entry1, i32 0, i32 2
  %0 = ptrtoint ptr %template_desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %template_desc, align 4
  %num_fields7 = getelementptr inbounds %struct.ima_template_desc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %num_fields7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_fields7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp8 = icmp sgt i32 %3, 0
  br i1 %cmp8, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.09 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ima_template_entry, ptr %entry1, i32 0, i32 4, i32 %i.09
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %5) #7
  %inc = add nuw nsw i32 %i.09, 1
  %6 = ptrtoint ptr %template_desc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %template_desc, align 4
  %num_fields = getelementptr inbounds %struct.ima_template_desc, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %num_fields to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_fields, align 4
  %cmp = icmp slt i32 %inc, %9
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %digests = getelementptr inbounds %struct.ima_template_entry, ptr %entry1, i32 0, i32 1
  %10 = ptrtoint ptr %digests to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %digests, align 4
  tail call void @kfree(ptr noundef %11) #7
  tail call void @kfree(ptr noundef %entry1) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ima_alloc_init_template(ptr noundef %event_data, ptr nocapture noundef %entry1, ptr noundef %desc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %desc, null
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call ptr @ima_template_desc_current() #7
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %template_desc.0 = phi ptr [ %call, %if.else ], [ %desc, %entry.if.end_crit_edge ]
  %num_fields = getelementptr inbounds %struct.ima_template_desc, ptr %template_desc.0, i32 0, i32 3
  %0 = ptrtoint ptr %num_fields to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_fields, align 4
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 8) #7
  %3 = extractvalue { i32, i1 } %2, 1
  %4 = extractvalue { i32, i1 } %2, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %4, i32 16) #7
  %retval.0.i = select i1 %3, i32 -1, i32 %spec.select.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3392) #10
  %5 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call9.i.i, ptr %entry1, align 4
  %tobool4.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool4.not, label %if.end.cleanup27_crit_edge, label %if.end6

if.end.cleanup27_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup27

if.end6:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_tpm_chip to i32))
  %6 = load ptr, ptr @ima_tpm_chip, align 4
  %cmp.not = icmp eq ptr %6, null
  br i1 %cmp.not, label %if.end6.cond.end_crit_edge, label %cond.true

if.end6.cond.end_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %nr_allocated_banks = getelementptr inbounds %struct.tpm_chip, ptr %6, i32 0, i32 25
  %7 = ptrtoint ptr %nr_allocated_banks to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr_allocated_banks, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end6.cond.end_crit_edge
  %cond = phi i32 [ %8, %cond.true ], [ 0, %if.end6.cond.end_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_extra_slots to i32))
  %9 = load i32, ptr @ima_extra_slots, align 4
  %add = add i32 %9, %cond
  %10 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 66) #7
  %11 = extractvalue { i32, i1 } %10, 1
  br i1 %11, label %cond.end.if.then9_crit_edge, label %if.end7.i.i, !prof !27

cond.end.if.then9_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9

if.end7.i.i:                                      ; preds = %cond.end
  %12 = extractvalue { i32, i1 } %10, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %12, i32 noundef 3392) #10
  %tobool8.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool8.not, label %if.end7.i.i.if.then9_crit_edge, label %if.end10

if.end7.i.i.if.then9_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9

if.then9:                                         ; preds = %if.end7.i.i.if.then9_crit_edge, %cond.end.if.then9_crit_edge
  %13 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %entry1, align 4
  br label %cleanup27.sink.split

if.end10:                                         ; preds = %if.end7.i.i
  %15 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %entry1, align 4
  %digests11 = getelementptr inbounds %struct.ima_template_entry, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %digests11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call8.i.i, ptr %digests11, align 4
  %18 = load ptr, ptr %entry1, align 4
  %template_desc12 = getelementptr inbounds %struct.ima_template_entry, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %template_desc12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %template_desc.0, ptr %template_desc12, align 4
  %20 = ptrtoint ptr %num_fields to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_fields, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp1462 = icmp sgt i32 %21, 0
  br i1 %cmp1462, label %for.body.lr.ph, label %if.end10.cleanup27_crit_edge

if.end10.cleanup27_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup27

for.body.lr.ph:                                   ; preds = %if.end10
  %fields = getelementptr inbounds %struct.ima_template_desc, ptr %template_desc.0, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.063 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %22 = ptrtoint ptr %fields to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fields, align 4
  %arrayidx = getelementptr ptr, ptr %23, i32 %i.063
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  %field_init = getelementptr inbounds %struct.ima_template_field, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %field_init to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %field_init, align 4
  %28 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %entry1, align 4
  %arrayidx15 = getelementptr %struct.ima_template_entry, ptr %29, i32 0, i32 4, i32 %i.063
  %call16 = tail call i32 %27(ptr noundef %event_data, ptr noundef %arrayidx15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17.not = icmp eq i32 %call16, 0
  %30 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %entry1, align 4
  br i1 %cmp17.not, label %for.inc, label %out

for.inc:                                          ; preds = %for.body
  %len22 = getelementptr %struct.ima_template_entry, ptr %31, i32 0, i32 4, i32 %i.063, i32 1
  %32 = ptrtoint ptr %len22 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len22, align 4
  %template_data_len = getelementptr inbounds %struct.ima_template_entry, ptr %31, i32 0, i32 3
  %34 = ptrtoint ptr %template_data_len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %template_data_len, align 4
  %add23 = add i32 %35, 4
  store i32 %add23, ptr %template_data_len, align 4
  %36 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %entry1, align 4
  %template_data_len24 = getelementptr inbounds %struct.ima_template_entry, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %template_data_len24 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %template_data_len24, align 4
  %add25 = add i32 %39, %33
  store i32 %add25, ptr %template_data_len24, align 4
  %inc = add nuw nsw i32 %i.063, 1
  %40 = ptrtoint ptr %num_fields to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_fields, align 4
  %cmp14 = icmp slt i32 %inc, %41
  br i1 %cmp14, label %for.inc.for.body_crit_edge, label %for.inc.cleanup27_crit_edge

for.inc.cleanup27_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup27

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

out:                                              ; preds = %for.body
  %template_desc.i = getelementptr inbounds %struct.ima_template_entry, ptr %31, i32 0, i32 2
  %42 = ptrtoint ptr %template_desc.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %template_desc.i, align 4
  %num_fields7.i = getelementptr inbounds %struct.ima_template_desc, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %num_fields7.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_fields7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp8.i = icmp sgt i32 %45, 0
  br i1 %cmp8.i, label %out.for.body.i_crit_edge, label %out.ima_free_template_entry.exit_crit_edge

out.ima_free_template_entry.exit_crit_edge:       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %ima_free_template_entry.exit

out.for.body.i_crit_edge:                         ; preds = %out
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %out.for.body.i_crit_edge
  %i.09.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %out.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ima_template_entry, ptr %31, i32 0, i32 4, i32 %i.09.i
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i, align 4
  tail call void @kfree(ptr noundef %47) #7
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %48 = ptrtoint ptr %template_desc.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %template_desc.i, align 4
  %num_fields.i = getelementptr inbounds %struct.ima_template_desc, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %num_fields.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_fields.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %51
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.ima_free_template_entry.exit_crit_edge

for.body.i.ima_free_template_entry.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ima_free_template_entry.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

ima_free_template_entry.exit:                     ; preds = %for.body.i.ima_free_template_entry.exit_crit_edge, %out.ima_free_template_entry.exit_crit_edge
  %digests.i = getelementptr inbounds %struct.ima_template_entry, ptr %31, i32 0, i32 1
  %52 = ptrtoint ptr %digests.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %digests.i, align 4
  tail call void @kfree(ptr noundef %53) #7
  br label %cleanup27.sink.split

cleanup27.sink.split:                             ; preds = %ima_free_template_entry.exit, %if.then9
  %.sink = phi ptr [ %31, %ima_free_template_entry.exit ], [ %14, %if.then9 ]
  %retval.0.ph = phi i32 [ %call16, %ima_free_template_entry.exit ], [ -12, %if.then9 ]
  tail call void @kfree(ptr noundef %.sink) #7
  %54 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %entry1, align 4
  br label %cleanup27

cleanup27:                                        ; preds = %cleanup27.sink.split, %for.inc.cleanup27_crit_edge, %if.end10.cleanup27_crit_edge, %if.end.cleanup27_crit_edge
  %retval.0 = phi i32 [ -12, %if.end.cleanup27_crit_edge ], [ 0, %if.end10.cleanup27_crit_edge ], [ %retval.0.ph, %cleanup27.sink.split ], [ 0, %for.inc.cleanup27_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ima_template_desc_current() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ima_store_template(ptr noundef %entry1, i32 noundef %violation, ptr noundef %inode, ptr noundef %filename, i32 noundef %pcr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %template_desc = getelementptr inbounds %struct.ima_template_entry, ptr %entry1, i32 0, i32 2
  %0 = ptrtoint ptr %template_desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %template_desc, align 4
  %name = getelementptr inbounds %struct.ima_template_desc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %violation)
  %tobool.not = icmp eq i32 %violation, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then:                                          ; preds = %entry
  %template_data = getelementptr inbounds %struct.ima_template_entry, ptr %entry1, i32 0, i32 4
  %call = tail call i32 @ima_calc_field_array_hash(ptr noundef %template_data, ptr noundef %entry1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then2, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @integrity_audit_msg(i32 noundef 1804, ptr noundef %inode, ptr noundef %3, ptr noundef nonnull @ima_store_template.op, ptr noundef nonnull @ima_store_template.audit_cause, i32 noundef %call, i32 noundef 0) #7
  br label %cleanup

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %4 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %pcr, ptr %entry1, align 4
  %call5 = tail call i32 @ima_add_template_entry(ptr noundef %entry1, i32 noundef %violation, ptr noundef nonnull @ima_store_template.op, ptr noundef %inode, ptr noundef %filename) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2
  %retval.0 = phi i32 [ %call5, %if.end3 ], [ %call, %if.then2 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_calc_field_array_hash(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @integrity_audit_msg(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_add_template_entry(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ima_add_violation(ptr noundef %file, ptr noundef %filename, ptr noundef %iint, ptr noundef %op, ptr noundef %cause) local_unnamed_addr #0 align 64 {
entry:
  %entry1 = alloca ptr, align 4
  %event_data = alloca %struct.ima_event_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %entry1) #7
  %0 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %entry1, align 4, !annotation !28
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %1 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %f_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %event_data) #7
  %3 = ptrtoint ptr %event_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %iint, ptr %event_data, align 4
  %file3 = getelementptr inbounds %struct.ima_event_data, ptr %event_data, i32 0, i32 1
  %4 = ptrtoint ptr %file3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %file, ptr %file3, align 4
  %filename4 = getelementptr inbounds %struct.ima_event_data, ptr %event_data, i32 0, i32 2
  %5 = ptrtoint ptr %filename4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %filename, ptr %filename4, align 4
  %xattr_value = getelementptr inbounds %struct.ima_event_data, ptr %event_data, i32 0, i32 3
  %6 = ptrtoint ptr %xattr_value to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %xattr_value, align 4
  %xattr_len = getelementptr inbounds %struct.ima_event_data, ptr %event_data, i32 0, i32 4
  %7 = ptrtoint ptr %xattr_len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %xattr_len, align 4
  %modsig = getelementptr inbounds %struct.ima_event_data, ptr %event_data, i32 0, i32 5
  %8 = ptrtoint ptr %modsig to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %modsig, align 4
  %violation = getelementptr inbounds %struct.ima_event_data, ptr %event_data, i32 0, i32 6
  %9 = ptrtoint ptr %violation to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %cause, ptr %violation, align 4
  %buf = getelementptr inbounds %struct.ima_event_data, ptr %event_data, i32 0, i32 7
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %buf, align 4
  %buf_len = getelementptr inbounds %struct.ima_event_data, ptr %event_data, i32 0, i32 8
  %11 = ptrtoint ptr %buf_len to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %buf_len, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.ima_h_table, ptr @ima_htable, i32 0, i32 1), i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds (%struct.ima_h_table, ptr @ima_htable, i32 0, i32 1), i32 1, i32 3, i32 1) #7
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.ima_h_table, ptr @ima_htable, i32 0, i32 1), ptr getelementptr inbounds (%struct.ima_h_table, ptr @ima_htable, i32 0, i32 1), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.ima_h_table, ptr @ima_htable, i32 0, i32 1)) #7, !srcloc !29
  %call6 = call i32 @ima_alloc_init_template(ptr noundef nonnull %event_data, ptr noundef nonnull %entry1, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %entry.err_out_crit_edge, label %if.end

entry.err_out_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out

if.end:                                           ; preds = %entry
  %13 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %entry1, align 4
  %template_desc.i = getelementptr inbounds %struct.ima_template_entry, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 10, ptr %14, align 4
  %call5.i = call i32 @ima_add_template_entry(ptr noundef %14, i32 noundef 1, ptr noundef nonnull @ima_store_template.op, ptr noundef %2, ptr noundef %filename) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp8 = icmp slt i32 %call5.i, 0
  br i1 %cmp8, label %if.then9, label %if.end.err_out_crit_edge

if.end.err_out_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out

if.then9:                                         ; preds = %if.end
  %16 = ptrtoint ptr %template_desc.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %template_desc.i, align 4
  %num_fields7.i = getelementptr inbounds %struct.ima_template_desc, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %num_fields7.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_fields7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp8.i = icmp sgt i32 %19, 0
  br i1 %cmp8.i, label %if.then9.for.body.i_crit_edge, label %if.then9.ima_free_template_entry.exit_crit_edge

if.then9.ima_free_template_entry.exit_crit_edge:  ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %ima_free_template_entry.exit

if.then9.for.body.i_crit_edge:                    ; preds = %if.then9
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then9.for.body.i_crit_edge
  %i.09.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then9.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ima_template_entry, ptr %14, i32 0, i32 4, i32 %i.09.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  call void @kfree(ptr noundef %21) #7
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %22 = ptrtoint ptr %template_desc.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %template_desc.i, align 4
  %num_fields.i = getelementptr inbounds %struct.ima_template_desc, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %num_fields.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_fields.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %25
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.ima_free_template_entry.exit_crit_edge

for.body.i.ima_free_template_entry.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ima_free_template_entry.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

ima_free_template_entry.exit:                     ; preds = %for.body.i.ima_free_template_entry.exit_crit_edge, %if.then9.ima_free_template_entry.exit_crit_edge
  %digests.i = getelementptr inbounds %struct.ima_template_entry, ptr %14, i32 0, i32 1
  %26 = ptrtoint ptr %digests.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %digests.i, align 4
  call void @kfree(ptr noundef %27) #7
  call void @kfree(ptr noundef %14) #7
  br label %err_out

err_out:                                          ; preds = %ima_free_template_entry.exit, %if.end.err_out_crit_edge, %entry.err_out_crit_edge
  %result.0 = phi i32 [ %call5.i, %ima_free_template_entry.exit ], [ %call5.i, %if.end.err_out_crit_edge ], [ -12, %entry.err_out_crit_edge ]
  call void @integrity_audit_msg(i32 noundef 1804, ptr noundef %2, ptr noundef %filename, ptr noundef %op, ptr noundef %cause, i32 noundef %result.0, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %event_data) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %entry1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ima_get_action(ptr noundef %mnt_userns, ptr noundef %inode, ptr noundef %cred, i32 noundef %secid, i32 noundef %mask, i32 noundef %func, ptr noundef %pcr, ptr noundef %template_desc, ptr noundef %func_data, ptr noundef %allowed_algos) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_policy_flag to i32))
  %0 = load i32, ptr @ima_policy_flag, align 4
  %and = and i32 %0, 325
  %call = tail call i32 @ima_match_policy(ptr noundef %mnt_userns, ptr noundef %inode, ptr noundef %cred, i32 noundef %secid, i32 noundef %func, i32 noundef %mask, i32 noundef %and, ptr noundef %pcr, ptr noundef %template_desc, ptr noundef %func_data, ptr noundef %allowed_algos) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_match_policy(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ima_collect_measurement(ptr nocapture noundef %iint, ptr noundef %file, ptr noundef %buf, i64 noundef %size, i32 noundef %algo, ptr noundef %modsig) local_unnamed_addr #0 align 64 {
entry:
  %hash = alloca %struct.anon.78, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %dentry = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dentry, align 4
  %name = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 8
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %hash) #7
  %6 = getelementptr inbounds i8, ptr %hash, i32 1
  %7 = call ptr @memset(ptr %6, i32 255, i32 3)
  %tobool.not = icmp eq ptr %modsig, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ima_collect_modsig(ptr noundef nonnull %modsig, ptr noundef %buf, i64 noundef %size) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %flags = getelementptr inbounds %struct.integrity_iint_cache, ptr %iint, i32 0, i32 4
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 8
  %and = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.if.end39_crit_edge

if.end.if.end39_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.end3:                                          ; preds = %if.end
  %i_version.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 38
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i, i32 noundef 8) #7
  %call.i.i15.i = tail call i64 @generic_atomic64_read(ptr noundef %i_version.i.i) #7
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end.i.for.cond.i_crit_edge, %if.end3
  %cur.0.i = phi i64 [ %call.i.i15.i, %if.end3 ], [ %call.i.i, %if.end.i.for.cond.i_crit_edge ]
  %and.i = and i64 %cur.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !30
  br label %inode_query_iversion.exit

if.end.i:                                         ; preds = %for.cond.i
  %or.i = or i64 %cur.0.i, 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i, i32 noundef 8) #7
  %call.i.i = tail call i64 @generic_atomic64_cmpxchg(ptr noundef %i_version.i.i, i64 noundef %cur.0.i, i64 noundef %or.i) #7
  %cmp.i = icmp eq i64 %call.i.i, %cur.0.i
  br i1 %cmp.i, label %if.end.i.inode_query_iversion.exit_crit_edge, label %if.end.i.for.cond.i_crit_edge, !prof !31

if.end.i.for.cond.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

if.end.i.inode_query_iversion.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %inode_query_iversion.exit

inode_query_iversion.exit:                        ; preds = %if.end.i.inode_query_iversion.exit_crit_edge, %do.end.i
  %shr.i = lshr i64 %cur.0.i, 1
  %conv = trunc i32 %algo to i8
  %10 = ptrtoint ptr %hash to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %hash, align 1
  %digest = getelementptr inbounds %struct.anon.78, ptr %hash, i32 0, i32 1
  %11 = call ptr @memset(ptr %digest, i32 0, i32 64)
  %tobool6.not = icmp eq ptr %buf, null
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %inode_query_iversion.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = call i32 @ima_calc_buffer_hash(ptr noundef nonnull %buf, i64 noundef %size, ptr noundef nonnull %hash) #7
  br label %if.end12

if.else:                                          ; preds = %inode_query_iversion.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = call i32 @ima_calc_file_hash(ptr noundef %file, ptr noundef nonnull %hash) #7
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then7
  %result.0 = phi i32 [ %call9, %if.then7 ], [ %call11, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.0)
  %tobool13.not = icmp eq i32 %result.0, 0
  %12 = zext i32 %result.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %result.0, label %if.end12.if.then34_crit_edge [
    i32 -9, label %if.end12.if.end19_crit_edge
    i32 -22, label %if.end12.if.end19_crit_edge78
    i32 0, label %if.end12.if.end19_crit_edge79
  ]

if.end12.if.end19_crit_edge79:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.end12.if.end19_crit_edge78:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.end12.if.then34_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then34

if.end19:                                         ; preds = %if.end12.if.end19_crit_edge, %if.end12.if.end19_crit_edge78, %if.end12.if.end19_crit_edge79
  %length21 = getelementptr inbounds %struct.ima_digest_data, ptr %hash, i32 0, i32 1
  %13 = ptrtoint ptr %length21 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %length21, align 1
  %conv22 = zext i8 %14 to i32
  %add = add nuw nsw i32 %conv22, 4
  %ima_hash = getelementptr inbounds %struct.integrity_iint_cache, ptr %iint, i32 0, i32 8
  %15 = ptrtoint ptr %ima_hash to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ima_hash, align 8
  %call23 = call noalias ptr @krealloc(ptr noundef %16, i32 noundef %add, i32 noundef 3136) #11
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %if.end19.if.then34_crit_edge, label %if.end26

if.end19.if.then34_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then34

if.end26:                                         ; preds = %if.end19
  %17 = ptrtoint ptr %ima_hash to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call23, ptr %ima_hash, align 8
  %18 = call ptr @memcpy(ptr %call23, ptr %hash, i32 %add)
  %version = getelementptr inbounds %struct.integrity_iint_cache, ptr %iint, i32 0, i32 3
  %19 = ptrtoint ptr %version to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %shr.i, ptr %version, align 8
  br i1 %tobool13.not, label %if.then30, label %if.end26.if.then34_crit_edge

if.end26.if.then34_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then34

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 8
  %or = or i32 %21, 32
  store i32 %or, ptr %flags, align 8
  br label %if.end39

if.then34:                                        ; preds = %if.end26.if.then34_crit_edge, %if.end19.if.then34_crit_edge, %if.end12.if.then34_crit_edge
  %result.1.ph = phi i32 [ -12, %if.end19.if.then34_crit_edge ], [ %result.0, %if.end12.if.then34_crit_edge ], [ %result.0, %if.end26.if.then34_crit_edge ]
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %22 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %f_flags, align 4
  %and35 = and i32 %23, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  %spec.select = select i1 %tobool36.not, ptr @.str, ptr @.str.1
  call void @integrity_audit_msg(i32 noundef 1800, ptr noundef %1, ptr noundef %5, ptr noundef nonnull @.str.2, ptr noundef nonnull %spec.select, i32 noundef %result.1.ph, i32 noundef 0) #7
  br label %if.end39

if.end39:                                         ; preds = %if.then34, %if.then30, %if.end.if.end39_crit_edge
  %result.165 = phi i32 [ %result.1.ph, %if.then34 ], [ 0, %if.end.if.end39_crit_edge ], [ 0, %if.then30 ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %hash) #7
  ret i32 %result.165
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ima_collect_modsig(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_calc_buffer_hash(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_calc_file_hash(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ima_store_measurement(ptr noundef %iint, ptr noundef %file, ptr noundef %filename, ptr noundef %xattr_value, i32 noundef %xattr_len, ptr noundef %modsig, i32 noundef %pcr, ptr noundef %template_desc) local_unnamed_addr #0 align 64 {
entry:
  %entry1 = alloca ptr, align 4
  %event_data = alloca %struct.ima_event_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %entry1) #7
  %2 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %entry1, align 4, !annotation !28
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %event_data) #7
  %3 = ptrtoint ptr %event_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %iint, ptr %event_data, align 4
  %file3 = getelementptr inbounds %struct.ima_event_data, ptr %event_data, i32 0, i32 1
  %4 = ptrtoint ptr %file3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %file, ptr %file3, align 4
  %filename4 = getelementptr inbounds %struct.ima_event_data, ptr %event_data, i32 0, i32 2
  %5 = ptrtoint ptr %filename4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %filename, ptr %filename4, align 4
  %xattr_value5 = getelementptr inbounds %struct.ima_event_data, ptr %event_data, i32 0, i32 3
  %6 = ptrtoint ptr %xattr_value5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %xattr_value, ptr %xattr_value5, align 4
  %xattr_len6 = getelementptr inbounds %struct.ima_event_data, ptr %event_data, i32 0, i32 4
  %7 = ptrtoint ptr %xattr_len6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %xattr_len, ptr %xattr_len6, align 4
  %modsig7 = getelementptr inbounds %struct.ima_event_data, ptr %event_data, i32 0, i32 5
  %8 = ptrtoint ptr %modsig7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %modsig, ptr %modsig7, align 4
  %violation = getelementptr inbounds %struct.ima_event_data, ptr %event_data, i32 0, i32 6
  %9 = ptrtoint ptr %violation to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %violation, align 4
  %buf = getelementptr inbounds %struct.ima_event_data, ptr %event_data, i32 0, i32 7
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %buf, align 4
  %buf_len = getelementptr inbounds %struct.ima_event_data, ptr %event_data, i32 0, i32 8
  %11 = ptrtoint ptr %buf_len to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %buf_len, align 4
  %measured_pcrs = getelementptr inbounds %struct.integrity_iint_cache, ptr %iint, i32 0, i32 5
  %12 = ptrtoint ptr %measured_pcrs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %measured_pcrs, align 4
  %shl = shl nuw i32 1, %pcr
  %and = and i32 %13, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %tobool9.not = icmp eq ptr %modsig, null
  %or.cond = and i1 %tobool9.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call10 = call i32 @ima_alloc_init_template(ptr noundef nonnull %event_data, ptr noundef nonnull %entry1, ptr noundef %template_desc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @integrity_audit_msg(i32 noundef 1804, ptr noundef %1, ptr noundef %filename, ptr noundef nonnull @ima_store_measurement.op, ptr noundef nonnull @ima_store_measurement.audit_cause, i32 noundef %call10, i32 noundef 0) #7
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %14 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %entry1, align 4
  %template_desc.i = getelementptr inbounds %struct.ima_template_entry, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %template_desc.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %template_desc.i, align 4
  %name.i = getelementptr inbounds %struct.ima_template_desc, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name.i, align 4
  %template_data.i = getelementptr inbounds %struct.ima_template_entry, ptr %15, i32 0, i32 4
  %call.i = call i32 @ima_calc_field_array_hash(ptr noundef %template_data.i, ptr noundef %15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  call void @integrity_audit_msg(i32 noundef 1804, ptr noundef %1, ptr noundef %19, ptr noundef nonnull @ima_store_template.op, ptr noundef nonnull @ima_store_template.audit_cause, i32 noundef %call.i, i32 noundef 0) #7
  br label %ima_store_template.exit

if.end3.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %pcr, ptr %15, align 4
  %call5.i = call i32 @ima_add_template_entry(ptr noundef %15, i32 noundef 0, ptr noundef nonnull @ima_store_template.op, ptr noundef %1, ptr noundef %filename) #7
  br label %ima_store_template.exit

ima_store_template.exit:                          ; preds = %if.end3.i, %if.then2.i
  %retval.0.i = phi i32 [ %call5.i, %if.end3.i ], [ %call.i, %if.then2.i ]
  %21 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %retval.0.i, label %ima_store_template.exit.if.end23_crit_edge [
    i32 0, label %ima_store_template.exit.land.lhs.true16_crit_edge
    i32 -17, label %ima_store_template.exit.land.lhs.true16_crit_edge48
  ]

ima_store_template.exit.land.lhs.true16_crit_edge48: ; preds = %ima_store_template.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true16

ima_store_template.exit.land.lhs.true16_crit_edge: ; preds = %ima_store_template.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true16

ima_store_template.exit.if.end23_crit_edge:       ; preds = %ima_store_template.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

land.lhs.true16:                                  ; preds = %ima_store_template.exit.land.lhs.true16_crit_edge, %ima_store_template.exit.land.lhs.true16_crit_edge48
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %22 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %f_flags, align 4
  %and17 = and i32 %23, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.then19, label %land.lhs.true16.if.end23_crit_edge

land.lhs.true16.if.end23_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then19:                                        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #9
  %flags = getelementptr inbounds %struct.integrity_iint_cache, ptr %iint, i32 0, i32 4
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags, align 8
  %or = or i32 %25, 2
  store i32 %or, ptr %flags, align 8
  %26 = ptrtoint ptr %measured_pcrs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %measured_pcrs, align 4
  %or22 = or i32 %27, %shl
  store i32 %or22, ptr %measured_pcrs, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %land.lhs.true16.if.end23_crit_edge, %ima_store_template.exit.if.end23_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp24 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp24, label %if.then25, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then25:                                        ; preds = %if.end23
  %28 = ptrtoint ptr %template_desc.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %template_desc.i, align 4
  %num_fields7.i = getelementptr inbounds %struct.ima_template_desc, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %num_fields7.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_fields7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp8.i = icmp sgt i32 %31, 0
  br i1 %cmp8.i, label %if.then25.for.body.i_crit_edge, label %if.then25.ima_free_template_entry.exit_crit_edge

if.then25.ima_free_template_entry.exit_crit_edge: ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %ima_free_template_entry.exit

if.then25.for.body.i_crit_edge:                   ; preds = %if.then25
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then25.for.body.i_crit_edge
  %i.09.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then25.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ima_template_entry, ptr %15, i32 0, i32 4, i32 %i.09.i
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i, align 4
  call void @kfree(ptr noundef %33) #7
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %34 = ptrtoint ptr %template_desc.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %template_desc.i, align 4
  %num_fields.i = getelementptr inbounds %struct.ima_template_desc, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %num_fields.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_fields.i, align 4
  %cmp.i47 = icmp slt i32 %inc.i, %37
  br i1 %cmp.i47, label %for.body.i.for.body.i_crit_edge, label %for.body.i.ima_free_template_entry.exit_crit_edge

for.body.i.ima_free_template_entry.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ima_free_template_entry.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

ima_free_template_entry.exit:                     ; preds = %for.body.i.ima_free_template_entry.exit_crit_edge, %if.then25.ima_free_template_entry.exit_crit_edge
  %digests.i = getelementptr inbounds %struct.ima_template_entry, ptr %15, i32 0, i32 1
  %38 = ptrtoint ptr %digests.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %digests.i, align 4
  call void @kfree(ptr noundef %39) #7
  call void @kfree(ptr noundef %15) #7
  br label %cleanup

cleanup:                                          ; preds = %ima_free_template_entry.exit, %if.end23.cleanup_crit_edge, %if.then11, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %event_data) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %entry1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ima_audit_measurement(ptr nocapture noundef %iint, ptr noundef %filename) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ima_hash = getelementptr inbounds %struct.integrity_iint_cache, ptr %iint, i32 0, i32 8
  %0 = ptrtoint ptr %ima_hash to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ima_hash, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr [20 x ptr], ptr @hash_algo_name, i32 0, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %flags = getelementptr inbounds %struct.integrity_iint_cache, ptr %iint, i32 0, i32 4
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 8
  %and = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end8.i.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8.i.i:                                      ; preds = %entry
  %length = getelementptr inbounds %struct.ima_digest_data, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %length to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %length, align 1
  %conv = zext i8 %9 to i32
  %mul = shl nuw nsw i32 %conv, 1
  %add = or i32 %mul, 1
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #10
  %tobool2.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool2.not, label %if.end8.i.i.cleanup_crit_edge, label %for.cond.preheader

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end8.i.i
  %10 = ptrtoint ptr %ima_hash to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ima_hash, align 8
  %length6 = getelementptr inbounds %struct.ima_digest_data, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %length6 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %length6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp43.not = icmp eq i8 %13, 0
  br i1 %cmp43.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.044 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %mul9 = shl nuw i32 %i.044, 1
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 %mul9
  %arrayidx11 = getelementptr %struct.ima_digest_data, ptr %11, i32 0, i32 3, i32 %i.044
  %14 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx11, align 1
  %conv.i = zext i8 %15 to i32
  %16 = lshr i32 %conv.i, 4
  %arrayidx.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i, align 1
  %incdec.ptr.i = getelementptr i8, ptr %add.ptr, i32 1
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %add.ptr, align 2
  %and2.i = and i32 %conv.i, 15
  %arrayidx3.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %and2.i
  %20 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx3.i, align 1
  %22 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %incdec.ptr.i, align 1
  %inc = add nuw nsw i32 %i.044, 1
  %23 = ptrtoint ptr %length6 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %length6, align 1
  %conv7 = zext i8 %24 to i32
  %cmp = icmp ult i32 %inc, %conv7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end.loopexit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %phi.bo = shl nuw i32 %inc, 1
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %arrayidx14 = getelementptr i8, ptr %call9.i.i, i32 %i.0.lcssa
  %25 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %arrayidx14, align 2
  %call16 = tail call ptr @audit_log_start(ptr noundef null, i32 noundef 3264, i32 noundef 1805) #7
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %for.end.out_crit_edge, label %if.end19

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end19:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call16, ptr noundef nonnull @.str.3) #7
  tail call void @audit_log_untrustedstring(ptr noundef nonnull %call16, ptr noundef %filename) #7
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call16, ptr noundef nonnull @.str.4, ptr noundef %5, ptr noundef nonnull %call9.i.i) #7
  tail call void @audit_log_task_info(ptr noundef nonnull %call16) #7
  tail call void @audit_log_end(ptr noundef nonnull %call16) #7
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags, align 8
  %or = or i32 %27, 128
  store i32 %or, ptr %flags, align 8
  br label %out

out:                                              ; preds = %if.end19, %for.end.out_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end8.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @audit_log_start(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @audit_log_format(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @audit_log_untrustedstring(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @audit_log_task_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @audit_log_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ima_d_path(ptr noundef %path, ptr nocapture noundef %pathbuf, ptr noundef %namebuf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %0 = load ptr, ptr @names_cachep, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #7
  %1 = ptrtoint ptr %pathbuf to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %pathbuf, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.then6_crit_edge, label %if.then

entry.if.then6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

if.then:                                          ; preds = %entry
  %call1 = tail call ptr @d_absolute_path(ptr noundef %path, ptr noundef nonnull %call, i32 noundef 4096) #7
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %2 = load ptr, ptr @names_cachep, align 4
  %3 = ptrtoint ptr %pathbuf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pathbuf, align 4
  tail call void @kmem_cache_free(ptr noundef %2, ptr noundef %4) #7
  %5 = ptrtoint ptr %pathbuf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %pathbuf, align 4
  br label %if.then6

if.end4:                                          ; preds = %if.then
  %tobool5.not = icmp eq ptr %call1, null
  br i1 %tobool5.not, label %if.end4.if.then6_crit_edge, label %if.end4.if.end8_crit_edge

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.end4.if.then6_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

if.then6:                                         ; preds = %if.end4.if.then6_crit_edge, %if.then3, %entry.if.then6_crit_edge
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %6 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dentry, align 4
  %name = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 8
  %call7 = tail call i32 @strscpy(ptr noundef %namebuf, ptr noundef %9, i32 noundef 255) #7
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end4.if.end8_crit_edge
  %pathname.1 = phi ptr [ %call1, %if.end4.if.end8_crit_edge ], [ %namebuf, %if.then6 ]
  ret ptr %pathname.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_absolute_path(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_cmpxchg(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind allocsize(1) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @ima_store_template.op, !1, !"op", i1 false, i1 false}
!1 = !{!"../security/integrity/ima/ima_api.c", i32 106, i32 20}
!2 = !{ptr @ima_store_template.audit_cause, !3, !"audit_cause", i1 false, i1 false}
!3 = !{!"../security/integrity/ima/ima_api.c", i32 107, i32 20}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../security/integrity/ima/ima_api.c", i32 217, i32 28}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../security/integrity/ima/ima_api.c", i32 276, i32 18}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../security/integrity/ima/ima_api.c", i32 279, i32 19}
!10 = !{ptr @ima_store_measurement.op, !11, !"op", i1 false, i1 false}
!11 = !{!"../security/integrity/ima/ima_api.c", i32 306, i32 20}
!12 = !{ptr @ima_store_measurement.audit_cause, !13, !"audit_cause", i1 false, i1 false}
!13 = !{!"../security/integrity/ima/ima_api.c", i32 307, i32 20}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../security/integrity/ima/ima_api.c", i32 368, i32 23}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../security/integrity/ima/ima_api.c", i32 370, i32 23}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{!"branch_weights", i32 1, i32 2000}
!28 = !{!"auto-init"}
!29 = !{i64 2148590238, i64 2148590264, i64 2148590293, i64 2148590327, i64 2148590358, i64 2148590381}
!30 = !{i64 2153358028}
!31 = !{!"branch_weights", i32 2000, i32 1}
