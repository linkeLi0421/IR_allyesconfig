; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpiolib-legacy.c_pt.bc'
source_filename = "../drivers/gpio/gpiolib-legacy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+gpio_free\22, \22a\22\09"
module asm "\09.weak\09__crc_gpio_free\09\09\09\09"
module asm "\09.long\09__crc_gpio_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpio_free:\09\09\09\09\09"
module asm "\09.asciz \09\22gpio_free\22\09\09\09\09\09"
module asm "__kstrtabns_gpio_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+gpio_request_one\22, \22a\22\09"
module asm "\09.weak\09__crc_gpio_request_one\09\09\09\09"
module asm "\09.long\09__crc_gpio_request_one\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpio_request_one:\09\09\09\09\09"
module asm "\09.asciz \09\22gpio_request_one\22\09\09\09\09\09"
module asm "__kstrtabns_gpio_request_one:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+gpio_request\22, \22a\22\09"
module asm "\09.weak\09__crc_gpio_request\09\09\09\09"
module asm "\09.long\09__crc_gpio_request\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpio_request:\09\09\09\09\09"
module asm "\09.asciz \09\22gpio_request\22\09\09\09\09\09"
module asm "__kstrtabns_gpio_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+gpio_request_array\22, \22a\22\09"
module asm "\09.weak\09__crc_gpio_request_array\09\09\09\09"
module asm "\09.long\09__crc_gpio_request_array\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpio_request_array:\09\09\09\09\09"
module asm "\09.asciz \09\22gpio_request_array\22\09\09\09\09\09"
module asm "__kstrtabns_gpio_request_array:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+gpio_free_array\22, \22a\22\09"
module asm "\09.weak\09__crc_gpio_free_array\09\09\09\09"
module asm "\09.long\09__crc_gpio_free_array\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpio_free_array:\09\09\09\09\09"
module asm "\09.asciz \09\22gpio_free_array\22\09\09\09\09\09"
module asm "__kstrtabns_gpio_free_array:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.gpio_desc = type { ptr, i32, ptr, ptr, ptr, i32 }
%struct.gpio = type { i32, i32, ptr }

@__kstrtab_gpio_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpio_free = external dso_local constant [0 x i8], align 1
@__ksymtab_gpio_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpio_free to i32), ptr @__kstrtab_gpio_free, ptr @__kstrtabns_gpio_free }, section "___ksymtab_gpl+gpio_free", align 4
@__kstrtab_gpio_request_one = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpio_request_one = external dso_local constant [0 x i8], align 1
@__ksymtab_gpio_request_one = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpio_request_one to i32), ptr @__kstrtab_gpio_request_one, ptr @__kstrtabns_gpio_request_one }, section "___ksymtab_gpl+gpio_request_one", align 4
@__kstrtab_gpio_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpio_request = external dso_local constant [0 x i8], align 1
@__ksymtab_gpio_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpio_request to i32), ptr @__kstrtab_gpio_request, ptr @__kstrtabns_gpio_request }, section "___ksymtab_gpl+gpio_request", align 4
@__kstrtab_gpio_request_array = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpio_request_array = external dso_local constant [0 x i8], align 1
@__ksymtab_gpio_request_array = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpio_request_array to i32), ptr @__kstrtab_gpio_request_array, ptr @__kstrtabns_gpio_request_array }, section "___ksymtab_gpl+gpio_request_array", align 4
@__kstrtab_gpio_free_array = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpio_free_array = external dso_local constant [0 x i8], align 1
@__ksymtab_gpio_free_array = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpio_free_array to i32), ptr @__kstrtab_gpio_free_array, ptr @__kstrtabns_gpio_free_array }, section "___ksymtab_gpl+gpio_free_array", align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_gpio_free, ptr @__ksymtab_gpio_free_array, ptr @__ksymtab_gpio_request, ptr @__ksymtab_gpio_request_array, ptr @__ksymtab_gpio_request_one], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gpio_free(i32 noundef %gpio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpio_to_desc(i32 noundef %gpio) #2
  tail call void @gpiod_free(ptr noundef %call) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gpio_request_one(i32 noundef %gpio, i32 noundef %flags, ptr noundef %label) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpio_to_desc(i32 noundef %gpio) #2
  %tobool.not = icmp eq ptr %call, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %gpio)
  %0 = icmp ult i32 %gpio, 2048
  %or.cond = and i1 %0, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @gpiod_request(ptr noundef %call, ptr noundef %label) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %and = and i32 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end5.if.end9_crit_edge, label %if.then7

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end9

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #4
  %flags8 = getelementptr inbounds %struct.gpio_desc, ptr %call, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 7, ptr noundef %flags8) #2
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5.if.end9_crit_edge
  %and10 = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end9.if.end14_crit_edge, label %if.then12

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end14

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #4
  %flags13 = getelementptr inbounds %struct.gpio_desc, ptr %call, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 8, ptr noundef %flags13) #2
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end9.if.end14_crit_edge
  %and15 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end19_crit_edge, label %if.then17

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end19

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #4
  %flags18 = getelementptr inbounds %struct.gpio_desc, ptr %call, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 6, ptr noundef %flags18) #2
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end14.if.end19_crit_edge
  %and20 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #4
  %call23 = tail call i32 @gpiod_direction_input(ptr noundef %call) #2
  br label %if.end27

if.else:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #4
  %and24 = lshr i32 %flags, 1
  %and24.lobit = and i32 %and24, 1
  %call26 = tail call i32 @gpiod_direction_output_raw(ptr noundef %call, i32 noundef %and24.lobit) #2
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then22
  %err.0 = phi i32 [ %call23, %if.then22 ], [ %call26, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool28.not = icmp eq i32 %err.0, 0
  br i1 %tobool28.not, label %if.end30, label %if.end27.free_gpio_crit_edge

if.end27.free_gpio_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #4
  br label %free_gpio

if.end30:                                         ; preds = %if.end27
  %and31 = and i32 %flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end30.cleanup_crit_edge, label %if.then33

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then33:                                        ; preds = %if.end30
  %and34 = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35 = icmp ne i32 %and34, 0
  %call36 = tail call i32 @gpiod_export(ptr noundef %call, i1 noundef zeroext %tobool35) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.then33.cleanup_crit_edge, label %if.then33.free_gpio_crit_edge

if.then33.free_gpio_crit_edge:                    ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #4
  br label %free_gpio

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

free_gpio:                                        ; preds = %if.then33.free_gpio_crit_edge, %if.end27.free_gpio_crit_edge
  %err.1 = phi i32 [ %err.0, %if.end27.free_gpio_crit_edge ], [ %call36, %if.then33.free_gpio_crit_edge ]
  tail call void @gpiod_free(ptr noundef %call) #2
  br label %cleanup

cleanup:                                          ; preds = %free_gpio, %if.then33.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %free_gpio ], [ %call2, %if.end.cleanup_crit_edge ], [ 0, %if.then33.cleanup_crit_edge ], [ 0, %if.end30.cleanup_crit_edge ], [ -517, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_input(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output_raw(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_export(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gpio_request(i32 noundef %gpio, ptr noundef %label) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpio_to_desc(i32 noundef %gpio) #2
  %tobool.not = icmp eq ptr %call, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %gpio)
  %0 = icmp ult i32 %gpio, 2048
  %or.cond = and i1 %0, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call2 = tail call i32 @gpiod_request(ptr noundef %call, ptr noundef %label) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -517, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gpio_request_array(ptr nocapture noundef readonly %array, i32 noundef %num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp15.not = icmp eq i32 %num, 0
  br i1 %cmp15.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.017 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %array.addr.016 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %array, %entry.for.body_crit_edge ]
  %0 = ptrtoint ptr %array.addr.016 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %array.addr.016, align 4
  %flags = getelementptr inbounds %struct.gpio, ptr %array.addr.016, i32 0, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %label = getelementptr inbounds %struct.gpio, ptr %array.addr.016, i32 0, i32 2
  %4 = ptrtoint ptr %label to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %label, align 4
  %call = tail call i32 @gpio_request_one(i32 noundef %1, i32 noundef %3, ptr noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.017)
  %tobool1.not18 = icmp eq i32 %i.017, 0
  br i1 %tobool1.not18, label %while.cond.preheader.cleanup_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.017, 1
  %incdec.ptr = getelementptr %struct.gpio, ptr %array.addr.016, i32 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %i.120 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %i.017, %while.cond.preheader.while.body_crit_edge ]
  %array.addr.119 = phi ptr [ %incdec.ptr2, %while.body.while.body_crit_edge ], [ %array.addr.016, %while.cond.preheader.while.body_crit_edge ]
  %dec = add i32 %i.120, -1
  %incdec.ptr2 = getelementptr %struct.gpio, ptr %array.addr.119, i32 -1
  %6 = ptrtoint ptr %incdec.ptr2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %incdec.ptr2, align 4
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %7) #2
  tail call void @gpiod_free(ptr noundef %call.i) #2
  %tobool1.not = icmp eq i32 %dec, 0
  br i1 %tobool1.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %while.cond.preheader.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %call, %while.body.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gpio_free_array(ptr nocapture noundef readonly %array, i32 noundef %num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %tobool.not1 = icmp eq i32 %num, 0
  br i1 %tobool.not1, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %num.addr.03 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %num, %entry.while.body_crit_edge ]
  %array.addr.02 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %array, %entry.while.body_crit_edge ]
  %dec = add i32 %num.addr.03, -1
  %incdec.ptr = getelementptr %struct.gpio, ptr %array.addr.02, i32 1
  %0 = ptrtoint ptr %array.addr.02 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %array.addr.02, align 4
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %1) #2
  tail call void @gpiod_free(ptr noundef %call.i) #2
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @__ksymtab_gpio_free, !1, !"__ksymtab_gpio_free", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpiolib-legacy.c", i32 13, i32 1}
!2 = !{ptr @__ksymtab_gpio_request_one, !3, !"__ksymtab_gpio_request_one", i1 false, i1 false}
!3 = !{!"../drivers/gpio/gpiolib-legacy.c", i32 66, i32 1}
!4 = !{ptr @__ksymtab_gpio_request, !5, !"__ksymtab_gpio_request", i1 false, i1 false}
!5 = !{!"../drivers/gpio/gpiolib-legacy.c", i32 78, i32 1}
!6 = !{ptr @__ksymtab_gpio_request_array, !7, !"__ksymtab_gpio_request_array", i1 false, i1 false}
!7 = !{!"../drivers/gpio/gpiolib-legacy.c", i32 101, i32 1}
!8 = !{ptr @__ksymtab_gpio_free_array, !9, !"__ksymtab_gpio_free_array", i1 false, i1 false}
!9 = !{!"../drivers/gpio/gpiolib-legacy.c", i32 113, i32 1}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
