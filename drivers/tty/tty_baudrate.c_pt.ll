; ModuleID = '/llk/IR_all_yes/drivers/tty/tty_baudrate.c_pt.bc'
source_filename = "../drivers/tty/tty_baudrate.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+tty_termios_baud_rate\22, \22a\22\09"
module asm "\09.weak\09__crc_tty_termios_baud_rate\09\09\09\09"
module asm "\09.long\09__crc_tty_termios_baud_rate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_termios_baud_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_termios_baud_rate\22\09\09\09\09\09"
module asm "__kstrtabns_tty_termios_baud_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+tty_termios_input_baud_rate\22, \22a\22\09"
module asm "\09.weak\09__crc_tty_termios_input_baud_rate\09\09\09\09"
module asm "\09.long\09__crc_tty_termios_input_baud_rate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_termios_input_baud_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_termios_input_baud_rate\22\09\09\09\09\09"
module asm "__kstrtabns_tty_termios_input_baud_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tty_termios_encode_baud_rate\22, \22a\22\09"
module asm "\09.weak\09__crc_tty_termios_encode_baud_rate\09\09\09\09"
module asm "\09.long\09__crc_tty_termios_encode_baud_rate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_termios_encode_baud_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_termios_encode_baud_rate\22\09\09\09\09\09"
module asm "__kstrtabns_tty_termios_encode_baud_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tty_encode_baud_rate\22, \22a\22\09"
module asm "\09.weak\09__crc_tty_encode_baud_rate\09\09\09\09"
module asm "\09.long\09__crc_tty_encode_baud_rate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_encode_baud_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_encode_baud_rate\22\09\09\09\09\09"
module asm "__kstrtabns_tty_encode_baud_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.65, %struct.anon.66, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.65 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.66 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }

@baud_table = internal constant { [31 x i32], [36 x i8] } { [31 x i32] [i32 0, i32 50, i32 75, i32 110, i32 134, i32 150, i32 200, i32 300, i32 600, i32 1200, i32 1800, i32 2400, i32 4800, i32 9600, i32 19200, i32 38400, i32 57600, i32 115200, i32 230400, i32 460800, i32 500000, i32 576000, i32 921600, i32 1000000, i32 1152000, i32 1500000, i32 2000000, i32 2500000, i32 3000000, i32 3500000, i32 4000000], [36 x i8] zeroinitializer }, align 32
@__kstrtab_tty_termios_baud_rate = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_termios_baud_rate = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_termios_baud_rate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_termios_baud_rate to i32), ptr @__kstrtab_tty_termios_baud_rate, ptr @__kstrtabns_tty_termios_baud_rate }, section "___ksymtab+tty_termios_baud_rate", align 4
@__kstrtab_tty_termios_input_baud_rate = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_termios_input_baud_rate = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_termios_input_baud_rate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_termios_input_baud_rate to i32), ptr @__kstrtab_tty_termios_input_baud_rate, ptr @__kstrtabns_tty_termios_input_baud_rate }, section "___ksymtab+tty_termios_input_baud_rate", align 4
@baud_bits = internal constant { [31 x i32], [36 x i8] } { [31 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 4097, i32 4098, i32 4099, i32 4100, i32 4101, i32 4102, i32 4103, i32 4104, i32 4105, i32 4106, i32 4107, i32 4108, i32 4109, i32 4110, i32 4111], [36 x i8] zeroinitializer }, align 32
@__kstrtab_tty_termios_encode_baud_rate = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_termios_encode_baud_rate = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_termios_encode_baud_rate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_termios_encode_baud_rate to i32), ptr @__kstrtab_tty_termios_encode_baud_rate, ptr @__kstrtabns_tty_termios_encode_baud_rate }, section "___ksymtab_gpl+tty_termios_encode_baud_rate", align 4
@__kstrtab_tty_encode_baud_rate = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_encode_baud_rate = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_encode_baud_rate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_encode_baud_rate to i32), ptr @__kstrtab_tty_encode_baud_rate, ptr @__kstrtabns_tty_encode_baud_rate }, section "___ksymtab_gpl+tty_encode_baud_rate", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4096]
@___asan_gen_.1 = private unnamed_addr constant [11 x i8] c"baud_table\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 20, i32 22 }
@___asan_gen_.4 = private unnamed_addr constant [10 x i8] c"baud_bits\00", align 1
@___asan_gen_.5 = private constant [30 x i8] c"../drivers/tty/tty_baudrate.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 32, i32 23 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_tty_encode_baud_rate, ptr @__ksymtab_tty_termios_baud_rate, ptr @__ksymtab_tty_termios_encode_baud_rate, ptr @__ksymtab_tty_termios_input_baud_rate, ptr @baud_table, ptr @baud_bits], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @baud_table to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @baud_bits to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @tty_termios_baud_rate(ptr nocapture noundef %termios) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %termios, i32 0, i32 2
  %0 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %c_cflag, align 4
  %and = and i32 %1, 4111
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %and)
  %cmp = icmp eq i32 %and, 4096
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %c_ospeed = getelementptr inbounds %struct.ktermios, ptr %termios, i32 0, i32 7
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %and1 = and i32 %1, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %if.end11, label %if.then2

if.then2:                                         ; preds = %if.end
  %and3 = and i32 %1, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %cmp4 = icmp eq i32 %and3, 0
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #5
  %and8 = and i32 %1, -4097
  %2 = ptrtoint ptr %c_cflag to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and8, ptr %c_cflag, align 4
  br label %cond.false

if.else:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #5
  %add = add nuw nsw i32 %and3, 15
  br label %cond.false

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %and)
  %cmp12 = icmp ugt i32 %and, 30
  br i1 %cmp12, label %if.end11.cleanup_crit_edge, label %if.end11.cond.false_crit_edge

if.end11.cond.false_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

cond.false:                                       ; preds = %if.end11.cond.false_crit_edge, %if.else, %if.then6
  %cbaud.024 = phi i32 [ %and, %if.end11.cond.false_crit_edge ], [ %add, %if.else ], [ 0, %if.then6 ]
  %arrayidx = getelementptr [31 x i32], ptr @baud_table, i32 0, i32 %cbaud.024
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cond.false, %if.then
  %arrayidx.sink = phi ptr [ %arrayidx, %cond.false ], [ %c_ospeed, %if.then ]
  %3 = ptrtoint ptr %arrayidx.sink to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end11.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11.cleanup_crit_edge ], [ %4, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @tty_termios_input_baud_rate(ptr nocapture noundef %termios) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %termios, i32 0, i32 2
  %0 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %c_cflag, align 4
  %shr = lshr i32 %1, 16
  %and = and i32 %shr, 4111
  %2 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %if.end3 [
    i32 0, label %if.then
    i32 4096, label %if.then2
  ]

if.then:                                          ; preds = %entry
  %and.i = and i32 %1, 4111
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 4096
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %c_ospeed.i = getelementptr inbounds %struct.ktermios, ptr %termios, i32 0, i32 7
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %if.then
  %and1.i = and i32 %1, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool.not.i, label %if.end11.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  %and3.i = and i32 %1, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %cmp4.i = icmp eq i32 %and3.i, 0
  br i1 %cmp4.i, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #5
  %and8.i = and i32 %1, -4097
  %3 = ptrtoint ptr %c_cflag to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %and8.i, ptr %c_cflag, align 4
  br label %cond.false.i

if.else.i:                                        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #5
  %add.i = add nuw nsw i32 %and3.i, 15
  br label %cond.false.i

if.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %and.i)
  %cmp12.i = icmp ugt i32 %and.i, 30
  br i1 %cmp12.i, label %if.end11.i.cleanup_crit_edge, label %if.end11.i.cond.false.i_crit_edge

if.end11.i.cond.false.i_crit_edge:                ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false.i

if.end11.i.cleanup_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

cond.false.i:                                     ; preds = %if.end11.i.cond.false.i_crit_edge, %if.else.i, %if.then6.i
  %cbaud.024.i = phi i32 [ %and.i, %if.end11.i.cond.false.i_crit_edge ], [ %add.i, %if.else.i ], [ 0, %if.then6.i ]
  %arrayidx.i = getelementptr [31 x i32], ptr @baud_table, i32 0, i32 %cbaud.024.i
  br label %cleanup.sink.split

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %c_ispeed = getelementptr inbounds %struct.ktermios, ptr %termios, i32 0, i32 6
  br label %cleanup.sink.split

if.end3:                                          ; preds = %entry
  %4 = and i32 %1, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end14, label %if.then5

if.then5:                                         ; preds = %if.end3
  %and6 = and i32 %shr, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %cmp7 = icmp eq i32 %and6, 0
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #5
  %and11 = and i32 %1, -268435457
  %5 = ptrtoint ptr %c_cflag to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and11, ptr %c_cflag, align 4
  br label %cond.false

if.else:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #5
  %add = add nuw nsw i32 %and6, 15
  br label %cond.false

if.end14:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %and)
  %cmp15 = icmp ugt i32 %and, 30
  br i1 %cmp15, label %if.end14.cleanup_crit_edge, label %if.end14.cond.false_crit_edge

if.end14.cond.false_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

cond.false:                                       ; preds = %if.end14.cond.false_crit_edge, %if.else, %if.then9
  %cbaud.029 = phi i32 [ %and, %if.end14.cond.false_crit_edge ], [ %add, %if.else ], [ 0, %if.then9 ]
  %arrayidx = getelementptr [31 x i32], ptr @baud_table, i32 0, i32 %cbaud.029
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cond.false, %if.then2, %cond.false.i, %if.then.i
  %arrayidx.sink.i.sink = phi ptr [ %arrayidx, %cond.false ], [ %c_ispeed, %if.then2 ], [ %arrayidx.i, %cond.false.i ], [ %c_ospeed.i, %if.then.i ]
  %6 = ptrtoint ptr %arrayidx.sink.i.sink to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.sink.i.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end14.cleanup_crit_edge, %if.end11.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14.cleanup_crit_edge ], [ 0, %if.end11.i.cleanup_crit_edge ], [ %7, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tty_termios_encode_baud_rate(ptr nocapture noundef %termios, i32 noundef %ibaud, i32 noundef %obaud) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %div = udiv i32 %ibaud, 50
  %div1 = udiv i32 %obaud, 50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %obaud)
  %cmp = icmp eq i32 %obaud, 0
  %spec.select = select i1 %cmp, i32 0, i32 %ibaud
  %c_ispeed = getelementptr inbounds %struct.ktermios, ptr %termios, i32 0, i32 6
  %0 = ptrtoint ptr %c_ispeed to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %spec.select, ptr %c_ispeed, align 4
  %c_ospeed = getelementptr inbounds %struct.ktermios, ptr %termios, i32 0, i32 7
  %1 = ptrtoint ptr %c_ospeed to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %obaud, ptr %c_ospeed, align 4
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %termios, i32 0, i32 2
  %2 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %c_cflag, align 4
  %4 = and i32 %3, 269418496
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp2.not = icmp ne i32 %4, 0
  %and6 = and i32 %3, 4111
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %and6)
  %cmp7 = icmp eq i32 %and6, 4096
  %5 = and i32 %3, 269422607
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %5)
  %6 = icmp eq i32 %5, 4096
  %oclose.0 = select i1 %cmp7, i32 0, i32 %div1
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %4)
  %cmp15 = icmp eq i32 %4, 268435456
  %7 = or i1 %cmp15, %6
  %spec.select96 = select i1 %7, i32 0, i32 %div
  %and21 = and i32 %3, -269422608
  %8 = ptrtoint ptr %c_cflag to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and21, ptr %c_cflag, align 4
  %sub = sub i32 %obaud, %oclose.0
  %add = add i32 %oclose.0, %obaud
  %sub29 = sub i32 %spec.select, %spec.select96
  %add33 = add i32 %spec.select96, %spec.select
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %do.cond.do.body_crit_edge ]
  %ifound.0 = phi i32 [ -1, %entry ], [ %ifound.1, %do.cond.do.body_crit_edge ]
  %ofound.0 = phi i32 [ -1, %entry ], [ %ofound.1, %do.cond.do.body_crit_edge ]
  %arrayidx = getelementptr [31 x i32], ptr @baud_table, i32 0, i32 %i.0
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %10)
  %cmp22.not = icmp ugt i32 %sub, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %10)
  %cmp24.not = icmp ult i32 %add, %10
  %or.cond = or i1 %cmp22.not, %cmp24.not
  br i1 %or.cond, label %do.body.if.end28_crit_edge, label %if.then25

do.body.if.end28_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end28

if.then25:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx26 = getelementptr [31 x i32], ptr @baud_bits, i32 0, i32 %i.0
  %11 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx26, align 4
  %13 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %c_cflag, align 4
  %or = or i32 %14, %12
  store i32 %or, ptr %c_cflag, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %do.body.if.end28_crit_edge
  %ofound.1 = phi i32 [ %i.0, %if.then25 ], [ %ofound.0, %do.body.if.end28_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sub29, i32 %10)
  %cmp31.not = icmp ugt i32 %sub29, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %add33, i32 %10)
  %cmp35.not = icmp ult i32 %add33, %10
  %or.cond97 = or i1 %cmp31.not, %cmp35.not
  br i1 %or.cond97, label %if.end28.do.cond_crit_edge, label %if.then36

if.end28.do.cond_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.cond

if.then36:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_cmp4(i32 %ofound.1, i32 %i.0)
  %cmp37 = icmp ne i32 %ofound.1, %i.0
  %brmerge = select i1 %cmp37, i1 true, i1 %cmp2.not
  br i1 %brmerge, label %if.else, label %if.then36.do.cond_crit_edge

if.then36.do.cond_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.cond

if.else:                                          ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx41 = getelementptr [31 x i32], ptr @baud_bits, i32 0, i32 %i.0
  %15 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx41, align 4
  %shl = shl i32 %16, 16
  %17 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %c_cflag, align 4
  %or43 = or i32 %18, %shl
  store i32 %or43, ptr %c_cflag, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.else, %if.then36.do.cond_crit_edge, %if.end28.do.cond_crit_edge
  %ifound.1 = phi i32 [ %i.0, %if.else ], [ %ifound.0, %if.end28.do.cond_crit_edge ], [ %i.0, %if.then36.do.cond_crit_edge ]
  %inc = add nuw nsw i32 %i.0, 1
  %exitcond.not = icmp eq i32 %inc, 31
  br i1 %exitcond.not, label %do.end, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

do.end:                                           ; preds = %do.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ofound.1)
  %cmp47 = icmp eq i32 %ofound.1, -1
  br i1 %cmp47, label %if.then48, label %do.end.if.end51_crit_edge

do.end.if.end51_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end51

if.then48:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  %19 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %c_cflag, align 4
  %or50 = or i32 %20, 4096
  store i32 %or50, ptr %c_cflag, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %do.end.if.end51_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ifound.1)
  %cmp52 = icmp eq i32 %ifound.1, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %obaud)
  %cmp54.not = icmp ne i32 %spec.select, %obaud
  %brmerge99 = select i1 %cmp54.not, i1 true, i1 %cmp2.not
  %or.cond100 = select i1 %cmp52, i1 %brmerge99, i1 false
  br i1 %or.cond100, label %if.then56, label %if.end51.if.end59_crit_edge

if.end51.if.end59_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end59

if.then56:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #5
  %21 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %c_cflag, align 4
  %or58 = or i32 %22, 268435456
  store i32 %or58, ptr %c_cflag, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then56, %if.end51.if.end59_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tty_encode_baud_rate(ptr nocapture noundef %tty, i32 noundef %ibaud, i32 noundef %obaud) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %termios = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  tail call void @tty_termios_encode_baud_rate(ptr noundef %termios, i32 noundef %ibaud, i32 noundef %obaud)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @__ksymtab_tty_termios_baud_rate, !1, !"__ksymtab_tty_termios_baud_rate", i1 false, i1 false}
!1 = !{!"../drivers/tty/tty_baudrate.c", i32 79, i32 1}
!2 = !{ptr @__ksymtab_tty_termios_input_baud_rate, !3, !"__ksymtab_tty_termios_input_baud_rate", i1 false, i1 false}
!3 = !{!"../drivers/tty/tty_baudrate.c", i32 118, i32 1}
!4 = !{ptr @__ksymtab_tty_termios_encode_baud_rate, !5, !"__ksymtab_tty_termios_encode_baud_rate", i1 false, i1 false}
!5 = !{!"../drivers/tty/tty_baudrate.c", i32 225, i32 1}
!6 = !{ptr @__ksymtab_tty_encode_baud_rate, !7, !"__ksymtab_tty_encode_baud_rate", i1 false, i1 false}
!7 = !{!"../drivers/tty/tty_baudrate.c", i32 242, i32 1}
!8 = distinct !{null, !9, !"n_baud_table", i1 false, i1 false}
!9 = !{!"../drivers/tty/tty_baudrate.c", i32 44, i32 12}
!10 = !{ptr @baud_table, !11, !"baud_table", i1 false, i1 false}
!11 = !{!"../drivers/tty/tty_baudrate.c", i32 20, i32 22}
!12 = !{ptr @baud_bits, !13, !"baud_bits", i1 false, i1 false}
!13 = !{!"../drivers/tty/tty_baudrate.c", i32 32, i32 23}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
