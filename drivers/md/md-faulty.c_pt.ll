; ModuleID = '/llk/IR_all_yes/drivers/md/md-faulty.c_pt.bc'
source_filename = "../drivers/md/md-faulty.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.md_personality = type { ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.40, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.40 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.faulty_conf = type { [6 x i32], [6 x %struct.atomic_t], [50 x i64], [50 x i32], i32, ptr }
%struct.mddev = type { ptr, ptr, i32, i32, %struct.list_head, i32, i32, i32, %struct.atomic_t, i32, i32, ptr, %struct.kobject, i32, i32, i32, i32, i32, i32, [17 x i8], i32, i64, i64, i32, i32, [16 x i8], i32, i32, i64, i64, i32, i64, i32, [16 x i8], i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, i64, i64, i32, i64, i64, i64, %struct.atomic64_t, i64, i64, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.atomic_t, %struct.wait_queue_head, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.spinlock, %struct.wait_queue_head, %struct.atomic_t, i32, i32, %struct.timer_list, %struct.percpu_ref, i32, ptr, ptr, %struct.anon.80, %struct.atomic_t, %struct.list_head, ptr, %struct.bio_set, %struct.bio_set, %struct.bio_set, ptr, %struct.atomic_t, i64, i64, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.atomic64_t = type { i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.percpu_ref = type { i32, ptr }
%struct.anon.80 = type { ptr, i64, i32, i64, i32, %struct.mutex, i32, i32, i32, i32, i32, [64 x i8] }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.md_rdev = type { %struct.list_head, i64, ptr, i32, ptr, ptr, ptr, ptr, i32, i64, i64, i64, i64, i32, i32, %struct.kobject, i32, %struct.wait_queue_head, i32, i32, i32, i32, %union.anon.81, %struct.atomic_t, %struct.atomic_t, i64, %struct.atomic_t, ptr, %struct.work_struct, ptr, ptr, ptr, %struct.badblocks, %struct.anon.82 }
%union.anon.81 = type { i64 }
%struct.badblocks = type { ptr, i32, i32, i32, ptr, i32, %struct.seqlock_t, i64, i64 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.anon.82 = type { i16, i32, i64 }

@__initcall__kmod_faulty__283_357_raid_init6 = internal global ptr @raid_init, section ".initcall6.init", align 4
@__exitcall_raid_exit = internal global ptr @raid_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file284 = internal constant [30 x i8] c"faulty.file=drivers/md/faulty\00", section ".modinfo", align 1
@__UNIQUE_ID_license285 = internal constant [19 x i8] c"faulty.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description286 = internal constant [67 x i8] c"faulty.description=Fault injection personality for MD (deprecated)\00", section ".modinfo", align 1
@__UNIQUE_ID_alias287 = internal constant [31 x i8] c"faulty.alias=md-personality-10\00", section ".modinfo", align 1
@__UNIQUE_ID_alias288 = internal constant [23 x i8] c"faulty.alias=md-faulty\00", section ".modinfo", align 1
@__UNIQUE_ID_alias289 = internal constant [25 x i8] c"faulty.alias=md-level--5\00", section ".modinfo", align 1
@faulty_personality = internal global { %struct.md_personality, [32 x i8] } { %struct.md_personality { ptr @.str, i32 -5, %struct.list_head zeroinitializer, ptr null, ptr @faulty_make_request, ptr @faulty_run, ptr null, ptr @faulty_free, ptr @faulty_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @faulty_size, ptr @faulty_reshape, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"faulty\00", [25 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c" WriteTransient=%d(%d)\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c" ReadTransient=%d(%d)\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c" WritePersistent=%d(%d)\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c" ReadPersistent=%d(%d)\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c" ReadFixable=%d(%d)\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" WriteAll\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" nfaults=%d\00", [20 x i8] zeroinitializer }, align 32
@faulty_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/md/md-faulty.c\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s does not support generic reshape\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.faulty_size = private unnamed_addr constant [12 x i8] c"faulty_size\00", align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 11, i64 201]
@__sancov_gen_cov_switch_values.10 = internal global [5 x i64] [i64 3, i64 32, i64 6, i64 10, i64 200]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 30, i64 31]
@___asan_gen_.12 = private unnamed_addr constant [19 x i8] c"faulty_personality\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 334, i32 30 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 336, i32 11 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 227, i32 19 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 231, i32 19 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 235, i32 19 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 239, i32 19 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 244, i32 19 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 248, i32 19 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 250, i32 18 }
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private constant [26 x i8] c"../drivers/md/md-faulty.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 285, i32 2 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_alias287, ptr @__UNIQUE_ID_alias288, ptr @__UNIQUE_ID_alias289, ptr @__UNIQUE_ID_description286, ptr @__UNIQUE_ID_file284, ptr @__UNIQUE_ID_license285, ptr @__exitcall_raid_exit, ptr @__initcall__kmod_faulty__283_357_raid_init6, ptr @faulty_personality, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @faulty_personality to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @raid_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_md_personality(ptr noundef nonnull @faulty_personality) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @raid_exit() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @unregister_md_personality(ptr noundef nonnull @faulty_personality) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_md_personality(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @faulty_make_request(ptr noundef %mddev, ptr noundef %bio) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mddev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mddev, align 8
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %2 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bi_opf, align 8
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr %struct.faulty_conf, ptr %1, i32 0, i32 1, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 4) #5
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %bi_status.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %6 = ptrtoint ptr %bi_status.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 10, ptr %bi_status.i, align 2
  tail call void @bio_endio(ptr noundef %bio) #5
  br label %cleanup

if.end:                                           ; preds = %if.then
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %7 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %bi_iter, align 8
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %9 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bi_size, align 8
  %shr = lshr i32 %10, 9
  %conv = zext i32 %shr to i64
  %add = add i64 %8, %conv
  %nfaults.i = getelementptr inbounds %struct.faulty_conf, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %nfaults.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nfaults.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp22.i = icmp sgt i32 %12, 0
  br i1 %cmp22.i, label %if.end.for.body.i_crit_edge, label %if.end.check_sector.exit_crit_edge

if.end.check_sector.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %check_sector.exit

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.023.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.faulty_conf, ptr %1, i32 0, i32 2, i32 %i.023.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %8)
  %cmp1.not.i = icmp uge i64 %14, %8
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %add)
  %cmp4.i = icmp ult i64 %14, %add
  %or.cond.i = and i1 %cmp1.not.i, %cmp4.i
  br i1 %or.cond.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %arrayidx5.i = getelementptr %struct.faulty_conf, ptr %1, i32 0, i32 3, i32 %i.023.i
  %15 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx5.i, align 4
  %mul.i = shl i32 %16, 1
  %add.i = or i32 %mul.i, 1
  %17 = zext i32 %add.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %add.i, label %sw.default.i [
    i32 5, label %if.then.i.check_sector.exit_crit_edge
    i32 201, label %if.then.i.check_sector.exit_crit_edge302
    i32 11, label %sw.bb8.i
  ]

if.then.i.check_sector.exit_crit_edge302:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %check_sector.exit

if.then.i.check_sector.exit_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %check_sector.exit

sw.bb8.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 101, ptr %arrayidx5.i, align 4
  br label %check_sector.exit

sw.default.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %check_sector.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %12
  br i1 %exitcond.not.i, label %for.inc.i.check_sector.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.check_sector.exit_crit_edge:            ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %check_sector.exit

check_sector.exit:                                ; preds = %for.inc.i.check_sector.exit_crit_edge, %sw.default.i, %sw.bb8.i, %if.then.i.check_sector.exit_crit_edge, %if.then.i.check_sector.exit_crit_edge302, %if.end.check_sector.exit_crit_edge
  %19 = phi i32 [ 1, %if.then.i.check_sector.exit_crit_edge ], [ 1, %if.then.i.check_sector.exit_crit_edge302 ], [ 0, %sw.default.i ], [ 0, %sw.bb8.i ], [ 0, %if.end.check_sector.exit_crit_edge ], [ 0, %for.inc.i.check_sector.exit_crit_edge ]
  %arrayidx.i90 = getelementptr [6 x i32], ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %arrayidx.i90 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i90, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i = icmp eq i32 %21, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %check_sector.exit.if.end.i_crit_edge

check_sector.exit.if.end.i_crit_edge:             ; preds = %check_sector.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %check_sector.exit
  %arrayidx1.i = getelementptr %struct.faulty_conf, ptr %1, i32 0, i32 1, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx1.i, i32 noundef 4) #5
  %22 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp2.i = icmp slt i32 %23, 1
  br i1 %cmp2.i, label %land.lhs.true.i.if.end15_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.lhs.true.i.if.end15_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %check_sector.exit.if.end.i_crit_edge
  %arrayidx4.i = getelementptr %struct.faulty_conf, ptr %1, i32 0, i32 1, i32 2
  %call.i.i26.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx4.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @llvm.prefetch.p0(ptr %arrayidx4.i, i32 1, i32 3, i32 1) #5
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx4.i, ptr %arrayidx4.i, i32 1, ptr elementtype(i32) %arrayidx4.i) #5, !srcloc !48
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %24, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then6.i, label %if.end.i.if.end15_crit_edge

if.end.i.if.end15_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then6.i:                                       ; preds = %if.end.i
  %25 = ptrtoint ptr %arrayidx.i90 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i90, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i, label %if.then6.i.if.then12_crit_edge, label %if.then9.i

if.then6.i.if.then12_crit_edge:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

if.then9.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i27.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx4.i, i32 noundef 4) #5
  %27 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 %26, ptr %arrayidx4.i, align 4
  br label %if.then12

if.then12:                                        ; preds = %if.then9.i, %if.then6.i.if.then12_crit_edge
  %28 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %bi_iter, align 8
  %30 = ptrtoint ptr %nfaults.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nfaults.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp114.i = icmp sgt i32 %31, 0
  br i1 %cmp114.i, label %if.then12.for.body.i95_crit_edge, label %if.then12.if.end51.i_crit_edge

if.then12.if.end51.i_crit_edge:                   ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51.i

if.then12.for.body.i95_crit_edge:                 ; preds = %if.then12
  br label %for.body.i95

for.body.i95:                                     ; preds = %if.else42.i.for.body.i95_crit_edge, %if.then12.for.body.i95_crit_edge
  %n.0117.i = phi i32 [ %spec.select.i, %if.else42.i.for.body.i95_crit_edge ], [ %31, %if.then12.for.body.i95_crit_edge ]
  %i.0115.i = phi i32 [ %inc.i97, %if.else42.i.for.body.i95_crit_edge ], [ 0, %if.then12.for.body.i95_crit_edge ]
  %arrayidx.i93 = getelementptr %struct.faulty_conf, ptr %1, i32 0, i32 2, i32 %i.0115.i
  %32 = ptrtoint ptr %arrayidx.i93 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %arrayidx.i93, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %33, i64 %29)
  %cmp2.i94 = icmp eq i64 %33, %29
  %arrayidx6.i = getelementptr %struct.faulty_conf, ptr %1, i32 0, i32 3, i32 %i.0115.i
  %34 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx6.i, align 4
  br i1 %cmp2.i94, label %if.then.i96, label %if.else42.i

if.then.i96:                                      ; preds = %for.body.i95
  call void @__sanitizer_cov_trace_pc() #7
  %36 = add i32 %35, -3
  %switch.and.i = and i32 %36, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i)
  %switch.selectcmp.i = icmp eq i32 %switch.and.i, 0
  %37 = select i1 %switch.selectcmp.i, i32 100, i32 2
  %38 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %arrayidx6.i, align 4
  br label %if.end15

if.else42.i:                                      ; preds = %for.body.i95
  call void @__sanitizer_cov_trace_const_cmp4(i32 101, i32 %35)
  %cmp45.i = icmp eq i32 %35, 101
  %spec.select.i = select i1 %cmp45.i, i32 %i.0115.i, i32 %n.0117.i
  %inc.i97 = add nuw nsw i32 %i.0115.i, 1
  %exitcond.not.i98 = icmp eq i32 %inc.i97, %31
  br i1 %exitcond.not.i98, label %for.end.i, label %if.else42.i.for.body.i95_crit_edge

if.else42.i.for.body.i95_crit_edge:               ; preds = %if.else42.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i95

for.end.i:                                        ; preds = %if.else42.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %spec.select.i)
  %cmp49.i = icmp sgt i32 %spec.select.i, 49
  br i1 %cmp49.i, label %for.end.i.if.end15_crit_edge, label %for.end.i.if.end51.i_crit_edge

for.end.i.if.end51.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51.i

for.end.i.if.end15_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.end51.i:                                       ; preds = %for.end.i.if.end51.i_crit_edge, %if.then12.if.end51.i_crit_edge
  %n.0.lcssa123.i = phi i32 [ %spec.select.i, %for.end.i.if.end51.i_crit_edge ], [ %31, %if.then12.if.end51.i_crit_edge ]
  %arrayidx53.i = getelementptr %struct.faulty_conf, ptr %1, i32 0, i32 2, i32 %n.0.lcssa123.i
  %39 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %29, ptr %arrayidx53.i, align 8
  %arrayidx55.i = getelementptr %struct.faulty_conf, ptr %1, i32 0, i32 3, i32 %n.0.lcssa123.i
  %40 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 2, ptr %arrayidx55.i, align 4
  %41 = ptrtoint ptr %nfaults.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %nfaults.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %n.0.lcssa123.i)
  %cmp57.i = icmp eq i32 %42, %n.0.lcssa123.i
  br i1 %cmp57.i, label %if.then58.i, label %if.end51.i.if.end15_crit_edge

if.end51.i.if.end15_crit_edge:                    ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then58.i:                                      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.i100 = add nsw i32 %n.0.lcssa123.i, 1
  %43 = ptrtoint ptr %nfaults.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %add.i100, ptr %nfaults.i, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then58.i, %if.end51.i.if.end15_crit_edge, %for.end.i.if.end15_crit_edge, %if.then.i96, %if.end.i.if.end15_crit_edge, %land.lhs.true.i.if.end15_crit_edge
  %failit.1 = phi i32 [ 1, %if.then.i96 ], [ 1, %for.end.i.if.end15_crit_edge ], [ 1, %if.end51.i.if.end15_crit_edge ], [ 1, %if.then58.i ], [ %19, %land.lhs.true.i.if.end15_crit_edge ], [ %19, %if.end.i.if.end15_crit_edge ]
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp.i101 = icmp eq i32 %45, 0
  br i1 %cmp.i101, label %land.lhs.true.i105, label %if.end15.if.end.i110_crit_edge

if.end15.if.end.i110_crit_edge:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i110

land.lhs.true.i105:                               ; preds = %if.end15
  %arrayidx1.i102 = getelementptr %struct.faulty_conf, ptr %1, i32 0, i32 1, i32 0
  %call.i.i.i103 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx1.i102, i32 noundef 4) #5
  %46 = ptrtoint ptr %arrayidx1.i102 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %arrayidx1.i102, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %cmp2.i104 = icmp slt i32 %47, 1
  br i1 %cmp2.i104, label %land.lhs.true.i105.if.end49_crit_edge, label %land.lhs.true.i105.if.end.i110_crit_edge

land.lhs.true.i105.if.end.i110_crit_edge:         ; preds = %land.lhs.true.i105
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i110

land.lhs.true.i105.if.end49_crit_edge:            ; preds = %land.lhs.true.i105
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

if.end.i110:                                      ; preds = %land.lhs.true.i105.if.end.i110_crit_edge, %if.end15.if.end.i110_crit_edge
  %arrayidx4.i106 = getelementptr %struct.faulty_conf, ptr %1, i32 0, i32 1, i32 0
  %call.i.i26.i107 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx4.i106, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @llvm.prefetch.p0(ptr %arrayidx4.i106, i32 1, i32 3, i32 1) #5
  %48 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx4.i106, ptr %arrayidx4.i106, i32 1, ptr elementtype(i32) %arrayidx4.i106) #5, !srcloc !48
  %asmresult.i.i.i.i.i.i108 = extractvalue { i32, i32 } %48, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i108)
  %cmp.i.i.i109 = icmp eq i32 %asmresult.i.i.i.i.i.i108, 0
  br i1 %cmp.i.i.i109, label %if.then6.i112, label %if.end.i110.if.end49_crit_edge

if.end.i110.if.end49_crit_edge:                   ; preds = %if.end.i110
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

if.then6.i112:                                    ; preds = %if.end.i110
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i111 = icmp eq i32 %50, 0
  br i1 %tobool.not.i111, label %if.then6.i112.if.then51_crit_edge, label %if.then9.i114

if.then6.i112.if.then51_crit_edge:                ; preds = %if.then6.i112
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then51

if.then9.i114:                                    ; preds = %if.then6.i112
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i27.i113 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx4.i106, i32 noundef 4) #5
  %51 = ptrtoint ptr %arrayidx4.i106 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile i32 %50, ptr %arrayidx4.i106, align 4
  br label %if.then51

if.else:                                          ; preds = %entry
  %bi_iter20 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %52 = ptrtoint ptr %bi_iter20 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %bi_iter20, align 8
  %bi_size25 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %54 = ptrtoint ptr %bi_size25 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %bi_size25, align 8
  %shr26 = lshr i32 %55, 9
  %conv27 = zext i32 %shr26 to i64
  %add28 = add i64 %53, %conv27
  %nfaults.i117 = getelementptr inbounds %struct.faulty_conf, ptr %1, i32 0, i32 4
  %56 = ptrtoint ptr %nfaults.i117 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %nfaults.i117, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp22.i118 = icmp sgt i32 %57, 0
  br i1 %cmp22.i118, label %if.else.for.body.i124_crit_edge, label %if.else.check_sector.exit134_crit_edge

if.else.check_sector.exit134_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %check_sector.exit134

if.else.for.body.i124_crit_edge:                  ; preds = %if.else
  br label %for.body.i124

for.body.i124:                                    ; preds = %for.inc.i132.for.body.i124_crit_edge, %if.else.for.body.i124_crit_edge
  %i.023.i119 = phi i32 [ %inc.i130, %for.inc.i132.for.body.i124_crit_edge ], [ 0, %if.else.for.body.i124_crit_edge ]
  %arrayidx.i120 = getelementptr %struct.faulty_conf, ptr %1, i32 0, i32 2, i32 %i.023.i119
  %58 = ptrtoint ptr %arrayidx.i120 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %arrayidx.i120, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %59, i64 %53)
  %cmp1.not.i121 = icmp uge i64 %59, %53
  call void @__sanitizer_cov_trace_cmp8(i64 %59, i64 %add28)
  %cmp4.i122 = icmp ult i64 %59, %add28
  %or.cond.i123 = and i1 %cmp1.not.i121, %cmp4.i122
  br i1 %or.cond.i123, label %if.then.i127, label %for.inc.i132

if.then.i127:                                     ; preds = %for.body.i124
  %arrayidx5.i125 = getelementptr %struct.faulty_conf, ptr %1, i32 0, i32 3, i32 %i.023.i119
  %60 = ptrtoint ptr %arrayidx5.i125 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx5.i125, align 4
  %mul.i126 = shl i32 %61, 1
  %62 = zext i32 %mul.i126 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %mul.i126, label %sw.default.i129 [
    i32 200, label %if.then.i127.check_sector.exit134_crit_edge
    i32 6, label %if.then.i127.check_sector.exit134_crit_edge303
    i32 10, label %if.then.i127.check_sector.exit134_crit_edge304
  ]

if.then.i127.check_sector.exit134_crit_edge304:   ; preds = %if.then.i127
  call void @__sanitizer_cov_trace_pc() #7
  br label %check_sector.exit134

if.then.i127.check_sector.exit134_crit_edge303:   ; preds = %if.then.i127
  call void @__sanitizer_cov_trace_pc() #7
  br label %check_sector.exit134

if.then.i127.check_sector.exit134_crit_edge:      ; preds = %if.then.i127
  call void @__sanitizer_cov_trace_pc() #7
  br label %check_sector.exit134

sw.default.i129:                                  ; preds = %if.then.i127
  call void @__sanitizer_cov_trace_pc() #7
  br label %check_sector.exit134

for.inc.i132:                                     ; preds = %for.body.i124
  %inc.i130 = add nuw nsw i32 %i.023.i119, 1
  %exitcond.not.i131 = icmp eq i32 %inc.i130, %57
  br i1 %exitcond.not.i131, label %for.inc.i132.check_sector.exit134_crit_edge, label %for.inc.i132.for.body.i124_crit_edge

for.inc.i132.for.body.i124_crit_edge:             ; preds = %for.inc.i132
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i124

for.inc.i132.check_sector.exit134_crit_edge:      ; preds = %for.inc.i132
  call void @__sanitizer_cov_trace_pc() #7
  br label %check_sector.exit134

check_sector.exit134:                             ; preds = %for.inc.i132.check_sector.exit134_crit_edge, %sw.default.i129, %if.then.i127.check_sector.exit134_crit_edge, %if.then.i127.check_sector.exit134_crit_edge303, %if.then.i127.check_sector.exit134_crit_edge304, %if.else.check_sector.exit134_crit_edge
  %63 = phi i32 [ 1, %if.then.i127.check_sector.exit134_crit_edge ], [ 1, %if.then.i127.check_sector.exit134_crit_edge303 ], [ 1, %if.then.i127.check_sector.exit134_crit_edge304 ], [ 0, %sw.default.i129 ], [ 0, %if.else.check_sector.exit134_crit_edge ], [ 0, %for.inc.i132.check_sector.exit134_crit_edge ]
  %arrayidx.i135 = getelementptr [6 x i32], ptr %1, i32 0, i32 1
  %64 = ptrtoint ptr %arrayidx.i135 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx.i135, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp.i136 = icmp eq i32 %65, 0
  br i1 %cmp.i136, label %land.lhs.true.i140, label %check_sector.exit134.if.end.i145_crit_edge

check_sector.exit134.if.end.i145_crit_edge:       ; preds = %check_sector.exit134
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i145

land.lhs.true.i140:                               ; preds = %check_sector.exit134
  %arrayidx1.i137 = getelementptr %struct.faulty_conf, ptr %1, i32 0, i32 1, i32 1
  %call.i.i.i138 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx1.i137, i32 noundef 4) #5
  %66 = ptrtoint ptr %arrayidx1.i137 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %arrayidx1.i137, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %67)
  %cmp2.i139 = icmp slt i32 %67, 1
  br i1 %cmp2.i139, label %land.lhs.true.i140.check_mode.exit151_crit_edge, label %land.lhs.true.i140.if.end.i145_crit_edge

land.lhs.true.i140.if.end.i145_crit_edge:         ; preds = %land.lhs.true.i140
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i145

land.lhs.true.i140.check_mode.exit151_crit_edge:  ; preds = %land.lhs.true.i140
  call void @__sanitizer_cov_trace_pc() #7
  br label %check_mode.exit151

if.end.i145:                                      ; preds = %land.lhs.true.i140.if.end.i145_crit_edge, %check_sector.exit134.if.end.i145_crit_edge
  %arrayidx4.i141 = getelementptr %struct.faulty_conf, ptr %1, i32 0, i32 1, i32 1
  %call.i.i26.i142 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx4.i141, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @llvm.prefetch.p0(ptr %arrayidx4.i141, i32 1, i32 3, i32 1) #5
  %68 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx4.i141, ptr %arrayidx4.i141, i32 1, ptr elementtype(i32) %arrayidx4.i141) #5, !srcloc !48
  %asmresult.i.i.i.i.i.i143 = extractvalue { i32, i32 } %68, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i143)
  %cmp.i.i.i144 = icmp eq i32 %asmresult.i.i.i.i.i.i143, 0
  br i1 %cmp.i.i.i144, label %if.then6.i147, label %if.end.i145.check_mode.exit151_crit_edge

if.end.i145.check_mode.exit151_crit_edge:         ; preds = %if.end.i145
  call void @__sanitizer_cov_trace_pc() #7
  br label %check_mode.exit151

if.then6.i147:                                    ; preds = %if.end.i145
  %69 = ptrtoint ptr %arrayidx.i135 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx.i135, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.not.i146 = icmp eq i32 %70, 0
  br i1 %tobool.not.i146, label %if.then6.i147.check_mode.exit151_crit_edge, label %if.then9.i149

if.then6.i147.check_mode.exit151_crit_edge:       ; preds = %if.then6.i147
  call void @__sanitizer_cov_trace_pc() #7
  br label %check_mode.exit151

if.then9.i149:                                    ; preds = %if.then6.i147
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i27.i148 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx4.i141, i32 noundef 4) #5
  %71 = ptrtoint ptr %arrayidx4.i141 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile i32 %70, ptr %arrayidx4.i141, align 4
  br label %check_mode.exit151

check_mode.exit151:                               ; preds = %if.then9.i149, %if.then6.i147.check_mode.exit151_crit_edge, %if.end.i145.check_mode.exit151_crit_edge, %land.lhs.true.i140.check_mode.exit151_crit_edge
  %72 = phi i32 [ 1, %if.then6.i147.check_mode.exit151_crit_edge ], [ 1, %if.then9.i149 ], [ %63, %land.lhs.true.i140.check_mode.exit151_crit_edge ], [ %63, %if.end.i145.check_mode.exit151_crit_edge ]
  %arrayidx.i152 = getelementptr [6 x i32], ptr %1, i32 0, i32 3
  %73 = ptrtoint ptr %arrayidx.i152 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx.i152, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp.i153 = icmp eq i32 %74, 0
  br i1 %cmp.i153, label %land.lhs.true.i157, label %check_mode.exit151.if.end.i162_crit_edge

check_mode.exit151.if.end.i162_crit_edge:         ; preds = %check_mode.exit151
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i162

land.lhs.true.i157:                               ; preds = %check_mode.exit151
  %arrayidx1.i154 = getelementptr %struct.faulty_conf, ptr %1, i32 0, i32 1, i32 3
  %call.i.i.i155 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx1.i154, i32 noundef 4) #5
  %75 = ptrtoint ptr %arrayidx1.i154 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %arrayidx1.i154, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %76)
  %cmp2.i156 = icmp slt i32 %76, 1
  br i1 %cmp2.i156, label %land.lhs.true.i157.if.end42_crit_edge, label %land.lhs.true.i157.if.end.i162_crit_edge

land.lhs.true.i157.if.end.i162_crit_edge:         ; preds = %land.lhs.true.i157
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i162

land.lhs.true.i157.if.end42_crit_edge:            ; preds = %land.lhs.true.i157
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

if.end.i162:                                      ; preds = %land.lhs.true.i157.if.end.i162_crit_edge, %check_mode.exit151.if.end.i162_crit_edge
  %arrayidx4.i158 = getelementptr %struct.faulty_conf, ptr %1, i32 0, i32 1, i32 3
  %call.i.i26.i159 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx4.i158, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @llvm.prefetch.p0(ptr %arrayidx4.i158, i32 1, i32 3, i32 1) #5
  %77 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx4.i158, ptr %arrayidx4.i158, i32 1, ptr elementtype(i32) %arrayidx4.i158) #5, !srcloc !48
  %asmresult.i.i.i.i.i.i160 = extractvalue { i32, i32 } %77, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i160)
  %cmp.i.i.i161 = icmp eq i32 %asmresult.i.i.i.i.i.i160, 0
  br i1 %cmp.i.i.i161, label %if.then6.i164, label %if.end.i162.if.end42_crit_edge

if.end.i162.if.end42_crit_edge:                   ; preds = %if.end.i162
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

if.then6.i164:                                    ; preds = %if.end.i162
  %78 = ptrtoint ptr %arrayidx.i152 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx.i152, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool.not.i163 = icmp eq i32 %79, 0
  br i1 %tobool.not.i163, label %if.then6.i164.if.then39_crit_edge, label %if.then9.i166

if.then6.i164.if.then39_crit_edge:                ; preds = %if.then6.i164
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then39

if.then9.i166:                                    ; preds = %if.then6.i164
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i27.i165 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx4.i158, i32 noundef 4) #5
  %80 = ptrtoint ptr %arrayidx4.i158 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile i32 %79, ptr %arrayidx4.i158, align 4
  br label %if.then39

if.then39:                                        ; preds = %if.then9.i166, %if.then6.i164.if.then39_crit_edge
  %81 = ptrtoint ptr %bi_iter20 to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %bi_iter20, align 8
  %83 = ptrtoint ptr %nfaults.i117 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %nfaults.i117, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp114.i170 = icmp sgt i32 %84, 0
  br i1 %cmp114.i170, label %if.then39.for.body.i175_crit_edge, label %if.then39.if.end51.i190_crit_edge

if.then39.if.end51.i190_crit_edge:                ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51.i190

if.then39.for.body.i175_crit_edge:                ; preds = %if.then39
  br label %for.body.i175

for.body.i175:                                    ; preds = %if.else42.i180.for.body.i175_crit_edge, %if.then39.for.body.i175_crit_edge
  %n.0117.i171 = phi i32 [ %spec.select.i179, %if.else42.i180.for.body.i175_crit_edge ], [ %84, %if.then39.for.body.i175_crit_edge ]
  %i.0115.i172 = phi i32 [ %inc.i181, %if.else42.i180.for.body.i175_crit_edge ], [ 0, %if.then39.for.body.i175_crit_edge ]
  %arrayidx.i173 = getelementptr %struct.faulty_conf, ptr %1, i32 0, i32 2, i32 %i.0115.i172
  %85 = ptrtoint ptr %arrayidx.i173 to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %arrayidx.i173, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %86, i64 %82)
  %cmp2.i174 = icmp eq i64 %86, %82
  %arrayidx18.i = getelementptr %struct.faulty_conf, ptr %1, i32 0, i32 3, i32 %i.0115.i172
  %87 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx18.i, align 4
  br i1 %cmp2.i174, label %if.then.i176, label %if.else42.i180

if.then.i176:                                     ; preds = %for.body.i175
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %88)
  %cmp19.i = icmp eq i32 %88, 2
  %..i = select i1 %cmp19.i, i32 100, i32 3
  %89 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %..i, ptr %arrayidx18.i, align 4
  br label %if.end42

if.else42.i180:                                   ; preds = %for.body.i175
  call void @__sanitizer_cov_trace_const_cmp4(i32 101, i32 %88)
  %cmp45.i178 = icmp eq i32 %88, 101
  %spec.select.i179 = select i1 %cmp45.i178, i32 %i.0115.i172, i32 %n.0117.i171
  %inc.i181 = add nuw nsw i32 %i.0115.i172, 1
  %exitcond.not.i182 = icmp eq i32 %inc.i181, %84
  br i1 %exitcond.not.i182, label %for.end.i185, label %if.else42.i180.for.body.i175_crit_edge

if.else42.i180.for.body.i175_crit_edge:           ; preds = %if.else42.i180
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i175

for.end.i185:                                     ; preds = %if.else42.i180
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %spec.select.i179)
  %cmp49.i184 = icmp sgt i32 %spec.select.i179, 49
  br i1 %cmp49.i184, label %for.end.i185.if.end42_crit_edge, label %for.end.i185.if.end51.i190_crit_edge

for.end.i185.if.end51.i190_crit_edge:             ; preds = %for.end.i185
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51.i190

for.end.i185.if.end42_crit_edge:                  ; preds = %for.end.i185
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

if.end51.i190:                                    ; preds = %for.end.i185.if.end51.i190_crit_edge, %if.then39.if.end51.i190_crit_edge
  %n.0.lcssa123.i186 = phi i32 [ %spec.select.i179, %for.end.i185.if.end51.i190_crit_edge ], [ %84, %if.then39.if.end51.i190_crit_edge ]
  %arrayidx53.i187 = getelementptr %struct.faulty_conf, ptr %1, i32 0, i32 2, i32 %n.0.lcssa123.i186
  %90 = ptrtoint ptr %arrayidx53.i187 to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %82, ptr %arrayidx53.i187, align 8
  %arrayidx55.i188 = getelementptr %struct.faulty_conf, ptr %1, i32 0, i32 3, i32 %n.0.lcssa123.i186
  %91 = ptrtoint ptr %arrayidx55.i188 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 3, ptr %arrayidx55.i188, align 4
  %92 = ptrtoint ptr %nfaults.i117 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %nfaults.i117, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %n.0.lcssa123.i186)
  %cmp57.i189 = icmp eq i32 %93, %n.0.lcssa123.i186
  br i1 %cmp57.i189, label %if.then58.i192, label %if.end51.i190.if.end42_crit_edge

if.end51.i190.if.end42_crit_edge:                 ; preds = %if.end51.i190
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

if.then58.i192:                                   ; preds = %if.end51.i190
  call void @__sanitizer_cov_trace_pc() #7
  %add.i191 = add nsw i32 %n.0.lcssa123.i186, 1
  %94 = ptrtoint ptr %nfaults.i117 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %add.i191, ptr %nfaults.i117, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.then58.i192, %if.end51.i190.if.end42_crit_edge, %for.end.i185.if.end42_crit_edge, %if.then.i176, %if.end.i162.if.end42_crit_edge, %land.lhs.true.i157.if.end42_crit_edge
  %failit.4 = phi i32 [ 1, %if.then.i176 ], [ 1, %for.end.i185.if.end42_crit_edge ], [ 1, %if.end51.i190.if.end42_crit_edge ], [ 1, %if.then58.i192 ], [ %72, %land.lhs.true.i157.if.end42_crit_edge ], [ %72, %if.end.i162.if.end42_crit_edge ]
  %arrayidx.i194 = getelementptr [6 x i32], ptr %1, i32 0, i32 5
  %95 = ptrtoint ptr %arrayidx.i194 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx.i194, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp.i195 = icmp eq i32 %96, 0
  br i1 %cmp.i195, label %land.lhs.true.i199, label %if.end42.if.end.i204_crit_edge

if.end42.if.end.i204_crit_edge:                   ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i204

land.lhs.true.i199:                               ; preds = %if.end42
  %arrayidx1.i196 = getelementptr %struct.faulty_conf, ptr %1, i32 0, i32 1, i32 5
  %call.i.i.i197 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx1.i196, i32 noundef 4) #5
  %97 = ptrtoint ptr %arrayidx1.i196 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %arrayidx1.i196, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %98)
  %cmp2.i198 = icmp slt i32 %98, 1
  br i1 %cmp2.i198, label %land.lhs.true.i199.if.end49_crit_edge, label %land.lhs.true.i199.if.end.i204_crit_edge

land.lhs.true.i199.if.end.i204_crit_edge:         ; preds = %land.lhs.true.i199
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i204

land.lhs.true.i199.if.end49_crit_edge:            ; preds = %land.lhs.true.i199
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

if.end.i204:                                      ; preds = %land.lhs.true.i199.if.end.i204_crit_edge, %if.end42.if.end.i204_crit_edge
  %arrayidx4.i200 = getelementptr %struct.faulty_conf, ptr %1, i32 0, i32 1, i32 5
  %call.i.i26.i201 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx4.i200, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @llvm.prefetch.p0(ptr %arrayidx4.i200, i32 1, i32 3, i32 1) #5
  %99 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx4.i200, ptr %arrayidx4.i200, i32 1, ptr elementtype(i32) %arrayidx4.i200) #5, !srcloc !48
  %asmresult.i.i.i.i.i.i202 = extractvalue { i32, i32 } %99, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i202)
  %cmp.i.i.i203 = icmp eq i32 %asmresult.i.i.i.i.i.i202, 0
  br i1 %cmp.i.i.i203, label %if.then6.i206, label %if.end.i204.if.end49_crit_edge

if.end.i204.if.end49_crit_edge:                   ; preds = %if.end.i204
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

if.then6.i206:                                    ; preds = %if.end.i204
  %100 = ptrtoint ptr %arrayidx.i194 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx.i194, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool.not.i205 = icmp eq i32 %101, 0
  br i1 %tobool.not.i205, label %if.then6.i206.if.then45_crit_edge, label %if.then9.i208

if.then6.i206.if.then45_crit_edge:                ; preds = %if.then6.i206
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then45

if.then9.i208:                                    ; preds = %if.then6.i206
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i27.i207 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx4.i200, i32 noundef 4) #5
  %102 = ptrtoint ptr %arrayidx4.i200 to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile i32 %101, ptr %arrayidx4.i200, align 4
  br label %if.then45

if.then45:                                        ; preds = %if.then9.i208, %if.then6.i206.if.then45_crit_edge
  %103 = ptrtoint ptr %bi_iter20 to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %bi_iter20, align 8
  %105 = ptrtoint ptr %nfaults.i117 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %nfaults.i117, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp114.i212 = icmp sgt i32 %106, 0
  br i1 %cmp114.i212, label %if.then45.for.body.i217_crit_edge, label %if.then45.if.end51.i232_crit_edge

if.then45.if.end51.i232_crit_edge:                ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51.i232

if.then45.for.body.i217_crit_edge:                ; preds = %if.then45
  br label %for.body.i217

for.body.i217:                                    ; preds = %if.else42.i222.for.body.i217_crit_edge, %if.then45.for.body.i217_crit_edge
  %n.0117.i213 = phi i32 [ %spec.select.i221, %if.else42.i222.for.body.i217_crit_edge ], [ %106, %if.then45.for.body.i217_crit_edge ]
  %i.0115.i214 = phi i32 [ %inc.i223, %if.else42.i222.for.body.i217_crit_edge ], [ 0, %if.then45.for.body.i217_crit_edge ]
  %arrayidx.i215 = getelementptr %struct.faulty_conf, ptr %1, i32 0, i32 2, i32 %i.0115.i214
  %107 = ptrtoint ptr %arrayidx.i215 to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %arrayidx.i215, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %108, i64 %104)
  %cmp2.i216 = icmp eq i64 %108, %104
  %arrayidx29.i = getelementptr %struct.faulty_conf, ptr %1, i32 0, i32 3, i32 %i.0115.i214
  %109 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx29.i, align 4
  br i1 %cmp2.i216, label %if.then.i218, label %if.else42.i222

if.then.i218:                                     ; preds = %for.body.i217
  call void @__sanitizer_cov_trace_pc() #7
  %111 = and i32 %110, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %111)
  %switch.i = icmp eq i32 %111, 2
  %spec.select107.i = select i1 %switch.i, i32 100, i32 5
  %112 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %spec.select107.i, ptr %arrayidx29.i, align 4
  br label %if.then51

if.else42.i222:                                   ; preds = %for.body.i217
  call void @__sanitizer_cov_trace_const_cmp4(i32 101, i32 %110)
  %cmp45.i220 = icmp eq i32 %110, 101
  %spec.select.i221 = select i1 %cmp45.i220, i32 %i.0115.i214, i32 %n.0117.i213
  %inc.i223 = add nuw nsw i32 %i.0115.i214, 1
  %exitcond.not.i224 = icmp eq i32 %inc.i223, %106
  br i1 %exitcond.not.i224, label %for.end.i227, label %if.else42.i222.for.body.i217_crit_edge

if.else42.i222.for.body.i217_crit_edge:           ; preds = %if.else42.i222
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i217

for.end.i227:                                     ; preds = %if.else42.i222
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %spec.select.i221)
  %cmp49.i226 = icmp sgt i32 %spec.select.i221, 49
  br i1 %cmp49.i226, label %for.end.i227.if.then51_crit_edge, label %for.end.i227.if.end51.i232_crit_edge

for.end.i227.if.end51.i232_crit_edge:             ; preds = %for.end.i227
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51.i232

for.end.i227.if.then51_crit_edge:                 ; preds = %for.end.i227
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then51

if.end51.i232:                                    ; preds = %for.end.i227.if.end51.i232_crit_edge, %if.then45.if.end51.i232_crit_edge
  %n.0.lcssa123.i228 = phi i32 [ %spec.select.i221, %for.end.i227.if.end51.i232_crit_edge ], [ %106, %if.then45.if.end51.i232_crit_edge ]
  %arrayidx53.i229 = getelementptr %struct.faulty_conf, ptr %1, i32 0, i32 2, i32 %n.0.lcssa123.i228
  %113 = ptrtoint ptr %arrayidx53.i229 to i32
  call void @__asan_store8_noabort(i32 %113)
  store i64 %104, ptr %arrayidx53.i229, align 8
  %arrayidx55.i230 = getelementptr %struct.faulty_conf, ptr %1, i32 0, i32 3, i32 %n.0.lcssa123.i228
  %114 = ptrtoint ptr %arrayidx55.i230 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 5, ptr %arrayidx55.i230, align 4
  %115 = ptrtoint ptr %nfaults.i117 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %nfaults.i117, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %116, i32 %n.0.lcssa123.i228)
  %cmp57.i231 = icmp eq i32 %116, %n.0.lcssa123.i228
  br i1 %cmp57.i231, label %if.then58.i234, label %if.end51.i232.if.then51_crit_edge

if.end51.i232.if.then51_crit_edge:                ; preds = %if.end51.i232
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then51

if.then58.i234:                                   ; preds = %if.end51.i232
  call void @__sanitizer_cov_trace_pc() #7
  %add.i233 = add nsw i32 %n.0.lcssa123.i228, 1
  %117 = ptrtoint ptr %nfaults.i117 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %add.i233, ptr %nfaults.i117, align 8
  br label %if.then51

if.end49:                                         ; preds = %if.end.i204.if.end49_crit_edge, %land.lhs.true.i199.if.end49_crit_edge, %if.end.i110.if.end49_crit_edge, %land.lhs.true.i105.if.end49_crit_edge
  %failit.5 = phi i32 [ %failit.1, %land.lhs.true.i105.if.end49_crit_edge ], [ %failit.1, %if.end.i110.if.end49_crit_edge ], [ %failit.4, %land.lhs.true.i199.if.end49_crit_edge ], [ %failit.4, %if.end.i204.if.end49_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %failit.5)
  %tobool50.not = icmp eq i32 %failit.5, 0
  br i1 %tobool50.not, label %if.else53, label %if.end49.if.then51_crit_edge

if.end49.if.then51_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then51

if.then51:                                        ; preds = %if.end49.if.then51_crit_edge, %if.then58.i234, %if.end51.i232.if.then51_crit_edge, %for.end.i227.if.then51_crit_edge, %if.then.i218, %if.then9.i114, %if.then6.i112.if.then51_crit_edge
  %bio_set = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 90
  %call52 = tail call ptr @bio_clone_fast(ptr noundef %bio, i32 noundef 3072, ptr noundef %bio_set) #5
  %rdev = getelementptr inbounds %struct.faulty_conf, ptr %1, i32 0, i32 5
  %118 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %rdev, align 4
  %bdev = getelementptr inbounds %struct.md_rdev, ptr %119, i32 0, i32 5
  %120 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %bdev, align 4
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %call52, i32 0, i32 3
  %122 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %123, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %call52, i32 0, i32 1
  %124 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %125, %121
  br i1 %cmp.not.i, label %if.then51.bio_set_dev.exit_crit_edge, label %if.then.i236

if.then51.bio_set_dev.exit_crit_edge:             ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #7
  br label %bio_set_dev.exit

if.then.i236:                                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #7
  %conv1.i8.i = and i16 %123, -2177
  %126 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i236, %if.then51.bio_set_dev.exit_crit_edge
  %127 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %121, ptr %bi_bdev.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %call52) #5
  %bi_private = getelementptr inbounds %struct.bio, ptr %call52, i32 0, i32 11
  %128 = ptrtoint ptr %bi_private to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %bio, ptr %bi_private, align 4
  %bi_end_io = getelementptr inbounds %struct.bio, ptr %call52, i32 0, i32 10
  %129 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr @faulty_fail, ptr %bi_end_io, align 8
  br label %if.end56

if.else53:                                        ; preds = %if.end49
  %rdev54 = getelementptr inbounds %struct.faulty_conf, ptr %1, i32 0, i32 5
  %130 = ptrtoint ptr %rdev54 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %rdev54, align 4
  %bdev55 = getelementptr inbounds %struct.md_rdev, ptr %131, i32 0, i32 5
  %132 = ptrtoint ptr %bdev55 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %bdev55, align 4
  %bi_flags.i.i238 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %134 = ptrtoint ptr %bi_flags.i.i238 to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %bi_flags.i.i238, align 4
  %conv1.i.i239 = and i16 %135, -2049
  store i16 %conv1.i.i239, ptr %bi_flags.i.i238, align 4
  %bi_bdev.i240 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %136 = ptrtoint ptr %bi_bdev.i240 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %bi_bdev.i240, align 4
  %cmp.not.i241 = icmp eq ptr %137, %133
  br i1 %cmp.not.i241, label %if.else53.bio_set_dev.exit245_crit_edge, label %if.then.i243

if.else53.bio_set_dev.exit245_crit_edge:          ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #7
  br label %bio_set_dev.exit245

if.then.i243:                                     ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #7
  %conv1.i8.i242 = and i16 %135, -2177
  %138 = ptrtoint ptr %bi_flags.i.i238 to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 %conv1.i8.i242, ptr %bi_flags.i.i238, align 4
  br label %bio_set_dev.exit245

bio_set_dev.exit245:                              ; preds = %if.then.i243, %if.else53.bio_set_dev.exit245_crit_edge
  %139 = ptrtoint ptr %bi_bdev.i240 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %133, ptr %bi_bdev.i240, align 4
  tail call void @bio_associate_blkg(ptr noundef %bio) #5
  br label %if.end56

if.end56:                                         ; preds = %bio_set_dev.exit245, %bio_set_dev.exit
  %bio.addr.0 = phi ptr [ %call52, %bio_set_dev.exit ], [ %bio, %bio_set_dev.exit245 ]
  tail call void @submit_bio_noacct(ptr noundef %bio.addr.0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %if.then2
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @faulty_run(ptr noundef %mddev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @md_check_no_bitmap(ptr noundef %mddev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 656) #8
  %tobool2.not = icmp eq ptr %call7.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %for.body.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  %arrayidx = getelementptr %struct.faulty_conf, ptr %call7.i, i32 0, i32 1, i32 0
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #5
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 0, ptr %arrayidx, align 8
  %2 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %call7.i, align 8
  %arrayidx.1 = getelementptr %struct.faulty_conf, ptr %call7.i, i32 0, i32 1, i32 1
  %call.i.i.1 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.1, i32 noundef 4) #5
  %3 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 0, ptr %arrayidx.1, align 4
  %arrayidx5.1 = getelementptr [6 x i32], ptr %call7.i, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %arrayidx5.1, align 4
  %arrayidx.2 = getelementptr %struct.faulty_conf, ptr %call7.i, i32 0, i32 1, i32 2
  %call.i.i.2 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.2, i32 noundef 4) #5
  %5 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 0, ptr %arrayidx.2, align 8
  %arrayidx5.2 = getelementptr [6 x i32], ptr %call7.i, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %arrayidx5.2, align 8
  %arrayidx.3 = getelementptr %struct.faulty_conf, ptr %call7.i, i32 0, i32 1, i32 3
  %call.i.i.3 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.3, i32 noundef 4) #5
  %7 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 0, ptr %arrayidx.3, align 4
  %arrayidx5.3 = getelementptr [6 x i32], ptr %call7.i, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %arrayidx5.3, align 4
  %arrayidx.4 = getelementptr %struct.faulty_conf, ptr %call7.i, i32 0, i32 1, i32 4
  %call.i.i.4 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.4, i32 noundef 4) #5
  %9 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 0, ptr %arrayidx.4, align 8
  %arrayidx5.4 = getelementptr [6 x i32], ptr %call7.i, i32 0, i32 4
  %10 = ptrtoint ptr %arrayidx5.4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %arrayidx5.4, align 8
  %arrayidx.5 = getelementptr %struct.faulty_conf, ptr %call7.i, i32 0, i32 1, i32 5
  %call.i.i.5 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.5, i32 noundef 4) #5
  %11 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 0, ptr %arrayidx.5, align 4
  %arrayidx5.5 = getelementptr [6 x i32], ptr %call7.i, i32 0, i32 5
  %12 = ptrtoint ptr %arrayidx5.5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %arrayidx5.5, align 4
  %nfaults = getelementptr inbounds %struct.faulty_conf, ptr %call7.i, i32 0, i32 4
  %13 = ptrtoint ptr %nfaults to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %nfaults, align 8
  %disks = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 4
  %14 = ptrtoint ptr %disks to i32
  call void @__asan_load4_noabort(i32 %14)
  %rdev.042 = load ptr, ptr %disks, align 8
  %cmp8.not43 = icmp eq ptr %rdev.042, %disks
  br i1 %cmp8.not43, label %for.body.preheader.for.end17_crit_edge, label %for.body9.lr.ph

for.body.preheader.for.end17_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end17

for.body9.lr.ph:                                  ; preds = %for.body.preheader
  %rdev10 = getelementptr inbounds %struct.faulty_conf, ptr %call7.i, i32 0, i32 5
  %gendisk = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 11
  br label %for.body9

for.body9:                                        ; preds = %for.body9.for.body9_crit_edge, %for.body9.lr.ph
  %rdev.044 = phi ptr [ %rdev.042, %for.body9.lr.ph ], [ %rdev.0, %for.body9.for.body9_crit_edge ]
  %15 = ptrtoint ptr %rdev10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %rdev.044, ptr %rdev10, align 4
  %16 = ptrtoint ptr %gendisk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gendisk, align 8
  %bdev = getelementptr inbounds %struct.md_rdev, ptr %rdev.044, i32 0, i32 5
  %18 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bdev, align 4
  %data_offset = getelementptr inbounds %struct.md_rdev, ptr %rdev.044, i32 0, i32 10
  %20 = ptrtoint ptr %data_offset to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %data_offset, align 8
  %shl = shl i64 %21, 9
  tail call void @disk_stack_limits(ptr noundef %17, ptr noundef %19, i64 noundef %shl) #5
  %22 = ptrtoint ptr %rdev.044 to i32
  call void @__asan_load4_noabort(i32 %22)
  %rdev.0 = load ptr, ptr %rdev.044, align 8
  %cmp8.not = icmp eq ptr %rdev.0, %disks
  br i1 %cmp8.not, label %for.body9.for.end17_crit_edge, label %for.body9.for.body9_crit_edge

for.body9.for.body9_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body9

for.body9.for.end17_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end17

for.end17:                                        ; preds = %for.body9.for.end17_crit_edge, %for.body.preheader.for.end17_crit_edge
  %dev_sectors.i = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 28
  %23 = ptrtoint ptr %dev_sectors.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %dev_sectors.i, align 8
  tail call void @md_set_array_sectors(ptr noundef %mddev, i64 noundef %24) #5
  %25 = ptrtoint ptr %mddev to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i, ptr %mddev, align 8
  %call19 = tail call i32 @faulty_reshape(ptr noundef %mddev)
  br label %cleanup

cleanup:                                          ; preds = %for.end17, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end17 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @faulty_free(ptr nocapture noundef readnone %mddev, ptr noundef %priv) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %priv) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @faulty_status(ptr noundef %seq, ptr nocapture noundef readonly %mddev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mddev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mddev, align 8
  %counters = getelementptr inbounds %struct.faulty_conf, ptr %1, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %counters, i32 noundef 4) #5
  %2 = ptrtoint ptr %counters to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %counters, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.1, i32 noundef %3, i32 noundef %5) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx3 = getelementptr %struct.faulty_conf, ptr %1, i32 0, i32 1, i32 1
  %call.i.i61 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx3, i32 noundef 4) #5
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp5.not = icmp eq i32 %7, 0
  br i1 %cmp5.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx8 = getelementptr [6 x i32], ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx8, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.2, i32 noundef %7, i32 noundef %9) #5
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %arrayidx11 = getelementptr %struct.faulty_conf, ptr %1, i32 0, i32 1, i32 2
  %call.i.i62 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx11, i32 noundef 4) #5
  %10 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %arrayidx11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp13.not = icmp eq i32 %11, 0
  br i1 %cmp13.not, label %if.end9.if.end17_crit_edge, label %if.then14

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx16 = getelementptr [6 x i32], ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx16, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.3, i32 noundef %11, i32 noundef %13) #5
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end9.if.end17_crit_edge
  %arrayidx19 = getelementptr %struct.faulty_conf, ptr %1, i32 0, i32 1, i32 3
  %call.i.i63 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx19, i32 noundef 4) #5
  %14 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %arrayidx19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp21.not = icmp eq i32 %15, 0
  br i1 %cmp21.not, label %if.end17.if.end25_crit_edge, label %if.then22

if.end17.if.end25_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx24 = getelementptr [6 x i32], ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx24, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.4, i32 noundef %15, i32 noundef %17) #5
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end17.if.end25_crit_edge
  %arrayidx27 = getelementptr %struct.faulty_conf, ptr %1, i32 0, i32 1, i32 5
  %call.i.i64 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx27, i32 noundef 4) #5
  %18 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %arrayidx27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp29.not = icmp eq i32 %19, 0
  br i1 %cmp29.not, label %if.end25.if.end33_crit_edge, label %if.then30

if.end25.if.end33_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

if.then30:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx32 = getelementptr [6 x i32], ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx32, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.5, i32 noundef %19, i32 noundef %21) #5
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %if.end25.if.end33_crit_edge
  %arrayidx35 = getelementptr %struct.faulty_conf, ptr %1, i32 0, i32 1, i32 4
  %call.i.i65 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx35, i32 noundef 4) #5
  %22 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp37.not = icmp eq i32 %23, 0
  br i1 %cmp37.not, label %if.end33.if.end39_crit_edge, label %if.then38

if.end33.if.end39_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

if.then38:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.6) #5
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end33.if.end39_crit_edge
  %nfaults = getelementptr inbounds %struct.faulty_conf, ptr %1, i32 0, i32 4
  %24 = ptrtoint ptr %nfaults to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nfaults, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.7, i32 noundef %25) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @faulty_size(ptr nocapture noundef readonly %mddev, i64 noundef %sectors, i32 noundef %raid_disks) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %raid_disks)
  %tobool.not = icmp eq i32 %raid_disks, 0
  br i1 %tobool.not, label %entry.if.end28_crit_edge, label %land.rhs

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

land.rhs:                                         ; preds = %entry
  %.b41 = load i1, ptr @faulty_size.__already_done, align 1
  br i1 %.b41, label %land.rhs.if.end28_crit_edge, label %if.then, !prof !50

land.rhs.if.end28_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @faulty_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 286, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.faulty_size) #5
  br label %if.end28

if.end28:                                         ; preds = %if.then, %land.rhs.if.end28_crit_edge, %entry.if.end28_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sectors)
  %cmp = icmp eq i64 %sectors, 0
  br i1 %cmp, label %if.then36, label %if.end28.return_crit_edge

if.end28.return_crit_edge:                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then36:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %dev_sectors = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 28
  %0 = ptrtoint ptr %dev_sectors to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %dev_sectors, align 8
  br label %return

return:                                           ; preds = %if.then36, %if.end28.return_crit_edge
  %retval.0 = phi i64 [ %1, %if.then36 ], [ %sectors, %if.end28.return_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @faulty_reshape(ptr nocapture noundef %mddev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %new_layout = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 37
  %0 = ptrtoint ptr %new_layout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %new_layout, align 8
  %and = and i32 %1, 31
  %shr = ashr i32 %1, 5
  %2 = ptrtoint ptr %mddev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mddev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %and, label %if.else9 [
    i32 30, label %if.then4
    i32 31, label %for.body.preheader
  ]

for.body.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %3, align 4
  %arrayidx8 = getelementptr %struct.faulty_conf, ptr %3, i32 0, i32 1, i32 0
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx8, i32 noundef 4) #5
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 0, ptr %arrayidx8, align 4
  %arrayidx.1 = getelementptr [6 x i32], ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %arrayidx.1, align 4
  %arrayidx8.1 = getelementptr %struct.faulty_conf, ptr %3, i32 0, i32 1, i32 1
  %call.i.i.1 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx8.1, i32 noundef 4) #5
  %8 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 0, ptr %arrayidx8.1, align 4
  %arrayidx.2 = getelementptr [6 x i32], ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %arrayidx.2, align 4
  %arrayidx8.2 = getelementptr %struct.faulty_conf, ptr %3, i32 0, i32 1, i32 2
  %call.i.i.2 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx8.2, i32 noundef 4) #5
  %10 = ptrtoint ptr %arrayidx8.2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 0, ptr %arrayidx8.2, align 4
  %arrayidx.3 = getelementptr [6 x i32], ptr %3, i32 0, i32 3
  %11 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %arrayidx.3, align 4
  %arrayidx8.3 = getelementptr %struct.faulty_conf, ptr %3, i32 0, i32 1, i32 3
  %call.i.i.3 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx8.3, i32 noundef 4) #5
  %12 = ptrtoint ptr %arrayidx8.3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 0, ptr %arrayidx8.3, align 4
  %arrayidx.4 = getelementptr [6 x i32], ptr %3, i32 0, i32 4
  %13 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %arrayidx.4, align 4
  %arrayidx8.4 = getelementptr %struct.faulty_conf, ptr %3, i32 0, i32 1, i32 4
  %call.i.i.4 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx8.4, i32 noundef 4) #5
  %14 = ptrtoint ptr %arrayidx8.4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 0, ptr %arrayidx8.4, align 4
  %arrayidx.5 = getelementptr [6 x i32], ptr %3, i32 0, i32 5
  %15 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %arrayidx.5, align 4
  %arrayidx8.5 = getelementptr %struct.faulty_conf, ptr %3, i32 0, i32 1, i32 5
  %call.i.i.5 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx8.5, i32 noundef 4) #5
  %16 = ptrtoint ptr %arrayidx8.5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 0, ptr %arrayidx8.5, align 4
  br label %if.end22

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %nfaults = getelementptr inbounds %struct.faulty_conf, ptr %3, i32 0, i32 4
  %17 = ptrtoint ptr %nfaults to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %nfaults, align 8
  br label %if.end22

if.else9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and)
  %cmp10 = icmp ult i32 %and, 6
  br i1 %cmp10, label %if.then11, label %if.else9.cleanup_crit_edge

if.else9.cleanup_crit_edge:                       ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then11:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx13 = getelementptr [6 x i32], ptr %3, i32 0, i32 %and
  %18 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %shr, ptr %arrayidx13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %1)
  %tobool.not = icmp ult i32 %1, 32
  %spec.select = select i1 %tobool.not, i32 1, i32 %shr
  %arrayidx18 = getelementptr %struct.faulty_conf, ptr %3, i32 0, i32 1, i32 %and
  %call.i.i45 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx18, i32 noundef 4) #5
  %19 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 %spec.select, ptr %arrayidx18, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then11, %if.then4, %for.body.preheader
  %20 = ptrtoint ptr %new_layout to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %new_layout, align 8
  %layout = getelementptr inbounds %struct.mddev, ptr %mddev, i32 0, i32 24
  %21 = ptrtoint ptr %layout to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %layout, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.else9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end22 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.else9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_clone_fast(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @faulty_fail(ptr noundef %bio) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bi_size, align 8
  %bi_iter1 = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 8
  %bi_size2 = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %bi_size2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %bi_size2, align 8
  %5 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %bi_iter, align 8
  %7 = ptrtoint ptr %bi_iter1 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %bi_iter1, align 8
  tail call void @bio_put(ptr noundef %bio) #5
  %bi_status.i = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %bi_status.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 10, ptr %bi_status.i, align 2
  tail call void @bio_endio(ptr noundef %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio_noacct(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_endio(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @md_check_no_bitmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disk_stack_limits(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @md_set_array_sectors(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_md_personality(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !36, !37}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @__initcall__kmod_faulty__283_357_raid_init6, !1, !"__initcall__kmod_faulty__283_357_raid_init6", i1 false, i1 false}
!1 = !{!"../drivers/md/md-faulty.c", i32 357, i32 1}
!2 = !{ptr @__exitcall_raid_exit, !3, !"__exitcall_raid_exit", i1 false, i1 false}
!3 = !{!"../drivers/md/md-faulty.c", i32 358, i32 1}
!4 = !{ptr @__UNIQUE_ID_file284, !5, !"__UNIQUE_ID_file284", i1 false, i1 false}
!5 = !{!"../drivers/md/md-faulty.c", i32 359, i32 1}
!6 = !{ptr @__UNIQUE_ID_license285, !5, !"__UNIQUE_ID_license285", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description286, !8, !"__UNIQUE_ID_description286", i1 false, i1 false}
!8 = !{!"../drivers/md/md-faulty.c", i32 360, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias287, !10, !"__UNIQUE_ID_alias287", i1 false, i1 false}
!10 = !{!"../drivers/md/md-faulty.c", i32 361, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias288, !12, !"__UNIQUE_ID_alias288", i1 false, i1 false}
!12 = !{!"../drivers/md/md-faulty.c", i32 362, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias289, !14, !"__UNIQUE_ID_alias289", i1 false, i1 false}
!14 = !{!"../drivers/md/md-faulty.c", i32 363, i32 1}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/md/md-faulty.c", i32 336, i32 11}
!17 = !{ptr @faulty_personality, !18, !"faulty_personality", i1 false, i1 false}
!18 = !{!"../drivers/md/md-faulty.c", i32 334, i32 30}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/md/md-faulty.c", i32 227, i32 19}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/md/md-faulty.c", i32 231, i32 19}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/md/md-faulty.c", i32 235, i32 19}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/md/md-faulty.c", i32 239, i32 19}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/md/md-faulty.c", i32 244, i32 19}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/md/md-faulty.c", i32 248, i32 19}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/md/md-faulty.c", i32 250, i32 18}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../drivers/md/md-faulty.c", i32 285, i32 2}
!35 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @__func__.faulty_size, !34, !"<string literal>", i1 false, i1 false}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{i64 2148554361}
!48 = !{i64 2148469094, i64 2148469126, i64 2148469155, i64 2148469189, i64 2148469220, i64 2148469243}
!49 = !{i64 2148554590}
!50 = !{!"branch_weights", i32 2000, i32 1}
