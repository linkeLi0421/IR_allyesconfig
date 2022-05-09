; ModuleID = '/llk/IR_all_yes/sound/core/seq/seq_prioq.c_pt.bc'
source_filename = "../sound/core/seq/seq_prioq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.3 }
%union.anon.3 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_seq_prioq = type { ptr, ptr, i32, %struct.spinlock }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_seq_event_cell = type { %struct.snd_seq_event, ptr, ptr }
%struct.snd_seq_event = type { i8, i8, i8, i8, %union.snd_seq_timestamp, %struct.snd_seq_addr, %struct.snd_seq_addr, %union.anon }
%union.snd_seq_timestamp = type { %struct.snd_seq_real_time }
%struct.snd_seq_real_time = type { i32, i32 }
%struct.snd_seq_addr = type { i8, i8 }
%union.anon = type { %struct.snd_seq_ev_ctrl }
%struct.snd_seq_ev_ctrl = type { i8, i8, i8, i8, i32, i32 }
%struct.snd_seq_remove_events = type { i32, %union.snd_seq_timestamp, i8, %struct.snd_seq_addr, i8, i32, i8, [10 x i32] }

@snd_seq_prioq_new.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&f->lock\00", [23 x i8] zeroinitializer }, align 32
@snd_seq_prioq_delete.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 16, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"snd_seq\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snd_seq_prioq_delete\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/core/seq/seq_prioq.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"ALSA: seq: snd_seq_prioq_delete() called with NULL prioq\0A\00", [38 x i8] zeroinitializer }, align 32
@snd_seq_prioq_cell_in._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.3, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013ALSA: seq: cannot find a pointer.. infinite loop?\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snd_seq_prioq_cell_in\00", [42 x i8] zeroinitializer }, align 32
@snd_seq_prioq_cell_in._entry_ptr = internal global ptr @snd_seq_prioq_cell_in._entry, section ".printk_index", align 4
@snd_seq_prioq_cell_out.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.7, ptr @.str.3, ptr @.str.8, i8 0, i8 54, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snd_seq_prioq_cell_out\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"ALSA: seq: snd_seq_prioq_cell_in() called with NULL prioq\0A\00", [37 x i8] zeroinitializer }, align 32
@snd_seq_prioq_avail.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.9, ptr @.str.3, ptr @.str.8, i8 0, i8 61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"snd_seq_prioq_avail\00", [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.10 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 50, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 65, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 183, i32 4 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 219, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.44 = private constant [30 x i8] c"../sound/core/seq/seq_prioq.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 246, i32 3 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @snd_seq_prioq_cell_in._entry, ptr @snd_seq_prioq_cell_in._entry_ptr, ptr @snd_seq_prioq_new.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_seq_prioq_new.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_seq_prioq_cell_in._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @snd_seq_prioq_new() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 56) #7
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %lock = getelementptr inbounds %struct.snd_seq_prioq, ptr %call7.i.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @snd_seq_prioq_new.__key, i16 noundef signext 3) #4
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %call7.i.i, align 8
  %tail = getelementptr inbounds %struct.snd_seq_prioq, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %tail, align 4
  %cells = getelementptr inbounds %struct.snd_seq_prioq, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %cells to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %cells, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_seq_prioq_delete(ptr nocapture noundef %fifo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fifo, align 4
  store ptr null, ptr %fifo, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.body, label %if.end4

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_seq_prioq_delete.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_seq_prioq_delete, %if.then3)) #4
          to label %cleanup [label %if.then3], !srcloc !30

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @snd_seq_prioq_delete.__UNIQUE_ID_ddebug229, ptr noundef nonnull @.str.4) #4
  br label %cleanup

if.end4:                                          ; preds = %entry
  %cells = getelementptr inbounds %struct.snd_seq_prioq, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cells to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cells, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp5 = icmp sgt i32 %3, 0
  br i1 %cmp5, label %do.body6.i.lr.ph, label %if.end4.if.end10_crit_edge

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

do.body6.i.lr.ph:                                 ; preds = %if.end4
  %lock.i = getelementptr inbounds %struct.snd_seq_prioq, ptr %1, i32 0, i32 3
  %tail.i = getelementptr inbounds %struct.snd_seq_prioq, ptr %1, i32 0, i32 1
  br label %do.body6.i

do.body6.i:                                       ; preds = %snd_seq_prioq_cell_out.exit.do.body6.i_crit_edge, %do.body6.i.lr.ph
  %call10.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %tobool15.not.i = icmp eq ptr %5, null
  br i1 %tobool15.not.i, label %do.body6.i.snd_seq_prioq_cell_out.exit_crit_edge, label %land.lhs.true.i

do.body6.i.snd_seq_prioq_cell_out.exit_crit_edge: ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %snd_seq_prioq_cell_out.exit

land.lhs.true.i:                                  ; preds = %do.body6.i
  %next.i = getelementptr inbounds %struct.snd_seq_event_cell, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %next.i, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %1, align 4
  %9 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tail.i, align 4
  %cmp25.i = icmp eq ptr %10, %5
  br i1 %cmp25.i, label %if.then27.i, label %land.lhs.true.i.if.end29.i_crit_edge

land.lhs.true.i.if.end29.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29.i

if.then27.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %tail.i, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then27.i, %land.lhs.true.i.if.end29.i_crit_edge
  %12 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %next.i, align 4
  %13 = ptrtoint ptr %cells to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cells, align 4
  %dec.i = add i32 %14, -1
  store i32 %dec.i, ptr %cells, align 4
  br label %snd_seq_prioq_cell_out.exit

snd_seq_prioq_cell_out.exit:                      ; preds = %if.end29.i, %do.body6.i.snd_seq_prioq_cell_out.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call10.i) #4
  tail call void @snd_seq_cell_free(ptr noundef %5) #4
  %15 = ptrtoint ptr %cells to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr = load i32, ptr %cells, align 4
  %cmp8 = icmp sgt i32 %.pr, 0
  br i1 %cmp8, label %snd_seq_prioq_cell_out.exit.do.body6.i_crit_edge, label %snd_seq_prioq_cell_out.exit.if.end10_crit_edge

snd_seq_prioq_cell_out.exit.if.end10_crit_edge:   ; preds = %snd_seq_prioq_cell_out.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

snd_seq_prioq_cell_out.exit.do.body6.i_crit_edge: ; preds = %snd_seq_prioq_cell_out.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body6.i

if.end10:                                         ; preds = %snd_seq_prioq_cell_out.exit.if.end10_crit_edge, %if.end4.if.end10_crit_edge
  tail call void @kfree(ptr noundef nonnull %1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then3, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_seq_cell_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @snd_seq_prioq_cell_out(ptr noundef %f, ptr noundef readonly %current_time) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %f, null
  br i1 %cmp, label %do.body, label %do.body6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_seq_prioq_cell_out.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_seq_prioq_cell_out, %if.then3)) #4
          to label %cleanup [label %if.then3], !srcloc !30

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @snd_seq_prioq_cell_out.__UNIQUE_ID_ddebug230, ptr noundef nonnull @.str.8) #4
  br label %cleanup

do.body6:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.snd_seq_prioq, ptr %f, i32 0, i32 3
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f, align 4
  %tobool15.not = icmp eq ptr %1, null
  br i1 %tobool15.not, label %do.body6.if.end31_crit_edge, label %land.lhs.true

do.body6.if.end31_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

land.lhs.true:                                    ; preds = %do.body6
  %tobool16.not = icmp eq ptr %current_time, null
  br i1 %tobool16.not, label %land.lhs.true.if.then23_crit_edge, label %land.lhs.true17

land.lhs.true.if.then23_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then23

land.lhs.true17:                                  ; preds = %land.lhs.true
  %flags.i = getelementptr inbounds %struct.snd_seq_event, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flags.i, align 1
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp.i = icmp eq i8 %4, 0
  %time.i = getelementptr inbounds %struct.snd_seq_event, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %current_time to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %current_time, align 4
  %7 = ptrtoint ptr %time.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %time.i, align 4
  br i1 %cmp.i, label %event_is_ready.exit, label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp.i7.i = icmp ugt i32 %6, %8
  br i1 %cmp.i7.i, label %if.else.i.if.then23_crit_edge, label %if.end.i.i

if.else.i.if.then23_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then23

if.end.i.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp4.i.i = icmp eq i32 %6, %8
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %if.end.i.i.if.end31_crit_edge

if.end.i.i.if.end31_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %tv_nsec.i.i = getelementptr inbounds %struct.snd_seq_real_time, ptr %current_time, i32 0, i32 1
  %9 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tv_nsec.i.i, align 4
  %tv_nsec5.i.i = getelementptr inbounds %struct.snd_seq_event, ptr %1, i32 0, i32 4, i32 0, i32 1
  %11 = ptrtoint ptr %tv_nsec5.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tv_nsec5.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp6.not.i.i = icmp ult i32 %10, %12
  br i1 %cmp6.not.i.i, label %land.lhs.true.i.i.if.end31_crit_edge, label %land.lhs.true.i.i.if.then23_crit_edge

land.lhs.true.i.i.if.then23_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then23

land.lhs.true.i.i.if.end31_crit_edge:             ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

event_is_ready.exit:                              ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp.i.i.not = icmp ult i32 %6, %8
  br i1 %cmp.i.i.not, label %event_is_ready.exit.if.end31_crit_edge, label %event_is_ready.exit.if.then23_crit_edge

event_is_ready.exit.if.then23_crit_edge:          ; preds = %event_is_ready.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then23

event_is_ready.exit.if.end31_crit_edge:           ; preds = %event_is_ready.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

if.then23:                                        ; preds = %event_is_ready.exit.if.then23_crit_edge, %land.lhs.true.i.i.if.then23_crit_edge, %if.else.i.if.then23_crit_edge, %land.lhs.true.if.then23_crit_edge
  %next = getelementptr inbounds %struct.snd_seq_event_cell, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %next, align 4
  %15 = ptrtoint ptr %f to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %f, align 4
  %tail = getelementptr inbounds %struct.snd_seq_prioq, ptr %f, i32 0, i32 1
  %16 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tail, align 4
  %cmp25 = icmp eq ptr %17, %1
  br i1 %cmp25, label %if.then27, label %if.then23.if.end29_crit_edge

if.then23.if.end29_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

if.then27:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %tail, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.then23.if.end29_crit_edge
  %19 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %next, align 4
  %cells = getelementptr inbounds %struct.snd_seq_prioq, ptr %f, i32 0, i32 2
  %20 = ptrtoint ptr %cells to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cells, align 4
  %dec = add i32 %21, -1
  store i32 %dec, ptr %cells, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.end29, %event_is_ready.exit.if.end31_crit_edge, %land.lhs.true.i.i.if.end31_crit_edge, %if.end.i.i.if.end31_crit_edge, %do.body6.if.end31_crit_edge
  %cell.058 = phi ptr [ %1, %if.end29 ], [ null, %do.body6.if.end31_crit_edge ], [ null, %land.lhs.true.i.i.if.end31_crit_edge ], [ null, %if.end.i.i.if.end31_crit_edge ], [ null, %event_is_ready.exit.if.end31_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call10) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.then3, %do.body
  %retval.0 = phi ptr [ %cell.058, %if.end31 ], [ null, %if.then3 ], [ null, %do.body ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_prioq_cell_in(ptr noundef %f, ptr noundef %cell) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %f, null
  %tobool1.not = icmp eq ptr %cell, null
  %spec.select = or i1 %tobool.not, %tobool1.not
  br i1 %spec.select, label %do.end, label %if.end24, !prof !31

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 139, i32 noundef 9, ptr noundef null) #4
  br label %cleanup95

if.end24:                                         ; preds = %entry
  %flags25 = getelementptr inbounds %struct.snd_seq_event, ptr %cell, i32 0, i32 1
  %0 = ptrtoint ptr %flags25 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags25, align 1
  %2 = and i8 %1, 16
  %lock = getelementptr inbounds %struct.snd_seq_prioq, ptr %f, i32 0, i32 3
  %call30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  %tail = getelementptr inbounds %struct.snd_seq_prioq, ptr %f, i32 0, i32 1
  %3 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tail, align 4
  %tobool35.not = icmp ne ptr %4, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool36.not = icmp eq i8 %2, 0
  %or.cond = select i1 %tobool35.not, i1 %tobool36.not, i1 false
  br i1 %or.cond, label %if.then37, label %if.end24.if.end49_crit_edge

if.end24.if.end49_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end49

if.then37:                                        ; preds = %if.end24
  %5 = ptrtoint ptr %flags25 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %flags25, align 1
  %7 = and i8 %6, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.i = icmp eq i8 %7, 0
  %time.i = getelementptr inbounds %struct.snd_seq_event, ptr %cell, i32 0, i32 4
  %time2.i = getelementptr inbounds %struct.snd_seq_event, ptr %4, i32 0, i32 4
  %8 = ptrtoint ptr %time.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %time.i, align 4
  %10 = ptrtoint ptr %time2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %time2.i, align 4
  br i1 %cmp.i, label %compare_timestamp.exit, label %if.else.i

if.else.i:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.i9.i = icmp ugt i32 %9, %11
  br i1 %cmp.i9.i, label %if.else.i.if.then43_crit_edge, label %if.end.i.i

if.else.i.if.then43_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then43

if.end.i.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp4.i.i = icmp eq i32 %9, %11
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %if.end.i.i.if.end49_crit_edge

if.end.i.i.if.end49_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end49

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %tv_nsec.i.i = getelementptr inbounds %struct.snd_seq_event, ptr %cell, i32 0, i32 4, i32 0, i32 1
  %12 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tv_nsec.i.i, align 4
  %tv_nsec5.i.i = getelementptr inbounds %struct.snd_seq_event, ptr %4, i32 0, i32 4, i32 0, i32 1
  %14 = ptrtoint ptr %tv_nsec5.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tv_nsec5.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp6.not.i.i = icmp ult i32 %13, %15
  br i1 %cmp6.not.i.i, label %land.lhs.true.i.i.if.end49_crit_edge, label %land.lhs.true.i.i.if.then43_crit_edge

land.lhs.true.i.i.if.then43_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then43

land.lhs.true.i.i.if.end49_crit_edge:             ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end49

compare_timestamp.exit:                           ; preds = %if.then37
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.i.i.not = icmp ult i32 %9, %11
  br i1 %cmp.i.i.not, label %compare_timestamp.exit.if.end49_crit_edge, label %compare_timestamp.exit.if.then43_crit_edge

compare_timestamp.exit.if.then43_crit_edge:       ; preds = %compare_timestamp.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then43

compare_timestamp.exit.if.end49_crit_edge:        ; preds = %compare_timestamp.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end49

if.then43:                                        ; preds = %compare_timestamp.exit.if.then43_crit_edge, %land.lhs.true.i.i.if.then43_crit_edge, %if.else.i.if.then43_crit_edge
  %next = getelementptr inbounds %struct.snd_seq_event_cell, ptr %4, i32 0, i32 2
  %16 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %cell, ptr %next, align 4
  %17 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %cell, ptr %tail, align 4
  %next46 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %cell, i32 0, i32 2
  %18 = ptrtoint ptr %next46 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %next46, align 4
  %cells = getelementptr inbounds %struct.snd_seq_prioq, ptr %f, i32 0, i32 2
  %19 = ptrtoint ptr %cells to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cells, align 4
  %inc = add i32 %20, 1
  store i32 %inc, ptr %cells, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call30) #4
  br label %cleanup95

if.end49:                                         ; preds = %compare_timestamp.exit.if.end49_crit_edge, %land.lhs.true.i.i.if.end49_crit_edge, %if.end.i.i.if.end49_crit_edge, %if.end24.if.end49_crit_edge
  %21 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %21)
  %cur.0170 = load ptr, ptr %f, align 4
  %cmp50.not171 = icmp eq ptr %cur.0170, null
  br i1 %cmp50.not171, label %if.end49.if.end79_crit_edge, label %while.body.lr.ph

if.end49.if.end79_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end79

while.body.lr.ph:                                 ; preds = %if.end49
  %22 = ptrtoint ptr %flags25 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %flags25, align 1
  %24 = and i8 %23, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp.i138 = icmp eq i8 %24, 0
  %time.i139 = getelementptr inbounds %struct.snd_seq_event, ptr %cell, i32 0, i32 4
  %25 = ptrtoint ptr %time.i139 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %time.i139, align 4
  %tv_nsec.i = getelementptr inbounds %struct.snd_seq_event, ptr %cell, i32 0, i32 4, i32 0, i32 1
  br label %while.body

while.cond:                                       ; preds = %if.end64
  %next65 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %cur.0174, i32 0, i32 2
  %27 = ptrtoint ptr %next65 to i32
  call void @__asan_load4_noabort(i32 %27)
  %cur.0 = load ptr, ptr %next65, align 4
  %cmp50.not = icmp eq ptr %cur.0, null
  br i1 %cmp50.not, label %while.cond.if.then77_crit_edge, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.cond.if.then77_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then77

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %while.body.lr.ph
  %cur.0174 = phi ptr [ %cur.0170, %while.body.lr.ph ], [ %cur.0, %while.cond.while.body_crit_edge ]
  %prev.0173 = phi ptr [ null, %while.body.lr.ph ], [ %cur.0174, %while.cond.while.body_crit_edge ]
  %count.0172 = phi i32 [ 10000, %while.body.lr.ph ], [ %dec, %while.cond.while.body_crit_edge ]
  %time2.i140 = getelementptr inbounds %struct.snd_seq_event, ptr %cur.0174, i32 0, i32 4
  %28 = ptrtoint ptr %time2.i140 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %time2.i140, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %29)
  %cmp3.i = icmp ugt i32 %26, %29
  br i1 %cmp.i138, label %if.then.i141, label %if.else12.i

if.then.i141:                                     ; preds = %while.body
  br i1 %cmp3.i, label %if.then.i141.if.end64_crit_edge, label %if.else.i142

if.then.i141.if.end64_crit_edge:                  ; preds = %if.then.i141
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end64

if.else.i142:                                     ; preds = %if.then.i141
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %29)
  %cmp8.i = icmp ne i32 %26, %29
  br label %compare_timestamp_rel.exit

if.else12.i:                                      ; preds = %while.body
  br i1 %cmp3.i, label %if.else12.i.if.end64_crit_edge, label %if.else19.i

if.else12.i.if.end64_crit_edge:                   ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end64

if.else19.i:                                      ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %29)
  %cmp24.i = icmp eq i32 %26, %29
  br i1 %cmp24.i, label %if.then26.i, label %if.else19.i.while.end_crit_edge

if.else19.i.while.end_crit_edge:                  ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.then26.i:                                      ; preds = %if.else19.i
  %30 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tv_nsec.i, align 4
  %tv_nsec29.i = getelementptr inbounds %struct.snd_seq_event, ptr %cur.0174, i32 0, i32 4, i32 0, i32 1
  %32 = ptrtoint ptr %tv_nsec29.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tv_nsec29.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp30.i = icmp ugt i32 %31, %33
  br i1 %cmp30.i, label %if.then26.i.if.end64_crit_edge, label %if.else33.i

if.then26.i.if.end64_crit_edge:                   ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end64

if.else33.i:                                      ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp38.i = icmp ne i32 %31, %33
  br label %compare_timestamp_rel.exit

compare_timestamp_rel.exit:                       ; preds = %if.else33.i, %if.else.i142
  %retval.0.i143.in = phi i1 [ %cmp8.i, %if.else.i142 ], [ %cmp38.i, %if.else33.i ]
  %cmp55 = xor i1 %retval.0.i143.in, true
  %or.cond167 = select i1 %cmp55, i1 %tobool36.not, i1 false
  br i1 %or.cond167, label %compare_timestamp_rel.exit.if.end64_crit_edge, label %compare_timestamp_rel.exit.while.end_crit_edge

compare_timestamp_rel.exit.while.end_crit_edge:   ; preds = %compare_timestamp_rel.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

compare_timestamp_rel.exit.if.end64_crit_edge:    ; preds = %compare_timestamp_rel.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end64

if.end64:                                         ; preds = %compare_timestamp_rel.exit.if.end64_crit_edge, %if.then26.i.if.end64_crit_edge, %if.else12.i.if.end64_crit_edge, %if.then.i141.if.end64_crit_edge
  %dec = add nsw i32 %count.0172, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool66.not = icmp eq i32 %dec, 0
  br i1 %tobool66.not, label %cleanup.thread162, label %while.cond

cleanup.thread162:                                ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call30) #4
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #8
  br label %cleanup95

while.end:                                        ; preds = %compare_timestamp_rel.exit.while.end_crit_edge, %if.else19.i.while.end_crit_edge
  %cmp75.not = icmp eq ptr %prev.0173, null
  br i1 %cmp75.not, label %while.end.if.end79_crit_edge, label %while.end.if.then77_crit_edge

while.end.if.then77_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then77

while.end.if.end79_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end79

if.then77:                                        ; preds = %while.end.if.then77_crit_edge, %while.cond.if.then77_crit_edge
  %cur.0.lcssa189 = phi ptr [ %cur.0174, %while.end.if.then77_crit_edge ], [ null, %while.cond.if.then77_crit_edge ]
  %prev.0.lcssa188 = phi ptr [ %prev.0173, %while.end.if.then77_crit_edge ], [ %cur.0174, %while.cond.if.then77_crit_edge ]
  %next78 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %prev.0.lcssa188, i32 0, i32 2
  %34 = ptrtoint ptr %next78 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %cell, ptr %next78, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.then77, %while.end.if.end79_crit_edge, %if.end49.if.end79_crit_edge
  %cur.0.lcssa183 = phi ptr [ %cur.0.lcssa189, %if.then77 ], [ %cur.0174, %while.end.if.end79_crit_edge ], [ null, %if.end49.if.end79_crit_edge ]
  %next80 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %cell, i32 0, i32 2
  %35 = ptrtoint ptr %next80 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %cur.0.lcssa183, ptr %next80, align 4
  %36 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %f, align 4
  %cmp82 = icmp eq ptr %37, %cur.0.lcssa183
  br i1 %cmp82, label %if.then84, label %if.end79.if.end86_crit_edge

if.end79.if.end86_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end86

if.then84:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #6
  %38 = ptrtoint ptr %f to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %cell, ptr %f, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.then84, %if.end79.if.end86_crit_edge
  %cmp87 = icmp eq ptr %cur.0.lcssa183, null
  br i1 %cmp87, label %if.then89, label %if.end86.if.end91_crit_edge

if.end86.if.end91_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end91

if.then89:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #6
  %39 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %cell, ptr %tail, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.then89, %if.end86.if.end91_crit_edge
  %cells92 = getelementptr inbounds %struct.snd_seq_prioq, ptr %f, i32 0, i32 2
  %40 = ptrtoint ptr %cells92 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cells92, align 4
  %inc93 = add i32 %41, 1
  store i32 %inc93, ptr %cells92, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call30) #4
  br label %cleanup95

cleanup95:                                        ; preds = %if.end91, %cleanup.thread162, %if.then43, %do.end
  %retval.2 = phi i32 [ -22, %do.end ], [ 0, %if.end91 ], [ 0, %if.then43 ], [ -22, %cleanup.thread162 ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_prioq_avail(ptr noundef readonly %f) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %f, null
  br i1 %cmp, label %do.body, label %if.end4

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_seq_prioq_avail.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_seq_prioq_avail, %if.then3)) #4
          to label %return [label %if.then3], !srcloc !30

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @snd_seq_prioq_avail.__UNIQUE_ID_ddebug231, ptr noundef nonnull @.str.8) #4
  br label %return

if.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %cells = getelementptr inbounds %struct.snd_seq_prioq, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %cells to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cells, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %do.body
  %retval.0 = phi i32 [ %1, %if.end4 ], [ 0, %if.then3 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_seq_prioq_leave(ptr noundef %f, i32 noundef %client, i32 noundef %timestamp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.snd_seq_prioq, ptr %f, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f, align 4
  %tobool.not61 = icmp eq ptr %1, null
  br i1 %tobool.not61, label %while.end.thread, label %while.body.lr.ph

while.end.thread:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #4
  br label %while.end36

while.body.lr.ph:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timestamp)
  %tobool.not.i = icmp eq i32 %timestamp, 0
  %tail = getelementptr inbounds %struct.snd_seq_prioq, ptr %f, i32 0, i32 1
  %cells = getelementptr inbounds %struct.snd_seq_prioq, ptr %f, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %if.end30.while.body_crit_edge, %while.body.lr.ph
  %cell.066 = phi ptr [ %1, %while.body.lr.ph ], [ %3, %if.end30.while.body_crit_edge ]
  %freeprev.064 = phi ptr [ null, %while.body.lr.ph ], [ %freeprev.1, %if.end30.while.body_crit_edge ]
  %freefirst.063 = phi ptr [ null, %while.body.lr.ph ], [ %freefirst.2, %if.end30.while.body_crit_edge ]
  %prev.062 = phi ptr [ null, %while.body.lr.ph ], [ %prev.1, %if.end30.while.body_crit_edge ]
  %next5 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %cell.066, i32 0, i32 2
  %2 = ptrtoint ptr %next5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %next5, align 4
  %source.i = getelementptr inbounds %struct.snd_seq_event, ptr %cell.066, i32 0, i32 5
  %4 = ptrtoint ptr %source.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %source.i, align 4
  %conv.i = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %client)
  %cmp.i = icmp eq i32 %conv.i, %client
  br i1 %cmp.i, label %while.body.if.then_crit_edge, label %lor.lhs.false.i

while.body.if.then_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false.i:                                  ; preds = %while.body
  %dest.i = getelementptr inbounds %struct.snd_seq_event, ptr %cell.066, i32 0, i32 6
  %6 = ptrtoint ptr %dest.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dest.i, align 2
  %conv5.i = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv5.i, i32 %client)
  %cmp6.i = icmp eq i32 %conv5.i, %client
  br i1 %cmp6.i, label %lor.lhs.false.i.if.then_crit_edge, label %if.end.i

lor.lhs.false.i.if.then_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.end.i:                                         ; preds = %lor.lhs.false.i
  br i1 %tobool.not.i, label %if.end.i.if.end30_crit_edge, label %if.end9.i

if.end.i.if.end30_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end30

if.end9.i:                                        ; preds = %if.end.i
  %flags.i = getelementptr inbounds %struct.snd_seq_event, ptr %cell.066, i32 0, i32 1
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %flags.i, align 1
  %10 = and i8 %9, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %trunc.not.i = icmp eq i8 %10, 0
  %time.i = getelementptr inbounds %struct.snd_seq_event, ptr %cell.066, i32 0, i32 4
  %11 = ptrtoint ptr %time.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %time.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool13.not.i = icmp eq i32 %12, 0
  br i1 %trunc.not.i, label %sw.bb.i, label %sw.bb16.i

sw.bb.i:                                          ; preds = %if.end9.i
  br i1 %tobool13.not.i, label %sw.bb.i.if.end30_crit_edge, label %sw.bb.i.if.then_crit_edge

sw.bb.i.if.then_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

sw.bb.i.if.end30_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end30

sw.bb16.i:                                        ; preds = %if.end9.i
  br i1 %tobool13.not.i, label %lor.lhs.false20.i, label %sw.bb16.i.if.then_crit_edge

sw.bb16.i.if.then_crit_edge:                      ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false20.i:                                ; preds = %sw.bb16.i
  %tv_nsec.i = getelementptr inbounds %struct.snd_seq_event, ptr %cell.066, i32 0, i32 4, i32 0, i32 1
  %13 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tv_nsec.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool23.not.i = icmp eq i32 %14, 0
  br i1 %tobool23.not.i, label %lor.lhs.false20.i.if.end30_crit_edge, label %lor.lhs.false20.i.if.then_crit_edge

lor.lhs.false20.i.if.then_crit_edge:              ; preds = %lor.lhs.false20.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false20.i.if.end30_crit_edge:             ; preds = %lor.lhs.false20.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end30

if.then:                                          ; preds = %lor.lhs.false20.i.if.then_crit_edge, %sw.bb16.i.if.then_crit_edge, %sw.bb.i.if.then_crit_edge, %lor.lhs.false.i.if.then_crit_edge, %while.body.if.then_crit_edge
  %15 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %f, align 4
  %cmp9 = icmp eq ptr %cell.066, %16
  %next15 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %prev.062, i32 0, i32 2
  %next15.sink = select i1 %cmp9, ptr %f, ptr %next15
  %17 = ptrtoint ptr %next15.sink to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %3, ptr %next15.sink, align 4
  %18 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tail, align 4
  %cmp16 = icmp eq ptr %cell.066, %19
  br i1 %cmp16, label %if.then18, label %if.then.if.end21_crit_edge

if.then.if.end21_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

if.then18:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %next5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %next5, align 4
  %22 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %tail, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.then.if.end21_crit_edge
  %23 = ptrtoint ptr %cells to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cells, align 4
  %dec = add i32 %24, -1
  store i32 %dec, ptr %cells, align 4
  %25 = ptrtoint ptr %next5 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %next5, align 4
  %cmp23 = icmp eq ptr %freefirst.063, null
  br i1 %cmp23, label %if.end21.if.end30_crit_edge, label %if.else26

if.end21.if.end30_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end30

if.else26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  %next27 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %freeprev.064, i32 0, i32 2
  %26 = ptrtoint ptr %next27 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %cell.066, ptr %next27, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.else26, %if.end21.if.end30_crit_edge, %lor.lhs.false20.i.if.end30_crit_edge, %sw.bb.i.if.end30_crit_edge, %if.end.i.if.end30_crit_edge
  %prev.1 = phi ptr [ %prev.062, %if.end21.if.end30_crit_edge ], [ %prev.062, %if.else26 ], [ %cell.066, %if.end.i.if.end30_crit_edge ], [ %cell.066, %lor.lhs.false20.i.if.end30_crit_edge ], [ %cell.066, %sw.bb.i.if.end30_crit_edge ]
  %freefirst.2 = phi ptr [ %cell.066, %if.end21.if.end30_crit_edge ], [ %freefirst.063, %if.else26 ], [ %freefirst.063, %if.end.i.if.end30_crit_edge ], [ %freefirst.063, %lor.lhs.false20.i.if.end30_crit_edge ], [ %freefirst.063, %sw.bb.i.if.end30_crit_edge ]
  %freeprev.1 = phi ptr [ %cell.066, %if.end21.if.end30_crit_edge ], [ %cell.066, %if.else26 ], [ %freeprev.064, %if.end.i.if.end30_crit_edge ], [ %freeprev.064, %lor.lhs.false20.i.if.end30_crit_edge ], [ %freeprev.064, %sw.bb.i.if.end30_crit_edge ]
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %while.end, label %if.end30.while.body_crit_edge

if.end30.while.body_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.end:                                        ; preds = %if.end30
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #4
  %tobool33.not67 = icmp eq ptr %freefirst.2, null
  br i1 %tobool33.not67, label %while.end.while.end36_crit_edge, label %while.end.while.body34_crit_edge

while.end.while.body34_crit_edge:                 ; preds = %while.end
  br label %while.body34

while.end.while.end36_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end36

while.body34:                                     ; preds = %while.body34.while.body34_crit_edge, %while.end.while.body34_crit_edge
  %freefirst.368 = phi ptr [ %28, %while.body34.while.body34_crit_edge ], [ %freefirst.2, %while.end.while.body34_crit_edge ]
  %next35 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %freefirst.368, i32 0, i32 2
  %27 = ptrtoint ptr %next35 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %next35, align 4
  tail call void @snd_seq_cell_free(ptr noundef nonnull %freefirst.368) #4
  %tobool33.not = icmp eq ptr %28, null
  br i1 %tobool33.not, label %while.body34.while.end36_crit_edge, label %while.body34.while.body34_crit_edge

while.body34.while.body34_crit_edge:              ; preds = %while.body34
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body34

while.body34.while.end36_crit_edge:               ; preds = %while.body34
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end36

while.end36:                                      ; preds = %while.body34.while.end36_crit_edge, %while.end.while.end36_crit_edge, %while.end.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_seq_prioq_remove_events(ptr noundef %f, i32 noundef %client, ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.snd_seq_prioq, ptr %f, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f, align 4
  %tobool.not67 = icmp eq ptr %1, null
  br i1 %tobool.not67, label %while.end.thread, label %while.body.lr.ph

while.end.thread:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #4
  br label %while.end41

while.body.lr.ph:                                 ; preds = %entry
  %dest1.i = getelementptr inbounds %struct.snd_seq_remove_events, ptr %info, i32 0, i32 3
  %port8.i = getelementptr inbounds %struct.snd_seq_remove_events, ptr %info, i32 0, i32 3, i32 1
  %channel28.i = getelementptr inbounds %struct.snd_seq_remove_events, ptr %info, i32 0, i32 4
  %time45.i = getelementptr inbounds %struct.snd_seq_remove_events, ptr %info, i32 0, i32 1
  %tv_nsec5.i.i = getelementptr inbounds %struct.snd_seq_remove_events, ptr %info, i32 0, i32 1, i32 0, i32 1
  %type78.i = getelementptr inbounds %struct.snd_seq_remove_events, ptr %info, i32 0, i32 5
  %tag.i = getelementptr inbounds %struct.snd_seq_remove_events, ptr %info, i32 0, i32 6
  %tail = getelementptr inbounds %struct.snd_seq_prioq, ptr %f, i32 0, i32 1
  %cells = getelementptr inbounds %struct.snd_seq_prioq, ptr %f, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %if.end35.while.body_crit_edge, %while.body.lr.ph
  %cell.073 = phi ptr [ %1, %while.body.lr.ph ], [ %3, %if.end35.while.body_crit_edge ]
  %freeprev.070 = phi ptr [ null, %while.body.lr.ph ], [ %freeprev.1, %if.end35.while.body_crit_edge ]
  %freefirst.069 = phi ptr [ null, %while.body.lr.ph ], [ %freefirst.2, %if.end35.while.body_crit_edge ]
  %prev.068 = phi ptr [ null, %while.body.lr.ph ], [ %prev.1, %if.end35.while.body_crit_edge ]
  %next5 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %cell.073, i32 0, i32 2
  %2 = ptrtoint ptr %next5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %next5, align 4
  %source = getelementptr inbounds %struct.snd_seq_event, ptr %cell.073, i32 0, i32 5
  %4 = ptrtoint ptr %source to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %source, align 4
  %conv7 = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv7, i32 %client)
  %cmp8 = icmp eq i32 %conv7, %client
  br i1 %cmp8, label %land.lhs.true, label %while.body.if.end35_crit_edge

while.body.if.end35_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

land.lhs.true:                                    ; preds = %while.body
  %6 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %info, align 4
  %and.i = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.if.end13.i_crit_edge, label %if.then.i

land.lhs.true.if.end13.i_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13.i

if.then.i:                                        ; preds = %land.lhs.true
  %dest.i = getelementptr inbounds %struct.snd_seq_event, ptr %cell.073, i32 0, i32 6
  %8 = ptrtoint ptr %dest.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dest.i, align 2
  %10 = ptrtoint ptr %dest1.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dest1.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %11)
  %cmp.not.i = icmp eq i8 %9, %11
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.then.i.if.end35_crit_edge

if.then.i.if.end35_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

lor.lhs.false.i:                                  ; preds = %if.then.i
  %port.i = getelementptr inbounds %struct.snd_seq_event, ptr %cell.073, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %port.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %port.i, align 1
  %14 = ptrtoint ptr %port8.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %port8.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %15)
  %cmp10.not.i = icmp eq i8 %13, %15
  br i1 %cmp10.not.i, label %lor.lhs.false.i.if.end13.i_crit_edge, label %lor.lhs.false.i.if.end35_crit_edge

lor.lhs.false.i.if.end35_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

lor.lhs.false.i.if.end13.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13.i

if.end13.i:                                       ; preds = %lor.lhs.false.i.if.end13.i_crit_edge, %land.lhs.true.if.end13.i_crit_edge
  %and15.i = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %if.end13.i.if.end34.i_crit_edge, label %if.then17.i

if.end13.i.if.end34.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34.i

if.then17.i:                                      ; preds = %if.end13.i
  %16 = ptrtoint ptr %cell.073 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %cell.073, align 4
  %18 = add i8 %17, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %18)
  %19 = icmp ult i8 %18, 15
  br i1 %19, label %if.end26.i, label %if.then17.i.if.end35_crit_edge

if.then17.i.if.end35_crit_edge:                   ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

if.end26.i:                                       ; preds = %if.then17.i
  %data.i = getelementptr inbounds %struct.snd_seq_event, ptr %cell.073, i32 0, i32 7
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %data.i, align 4
  %22 = ptrtoint ptr %channel28.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %channel28.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %23)
  %cmp30.not.i = icmp eq i8 %21, %23
  br i1 %cmp30.not.i, label %if.end26.i.if.end34.i_crit_edge, label %if.end26.i.if.end35_crit_edge

if.end26.i.if.end35_crit_edge:                    ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

if.end26.i.if.end34.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.end26.i.if.end34.i_crit_edge, %if.end13.i.if.end34.i_crit_edge
  %and36.i = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  br i1 %tobool37.not.i, label %if.end34.i.if.end51.i_crit_edge, label %if.then38.i

if.end34.i.if.end51.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end51.i

if.then38.i:                                      ; preds = %if.end34.i
  %and40.i = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i)
  %tobool41.not.i = icmp eq i32 %and40.i, 0
  %time44.i = getelementptr inbounds %struct.snd_seq_event, ptr %cell.073, i32 0, i32 4
  %24 = ptrtoint ptr %time44.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %time44.i, align 4
  %26 = ptrtoint ptr %time45.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %time45.i, align 4
  br i1 %tobool41.not.i, label %if.else.i, label %if.end47.i

if.else.i:                                        ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp.i132.i = icmp ugt i32 %25, %27
  br i1 %cmp.i132.i, label %if.else.i.if.end51.i_crit_edge, label %if.end.i.i

if.else.i.if.end51.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end51.i

if.end.i.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp4.i.i = icmp eq i32 %25, %27
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %if.end.i.i.if.end35_crit_edge

if.end.i.i.if.end35_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %tv_nsec.i.i = getelementptr inbounds %struct.snd_seq_event, ptr %cell.073, i32 0, i32 4, i32 0, i32 1
  %28 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tv_nsec.i.i, align 4
  %30 = ptrtoint ptr %tv_nsec5.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tv_nsec5.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp6.not.i.i = icmp ult i32 %29, %31
  br i1 %cmp6.not.i.i, label %land.lhs.true.i.i.if.end35_crit_edge, label %land.lhs.true.i.i.if.end51.i_crit_edge

land.lhs.true.i.i.if.end51.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end51.i

land.lhs.true.i.i.if.end35_crit_edge:             ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

if.end47.i:                                       ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp.i.not.i = icmp ult i32 %25, %27
  br i1 %cmp.i.not.i, label %if.end47.i.if.end35_crit_edge, label %if.end47.i.if.end51.i_crit_edge

if.end47.i.if.end51.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end51.i

if.end47.i.if.end35_crit_edge:                    ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

if.end51.i:                                       ; preds = %if.end47.i.if.end51.i_crit_edge, %land.lhs.true.i.i.if.end51.i_crit_edge, %if.else.i.if.end51.i_crit_edge, %if.end34.i.if.end51.i_crit_edge
  %and53.i = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.i)
  %tobool54.not.i = icmp eq i32 %and53.i, 0
  br i1 %tobool54.not.i, label %if.end51.i.if.end71.i_crit_edge, label %if.then55.i

if.end51.i.if.end71.i_crit_edge:                  ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end71.i

if.then55.i:                                      ; preds = %if.end51.i
  %and57.i = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57.i)
  %tobool58.not.i = icmp eq i32 %and57.i, 0
  %time64.i = getelementptr inbounds %struct.snd_seq_event, ptr %cell.073, i32 0, i32 4
  %32 = ptrtoint ptr %time64.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %time64.i, align 4
  %34 = ptrtoint ptr %time45.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %time45.i, align 4
  br i1 %tobool58.not.i, label %if.else63.i, label %if.end67.i

if.else63.i:                                      ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp.i135.i = icmp ugt i32 %33, %35
  br i1 %cmp.i135.i, label %if.else63.i.if.end35_crit_edge, label %if.end.i137.i

if.else63.i.if.end35_crit_edge:                   ; preds = %if.else63.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

if.end.i137.i:                                    ; preds = %if.else63.i
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp4.i136.i = icmp eq i32 %33, %35
  br i1 %cmp4.i136.i, label %land.lhs.true.i141.i, label %if.end.i137.i.if.end71.i_crit_edge

if.end.i137.i.if.end71.i_crit_edge:               ; preds = %if.end.i137.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end71.i

land.lhs.true.i141.i:                             ; preds = %if.end.i137.i
  %tv_nsec.i138.i = getelementptr inbounds %struct.snd_seq_event, ptr %cell.073, i32 0, i32 4, i32 0, i32 1
  %36 = ptrtoint ptr %tv_nsec.i138.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tv_nsec.i138.i, align 4
  %38 = ptrtoint ptr %tv_nsec5.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tv_nsec5.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %39)
  %cmp6.not.i140.i = icmp ult i32 %37, %39
  br i1 %cmp6.not.i140.i, label %land.lhs.true.i141.i.if.end71.i_crit_edge, label %land.lhs.true.i141.i.if.end35_crit_edge

land.lhs.true.i141.i.if.end35_crit_edge:          ; preds = %land.lhs.true.i141.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

land.lhs.true.i141.i.if.end71.i_crit_edge:        ; preds = %land.lhs.true.i141.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end71.i

if.end67.i:                                       ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp.i133.not.i = icmp ult i32 %33, %35
  br i1 %cmp.i133.not.i, label %if.end67.i.if.end71.i_crit_edge, label %if.end67.i.if.end35_crit_edge

if.end67.i.if.end35_crit_edge:                    ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

if.end67.i.if.end71.i_crit_edge:                  ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.end67.i.if.end71.i_crit_edge, %land.lhs.true.i141.i.if.end71.i_crit_edge, %if.end.i137.i.if.end71.i_crit_edge, %if.end51.i.if.end71.i_crit_edge
  %and73.i = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73.i)
  %tobool74.not.i = icmp eq i32 %and73.i, 0
  br i1 %tobool74.not.i, label %if.end71.i.if.end83.i_crit_edge, label %if.then75.i

if.end71.i.if.end83.i_crit_edge:                  ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end83.i

if.then75.i:                                      ; preds = %if.end71.i
  %40 = ptrtoint ptr %cell.073 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %cell.073, align 4
  %conv77.i = zext i8 %41 to i32
  %42 = ptrtoint ptr %type78.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %type78.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %conv77.i)
  %cmp79.not.i = icmp eq i32 %43, %conv77.i
  br i1 %cmp79.not.i, label %if.then75.i.if.end83.i_crit_edge, label %if.then75.i.if.end35_crit_edge

if.then75.i.if.end35_crit_edge:                   ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

if.then75.i.if.end83.i_crit_edge:                 ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end83.i

if.end83.i:                                       ; preds = %if.then75.i.if.end83.i_crit_edge, %if.end71.i.if.end83.i_crit_edge
  %and85.i = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85.i)
  %tobool86.not.i = icmp eq i32 %and85.i, 0
  br i1 %tobool86.not.i, label %if.end83.i.if.end90.i_crit_edge, label %if.then87.i

if.end83.i.if.end90.i_crit_edge:                  ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end90.i

if.then87.i:                                      ; preds = %if.end83.i
  %44 = ptrtoint ptr %cell.073 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %cell.073, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %45)
  %cond.i = icmp eq i8 %45, 7
  br i1 %cond.i, label %if.then87.i.if.end35_crit_edge, label %if.then87.i.if.end90.i_crit_edge

if.then87.i.if.end90.i_crit_edge:                 ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end90.i

if.then87.i.if.end35_crit_edge:                   ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

if.end90.i:                                       ; preds = %if.then87.i.if.end90.i_crit_edge, %if.end83.i.if.end90.i_crit_edge
  %and92.i = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92.i)
  %tobool93.not.i = icmp eq i32 %and92.i, 0
  br i1 %tobool93.not.i, label %if.end90.i.if.then_crit_edge, label %if.then94.i

if.end90.i.if.then_crit_edge:                     ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then94.i:                                      ; preds = %if.end90.i
  %46 = ptrtoint ptr %tag.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %tag.i, align 4
  %tag96.i = getelementptr inbounds %struct.snd_seq_event, ptr %cell.073, i32 0, i32 2
  %48 = ptrtoint ptr %tag96.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %tag96.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %47, i8 %49)
  %cmp98.not.i = icmp eq i8 %47, %49
  br i1 %cmp98.not.i, label %if.then94.i.if.then_crit_edge, label %if.then94.i.if.end35_crit_edge

if.then94.i.if.end35_crit_edge:                   ; preds = %if.then94.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

if.then94.i.if.then_crit_edge:                    ; preds = %if.then94.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %if.then94.i.if.then_crit_edge, %if.end90.i.if.then_crit_edge
  %50 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %f, align 4
  %cmp14 = icmp eq ptr %cell.073, %51
  %next20 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %prev.068, i32 0, i32 2
  %next20.sink = select i1 %cmp14, ptr %f, ptr %next20
  %52 = ptrtoint ptr %next20.sink to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %3, ptr %next20.sink, align 4
  %53 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %tail, align 4
  %cmp21 = icmp eq ptr %cell.073, %54
  br i1 %cmp21, label %if.then23, label %if.then.if.end26_crit_edge

if.then.if.end26_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.then23:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %55 = ptrtoint ptr %next5 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %next5, align 4
  %57 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %56, ptr %tail, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.then.if.end26_crit_edge
  %58 = ptrtoint ptr %cells to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cells, align 4
  %dec = add i32 %59, -1
  store i32 %dec, ptr %cells, align 4
  %60 = ptrtoint ptr %next5 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %next5, align 4
  %cmp28 = icmp eq ptr %freefirst.069, null
  br i1 %cmp28, label %if.end26.if.end35_crit_edge, label %if.else31

if.end26.if.end35_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

if.else31:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  %next32 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %freeprev.070, i32 0, i32 2
  %61 = ptrtoint ptr %next32 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %cell.073, ptr %next32, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.else31, %if.end26.if.end35_crit_edge, %if.then94.i.if.end35_crit_edge, %if.then87.i.if.end35_crit_edge, %if.then75.i.if.end35_crit_edge, %if.end67.i.if.end35_crit_edge, %land.lhs.true.i141.i.if.end35_crit_edge, %if.else63.i.if.end35_crit_edge, %if.end47.i.if.end35_crit_edge, %land.lhs.true.i.i.if.end35_crit_edge, %if.end.i.i.if.end35_crit_edge, %if.end26.i.if.end35_crit_edge, %if.then17.i.if.end35_crit_edge, %lor.lhs.false.i.if.end35_crit_edge, %if.then.i.if.end35_crit_edge, %while.body.if.end35_crit_edge
  %prev.1 = phi ptr [ %prev.068, %if.end26.if.end35_crit_edge ], [ %prev.068, %if.else31 ], [ %cell.073, %while.body.if.end35_crit_edge ], [ %cell.073, %lor.lhs.false.i.if.end35_crit_edge ], [ %cell.073, %if.then.i.if.end35_crit_edge ], [ %cell.073, %if.then17.i.if.end35_crit_edge ], [ %cell.073, %if.end26.i.if.end35_crit_edge ], [ %cell.073, %if.end47.i.if.end35_crit_edge ], [ %cell.073, %if.end67.i.if.end35_crit_edge ], [ %cell.073, %if.then75.i.if.end35_crit_edge ], [ %cell.073, %if.then87.i.if.end35_crit_edge ], [ %cell.073, %if.then94.i.if.end35_crit_edge ], [ %cell.073, %if.end.i.i.if.end35_crit_edge ], [ %cell.073, %land.lhs.true.i.i.if.end35_crit_edge ], [ %cell.073, %if.else63.i.if.end35_crit_edge ], [ %cell.073, %land.lhs.true.i141.i.if.end35_crit_edge ]
  %freefirst.2 = phi ptr [ %cell.073, %if.end26.if.end35_crit_edge ], [ %freefirst.069, %if.else31 ], [ %freefirst.069, %while.body.if.end35_crit_edge ], [ %freefirst.069, %lor.lhs.false.i.if.end35_crit_edge ], [ %freefirst.069, %if.then.i.if.end35_crit_edge ], [ %freefirst.069, %if.then17.i.if.end35_crit_edge ], [ %freefirst.069, %if.end26.i.if.end35_crit_edge ], [ %freefirst.069, %if.end47.i.if.end35_crit_edge ], [ %freefirst.069, %if.end67.i.if.end35_crit_edge ], [ %freefirst.069, %if.then75.i.if.end35_crit_edge ], [ %freefirst.069, %if.then87.i.if.end35_crit_edge ], [ %freefirst.069, %if.then94.i.if.end35_crit_edge ], [ %freefirst.069, %if.end.i.i.if.end35_crit_edge ], [ %freefirst.069, %land.lhs.true.i.i.if.end35_crit_edge ], [ %freefirst.069, %if.else63.i.if.end35_crit_edge ], [ %freefirst.069, %land.lhs.true.i141.i.if.end35_crit_edge ]
  %freeprev.1 = phi ptr [ %cell.073, %if.end26.if.end35_crit_edge ], [ %cell.073, %if.else31 ], [ %freeprev.070, %while.body.if.end35_crit_edge ], [ %freeprev.070, %lor.lhs.false.i.if.end35_crit_edge ], [ %freeprev.070, %if.then.i.if.end35_crit_edge ], [ %freeprev.070, %if.then17.i.if.end35_crit_edge ], [ %freeprev.070, %if.end26.i.if.end35_crit_edge ], [ %freeprev.070, %if.end47.i.if.end35_crit_edge ], [ %freeprev.070, %if.end67.i.if.end35_crit_edge ], [ %freeprev.070, %if.then75.i.if.end35_crit_edge ], [ %freeprev.070, %if.then87.i.if.end35_crit_edge ], [ %freeprev.070, %if.then94.i.if.end35_crit_edge ], [ %freeprev.070, %if.end.i.i.if.end35_crit_edge ], [ %freeprev.070, %land.lhs.true.i.i.if.end35_crit_edge ], [ %freeprev.070, %if.else63.i.if.end35_crit_edge ], [ %freeprev.070, %land.lhs.true.i141.i.if.end35_crit_edge ]
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %while.end, label %if.end35.while.body_crit_edge

if.end35.while.body_crit_edge:                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.end:                                        ; preds = %if.end35
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #4
  %tobool38.not74 = icmp eq ptr %freefirst.2, null
  br i1 %tobool38.not74, label %while.end.while.end41_crit_edge, label %while.end.while.body39_crit_edge

while.end.while.body39_crit_edge:                 ; preds = %while.end
  br label %while.body39

while.end.while.end41_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end41

while.body39:                                     ; preds = %while.body39.while.body39_crit_edge, %while.end.while.body39_crit_edge
  %freefirst.375 = phi ptr [ %63, %while.body39.while.body39_crit_edge ], [ %freefirst.2, %while.end.while.body39_crit_edge ]
  %next40 = getelementptr inbounds %struct.snd_seq_event_cell, ptr %freefirst.375, i32 0, i32 2
  %62 = ptrtoint ptr %next40 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %next40, align 4
  tail call void @snd_seq_cell_free(ptr noundef nonnull %freefirst.375) #4
  %tobool38.not = icmp eq ptr %63, null
  br i1 %tobool38.not, label %while.body39.while.end41_crit_edge, label %while.body39.while.body39_crit_edge

while.body39.while.body39_crit_edge:              ; preds = %while.body39
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body39

while.body39.while.end41_crit_edge:               ; preds = %while.body39
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end41

while.end41:                                      ; preds = %while.body39.while.end41_crit_edge, %while.end.while.end41_crit_edge, %while.end.thread
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

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
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !11, !12, !13, !14, !16, !17, !18, !20}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @snd_seq_prioq_new.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../sound/core/seq/seq_prioq.c", i32 50, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../sound/core/seq/seq_prioq.c", i32 65, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @snd_seq_prioq_delete.__UNIQUE_ID_ddebug229, !4, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../sound/core/seq/seq_prioq.c", i32 183, i32 4}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @snd_seq_prioq_cell_in._entry, !10, !"_entry", i1 false, i1 false}
!13 = !{ptr @snd_seq_prioq_cell_in._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/core/seq/seq_prioq.c", i32 219, i32 3}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @snd_seq_prioq_cell_out.__UNIQUE_ID_ddebug230, !15, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/core/seq/seq_prioq.c", i32 246, i32 3}
!20 = !{ptr @snd_seq_prioq_avail.__UNIQUE_ID_ddebug231, !19, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{i64 2148794377, i64 2148794382, i64 2148794395, i64 2148794439, i64 2148794473, i64 2148794494}
!31 = !{!"branch_weights", i32 1, i32 2000}
