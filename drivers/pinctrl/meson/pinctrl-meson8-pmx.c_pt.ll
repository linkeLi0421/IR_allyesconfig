; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/meson/pinctrl-meson8-pmx.c_pt.bc'
source_filename = "../drivers/pinctrl/meson/pinctrl-meson8-pmx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+meson8_pmx_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_meson8_pmx_ops\09\09\09\09"
module asm "\09.long\09__crc_meson8_pmx_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_meson8_pmx_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22meson8_pmx_ops\22\09\09\09\09\09"
module asm "__kstrtabns_meson8_pmx_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.meson_pinctrl = type { ptr, ptr, %struct.pinctrl_desc, ptr, ptr, ptr, ptr, ptr, ptr, %struct.gpio_chip, ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.64, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.64 = type { ptr }
%struct.meson_pinctrl_data = type { ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, ptr, ptr, ptr }
%struct.meson_pmx_group = type { ptr, ptr, i32, ptr }
%struct.meson_pmx_func = type { ptr, ptr, i32 }
%struct.meson8_pmx_data = type { i8, i32, i32 }

@meson8_pmx_ops = dso_local constant { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr null, ptr null, ptr @meson_pmx_get_funcs_count, ptr @meson_pmx_get_func_name, ptr @meson_pmx_get_groups, ptr @meson8_pmx_set_mux, ptr @meson8_pmx_request_gpio, ptr null, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__kstrtab_meson8_pmx_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_meson8_pmx_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_meson8_pmx_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @meson8_pmx_ops to i32), ptr @__kstrtab_meson8_pmx_ops, ptr @__kstrtabns_meson8_pmx_ops }, section "___ksymtab_gpl+meson8_pmx_ops", align 4
@__UNIQUE_ID_file224 = internal constant [65 x i8] c"pinctrl_meson8_pmx.file=drivers/pinctrl/meson/pinctrl-meson8-pmx\00", section ".modinfo", align 1
@__UNIQUE_ID_license225 = internal constant [34 x i8] c"pinctrl_meson8_pmx.license=GPL v2\00", section ".modinfo", align 1
@meson8_pmx_set_mux.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 16, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pinctrl_meson8_pmx\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"meson8_pmx_set_mux\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/pinctrl/meson/pinctrl-meson8-pmx.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"enable function %s, group %s\0A\00", [34 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [15 x i8] c"meson8_pmx_ops\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 96, i32 25 }
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private constant [46 x i8] c"../drivers/pinctrl/meson/pinctrl-meson8-pmx.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 66, i32 2 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_file224, ptr @__UNIQUE_ID_license225, ptr @__ksymtab_meson8_pmx_ops, ptr @meson8_pmx_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson8_pmx_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @meson_pmx_get_funcs_count(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @meson_pmx_get_func_name(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @meson_pmx_get_groups(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson8_pmx_set_mux(ptr noundef %pcdev, i32 noundef %func_num, i32 noundef %group_num) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pcdev) #2
  %data = getelementptr inbounds %struct.meson_pinctrl, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %funcs = getelementptr inbounds %struct.meson_pinctrl_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %groups = getelementptr inbounds %struct.meson_pinctrl_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %groups, align 4
  %data3 = getelementptr %struct.meson_pmx_group, ptr %5, i32 %group_num, i32 3
  %6 = ptrtoint ptr %data3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data3, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @meson8_pmx_set_mux.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@meson8_pmx_set_mux, %do.end)) #2
          to label %if.then [label %do.end], !srcloc !22

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %arrayidx2 = getelementptr %struct.meson_pmx_group, ptr %5, i32 %group_num
  %arrayidx = getelementptr %struct.meson_pmx_func, ptr %3, i32 %func_num
  %8 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call, align 4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %12 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx2, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @meson8_pmx_set_mux.__UNIQUE_ID_ddebug223, ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef %11, ptr noundef %13) #2
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %num_pins = getelementptr %struct.meson_pmx_group, ptr %5, i32 %group_num, i32 2
  %14 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_pins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp30.not = icmp eq i32 %15, 0
  br i1 %cmp30.not, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %pins = getelementptr %struct.meson_pmx_group, ptr %5, i32 %group_num, i32 1
  %reg_mux.i = getelementptr inbounds %struct.meson_pinctrl, ptr %call, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %meson8_pmx_disable_other_groups.exit.for.body_crit_edge, %for.body.lr.ph
  %i.031 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %meson8_pmx_disable_other_groups.exit.for.body_crit_edge ]
  %16 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pins, align 4
  %arrayidx9 = getelementptr i32, ptr %17, i32 %i.031
  %18 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx9, align 4
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  %num_groups27.i = getelementptr inbounds %struct.meson_pinctrl_data, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %num_groups27.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_groups27.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp28.not.i = icmp eq i32 %23, 0
  br i1 %cmp28.not.i, label %for.body.meson8_pmx_disable_other_groups.exit_crit_edge, label %for.body.for.body.i_crit_edge

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.meson8_pmx_disable_other_groups.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %meson8_pmx_disable_other_groups.exit

for.body.i:                                       ; preds = %for.inc11.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %24 = phi ptr [ %46, %for.inc11.i.for.body.i_crit_edge ], [ %21, %for.body.for.body.i_crit_edge ]
  %i.029.i = phi i32 [ %inc12.i, %for.inc11.i.for.body.i_crit_edge ], [ 0, %for.body.for.body.i_crit_edge ]
  %groups.i = getelementptr inbounds %struct.meson_pinctrl_data, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %groups.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %groups.i, align 4
  %data2.i = getelementptr %struct.meson_pmx_group, ptr %26, i32 %i.029.i, i32 3
  %27 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data2.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 4, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i = icmp ne i8 %30, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %i.029.i, i32 %group_num)
  %cmp3.i = icmp eq i32 %i.029.i, %group_num
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %cmp3.i
  br i1 %or.cond.i, label %for.body.i.for.inc11.i_crit_edge, label %for.cond4.preheader.i

for.body.i.for.inc11.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc11.i

for.cond4.preheader.i:                            ; preds = %for.body.i
  %num_pins.i = getelementptr %struct.meson_pmx_group, ptr %26, i32 %i.029.i, i32 2
  %31 = ptrtoint ptr %num_pins.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_pins.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp525.not.i = icmp eq i32 %32, 0
  br i1 %cmp525.not.i, label %for.cond4.preheader.i.for.inc11.i_crit_edge, label %for.body6.lr.ph.i

for.cond4.preheader.i.for.inc11.i_crit_edge:      ; preds = %for.cond4.preheader.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc11.i

for.body6.lr.ph.i:                                ; preds = %for.cond4.preheader.i
  %pins.i = getelementptr %struct.meson_pmx_group, ptr %26, i32 %i.029.i, i32 1
  %reg.i = getelementptr inbounds %struct.meson8_pmx_data, ptr %28, i32 0, i32 1
  %bit.i = getelementptr inbounds %struct.meson8_pmx_data, ptr %28, i32 0, i32 2
  br label %for.body6.i

for.body6.i:                                      ; preds = %for.inc.i.for.body6.i_crit_edge, %for.body6.lr.ph.i
  %j.026.i = phi i32 [ 0, %for.body6.lr.ph.i ], [ %inc.i, %for.inc.i.for.body6.i_crit_edge ]
  %33 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pins.i, align 4
  %arrayidx7.i = getelementptr i32, ptr %34, i32 %j.026.i
  %35 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %19)
  %cmp8.i = icmp eq i32 %36, %19
  br i1 %cmp8.i, label %if.then9.i, label %for.body6.i.for.inc.i_crit_edge

for.body6.i.for.inc.i_crit_edge:                  ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.i

if.then9.i:                                       ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #4
  %37 = ptrtoint ptr %reg_mux.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg_mux.i, align 4
  %39 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %reg.i, align 4
  %mul.i = shl i32 %40, 2
  %41 = ptrtoint ptr %bit.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bit.i, align 4
  %shl.i = shl nuw i32 1, %42
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %38, i32 noundef %mul.i, i32 noundef %shl.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #2
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then9.i, %for.body6.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %j.026.i, 1
  %43 = ptrtoint ptr %num_pins.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_pins.i, align 4
  %cmp5.i = icmp ult i32 %inc.i, %44
  br i1 %cmp5.i, label %for.inc.i.for.body6.i_crit_edge, label %for.inc.i.for.inc11.i_crit_edge

for.inc.i.for.inc11.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc11.i

for.inc.i.for.body6.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body6.i

for.inc11.i:                                      ; preds = %for.inc.i.for.inc11.i_crit_edge, %for.cond4.preheader.i.for.inc11.i_crit_edge, %for.body.i.for.inc11.i_crit_edge
  %inc12.i = add nuw i32 %i.029.i, 1
  %45 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data, align 4
  %num_groups.i = getelementptr inbounds %struct.meson_pinctrl_data, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %num_groups.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_groups.i, align 4
  %cmp.i = icmp ult i32 %inc12.i, %48
  br i1 %cmp.i, label %for.inc11.i.for.body.i_crit_edge, label %for.inc11.i.meson8_pmx_disable_other_groups.exit_crit_edge

for.inc11.i.meson8_pmx_disable_other_groups.exit_crit_edge: ; preds = %for.inc11.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %meson8_pmx_disable_other_groups.exit

for.inc11.i.for.body.i_crit_edge:                 ; preds = %for.inc11.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i

meson8_pmx_disable_other_groups.exit:             ; preds = %for.inc11.i.meson8_pmx_disable_other_groups.exit_crit_edge, %for.body.meson8_pmx_disable_other_groups.exit_crit_edge
  %inc = add nuw i32 %i.031, 1
  %49 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %num_pins, align 4
  %cmp = icmp ult i32 %inc, %50
  br i1 %cmp, label %meson8_pmx_disable_other_groups.exit.for.body_crit_edge, label %meson8_pmx_disable_other_groups.exit.for.end_crit_edge

meson8_pmx_disable_other_groups.exit.for.end_crit_edge: ; preds = %meson8_pmx_disable_other_groups.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

meson8_pmx_disable_other_groups.exit.for.body_crit_edge: ; preds = %meson8_pmx_disable_other_groups.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.end:                                          ; preds = %meson8_pmx_disable_other_groups.exit.for.end_crit_edge, %do.end.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %func_num)
  %tobool10.not = icmp eq i32 %func_num, 0
  br i1 %tobool10.not, label %for.end.if.end15_crit_edge, label %if.then11

for.end.if.end15_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end15

if.then11:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #4
  %reg_mux = getelementptr inbounds %struct.meson_pinctrl, ptr %call, i32 0, i32 4
  %51 = ptrtoint ptr %reg_mux to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %reg_mux, align 4
  %reg = getelementptr inbounds %struct.meson8_pmx_data, ptr %7, i32 0, i32 1
  %53 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %reg, align 4
  %mul = shl i32 %54, 2
  %bit = getelementptr inbounds %struct.meson8_pmx_data, ptr %7, i32 0, i32 2
  %55 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %bit, align 4
  %shl = shl nuw i32 1, %56
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %52, i32 noundef %mul, i32 noundef %shl, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #2
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %for.end.if.end15_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.then11 ], [ 0, %for.end.if.end15_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson8_pmx_request_gpio(ptr noundef %pcdev, ptr nocapture noundef readnone %range, i32 noundef %offset) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pcdev) #2
  %data.i = getelementptr inbounds %struct.meson_pinctrl, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %num_groups27.i = getelementptr inbounds %struct.meson_pinctrl_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %num_groups27.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_groups27.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp28.not.i = icmp eq i32 %3, 0
  br i1 %cmp28.not.i, label %entry.meson8_pmx_disable_other_groups.exit_crit_edge, label %for.body.lr.ph.i

entry.meson8_pmx_disable_other_groups.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %meson8_pmx_disable_other_groups.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %reg_mux.i = getelementptr inbounds %struct.meson_pinctrl, ptr %call, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc11.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %4 = phi ptr [ %1, %for.body.lr.ph.i ], [ %26, %for.inc11.i.for.body.i_crit_edge ]
  %i.029.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc12.i, %for.inc11.i.for.body.i_crit_edge ]
  %groups.i = getelementptr inbounds %struct.meson_pinctrl_data, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %groups.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %groups.i, align 4
  %data2.i = getelementptr %struct.meson_pmx_group, ptr %6, i32 %i.029.i, i32 3
  %7 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data2.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 4, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i.not = icmp eq i8 %10, 0
  br i1 %tobool.not.i.not, label %for.cond4.preheader.i, label %for.body.i.for.inc11.i_crit_edge

for.body.i.for.inc11.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc11.i

for.cond4.preheader.i:                            ; preds = %for.body.i
  %num_pins.i = getelementptr %struct.meson_pmx_group, ptr %6, i32 %i.029.i, i32 2
  %11 = ptrtoint ptr %num_pins.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_pins.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp525.not.i = icmp eq i32 %12, 0
  br i1 %cmp525.not.i, label %for.cond4.preheader.i.for.inc11.i_crit_edge, label %for.body6.lr.ph.i

for.cond4.preheader.i.for.inc11.i_crit_edge:      ; preds = %for.cond4.preheader.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc11.i

for.body6.lr.ph.i:                                ; preds = %for.cond4.preheader.i
  %pins.i = getelementptr %struct.meson_pmx_group, ptr %6, i32 %i.029.i, i32 1
  %reg.i = getelementptr inbounds %struct.meson8_pmx_data, ptr %8, i32 0, i32 1
  %bit.i = getelementptr inbounds %struct.meson8_pmx_data, ptr %8, i32 0, i32 2
  br label %for.body6.i

for.body6.i:                                      ; preds = %for.inc.i.for.body6.i_crit_edge, %for.body6.lr.ph.i
  %j.026.i = phi i32 [ 0, %for.body6.lr.ph.i ], [ %inc.i, %for.inc.i.for.body6.i_crit_edge ]
  %13 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pins.i, align 4
  %arrayidx7.i = getelementptr i32, ptr %14, i32 %j.026.i
  %15 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %offset)
  %cmp8.i = icmp eq i32 %16, %offset
  br i1 %cmp8.i, label %if.then9.i, label %for.body6.i.for.inc.i_crit_edge

for.body6.i.for.inc.i_crit_edge:                  ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.i

if.then9.i:                                       ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #4
  %17 = ptrtoint ptr %reg_mux.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_mux.i, align 4
  %19 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reg.i, align 4
  %mul.i = shl i32 %20, 2
  %21 = ptrtoint ptr %bit.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bit.i, align 4
  %shl.i = shl nuw i32 1, %22
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef %mul.i, i32 noundef %shl.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #2
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then9.i, %for.body6.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %j.026.i, 1
  %23 = ptrtoint ptr %num_pins.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_pins.i, align 4
  %cmp5.i = icmp ult i32 %inc.i, %24
  br i1 %cmp5.i, label %for.inc.i.for.body6.i_crit_edge, label %for.inc.i.for.inc11.i_crit_edge

for.inc.i.for.inc11.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc11.i

for.inc.i.for.body6.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body6.i

for.inc11.i:                                      ; preds = %for.inc.i.for.inc11.i_crit_edge, %for.cond4.preheader.i.for.inc11.i_crit_edge, %for.body.i.for.inc11.i_crit_edge
  %inc12.i = add nuw i32 %i.029.i, 1
  %25 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i, align 4
  %num_groups.i = getelementptr inbounds %struct.meson_pinctrl_data, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %num_groups.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_groups.i, align 4
  %cmp.i = icmp ult i32 %inc12.i, %28
  br i1 %cmp.i, label %for.inc11.i.for.body.i_crit_edge, label %for.inc11.i.meson8_pmx_disable_other_groups.exit_crit_edge

for.inc11.i.meson8_pmx_disable_other_groups.exit_crit_edge: ; preds = %for.inc11.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %meson8_pmx_disable_other_groups.exit

for.inc11.i.for.body.i_crit_edge:                 ; preds = %for.inc11.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i

meson8_pmx_disable_other_groups.exit:             ; preds = %for.inc11.i.meson8_pmx_disable_other_groups.exit_crit_edge, %entry.meson8_pmx_disable_other_groups.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @meson8_pmx_ops, !1, !"meson8_pmx_ops", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/meson/pinctrl-meson8-pmx.c", i32 96, i32 25}
!2 = !{ptr @__ksymtab_meson8_pmx_ops, !3, !"__ksymtab_meson8_pmx_ops", i1 false, i1 false}
!3 = !{!"../drivers/pinctrl/meson/pinctrl-meson8-pmx.c", i32 103, i32 1}
!4 = !{ptr @__UNIQUE_ID_file224, !5, !"__UNIQUE_ID_file224", i1 false, i1 false}
!5 = !{!"../drivers/pinctrl/meson/pinctrl-meson8-pmx.c", i32 104, i32 1}
!6 = !{ptr @__UNIQUE_ID_license225, !5, !"__UNIQUE_ID_license225", i1 false, i1 false}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/pinctrl/meson/pinctrl-meson8-pmx.c", i32 66, i32 2}
!9 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @meson8_pmx_set_mux.__UNIQUE_ID_ddebug223, !8, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{i64 2148278642, i64 2148278647, i64 2148278660, i64 2148278704, i64 2148278738, i64 2148278759}
!23 = !{i8 0, i8 2}
