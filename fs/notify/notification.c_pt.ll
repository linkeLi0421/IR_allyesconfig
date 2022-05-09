; ModuleID = '/llk/IR_all_yes/fs/notify/notification.c_pt.bc'
source_filename = "../fs/notify/notification.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+fsnotify_get_cookie\22, \22a\22\09"
module asm "\09.weak\09__crc_fsnotify_get_cookie\09\09\09\09"
module asm "\09.long\09__crc_fsnotify_get_cookie\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsnotify_get_cookie:\09\09\09\09\09"
module asm "\09.asciz \09\22fsnotify_get_cookie\22\09\09\09\09\09"
module asm "__kstrtabns_fsnotify_get_cookie:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.fsnotify_group = type { ptr, %struct.refcount_struct, %struct.spinlock, %struct.list_head, %struct.wait_queue_head, i32, i32, i32, i8, %struct.mutex, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, %union.anon.76 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%union.anon.76 = type { %struct.fanotify_group_private_data }
%struct.fanotify_group_private_data = type { ptr, %struct.list_head, %struct.wait_queue_head, i32, i32, ptr, %struct.mempool_s }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.fsnotify_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }

@fsnotify_sync_cookie = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@__kstrtab_fsnotify_get_cookie = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsnotify_get_cookie = external dso_local constant [0 x i8], align 1
@__ksymtab_fsnotify_get_cookie = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsnotify_get_cookie to i32), ptr @__kstrtab_fsnotify_get_cookie, ptr @__kstrtabns_fsnotify_get_cookie }, section "___ksymtab_gpl+fsnotify_get_cookie", align 4
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fs/notify/notification.c\00", [39 x i8] zeroinitializer }, align 32
@fsnotify_insert_event.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.3, i8 0, i8 22, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"notification\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fsnotify_insert_event\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: group=%p event=%p\0A\00", [41 x i8] zeroinitializer }, align 32
@fsnotify_remove_first_event.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.4, ptr @.str, ptr @.str.3, i8 0, i8 42, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"fsnotify_remove_first_event\00", [36 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [21 x i8] c"fsnotify_sync_cookie\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 38, i32 17 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 64, i32 3 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 91, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private constant [28 x i8] c"../fs/notify/notification.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 170, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_fsnotify_get_cookie, ptr @fsnotify_sync_cookie, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsnotify_sync_cookie to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fsnotify_get_cookie() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @fsnotify_sync_cookie, i32 noundef 4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !23
  tail call void @llvm.prefetch.p0(ptr nonnull @fsnotify_sync_cookie, i32 1, i32 3, i32 1) #4
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @fsnotify_sync_cookie, ptr nonnull @fsnotify_sync_cookie, i32 1, ptr nonnull elementtype(i32) @fsnotify_sync_cookie) #4, !srcloc !24
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !25
  ret i32 %asmresult.i.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fsnotify_destroy_event(ptr noundef %group, ptr noundef %event) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %event, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %overflow_event = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 13
  %0 = ptrtoint ptr %overflow_event to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %overflow_event, align 4
  %cmp = icmp eq ptr %1, %event
  br i1 %cmp, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %event, align 4
  %cmp.i.not = icmp eq ptr %3, %event
  br i1 %cmp.i.not, label %if.end.if.end29_crit_edge, label %if.then2

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

if.then2:                                         ; preds = %if.end
  %notification_lock = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %notification_lock) #4
  %4 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %event, align 4
  %cmp.i39.not = icmp eq ptr %5, %event
  br i1 %cmp.i39.not, label %if.then2.if.end21_crit_edge, label %do.end, !prof !26

if.then2.if.end21_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef null) #4
  br label %if.end21

if.end21:                                         ; preds = %do.end, %if.then2.if.end21_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %notification_lock) #4
  br label %if.end29

if.end29:                                         ; preds = %if.end21, %if.end.if.end29_crit_edge
  %6 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %group, align 4
  %free_event = getelementptr inbounds %struct.fsnotify_ops, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %free_event to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %free_event, align 4
  tail call void %9(ptr noundef %group, ptr noundef nonnull %event) #4
  br label %return

return:                                           ; preds = %if.end29, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fsnotify_insert_event(ptr noundef %group, ptr noundef %event, ptr noundef readonly %merge, ptr noundef readonly %insert) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %notification_list = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsnotify_insert_event.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsnotify_insert_event, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !27

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fsnotify_insert_event.__UNIQUE_ID_ddebug232, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, ptr noundef %group, ptr noundef %event) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %notification_lock = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %notification_lock) #4
  %shutdown = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 8
  %0 = ptrtoint ptr %shutdown to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %shutdown, align 4, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool3.not = icmp eq i8 %1, 0
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_raw_spin_unlock(ptr noundef %notification_lock) #4
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %overflow_event = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 13
  %2 = ptrtoint ptr %overflow_event to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %overflow_event, align 4
  %cmp = icmp eq ptr %3, %event
  br i1 %cmp, label %if.end6.if.then8_crit_edge, label %lor.lhs.false

if.end6.if.then8_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then8

lor.lhs.false:                                    ; preds = %if.end6
  %q_len = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 5
  %4 = ptrtoint ptr %q_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %q_len, align 4
  %max_events = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 6
  %6 = ptrtoint ptr %max_events to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_events, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp7.not = icmp ult i32 %5, %7
  br i1 %cmp7.not, label %if.end17, label %lor.lhs.false.if.then8_crit_edge

lor.lhs.false.if.then8_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then8

if.then8:                                         ; preds = %lor.lhs.false.if.then8_crit_edge, %if.end6.if.then8_crit_edge
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %3, align 4
  %cmp.i.not = icmp eq ptr %9, %3
  br i1 %cmp.i.not, label %if.then8.queue_crit_edge, label %if.then13

if.then8.queue_crit_edge:                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  br label %queue

if.then13:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_raw_spin_unlock(ptr noundef %notification_lock) #4
  br label %cleanup

if.end17:                                         ; preds = %lor.lhs.false
  %10 = ptrtoint ptr %notification_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %notification_list, align 4
  %cmp.i62 = icmp eq ptr %11, %notification_list
  %tobool20.not = icmp eq ptr %merge, null
  %or.cond = or i1 %tobool20.not, %cmp.i62
  br i1 %or.cond, label %if.end17.queue_crit_edge, label %if.then21

if.end17.queue_crit_edge:                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %queue

if.then21:                                        ; preds = %if.end17
  %call22 = tail call i32 %merge(ptr noundef %group, ptr noundef %event) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then21.queue_crit_edge, label %if.then24

if.then21.queue_crit_edge:                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #6
  br label %queue

if.then24:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_raw_spin_unlock(ptr noundef %notification_lock) #4
  br label %cleanup

queue:                                            ; preds = %if.then21.queue_crit_edge, %if.end17.queue_crit_edge, %if.then8.queue_crit_edge
  %ret.0 = phi i32 [ 0, %if.end17.queue_crit_edge ], [ 0, %if.then21.queue_crit_edge ], [ 2, %if.then8.queue_crit_edge ]
  %event.addr.0 = phi ptr [ %event, %if.end17.queue_crit_edge ], [ %event, %if.then21.queue_crit_edge ], [ %3, %if.then8.queue_crit_edge ]
  %q_len28 = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 5
  %12 = ptrtoint ptr %q_len28 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %q_len28, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %q_len28, align 4
  %prev.i = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %event.addr.0, ptr noundef %15, ptr noundef %notification_list) #4
  br i1 %call.i.i, label %if.end.i.i, label %queue.list_add_tail.exit_crit_edge

queue.list_add_tail.exit_crit_edge:               ; preds = %queue
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %queue
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %event.addr.0, ptr %prev.i, align 4
  %17 = ptrtoint ptr %event.addr.0 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %notification_list, ptr %event.addr.0, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %event.addr.0, i32 0, i32 1
  %18 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev3.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %event.addr.0, ptr %15, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %queue.list_add_tail.exit_crit_edge
  %tobool30.not = icmp eq ptr %insert, null
  br i1 %tobool30.not, label %list_add_tail.exit.if.end32_crit_edge, label %if.then31

list_add_tail.exit.if.end32_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

if.then31:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %insert(ptr noundef %group, ptr noundef %event.addr.0) #4
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %list_add_tail.exit.if.end32_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %notification_lock) #4
  %notification_waitq = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %notification_waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #4
  %fsn_fa = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 12
  tail call void @kill_fasync(ptr noundef %fsn_fa, i32 noundef 29, i32 noundef 1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.then24, %if.then13, %if.then4
  %retval.0 = phi i32 [ 2, %if.then4 ], [ %ret.0, %if.end32 ], [ 2, %if.then13 ], [ %call22, %if.then24 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_fasync(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fsnotify_remove_queued_event(ptr noundef %group, ptr noundef %event) local_unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %notification_lock = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %0 = ptrtoint ptr %notification_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %notification_lock, align 4
  %1 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body4, label %do.end7, !prof !29

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/notify/notification.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 135, 0\0A.popsection", ""() #4, !srcloc !30
  unreachable

do.end7:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %event) #4
  br i1 %call.i.i, label %if.end.i.i, label %do.end7.list_del_init.exit_crit_edge

do.end7.list_del_init.exit_crit_edge:             ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %event, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %event, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.end7.list_del_init.exit_crit_edge
  %8 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %event, ptr %event, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %event, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %event, ptr %prev.i3.i, align 4
  %q_len = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 5
  %10 = ptrtoint ptr %q_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %q_len, align 4
  %dec = add i32 %11, -1
  store i32 %dec, ptr %q_len, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fsnotify_peek_first_event(ptr noundef %group) local_unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  %agg.tmp.sroa.0.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %notification_lock = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %0 = ptrtoint ptr %notification_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %notification_lock, align 4
  %1 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body4, label %do.end7, !prof !29

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/notify/notification.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 150, 0\0A.popsection", ""() #4, !srcloc !31
  unreachable

do.end7:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %2 = ptrtoint ptr %notification_lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %notification_lock, align 4
  %3 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %fsnotify_notify_queue_is_empty.exit, !prof !29

do.body4.i:                                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/fsnotify_backend.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 588, 0\0A.popsection", ""() #4, !srcloc !32
  unreachable

fsnotify_notify_queue_is_empty.exit:              ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #6
  %notification_list.i = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 3
  %4 = ptrtoint ptr %notification_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %notification_list.i, align 4
  %cmp.i.i13 = icmp eq ptr %5, %notification_list.i
  %spec.select = select i1 %cmp.i.i13, ptr null, ptr %5
  ret ptr %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fsnotify_remove_first_event(ptr noundef %group) local_unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i12 = alloca i32, align 4
  %agg.tmp.sroa.0.i.i.i = alloca i32, align 4
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %notification_lock.i = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %0 = ptrtoint ptr %notification_lock.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %notification_lock.i, align 4
  %1 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.end7.i, !prof !29

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/notify/notification.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 150, 0\0A.popsection", ""() #4, !srcloc !31
  unreachable

do.end7.i:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  %2 = ptrtoint ptr %notification_lock.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %agg.tmp.sroa.0.0.copyload.i.i.i = load volatile i32, ptr %notification_lock.i, align 4
  %3 = ptrtoint ptr %agg.tmp.sroa.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i.i, ptr %agg.tmp.sroa.0.i.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 16
  %conv.i.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i.i)
  %cmp.i.i.not.i.i = icmp eq i32 %conv.i.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  br i1 %cmp.i.i.not.i.i, label %do.body4.i.i, label %fsnotify_peek_first_event.exit, !prof !29

do.body4.i.i:                                     ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/fsnotify_backend.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 588, 0\0A.popsection", ""() #4, !srcloc !32
  unreachable

fsnotify_peek_first_event.exit:                   ; preds = %do.end7.i
  %notification_list.i.i = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 3
  %4 = ptrtoint ptr %notification_list.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %notification_list.i.i, align 4
  %cmp.i.i13.i = icmp eq ptr %5, %notification_list.i.i
  %tobool.not21 = icmp eq ptr %5, null
  %tobool.not = or i1 %cmp.i.i13.i, %tobool.not21
  br i1 %tobool.not, label %fsnotify_peek_first_event.exit.cleanup_crit_edge, label %do.body

fsnotify_peek_first_event.exit.cleanup_crit_edge: ; preds = %fsnotify_peek_first_event.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %fsnotify_peek_first_event.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsnotify_remove_first_event.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsnotify_remove_first_event, %if.then5)) #4
          to label %do.end [label %if.then5], !srcloc !27

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fsnotify_remove_first_event.__UNIQUE_ID_ddebug233, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %group, ptr noundef nonnull %5) #4
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i12)
  %6 = ptrtoint ptr %notification_lock.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %agg.tmp.sroa.0.0.copyload.i.i14 = load volatile i32, ptr %notification_lock.i, align 4
  %7 = ptrtoint ptr %agg.tmp.sroa.0.i.i12 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i14, ptr %agg.tmp.sroa.0.i.i12, align 4
  %lock.sroa.0.0.extract.shift.i.i.i15 = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i14, 16
  %conv.i.i.i16 = and i32 %agg.tmp.sroa.0.0.copyload.i.i14, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i16, i32 %lock.sroa.0.0.extract.shift.i.i.i15)
  %cmp.i.i.not.i17 = icmp eq i32 %conv.i.i.i16, %lock.sroa.0.0.extract.shift.i.i.i15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i12)
  br i1 %cmp.i.i.not.i17, label %do.body4.i18, label %do.end7.i19, !prof !29

do.body4.i18:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/notify/notification.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 135, 0\0A.popsection", ""() #4, !srcloc !30
  unreachable

do.end7.i19:                                      ; preds = %do.end
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %5) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end7.i19.fsnotify_remove_queued_event.exit_crit_edge

do.end7.i19.fsnotify_remove_queued_event.exit_crit_edge: ; preds = %do.end7.i19
  call void @__sanitizer_cov_trace_pc() #6
  br label %fsnotify_remove_queued_event.exit

if.end.i.i.i:                                     ; preds = %do.end7.i19
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i.i, align 4
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %fsnotify_remove_queued_event.exit

fsnotify_remove_queued_event.exit:                ; preds = %if.end.i.i.i, %do.end7.i19.fsnotify_remove_queued_event.exit_crit_edge
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %5, ptr %5, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %5, ptr %prev.i3.i.i, align 4
  %q_len.i = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 5
  %16 = ptrtoint ptr %q_len.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %q_len.i, align 4
  %dec.i = add i32 %17, -1
  store i32 %dec.i, ptr %q_len.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %fsnotify_remove_queued_event.exit, %fsnotify_peek_first_event.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %5, %fsnotify_remove_queued_event.exit ], [ null, %fsnotify_peek_first_event.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fsnotify_flush_notify(ptr noundef %group) local_unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %notification_lock = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %notification_lock) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %0 = ptrtoint ptr %notification_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %agg.tmp.sroa.0.0.copyload.i.i12 = load volatile i32, ptr %notification_lock, align 4
  %1 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i12, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i13 = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i12, 16
  %conv.i.i.i14 = and i32 %agg.tmp.sroa.0.0.copyload.i.i12, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i14, i32 %lock.sroa.0.0.extract.shift.i.i.i13)
  %cmp.i.i.not.i15 = icmp eq i32 %conv.i.i.i14, %lock.sroa.0.0.extract.shift.i.i.i13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i15, label %entry.do.body4.i_crit_edge, label %fsnotify_notify_queue_is_empty.exit.lr.ph, !prof !29

entry.do.body4.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body4.i

fsnotify_notify_queue_is_empty.exit.lr.ph:        ; preds = %entry
  %notification_list.i = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 3
  %overflow_event.i = getelementptr inbounds %struct.fsnotify_group, ptr %group, i32 0, i32 13
  br label %fsnotify_notify_queue_is_empty.exit

do.body4.i:                                       ; preds = %fsnotify_destroy_event.exit.do.body4.i_crit_edge, %entry.do.body4.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/fsnotify_backend.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 588, 0\0A.popsection", ""() #4, !srcloc !32
  unreachable

fsnotify_notify_queue_is_empty.exit:              ; preds = %fsnotify_destroy_event.exit.fsnotify_notify_queue_is_empty.exit_crit_edge, %fsnotify_notify_queue_is_empty.exit.lr.ph
  %2 = ptrtoint ptr %notification_list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %notification_list.i, align 4
  %cmp.i.i = icmp eq ptr %3, %notification_list.i
  br i1 %cmp.i.i, label %while.end, label %while.body

while.body:                                       ; preds = %fsnotify_notify_queue_is_empty.exit
  %call1 = tail call ptr @fsnotify_remove_first_event(ptr noundef %group)
  tail call void @_raw_spin_unlock(ptr noundef %notification_lock) #4
  %tobool.not.i = icmp eq ptr %call1, null
  br i1 %tobool.not.i, label %while.body.fsnotify_destroy_event.exit_crit_edge, label %lor.lhs.false.i

while.body.fsnotify_destroy_event.exit_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %fsnotify_destroy_event.exit

lor.lhs.false.i:                                  ; preds = %while.body
  %4 = ptrtoint ptr %overflow_event.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %overflow_event.i, align 4
  %cmp.i = icmp eq ptr %5, %call1
  br i1 %cmp.i, label %lor.lhs.false.i.fsnotify_destroy_event.exit_crit_edge, label %if.end.i

lor.lhs.false.i.fsnotify_destroy_event.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %fsnotify_destroy_event.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %6 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %call1, align 4
  %cmp.i.not.i = icmp eq ptr %7, %call1
  br i1 %cmp.i.not.i, label %if.end.i.if.end29.i_crit_edge, label %if.then2.i

if.end.i.if.end29.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29.i

if.then2.i:                                       ; preds = %if.end.i
  tail call void @_raw_spin_lock(ptr noundef %notification_lock) #4
  %8 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %call1, align 4
  %cmp.i39.not.i = icmp eq ptr %9, %call1
  br i1 %cmp.i39.not.i, label %if.then2.i.if.end21.i_crit_edge, label %do.end.i, !prof !26

if.then2.i.if.end21.i_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21.i

do.end.i:                                         ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef null) #4
  br label %if.end21.i

if.end21.i:                                       ; preds = %do.end.i, %if.then2.i.if.end21.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %notification_lock) #4
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.end21.i, %if.end.i.if.end29.i_crit_edge
  %10 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %group, align 4
  %free_event.i = getelementptr inbounds %struct.fsnotify_ops, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %free_event.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %free_event.i, align 4
  tail call void %13(ptr noundef %group, ptr noundef nonnull %call1) #4
  br label %fsnotify_destroy_event.exit

fsnotify_destroy_event.exit:                      ; preds = %if.end29.i, %lor.lhs.false.i.fsnotify_destroy_event.exit_crit_edge, %while.body.fsnotify_destroy_event.exit_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %notification_lock) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %14 = ptrtoint ptr %notification_lock to i32
  call void @__asan_load4_noabort(i32 %14)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %notification_lock, align 4
  %15 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %fsnotify_destroy_event.exit.do.body4.i_crit_edge, label %fsnotify_destroy_event.exit.fsnotify_notify_queue_is_empty.exit_crit_edge, !prof !29

fsnotify_destroy_event.exit.fsnotify_notify_queue_is_empty.exit_crit_edge: ; preds = %fsnotify_destroy_event.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %fsnotify_notify_queue_is_empty.exit

fsnotify_destroy_event.exit.do.body4.i_crit_edge: ; preds = %fsnotify_destroy_event.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body4.i

while.end:                                        ; preds = %fsnotify_notify_queue_is_empty.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_raw_spin_unlock(ptr noundef %notification_lock) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !11, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @__ksymtab_fsnotify_get_cookie, !1, !"__ksymtab_fsnotify_get_cookie", i1 false, i1 false}
!1 = !{!"../fs/notify/notification.c", i32 48, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/notify/notification.c", i32 64, i32 3}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/notify/notification.c", i32 91, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @fsnotify_insert_event.__UNIQUE_ID_ddebug232, !5, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/notify/notification.c", i32 170, i32 2}
!11 = !{ptr @fsnotify_remove_first_event.__UNIQUE_ID_ddebug233, !10, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!12 = !{ptr @fsnotify_sync_cookie, !13, !"fsnotify_sync_cookie", i1 false, i1 false}
!13 = !{!"../fs/notify/notification.c", i32 38, i32 17}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{i64 2148741554}
!24 = !{i64 2148656839, i64 2148656871, i64 2148656900, i64 2148656934, i64 2148656965, i64 2148656988}
!25 = !{i64 2148741783}
!26 = !{!"branch_weights", i32 2000, i32 1}
!27 = !{i64 2148480717, i64 2148480722, i64 2148480735, i64 2148480779, i64 2148480813, i64 2148480834}
!28 = !{i8 0, i8 2}
!29 = !{!"branch_weights", i32 1, i32 2000}
!30 = !{i64 2153786416, i64 2153786905, i64 2153786453, i64 2153786509, i64 2153786543, i64 2153786567, i64 2153786608, i64 2153786629, i64 2153786657, i64 2153786691}
!31 = !{i64 2153788348, i64 2153788837, i64 2153788385, i64 2153788441, i64 2153788475, i64 2153788499, i64 2153788540, i64 2153788561, i64 2153788589, i64 2153788623}
!32 = !{i64 2153206622, i64 2153207119, i64 2153206659, i64 2153206715, i64 2153206749, i64 2153206773, i64 2153206814, i64 2153206835, i64 2153206863, i64 2153206897}
