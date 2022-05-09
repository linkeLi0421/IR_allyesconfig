; ModuleID = '/llk/IR_all_yes/security/landlock/ruleset.c_pt.bc'
source_filename = "../security/landlock/ruleset.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.landlock_ruleset = type { %struct.rb_root, ptr, %union.anon }
%struct.rb_root = type { ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.mutex, %struct.refcount_struct, i32, i32, [0 x i16] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.landlock_layer = type { i16, i16 }
%struct.landlock_rule = type { %struct.rb_node, ptr, i32, [0 x %struct.landlock_layer] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.landlock_hierarchy = type { ptr, %struct.refcount_struct }

@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"security/landlock/ruleset.c\00", [36 x i8] zeroinitializer }, align 32
@landlock_put_ruleset_deferred.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&ruleset->work_free)\00", [57 x i8] zeroinitializer }, align 32
@landlock_merge_ruleset.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@create_ruleset.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&new_ruleset->lock\00", [45 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@insert_rule.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@insert_rule.__already_done.3 = internal unnamed_addr global i1 false, section ".data.once", align 1
@insert_rule.__already_done.4 = internal unnamed_addr global i1 false, section ".data.once", align 1
@insert_rule.__already_done.5 = internal unnamed_addr global i1 false, section ".data.once", align 1
@insert_rule.__already_done.6 = internal unnamed_addr global i1 false, section ".data.once", align 1
@create_rule.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@inherit_ruleset.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@inherit_ruleset.__already_done.7 = internal unnamed_addr global i1 false, section ".data.once", align 1
@merge_ruleset.__already_done.8 = internal unnamed_addr global i1 false, section ".data.once", align 1
@merge_ruleset.__already_done.9 = internal unnamed_addr global i1 false, section ".data.once", align 1
@merge_ruleset.__already_done.10 = internal unnamed_addr global i1 false, section ".data.once", align 1
@merge_ruleset.__already_done.11 = internal unnamed_addr global i1 false, section ".data.once", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 370, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 386, i32 3 }
@___asan_gen_.21 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private constant [31 x i8] c"../security/landlock/ruleset.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 36, i32 2 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @.str, ptr @landlock_put_ruleset_deferred.__key, ptr @.str.1, ptr @create_ruleset.__key, ptr @.str.2], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @landlock_put_ruleset_deferred.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_ruleset.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @landlock_create_ruleset(i32 noundef %fs_access_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fs_access_mask)
  %tobool.not = icmp eq i32 %fs_access_mask, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 1, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 1, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 4197824, i32 noundef 114) #11
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %create_ruleset.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

create_ruleset.exit:                              ; preds = %if.end
  %1 = getelementptr inbounds %struct.landlock_ruleset, ptr %call7.i.i.i, i32 0, i32 2
  %usage.i = getelementptr inbounds %struct.landlock_ruleset, ptr %call7.i.i.i, i32 0, i32 2, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #8
  %2 = ptrtoint ptr %usage.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 1, ptr %usage.i, align 4
  tail call void @__mutex_init(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @create_ruleset.__key) #8
  %3 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %call7.i.i.i, align 8
  %num_layers3.i = getelementptr inbounds %struct.landlock_ruleset, ptr %call7.i.i.i, i32 0, i32 2, i32 0, i32 3
  %4 = ptrtoint ptr %num_layers3.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %num_layers3.i, align 4
  %cmp.i = icmp ugt ptr %call7.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %create_ruleset.exit.cleanup_crit_edge, label %if.then3

create_ruleset.exit.cleanup_crit_edge:            ; preds = %create_ruleset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %create_ruleset.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv = trunc i32 %fs_access_mask to i16
  %fs_access_masks = getelementptr inbounds %struct.landlock_ruleset, ptr %call7.i.i.i, i32 1
  %5 = ptrtoint ptr %fs_access_masks to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %fs_access_masks, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %create_ruleset.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i.i, %if.then3 ], [ %call7.i.i.i, %create_ruleset.exit.cleanup_crit_edge ], [ inttoptr (i32 -42 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @landlock_insert_rule(ptr noundef %ruleset, ptr noundef %object, i32 noundef %access) local_unnamed_addr #0 align 64 {
entry:
  %layers = alloca [1 x %struct.landlock_layer], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %layers) #8
  %0 = getelementptr inbounds %struct.landlock_layer, ptr %layers, i32 0, i32 1
  %1 = ptrtoint ptr %layers to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %layers, align 2
  %conv = trunc i32 %access to i16
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %0, align 2
  %call = call fastcc i32 @insert_rule(ptr noundef %ruleset, ptr noundef %object, ptr noundef nonnull %layers, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %layers) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @insert_rule(ptr noundef %ruleset, ptr noundef %object, ptr noundef %layers, i32 noundef %num_layers) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 153) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.landlock_ruleset, ptr %ruleset, i32 0, i32 2, i32 0, i32 0, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end16, label %land.rhs.if.end_crit_edge, !prof !45

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end16:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 154, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end16, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool30.not = icmp eq ptr %object, null
  %tobool31.not = icmp eq ptr %layers, null
  %spec.select = or i1 %tobool30.not, %tobool31.not
  br i1 %spec.select, label %land.rhs39, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end
  %1 = ptrtoint ptr %ruleset to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ruleset, align 4
  %tobool88.not449 = icmp eq ptr %2, null
  br i1 %tobool88.not449, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

land.rhs39:                                       ; preds = %if.end
  %.b433 = load i1, ptr @insert_rule.__already_done, align 1
  br i1 %.b433, label %land.rhs39.cleanup375_crit_edge, label %if.then50, !prof !46

land.rhs39.cleanup375_crit_edge:                  ; preds = %land.rhs39
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup375

if.then50:                                        ; preds = %land.rhs39
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @insert_rule.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 155, i32 noundef 9, ptr noundef null) #8
  br label %cleanup375

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %3 = phi ptr [ %24, %cleanup.while.body_crit_edge ], [ %2, %while.cond.preheader.while.body_crit_edge ]
  %object90 = getelementptr inbounds %struct.landlock_rule, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %object90 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %object90, align 4
  %cmp91.not = icmp eq ptr %5, %object
  br i1 %cmp91.not, label %if.end97, label %cleanup

if.end97:                                         ; preds = %while.body
  %object90.le = getelementptr inbounds %struct.landlock_rule, ptr %3, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_layers)
  %cmp99.not = icmp eq i32 %num_layers, 1
  br i1 %cmp99.not, label %if.end154, label %land.rhs106

land.rhs106:                                      ; preds = %if.end97
  %.b424432 = load i1, ptr @insert_rule.__already_done.3, align 1
  br i1 %.b424432, label %land.rhs106.cleanup375_crit_edge, label %if.then117, !prof !46

land.rhs106.cleanup375_crit_edge:                 ; preds = %land.rhs106
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup375

if.then117:                                       ; preds = %land.rhs106
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @insert_rule.__already_done.3, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 172, i32 noundef 9, ptr noundef null) #8
  br label %cleanup375

if.end154:                                        ; preds = %if.end97
  %6 = ptrtoint ptr %layers to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %layers, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp155 = icmp eq i16 %7, 0
  br i1 %cmp155, label %if.then157, label %if.end288

if.then157:                                       ; preds = %if.end154
  %num_layers159 = getelementptr inbounds %struct.landlock_rule, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %num_layers159 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_layers159, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp160.not = icmp eq i32 %9, 1
  br i1 %cmp160.not, label %if.end217, label %land.rhs169

land.rhs169:                                      ; preds = %if.then157
  %.b425431 = load i1, ptr @insert_rule.__already_done.4, align 1
  br i1 %.b425431, label %land.rhs169.cleanup375_crit_edge, label %if.then180, !prof !46

land.rhs169.cleanup375_crit_edge:                 ; preds = %land.rhs169
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup375

if.then180:                                       ; preds = %land.rhs169
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @insert_rule.__already_done.4, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 181, i32 noundef 9, ptr noundef null) #8
  br label %cleanup375

if.end217:                                        ; preds = %if.then157
  %layers219 = getelementptr inbounds %struct.landlock_rule, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %layers219 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %layers219, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp223.not = icmp eq i16 %11, 0
  br i1 %cmp223.not, label %if.end280, label %land.rhs232

land.rhs232:                                      ; preds = %if.end217
  %.b426430 = load i1, ptr @insert_rule.__already_done.5, align 1
  br i1 %.b426430, label %land.rhs232.cleanup375_crit_edge, label %if.then243, !prof !46

land.rhs232.cleanup375_crit_edge:                 ; preds = %land.rhs232
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup375

if.then243:                                       ; preds = %land.rhs232
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @insert_rule.__already_done.5, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 183, i32 noundef 9, ptr noundef null) #8
  br label %cleanup375

if.end280:                                        ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #10
  %access = getelementptr inbounds %struct.landlock_layer, ptr %layers, i32 0, i32 1
  %12 = ptrtoint ptr %access to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %access, align 2
  %access285 = getelementptr inbounds %struct.landlock_layer, ptr %layers219, i32 0, i32 1
  %14 = ptrtoint ptr %access285 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %access285, align 2
  %or429 = or i16 %15, %13
  store i16 %or429, ptr %access285, align 2
  br label %cleanup375

if.end288:                                        ; preds = %if.end154
  %layers290 = getelementptr inbounds %struct.landlock_rule, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %layers290 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %layers290, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp294 = icmp eq i16 %17, 0
  br i1 %cmp294, label %land.rhs303, label %if.end351

land.rhs303:                                      ; preds = %if.end288
  %.b427428 = load i1, ptr @insert_rule.__already_done.6, align 1
  br i1 %.b427428, label %land.rhs303.cleanup375_crit_edge, label %if.then314, !prof !46

land.rhs303.cleanup375_crit_edge:                 ; preds = %land.rhs303
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup375

if.then314:                                       ; preds = %land.rhs303
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @insert_rule.__already_done.6, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 189, i32 noundef 9, ptr noundef null) #8
  br label %cleanup375

if.end351:                                        ; preds = %if.end288
  %num_layers353 = getelementptr inbounds %struct.landlock_rule, ptr %3, i32 0, i32 2
  %18 = ptrtoint ptr %num_layers353 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_layers353, align 4
  %call355 = tail call fastcc ptr @create_rule(ptr noundef %object, ptr noundef %layers290, i32 noundef %19, ptr noundef %layers)
  %cmp.i = icmp ugt ptr %call355, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then357, label %free_rule.exit

if.then357:                                       ; preds = %if.end351
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %call355 to i32
  br label %cleanup375

free_rule.exit:                                   ; preds = %if.end351
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rb_replace_node(ptr noundef nonnull %3, ptr noundef %call355, ptr noundef %ruleset) #8
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 106) #8
  %21 = ptrtoint ptr %object90.le to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %object90.le, align 4
  tail call void @landlock_put_object(ptr noundef %22) #8
  tail call void @kfree(ptr noundef nonnull %3) #8
  br label %cleanup375

cleanup:                                          ; preds = %while.body
  %cmp94 = icmp ult ptr %5, %object
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %3, i32 0, i32 1
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %3, i32 0, i32 2
  %walker_node.1 = select i1 %cmp94, ptr %rb_right, ptr %rb_left
  %23 = ptrtoint ptr %walker_node.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %walker_node.1, align 4
  %tobool88.not = icmp eq ptr %24, null
  br i1 %tobool88.not, label %while.cond.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  %phi.cast.le = ptrtoint ptr %3 to i32
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %parent_node.0.lcssa = phi i32 [ %phi.cast.le, %while.cond.while.end_crit_edge ], [ 0, %while.cond.preheader.while.end_crit_edge ]
  %walker_node.0.lcssa = phi ptr [ %walker_node.1, %while.cond.while.end_crit_edge ], [ %ruleset, %while.cond.preheader.while.end_crit_edge ]
  %num_rules = getelementptr inbounds %struct.landlock_ruleset, ptr %ruleset, i32 0, i32 2, i32 0, i32 2
  %25 = ptrtoint ptr %num_rules to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_rules, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %cmp362 = icmp eq i32 %26, -1
  br i1 %cmp362, label %while.end.cleanup375_crit_edge, label %if.end365

while.end.cleanup375_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup375

if.end365:                                        ; preds = %while.end
  %27 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_layers, i32 4) #8
  %28 = extractvalue { i32, i1 } %27, 1
  %29 = extractvalue { i32, i1 } %27, 0
  %spec.select.i.i = tail call i32 @llvm.uadd.sat.i32(i32 %29, i32 20) #8
  %retval.0.i.i = select i1 %28, i32 -1, i32 %spec.select.i.i
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i.i, i32 noundef 4197824) #12
  %tobool43.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool43.not.i, label %if.end365.if.then368_crit_edge, label %if.then.i.i

if.end365.if.then368_crit_edge:                   ; preds = %if.end365
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then368

if.then.i.i:                                      ; preds = %if.end365
  %30 = ptrtoint ptr %call9.i.i.i to i32
  %31 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %call9.i.i.i, align 128
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %object, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull %object, i32 1, i32 3, i32 1) #8
  %32 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %object, ptr nonnull %object, i32 1, ptr nonnull elementtype(i32) %object) #8, !srcloc !47
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !45

if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %33 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %.not.i.i.i.i.i = icmp sgt i32 %33, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.create_rule.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !46

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.create_rule.exit_crit_edge:     ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %create_rule.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %object, i32 noundef %.sink.i.i.i.i.i) #8
  br label %create_rule.exit

create_rule.exit:                                 ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.create_rule.exit_crit_edge
  %object48.i = getelementptr inbounds %struct.landlock_rule, ptr %call9.i.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %object48.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %object, ptr %object48.i, align 4
  %num_layers49.i = getelementptr inbounds %struct.landlock_rule, ptr %call9.i.i.i, i32 0, i32 2
  %35 = ptrtoint ptr %num_layers49.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %num_layers, ptr %num_layers49.i, align 16
  %layers50.i = getelementptr inbounds %struct.landlock_rule, ptr %call9.i.i.i, i32 0, i32 3
  %retval.0.i77.i = select i1 %28, i32 -1, i32 %29
  %36 = call ptr @memcpy(ptr %layers50.i, ptr %layers, i32 %retval.0.i77.i)
  %cmp.i439 = icmp ugt ptr %call9.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i439, label %create_rule.exit.if.then368_crit_edge, label %if.end370

create_rule.exit.if.then368_crit_edge:            ; preds = %create_rule.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then368

if.then368:                                       ; preds = %create_rule.exit.if.then368_crit_edge, %if.end365.if.then368_crit_edge
  %retval.0.i445 = phi ptr [ %call9.i.i.i, %create_rule.exit.if.then368_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end365.if.then368_crit_edge ]
  %37 = ptrtoint ptr %retval.0.i445 to i32
  br label %cleanup375

if.end370:                                        ; preds = %create_rule.exit
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %parent_node.0.lcssa, ptr %call9.i.i.i, align 128
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %call9.i.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %rb_right.i, align 4
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %call9.i.i.i, i32 0, i32 2
  %40 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %rb_left.i, align 8
  %41 = ptrtoint ptr %walker_node.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call9.i.i.i, ptr %walker_node.0.lcssa, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %call9.i.i.i, ptr noundef %ruleset) #8
  %42 = ptrtoint ptr %num_rules to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_rules, align 4
  %inc = add i32 %43, 1
  store i32 %inc, ptr %num_rules, align 4
  br label %cleanup375

cleanup375:                                       ; preds = %if.end370, %if.then368, %while.end.cleanup375_crit_edge, %free_rule.exit, %if.then357, %if.then314, %land.rhs303.cleanup375_crit_edge, %if.end280, %if.then243, %land.rhs232.cleanup375_crit_edge, %if.then180, %land.rhs169.cleanup375_crit_edge, %if.then117, %land.rhs106.cleanup375_crit_edge, %if.then50, %land.rhs39.cleanup375_crit_edge
  %retval.2 = phi i32 [ %37, %if.then368 ], [ 0, %if.end370 ], [ -2, %if.then50 ], [ -7, %while.end.cleanup375_crit_edge ], [ -2, %land.rhs39.cleanup375_crit_edge ], [ -22, %land.rhs303.cleanup375_crit_edge ], [ -22, %land.rhs232.cleanup375_crit_edge ], [ -22, %land.rhs169.cleanup375_crit_edge ], [ -22, %land.rhs106.cleanup375_crit_edge ], [ -22, %if.then314 ], [ -22, %if.then243 ], [ -22, %if.then180 ], [ -22, %if.then117 ], [ 0, %free_rule.exit ], [ %20, %if.then357 ], [ 0, %if.end280 ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @landlock_put_ruleset(ptr noundef %ruleset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 370) #8
  %tobool.not = icmp eq ptr %ruleset, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %usage = getelementptr inbounds %struct.landlock_ruleset, ptr %ruleset, i32 0, i32 2, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !48
  tail call void @llvm.prefetch.p0(ptr %usage, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage, ptr %usage, i32 1, ptr elementtype(i32) %usage) #8, !srcloc !49
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !46

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %usage, i32 noundef 3) #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !50
  tail call fastcc void @free_ruleset(ptr noundef nonnull %ruleset)
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_ruleset(ptr noundef %ruleset) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 360) #8
  %call = tail call ptr @rb_first_postorder(ptr noundef %ruleset) #8
  %tobool5.not29 = icmp eq ptr %call, null
  br i1 %tobool5.not29, label %entry.for.end_crit_edge, label %entry.free_rule.exit_crit_edge

entry.free_rule.exit_crit_edge:                   ; preds = %entry
  br label %free_rule.exit

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

free_rule.exit:                                   ; preds = %free_rule.exit.free_rule.exit_crit_edge, %entry.free_rule.exit_crit_edge
  %freeme.030 = phi ptr [ %call7, %free_rule.exit.free_rule.exit_crit_edge ], [ %call, %entry.free_rule.exit_crit_edge ]
  %call7 = tail call ptr @rb_next_postorder(ptr noundef nonnull %freeme.030) #8
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 106) #8
  %object.i = getelementptr inbounds %struct.landlock_rule, ptr %freeme.030, i32 0, i32 1
  %0 = ptrtoint ptr %object.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %object.i, align 4
  tail call void @landlock_put_object(ptr noundef %1) #8
  tail call void @kfree(ptr noundef nonnull %freeme.030) #8
  %tobool5.not = icmp eq ptr %call7, null
  br i1 %tobool5.not, label %free_rule.exit.for.end_crit_edge, label %free_rule.exit.free_rule.exit_crit_edge

free_rule.exit.free_rule.exit_crit_edge:          ; preds = %free_rule.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_rule.exit

free_rule.exit.for.end_crit_edge:                 ; preds = %free_rule.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %free_rule.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %hierarchy = getelementptr inbounds %struct.landlock_ruleset, ptr %ruleset, i32 0, i32 1
  %2 = ptrtoint ptr %hierarchy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hierarchy, align 4
  %tobool.not4.i = icmp eq ptr %3, null
  br i1 %tobool.not4.i, label %for.end.put_hierarchy.exit_crit_edge, label %for.end.land.rhs.i_crit_edge

for.end.land.rhs.i_crit_edge:                     ; preds = %for.end
  br label %land.rhs.i

for.end.put_hierarchy.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_hierarchy.exit

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %for.end.land.rhs.i_crit_edge
  %hierarchy.addr.05.i = phi ptr [ %6, %while.body.i.land.rhs.i_crit_edge ], [ %3, %for.end.land.rhs.i_crit_edge ]
  %usage.i = getelementptr inbounds %struct.landlock_hierarchy, ptr %hierarchy.addr.05.i, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !48
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #8, !srcloc !49
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %while.body.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.rhs.i
  %asmresult.i.i.i.i.i.i.i.le = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.le)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.le, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_hierarchy.exit_crit_edge, label %if.then10.i.i.i.i, !prof !46

if.end5.i.i.i.i.put_hierarchy.exit_crit_edge:     ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_hierarchy.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #8
  br label %put_hierarchy.exit

while.body.i:                                     ; preds = %land.rhs.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !50
  %5 = ptrtoint ptr %hierarchy.addr.05.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hierarchy.addr.05.i, align 4
  tail call void @kfree(ptr noundef nonnull %hierarchy.addr.05.i) #8
  %tobool.not.i26 = icmp eq ptr %6, null
  br i1 %tobool.not.i26, label %while.body.i.put_hierarchy.exit_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

while.body.i.put_hierarchy.exit_crit_edge:        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_hierarchy.exit

put_hierarchy.exit:                               ; preds = %while.body.i.put_hierarchy.exit_crit_edge, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_hierarchy.exit_crit_edge, %for.end.put_hierarchy.exit_crit_edge
  tail call void @kfree(ptr noundef %ruleset) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @landlock_put_ruleset_deferred(ptr noundef %ruleset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ruleset, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %usage = getelementptr inbounds %struct.landlock_ruleset, ptr %ruleset, i32 0, i32 2, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !48
  tail call void @llvm.prefetch.p0(ptr %usage, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage, ptr %usage, i32 1, ptr elementtype(i32) %usage) #8, !srcloc !49
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %do.body, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !46

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %usage, i32 noundef 3) #8
  br label %if.end

do.body:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !50
  %1 = getelementptr inbounds %struct.landlock_ruleset, ptr %ruleset, i32 0, i32 2
  tail call void @__init_work(ptr noundef %1, i32 noundef 0) #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -64, ptr %1, align 4
  %lockdep_map = getelementptr inbounds %struct.landlock_ruleset, ptr %ruleset, i32 0, i32 2, i32 0, i32 0, i32 1, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.1, ptr noundef nonnull @landlock_put_ruleset_deferred.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry1 = getelementptr inbounds %struct.landlock_ruleset, ptr %ruleset, i32 0, i32 2, i32 0, i32 0, i32 1
  %3 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry1, ptr %entry1, align 4
  %prev.i = getelementptr inbounds %struct.landlock_ruleset, ptr %ruleset, i32 0, i32 2, i32 0, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry1, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.landlock_ruleset, ptr %ruleset, i32 0, i32 2, i32 0, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @free_ruleset_work, ptr %func, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %6 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %1) #8
  br label %if.end

if.end:                                           ; preds = %do.body, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @free_ruleset_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -8
  tail call fastcc void @free_ruleset(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @landlock_merge_ruleset(ptr noundef %parent, ptr noundef %ruleset) local_unnamed_addr #0 align 64 {
entry:
  %layers.i100 = alloca [1 x %struct.landlock_layer], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 408) #8
  %tobool.not = icmp eq ptr %ruleset, null
  %cmp = icmp eq ptr %parent, %ruleset
  %spec.select = or i1 %tobool.not, %cmp
  br i1 %spec.select, label %land.rhs, label %if.end44

land.rhs:                                         ; preds = %entry
  %.b93 = load i1, ptr @landlock_merge_ruleset.__already_done, align 1
  br i1 %.b93, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !46

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @landlock_merge_ruleset.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 409, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end44:                                         ; preds = %entry
  %tobool45.not = icmp eq ptr %parent, null
  br i1 %tobool45.not, label %if.end44.if.end8.i.i.i_crit_edge, label %if.then46

if.end44.if.end8.i.i.i_crit_edge:                 ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i.i.i

if.then46:                                        ; preds = %if.end44
  %num_layers47 = getelementptr inbounds %struct.landlock_ruleset, ptr %parent, i32 0, i32 2, i32 0, i32 3
  %0 = ptrtoint ptr %num_layers47 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_layers47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %1)
  %cmp48 = icmp ugt i32 %1, 63
  br i1 %cmp48, label %if.then46.cleanup_crit_edge, label %if.end51

if.then46.cleanup_crit_edge:                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end51:                                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  %add = add nuw nsw i32 %1, 1
  br label %if.end8.i.i.i

if.end8.i.i.i:                                    ; preds = %if.end51, %if.end44.if.end8.i.i.i_crit_edge
  %num_layers.0 = phi i32 [ %add, %if.end51 ], [ 1, %if.end44.if.end8.i.i.i_crit_edge ]
  %2 = shl nuw nsw i32 %num_layers.0, 1
  %spec.select.i.i135 = add nuw nsw i32 %2, 112
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i.i135, i32 noundef 4197824) #12
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i.i.cleanup_crit_edge, label %create_ruleset.exit

if.end8.i.i.i.cleanup_crit_edge:                  ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

create_ruleset.exit:                              ; preds = %if.end8.i.i.i
  %3 = getelementptr inbounds %struct.landlock_ruleset, ptr %call9.i.i.i, i32 0, i32 2
  %usage.i = getelementptr inbounds %struct.landlock_ruleset, ptr %call9.i.i.i, i32 0, i32 2, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #8
  %4 = ptrtoint ptr %usage.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 1, ptr %usage.i, align 4
  tail call void @__mutex_init(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef nonnull @create_ruleset.__key) #8
  %5 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %call9.i.i.i, align 128
  %num_layers3.i = getelementptr inbounds %struct.landlock_ruleset, ptr %call9.i.i.i, i32 0, i32 2, i32 0, i32 3
  %6 = ptrtoint ptr %num_layers3.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %num_layers.0, ptr %num_layers3.i, align 4
  %cmp.i = icmp ugt ptr %call9.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %create_ruleset.exit.cleanup_crit_edge, label %if.end57

create_ruleset.exit.cleanup_crit_edge:            ; preds = %create_ruleset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end57:                                         ; preds = %create_ruleset.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 1, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 1, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 4197824, i32 noundef 8) #11
  %hierarchy = getelementptr inbounds %struct.landlock_ruleset, ptr %call9.i.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %hierarchy to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %hierarchy, align 4
  %tobool60.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool60.not, label %if.end57.land.lhs.true.i_crit_edge, label %if.end62

if.end57.land.lhs.true.i_crit_edge:               ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

if.end62:                                         ; preds = %if.end57
  %usage = getelementptr inbounds %struct.landlock_hierarchy, ptr %call7.i.i, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #8
  %9 = ptrtoint ptr %usage to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 1, ptr %usage, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 318) #8
  br i1 %tobool45.not, label %if.end62.lor.rhs.i_crit_edge, label %if.end.i97

if.end62.lor.rhs.i_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.rhs.i

if.end.i97:                                       ; preds = %if.end62
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #8
  %10 = getelementptr inbounds %struct.landlock_ruleset, ptr %parent, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %10, i32 noundef 1) #8
  %call.i = tail call ptr @rb_first_postorder(ptr noundef nonnull %parent) #8
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.rhs.i.for.cond.i_crit_edge, %if.end.i97
  %walker_rule.0.i = phi ptr [ %call.i, %if.end.i97 ], [ %call9.i, %land.rhs.i.for.cond.i_crit_edge ]
  %tobool7.not.i = icmp eq ptr %walker_rule.0.i, null
  br i1 %tobool7.not.i, label %for.end.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %for.cond.i
  %call9.i = tail call ptr @rb_next_postorder(ptr noundef nonnull %walker_rule.0.i) #8
  %object.i = getelementptr inbounds %struct.landlock_rule, ptr %walker_rule.0.i, i32 0, i32 1
  %11 = ptrtoint ptr %object.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %object.i, align 4
  %layers.i = getelementptr inbounds %struct.landlock_rule, ptr %walker_rule.0.i, i32 0, i32 3
  %num_layers.i = getelementptr inbounds %struct.landlock_rule, ptr %walker_rule.0.i, i32 0, i32 2
  %13 = ptrtoint ptr %num_layers.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_layers.i, align 4
  %call21.i = tail call fastcc i32 @insert_rule(ptr noundef nonnull %call9.i.i.i, ptr noundef %12, ptr noundef %layers.i, i32 noundef %14) #8
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %land.rhs.i.for.cond.i_crit_edge, label %land.rhs.i.inherit_ruleset.exit_crit_edge

land.rhs.i.inherit_ruleset.exit_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %inherit_ruleset.exit

land.rhs.i.for.cond.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  %15 = ptrtoint ptr %num_layers3.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_layers3.i, align 4
  %num_layers26.i = getelementptr inbounds %struct.landlock_ruleset, ptr %parent, i32 0, i32 2, i32 0, i32 3
  %17 = ptrtoint ptr %num_layers26.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_layers26.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp.not.i = icmp ugt i32 %16, %18
  br i1 %cmp.not.i, label %if.end72.i, label %land.rhs29.i

land.rhs29.i:                                     ; preds = %for.end.i
  %.b171.i = load i1, ptr @inherit_ruleset.__already_done, align 1
  br i1 %.b171.i, label %land.rhs29.i.inherit_ruleset.exit_crit_edge, label %if.then36.i, !prof !46

land.rhs29.i.inherit_ruleset.exit_crit_edge:      ; preds = %land.rhs29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %inherit_ruleset.exit

if.then36.i:                                      ; preds = %land.rhs29.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @inherit_ruleset.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 335, i32 noundef 9, ptr noundef null) #8
  br label %inherit_ruleset.exit

if.end72.i:                                       ; preds = %for.end.i
  %fs_access_masks.i = getelementptr inbounds %struct.landlock_ruleset, ptr %call9.i.i.i, i32 1
  %fs_access_masks73.i = getelementptr inbounds %struct.landlock_ruleset, ptr %parent, i32 1
  %19 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %18, i32 2) #8
  %20 = extractvalue { i32, i1 } %19, 1
  %21 = extractvalue { i32, i1 } %19, 0
  %retval.0.i.i98 = select i1 %20, i32 -1, i32 %21
  %22 = call ptr @memcpy(ptr %fs_access_masks.i, ptr %fs_access_masks73.i, i32 %retval.0.i.i98)
  %hierarchy.i = getelementptr inbounds %struct.landlock_ruleset, ptr %parent, i32 0, i32 1
  %23 = ptrtoint ptr %hierarchy.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hierarchy.i, align 4
  %tobool78.not.i = icmp eq ptr %24, null
  br i1 %tobool78.not.i, label %land.rhs87.i, label %if.then.i.i

land.rhs87.i:                                     ; preds = %if.end72.i
  %.b169170.i = load i1, ptr @inherit_ruleset.__already_done.7, align 1
  br i1 %.b169170.i, label %land.rhs87.i.inherit_ruleset.exit_crit_edge, label %if.then98.i, !prof !46

land.rhs87.i.inherit_ruleset.exit_crit_edge:      ; preds = %land.rhs87.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %inherit_ruleset.exit

if.then98.i:                                      ; preds = %land.rhs87.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @inherit_ruleset.__already_done.7, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 343, i32 noundef 9, ptr noundef null) #8
  br label %inherit_ruleset.exit

if.then.i.i:                                      ; preds = %if.end72.i
  %usage.i.i = getelementptr inbounds %struct.landlock_hierarchy, ptr %24, i32 0, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %usage.i.i, i32 1, i32 3, i32 1) #8
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i.i, ptr %usage.i.i, i32 1, ptr elementtype(i32) %usage.i.i) #8, !srcloc !47
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !45

if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %26 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %.not.i.i.i.i.i = icmp sgt i32 %26, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.get_hierarchy.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !46

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.get_hierarchy.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_hierarchy.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %usage.i.i, i32 noundef %.sink.i.i.i.i.i) #8
  br label %get_hierarchy.exit.i

get_hierarchy.exit.i:                             ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.get_hierarchy.exit.i_crit_edge
  %27 = ptrtoint ptr %hierarchy.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hierarchy.i, align 4
  %29 = ptrtoint ptr %hierarchy to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hierarchy, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %30, align 4
  br label %inherit_ruleset.exit

inherit_ruleset.exit:                             ; preds = %get_hierarchy.exit.i, %if.then98.i, %land.rhs87.i.inherit_ruleset.exit_crit_edge, %if.then36.i, %land.rhs29.i.inherit_ruleset.exit_crit_edge, %land.rhs.i.inherit_ruleset.exit_crit_edge
  %err.1.i = phi i32 [ 0, %get_hierarchy.exit.i ], [ -22, %if.then36.i ], [ -22, %if.then98.i ], [ -22, %land.rhs29.i.inherit_ruleset.exit_crit_edge ], [ -22, %land.rhs87.i.inherit_ruleset.exit_crit_edge ], [ %call21.i, %land.rhs.i.inherit_ruleset.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %10) #8
  tail call void @mutex_unlock(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.i)
  %tobool65.not = icmp eq i32 %err.1.i, 0
  br i1 %tobool65.not, label %inherit_ruleset.exit.lor.rhs.i_crit_edge, label %inherit_ruleset.exit.land.lhs.true.i_crit_edge

inherit_ruleset.exit.land.lhs.true.i_crit_edge:   ; preds = %inherit_ruleset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

inherit_ruleset.exit.lor.rhs.i_crit_edge:         ; preds = %inherit_ruleset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.rhs.i

lor.rhs.i:                                        ; preds = %inherit_ruleset.exit.lor.rhs.i_crit_edge, %if.end62.lor.rhs.i_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 265) #8
  %32 = ptrtoint ptr %hierarchy to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hierarchy, align 4
  %tobool48.not.i = icmp eq ptr %33, null
  br i1 %tobool48.not.i, label %land.rhs57.i, label %if.end105.i

land.rhs57.i:                                     ; preds = %lor.rhs.i
  %.b358365.i = load i1, ptr @merge_ruleset.__already_done.8, align 1
  br i1 %.b358365.i, label %land.rhs57.i.land.lhs.true.i_crit_edge, label %if.then68.i, !prof !46

land.rhs57.i.land.lhs.true.i_crit_edge:           ; preds = %land.rhs57.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

if.then68.i:                                      ; preds = %land.rhs57.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @merge_ruleset.__already_done.8, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 270, i32 noundef 9, ptr noundef null) #8
  br label %land.lhs.true.i

if.end105.i:                                      ; preds = %lor.rhs.i
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #8
  %34 = getelementptr inbounds %struct.landlock_ruleset, ptr %ruleset, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %34, i32 noundef 1) #8
  %num_layers.i104 = getelementptr inbounds %struct.landlock_ruleset, ptr %ruleset, i32 0, i32 2, i32 0, i32 3
  %35 = ptrtoint ptr %num_layers.i104 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_layers.i104, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp.not.i105 = icmp eq i32 %36, 1
  br i1 %cmp.not.i105, label %lor.rhs108.i, label %if.end105.i.land.rhs118.i_crit_edge

if.end105.i.land.rhs118.i_crit_edge:              ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs118.i

lor.rhs108.i:                                     ; preds = %if.end105.i
  %37 = ptrtoint ptr %num_layers3.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_layers3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp110.i = icmp eq i32 %38, 0
  br i1 %cmp110.i, label %lor.rhs108.i.land.rhs118.i_crit_edge, label %if.end166.i

lor.rhs108.i.land.rhs118.i_crit_edge:             ; preds = %lor.rhs108.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs118.i

land.rhs118.i:                                    ; preds = %lor.rhs108.i.land.rhs118.i_crit_edge, %if.end105.i.land.rhs118.i_crit_edge
  %.b359364.i = load i1, ptr @merge_ruleset.__already_done.9, align 1
  br i1 %.b359364.i, label %land.rhs118.i.merge_ruleset.exit_crit_edge, label %if.then129.i, !prof !46

land.rhs118.i.merge_ruleset.exit_crit_edge:       ; preds = %land.rhs118.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %merge_ruleset.exit

if.then129.i:                                     ; preds = %land.rhs118.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @merge_ruleset.__already_done.9, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 278, i32 noundef 9, ptr noundef null) #8
  br label %merge_ruleset.exit

if.end166.i:                                      ; preds = %lor.rhs108.i
  %fs_access_masks.i106 = getelementptr inbounds %struct.landlock_ruleset, ptr %ruleset, i32 1
  %39 = ptrtoint ptr %fs_access_masks.i106 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %fs_access_masks.i106, align 4
  %fs_access_masks167.i = getelementptr inbounds %struct.landlock_ruleset, ptr %call9.i.i.i, i32 1
  %sub.i = add i32 %38, -1
  %arrayidx169.i = getelementptr [0 x i16], ptr %fs_access_masks167.i, i32 0, i32 %sub.i
  %41 = ptrtoint ptr %arrayidx169.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %arrayidx169.i, align 2
  %call.i107 = tail call ptr @rb_first_postorder(ptr noundef nonnull %ruleset) #8
  %tobool173.not375.i = icmp eq ptr %call.i107, null
  br i1 %tobool173.not375.i, label %if.end166.i.merge_ruleset.exit_crit_edge, label %land.rhs174.lr.ph.i

if.end166.i.merge_ruleset.exit_crit_edge:         ; preds = %if.end166.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %merge_ruleset.exit

land.rhs174.lr.ph.i:                              ; preds = %if.end166.i
  %42 = getelementptr inbounds %struct.landlock_layer, ptr %layers.i100, i32 0, i32 1
  br label %land.rhs174.i

land.rhs174.i:                                    ; preds = %cleanup.i.land.rhs174.i_crit_edge, %land.rhs174.lr.ph.i
  %walker_rule.0376.i = phi ptr [ %call.i107, %land.rhs174.lr.ph.i ], [ %call176.i, %cleanup.i.land.rhs174.i_crit_edge ]
  %call176.i = call ptr @rb_next_postorder(ptr noundef nonnull %walker_rule.0376.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %layers.i100) #8
  %43 = ptrtoint ptr %num_layers3.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_layers3.i, align 4
  %conv.i = trunc i32 %44 to i16
  %45 = ptrtoint ptr %layers.i100 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv.i, ptr %layers.i100, align 2
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 0, ptr %42, align 2
  %num_layers191.i = getelementptr inbounds %struct.landlock_rule, ptr %walker_rule.0376.i, i32 0, i32 2
  %47 = ptrtoint ptr %num_layers191.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_layers191.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %cmp192.not.i = icmp eq i32 %48, 1
  br i1 %cmp192.not.i, label %if.end249.i, label %land.rhs201.i

land.rhs201.i:                                    ; preds = %land.rhs174.i
  %.b360363.i = load i1, ptr @merge_ruleset.__already_done.10, align 1
  br i1 %.b360363.i, label %land.rhs201.i.cleanup.thread.i_crit_edge, label %land.rhs201.i.cleanup.thread.sink.split.i_crit_edge, !prof !46

land.rhs201.i.cleanup.thread.sink.split.i_crit_edge: ; preds = %land.rhs201.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread.sink.split.i

land.rhs201.i.cleanup.thread.i_crit_edge:         ; preds = %land.rhs201.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread.i

if.end249.i:                                      ; preds = %land.rhs174.i
  %layers251.i = getelementptr inbounds %struct.landlock_rule, ptr %walker_rule.0376.i, i32 0, i32 3
  %49 = ptrtoint ptr %layers251.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %layers251.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %cmp255.not.i = icmp eq i16 %50, 0
  br i1 %cmp255.not.i, label %if.end312.i, label %land.rhs264.i

land.rhs264.i:                                    ; preds = %if.end249.i
  %.b361362.i = load i1, ptr @merge_ruleset.__already_done.11, align 1
  br i1 %.b361362.i, label %land.rhs264.i.cleanup.thread.i_crit_edge, label %land.rhs264.i.cleanup.thread.sink.split.i_crit_edge, !prof !46

land.rhs264.i.cleanup.thread.sink.split.i_crit_edge: ; preds = %land.rhs264.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread.sink.split.i

land.rhs264.i.cleanup.thread.i_crit_edge:         ; preds = %land.rhs264.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread.i

if.end312.i:                                      ; preds = %if.end249.i
  %access315.i = getelementptr inbounds %struct.landlock_layer, ptr %layers251.i, i32 0, i32 1
  %51 = ptrtoint ptr %access315.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %access315.i, align 2
  %53 = ptrtoint ptr %42 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %42, align 2
  %object.i108 = getelementptr inbounds %struct.landlock_rule, ptr %walker_rule.0376.i, i32 0, i32 1
  %54 = ptrtoint ptr %object.i108 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %object.i108, align 4
  %call318.i = call fastcc i32 @insert_rule(ptr noundef nonnull %call9.i.i.i, ptr noundef %55, ptr noundef nonnull %layers.i100, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call318.i)
  %tobool319.not.i = icmp eq i32 %call318.i, 0
  br i1 %tobool319.not.i, label %cleanup.i, label %if.end312.i.cleanup.thread.i_crit_edge

if.end312.i.cleanup.thread.i_crit_edge:           ; preds = %if.end312.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread.i

cleanup.thread.sink.split.i:                      ; preds = %land.rhs264.i.cleanup.thread.sink.split.i_crit_edge, %land.rhs201.i.cleanup.thread.sink.split.i_crit_edge
  %merge_ruleset.__already_done.10.sink.i = phi ptr [ @merge_ruleset.__already_done.10, %land.rhs201.i.cleanup.thread.sink.split.i_crit_edge ], [ @merge_ruleset.__already_done.11, %land.rhs264.i.cleanup.thread.sink.split.i_crit_edge ]
  %.sink.i = phi i32 [ 291, %land.rhs201.i.cleanup.thread.sink.split.i_crit_edge ], [ 295, %land.rhs264.i.cleanup.thread.sink.split.i_crit_edge ]
  %56 = ptrtoint ptr %merge_ruleset.__already_done.10.sink.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i1 true, ptr %merge_ruleset.__already_done.10.sink.i, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %.sink.i, i32 noundef 9, ptr noundef null) #8
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %cleanup.thread.sink.split.i, %if.end312.i.cleanup.thread.i_crit_edge, %land.rhs264.i.cleanup.thread.i_crit_edge, %land.rhs201.i.cleanup.thread.i_crit_edge
  %err.1.ph.i = phi i32 [ -22, %land.rhs264.i.cleanup.thread.i_crit_edge ], [ -22, %land.rhs201.i.cleanup.thread.i_crit_edge ], [ -22, %cleanup.thread.sink.split.i ], [ %call318.i, %if.end312.i.cleanup.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %layers.i100) #8
  br label %merge_ruleset.exit

cleanup.i:                                        ; preds = %if.end312.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %layers.i100) #8
  %tobool173.not.i = icmp eq ptr %call176.i, null
  br i1 %tobool173.not.i, label %cleanup.i.merge_ruleset.exit_crit_edge, label %cleanup.i.land.rhs174.i_crit_edge

cleanup.i.land.rhs174.i_crit_edge:                ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs174.i

cleanup.i.merge_ruleset.exit_crit_edge:           ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %merge_ruleset.exit

merge_ruleset.exit:                               ; preds = %cleanup.i.merge_ruleset.exit_crit_edge, %cleanup.thread.i, %if.end166.i.merge_ruleset.exit_crit_edge, %if.then129.i, %land.rhs118.i.merge_ruleset.exit_crit_edge
  %err.2.i = phi i32 [ -22, %if.then129.i ], [ -22, %land.rhs118.i.merge_ruleset.exit_crit_edge ], [ %err.1.ph.i, %cleanup.thread.i ], [ 0, %if.end166.i.merge_ruleset.exit_crit_edge ], [ 0, %cleanup.i.merge_ruleset.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %34) #8
  call void @mutex_unlock(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2.i)
  %tobool69.not = icmp eq i32 %err.2.i, 0
  br i1 %tobool69.not, label %merge_ruleset.exit.cleanup_crit_edge, label %merge_ruleset.exit.land.lhs.true.i_crit_edge

merge_ruleset.exit.land.lhs.true.i_crit_edge:     ; preds = %merge_ruleset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

merge_ruleset.exit.cleanup_crit_edge:             ; preds = %merge_ruleset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.i:                                  ; preds = %merge_ruleset.exit.land.lhs.true.i_crit_edge, %if.then68.i, %land.rhs57.i.land.lhs.true.i_crit_edge, %inherit_ruleset.exit.land.lhs.true.i_crit_edge, %if.end57.land.lhs.true.i_crit_edge
  %err.0 = phi i32 [ %err.1.i, %inherit_ruleset.exit.land.lhs.true.i_crit_edge ], [ %err.2.i, %merge_ruleset.exit.land.lhs.true.i_crit_edge ], [ -12, %if.end57.land.lhs.true.i_crit_edge ], [ -22, %if.then68.i ], [ -22, %land.rhs57.i.land.lhs.true.i_crit_edge ]
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 370) #8
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !48
  call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #8
  %57 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #8, !srcloc !49
  %asmresult.i.i.i.i.i.i.i113 = extractvalue { i32, i32, i32 } %57, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i113)
  %cmp.i.i.i.i114 = icmp eq i32 %asmresult.i.i.i.i.i.i.i113, 1
  br i1 %cmp.i.i.i.i114, label %if.then.i115, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i113)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i113, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.landlock_put_ruleset.exit_crit_edge, label %if.then10.i.i.i.i, !prof !46

if.end5.i.i.i.i.landlock_put_ruleset.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %landlock_put_ruleset.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #8
  br label %landlock_put_ruleset.exit

if.then.i115:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !50
  call fastcc void @free_ruleset(ptr noundef nonnull %call9.i.i.i) #8
  br label %landlock_put_ruleset.exit

landlock_put_ruleset.exit:                        ; preds = %if.then.i115, %if.then10.i.i.i.i, %if.end5.i.i.i.i.landlock_put_ruleset.exit_crit_edge
  %58 = inttoptr i32 %err.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %landlock_put_ruleset.exit, %merge_ruleset.exit.cleanup_crit_edge, %create_ruleset.exit.cleanup_crit_edge, %if.end8.i.i.i.cleanup_crit_edge, %if.then46.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi ptr [ %58, %landlock_put_ruleset.exit ], [ %call9.i.i.i, %create_ruleset.exit.cleanup_crit_edge ], [ %call9.i.i.i, %merge_ruleset.exit.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %land.rhs.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then ], [ inttoptr (i32 -7 to ptr), %if.then46.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end8.i.i.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @landlock_find_rule(ptr nocapture noundef readonly %ruleset, ptr noundef readnone %object) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %object, null
  br i1 %tobool.not, label %entry.cleanup9_crit_edge, label %while.cond.preheader

entry.cleanup9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup9

while.cond.preheader:                             ; preds = %entry
  %0 = ptrtoint ptr %ruleset to i32
  call void @__asan_load4_noabort(i32 %0)
  %node.019 = load ptr, ptr %ruleset, align 4
  %tobool1.not20 = icmp eq ptr %node.019, null
  br i1 %tobool1.not20, label %while.cond.preheader.cleanup9_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup9_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup9

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %node.021 = phi ptr [ %node.0, %cleanup.while.body_crit_edge ], [ %node.019, %while.cond.preheader.while.body_crit_edge ]
  %object2 = getelementptr inbounds %struct.landlock_rule, ptr %node.021, i32 0, i32 1
  %1 = ptrtoint ptr %object2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %object2, align 4
  %cmp = icmp eq ptr %2, %object
  br i1 %cmp, label %while.body.cleanup9_crit_edge, label %cleanup

while.body.cleanup9_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup9

cleanup:                                          ; preds = %while.body
  %cmp6 = icmp ult ptr %2, %object
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %node.021, i32 0, i32 1
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %node.021, i32 0, i32 2
  %node.1.in = select i1 %cmp6, ptr %rb_right, ptr %rb_left
  %3 = ptrtoint ptr %node.1.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %node.0 = load ptr, ptr %node.1.in, align 4
  %tobool1.not = icmp eq ptr %node.0, null
  br i1 %tobool1.not, label %cleanup.cleanup9_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup.cleanup9_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup9

cleanup9:                                         ; preds = %cleanup.cleanup9_crit_edge, %while.body.cleanup9_crit_edge, %while.cond.preheader.cleanup9_crit_edge, %entry.cleanup9_crit_edge
  %retval.2 = phi ptr [ null, %entry.cleanup9_crit_edge ], [ null, %while.cond.preheader.cleanup9_crit_edge ], [ null, %cleanup.cleanup9_crit_edge ], [ %node.021, %while.body.cleanup9_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @create_rule(ptr noundef %object, ptr nocapture noundef readonly %layers, i32 noundef %num_layers, ptr noundef readonly %new_layer) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %new_layer, null
  br i1 %tobool.not, label %entry.if.end8.i.i_crit_edge, label %if.then

entry.if.end8.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i.i

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %num_layers)
  %cmp = icmp ugt i32 %num_layers, 63
  br i1 %cmp, label %land.rhs, label %if.end39

land.rhs:                                         ; preds = %if.then
  %.b75 = load i1, ptr @create_rule.__already_done, align 1
  br i1 %.b75, label %land.rhs.cleanup_crit_edge, label %if.then8, !prof !46

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then8:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @create_rule.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 81, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end39:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %add = add nuw nsw i32 %num_layers, 1
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.end39, %entry.if.end8.i.i_crit_edge
  %new_num_layers.0 = phi i32 [ %add, %if.end39 ], [ %num_layers, %entry.if.end8.i.i_crit_edge ]
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %new_num_layers.0, i32 4) #8
  %1 = extractvalue { i32, i1 } %0, 1
  %2 = extractvalue { i32, i1 } %0, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %2, i32 20) #8
  %retval.0.i = select i1 %1, i32 -1, i32 %spec.select.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 4197824) #12
  %tobool43.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool43.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end46

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end46:                                         ; preds = %if.end8.i.i
  %3 = ptrtoint ptr %call9.i.i to i32
  %4 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %call9.i.i, align 128
  %tobool.not.i = icmp eq ptr %object, null
  br i1 %tobool.not.i, label %if.end46.landlock_get_object.exit_crit_edge, label %if.then.i

if.end46.landlock_get_object.exit_crit_edge:      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %landlock_get_object.exit

if.then.i:                                        ; preds = %if.end46
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %object, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull %object, i32 1, i32 3, i32 1) #8
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %object, ptr nonnull %object, i32 1, ptr nonnull elementtype(i32) %object) #8, !srcloc !47
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !45

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %6 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %.not.i.i.i.i = icmp sgt i32 %6, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.landlock_get_object.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !46

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.landlock_get_object.exit_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %landlock_get_object.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %object, i32 noundef %.sink.i.i.i.i) #8
  br label %landlock_get_object.exit

landlock_get_object.exit:                         ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.landlock_get_object.exit_crit_edge, %if.end46.landlock_get_object.exit_crit_edge
  %object48 = getelementptr inbounds %struct.landlock_rule, ptr %call9.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %object48 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %object, ptr %object48, align 4
  %num_layers49 = getelementptr inbounds %struct.landlock_rule, ptr %call9.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %num_layers49 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %new_num_layers.0, ptr %num_layers49, align 16
  %layers50 = getelementptr inbounds %struct.landlock_rule, ptr %call9.i.i, i32 0, i32 3
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_layers, i32 4) #8
  %10 = extractvalue { i32, i1 } %9, 1
  %11 = extractvalue { i32, i1 } %9, 0
  %retval.0.i77 = select i1 %10, i32 -1, i32 %11
  %12 = call ptr @memcpy(ptr %layers50, ptr %layers, i32 %retval.0.i77)
  br i1 %tobool.not, label %landlock_get_object.exit.cleanup_crit_edge, label %if.then53

landlock_get_object.exit.cleanup_crit_edge:       ; preds = %landlock_get_object.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then53:                                        ; preds = %landlock_get_object.exit
  call void @__sanitizer_cov_trace_pc() #10
  %sub = add i32 %new_num_layers.0, -1
  %arrayidx = getelementptr %struct.landlock_rule, ptr %call9.i.i, i32 0, i32 3, i32 %sub
  %13 = ptrtoint ptr %new_layer to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %new_layer, align 2
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then53, %landlock_get_object.exit.cleanup_crit_edge, %if.end8.i.i.cleanup_crit_edge, %if.then8, %land.rhs.cleanup_crit_edge
  %retval.0 = phi ptr [ %call9.i.i, %if.then53 ], [ %call9.i.i, %landlock_get_object.exit.cleanup_crit_edge ], [ inttoptr (i32 -7 to ptr), %land.rhs.cleanup_crit_edge ], [ inttoptr (i32 -7 to ptr), %if.then8 ], [ inttoptr (i32 -12 to ptr), %if.end8.i.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_replace_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @landlock_put_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first_postorder(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next_postorder(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../security/landlock/ruleset.c", i32 370, i32 2}
!2 = !{ptr @landlock_put_ruleset_deferred.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../security/landlock/ruleset.c", i32 386, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !6, !"__already_done", i1 false, i1 false}
!6 = !{!"../security/landlock/ruleset.c", i32 409, i32 6}
!7 = !{ptr @create_ruleset.__key, !8, !"__key", i1 false, i1 false}
!8 = !{!"../security/landlock/ruleset.c", i32 36, i32 2}
!9 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../security/landlock/ruleset.c", i32 155, i32 6}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../security/landlock/ruleset.c", i32 172, i32 7}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../security/landlock/ruleset.c", i32 181, i32 8}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../security/landlock/ruleset.c", i32 183, i32 8}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../security/landlock/ruleset.c", i32 189, i32 7}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../security/landlock/ruleset.c", i32 81, i32 7}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../security/landlock/ruleset.c", i32 335, i32 6}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../security/landlock/ruleset.c", i32 343, i32 6}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../security/landlock/ruleset.c", i32 267, i32 6}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../security/landlock/ruleset.c", i32 270, i32 6}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../security/landlock/ruleset.c", i32 278, i32 6}
!32 = distinct !{null, !33, !"__already_done", i1 false, i1 false}
!33 = !{!"../security/landlock/ruleset.c", i32 291, i32 7}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../security/landlock/ruleset.c", i32 295, i32 7}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{!"branch_weights", i32 1, i32 2000}
!46 = !{!"branch_weights", i32 2000, i32 1}
!47 = !{i64 2148340715, i64 2148340747, i64 2148340776, i64 2148340810, i64 2148340841, i64 2148340864}
!48 = !{i64 2148428716}
!49 = !{i64 2148343180, i64 2148343212, i64 2148343241, i64 2148343275, i64 2148343306, i64 2148343329}
!50 = !{i64 2149205263}
