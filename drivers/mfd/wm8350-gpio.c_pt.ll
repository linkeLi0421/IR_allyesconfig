; ModuleID = '/llk/IR_all_yes/drivers/mfd/wm8350-gpio.c_pt.bc'
source_filename = "../drivers/mfd/wm8350-gpio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+wm8350_gpio_config\22, \22a\22\09"
module asm "\09.weak\09__crc_wm8350_gpio_config\09\09\09\09"
module asm "\09.long\09__crc_wm8350_gpio_config\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wm8350_gpio_config:\09\09\09\09\09"
module asm "\09.asciz \09\22wm8350_gpio_config\22\09\09\09\09\09"
module asm "__kstrtabns_wm8350_gpio_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab_wm8350_gpio_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_wm8350_gpio_config = external dso_local constant [0 x i8], align 1
@__ksymtab_wm8350_gpio_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wm8350_gpio_config to i32), ptr @__kstrtab_wm8350_gpio_config, ptr @__kstrtabns_wm8350_gpio_config }, section "___ksymtab_gpl+wm8350_gpio_config", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.1 = internal global [15 x i64] [i64 13, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_wm8350_gpio_config], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wm8350_gpio_config(ptr noundef %wm8350, i32 noundef %gpio, i32 noundef %dir, i32 noundef %func, i32 noundef %pol, i32 noundef %pull, i32 noundef %invert, i32 noundef %debounce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %pull to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %pull, label %entry.if.end29_crit_edge [
    i32 0, label %if.then
    i32 1, label %if.then7
    i32 2, label %if.then18
  ]

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %.pre = shl nuw i32 1, %gpio
  %.pre101 = trunc i32 %.pre to i16
  br label %if.end29

if.then:                                          ; preds = %entry
  %shl1.i = shl nuw i32 1, %gpio
  %conv2.i = trunc i32 %shl1.i to i16
  %call3.i = tail call i32 @wm8350_clear_bits(ptr noundef %wm8350, i16 noundef zeroext 129, i16 noundef zeroext %conv2.i) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not = icmp eq i32 %call3.i, 0
  br i1 %tobool.not, label %if.end, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.end:                                           ; preds = %if.then
  %call3.i71 = tail call i32 @wm8350_clear_bits(ptr noundef %wm8350, i16 noundef zeroext 130, i16 noundef zeroext %conv2.i) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i71)
  %tobool3.not = icmp eq i32 %call3.i71, 0
  br i1 %tobool3.not, label %if.end.if.end29_crit_edge, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end29

if.then7:                                         ; preds = %entry
  %shl1.i72 = shl nuw i32 1, %gpio
  %conv2.i73 = trunc i32 %shl1.i72 to i16
  %call3.i74 = tail call i32 @wm8350_clear_bits(ptr noundef %wm8350, i16 noundef zeroext 130, i16 noundef zeroext %conv2.i73) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i74)
  %tobool9.not = icmp eq i32 %call3.i74, 0
  br i1 %tobool9.not, label %if.end11, label %if.then7.return_crit_edge

if.then7.return_crit_edge:                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.end11:                                         ; preds = %if.then7
  %call.i = tail call i32 @wm8350_set_bits(ptr noundef %wm8350, i16 noundef zeroext 129, i16 noundef zeroext %conv2.i73) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool13.not = icmp eq i32 %call.i, 0
  br i1 %tobool13.not, label %if.end11.if.end29_crit_edge, label %if.end11.return_crit_edge

if.end11.return_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.end11.if.end29_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end29

if.then18:                                        ; preds = %entry
  %shl1.i77 = shl nuw i32 1, %gpio
  %conv2.i78 = trunc i32 %shl1.i77 to i16
  %call3.i79 = tail call i32 @wm8350_clear_bits(ptr noundef %wm8350, i16 noundef zeroext 129, i16 noundef zeroext %conv2.i78) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i79)
  %tobool20.not = icmp eq i32 %call3.i79, 0
  br i1 %tobool20.not, label %if.end22, label %if.then18.return_crit_edge

if.then18.return_crit_edge:                       ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.end22:                                         ; preds = %if.then18
  %call.i82 = tail call i32 @wm8350_set_bits(ptr noundef %wm8350, i16 noundef zeroext 130, i16 noundef zeroext %conv2.i78) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82)
  %tobool24.not = icmp eq i32 %call.i82, 0
  br i1 %tobool24.not, label %if.end22.if.end29_crit_edge, label %if.end22.return_crit_edge

if.end22.return_crit_edge:                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.end22.if.end29_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end29

if.end29:                                         ; preds = %if.end22.if.end29_crit_edge, %if.end11.if.end29_crit_edge, %if.end.if.end29_crit_edge, %entry.if.end29_crit_edge
  %conv.i.pre-phi = phi i16 [ %.pre101, %entry.if.end29_crit_edge ], [ %conv2.i73, %if.end11.if.end29_crit_edge ], [ %conv2.i78, %if.end22.if.end29_crit_edge ], [ %conv2.i, %if.end.if.end29_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %invert)
  %cmp.i = icmp eq i32 %invert, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #4
  %call.i83 = tail call i32 @wm8350_set_bits(ptr noundef %wm8350, i16 noundef zeroext 131, i16 noundef zeroext %conv.i.pre-phi) #2
  br label %gpio_set_invert.exit

if.else.i:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #4
  %call3.i84 = tail call i32 @wm8350_clear_bits(ptr noundef %wm8350, i16 noundef zeroext 131, i16 noundef zeroext %conv.i.pre-phi) #2
  br label %gpio_set_invert.exit

gpio_set_invert.exit:                             ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i83, %if.then.i ], [ %call3.i84, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool31.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool31.not, label %if.end33, label %gpio_set_invert.exit.return_crit_edge

gpio_set_invert.exit.return_crit_edge:            ; preds = %gpio_set_invert.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.end33:                                         ; preds = %gpio_set_invert.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %pol)
  %cmp.i85 = icmp eq i32 %pol, 1
  br i1 %cmp.i85, label %if.then.i89, label %if.else.i91

if.then.i89:                                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #4
  %call.i88 = tail call i32 @wm8350_set_bits(ptr noundef %wm8350, i16 noundef zeroext 135, i16 noundef zeroext %conv.i.pre-phi) #2
  br label %gpio_set_polarity.exit

if.else.i91:                                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #4
  %call3.i90 = tail call i32 @wm8350_clear_bits(ptr noundef %wm8350, i16 noundef zeroext 135, i16 noundef zeroext %conv.i.pre-phi) #2
  br label %gpio_set_polarity.exit

gpio_set_polarity.exit:                           ; preds = %if.else.i91, %if.then.i89
  %retval.0.i92 = phi i32 [ %call.i88, %if.then.i89 ], [ %call3.i90, %if.else.i91 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i92)
  %tobool35.not = icmp eq i32 %retval.0.i92, 0
  br i1 %tobool35.not, label %if.end37, label %gpio_set_polarity.exit.return_crit_edge

gpio_set_polarity.exit.return_crit_edge:          ; preds = %gpio_set_polarity.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.end37:                                         ; preds = %gpio_set_polarity.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %debounce)
  %cmp.i93 = icmp eq i32 %debounce, 1
  br i1 %cmp.i93, label %if.then.i97, label %if.else.i99

if.then.i97:                                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #4
  %call.i96 = tail call i32 @wm8350_set_bits(ptr noundef %wm8350, i16 noundef zeroext 128, i16 noundef zeroext %conv.i.pre-phi) #2
  br label %wm8350_gpio_set_debounce.exit

if.else.i99:                                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #4
  %call3.i98 = tail call i32 @wm8350_clear_bits(ptr noundef %wm8350, i16 noundef zeroext 128, i16 noundef zeroext %conv.i.pre-phi) #2
  br label %wm8350_gpio_set_debounce.exit

wm8350_gpio_set_debounce.exit:                    ; preds = %if.else.i99, %if.then.i97
  %retval.0.i100 = phi i32 [ %call.i96, %if.then.i97 ], [ %call3.i98, %if.else.i99 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i100)
  %tobool39.not = icmp eq i32 %retval.0.i100, 0
  br i1 %tobool39.not, label %if.end41, label %wm8350_gpio_set_debounce.exit.return_crit_edge

wm8350_gpio_set_debounce.exit.return_crit_edge:   ; preds = %wm8350_gpio_set_debounce.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.end41:                                         ; preds = %wm8350_gpio_set_debounce.exit
  %call42 = tail call fastcc i32 @gpio_set_dir(ptr noundef %wm8350, i32 noundef %gpio, i32 noundef %dir)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.end41.return_crit_edge

if.end41.return_crit_edge:                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.end45:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #4
  %call46 = tail call fastcc i32 @gpio_set_func(ptr noundef %wm8350, i32 noundef %gpio, i32 noundef %func)
  br label %return

return:                                           ; preds = %if.end45, %if.end41.return_crit_edge, %wm8350_gpio_set_debounce.exit.return_crit_edge, %gpio_set_polarity.exit.return_crit_edge, %gpio_set_invert.exit.return_crit_edge, %if.end22.return_crit_edge, %if.then18.return_crit_edge, %if.end11.return_crit_edge, %if.then7.return_crit_edge, %if.end.return_crit_edge, %if.then.return_crit_edge
  %retval.0 = phi i32 [ %call46, %if.end45 ], [ -5, %if.end41.return_crit_edge ], [ -5, %wm8350_gpio_set_debounce.exit.return_crit_edge ], [ -5, %gpio_set_polarity.exit.return_crit_edge ], [ -5, %gpio_set_invert.exit.return_crit_edge ], [ -5, %if.end22.return_crit_edge ], [ -5, %if.then18.return_crit_edge ], [ -5, %if.end11.return_crit_edge ], [ -5, %if.then7.return_crit_edge ], [ -5, %if.end.return_crit_edge ], [ -5, %if.then.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gpio_set_dir(ptr noundef %wm8350, i32 noundef %gpio, i32 noundef %dir) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @wm8350_reg_unlock(ptr noundef %wm8350) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp = icmp eq i32 %dir, 1
  %shl = shl nuw i32 1, %gpio
  %conv = trunc i32 %shl to i16
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call1 = tail call i32 @wm8350_clear_bits(ptr noundef %wm8350, i16 noundef zeroext 134, i16 noundef zeroext %conv) #2
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call4 = tail call i32 @wm8350_set_bits(ptr noundef %wm8350, i16 noundef zeroext 134, i16 noundef zeroext %conv) #2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call1, %if.then ], [ %call4, %if.else ]
  %call5 = tail call i32 @wm8350_reg_lock(ptr noundef %wm8350) #2
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gpio_set_func(ptr noundef %wm8350, i32 noundef %gpio, i32 noundef %func) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @wm8350_reg_unlock(ptr noundef %wm8350) #2
  %0 = zext i32 %gpio to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %gpio, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
    i32 2, label %sw.bb18
    i32 3, label %sw.bb29
    i32 4, label %sw.bb40
    i32 5, label %sw.bb51
    i32 6, label %sw.bb62
    i32 7, label %sw.bb73
    i32 8, label %sw.bb84
    i32 9, label %sw.bb95
    i32 10, label %sw.bb106
    i32 11, label %sw.bb117
    i32 12, label %sw.bb128
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call1 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %wm8350, i32 noundef 140) #2
  %1 = and i16 %call1, -16
  %2 = trunc i32 %func to i16
  %3 = and i16 %2, 15
  %conv5 = or i16 %1, %3
  %call6 = tail call i32 @wm8350_reg_write(ptr noundef %wm8350, i32 noundef 140, i16 noundef zeroext %conv5) #2
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call8 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %wm8350, i32 noundef 140) #2
  %4 = and i16 %call8, -241
  %func.tr200 = trunc i32 %func to i16
  %5 = shl i16 %func.tr200, 4
  %6 = and i16 %5, 240
  %conv16 = or i16 %4, %6
  %call17 = tail call i32 @wm8350_reg_write(ptr noundef %wm8350, i32 noundef 140, i16 noundef zeroext %conv16) #2
  br label %cleanup

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call19 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %wm8350, i32 noundef 140) #2
  %7 = and i16 %call19, -3841
  %func.tr199 = trunc i32 %func to i16
  %8 = shl i16 %func.tr199, 8
  %9 = and i16 %8, 3840
  %conv27 = or i16 %7, %9
  %call28 = tail call i32 @wm8350_reg_write(ptr noundef %wm8350, i32 noundef 140, i16 noundef zeroext %conv27) #2
  br label %cleanup

sw.bb29:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call30 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %wm8350, i32 noundef 140) #2
  %10 = and i16 %call30, 4095
  %func.tr198 = trunc i32 %func to i16
  %11 = shl i16 %func.tr198, 12
  %conv38 = or i16 %10, %11
  %call39 = tail call i32 @wm8350_reg_write(ptr noundef %wm8350, i32 noundef 140, i16 noundef zeroext %conv38) #2
  br label %cleanup

sw.bb40:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call41 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %wm8350, i32 noundef 141) #2
  %12 = and i16 %call41, -16
  %13 = trunc i32 %func to i16
  %14 = and i16 %13, 15
  %conv49 = or i16 %12, %14
  %call50 = tail call i32 @wm8350_reg_write(ptr noundef %wm8350, i32 noundef 141, i16 noundef zeroext %conv49) #2
  br label %cleanup

sw.bb51:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call52 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %wm8350, i32 noundef 141) #2
  %15 = and i16 %call52, -241
  %func.tr197 = trunc i32 %func to i16
  %16 = shl i16 %func.tr197, 4
  %17 = and i16 %16, 240
  %conv60 = or i16 %15, %17
  %call61 = tail call i32 @wm8350_reg_write(ptr noundef %wm8350, i32 noundef 141, i16 noundef zeroext %conv60) #2
  br label %cleanup

sw.bb62:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call63 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %wm8350, i32 noundef 141) #2
  %18 = and i16 %call63, -3841
  %func.tr196 = trunc i32 %func to i16
  %19 = shl i16 %func.tr196, 8
  %20 = and i16 %19, 3840
  %conv71 = or i16 %18, %20
  %call72 = tail call i32 @wm8350_reg_write(ptr noundef %wm8350, i32 noundef 141, i16 noundef zeroext %conv71) #2
  br label %cleanup

sw.bb73:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call74 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %wm8350, i32 noundef 141) #2
  %21 = and i16 %call74, 4095
  %func.tr195 = trunc i32 %func to i16
  %22 = shl i16 %func.tr195, 12
  %conv82 = or i16 %21, %22
  %call83 = tail call i32 @wm8350_reg_write(ptr noundef %wm8350, i32 noundef 141, i16 noundef zeroext %conv82) #2
  br label %cleanup

sw.bb84:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call85 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %wm8350, i32 noundef 142) #2
  %23 = and i16 %call85, -16
  %24 = trunc i32 %func to i16
  %25 = and i16 %24, 15
  %conv93 = or i16 %23, %25
  %call94 = tail call i32 @wm8350_reg_write(ptr noundef %wm8350, i32 noundef 142, i16 noundef zeroext %conv93) #2
  br label %cleanup

sw.bb95:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call96 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %wm8350, i32 noundef 142) #2
  %26 = and i16 %call96, -241
  %func.tr194 = trunc i32 %func to i16
  %27 = shl i16 %func.tr194, 4
  %28 = and i16 %27, 240
  %conv104 = or i16 %26, %28
  %call105 = tail call i32 @wm8350_reg_write(ptr noundef %wm8350, i32 noundef 142, i16 noundef zeroext %conv104) #2
  br label %cleanup

sw.bb106:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call107 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %wm8350, i32 noundef 142) #2
  %29 = and i16 %call107, -3841
  %func.tr193 = trunc i32 %func to i16
  %30 = shl i16 %func.tr193, 8
  %31 = and i16 %30, 3840
  %conv115 = or i16 %29, %31
  %call116 = tail call i32 @wm8350_reg_write(ptr noundef %wm8350, i32 noundef 142, i16 noundef zeroext %conv115) #2
  br label %cleanup

sw.bb117:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call118 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %wm8350, i32 noundef 142) #2
  %32 = and i16 %call118, 4095
  %func.tr = trunc i32 %func to i16
  %33 = shl i16 %func.tr, 12
  %conv126 = or i16 %32, %33
  %call127 = tail call i32 @wm8350_reg_write(ptr noundef %wm8350, i32 noundef 142, i16 noundef zeroext %conv126) #2
  br label %cleanup

sw.bb128:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call129 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %wm8350, i32 noundef 143) #2
  %34 = and i16 %call129, -16
  %35 = trunc i32 %func to i16
  %36 = and i16 %35, 15
  %conv137 = or i16 %34, %36
  %call138 = tail call i32 @wm8350_reg_write(ptr noundef %wm8350, i32 noundef 143, i16 noundef zeroext %conv137) #2
  br label %cleanup

cleanup:                                          ; preds = %sw.bb128, %sw.bb117, %sw.bb106, %sw.bb95, %sw.bb84, %sw.bb73, %sw.bb62, %sw.bb51, %sw.bb40, %sw.bb29, %sw.bb18, %sw.bb7, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.bb128 ], [ 0, %sw.bb117 ], [ 0, %sw.bb106 ], [ 0, %sw.bb95 ], [ 0, %sw.bb84 ], [ 0, %sw.bb73 ], [ 0, %sw.bb62 ], [ 0, %sw.bb51 ], [ 0, %sw.bb40 ], [ 0, %sw.bb29 ], [ 0, %sw.bb18 ], [ 0, %sw.bb7 ], [ 0, %sw.bb ]
  %call140 = tail call i32 @wm8350_reg_lock(ptr noundef %wm8350) #2
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm8350_set_bits(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm8350_clear_bits(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm8350_reg_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm8350_reg_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @wm8350_reg_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm8350_reg_write(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @__ksymtab_wm8350_gpio_config, !1, !"__ksymtab_wm8350_gpio_config", i1 false, i1 false}
!1 = !{!"../drivers/mfd/wm8350-gpio.c", i32 217, i32 1}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
