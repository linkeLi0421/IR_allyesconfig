; ModuleID = '/llk/IR_all_yes/drivers/base/regmap/regmap-spmi.c_pt.bc'
source_filename = "../drivers/base/regmap/regmap-spmi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+__regmap_init_spmi_base\22, \22a\22\09"
module asm "\09.weak\09__crc___regmap_init_spmi_base\09\09\09\09"
module asm "\09.long\09__crc___regmap_init_spmi_base\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___regmap_init_spmi_base:\09\09\09\09\09"
module asm "\09.asciz \09\22__regmap_init_spmi_base\22\09\09\09\09\09"
module asm "__kstrtabns___regmap_init_spmi_base:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__devm_regmap_init_spmi_base\22, \22a\22\09"
module asm "\09.weak\09__crc___devm_regmap_init_spmi_base\09\09\09\09"
module asm "\09.long\09__crc___devm_regmap_init_spmi_base\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___devm_regmap_init_spmi_base:\09\09\09\09\09"
module asm "\09.asciz \09\22__devm_regmap_init_spmi_base\22\09\09\09\09\09"
module asm "__kstrtabns___devm_regmap_init_spmi_base:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__regmap_init_spmi_ext\22, \22a\22\09"
module asm "\09.weak\09__crc___regmap_init_spmi_ext\09\09\09\09"
module asm "\09.long\09__crc___regmap_init_spmi_ext\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___regmap_init_spmi_ext:\09\09\09\09\09"
module asm "\09.asciz \09\22__regmap_init_spmi_ext\22\09\09\09\09\09"
module asm "__kstrtabns___regmap_init_spmi_ext:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__devm_regmap_init_spmi_ext\22, \22a\22\09"
module asm "\09.weak\09__crc___devm_regmap_init_spmi_ext\09\09\09\09"
module asm "\09.long\09__crc___devm_regmap_init_spmi_ext\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___devm_regmap_init_spmi_ext:\09\09\09\09\09"
module asm "\09.asciz \09\22__devm_regmap_init_spmi_ext\22\09\09\09\09\09"
module asm "__kstrtabns___devm_regmap_init_spmi_ext:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.regmap_bus = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }

@regmap_spmi_base = internal constant { %struct.regmap_bus, [32 x i8] } { %struct.regmap_bus { i8 0, ptr @regmap_spmi_base_write, ptr @regmap_spmi_base_gather_write, ptr null, ptr null, ptr null, ptr @regmap_spmi_base_read, ptr null, ptr null, ptr null, i8 0, i32 3, i32 3, i32 0, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@__kstrtab___regmap_init_spmi_base = external dso_local constant [0 x i8], align 1
@__kstrtabns___regmap_init_spmi_base = external dso_local constant [0 x i8], align 1
@__ksymtab___regmap_init_spmi_base = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__regmap_init_spmi_base to i32), ptr @__kstrtab___regmap_init_spmi_base, ptr @__kstrtabns___regmap_init_spmi_base }, section "___ksymtab_gpl+__regmap_init_spmi_base", align 4
@__kstrtab___devm_regmap_init_spmi_base = external dso_local constant [0 x i8], align 1
@__kstrtabns___devm_regmap_init_spmi_base = external dso_local constant [0 x i8], align 1
@__ksymtab___devm_regmap_init_spmi_base = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__devm_regmap_init_spmi_base to i32), ptr @__kstrtab___devm_regmap_init_spmi_base, ptr @__kstrtabns___devm_regmap_init_spmi_base }, section "___ksymtab_gpl+__devm_regmap_init_spmi_base", align 4
@regmap_spmi_ext = internal constant { %struct.regmap_bus, [32 x i8] } { %struct.regmap_bus { i8 0, ptr @regmap_spmi_ext_write, ptr @regmap_spmi_ext_gather_write, ptr null, ptr null, ptr null, ptr @regmap_spmi_ext_read, ptr null, ptr null, ptr null, i8 0, i32 3, i32 3, i32 0, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@__kstrtab___regmap_init_spmi_ext = external dso_local constant [0 x i8], align 1
@__kstrtabns___regmap_init_spmi_ext = external dso_local constant [0 x i8], align 1
@__ksymtab___regmap_init_spmi_ext = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__regmap_init_spmi_ext to i32), ptr @__kstrtab___regmap_init_spmi_ext, ptr @__kstrtabns___regmap_init_spmi_ext }, section "___ksymtab_gpl+__regmap_init_spmi_ext", align 4
@__kstrtab___devm_regmap_init_spmi_ext = external dso_local constant [0 x i8], align 1
@__kstrtabns___devm_regmap_init_spmi_ext = external dso_local constant [0 x i8], align 1
@__ksymtab___devm_regmap_init_spmi_ext = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__devm_regmap_init_spmi_ext to i32), ptr @__kstrtab___devm_regmap_init_spmi_ext, ptr @__kstrtabns___devm_regmap_init_spmi_ext }, section "___ksymtab_gpl+__devm_regmap_init_spmi_ext", align 4
@__UNIQUE_ID_file178 = internal constant [49 x i8] c"regmap_spmi.file=drivers/base/regmap/regmap-spmi\00", section ".modinfo", align 1
@__UNIQUE_ID_license179 = internal constant [24 x i8] c"regmap_spmi.license=GPL\00", section ".modinfo", align 1
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"regmap_spmi_base\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 77, i32 32 }
@___asan_gen_.4 = private unnamed_addr constant [16 x i8] c"regmap_spmi_ext\00", align 1
@___asan_gen_.5 = private constant [37 x i8] c"../drivers/base/regmap/regmap-spmi.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 197, i32 32 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_file178, ptr @__UNIQUE_ID_license179, ptr @__ksymtab___devm_regmap_init_spmi_base, ptr @__ksymtab___devm_regmap_init_spmi_ext, ptr @__ksymtab___regmap_init_spmi_base, ptr @__ksymtab___regmap_init_spmi_ext, ptr @regmap_spmi_base, ptr @regmap_spmi_ext], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regmap_spmi_base to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regmap_spmi_ext to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__regmap_init_spmi_base(ptr noundef %sdev, ptr noundef %config, ptr noundef %lock_key, ptr noundef %lock_name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__regmap_init(ptr noundef %sdev, ptr noundef nonnull @regmap_spmi_base, ptr noundef %sdev, ptr noundef %config, ptr noundef %lock_key, ptr noundef %lock_name) #3
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__devm_regmap_init_spmi_base(ptr noundef %sdev, ptr noundef %config, ptr noundef %lock_key, ptr noundef %lock_name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__devm_regmap_init(ptr noundef %sdev, ptr noundef nonnull @regmap_spmi_base, ptr noundef %sdev, ptr noundef %config, ptr noundef %lock_key, ptr noundef %lock_name) #3
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__regmap_init_spmi_ext(ptr noundef %sdev, ptr noundef %config, ptr noundef %lock_key, ptr noundef %lock_name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__regmap_init(ptr noundef %sdev, ptr noundef nonnull @regmap_spmi_ext, ptr noundef %sdev, ptr noundef %config, ptr noundef %lock_key, ptr noundef %lock_name) #3
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__devm_regmap_init_spmi_ext(ptr noundef %sdev, ptr noundef %config, ptr noundef %lock_key, ptr noundef %lock_name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__devm_regmap_init(ptr noundef %sdev, ptr noundef nonnull @regmap_spmi_ext, ptr noundef %sdev, ptr noundef %config, ptr noundef %lock_key, ptr noundef %lock_name) #3
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_spmi_base_write(ptr noundef %context, ptr nocapture noundef readonly %data, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp eq i32 %count, 0
  br i1 %cmp, label %do.body2, label %do.end5, !prof !24

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/regmap/regmap-spmi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 72, 0\0A.popsection", ""() #3, !srcloc !25
  unreachable

do.end5:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %data, i32 1
  %sub = add i32 %count, -1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp8.i = icmp eq i8 %1, 0
  br i1 %cmp8.i, label %land.lhs.true.i, label %do.end5.if.end15.i_crit_edge

do.end5.if.end15.i_crit_edge:                     ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end15.i

land.lhs.true.i:                                  ; preds = %do.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool10.not.i = icmp eq i32 %sub, 0
  br i1 %tobool10.not.i, label %land.lhs.true.i.regmap_spmi_base_gather_write.exit_crit_edge, label %if.then11.i

land.lhs.true.i.regmap_spmi_base_gather_write.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %regmap_spmi_base_gather_write.exit

if.then11.i:                                      ; preds = %land.lhs.true.i
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %add.ptr, align 1
  %call.i = tail call i32 @spmi_register_zero_write(ptr noundef %context, i8 noundef zeroext %3) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.then11.i.regmap_spmi_base_gather_write.exit_crit_edge

if.then11.i.regmap_spmi_base_gather_write.exit_crit_edge: ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %regmap_spmi_base_gather_write.exit

if.end14.i:                                       ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #5
  %incdec.ptr.i = getelementptr i8, ptr %data, i32 2
  %dec.i = add i32 %count, -2
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.end14.i, %do.end5.if.end15.i_crit_edge
  %val_size.addr.0.i = phi i32 [ %dec.i, %if.end14.i ], [ %sub, %do.end5.if.end15.i_crit_edge ]
  %data.0.i = phi ptr [ %incdec.ptr.i, %if.end14.i ], [ %add.ptr, %do.end5.if.end15.i_crit_edge ]
  %addr.0.i = phi i8 [ 1, %if.end14.i ], [ %1, %do.end5.if.end15.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val_size.addr.0.i)
  %tobool16.not36.i = icmp eq i32 %val_size.addr.0.i, 0
  br i1 %tobool16.not36.i, label %if.end15.i.regmap_spmi_base_gather_write.exit_crit_edge, label %if.end15.i.while.body.i_crit_edge

if.end15.i.while.body.i_crit_edge:                ; preds = %if.end15.i
  br label %while.body.i

if.end15.i.regmap_spmi_base_gather_write.exit_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %regmap_spmi_base_gather_write.exit

while.body.i:                                     ; preds = %if.end20.i.while.body.i_crit_edge, %if.end15.i.while.body.i_crit_edge
  %addr.139.i = phi i8 [ %inc22.i, %if.end20.i.while.body.i_crit_edge ], [ %addr.0.i, %if.end15.i.while.body.i_crit_edge ]
  %data.138.i = phi ptr [ %incdec.ptr21.i, %if.end20.i.while.body.i_crit_edge ], [ %data.0.i, %if.end15.i.while.body.i_crit_edge ]
  %val_size.addr.137.i = phi i32 [ %dec23.i, %if.end20.i.while.body.i_crit_edge ], [ %val_size.addr.0.i, %if.end15.i.while.body.i_crit_edge ]
  %4 = ptrtoint ptr %data.138.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %data.138.i, align 1
  %call17.i = tail call i32 @spmi_register_write(ptr noundef %context, i8 noundef zeroext %addr.139.i, i8 noundef zeroext %5) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %while.body.i.regmap_spmi_base_gather_write.exit_crit_edge

while.body.i.regmap_spmi_base_gather_write.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %regmap_spmi_base_gather_write.exit

if.end20.i:                                       ; preds = %while.body.i
  %incdec.ptr21.i = getelementptr i8, ptr %data.138.i, i32 1
  %inc22.i = add i8 %addr.139.i, 1
  %dec23.i = add i32 %val_size.addr.137.i, -1
  %tobool16.not.i = icmp eq i32 %dec23.i, 0
  br i1 %tobool16.not.i, label %if.end20.i.regmap_spmi_base_gather_write.exit_crit_edge, label %if.end20.i.while.body.i_crit_edge

if.end20.i.while.body.i_crit_edge:                ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i

if.end20.i.regmap_spmi_base_gather_write.exit_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %regmap_spmi_base_gather_write.exit

regmap_spmi_base_gather_write.exit:               ; preds = %if.end20.i.regmap_spmi_base_gather_write.exit_crit_edge, %while.body.i.regmap_spmi_base_gather_write.exit_crit_edge, %if.end15.i.regmap_spmi_base_gather_write.exit_crit_edge, %if.then11.i.regmap_spmi_base_gather_write.exit_crit_edge, %land.lhs.true.i.regmap_spmi_base_gather_write.exit_crit_edge
  %err.2.i = phi i32 [ %call.i, %if.then11.i.regmap_spmi_base_gather_write.exit_crit_edge ], [ 0, %if.end15.i.regmap_spmi_base_gather_write.exit_crit_edge ], [ 0, %land.lhs.true.i.regmap_spmi_base_gather_write.exit_crit_edge ], [ 0, %if.end20.i.regmap_spmi_base_gather_write.exit_crit_edge ], [ %call17.i, %while.body.i.regmap_spmi_base_gather_write.exit_crit_edge ]
  ret i32 %err.2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_spmi_base_gather_write(ptr noundef %context, ptr nocapture noundef readonly %reg, i32 noundef %reg_size, ptr nocapture noundef readonly %val, i32 noundef %val_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %reg_size)
  %cmp.not = icmp eq i32 %reg_size, 1
  br i1 %cmp.not, label %do.end7, label %do.body2, !prof !26

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/regmap/regmap-spmi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 39, 0\0A.popsection", ""() #3, !srcloc !27
  unreachable

do.end7:                                          ; preds = %entry
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %reg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp8 = icmp eq i8 %1, 0
  br i1 %cmp8, label %land.lhs.true, label %do.end7.if.end15_crit_edge

do.end7.if.end15_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end15

land.lhs.true:                                    ; preds = %do.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val_size)
  %tobool10.not = icmp eq i32 %val_size, 0
  br i1 %tobool10.not, label %land.lhs.true.err_out_crit_edge, label %if.then11

land.lhs.true.err_out_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_out

if.then11:                                        ; preds = %land.lhs.true
  %2 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %val, align 1
  %call = tail call i32 @spmi_register_zero_write(ptr noundef %context, i8 noundef zeroext %3) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool12.not = icmp eq i32 %call, 0
  br i1 %tobool12.not, label %if.end14, label %if.then11.err_out_crit_edge

if.then11.err_out_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_out

if.end14:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #5
  %incdec.ptr = getelementptr i8, ptr %val, i32 1
  %dec = add i32 %val_size, -1
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %do.end7.if.end15_crit_edge
  %val_size.addr.0 = phi i32 [ %dec, %if.end14 ], [ %val_size, %do.end7.if.end15_crit_edge ]
  %data.0 = phi ptr [ %incdec.ptr, %if.end14 ], [ %val, %do.end7.if.end15_crit_edge ]
  %addr.0 = phi i8 [ 1, %if.end14 ], [ %1, %do.end7.if.end15_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val_size.addr.0)
  %tobool16.not36 = icmp eq i32 %val_size.addr.0, 0
  br i1 %tobool16.not36, label %if.end15.err_out_crit_edge, label %if.end15.while.body_crit_edge

if.end15.while.body_crit_edge:                    ; preds = %if.end15
  br label %while.body

if.end15.err_out_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_out

while.body:                                       ; preds = %if.end20.while.body_crit_edge, %if.end15.while.body_crit_edge
  %addr.139 = phi i8 [ %inc22, %if.end20.while.body_crit_edge ], [ %addr.0, %if.end15.while.body_crit_edge ]
  %data.138 = phi ptr [ %incdec.ptr21, %if.end20.while.body_crit_edge ], [ %data.0, %if.end15.while.body_crit_edge ]
  %val_size.addr.137 = phi i32 [ %dec23, %if.end20.while.body_crit_edge ], [ %val_size.addr.0, %if.end15.while.body_crit_edge ]
  %4 = ptrtoint ptr %data.138 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %data.138, align 1
  %call17 = tail call i32 @spmi_register_write(ptr noundef %context, i8 noundef zeroext %addr.139, i8 noundef zeroext %5) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %while.body.err_out_crit_edge

while.body.err_out_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_out

if.end20:                                         ; preds = %while.body
  %incdec.ptr21 = getelementptr i8, ptr %data.138, i32 1
  %inc22 = add i8 %addr.139, 1
  %dec23 = add i32 %val_size.addr.137, -1
  %tobool16.not = icmp eq i32 %dec23, 0
  br i1 %tobool16.not, label %if.end20.err_out_crit_edge, label %if.end20.while.body_crit_edge

if.end20.while.body_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

if.end20.err_out_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_out

err_out:                                          ; preds = %if.end20.err_out_crit_edge, %while.body.err_out_crit_edge, %if.end15.err_out_crit_edge, %if.then11.err_out_crit_edge, %land.lhs.true.err_out_crit_edge
  %err.2 = phi i32 [ %call, %if.then11.err_out_crit_edge ], [ 0, %if.end15.err_out_crit_edge ], [ 0, %land.lhs.true.err_out_crit_edge ], [ %call17, %while.body.err_out_crit_edge ], [ 0, %if.end20.err_out_crit_edge ]
  ret i32 %err.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_spmi_base_read(ptr noundef %context, ptr nocapture noundef readonly %reg, i32 noundef %reg_size, ptr noundef %val, i32 noundef %val_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %reg_size)
  %cmp.not = icmp eq i32 %reg_size, 1
  br i1 %cmp.not, label %while.cond.preheader, label %do.body2, !prof !26

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val_size)
  %tobool8.not13.not = icmp eq i32 %val_size, 0
  br i1 %tobool8.not13.not, label %while.cond.preheader.while.end_crit_edge, label %while.body.preheader

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body.preheader:                             ; preds = %while.cond.preheader
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %reg, align 1
  br label %while.body

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/regmap/regmap-spmi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 23, 0\0A.popsection", ""() #3, !srcloc !28
  unreachable

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %addr.016 = phi i8 [ %inc, %while.body.while.body_crit_edge ], [ %1, %while.body.preheader ]
  %val_size.addr.015 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %val_size, %while.body.preheader ]
  %val.addr.014 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %val, %while.body.preheader ]
  %dec = add i32 %val_size.addr.015, -1
  %inc = add i8 %addr.016, 1
  %incdec.ptr = getelementptr i8, ptr %val.addr.014, i32 1
  %call = tail call i32 @spmi_register_read(ptr noundef %context, i8 noundef zeroext %addr.016, ptr noundef %val.addr.014) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool8.not = icmp ne i32 %dec, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool9.not = icmp eq i32 %call, 0
  %or.cond = select i1 %tobool8.not, i1 %tobool9.not, i1 false
  br i1 %or.cond, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %err.0.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %call, %while.body.while.end_crit_edge ]
  ret i32 %err.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spmi_register_zero_write(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spmi_register_write(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spmi_register_read(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_spmi_ext_write(ptr noundef %context, ptr noundef %data, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %count)
  %cmp = icmp ult i32 %count, 2
  br i1 %cmp, label %do.body2, label %do.end5, !prof !24

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/regmap/regmap-spmi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 192, 0\0A.popsection", ""() #3, !srcloc !29
  unreachable

do.end5:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %data, i32 2
  %sub = add i32 %count, -2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %data, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %1)
  %cmp869.i = icmp ugt i16 %1, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool10.not70.i = icmp eq i32 %sub, 0
  %or.cond71.i = or i1 %tobool10.not70.i, %cmp869.i
  br i1 %or.cond71.i, label %do.end5.while.cond19.preheader.i_crit_edge, label %do.end5.while.body.i_crit_edge

do.end5.while.body.i_crit_edge:                   ; preds = %do.end5
  br label %while.body.i

do.end5.while.cond19.preheader.i_crit_edge:       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond19.preheader.i

while.cond19.preheader.i:                         ; preds = %if.end16.i.while.cond19.preheader.i_crit_edge, %do.end5.while.cond19.preheader.i_crit_edge
  %addr.0.lcssa.i = phi i16 [ %1, %do.end5.while.cond19.preheader.i_crit_edge ], [ %conv18.i, %if.end16.i.while.cond19.preheader.i_crit_edge ]
  %val_size.addr.0.lcssa.i = phi i32 [ %sub, %do.end5.while.cond19.preheader.i_crit_edge ], [ %sub.i, %if.end16.i.while.cond19.preheader.i_crit_edge ]
  %val.addr.0.lcssa.i = phi ptr [ %add.ptr, %do.end5.while.cond19.preheader.i_crit_edge ], [ %add.ptr.i, %if.end16.i.while.cond19.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val_size.addr.0.lcssa.i)
  %tobool20.not77.i = icmp eq i32 %val_size.addr.0.lcssa.i, 0
  br i1 %tobool20.not77.i, label %while.cond19.preheader.i.regmap_spmi_ext_gather_write.exit_crit_edge, label %while.cond19.preheader.i.while.body21.i_crit_edge

while.cond19.preheader.i.while.body21.i_crit_edge: ; preds = %while.cond19.preheader.i
  br label %while.body21.i

while.cond19.preheader.i.regmap_spmi_ext_gather_write.exit_crit_edge: ; preds = %while.cond19.preheader.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %regmap_spmi_ext_gather_write.exit

while.body.i:                                     ; preds = %if.end16.i.while.body.i_crit_edge, %do.end5.while.body.i_crit_edge
  %val.addr.074.i = phi ptr [ %add.ptr.i, %if.end16.i.while.body.i_crit_edge ], [ %add.ptr, %do.end5.while.body.i_crit_edge ]
  %val_size.addr.073.i = phi i32 [ %sub.i, %if.end16.i.while.body.i_crit_edge ], [ %sub, %do.end5.while.body.i_crit_edge ]
  %addr.072.i = phi i16 [ %conv18.i, %if.end16.i.while.body.i_crit_edge ], [ %1, %do.end5.while.body.i_crit_edge ]
  %2 = tail call i32 @llvm.umin.i32(i32 %val_size.addr.073.i, i32 16) #3
  %conv13.i = trunc i16 %addr.072.i to i8
  %call.i = tail call i32 @spmi_ext_register_write(ptr noundef %context, i8 noundef zeroext %conv13.i, ptr noundef %val.addr.074.i, i32 noundef %2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool14.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %while.body.i.regmap_spmi_ext_gather_write.exit_crit_edge

while.body.i.regmap_spmi_ext_gather_write.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %regmap_spmi_ext_gather_write.exit

if.end16.i:                                       ; preds = %while.body.i
  %3 = trunc i32 %2 to i16
  %conv18.i = add nuw nsw i16 %addr.072.i, %3
  %add.ptr.i = getelementptr i8, ptr %val.addr.074.i, i32 %2
  %sub.i = sub i32 %val_size.addr.073.i, %2
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %conv18.i)
  %cmp8.i = icmp ugt i16 %conv18.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool10.not.i = icmp eq i32 %sub.i, 0
  %or.cond.i = select i1 %cmp8.i, i1 true, i1 %tobool10.not.i
  br i1 %or.cond.i, label %if.end16.i.while.cond19.preheader.i_crit_edge, label %if.end16.i.while.body.i_crit_edge

if.end16.i.while.body.i_crit_edge:                ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i

if.end16.i.while.cond19.preheader.i_crit_edge:    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond19.preheader.i

while.body21.i:                                   ; preds = %if.end32.i.while.body21.i_crit_edge, %while.cond19.preheader.i.while.body21.i_crit_edge
  %val.addr.180.i = phi ptr [ %add.ptr36.i, %if.end32.i.while.body21.i_crit_edge ], [ %val.addr.0.lcssa.i, %while.cond19.preheader.i.while.body21.i_crit_edge ]
  %val_size.addr.179.i = phi i32 [ %sub37.i, %if.end32.i.while.body21.i_crit_edge ], [ %val_size.addr.0.lcssa.i, %while.cond19.preheader.i.while.body21.i_crit_edge ]
  %addr.178.i = phi i16 [ %conv35.i, %if.end32.i.while.body21.i_crit_edge ], [ %addr.0.lcssa.i, %while.cond19.preheader.i.while.body21.i_crit_edge ]
  %4 = tail call i32 @llvm.umin.i32(i32 %val_size.addr.179.i, i32 8) #3
  %call29.i = tail call i32 @spmi_ext_register_writel(ptr noundef %context, i16 noundef zeroext %addr.178.i, ptr noundef %val.addr.180.i, i32 noundef %4) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.end32.i, label %while.body21.i.regmap_spmi_ext_gather_write.exit_crit_edge

while.body21.i.regmap_spmi_ext_gather_write.exit_crit_edge: ; preds = %while.body21.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %regmap_spmi_ext_gather_write.exit

if.end32.i:                                       ; preds = %while.body21.i
  %5 = trunc i32 %4 to i16
  %conv35.i = add i16 %addr.178.i, %5
  %add.ptr36.i = getelementptr i8, ptr %val.addr.180.i, i32 %4
  %sub37.i = sub i32 %val_size.addr.179.i, %4
  %tobool20.not.i = icmp eq i32 %sub37.i, 0
  br i1 %tobool20.not.i, label %if.end32.i.regmap_spmi_ext_gather_write.exit_crit_edge, label %if.end32.i.while.body21.i_crit_edge

if.end32.i.while.body21.i_crit_edge:              ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body21.i

if.end32.i.regmap_spmi_ext_gather_write.exit_crit_edge: ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %regmap_spmi_ext_gather_write.exit

regmap_spmi_ext_gather_write.exit:                ; preds = %if.end32.i.regmap_spmi_ext_gather_write.exit_crit_edge, %while.body21.i.regmap_spmi_ext_gather_write.exit_crit_edge, %while.body.i.regmap_spmi_ext_gather_write.exit_crit_edge, %while.cond19.preheader.i.regmap_spmi_ext_gather_write.exit_crit_edge
  %err.2.i = phi i32 [ 0, %while.cond19.preheader.i.regmap_spmi_ext_gather_write.exit_crit_edge ], [ 0, %if.end32.i.regmap_spmi_ext_gather_write.exit_crit_edge ], [ %call29.i, %while.body21.i.regmap_spmi_ext_gather_write.exit_crit_edge ], [ %call.i, %while.body.i.regmap_spmi_ext_gather_write.exit_crit_edge ]
  ret i32 %err.2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_spmi_ext_gather_write(ptr noundef %context, ptr nocapture noundef readonly %reg, i32 noundef %reg_size, ptr noundef %val, i32 noundef %val_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %reg_size)
  %cmp.not = icmp eq i32 %reg_size, 2
  br i1 %cmp.not, label %do.end7, label %do.body2, !prof !26

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/regmap/regmap-spmi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 157, 0\0A.popsection", ""() #3, !srcloc !30
  unreachable

do.end7:                                          ; preds = %entry
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %reg, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %1)
  %cmp869 = icmp ugt i16 %1, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val_size)
  %tobool10.not70 = icmp eq i32 %val_size, 0
  %or.cond71 = or i1 %cmp869, %tobool10.not70
  br i1 %or.cond71, label %do.end7.while.cond19.preheader_crit_edge, label %do.end7.while.body_crit_edge

do.end7.while.body_crit_edge:                     ; preds = %do.end7
  br label %while.body

do.end7.while.cond19.preheader_crit_edge:         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond19.preheader

while.cond19.preheader:                           ; preds = %if.end16.while.cond19.preheader_crit_edge, %do.end7.while.cond19.preheader_crit_edge
  %addr.0.lcssa = phi i16 [ %1, %do.end7.while.cond19.preheader_crit_edge ], [ %conv18, %if.end16.while.cond19.preheader_crit_edge ]
  %val_size.addr.0.lcssa = phi i32 [ %val_size, %do.end7.while.cond19.preheader_crit_edge ], [ %sub, %if.end16.while.cond19.preheader_crit_edge ]
  %val.addr.0.lcssa = phi ptr [ %val, %do.end7.while.cond19.preheader_crit_edge ], [ %add.ptr, %if.end16.while.cond19.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val_size.addr.0.lcssa)
  %tobool20.not77 = icmp eq i32 %val_size.addr.0.lcssa, 0
  br i1 %tobool20.not77, label %while.cond19.preheader.err_out_crit_edge, label %while.cond19.preheader.while.body21_crit_edge

while.cond19.preheader.while.body21_crit_edge:    ; preds = %while.cond19.preheader
  br label %while.body21

while.cond19.preheader.err_out_crit_edge:         ; preds = %while.cond19.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_out

while.body:                                       ; preds = %if.end16.while.body_crit_edge, %do.end7.while.body_crit_edge
  %val.addr.074 = phi ptr [ %add.ptr, %if.end16.while.body_crit_edge ], [ %val, %do.end7.while.body_crit_edge ]
  %val_size.addr.073 = phi i32 [ %sub, %if.end16.while.body_crit_edge ], [ %val_size, %do.end7.while.body_crit_edge ]
  %addr.072 = phi i16 [ %conv18, %if.end16.while.body_crit_edge ], [ %1, %do.end7.while.body_crit_edge ]
  %2 = tail call i32 @llvm.umin.i32(i32 %val_size.addr.073, i32 16)
  %conv13 = trunc i16 %addr.072 to i8
  %call = tail call i32 @spmi_ext_register_write(ptr noundef %context, i8 noundef zeroext %conv13, ptr noundef %val.addr.074, i32 noundef %2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool14.not = icmp eq i32 %call, 0
  br i1 %tobool14.not, label %if.end16, label %while.body.err_out_crit_edge

while.body.err_out_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_out

if.end16:                                         ; preds = %while.body
  %3 = trunc i32 %2 to i16
  %conv18 = add nuw nsw i16 %addr.072, %3
  %add.ptr = getelementptr i8, ptr %val.addr.074, i32 %2
  %sub = sub i32 %val_size.addr.073, %2
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %conv18)
  %cmp8 = icmp ugt i16 %conv18, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool10.not = icmp eq i32 %sub, 0
  %or.cond = select i1 %cmp8, i1 true, i1 %tobool10.not
  br i1 %or.cond, label %if.end16.while.cond19.preheader_crit_edge, label %if.end16.while.body_crit_edge

if.end16.while.body_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

if.end16.while.cond19.preheader_crit_edge:        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond19.preheader

while.body21:                                     ; preds = %if.end32.while.body21_crit_edge, %while.cond19.preheader.while.body21_crit_edge
  %val.addr.180 = phi ptr [ %add.ptr36, %if.end32.while.body21_crit_edge ], [ %val.addr.0.lcssa, %while.cond19.preheader.while.body21_crit_edge ]
  %val_size.addr.179 = phi i32 [ %sub37, %if.end32.while.body21_crit_edge ], [ %val_size.addr.0.lcssa, %while.cond19.preheader.while.body21_crit_edge ]
  %addr.178 = phi i16 [ %conv35, %if.end32.while.body21_crit_edge ], [ %addr.0.lcssa, %while.cond19.preheader.while.body21_crit_edge ]
  %4 = tail call i32 @llvm.umin.i32(i32 %val_size.addr.179, i32 8)
  %call29 = tail call i32 @spmi_ext_register_writel(ptr noundef %context, i16 noundef zeroext %addr.178, ptr noundef %val.addr.180, i32 noundef %4) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %while.body21.err_out_crit_edge

while.body21.err_out_crit_edge:                   ; preds = %while.body21
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_out

if.end32:                                         ; preds = %while.body21
  %5 = trunc i32 %4 to i16
  %conv35 = add i16 %addr.178, %5
  %add.ptr36 = getelementptr i8, ptr %val.addr.180, i32 %4
  %sub37 = sub i32 %val_size.addr.179, %4
  %tobool20.not = icmp eq i32 %sub37, 0
  br i1 %tobool20.not, label %if.end32.err_out_crit_edge, label %if.end32.while.body21_crit_edge

if.end32.while.body21_crit_edge:                  ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body21

if.end32.err_out_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_out

err_out:                                          ; preds = %if.end32.err_out_crit_edge, %while.body21.err_out_crit_edge, %while.body.err_out_crit_edge, %while.cond19.preheader.err_out_crit_edge
  %err.2 = phi i32 [ 0, %while.cond19.preheader.err_out_crit_edge ], [ %call29, %while.body21.err_out_crit_edge ], [ 0, %if.end32.err_out_crit_edge ], [ %call, %while.body.err_out_crit_edge ]
  ret i32 %err.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_spmi_ext_read(ptr noundef %context, ptr nocapture noundef readonly %reg, i32 noundef %reg_size, ptr noundef %val, i32 noundef %val_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %reg_size)
  %cmp.not = icmp eq i32 %reg_size, 2
  br i1 %cmp.not, label %do.end7, label %do.body2, !prof !26

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/regmap/regmap-spmi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 113, 0\0A.popsection", ""() #3, !srcloc !31
  unreachable

do.end7:                                          ; preds = %entry
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %reg, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %1)
  %cmp869 = icmp ugt i16 %1, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val_size)
  %tobool10.not70 = icmp eq i32 %val_size, 0
  %or.cond71 = or i1 %cmp869, %tobool10.not70
  br i1 %or.cond71, label %do.end7.while.cond19.preheader_crit_edge, label %do.end7.while.body_crit_edge

do.end7.while.body_crit_edge:                     ; preds = %do.end7
  br label %while.body

do.end7.while.cond19.preheader_crit_edge:         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond19.preheader

while.cond19.preheader:                           ; preds = %if.end16.while.cond19.preheader_crit_edge, %do.end7.while.cond19.preheader_crit_edge
  %addr.0.lcssa = phi i16 [ %1, %do.end7.while.cond19.preheader_crit_edge ], [ %conv18, %if.end16.while.cond19.preheader_crit_edge ]
  %val_size.addr.0.lcssa = phi i32 [ %val_size, %do.end7.while.cond19.preheader_crit_edge ], [ %sub, %if.end16.while.cond19.preheader_crit_edge ]
  %val.addr.0.lcssa = phi ptr [ %val, %do.end7.while.cond19.preheader_crit_edge ], [ %add.ptr, %if.end16.while.cond19.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val_size.addr.0.lcssa)
  %tobool20.not77 = icmp eq i32 %val_size.addr.0.lcssa, 0
  br i1 %tobool20.not77, label %while.cond19.preheader.err_out_crit_edge, label %while.cond19.preheader.while.body21_crit_edge

while.cond19.preheader.while.body21_crit_edge:    ; preds = %while.cond19.preheader
  br label %while.body21

while.cond19.preheader.err_out_crit_edge:         ; preds = %while.cond19.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_out

while.body:                                       ; preds = %if.end16.while.body_crit_edge, %do.end7.while.body_crit_edge
  %val.addr.074 = phi ptr [ %add.ptr, %if.end16.while.body_crit_edge ], [ %val, %do.end7.while.body_crit_edge ]
  %val_size.addr.073 = phi i32 [ %sub, %if.end16.while.body_crit_edge ], [ %val_size, %do.end7.while.body_crit_edge ]
  %addr.072 = phi i16 [ %conv18, %if.end16.while.body_crit_edge ], [ %1, %do.end7.while.body_crit_edge ]
  %2 = tail call i32 @llvm.umin.i32(i32 %val_size.addr.073, i32 16)
  %conv13 = trunc i16 %addr.072 to i8
  %call = tail call i32 @spmi_ext_register_read(ptr noundef %context, i8 noundef zeroext %conv13, ptr noundef %val.addr.074, i32 noundef %2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool14.not = icmp eq i32 %call, 0
  br i1 %tobool14.not, label %if.end16, label %while.body.err_out_crit_edge

while.body.err_out_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_out

if.end16:                                         ; preds = %while.body
  %3 = trunc i32 %2 to i16
  %conv18 = add nuw nsw i16 %addr.072, %3
  %add.ptr = getelementptr i8, ptr %val.addr.074, i32 %2
  %sub = sub i32 %val_size.addr.073, %2
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %conv18)
  %cmp8 = icmp ugt i16 %conv18, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool10.not = icmp eq i32 %sub, 0
  %or.cond = select i1 %cmp8, i1 true, i1 %tobool10.not
  br i1 %or.cond, label %if.end16.while.cond19.preheader_crit_edge, label %if.end16.while.body_crit_edge

if.end16.while.body_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

if.end16.while.cond19.preheader_crit_edge:        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond19.preheader

while.body21:                                     ; preds = %if.end32.while.body21_crit_edge, %while.cond19.preheader.while.body21_crit_edge
  %val.addr.180 = phi ptr [ %add.ptr36, %if.end32.while.body21_crit_edge ], [ %val.addr.0.lcssa, %while.cond19.preheader.while.body21_crit_edge ]
  %val_size.addr.179 = phi i32 [ %sub37, %if.end32.while.body21_crit_edge ], [ %val_size.addr.0.lcssa, %while.cond19.preheader.while.body21_crit_edge ]
  %addr.178 = phi i16 [ %conv35, %if.end32.while.body21_crit_edge ], [ %addr.0.lcssa, %while.cond19.preheader.while.body21_crit_edge ]
  %4 = tail call i32 @llvm.umin.i32(i32 %val_size.addr.179, i32 8)
  %call29 = tail call i32 @spmi_ext_register_readl(ptr noundef %context, i16 noundef zeroext %addr.178, ptr noundef %val.addr.180, i32 noundef %4) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %while.body21.err_out_crit_edge

while.body21.err_out_crit_edge:                   ; preds = %while.body21
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_out

if.end32:                                         ; preds = %while.body21
  %5 = trunc i32 %4 to i16
  %conv35 = add i16 %addr.178, %5
  %add.ptr36 = getelementptr i8, ptr %val.addr.180, i32 %4
  %sub37 = sub i32 %val_size.addr.179, %4
  %tobool20.not = icmp eq i32 %sub37, 0
  br i1 %tobool20.not, label %if.end32.err_out_crit_edge, label %if.end32.while.body21_crit_edge

if.end32.while.body21_crit_edge:                  ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body21

if.end32.err_out_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_out

err_out:                                          ; preds = %if.end32.err_out_crit_edge, %while.body21.err_out_crit_edge, %while.body.err_out_crit_edge, %while.cond19.preheader.err_out_crit_edge
  %err.2 = phi i32 [ 0, %while.cond19.preheader.err_out_crit_edge ], [ %call29, %while.body21.err_out_crit_edge ], [ 0, %if.end32.err_out_crit_edge ], [ %call, %while.body.err_out_crit_edge ]
  ret i32 %err.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spmi_ext_register_write(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spmi_ext_register_writel(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spmi_ext_register_read(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spmi_ext_register_readl(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @__ksymtab___regmap_init_spmi_base, !1, !"__ksymtab___regmap_init_spmi_base", i1 false, i1 false}
!1 = !{!"../drivers/base/regmap/regmap-spmi.c", i32 93, i32 1}
!2 = !{ptr @__ksymtab___devm_regmap_init_spmi_base, !3, !"__ksymtab___devm_regmap_init_spmi_base", i1 false, i1 false}
!3 = !{!"../drivers/base/regmap/regmap-spmi.c", i32 103, i32 1}
!4 = !{ptr @__ksymtab___regmap_init_spmi_ext, !5, !"__ksymtab___regmap_init_spmi_ext", i1 false, i1 false}
!5 = !{!"../drivers/base/regmap/regmap-spmi.c", i32 213, i32 1}
!6 = !{ptr @__ksymtab___devm_regmap_init_spmi_ext, !7, !"__ksymtab___devm_regmap_init_spmi_ext", i1 false, i1 false}
!7 = !{!"../drivers/base/regmap/regmap-spmi.c", i32 223, i32 1}
!8 = !{ptr @__UNIQUE_ID_file178, !9, !"__UNIQUE_ID_file178", i1 false, i1 false}
!9 = !{!"../drivers/base/regmap/regmap-spmi.c", i32 225, i32 1}
!10 = !{ptr @__UNIQUE_ID_license179, !9, !"__UNIQUE_ID_license179", i1 false, i1 false}
!11 = !{ptr @regmap_spmi_base, !12, !"regmap_spmi_base", i1 false, i1 false}
!12 = !{!"../drivers/base/regmap/regmap-spmi.c", i32 77, i32 32}
!13 = !{ptr @regmap_spmi_ext, !14, !"regmap_spmi_ext", i1 false, i1 false}
!14 = !{!"../drivers/base/regmap/regmap-spmi.c", i32 197, i32 32}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{!"branch_weights", i32 1, i32 2000}
!25 = !{i64 2152459334, i64 2152459831, i64 2152459371, i64 2152459427, i64 2152459461, i64 2152459485, i64 2152459526, i64 2152459547, i64 2152459575, i64 2152459609}
!26 = !{!"branch_weights", i32 2000, i32 1}
!27 = !{i64 2152457721, i64 2152458218, i64 2152457758, i64 2152457814, i64 2152457848, i64 2152457872, i64 2152457913, i64 2152457934, i64 2152457962, i64 2152457996}
!28 = !{i64 2152456100, i64 2152456597, i64 2152456137, i64 2152456193, i64 2152456227, i64 2152456251, i64 2152456292, i64 2152456313, i64 2152456341, i64 2152456375}
!29 = !{i64 2152474274, i64 2152474772, i64 2152474311, i64 2152474367, i64 2152474401, i64 2152474425, i64 2152474466, i64 2152474487, i64 2152474515, i64 2152474549}
!30 = !{i64 2152469327, i64 2152469825, i64 2152469364, i64 2152469420, i64 2152469454, i64 2152469478, i64 2152469519, i64 2152469540, i64 2152469568, i64 2152469602}
!31 = !{i64 2152464372, i64 2152464870, i64 2152464409, i64 2152464465, i64 2152464499, i64 2152464523, i64 2152464564, i64 2152464585, i64 2152464613, i64 2152464647}
