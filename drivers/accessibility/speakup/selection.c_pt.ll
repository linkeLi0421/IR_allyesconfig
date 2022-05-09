; ModuleID = '/llk/IR_all_yes/drivers/accessibility/speakup/selection.c_pt.bc'
source_filename = "../drivers/accessibility/speakup/selection.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.speakup_selection_work = type { %struct.work_struct, %struct.tiocl_selection, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tiocl_selection = type { i16, i16, i16, i16, i16 }
%struct.vc = type { ptr, %struct.work_struct }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.68, %struct.anon.69, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.68 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.69 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }

@speakup_sel_work = internal global { %struct.speakup_selection_work, [36 x i8] } { %struct.speakup_selection_work { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @speakup_sel_work, i64 4), ptr getelementptr (i8, ptr @speakup_sel_work, i64 4) }, ptr @__speakup_set_selection, %struct.lockdep_map { ptr @speakup_sel_work, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 0, i8 0, i32 0, i32 0 } }, %struct.tiocl_selection zeroinitializer, ptr null }, [36 x i8] zeroinitializer }, align 32
@spk_xs = dso_local global { i16, [30 x i8] } zeroinitializer, align 32
@spk_ys = dso_local global { i16, [30 x i8] } zeroinitializer, align 32
@spk_xe = dso_local global { i16, [30 x i8] } zeroinitializer, align 32
@spk_ye = dso_local global { i16, [30 x i8] } zeroinitializer, align 32
@speakup_paste_work = internal global { %struct.speakup_selection_work, [36 x i8] } { %struct.speakup_selection_work { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @speakup_paste_work, i64 4), ptr getelementptr (i8, ptr @speakup_paste_work, i64 4) }, ptr @__speakup_paste_selection, %struct.lockdep_map { ptr @speakup_paste_work, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 0, i8 0, i32 0, i32 0 } }, %struct.tiocl_selection zeroinitializer, ptr null }, [36 x i8] zeroinitializer }, align 32
@spk_sel_cons = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"speakup_sel_work.work\00", [42 x i8] zeroinitializer }, align 32
@vc_cons = external dso_local local_unnamed_addr global [63 x %struct.vc], align 4
@fg_console = external dso_local local_unnamed_addr global i32, align 4
@__speakup_set_selection._entry = internal constant %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 43, ptr null, ptr null }, align 1
@.str.1 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014Selection: mark console not the same as cut\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"__speakup_set_selection\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/accessibility/speakup/selection.c\00", [54 x i8] zeroinitializer }, align 32
@__speakup_set_selection._entry_ptr = internal global ptr @__speakup_set_selection._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"speakup_paste_work.work\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"speakup_sel_work\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 57, i32 38 }
@___asan_gen_.8 = private unnamed_addr constant [7 x i8] c"spk_xs\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 16, i32 16 }
@___asan_gen_.11 = private unnamed_addr constant [7 x i8] c"spk_ys\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 16, i32 24 }
@___asan_gen_.14 = private unnamed_addr constant [7 x i8] c"spk_xe\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 16, i32 32 }
@___asan_gen_.17 = private unnamed_addr constant [7 x i8] c"spk_ye\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 16, i32 40 }
@___asan_gen_.20 = private unnamed_addr constant [19 x i8] c"speakup_paste_work\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 116, i32 38 }
@___asan_gen_.23 = private unnamed_addr constant [13 x i8] c"spk_sel_cons\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 17, i32 17 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 58, i32 10 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 43, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.39 = private constant [45 x i8] c"../drivers/accessibility/speakup/selection.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 117, i32 10 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__speakup_set_selection._entry, ptr @__speakup_set_selection._entry_ptr, ptr @speakup_sel_work, ptr @spk_xs, ptr @spk_ys, ptr @spk_xe, ptr @spk_ye, ptr @speakup_paste_work, ptr @spk_sel_cons, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speakup_sel_work to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_xs to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_ys to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_xe to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_ye to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speakup_paste_work to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_sel_cons to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @speakup_set_selection(ptr noundef %tty) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %tty, null
  br i1 %tobool.not.i, label %entry.tty_kref_get.exit_crit_edge, label %if.then.i

entry.tty_kref_get.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %tty_kref_get.exit

if.then.i:                                        ; preds = %entry
  %kref.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #5
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #5, !srcloc !33
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !34

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.tty_kref_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !35

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.tty_kref_get.exit_crit_edge:    ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tty_kref_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #5
  br label %tty_kref_get.exit

tty_kref_get.exit:                                ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.tty_kref_get.exit_crit_edge, %entry.tty_kref_get.exit_crit_edge
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.speakup_selection_work, ptr @speakup_sel_work, i32 0, i32 2), i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !36
  %2 = ptrtoint ptr %tty to i32
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds (%struct.speakup_selection_work, ptr @speakup_sel_work, i32 0, i32 2), i32 1, i32 3, i32 1) #5
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %tty_kref_get.exit
  %3 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr getelementptr inbounds (%struct.speakup_selection_work, ptr @speakup_sel_work, i32 0, i32 2), i32 0, i32 %2) #5, !srcloc !37
  %asmresult.i = extractvalue { i32, i32 } %3, 0
  %tobool.not.i33 = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i33, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  %asmresult1.i = extractvalue { i32, i32 } %3, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i)
  %tobool.not = icmp eq i32 %asmresult1.i, 0
  br i1 %tobool.not, label %do.body16, label %if.then

if.then:                                          ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @tty_kref_put(ptr noundef %tty) #5
  br label %return

do.body16:                                        ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !39
  tail call void @arm_heavy_mb() #5
  %4 = load i16, ptr @spk_xs, align 2
  %add = add i16 %4, 1
  store i16 %add, ptr getelementptr inbounds (%struct.speakup_selection_work, ptr @speakup_sel_work, i32 0, i32 1), align 4
  %5 = load i16, ptr @spk_ys, align 2
  %add21 = add i16 %5, 1
  store i16 %add21, ptr getelementptr inbounds (%struct.speakup_selection_work, ptr @speakup_sel_work, i32 0, i32 1, i32 1), align 2
  %6 = load i16, ptr @spk_xe, align 2
  %add24 = add i16 %6, 1
  store i16 %add24, ptr getelementptr inbounds (%struct.speakup_selection_work, ptr @speakup_sel_work, i32 0, i32 1, i32 2), align 4
  %7 = load i16, ptr @spk_ye, align 2
  %add27 = add i16 %7, 1
  store i16 %add27, ptr getelementptr inbounds (%struct.speakup_selection_work, ptr @speakup_sel_work, i32 0, i32 1, i32 3), align 2
  store i16 0, ptr getelementptr inbounds (%struct.speakup_selection_work, ptr @speakup_sel_work, i32 0, i32 1, i32 4), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %8 = load ptr, ptr @system_wq, align 4
  %call.i34 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %8, ptr noundef nonnull @speakup_sel_work) #5
  br label %return

return:                                           ; preds = %do.body16, %if.then
  %retval.0 = phi i32 [ -16, %if.then ], [ 0, %do.body16 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_kref_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @speakup_cancel_selection() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef nonnull @speakup_sel_work) #5
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.speakup_selection_work, ptr @speakup_sel_work, i32 0, i32 2), i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !40
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds (%struct.speakup_selection_work, ptr @speakup_sel_work, i32 0, i32 2), i32 1, i32 3, i32 1) #5
  %0 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr getelementptr inbounds (%struct.speakup_selection_work, ptr @speakup_sel_work, i32 0, i32 2)) #5, !srcloc !41
  %asmresult.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool.not = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = inttoptr i32 %asmresult.i to ptr
  tail call void @tty_kref_put(ptr noundef nonnull %1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @speakup_paste_selection(ptr noundef %tty) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %tty, null
  br i1 %tobool.not.i, label %entry.tty_kref_get.exit_crit_edge, label %if.then.i

entry.tty_kref_get.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %tty_kref_get.exit

if.then.i:                                        ; preds = %entry
  %kref.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #5
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #5, !srcloc !33
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !34

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.tty_kref_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !35

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.tty_kref_get.exit_crit_edge:    ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tty_kref_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #5
  br label %tty_kref_get.exit

tty_kref_get.exit:                                ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.tty_kref_get.exit_crit_edge, %entry.tty_kref_get.exit_crit_edge
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.speakup_selection_work, ptr @speakup_paste_work, i32 0, i32 2), i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !43
  %2 = ptrtoint ptr %tty to i32
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds (%struct.speakup_selection_work, ptr @speakup_paste_work, i32 0, i32 2), i32 1, i32 3, i32 1) #5
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %tty_kref_get.exit
  %3 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr getelementptr inbounds (%struct.speakup_selection_work, ptr @speakup_paste_work, i32 0, i32 2), i32 0, i32 %2) #5, !srcloc !37
  %asmresult.i = extractvalue { i32, i32 } %3, 0
  %tobool.not.i20 = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i20, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  %asmresult1.i = extractvalue { i32, i32 } %3, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i)
  %tobool.not = icmp eq i32 %asmresult1.i, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @tty_kref_put(ptr noundef %tty) #5
  br label %return

if.end:                                           ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i21 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef nonnull @speakup_paste_work) #5
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -16, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @speakup_cancel_paste() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef nonnull @speakup_paste_work) #5
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.speakup_selection_work, ptr @speakup_paste_work, i32 0, i32 2), i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !45
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds (%struct.speakup_selection_work, ptr @speakup_paste_work, i32 0, i32 2), i32 1, i32 3, i32 1) #5
  %0 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr getelementptr inbounds (%struct.speakup_selection_work, ptr @speakup_paste_work, i32 0, i32 2)) #5, !srcloc !41
  %asmresult.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool.not = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = inttoptr i32 %asmresult.i to ptr
  tail call void @tty_kref_put(ptr noundef nonnull %1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__speakup_set_selection(ptr noundef %work) #0 align 64 {
entry:
  %sel = alloca %struct.tiocl_selection, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %sel) #5
  %sel1 = getelementptr inbounds %struct.speakup_selection_work, ptr %work, i32 0, i32 1
  %0 = call ptr @memcpy(ptr %sel, ptr %sel1, i32 10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  %tty2 = getelementptr inbounds %struct.speakup_selection_work, ptr %work, i32 0, i32 2
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tty2, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !48
  tail call void @llvm.prefetch.p0(ptr %tty2, i32 1, i32 3, i32 1) #5
  %1 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %tty2) #5, !srcloc !41
  %asmresult.i = extractvalue { i32, i32 } %1, 0
  %2 = inttoptr i32 %asmresult.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !49
  %3 = load ptr, ptr @spk_sel_cons, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fg_console to i32))
  %4 = load i32, ptr @fg_console, align 4
  %arrayidx = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %cmp.not = icmp eq ptr %3, %6
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  store ptr %6, ptr @spk_sel_cons, align 4
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  br label %unref

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @console_lock() #5
  tail call void @clear_selection() #5
  tail call void @console_unlock() #5
  %call25 = call i32 @set_selection_kernel(ptr noundef nonnull %sel, ptr noundef %2) #5
  br label %unref

unref:                                            ; preds = %if.end, %if.then
  call void @tty_kref_put(ptr noundef %2) #5
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %sel) #5
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_selection() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_selection_kernel(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__speakup_paste_selection(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tty1 = getelementptr inbounds %struct.speakup_selection_work, ptr %work, i32 0, i32 2
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tty1, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @llvm.prefetch.p0(ptr %tty1, i32 1, i32 3, i32 1) #5
  %0 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %tty1) #5, !srcloc !41
  %asmresult.i = extractvalue { i32, i32 } %0, 0
  %1 = inttoptr i32 %asmresult.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !51
  %call17 = tail call i32 @paste_selection(ptr noundef %1) #5
  tail call void @tty_kref_put(ptr noundef %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @paste_selection(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @spk_xs, !1, !"spk_xs", i1 false, i1 false}
!1 = !{!"../drivers/accessibility/speakup/selection.c", i32 16, i32 16}
!2 = !{ptr @spk_ys, !3, !"spk_ys", i1 false, i1 false}
!3 = !{!"../drivers/accessibility/speakup/selection.c", i32 16, i32 24}
!4 = !{ptr @spk_xe, !5, !"spk_xe", i1 false, i1 false}
!5 = !{!"../drivers/accessibility/speakup/selection.c", i32 16, i32 32}
!6 = !{ptr @spk_ye, !7, !"spk_ye", i1 false, i1 false}
!7 = !{!"../drivers/accessibility/speakup/selection.c", i32 16, i32 40}
!8 = !{ptr @spk_sel_cons, !9, !"spk_sel_cons", i1 false, i1 false}
!9 = !{!"../drivers/accessibility/speakup/selection.c", i32 17, i32 17}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/accessibility/speakup/selection.c", i32 58, i32 10}
!12 = !{ptr @speakup_sel_work, !13, !"speakup_sel_work", i1 false, i1 false}
!13 = !{!"../drivers/accessibility/speakup/selection.c", i32 57, i32 38}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/accessibility/speakup/selection.c", i32 43, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @__speakup_set_selection._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @__speakup_set_selection._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/accessibility/speakup/selection.c", i32 117, i32 10}
!22 = !{ptr @speakup_paste_work, !23, !"speakup_paste_work", i1 false, i1 false}
!23 = !{!"../drivers/accessibility/speakup/selection.c", i32 116, i32 38}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i64 2148583699, i64 2148583731, i64 2148583760, i64 2148583794, i64 2148583825, i64 2148583848}
!34 = !{!"branch_weights", i32 1, i32 2000}
!35 = !{!"branch_weights", i32 2000, i32 1}
!36 = !{i64 2154310615}
!37 = !{i64 1091661, i64 1091682, i64 1091705, i64 1091724, i64 1091743}
!38 = !{i64 2154311028}
!39 = !{i64 2154311179}
!40 = !{i64 2154312080}
!41 = !{i64 1088937, i64 1088954, i64 1088978, i64 1089004, i64 1089022}
!42 = !{i64 2154312433}
!43 = !{i64 2154316619}
!44 = !{i64 2154317032}
!45 = !{i64 2154317938}
!46 = !{i64 2154318291}
!47 = !{i64 2154306017}
!48 = !{i64 2154306892}
!49 = !{i64 2154307245}
!50 = !{i64 2154314573}
!51 = !{i64 2154314926}
