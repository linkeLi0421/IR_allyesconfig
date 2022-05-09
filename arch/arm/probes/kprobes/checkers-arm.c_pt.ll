; ModuleID = '/llk/IR_all_yes/arch/arm/probes/kprobes/checkers-arm.c_pt.bc'
source_filename = "../arch/arm/probes/kprobes/checkers-arm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.decode_checker = type { ptr }
%union.decode_item = type { i32 }
%union.decode_action = type { ptr }
%struct.arch_probes_insn = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }

@arm_stack_checker = dso_local constant { [32 x %struct.decode_checker], [32 x i8] } { [32 x %struct.decode_checker] [%struct.decode_checker zeroinitializer, %struct.decode_checker zeroinitializer, %struct.decode_checker zeroinitializer, %struct.decode_checker zeroinitializer, %struct.decode_checker zeroinitializer, %struct.decode_checker zeroinitializer, %struct.decode_checker zeroinitializer, %struct.decode_checker zeroinitializer, %struct.decode_checker zeroinitializer, %struct.decode_checker zeroinitializer, %struct.decode_checker { ptr @arm_check_stack }, %struct.decode_checker zeroinitializer, %struct.decode_checker { ptr @arm_check_stack }, %struct.decode_checker zeroinitializer, %struct.decode_checker { ptr @arm_check_stack }, %struct.decode_checker zeroinitializer, %struct.decode_checker zeroinitializer, %struct.decode_checker zeroinitializer, %struct.decode_checker zeroinitializer, %struct.decode_checker zeroinitializer, %struct.decode_checker zeroinitializer, %struct.decode_checker zeroinitializer, %struct.decode_checker zeroinitializer, %struct.decode_checker zeroinitializer, %struct.decode_checker zeroinitializer, %struct.decode_checker zeroinitializer, %struct.decode_checker zeroinitializer, %struct.decode_checker zeroinitializer, %struct.decode_checker zeroinitializer, %struct.decode_checker zeroinitializer, %struct.decode_checker zeroinitializer, %struct.decode_checker { ptr @arm_check_stack }], [32 x i8] zeroinitializer }, align 32
@arm_regs_checker = dso_local constant { [32 x %struct.decode_checker], [32 x i8] } { [32 x %struct.decode_checker] [%struct.decode_checker zeroinitializer, %struct.decode_checker zeroinitializer, %struct.decode_checker zeroinitializer, %struct.decode_checker zeroinitializer, %struct.decode_checker { ptr @arm_check_regs_normal }, %struct.decode_checker zeroinitializer, %struct.decode_checker { ptr @arm_check_regs_normal }, %struct.decode_checker { ptr @arm_check_regs_normal }, %struct.decode_checker { ptr @arm_check_regs_normal }, %struct.decode_checker zeroinitializer, %struct.decode_checker { ptr @arm_check_regs_ldrdstrd }, %struct.decode_checker { ptr @arm_check_regs_normal }, %struct.decode_checker { ptr @arm_check_regs_normal }, %struct.decode_checker { ptr @arm_check_regs_normal }, %struct.decode_checker { ptr @arm_check_regs_normal }, %struct.decode_checker { ptr @arm_check_regs_mov_ip_sp }, %struct.decode_checker { ptr @arm_check_regs_normal }, %struct.decode_checker { ptr @arm_check_regs_normal }, %struct.decode_checker zeroinitializer, %struct.decode_checker { ptr @arm_check_regs_nouse }, %struct.decode_checker { ptr @arm_check_regs_nouse }, %struct.decode_checker { ptr @arm_check_regs_normal }, %struct.decode_checker { ptr @arm_check_regs_normal }, %struct.decode_checker { ptr @arm_check_regs_normal }, %struct.decode_checker { ptr @arm_check_regs_normal }, %struct.decode_checker { ptr @arm_check_regs_normal }, %struct.decode_checker { ptr @arm_check_regs_normal }, %struct.decode_checker { ptr @arm_check_regs_normal }, %struct.decode_checker { ptr @arm_check_regs_normal }, %struct.decode_checker { ptr @arm_check_regs_normal }, %struct.decode_checker zeroinitializer, %struct.decode_checker { ptr @arm_check_regs_ldmstm }], [32 x i8] zeroinitializer }, align 32
@arm_check_stack.table = internal constant { [30 x %union.decode_item], [40 x i8] } { [30 x %union.decode_item] [%union.decode_item { i32 5 }, %union.decode_item { i32 235929615 }, %union.decode_item { i32 100663309 }, %union.decode_item { i32 5 }, %union.decode_item { i32 236912640 }, %union.decode_item { i32 101515264 }, %union.decode_item { i32 5 }, %union.decode_item { i32 240124095 }, %union.decode_item { i32 189 }, %union.decode_item { i32 2 }, %union.decode_item { i32 241107120 }, %union.decode_item { i32 852144 }, %union.decode_item { i32 1 }, %union.decode_item { i32 2 }, %union.decode_item { i32 249495552 }, %union.decode_item { i32 135069696 }, %union.decode_item { i32 4 }, %union.decode_item { i32 2 }, %union.decode_item { i32 262078464 }, %union.decode_item { i32 84738048 }, %union.decode_item { i32 3 }, %union.decode_item { i32 2 }, %union.decode_item { i32 266272944 }, %union.decode_item { i32 21823664 }, %union.decode_item { i32 2 }, %union.decode_item { i32 2 }, %union.decode_item zeroinitializer, %union.decode_item zeroinitializer, %union.decode_item zeroinitializer, %union.decode_item zeroinitializer], [40 x i8] zeroinitializer }, align 32
@stack_check_actions = external dso_local constant [0 x %union.decode_action], align 4
@___asan_gen_.1 = private unnamed_addr constant [18 x i8] c"arm_stack_checker\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 86, i32 29 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"arm_regs_checker\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 159, i32 29 }
@___asan_gen_.7 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@___asan_gen_.8 = private constant [42 x i8] c"../arch/arm/probes/kprobes/checkers-arm.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 22, i32 33 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @arm_stack_checker, ptr @arm_regs_checker, ptr @arm_check_stack.table], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_stack_checker to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_regs_checker to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_check_stack.table to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_check_stack(i32 noundef %insn, ptr noundef %asi, ptr nocapture noundef readnone %h) #0 section ".kprobes.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @probes_decode_insn(i32 noundef %insn, ptr noundef %asi, ptr noundef nonnull @arm_check_stack.table, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull @stack_check_actions, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_check_regs_normal(i32 noundef %insn, ptr nocapture noundef %asi, ptr nocapture noundef readonly %h) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %h, align 4
  %register_usage_flags = getelementptr inbounds %struct.arch_probes_insn, ptr %asi, i32 0, i32 6
  %2 = ptrtoint ptr %register_usage_flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %register_usage_flags, align 4
  %3 = and i32 %1, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %and1 = and i32 %insn, 15
  %shl = shl nuw nsw i32 1, %and1
  %4 = ptrtoint ptr %register_usage_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %register_usage_flags, align 4
  %or = or i32 %5, %shl
  store i32 %or, ptr %register_usage_flags, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %6 = and i32 %1, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.1 = icmp eq i32 %6, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %shr4 = lshr i32 %insn, 4
  %and1.1 = and i32 %shr4, 15
  %shl.1 = shl nuw nsw i32 1, %and1.1
  %7 = ptrtoint ptr %register_usage_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %register_usage_flags, align 4
  %or.1 = or i32 %8, %shl.1
  store i32 %or.1, ptr %register_usage_flags, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %9 = and i32 %1, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.2 = icmp eq i32 %9, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  %shr4.1 = lshr i32 %insn, 8
  %and1.2 = and i32 %shr4.1, 15
  %shl.2 = shl nuw nsw i32 1, %and1.2
  %10 = ptrtoint ptr %register_usage_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %register_usage_flags, align 4
  %or.2 = or i32 %11, %shl.2
  store i32 %or.2, ptr %register_usage_flags, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %12 = and i32 %1, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.3 = icmp eq i32 %12, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  %shr4.2 = lshr i32 %insn, 12
  %and1.3 = and i32 %shr4.2, 15
  %shl.3 = shl nuw nsw i32 1, %and1.3
  %13 = ptrtoint ptr %register_usage_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %register_usage_flags, align 4
  %or.3 = or i32 %14, %shl.3
  store i32 %or.3, ptr %register_usage_flags, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %15 = and i32 %1, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.4 = icmp eq i32 %15, 0
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  %shr4.3 = lshr i32 %insn, 16
  %and1.4 = and i32 %shr4.3, 15
  %shl.4 = shl nuw nsw i32 1, %and1.4
  %16 = ptrtoint ptr %register_usage_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %register_usage_flags, align 4
  %or.4 = or i32 %17, %shl.4
  store i32 %or.4, ptr %register_usage_flags, align 4
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @arm_check_regs_ldrdstrd(i32 noundef %insn, ptr nocapture noundef %asi, ptr nocapture noundef readonly %h) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %insn, 12
  %and = and i32 %shr, 15
  %0 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %h, align 4
  %register_usage_flags.i = getelementptr inbounds %struct.arch_probes_insn, ptr %asi, i32 0, i32 6
  %2 = and i32 %1, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  %and1.i = and i32 %insn, 15
  %shl.i = shl nuw nsw i32 1, %and1.i
  %storemerge = select i1 %tobool.not.i, i32 0, i32 %shl.i
  %3 = ptrtoint ptr %register_usage_flags.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %storemerge, ptr %register_usage_flags.i, align 4
  %4 = and i32 %1, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.1.i = icmp eq i32 %4, 0
  br i1 %tobool.not.1.i, label %entry.for.inc.1.i_crit_edge, label %if.then.1.i

entry.for.inc.1.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1.i

if.then.1.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %shr4.i = lshr i32 %insn, 4
  %and1.1.i = and i32 %shr4.i, 15
  %shl.1.i = shl nuw nsw i32 1, %and1.1.i
  %5 = ptrtoint ptr %register_usage_flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %register_usage_flags.i, align 4
  %or.1.i = or i32 %6, %shl.1.i
  store i32 %or.1.i, ptr %register_usage_flags.i, align 4
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then.1.i, %entry.for.inc.1.i_crit_edge
  %7 = and i32 %1, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.2.i = icmp eq i32 %7, 0
  br i1 %tobool.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.then.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2.i

if.then.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %shr4.1.i = lshr i32 %insn, 8
  %and1.2.i = and i32 %shr4.1.i, 15
  %shl.2.i = shl nuw nsw i32 1, %and1.2.i
  %8 = ptrtoint ptr %register_usage_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %register_usage_flags.i, align 4
  %or.2.i = or i32 %9, %shl.2.i
  store i32 %or.2.i, ptr %register_usage_flags.i, align 4
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %10 = and i32 %1, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.3.i = icmp eq i32 %10, 0
  br i1 %tobool.not.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %if.then.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3.i

if.then.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #7
  %shl.3.i = shl nuw nsw i32 1, %and
  %11 = ptrtoint ptr %register_usage_flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %register_usage_flags.i, align 4
  %or.3.i = or i32 %12, %shl.3.i
  store i32 %or.3.i, ptr %register_usage_flags.i, align 4
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.then.3.i, %for.inc.2.i.for.inc.3.i_crit_edge
  %13 = and i32 %1, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.4.i = icmp eq i32 %13, 0
  br i1 %tobool.not.4.i, label %for.inc.3.i.arm_check_regs_normal.exit_crit_edge, label %if.then.4.i

for.inc.3.i.arm_check_regs_normal.exit_crit_edge: ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %arm_check_regs_normal.exit

if.then.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #7
  %shr4.3.i = lshr i32 %insn, 16
  %and1.4.i = and i32 %shr4.3.i, 15
  %shl.4.i = shl nuw nsw i32 1, %and1.4.i
  %14 = ptrtoint ptr %register_usage_flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %register_usage_flags.i, align 4
  %or.4.i = or i32 %15, %shl.4.i
  store i32 %or.4.i, ptr %register_usage_flags.i, align 4
  br label %arm_check_regs_normal.exit

arm_check_regs_normal.exit:                       ; preds = %if.then.4.i, %for.inc.3.i.arm_check_regs_normal.exit_crit_edge
  %shl = shl nuw nsw i32 2, %and
  %16 = ptrtoint ptr %register_usage_flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %register_usage_flags.i, align 4
  %or = or i32 %17, %shl
  store i32 %or, ptr %register_usage_flags.i, align 4
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @arm_check_regs_mov_ip_sp(i32 noundef %insn, ptr nocapture noundef writeonly %asi, ptr nocapture noundef readnone %h) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %register_usage_flags = getelementptr inbounds %struct.arch_probes_insn, ptr %asi, i32 0, i32 6
  %0 = ptrtoint ptr %register_usage_flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 12288, ptr %register_usage_flags, align 4
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @arm_check_regs_nouse(i32 noundef %insn, ptr nocapture noundef writeonly %asi, ptr nocapture noundef readnone %h) #3 section ".kprobes.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %register_usage_flags = getelementptr inbounds %struct.arch_probes_insn, ptr %asi, i32 0, i32 6
  %0 = ptrtoint ptr %register_usage_flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %register_usage_flags, align 4
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @arm_check_regs_ldmstm(i32 noundef %insn, ptr nocapture noundef writeonly %asi, ptr nocapture noundef readnone %h) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %insn, 65535
  %shr = lshr i32 %insn, 16
  %and1 = and i32 %shr, 15
  %shl = shl nuw nsw i32 1, %and1
  %or = or i32 %shl, %and
  %register_usage_flags = getelementptr inbounds %struct.arch_probes_insn, ptr %asi, i32 0, i32 6
  %0 = ptrtoint ptr %register_usage_flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %or, ptr %register_usage_flags, align 4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @probes_decode_insn(i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #4 section ".kprobes.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @arm_stack_checker, !1, !"arm_stack_checker", i1 false, i1 false}
!1 = !{!"../arch/arm/probes/kprobes/checkers-arm.c", i32 86, i32 29}
!2 = !{ptr @arm_regs_checker, !3, !"arm_regs_checker", i1 false, i1 false}
!3 = !{!"../arch/arm/probes/kprobes/checkers-arm.c", i32 159, i32 29}
!4 = !{ptr @arm_check_stack.table, !5, !"table", i1 false, i1 false}
!5 = !{!"../arch/arm/probes/kprobes/checkers-arm.c", i32 22, i32 33}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
