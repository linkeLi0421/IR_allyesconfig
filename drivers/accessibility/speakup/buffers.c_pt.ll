; ModuleID = '/llk/IR_all_yes/drivers/accessibility/speakup/buffers.c_pt.bc'
source_filename = "../drivers/accessibility/speakup/buffers.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+speakup_start_ttys\22, \22a\22\09"
module asm "\09.weak\09__crc_speakup_start_ttys\09\09\09\09"
module asm "\09.long\09__crc_speakup_start_ttys\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_speakup_start_ttys:\09\09\09\09\09"
module asm "\09.asciz \09\22speakup_start_ttys\22\09\09\09\09\09"
module asm "__kstrtabns_speakup_start_ttys:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+synth_buffer_empty\22, \22a\22\09"
module asm "\09.weak\09__crc_synth_buffer_empty\09\09\09\09"
module asm "\09.long\09__crc_synth_buffer_empty\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_synth_buffer_empty:\09\09\09\09\09"
module asm "\09.asciz \09\22synth_buffer_empty\22\09\09\09\09\09"
module asm "__kstrtabns_synth_buffer_empty:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+synth_buffer_getc\22, \22a\22\09"
module asm "\09.weak\09__crc_synth_buffer_getc\09\09\09\09"
module asm "\09.long\09__crc_synth_buffer_getc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_synth_buffer_getc:\09\09\09\09\09"
module asm "\09.asciz \09\22synth_buffer_getc\22\09\09\09\09\09"
module asm "__kstrtabns_synth_buffer_getc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+synth_buffer_peek\22, \22a\22\09"
module asm "\09.weak\09__crc_synth_buffer_peek\09\09\09\09"
module asm "\09.long\09__crc_synth_buffer_peek\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_synth_buffer_peek:\09\09\09\09\09"
module asm "\09.asciz \09\22synth_buffer_peek\22\09\09\09\09\09"
module asm "__kstrtabns_synth_buffer_peek:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+synth_buffer_skip_nonlatin1\22, \22a\22\09"
module asm "\09.weak\09__crc_synth_buffer_skip_nonlatin1\09\09\09\09"
module asm "\09.long\09__crc_synth_buffer_skip_nonlatin1\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_synth_buffer_skip_nonlatin1:\09\09\09\09\09"
module asm "\09.asciz \09\22synth_buffer_skip_nonlatin1\22\09\09\09\09\09"
module asm "__kstrtabns_synth_buffer_skip_nonlatin1:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+synth_buffer_clear\22, \22a\22\09"
module asm "\09.weak\09__crc_synth_buffer_clear\09\09\09\09"
module asm "\09.long\09__crc_synth_buffer_clear\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_synth_buffer_clear:\09\09\09\09\09"
module asm "\09.asciz \09\22synth_buffer_clear\22\09\09\09\09\09"
module asm "__kstrtabns_synth_buffer_clear:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.vc = type { ptr, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.st_spk_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.spk_highlight_color_track, i32 }
%struct.spk_highlight_color_track = type { [8 x i32], [8 x [160 x i16]], [8 x i32], [8 x i32], [8 x i32], [8 x i32], i32 }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon = type { ptr }
%struct.llist_head = type { ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spk_synth = type { %struct.list_head, ptr, ptr, ptr, ptr, i8, i8, i32, i32, i32, i32, i32, i32, ptr, i16, i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.synth_indexing, i32, %struct.attribute_group, ptr }
%struct.synth_indexing = type { ptr, i8, i8, i8 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }

@speakup_console = external dso_local local_unnamed_addr global [0 x ptr], align 4
@vc_cons = external dso_local local_unnamed_addr global [63 x %struct.vc], align 4
@__kstrtab_speakup_start_ttys = external dso_local constant [0 x i8], align 1
@__kstrtabns_speakup_start_ttys = external dso_local constant [0 x i8], align 1
@__ksymtab_speakup_start_ttys = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @speakup_start_ttys to i32), ptr @__kstrtab_speakup_start_ttys, ptr @__kstrtabns_speakup_start_ttys }, section "___ksymtab_gpl+speakup_start_ttys", align 4
@buff_in = internal global { ptr, [28 x i8] } { ptr @synth_buffer, [28 x i8] zeroinitializer }, align 32
@buff_out = internal global { ptr, [28 x i8] } { ptr @synth_buffer, [28 x i8] zeroinitializer }, align 32
@__kstrtab_synth_buffer_empty = external dso_local constant [0 x i8], align 1
@__kstrtabns_synth_buffer_empty = external dso_local constant [0 x i8], align 1
@__ksymtab_synth_buffer_empty = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @synth_buffer_empty to i32), ptr @__kstrtab_synth_buffer_empty, ptr @__kstrtabns_synth_buffer_empty }, section "___ksymtab_gpl+synth_buffer_empty", align 4
@synth = external dso_local local_unnamed_addr global ptr, align 4
@synth_buffer = internal global { [8192 x i16], [4096 x i8] } zeroinitializer, align 32
@spk_paused = external dso_local local_unnamed_addr global i8, align 1
@__kstrtab_synth_buffer_getc = external dso_local constant [0 x i8], align 1
@__kstrtabns_synth_buffer_getc = external dso_local constant [0 x i8], align 1
@__ksymtab_synth_buffer_getc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @synth_buffer_getc to i32), ptr @__kstrtab_synth_buffer_getc, ptr @__kstrtabns_synth_buffer_getc }, section "___ksymtab_gpl+synth_buffer_getc", align 4
@__kstrtab_synth_buffer_peek = external dso_local constant [0 x i8], align 1
@__kstrtabns_synth_buffer_peek = external dso_local constant [0 x i8], align 1
@__ksymtab_synth_buffer_peek = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @synth_buffer_peek to i32), ptr @__kstrtab_synth_buffer_peek, ptr @__kstrtabns_synth_buffer_peek }, section "___ksymtab_gpl+synth_buffer_peek", align 4
@__kstrtab_synth_buffer_skip_nonlatin1 = external dso_local constant [0 x i8], align 1
@__kstrtabns_synth_buffer_skip_nonlatin1 = external dso_local constant [0 x i8], align 1
@__ksymtab_synth_buffer_skip_nonlatin1 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @synth_buffer_skip_nonlatin1 to i32), ptr @__kstrtab_synth_buffer_skip_nonlatin1, ptr @__kstrtabns_synth_buffer_skip_nonlatin1 }, section "___ksymtab_gpl+synth_buffer_skip_nonlatin1", align 4
@__kstrtab_synth_buffer_clear = external dso_local constant [0 x i8], align 1
@__kstrtabns_synth_buffer_clear = external dso_local constant [0 x i8], align 1
@__ksymtab_synth_buffer_clear = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @synth_buffer_clear to i32), ptr @__kstrtab_synth_buffer_clear, ptr @__kstrtabns_synth_buffer_clear }, section "___ksymtab_gpl+synth_buffer_clear", align 4
@___asan_gen_.1 = private unnamed_addr constant [8 x i8] c"buff_in\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 12, i32 13 }
@___asan_gen_.4 = private unnamed_addr constant [9 x i8] c"buff_out\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 13, i32 13 }
@___asan_gen_.7 = private unnamed_addr constant [13 x i8] c"synth_buffer\00", align 1
@___asan_gen_.8 = private constant [43 x i8] c"../drivers/accessibility/speakup/buffers.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 11, i32 12 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab_speakup_start_ttys, ptr @__ksymtab_synth_buffer_clear, ptr @__ksymtab_synth_buffer_empty, ptr @__ksymtab_synth_buffer_getc, ptr @__ksymtab_synth_buffer_peek, ptr @__ksymtab_synth_buffer_skip_nonlatin1, ptr @buff_in, ptr @buff_out, ptr @synth_buffer], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buff_in to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buff_out to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synth_buffer to i32), i32 16384, i32 20480, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @speakup_start_ttys() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.023 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [0 x ptr], ptr @speakup_console, i32 0, i32 %i.023
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %tty_stopped = getelementptr inbounds %struct.st_spk_t, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %tty_stopped to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tty_stopped, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %arrayidx3 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %i.023
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx3, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %if.end.for.inc_crit_edge, label %land.lhs.true5

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true5:                                   ; preds = %if.end
  %tty = getelementptr inbounds %struct.tty_port, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %tty to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tty, align 4
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %land.lhs.true5.for.inc_crit_edge, label %if.then9

land.lhs.true5.for.inc_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then9:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @start_tty(ptr noundef nonnull %7) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then9, %land.lhs.true5.for.inc_crit_edge, %if.end.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.023, 1
  %exitcond.not = icmp eq i32 %inc, 63
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @start_tty(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @synth_buffer_empty() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @buff_in, align 4
  %1 = load ptr, ptr @buff_out, align 4
  %cmp = icmp eq ptr %0, %1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @synth_buffer_add(i16 noundef zeroext %ch) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @synth to i32))
  %0 = load ptr, ptr @synth, align 4
  %alive = getelementptr inbounds %struct.spk_synth, ptr %0, i32 0, i32 31
  %1 = ptrtoint ptr %alive to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %alive, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr @buff_in, align 4
  %4 = load ptr, ptr @buff_out, align 4
  %cmp.not.i = icmp ult ptr %3, %4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %4 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 1
  %sub.i = sub nsw i32 8192, %sub.ptr.div.i
  %sub.ptr.sub3.i = sub i32 %sub.ptr.rhs.cast.i, %sub.ptr.lhs.cast.i
  %sub.ptr.div4.i = ashr exact i32 %sub.ptr.sub3.i, 1
  %chars_free.0.i = select i1 %cmp.not.i, i32 %sub.ptr.div4.i, i32 %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 101, i32 %chars_free.0.i)
  %cmp = icmp slt i32 %chars_free.0.i, 101
  br i1 %cmp, label %if.then1, label %if.end.if.end2_crit_edge

if.end.if.end2_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2

if.then1:                                         ; preds = %if.end
  tail call void @synth_start() #6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then1
  %i.013.i = phi i32 [ 0, %if.then1 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %i.013.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %tty.i = getelementptr inbounds %struct.tty_port, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %tty.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tty.i, align 4
  %tobool3.not.i = icmp eq ptr %8, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %if.then.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @stop_tty(ptr noundef nonnull %8) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.013.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 63
  br i1 %exitcond.not.i, label %for.inc.i.if.end2_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.if.end2_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2

if.end2:                                          ; preds = %for.inc.i.if.end2_crit_edge, %if.end.if.end2_crit_edge
  %9 = load ptr, ptr @buff_in, align 4
  %10 = load ptr, ptr @buff_out, align 4
  %cmp.not.i10 = icmp ult ptr %9, %10
  %sub.ptr.lhs.cast.i11 = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast.i12 = ptrtoint ptr %10 to i32
  %sub.ptr.sub.i13 = sub i32 %sub.ptr.lhs.cast.i11, %sub.ptr.rhs.cast.i12
  %sub.ptr.div.i14 = ashr exact i32 %sub.ptr.sub.i13, 1
  %sub.i15 = sub nsw i32 8192, %sub.ptr.div.i14
  %sub.ptr.sub3.i16 = sub i32 %sub.ptr.rhs.cast.i12, %sub.ptr.lhs.cast.i11
  %sub.ptr.div4.i17 = ashr exact i32 %sub.ptr.sub3.i16, 1
  %chars_free.0.i18 = select i1 %cmp.not.i10, i32 %sub.ptr.div4.i17, i32 %sub.i15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %chars_free.0.i18)
  %cmp4 = icmp slt i32 %chars_free.0.i18, 2
  br i1 %cmp4, label %if.end2.return_crit_edge, label %if.end6

if.end2.return_crit_edge:                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end6:                                          ; preds = %if.end2
  %incdec.ptr = getelementptr i16, ptr %9, i32 1
  store ptr %incdec.ptr, ptr @buff_in, align 4
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %ch, ptr %9, align 2
  %cmp7 = icmp ugt ptr %incdec.ptr, getelementptr inbounds ([8192 x i16], ptr @synth_buffer, i32 0, i32 8191)
  br i1 %cmp7, label %if.then8, label %if.end6.if.end9_crit_edge

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  store ptr @synth_buffer, ptr @buff_in, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6.if.end9_crit_edge
  call void @__asan_store1_noabort(i32 ptrtoint (ptr @spk_paused to i32))
  store i8 0, ptr @spk_paused, align 1
  br label %return

return:                                           ; preds = %if.end9, %if.end2.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synth_start() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @synth_buffer_getc() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @buff_out, align 4
  %1 = load ptr, ptr @buff_in, align 4
  %cmp = icmp eq ptr %0, %1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %incdec.ptr = getelementptr i16, ptr %0, i32 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %0, align 2
  %cmp1 = icmp ugt ptr %incdec.ptr, getelementptr inbounds ([8192 x i16], ptr @synth_buffer, i32 0, i32 8191)
  %spec.store.select = select i1 %cmp1, ptr @synth_buffer, ptr %incdec.ptr
  store ptr %spec.store.select, ptr @buff_out, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %3, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @synth_buffer_peek() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @buff_out, align 4
  %1 = load ptr, ptr @buff_in, align 4
  %cmp = icmp eq ptr %0, %1
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %0, align 2
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i16 [ %3, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @synth_buffer_skip_nonlatin1() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @buff_in, align 4
  %buff_out.promoted = load ptr, ptr @buff_out, align 4
  %cmp.not8 = icmp eq ptr %buff_out.promoted, %0
  br i1 %cmp.not8, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %spec.store.select79 = phi ptr [ %spec.store.select, %if.end.while.body_crit_edge ], [ %buff_out.promoted, %entry.while.body_crit_edge ]
  %1 = ptrtoint ptr %spec.store.select79 to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %spec.store.select79, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %2)
  %cmp1 = icmp ult i16 %2, 256
  br i1 %cmp1, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end:                                           ; preds = %while.body
  %incdec.ptr = getelementptr i16, ptr %spec.store.select79, i32 1
  %cmp3 = icmp ugt ptr %incdec.ptr, getelementptr inbounds ([8192 x i16], ptr @synth_buffer, i32 0, i32 8191)
  %spec.store.select = select i1 %cmp3, ptr @synth_buffer, ptr %incdec.ptr
  store ptr %spec.store.select, ptr @buff_out, align 4
  %cmp.not = icmp eq ptr %spec.store.select, %0
  br i1 %cmp.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @synth_buffer_clear() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr @synth_buffer, ptr @buff_in, align 4
  store ptr @synth_buffer, ptr @buff_out, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @stop_tty(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @__ksymtab_speakup_start_ttys, !1, !"__ksymtab_speakup_start_ttys", i1 false, i1 false}
!1 = !{!"../drivers/accessibility/speakup/buffers.c", i32 35, i32 1}
!2 = !{ptr @__ksymtab_synth_buffer_empty, !3, !"__ksymtab_synth_buffer_empty", i1 false, i1 false}
!3 = !{!"../drivers/accessibility/speakup/buffers.c", i32 61, i32 1}
!4 = !{ptr @__ksymtab_synth_buffer_getc, !5, !"__ksymtab_synth_buffer_getc", i1 false, i1 false}
!5 = !{!"../drivers/accessibility/speakup/buffers.c", i32 97, i32 1}
!6 = !{ptr @__ksymtab_synth_buffer_peek, !7, !"__ksymtab_synth_buffer_peek", i1 false, i1 false}
!7 = !{!"../drivers/accessibility/speakup/buffers.c", i32 105, i32 1}
!8 = !{ptr @__ksymtab_synth_buffer_skip_nonlatin1, !9, !"__ksymtab_synth_buffer_skip_nonlatin1", i1 false, i1 false}
!9 = !{!"../drivers/accessibility/speakup/buffers.c", i32 117, i32 1}
!10 = !{ptr @__ksymtab_synth_buffer_clear, !11, !"__ksymtab_synth_buffer_clear", i1 false, i1 false}
!11 = !{!"../drivers/accessibility/speakup/buffers.c", i32 124, i32 1}
!12 = !{ptr @synth_buffer, !13, !"synth_buffer", i1 false, i1 false}
!13 = !{!"../drivers/accessibility/speakup/buffers.c", i32 11, i32 12}
!14 = !{ptr @buff_in, !15, !"buff_in", i1 false, i1 false}
!15 = !{!"../drivers/accessibility/speakup/buffers.c", i32 12, i32 13}
!16 = !{ptr @buff_out, !17, !"buff_out", i1 false, i1 false}
!17 = !{!"../drivers/accessibility/speakup/buffers.c", i32 13, i32 13}
!18 = distinct !{null, !19, !"buffer_end", i1 false, i1 false}
!19 = !{!"../drivers/accessibility/speakup/buffers.c", i32 14, i32 13}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
