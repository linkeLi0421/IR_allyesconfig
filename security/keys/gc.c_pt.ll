; ModuleID = '/llk/IR_all_yes/security/keys/gc.c_pt.bc'
source_filename = "../security/keys/gc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.key_type = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.5 }
%union.anon.5 = type { i32 }
%struct.rb_root = type { ptr }
%struct.key_user = type { %struct.rb_node, %struct.mutex, %struct.spinlock, %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.kuid_t, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.kuid_t = type { i32 }

@key_gc_delay = dso_local global { i32, [28 x i8] } { i32 300, [28 x i8] zeroinitializer }, align 32
@key_gc_work = dso_local global { %struct.work_struct, [52 x i8] } { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @key_gc_work, i64 4), ptr getelementptr (i8, ptr @key_gc_work, i64 4) }, ptr @key_garbage_collector, %struct.lockdep_map { ptr @key_gc_work, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"key_gc_work\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c".dead\00", [26 x i8] zeroinitializer }, align 32
@key_type_dead = dso_local global { %struct.key_type, [36 x i8] } { %struct.key_type { ptr @.str.1, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, %struct.lock_class_key zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@key_gc_flags = internal global { i32, [28 x i8] } zeroinitializer, align 32
@key_gc_next_run = internal global { i64, [24 x i8] } { i64 9223372036854775807, [24 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@key_gc_timer = internal global { %struct.timer_list, [48 x i8] } { %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @key_gc_timer_func, i32 0, %struct.lockdep_map { ptr @.str.2, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [48 x i8] zeroinitializer }, align 32
@key_gc_dead_keytype = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"security/keys/gc.c:28\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/wait_bit.h\00", [39 x i8] zeroinitializer }, align 32
@key_garbage_collector.graveyard = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @key_garbage_collector.graveyard, ptr @key_garbage_collector.graveyard }, [24 x i8] zeroinitializer }, align 32
@key_garbage_collector.gc_state = internal global { i8, [31 x i8] } zeroinitializer, align 32
@key_serial_lock = external dso_local global %struct.spinlock, align 4
@key_serial_tree = external dso_local global %struct.rb_root, align 4
@key_type_keyring = external dso_local global %struct.key_type, align 4
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"security/keys/gc.c\00", [45 x i8] zeroinitializer }, align 32
@key_jar = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.5 = private unnamed_addr constant [13 x i8] c"key_gc_delay\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 16, i32 10 }
@___asan_gen_.8 = private unnamed_addr constant [12 x i8] c"key_gc_work\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 22, i32 1 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 44, i32 10 }
@___asan_gen_.17 = private unnamed_addr constant [14 x i8] c"key_type_dead\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 43, i32 17 }
@___asan_gen_.20 = private unnamed_addr constant [13 x i8] c"key_gc_flags\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 33, i32 22 }
@___asan_gen_.23 = private unnamed_addr constant [16 x i8] c"key_gc_next_run\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 30, i32 17 }
@___asan_gen_.26 = private unnamed_addr constant [13 x i8] c"key_gc_timer\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [20 x i8] c"key_gc_dead_keytype\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 31, i32 25 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 28, i32 8 }
@___asan_gen_.36 = private unnamed_addr constant [28 x i8] c"../include/linux/wait_bit.h\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 73, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [10 x i8] c"graveyard\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 175, i32 9 }
@___asan_gen_.41 = private unnamed_addr constant [9 x i8] c"gc_state\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 176, i32 12 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.45 = private constant [22 x i8] c"../security/keys/gc.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 268, i32 3 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @key_gc_delay, ptr @key_gc_work, ptr @.str, ptr @.str.1, ptr @key_type_dead, ptr @key_gc_flags, ptr @key_gc_next_run, ptr @key_gc_timer, ptr @key_gc_dead_keytype, ptr @.str.2, ptr @.str.3, ptr @key_garbage_collector.graveyard, ptr @key_garbage_collector.gc_state, ptr @.str.4], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_gc_delay to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_gc_work to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_type_dead to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_gc_flags to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_gc_next_run to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_gc_timer to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_gc_dead_keytype to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_garbage_collector.graveyard to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_garbage_collector.gc_state to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @key_garbage_collector(ptr nocapture noundef readnone %work) #0 align 64 {
entry:
  %tickets.sroa.0.i.i = alloca i16, align 2
  %tickets.sroa.5.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get_real_seconds() #6
  %0 = load i32, ptr @key_gc_delay, align 4
  %conv = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %call, i64 %conv)
  %cmp = icmp sgt i64 %call, %conv
  %sub = sub i64 %call, %conv
  %limit.0 = select i1 %cmp, i64 %sub, i64 %conv
  %1 = load i8, ptr @key_garbage_collector.gc_state, align 1
  %2 = shl i8 %1, 1
  %3 = and i8 %2, 96
  store i8 %3, ptr @key_garbage_collector.gc_state, align 1
  %call8 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef nonnull @key_gc_flags) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %if.then9

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = load i8, ptr @key_garbage_collector.gc_state, align 1
  %5 = or i8 %4, 6
  store i8 %5, ptr @key_garbage_collector.gc_state, align 1
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %entry.if.end12_crit_edge
  %call13 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef nonnull @key_gc_flags) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end12.if.end19_crit_edge, label %if.then15

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %6 = load i8, ptr @key_garbage_collector.gc_state, align 1
  %7 = or i8 %6, 16
  store i8 %7, ptr @key_garbage_collector.gc_state, align 1
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.end12.if.end19_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @key_serial_lock) #6
  %call21 = tail call ptr @rb_first(ptr noundef nonnull @key_serial_tree) #6
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %if.end19
  %new_timer.1 = phi i64 [ 9223372036854775807, %if.end19 ], [ %new_timer.1.be, %while.cond.backedge ]
  %cursor.1 = phi ptr [ %call21, %if.end19 ], [ %cursor.1.be, %while.cond.backedge ]
  %tobool22.not = icmp eq ptr %cursor.1, null
  br i1 %tobool22.not, label %while.cond.contended_crit_edge, label %while.body

while.cond.contended_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %contended

while.body:                                       ; preds = %while.cond
  %add.ptr = getelementptr i8, ptr %cursor.1, i32 -8
  %call24 = tail call ptr @rb_next(ptr noundef nonnull %cursor.1) #6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef 4) #6
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp26 = icmp eq i32 %9, 0
  br i1 %cmp26, label %found_unreferenced_key, label %if.end29

if.end29:                                         ; preds = %while.body
  %10 = load i8, ptr @key_garbage_collector.gc_state, align 1
  %11 = and i8 %10, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool32.not = icmp eq i8 %11, 0
  br i1 %tobool32.not, label %if.end29.if.end50_crit_edge, label %if.then35, !prof !36

if.end29.if.end50_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.then35:                                        ; preds = %if.end29
  %type = getelementptr i8, ptr %cursor.1, i32 168
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %type, align 8
  %14 = load ptr, ptr @key_gc_dead_keytype, align 4
  %cmp36 = icmp eq ptr %13, %14
  br i1 %cmp36, label %if.then38, label %if.else42

if.then38:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  %or40 = or i8 %10, -128
  store i8 %or40, ptr @key_garbage_collector.gc_state, align 1
  %flags = getelementptr i8, ptr %cursor.1, i32 156
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #6
  %perm = getelementptr i8, ptr %cursor.1, i32 144
  %15 = ptrtoint ptr %perm to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %perm, align 8
  br label %skip_dead_key

if.else42:                                        ; preds = %if.then35
  %cmp44 = icmp eq ptr %13, @key_type_keyring
  br i1 %cmp44, label %land.lhs.true, label %if.else42.if.end50_crit_edge

if.else42.if.end50_crit_edge:                     ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

land.lhs.true:                                    ; preds = %if.else42
  %restrict_link = getelementptr i8, ptr %cursor.1, i32 196
  %16 = ptrtoint ptr %restrict_link to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %restrict_link, align 4
  %tobool46.not = icmp eq ptr %17, null
  br i1 %tobool46.not, label %land.lhs.true.if.end50_crit_edge, label %found_restricted_keyring

land.lhs.true.if.end50_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.end50:                                         ; preds = %land.lhs.true.if.end50_crit_edge, %if.else42.if.end50_crit_edge, %if.end29.if.end50_crit_edge
  %18 = and i8 %10, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool53.not = icmp eq i8 %18, 0
  br i1 %tobool53.not, label %if.end50.if.end63_crit_edge, label %if.then54

if.end50.if.end63_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

if.then54:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  %19 = getelementptr i8, ptr %cursor.1, i32 120
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %19, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %limit.0)
  %cmp55 = icmp sgt i64 %21, %limit.0
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %new_timer.1)
  %cmp58 = icmp slt i64 %21, %new_timer.1
  %or.cond = select i1 %cmp55, i1 %cmp58, i1 false
  %spec.select = select i1 %or.cond, i64 %21, i64 %new_timer.1
  br label %if.end63

if.end63:                                         ; preds = %if.then54, %if.end50.if.end63_crit_edge
  %new_timer.2 = phi i64 [ %new_timer.1, %if.end50.if.end63_crit_edge ], [ %spec.select, %if.then54 ]
  %22 = and i8 %10, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool66.not = icmp eq i8 %22, 0
  br i1 %tobool66.not, label %if.end63.if.end82_crit_edge, label %if.then73, !prof !36

if.end63.if.end82_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end82

if.then73:                                        ; preds = %if.end63
  %type74 = getelementptr i8, ptr %cursor.1, i32 168
  %23 = ptrtoint ptr %type74 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %type74, align 8
  %25 = load ptr, ptr @key_gc_dead_keytype, align 4
  %cmp75 = icmp eq ptr %24, %25
  br i1 %cmp75, label %if.then77, label %if.then73.if.end82_crit_edge

if.then73.if.end82_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end82

if.then77:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #8
  %or79 = or i8 %10, -128
  store i8 %or79, ptr @key_garbage_collector.gc_state, align 1
  br label %if.end82

if.end82:                                         ; preds = %if.then77, %if.then73.if.end82_crit_edge, %if.end63.if.end82_crit_edge
  %26 = load i8, ptr @key_garbage_collector.gc_state, align 1
  %27 = and i8 %26, 34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %if.end82.if.end101_crit_edge, label %if.then95, !prof !37

if.end82.if.end101_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end101

if.then95:                                        ; preds = %if.end82
  %type96 = getelementptr i8, ptr %cursor.1, i32 168
  %29 = ptrtoint ptr %type96 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %type96, align 8
  %cmp97 = icmp eq ptr %30, @key_type_keyring
  br i1 %cmp97, label %found_keyring, label %if.then95.if.end101_crit_edge

if.then95.if.end101_crit_edge:                    ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end101

if.end101:                                        ; preds = %if.then95.if.end101_crit_edge, %if.end82.if.end101_crit_edge
  %31 = and i8 %26, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool104.not = icmp eq i8 %31, 0
  br i1 %tobool104.not, label %if.end101.skip_dead_key_crit_edge, label %if.then111, !prof !36

if.end101.skip_dead_key_crit_edge:                ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  br label %skip_dead_key

if.then111:                                       ; preds = %if.end101
  %type112 = getelementptr i8, ptr %cursor.1, i32 168
  %32 = ptrtoint ptr %type112 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %type112, align 8
  %34 = load ptr, ptr @key_gc_dead_keytype, align 4
  %cmp113 = icmp eq ptr %33, %34
  br i1 %cmp113, label %destroy_dead_key, label %if.then111.skip_dead_key_crit_edge

if.then111.skip_dead_key_crit_edge:               ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #8
  br label %skip_dead_key

skip_dead_key:                                    ; preds = %if.then111.skip_dead_key_crit_edge, %if.end101.skip_dead_key_crit_edge, %if.then38
  %new_timer.3 = phi i64 [ %new_timer.1, %if.then38 ], [ %new_timer.2, %if.then111.skip_dead_key_crit_edge ], [ %new_timer.2, %if.end101.skip_dead_key_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tickets.sroa.0.i.i)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tickets.sroa.5.i.i)
  call void @__asan_load2_noabort(i32 ptrtoint (ptr @key_serial_lock to i32))
  %tickets.sroa.0.0.copyload.i.i = load volatile i16, ptr @key_serial_lock, align 4
  %35 = ptrtoint ptr %tickets.sroa.0.i.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store volatile i16 %tickets.sroa.0.0.copyload.i.i, ptr %tickets.sroa.0.i.i, align 2
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr (i8, ptr @key_serial_lock, i32 2) to i32))
  %tickets.sroa.5.0.copyload.i.i = load volatile i16, ptr getelementptr (i8, ptr @key_serial_lock, i32 2), align 2
  %36 = ptrtoint ptr %tickets.sroa.5.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store volatile i16 %tickets.sroa.5.0.copyload.i.i, ptr %tickets.sroa.5.i.i, align 2
  %conv.i.i = zext i16 %tickets.sroa.0.0.copyload.i.i to i32
  %conv1.i.i = zext i16 %tickets.sroa.5.0.copyload.i.i to i32
  %sub.i.i = sub nsw i32 %conv.i.i, %conv1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tickets.sroa.0.i.i)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tickets.sroa.5.i.i)
  br i1 %cmp.i.i, label %lor.lhs.false120, label %skip_dead_key.contended_crit_edge

skip_dead_key.contended_crit_edge:                ; preds = %skip_dead_key
  call void @__sanitizer_cov_trace_pc() #8
  br label %contended

lor.lhs.false120:                                 ; preds = %skip_dead_key
  %37 = tail call i32 @llvm.read_register.i32(metadata !26) #6
  %and.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i to ptr
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %38, align 16384
  %41 = and i32 %40, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.i.not = icmp eq i32 %41, 0
  br i1 %tobool.i.not, label %lor.lhs.false120.while.cond.backedge_crit_edge, label %lor.lhs.false120.contended_crit_edge

lor.lhs.false120.contended_crit_edge:             ; preds = %lor.lhs.false120
  call void @__sanitizer_cov_trace_pc() #8
  br label %contended

lor.lhs.false120.while.cond.backedge_crit_edge:   ; preds = %lor.lhs.false120
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then126, %lor.lhs.false120.while.cond.backedge_crit_edge
  %new_timer.1.be = phi i64 [ %new_timer.3, %lor.lhs.false120.while.cond.backedge_crit_edge ], [ %new_timer.5, %if.then126 ]
  %cursor.1.be = phi ptr [ %call24, %lor.lhs.false120.while.cond.backedge_crit_edge ], [ %cursor.3, %if.then126 ]
  br label %while.cond

contended:                                        ; preds = %lor.lhs.false120.contended_crit_edge, %skip_dead_key.contended_crit_edge, %while.cond.contended_crit_edge
  %new_timer.4 = phi i64 [ %new_timer.3, %skip_dead_key.contended_crit_edge ], [ %new_timer.3, %lor.lhs.false120.contended_crit_edge ], [ %new_timer.1, %while.cond.contended_crit_edge ]
  %cursor.2 = phi ptr [ %call24, %skip_dead_key.contended_crit_edge ], [ %call24, %lor.lhs.false120.contended_crit_edge ], [ null, %while.cond.contended_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @key_serial_lock) #6
  br label %maybe_resched

maybe_resched:                                    ; preds = %if.end218, %found_keyring, %found_restricted_keyring, %list_add_tail.exit, %contended
  %new_timer.5 = phi i64 [ %new_timer.1, %list_add_tail.exit ], [ %new_timer.4, %contended ], [ %new_timer.1, %found_restricted_keyring ], [ %new_timer.2, %found_keyring ], [ %new_timer.2, %if.end218 ]
  %cursor.3 = phi ptr [ %call24, %list_add_tail.exit ], [ %cursor.2, %contended ], [ %call24, %found_restricted_keyring ], [ %call24, %found_keyring ], [ %call24, %if.end218 ]
  %tobool125.not = icmp eq ptr %cursor.3, null
  br i1 %tobool125.not, label %if.end129, label %if.then126

if.then126:                                       ; preds = %maybe_resched
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__might_resched(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 0) #6
  %call.i = tail call i32 @__cond_resched() #6
  tail call void @_raw_spin_lock(ptr noundef nonnull @key_serial_lock) #6
  br label %while.cond.backedge

if.end129:                                        ; preds = %maybe_resched
  %42 = load i8, ptr @key_garbage_collector.gc_state, align 1
  %43 = and i8 %42, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool133.not = icmp eq i8 %43, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372036854775807, i64 %new_timer.5)
  %cmp135.not = icmp eq i64 %new_timer.5, 9223372036854775807
  %or.cond252 = select i1 %tobool133.not, i1 true, i1 %cmp135.not
  br i1 %or.cond252, label %if.end129.if.end139_crit_edge, label %if.then137

if.end129.if.end139_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end139

if.then137:                                       ; preds = %if.end129
  %44 = load i32, ptr @key_gc_delay, align 4
  %conv138 = zext i32 %44 to i64
  %add = add i64 %new_timer.5, %conv138
  %call.i253 = tail call i64 @ktime_get_real_seconds() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %call.i253)
  %cmp.not.i = icmp sgt i64 %add, %call.i253
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.then137.if.then.i_crit_edge

if.then137.if.then.i_crit_edge:                   ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.then137
  %45 = load volatile i32, ptr @key_gc_flags, align 4
  %46 = and i32 %45, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i = icmp eq i32 %46, 0
  br i1 %tobool.not.i, label %if.else.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.then137.if.then.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %47 = load ptr, ptr @system_wq, align 4
  %call.i.i.i254 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %47, ptr noundef nonnull @key_gc_work) #6
  br label %if.end139

if.else.i:                                        ; preds = %lor.lhs.false.i
  %48 = load i64, ptr @key_gc_next_run, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %48, i64 %add)
  %cmp4.i = icmp sgt i64 %48, %add
  br i1 %cmp4.i, label %if.then5.i, label %if.else.i.if.end139_crit_edge

if.else.i.if.end139_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end139

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  store i64 %add, ptr @key_gc_next_run, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %49 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i64 %add, %call.i253
  %50 = trunc i64 %sub.i to i32
  %51 = mul i32 %50, 100
  %conv7.i = add i32 %49, %51
  %call8.i = tail call i32 @mod_timer(ptr noundef nonnull @key_gc_timer, i32 noundef %conv7.i) #6
  br label %if.end139

if.end139:                                        ; preds = %if.then5.i, %if.else.i.if.end139_crit_edge, %if.then.i, %if.end129.if.end139_crit_edge
  %52 = load i8, ptr @key_garbage_collector.gc_state, align 1
  %53 = and i8 %52, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool142.not = icmp eq i8 %53, 0
  br i1 %tobool142.not, label %lor.lhs.false149, label %if.end139.if.then152_crit_edge, !prof !36

if.end139.if.then152_crit_edge:                   ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then152

lor.lhs.false149:                                 ; preds = %if.end139
  %54 = load volatile ptr, ptr @key_garbage_collector.graveyard, align 4
  %cmp.i.not = icmp eq ptr %54, @key_garbage_collector.graveyard
  br i1 %cmp.i.not, label %lor.lhs.false149.if.end154_crit_edge, label %lor.lhs.false149.if.then152_crit_edge

lor.lhs.false149.if.then152_crit_edge:            ; preds = %lor.lhs.false149
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then152

lor.lhs.false149.if.end154_crit_edge:             ; preds = %lor.lhs.false149
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end154

if.then152:                                       ; preds = %lor.lhs.false149.if.then152_crit_edge, %if.end139.if.then152_crit_edge
  tail call void @synchronize_rcu() #6
  br label %if.end154

if.end154:                                        ; preds = %if.then152, %lor.lhs.false149.if.end154_crit_edge
  %55 = load volatile ptr, ptr @key_garbage_collector.graveyard, align 4
  %cmp.i255.not = icmp eq ptr %55, @key_garbage_collector.graveyard
  br i1 %cmp.i255.not, label %if.end154.if.end159_crit_edge, label %if.then157

if.end154.if.end159_crit_edge:                    ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end159

if.then157:                                       ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @key_gc_unused_keys()
  br label %if.end159

if.end159:                                        ; preds = %if.then157, %if.end154.if.end159_crit_edge
  %56 = load i8, ptr @key_garbage_collector.gc_state, align 1
  %conv160 = zext i8 %56 to i32
  %and161 = and i32 %conv160, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and161)
  %tobool162.not = icmp eq i32 %and161, 0
  br i1 %tobool162.not, label %if.end159.if.end186_crit_edge, label %if.then169, !prof !36

if.end159.if.end186_crit_edge:                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end186

if.then169:                                       ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #8
  %and171 = and i32 %conv160, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and171)
  %tobool172.not = icmp eq i32 %and171, 0
  %and176 = and i8 %56, -113
  %57 = or i8 %and176, 64
  %or183 = or i8 %56, 1
  %.sink = select i1 %tobool172.not, i8 %57, i8 %or183
  store i8 %.sink, ptr @key_garbage_collector.gc_state, align 1
  br label %if.end186

if.end186:                                        ; preds = %if.then169, %if.end159.if.end186_crit_edge
  %58 = load i8, ptr @key_garbage_collector.gc_state, align 1
  %59 = and i8 %58, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool189.not = icmp eq i8 %59, 0
  br i1 %tobool189.not, label %if.end186.if.end201_crit_edge, label %if.then196, !prof !36

if.end186.if.end201_crit_edge:                    ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end201

if.then196:                                       ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @_clear_bit(i32 noundef 2, ptr noundef nonnull @key_gc_flags) #6
  tail call void @wake_up_bit(ptr noundef nonnull @key_gc_flags, i32 noundef 2) #6
  br label %if.end201

if.end201:                                        ; preds = %if.then196, %if.end186.if.end201_crit_edge
  %60 = load i8, ptr @key_garbage_collector.gc_state, align 1
  %61 = and i8 %60, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool204.not = icmp eq i8 %61, 0
  br i1 %tobool204.not, label %if.end201.if.end207_crit_edge, label %if.then205

if.end201.if.end207_crit_edge:                    ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end207

if.then205:                                       ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %62 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %62, ptr noundef nonnull @key_gc_work) #6
  br label %if.end207

if.end207:                                        ; preds = %if.then205, %if.end201.if.end207_crit_edge
  ret void

found_unreferenced_key:                           ; preds = %while.body
  tail call void @rb_erase(ptr noundef nonnull %cursor.1, ptr noundef nonnull @key_serial_tree) #6
  tail call void @_raw_spin_unlock(ptr noundef nonnull @key_serial_lock) #6
  %63 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @key_garbage_collector.graveyard, i32 0, i32 1), align 4
  %call.i.i257 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %cursor.1, ptr noundef %63, ptr noundef nonnull @key_garbage_collector.graveyard) #6
  br i1 %call.i.i257, label %if.end.i.i, label %found_unreferenced_key.list_add_tail.exit_crit_edge

found_unreferenced_key.list_add_tail.exit_crit_edge: ; preds = %found_unreferenced_key
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %found_unreferenced_key
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %cursor.1, ptr getelementptr inbounds (%struct.list_head, ptr @key_garbage_collector.graveyard, i32 0, i32 1), align 4
  %64 = ptrtoint ptr %cursor.1 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @key_garbage_collector.graveyard, ptr %cursor.1, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %cursor.1, i32 0, i32 1
  %65 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %63, ptr %prev3.i.i, align 4
  %66 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %cursor.1, ptr %63, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %found_unreferenced_key.list_add_tail.exit_crit_edge
  %67 = load i8, ptr @key_garbage_collector.gc_state, align 1
  %68 = or i8 %67, 1
  store i8 %68, ptr @key_garbage_collector.gc_state, align 1
  br label %maybe_resched

found_restricted_keyring:                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock(ptr noundef nonnull @key_serial_lock) #6
  %69 = load ptr, ptr @key_gc_dead_keytype, align 4
  tail call void @keyring_restriction_gc(ptr noundef %add.ptr, ptr noundef %69) #6
  br label %maybe_resched

found_keyring:                                    ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock(ptr noundef nonnull @key_serial_lock) #6
  tail call void @keyring_gc(ptr noundef %add.ptr, i64 noundef %limit.0) #6
  br label %maybe_resched

destroy_dead_key:                                 ; preds = %if.then111
  %type112.le = getelementptr i8, ptr %cursor.1, i32 168
  tail call void @_raw_spin_unlock(ptr noundef nonnull @key_serial_lock) #6
  %sem = getelementptr i8, ptr %cursor.1, i32 16
  tail call void @down_write(ptr noundef %sem) #6
  %70 = ptrtoint ptr %type112.le to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @key_type_dead, ptr %type112.le, align 8
  %71 = load ptr, ptr @key_gc_dead_keytype, align 4
  %destroy = getelementptr inbounds %struct.key_type, ptr %71, i32 0, i32 11
  %72 = ptrtoint ptr %destroy to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %destroy, align 4
  %tobool215.not = icmp eq ptr %73, null
  br i1 %tobool215.not, label %destroy_dead_key.if.end218_crit_edge, label %if.then216

destroy_dead_key.if.end218_crit_edge:             ; preds = %destroy_dead_key
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end218

if.then216:                                       ; preds = %destroy_dead_key
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %73(ptr noundef %add.ptr) #6
  br label %if.end218

if.end218:                                        ; preds = %if.then216, %destroy_dead_key.if.end218_crit_edge
  %74 = getelementptr i8, ptr %cursor.1, i32 180
  %75 = call ptr @memset(ptr %74, i32 189, i32 16)
  tail call void @up_write(ptr noundef %sem) #6
  br label %maybe_resched
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @key_schedule_gc(i64 noundef %gc_at) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get_real_seconds() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call, i64 %gc_at)
  %cmp.not = icmp slt i64 %call, %gc_at
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %0 = load volatile i32, ptr @key_gc_flags, align 4
  %1 = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef nonnull @key_gc_work) #6
  br label %if.end9

if.else:                                          ; preds = %lor.lhs.false
  %3 = load i64, ptr @key_gc_next_run, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %gc_at)
  %cmp4 = icmp sgt i64 %3, %gc_at
  br i1 %cmp4, label %if.then5, label %if.else.if.end9_crit_edge

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  store i64 %gc_at, ptr @key_gc_next_run, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i64 %gc_at, %call
  %5 = trunc i64 %sub to i32
  %6 = mul i32 %5, 100
  %conv7 = add i32 %4, %6
  %call8 = tail call i32 @mod_timer(ptr noundef nonnull @key_gc_timer, i32 noundef %conv7) #6
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.else.if.end9_crit_edge, %if.then
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @key_schedule_gc_links() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_set_bit(i32 noundef 0, ptr noundef nonnull @key_gc_flags) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef nonnull @key_gc_work) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @key_gc_keytype(ptr noundef %ktype) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %ktype, ptr @key_gc_dead_keytype, align 4
  tail call void @_set_bit(i32 noundef 2, ptr noundef nonnull @key_gc_flags) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !39
  tail call void @_set_bit(i32 noundef 1, ptr noundef nonnull @key_gc_flags) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef nonnull @key_gc_work) #6
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 73) #6
  %1 = load volatile i32, ptr @key_gc_flags, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %entry.wait_on_bit.exit_crit_edge, label %if.end.i

entry.wait_on_bit.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %wait_on_bit.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i = tail call i32 @out_of_line_wait_on_bit(ptr noundef nonnull @key_gc_flags, i32 noundef 2, ptr noundef nonnull @bit_wait, i32 noundef 2) #6
  br label %wait_on_bit.exit

wait_on_bit.exit:                                 ; preds = %if.end.i, %entry.wait_on_bit.exit_crit_edge
  store ptr null, ptr @key_gc_dead_keytype, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @key_gc_timer_func(ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  store i64 9223372036854775807, ptr @key_gc_next_run, align 8
  tail call void @_set_bit(i32 noundef 0, ptr noundef nonnull @key_gc_flags) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef nonnull @key_gc_work) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @out_of_line_wait_on_bit(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_wait(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @key_gc_unused_keys() unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr @key_garbage_collector.graveyard, align 4
  %cmp.i.not3 = icmp eq ptr %0, @key_garbage_collector.graveyard
  br i1 %cmp.i.not3, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %if.end24.while.body_crit_edge, %entry.while.body_crit_edge
  %1 = phi ptr [ %50, %if.end24.while.body_crit_edge ], [ %0, %entry.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %1, i32 -8
  %state1 = getelementptr i8, ptr %1, i32 152
  %2 = ptrtoint ptr %state1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %state1, align 8
  %call.i.i2 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #6
  br i1 %call.i.i2, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %watchers = getelementptr i8, ptr %1, i32 12
  %12 = ptrtoint ptr %watchers to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %watchers, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %list_del.exit.remove_watch_list.exit_crit_edge, label %if.then.i

list_del.exit.remove_watch_list.exit_crit_edge:   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %remove_watch_list.exit

if.then.i:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  %serial = getelementptr i8, ptr %1, i32 -4
  %14 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %serial, align 4
  %conv = sext i32 %15 to i64
  %call.i = tail call i32 @remove_watch_from_object(ptr noundef nonnull %13, ptr noundef null, i64 noundef %conv, i1 noundef zeroext true) #6
  tail call void @kvfree_call_rcu(ptr noundef nonnull %13, ptr noundef null) #6
  br label %remove_watch_list.exit

remove_watch_list.exit:                           ; preds = %if.then.i, %list_del.exit.remove_watch_list.exit_crit_edge
  %16 = ptrtoint ptr %watchers to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %watchers, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %3)
  %cmp = icmp eq i16 %3, 1
  br i1 %cmp, label %land.lhs.true, label %remove_watch_list.exit.if.end_crit_edge

remove_watch_list.exit.if.end_crit_edge:          ; preds = %remove_watch_list.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %remove_watch_list.exit
  %type = getelementptr i8, ptr %1, i32 168
  %17 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %type, align 8
  %destroy = getelementptr inbounds %struct.key_type, ptr %18, i32 0, i32 11
  %19 = ptrtoint ptr %destroy to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %destroy, align 4
  %tobool6.not = icmp eq ptr %20, null
  br i1 %tobool6.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %20(ptr noundef %add.ptr) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %remove_watch_list.exit.if.end_crit_edge
  tail call void @security_key_free(ptr noundef %add.ptr) #6
  %flags = getelementptr i8, ptr %1, i32 156
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %flags, align 4
  %23 = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool10.not = icmp eq i32 %23, 0
  br i1 %tobool10.not, label %if.end.if.end17_crit_edge, label %if.then11

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %user = getelementptr i8, ptr %1, i32 112
  %24 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %user, align 8
  %lock = getelementptr inbounds %struct.key_user, ptr %25, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %26 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %user, align 8
  %qnkeys = getelementptr inbounds %struct.key_user, ptr %27, i32 0, i32 7
  %28 = ptrtoint ptr %qnkeys to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %qnkeys, align 4
  %dec = add i32 %29, -1
  store i32 %dec, ptr %qnkeys, align 4
  %quotalen = getelementptr i8, ptr %1, i32 148
  %30 = ptrtoint ptr %quotalen to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %quotalen, align 4
  %conv13 = zext i16 %31 to i32
  %32 = load ptr, ptr %user, align 8
  %qnbytes = getelementptr inbounds %struct.key_user, ptr %32, i32 0, i32 8
  %33 = ptrtoint ptr %qnbytes to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %qnbytes, align 4
  %sub = sub i32 %34, %conv13
  store i32 %sub, ptr %qnbytes, align 4
  %35 = load ptr, ptr %user, align 8
  %lock16 = getelementptr inbounds %struct.key_user, ptr %35, i32 0, i32 2
  tail call void @_raw_spin_unlock(ptr noundef %lock16) #6
  br label %if.end17

if.end17:                                         ; preds = %if.then11, %if.end.if.end17_crit_edge
  %user18 = getelementptr i8, ptr %1, i32 112
  %36 = ptrtoint ptr %user18 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %user18, align 8
  %nkeys = getelementptr inbounds %struct.key_user, ptr %37, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nkeys, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %nkeys, i32 1, i32 3, i32 1) #6
  %38 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nkeys, ptr %nkeys, i32 1, ptr elementtype(i32) %nkeys) #6, !srcloc !40
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp20.not = icmp eq i16 %3, 0
  br i1 %cmp20.not, label %if.end17.if.end24_crit_edge, label %if.then22

if.end17.if.end24_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %user18 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %user18, align 8
  %nikeys = getelementptr inbounds %struct.key_user, ptr %40, i32 0, i32 5
  %call.i.i1 = tail call zeroext i1 @__kasan_check_write(ptr noundef %nikeys, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %nikeys, i32 1, i32 3, i32 1) #6
  %41 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nikeys, ptr %nikeys, i32 1, ptr elementtype(i32) %nikeys) #6, !srcloc !40
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end17.if.end24_crit_edge
  %42 = ptrtoint ptr %user18 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %user18, align 8
  tail call void @key_user_put(ptr noundef %43) #6
  %domain_tag = getelementptr i8, ptr %1, i32 172
  %44 = ptrtoint ptr %domain_tag to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %domain_tag, align 4
  %call26 = tail call zeroext i1 @key_put_tag(ptr noundef %45) #6
  %description = getelementptr i8, ptr %1, i32 176
  %46 = ptrtoint ptr %description to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %description, align 8
  tail call void @kfree(ptr noundef %47) #6
  %48 = call ptr @memset(ptr %add.ptr, i32 0, i32 208)
  tail call void asm sideeffect "", "r,~{memory}"(ptr %add.ptr) #6, !srcloc !41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @key_jar to i32))
  %49 = load ptr, ptr @key_jar, align 4
  tail call void @kmem_cache_free(ptr noundef %49, ptr noundef %add.ptr) #6
  %50 = load volatile ptr, ptr @key_garbage_collector.graveyard, align 4
  %cmp.i.not = icmp eq ptr %50, @key_garbage_collector.graveyard
  br i1 %cmp.i.not, label %if.end24.while.end_crit_edge, label %if.end24.while.body_crit_edge

if.end24.while.body_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end24.while.end_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %if.end24.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @keyring_restriction_gc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @keyring_gc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_key_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_user_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @key_put_tag(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remove_watch_from_object(ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17, !18, !20, !22, !24}
!llvm.named.register.sp = !{!26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @key_gc_delay, !1, !"key_gc_delay", i1 false, i1 false}
!1 = !{!"../security/keys/gc.c", i32 16, i32 10}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../security/keys/gc.c", i32 22, i32 1}
!4 = !{ptr @key_gc_work, !3, !"key_gc_work", i1 false, i1 false}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../security/keys/gc.c", i32 44, i32 10}
!7 = !{ptr @key_type_dead, !8, !"key_type_dead", i1 false, i1 false}
!8 = !{!"../security/keys/gc.c", i32 43, i32 17}
!9 = !{ptr @key_gc_dead_keytype, !10, !"key_gc_dead_keytype", i1 false, i1 false}
!10 = !{!"../security/keys/gc.c", i32 31, i32 25}
!11 = !{ptr @key_gc_flags, !12, !"key_gc_flags", i1 false, i1 false}
!12 = !{!"../security/keys/gc.c", i32 33, i32 22}
!13 = !{ptr @key_gc_next_run, !14, !"key_gc_next_run", i1 false, i1 false}
!14 = !{!"../security/keys/gc.c", i32 30, i32 17}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../security/keys/gc.c", i32 28, i32 8}
!17 = !{ptr @key_gc_timer, !16, !"key_gc_timer", i1 false, i1 false}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../include/linux/wait_bit.h", i32 73, i32 2}
!20 = !{ptr @key_garbage_collector.graveyard, !21, !"graveyard", i1 false, i1 false}
!21 = !{!"../security/keys/gc.c", i32 175, i32 9}
!22 = !{ptr @key_garbage_collector.gc_state, !23, !"gc_state", i1 false, i1 false}
!23 = !{!"../security/keys/gc.c", i32 176, i32 12}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../security/keys/gc.c", i32 268, i32 3}
!26 = !{!"sp"}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{!"branch_weights", i32 2000, i32 1}
!37 = !{!"branch_weights", i32 2000, i32 2002}
!38 = !{i64 2153556164}
!39 = !{i64 2153533687}
!40 = !{i64 2148591185, i64 2148591211, i64 2148591240, i64 2148591274, i64 2148591305, i64 2148591328}
!41 = !{i64 2149169001}
