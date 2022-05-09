; ModuleID = '/llk/IR_all_yes/mm/swap_cgroup.c_pt.bc'
source_filename = "../mm/swap_cgroup.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.swap_cgroup_ctrl = type { ptr, i32, %struct.spinlock }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.swap_cgroup = type { i16 }

@swap_cgroup_ctrl = internal global { [30 x %struct.swap_cgroup_ctrl], [392 x i8] } zeroinitializer, align 32
@swap_cgroup_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @swap_cgroup_mutex, i64 52), ptr getelementptr (i8, ptr @swap_cgroup_mutex, i64 52) }, ptr @swap_cgroup_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@swap_cgroup_swapon.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&ctrl->lock\00", [20 x i8] zeroinitializer }, align 32
@swap_cgroup_swapon._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016couldn't allocate enough memory for swap_cgroup\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"swap_cgroup_swapon\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mm/swap_cgroup.c\00", [47 x i8] zeroinitializer }, align 32
@swap_cgroup_swapon._entry_ptr = internal global ptr @swap_cgroup_swapon._entry, section ".printk_index", align 4
@swap_cgroup_swapon._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016swap_cgroup can be disabled by swapaccount=0 boot option\0A\00", [36 x i8] zeroinitializer }, align 32
@swap_cgroup_swapon._entry_ptr.6 = internal global ptr @swap_cgroup_swapon._entry.4, section ".printk_index", align 4
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"swap_cgroup_mutex.wait_lock\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"swap_cgroup_mutex\00", [46 x i8] zeroinitializer }, align 32
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"swap_cgroup_ctrl\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 15, i32 32 }
@___asan_gen_.13 = private unnamed_addr constant [18 x i8] c"swap_cgroup_mutex\00", align 1
@___asan_gen_.16 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 185, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 198, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 199, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.44 = private constant [20 x i8] c"../mm/swap_cgroup.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 8, i32 8 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @swap_cgroup_swapon._entry, ptr @swap_cgroup_swapon._entry.4, ptr @swap_cgroup_swapon._entry_ptr, ptr @swap_cgroup_swapon._entry_ptr.6, ptr @swap_cgroup_ctrl, ptr @swap_cgroup_mutex, ptr @swap_cgroup_swapon.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swap_cgroup_ctrl to i32), i32 1560, i32 1952, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swap_cgroup_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swap_cgroup_swapon.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swap_cgroup_swapon._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swap_cgroup_swapon._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @swap_cgroup_cmpxchg([1 x i32] %ent.coerce, i16 noundef zeroext %old, i16 noundef zeroext %new) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %entry.coerce.fca.0.extract.i.i = extractvalue [1 x i32] %ent.coerce, 0
  %shr.i.i = lshr i32 %entry.coerce.fca.0.extract.i.i, 26
  %arrayidx.i = getelementptr [30 x %struct.swap_cgroup_ctrl], ptr @swap_cgroup_ctrl, i32 0, i32 %shr.i.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %and.i.i = lshr i32 %entry.coerce.fca.0.extract.i.i, 11
  %div2.i.i = and i32 %and.i.i, 32767
  %arrayidx.i.i = getelementptr ptr, ptr %1, i32 %div2.i.i
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i = tail call ptr @page_address(ptr noundef %3) #4
  %rem.i.i = and i32 %entry.coerce.fca.0.extract.i.i, 2047
  %add.ptr.i.i = getelementptr %struct.swap_cgroup, ptr %call.i.i, i32 %rem.i.i
  %lock = getelementptr [30 x %struct.swap_cgroup_ctrl], ptr @swap_cgroup_ctrl, i32 0, i32 %shr.i.i, i32 2
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %old)
  %cmp10 = icmp eq i16 %5, %old
  br i1 %cmp10, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %new, ptr %add.ptr.i.i, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %retval1.0 = phi i16 [ %old, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #4
  ret i16 %retval1.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @swap_cgroup_record([1 x i32] %ent.coerce, i16 noundef zeroext %id, i32 noundef %nr_ents) local_unnamed_addr #0 align 64 {
do.end24.preheader:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %entry.coerce.fca.0.extract.i = extractvalue [1 x i32] %ent.coerce, 0
  %and.i = and i32 %entry.coerce.fca.0.extract.i, 67108863
  %add = add i32 %and.i, %nr_ents
  %shr.i.i = lshr i32 %entry.coerce.fca.0.extract.i, 26
  %arrayidx.i = getelementptr [30 x %struct.swap_cgroup_ctrl], ptr @swap_cgroup_ctrl, i32 0, i32 %shr.i.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %and.i.i = lshr i32 %entry.coerce.fca.0.extract.i, 11
  %div2.i.i = and i32 %and.i.i, 32767
  %arrayidx.i.i = getelementptr ptr, ptr %1, i32 %div2.i.i
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i = tail call ptr @page_address(ptr noundef %3) #4
  %rem.i.i = and i32 %entry.coerce.fca.0.extract.i, 2047
  %add.ptr.i.i = getelementptr %struct.swap_cgroup, ptr %call.i.i, i32 %rem.i.i
  %lock = getelementptr [30 x %struct.swap_cgroup_ctrl], ptr @swap_cgroup_ctrl, i32 0, i32 %shr.i.i, i32 2
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr.i.i, align 2
  br label %do.end24

do.body17:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/swap_cgroup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 141, 0\0A.popsection", ""() #4, !srcloc !31
  unreachable

do.end24:                                         ; preds = %if.end33.do.end24_crit_edge, %do.end24.preheader
  %sc.052 = phi ptr [ %sc.1, %if.end33.do.end24_crit_edge ], [ %add.ptr.i.i, %do.end24.preheader ]
  %offset.051 = phi i32 [ %inc, %if.end33.do.end24_crit_edge ], [ %and.i, %do.end24.preheader ]
  %6 = ptrtoint ptr %sc.052 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %id, ptr %sc.052, align 2
  %inc = add i32 %offset.051, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %add)
  %cmp26 = icmp eq i32 %inc, %add
  br i1 %cmp26, label %for.end, label %if.end29

if.end29:                                         ; preds = %do.end24
  %rem = and i32 %inc, 2047
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool30.not = icmp eq i32 %rem, 0
  br i1 %tobool30.not, label %if.else, label %if.then31

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  %incdec.ptr = getelementptr %struct.swap_cgroup, ptr %sc.052, i32 1
  br label %if.end33

if.else:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %div2.i = lshr i32 %inc, 11
  %arrayidx.i47 = getelementptr ptr, ptr %8, i32 %div2.i
  %9 = ptrtoint ptr %arrayidx.i47 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i47, align 4
  %call.i = tail call ptr @page_address(ptr noundef %10) #4
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then31
  %sc.1 = phi ptr [ %incdec.ptr, %if.then31 ], [ %call.i, %if.else ]
  %11 = ptrtoint ptr %sc.1 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %sc.1, align 2
  %cmp14.not = icmp eq i16 %12, %5
  br i1 %cmp14.not, label %if.end33.do.end24_crit_edge, label %do.body17, !prof !32

if.end33.do.end24_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end24

for.end:                                          ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #4
  ret i16 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @lookup_swap_cgroup_id([1 x i32] %ent.coerce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %entry.coerce.fca.0.extract.i.i = extractvalue [1 x i32] %ent.coerce, 0
  %shr.i.i = lshr i32 %entry.coerce.fca.0.extract.i.i, 26
  %arrayidx.i = getelementptr [30 x %struct.swap_cgroup_ctrl], ptr @swap_cgroup_ctrl, i32 0, i32 %shr.i.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %and.i.i = lshr i32 %entry.coerce.fca.0.extract.i.i, 11
  %div2.i.i = and i32 %and.i.i, 32767
  %arrayidx.i.i = getelementptr ptr, ptr %1, i32 %div2.i.i
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i = tail call ptr @page_address(ptr noundef %3) #4
  %rem.i.i = and i32 %entry.coerce.fca.0.extract.i.i, 2047
  %add.ptr.i.i = getelementptr %struct.swap_cgroup, ptr %call.i.i, i32 %rem.i.i
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr.i.i, align 2
  ret i16 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @swap_cgroup_swapon(i32 noundef %type, i32 noundef %max_pages) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %max_pages, 2047
  %div29 = lshr i32 %sub, 11
  %mul = shl nuw nsw i32 %div29, 2
  %call = tail call noalias ptr @vzalloc(i32 noundef %mul) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.do.end11_crit_edge, label %if.end

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end11

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [30 x %struct.swap_cgroup_ctrl], ptr @swap_cgroup_ctrl, i32 0, i32 %type
  tail call void @mutex_lock_nested(ptr noundef nonnull @swap_cgroup_mutex, i32 noundef 0) #4
  %length1 = getelementptr [30 x %struct.swap_cgroup_ctrl], ptr @swap_cgroup_ctrl, i32 0, i32 %type, i32 1
  %0 = ptrtoint ptr %length1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %div29, ptr %length1, align 4
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %arrayidx, align 4
  %lock = getelementptr [30 x %struct.swap_cgroup_ctrl], ptr @swap_cgroup_ctrl, i32 0, i32 %type, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @swap_cgroup_swapon.__key, i16 noundef signext 3) #4
  %2 = ptrtoint ptr %length1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp29.not.i = icmp eq i32 %3, 0
  br i1 %cmp29.not.i, label %if.end.if.end8_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %idx.030.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %call38.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3520, i32 noundef 0, i32 noundef 0, ptr noundef null) #4
  %tobool.not.i = icmp eq ptr %call38.i.i.i.i, null
  br i1 %tobool.not.i, label %for.cond6.preheader.i, label %if.end.i

for.cond6.preheader.i:                            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx.030.i)
  %cmp731.not.i = icmp eq i32 %idx.030.i, 0
  br i1 %cmp731.not.i, label %for.cond6.preheader.i.if.then5_crit_edge, label %for.cond6.preheader.i.for.body8.i_crit_edge

for.cond6.preheader.i.for.body8.i_crit_edge:      ; preds = %for.cond6.preheader.i
  br label %for.body8.i

for.cond6.preheader.i.if.then5_crit_edge:         ; preds = %for.cond6.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then5

if.end.i:                                         ; preds = %for.body.i
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %arrayidx1.i = getelementptr ptr, ptr %5, i32 %idx.030.i
  %6 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call38.i.i.i.i, ptr %arrayidx1.i, align 4
  %rem.i = and i32 %idx.030.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool2.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 54, i32 noundef 0) #4
  %call.i.i = tail call i32 @__cond_resched() #4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then3.i, %if.end.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %idx.030.i, 1
  %7 = ptrtoint ptr %length1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %length1, align 4
  %cmp.i = icmp ult i32 %inc.i, %8
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end8_crit_edge

for.inc.i.if.end8_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.body8.i:                                      ; preds = %for.body8.i.for.body8.i_crit_edge, %for.cond6.preheader.i.for.body8.i_crit_edge
  %idx.132.i = phi i32 [ %inc12.i, %for.body8.i.for.body8.i_crit_edge ], [ 0, %for.cond6.preheader.i.for.body8.i_crit_edge ]
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %arrayidx10.i = getelementptr ptr, ptr %10, i32 %idx.132.i
  %11 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx10.i, align 4
  tail call void @__free_pages(ptr noundef %12, i32 noundef 0) #4
  %inc12.i = add nuw i32 %idx.132.i, 1
  %exitcond.not.i = icmp eq i32 %inc12.i, %idx.030.i
  br i1 %exitcond.not.i, label %for.body8.i.if.then5_crit_edge, label %for.body8.i.for.body8.i_crit_edge

for.body8.i.for.body8.i_crit_edge:                ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body8.i

for.body8.i.if.then5_crit_edge:                   ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then5

if.then5:                                         ; preds = %for.body8.i.if.then5_crit_edge, %for.cond6.preheader.i.if.then5_crit_edge
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %arrayidx, align 4
  %14 = ptrtoint ptr %length1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %length1, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @swap_cgroup_mutex) #4
  tail call void @vfree(ptr noundef nonnull %call) #4
  br label %do.end11

if.end8:                                          ; preds = %for.inc.i.if.end8_crit_edge, %if.end.if.end8_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @swap_cgroup_mutex) #4
  br label %cleanup

do.end11:                                         ; preds = %if.then5, %entry.do.end11_crit_edge
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end11, %if.end8
  %retval.0 = phi i32 [ -12, %do.end11 ], [ 0, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @swap_cgroup_swapoff(i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @swap_cgroup_mutex, i32 noundef 0) #4
  %arrayidx = getelementptr [30 x %struct.swap_cgroup_ctrl], ptr @swap_cgroup_ctrl, i32 0, i32 %type
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %length2 = getelementptr [30 x %struct.swap_cgroup_ctrl], ptr @swap_cgroup_ctrl, i32 0, i32 %type, i32 1
  %2 = ptrtoint ptr %length2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length2, align 4
  store ptr null, ptr %arrayidx, align 4
  store i32 0, ptr %length2, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @swap_cgroup_mutex) #4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %for.cond.preheader

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp22.not = icmp eq i32 %3, 0
  br i1 %cmp22.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %if.end10.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.023 = phi i32 [ %inc, %if.end10.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx5 = getelementptr ptr, ptr %1, i32 %i.023
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx5, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %for.body.if.end_crit_edge, label %if.then7

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__free_pages(ptr noundef nonnull %5, i32 noundef 0) #4
  br label %if.end

if.end:                                           ; preds = %if.then7, %for.body.if.end_crit_edge
  %rem = and i32 %i.023, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool8.not = icmp eq i32 %rem, 0
  br i1 %tobool8.not, label %if.then9, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 223, i32 noundef 0) #4
  %call.i = tail call i32 @__cond_resched() #4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end.if.end10_crit_edge
  %inc = add nuw i32 %i.023, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %if.end10.for.end_crit_edge, label %if.end10.for.body_crit_edge

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %if.end10.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @vfree(ptr noundef nonnull %1) #4
  br label %if.end11

if.end11:                                         ; preds = %for.end, %entry.if.end11_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !11, !12, !13, !15, !17, !18, !19}
!llvm.named.register.sp = !{!21}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @swap_cgroup_swapon.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../mm/swap_cgroup.c", i32 185, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../mm/swap_cgroup.c", i32 198, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @swap_cgroup_swapon._entry, !4, !"_entry", i1 false, i1 false}
!8 = !{ptr @swap_cgroup_swapon._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../mm/swap_cgroup.c", i32 199, i32 2}
!11 = !{ptr @swap_cgroup_swapon._entry.4, !10, !"_entry", i1 false, i1 false}
!12 = !{ptr @swap_cgroup_swapon._entry_ptr.6, !10, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @swap_cgroup_ctrl, !14, !"swap_cgroup_ctrl", i1 false, i1 false}
!14 = !{!"../mm/swap_cgroup.c", i32 15, i32 32}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../mm/swap_cgroup.c", i32 8, i32 8}
!17 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @swap_cgroup_mutex, !16, !"swap_cgroup_mutex", i1 false, i1 false}
!19 = distinct !{null, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!21 = !{!"sp"}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{i64 2154814086, i64 2154814567, i64 2154814123, i64 2154814179, i64 2154814213, i64 2154814237, i64 2154814278, i64 2154814299, i64 2154814327, i64 2154814361}
!32 = !{!"branch_weights", i32 2000, i32 1}
