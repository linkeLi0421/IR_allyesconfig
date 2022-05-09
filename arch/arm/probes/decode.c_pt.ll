; ModuleID = '/llk/IR_all_yes/arch/arm/probes/decode.c_pt.bc'
source_filename = "../arch/arm/probes/decode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arch_probes_insn = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.decode_header = type { %union.decode_item, %union.decode_item, %union.decode_item }
%union.decode_item = type { i32 }
%struct.decode_table = type { %struct.decode_header, %union.decode_item }
%struct.decode_custom = type { %struct.decode_header, %union.decode_item }
%struct.decode_checker = type { ptr }
%union.decode_action = type { ptr }
%struct.decode_simulate = type { %struct.decode_header, %union.decode_item }
%struct.decode_emulate = type { %struct.decode_header, %union.decode_item }

@str_pc_offset = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@alu_write_pc_interworks = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@probes_condition_checks = dso_local constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @__check_eq, ptr @__check_ne, ptr @__check_cs, ptr @__check_cc, ptr @__check_mi, ptr @__check_pl, ptr @__check_vs, ptr @__check_vc, ptr @__check_hi, ptr @__check_ls, ptr @__check_ge, ptr @__check_lt, ptr @__check_gt, ptr @__check_le, ptr @__check_al, ptr @__check_al], [32 x i8] zeroinitializer }, align 32
@decode_struct_sizes = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 16, i32 16, i32 16, i32 16, i32 12, i32 12], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.1 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.2 = private unnamed_addr constant [14 x i8] c"str_pc_offset\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 29, i32 5 }
@___asan_gen_.5 = private unnamed_addr constant [24 x i8] c"alu_write_pc_interworks\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 64, i32 6 }
@___asan_gen_.8 = private unnamed_addr constant [24 x i8] c"probes_condition_checks\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 167, i32 25 }
@___asan_gen_.11 = private unnamed_addr constant [20 x i8] c"decode_struct_sizes\00", align 1
@___asan_gen_.12 = private constant [28 x i8] c"../arch/arm/probes/decode.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 333, i32 18 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @str_pc_offset, ptr @alu_write_pc_interworks, ptr @probes_condition_checks, ptr @decode_struct_sizes], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str_pc_offset to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alu_write_pc_interworks to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @probes_condition_checks to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_struct_sizes to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @find_str_pc_offset() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #6
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %addr, align 4, !annotation !17
  %1 = call { i32, i32 } asm "sub\09$0, pc, #4\09\09\0A\09str\09pc, $2\09\09\0A\09ldr\09$1, $2\09\09\0A\09sub\09$0, $1, $0\09\0A\09", "=r,=r,=*m,*m"(ptr nonnull elementtype(i32) %addr, ptr nonnull elementtype(i32) %addr) #6, !srcloc !18
  %asmresult = extractvalue { i32, i32 } %1, 0
  store i32 %asmresult, ptr @str_pc_offset, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @test_alu_write_pc_interworking() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cpu_architecture() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %do.body2, label %do.end7, !prof !19

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/probes/decode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 69, 0\0A.popsection", ""() #6, !srcloc !20
  unreachable

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call)
  %cmp8 = icmp sgt i32 %call, 8
  %frombool = zext i1 %cmp8 to i8
  store i8 %frombool, ptr @alu_write_pc_interworks, align 1
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpu_architecture() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @arm_probes_decode_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i) #6
  %0 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %addr.i, align 4, !annotation !17
  %1 = call { i32, i32 } asm "sub\09$0, pc, #4\09\09\0A\09str\09pc, $2\09\09\0A\09ldr\09$1, $2\09\09\0A\09sub\09$0, $1, $0\09\0A\09", "=r,=r,=*m,*m"(ptr nonnull elementtype(i32) %addr.i, ptr nonnull elementtype(i32) %addr.i) #6, !srcloc !18
  %asmresult.i = extractvalue { i32, i32 } %1, 0
  store i32 %asmresult.i, ptr @str_pc_offset, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i) #6
  %call.i = call i32 @cpu_architecture() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %do.body2.i, label %test_alu_write_pc_interworking.exit, !prof !19

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/probes/decode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 69, 0\0A.popsection", ""() #6, !srcloc !20
  unreachable

test_alu_write_pc_interworking.exit:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call.i)
  %cmp8.i = icmp sgt i32 %call.i, 8
  %frombool.i = zext i1 %cmp8.i to i8
  store i8 %frombool.i, ptr @alu_write_pc_interworks, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @__check_eq(i32 noundef %cpsr) #3 section ".kprobes.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %cpsr, 1073741824
  ret i32 %and
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @__check_ne(i32 noundef %cpsr) #3 section ".kprobes.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %neg = and i32 %cpsr, 1073741824
  %and = xor i32 %neg, 1073741824
  ret i32 %and
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @__check_cs(i32 noundef %cpsr) #3 section ".kprobes.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %cpsr, 536870912
  ret i32 %and
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @__check_cc(i32 noundef %cpsr) #3 section ".kprobes.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %neg = and i32 %cpsr, 536870912
  %and = xor i32 %neg, 536870912
  ret i32 %and
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @__check_mi(i32 noundef %cpsr) #3 section ".kprobes.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %cpsr, -2147483648
  ret i32 %and
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @__check_pl(i32 noundef %cpsr) #3 section ".kprobes.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %neg = and i32 %cpsr, -2147483648
  %and = xor i32 %neg, -2147483648
  ret i32 %and
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @__check_vs(i32 noundef %cpsr) #3 section ".kprobes.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %cpsr, 268435456
  ret i32 %and
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @__check_vc(i32 noundef %cpsr) #3 section ".kprobes.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %neg = and i32 %cpsr, 268435456
  %and = xor i32 %neg, 268435456
  ret i32 %and
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @__check_hi(i32 noundef %cpsr) #3 section ".kprobes.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %cpsr, 1
  %neg = xor i32 %shr, -1
  %and = and i32 %cpsr, 536870912
  %and1 = and i32 %and, %neg
  ret i32 %and1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @__check_ls(i32 noundef %cpsr) #3 section ".kprobes.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %cpsr, 1
  %cpsr.not = xor i32 %cpsr, -1
  %neg1 = or i32 %shr, %cpsr.not
  %and2 = and i32 %neg1, 536870912
  ret i32 %and2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @__check_ge(i32 noundef %cpsr) #3 section ".kprobes.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %cpsr, 3
  %xor = xor i32 %shl, %cpsr
  %neg = and i32 %xor, -2147483648
  %and = xor i32 %neg, -2147483648
  ret i32 %and
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @__check_lt(i32 noundef %cpsr) #3 section ".kprobes.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %cpsr, 3
  %xor = xor i32 %shl, %cpsr
  %and = and i32 %xor, -2147483648
  ret i32 %and
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @__check_gt(i32 noundef %cpsr) #3 section ".kprobes.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %cpsr, 3
  %xor = xor i32 %shl, %cpsr
  %shl1 = shl i32 %cpsr, 1
  %or = or i32 %xor, %shl1
  %neg = and i32 %or, -2147483648
  %and = xor i32 %neg, -2147483648
  ret i32 %and
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @__check_le(i32 noundef %cpsr) #3 section ".kprobes.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %cpsr, 3
  %xor = xor i32 %shl, %cpsr
  %shl1 = shl i32 %cpsr, 1
  %or = or i32 %xor, %shl1
  %and = and i32 %or, -2147483648
  ret i32 %and
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @__check_al(i32 noundef %cpsr) #3 section ".kprobes.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @probes_simulate_nop(i32 noundef %opcode, ptr nocapture noundef %asi, ptr nocapture noundef %regs) local_unnamed_addr #3 section ".kprobes.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @probes_emulate_none(i32 noundef %opcode, ptr nocapture noundef readonly %asi, ptr nocapture noundef readnone %regs) local_unnamed_addr #4 section ".kprobes.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %insn_fn = getelementptr inbounds %struct.arch_probes_insn, ptr %asi, i32 0, i32 4
  %0 = ptrtoint ptr %insn_fn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %insn_fn, align 4
  tail call void %1() #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @probes_decode_insn(i32 noundef %insn, ptr noundef %asi, ptr noundef %table, i1 noundef zeroext %thumb, i1 noundef zeroext %emulate, ptr nocapture noundef readonly %actions, ptr noundef readonly %checkers) local_unnamed_addr #4 section ".kprobes.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %stack_space = getelementptr inbounds %struct.arch_probes_insn, ptr %asi, i32 0, i32 5
  %0 = ptrtoint ptr %stack_space to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %stack_space, align 4
  %register_usage_flags = getelementptr inbounds %struct.arch_probes_insn, ptr %asi, i32 0, i32 6
  %1 = ptrtoint ptr %register_usage_flags to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %register_usage_flags, align 4
  br i1 %emulate, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %asi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %asi, align 4
  %arrayidx.i = getelementptr i32, ptr %3, i32 1
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 250650849, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %insn)
  %cmp.i = icmp ult i32 %insn, -536870912
  %or.i = and i32 %insn, 268435455
  %and.i = or i32 %or.i, -536870912
  %insn.addr.0.i = select i1 %cmp.i, i32 %and.i, i32 %insn
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %insn.addr.0 = phi i32 [ %insn.addr.0.i, %if.then ], [ %insn, %entry.if.end_crit_edge ]
  %5 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %table, align 4
  %and180 = and i32 %6, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and180)
  %cmp181 = icmp eq i32 %and180, 0
  br i1 %cmp181, label %if.end.cleanup62_crit_edge, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  br label %if.end5

if.end.cleanup62_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup62

if.end5:                                          ; preds = %for.inc.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %and186 = phi i32 [ %and, %for.inc.if.end5_crit_edge ], [ %and180, %if.end.if.end5_crit_edge ]
  %7 = phi i32 [ %51, %for.inc.if.end5_crit_edge ], [ %6, %if.end.if.end5_crit_edge ]
  %h.0185 = phi ptr [ %next.2, %for.inc.if.end5_crit_edge ], [ %table, %if.end.if.end5_crit_edge ]
  %matched.0.off0184 = phi i1 [ %matched.2.off0, %for.inc.if.end5_crit_edge ], [ false, %if.end.if.end5_crit_edge ]
  %insn.addr.1182 = phi i32 [ %insn.addr.3, %for.inc.if.end5_crit_edge ], [ %insn.addr.0, %if.end.if.end5_crit_edge ]
  %8 = ptrtoint ptr %h.0185 to i32
  %arrayidx = getelementptr [7 x i32], ptr @decode_struct_sizes, i32 0, i32 %and186
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %8
  %11 = inttoptr i32 %add to ptr
  br i1 %matched.0.off0184, label %if.end5.if.end10_crit_edge, label %land.lhs.true

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end5
  %mask = getelementptr inbounds %struct.decode_header, ptr %h.0185, i32 0, i32 1
  %12 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mask, align 4
  %and7 = and i32 %13, %insn.addr.1182
  %value = getelementptr inbounds %struct.decode_header, ptr %h.0185, i32 0, i32 2
  %14 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and7, i32 %15)
  %cmp8.not = icmp eq i32 %and7, %15
  br i1 %cmp8.not, label %land.lhs.true.if.end10_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %if.end5.if.end10_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %7)
  %cmp.not65.i = icmp ult i32 %7, 16
  br i1 %cmp.not65.i, label %if.end10.for.end.i_crit_edge, label %if.end10.for.body.i_crit_edge

if.end10.for.body.i_crit_edge:                    ; preds = %if.end10
  br label %for.body.i

if.end10.for.end.i_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end10.for.body.i_crit_edge
  %mask.070.i = phi i32 [ %shl.i, %for.inc.i.for.body.i_crit_edge ], [ 15, %if.end10.for.body.i_crit_edge ]
  %insn.067.i = phi i32 [ %insn.1.i, %for.inc.i.for.body.i_crit_edge ], [ %insn.addr.1182, %if.end10.for.body.i_crit_edge ]
  %regs.addr.066.i.in = phi i32 [ %regs.addr.066.i, %for.inc.i.for.body.i_crit_edge ], [ %7, %if.end10.for.body.i_crit_edge ]
  %regs.addr.066.i = lshr i32 %regs.addr.066.i.in, 4
  %and.i114 = and i32 %regs.addr.066.i, 15
  %16 = zext i32 %and.i114 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i114, label %for.body.i.sw.epilog.i_crit_edge [
    i32 0, label %for.body.i.for.inc.i_crit_edge
    i32 9, label %for.body.i.sw.bb29.i_crit_edge
    i32 2, label %sw.bb1.i
    i32 3, label %sw.bb2.i
    i32 4, label %sw.bb4.i
    i32 5, label %sw.bb10.i
    i32 6, label %for.body.i.sw.bb16.i_crit_edge
    i32 10, label %for.body.i.sw.bb16.i_crit_edge233
    i32 8, label %sw.bb23.i
    i32 7, label %for.body.i.sw.bb29.i_crit_edge234
  ]

for.body.i.sw.bb29.i_crit_edge234:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb29.i

for.body.i.sw.bb16.i_crit_edge233:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb16.i

for.body.i.sw.bb16.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb16.i

for.body.i.sw.bb29.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb29.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.body.i.sw.epilog.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %for.body.i
  %xor.i = xor i32 %insn.067.i, -572662307
  %and3.i = and i32 %xor.i, %mask.070.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool.not.i, label %sw.bb2.i.sw.epilog.i_crit_edge, label %sw.bb2.i.cleanup62_crit_edge

sw.bb2.i.cleanup62_crit_edge:                     ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup62

sw.bb2.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %for.body.i
  %xor5.i = xor i32 %insn.067.i, -1
  %and6.i = and i32 %mask.070.i, %xor5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %sw.bb4.i.sw.epilog.i_crit_edge, label %sw.bb4.i.cleanup62_crit_edge

sw.bb4.i.cleanup62_crit_edge:                     ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup62

sw.bb4.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb10.i:                                        ; preds = %for.body.i
  %xor11.i = xor i32 %insn.067.i, -572662307
  %and12.i = and i32 %xor11.i, %mask.070.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %cmp13.i = icmp eq i32 %and12.i, 0
  br i1 %cmp13.i, label %sw.bb10.i.cleanup62_crit_edge, label %sw.bb10.i.sw.epilog.i_crit_edge

sw.bb10.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb10.i.cleanup62_crit_edge:                    ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup62

sw.bb16.i:                                        ; preds = %for.body.i.sw.bb16.i_crit_edge, %for.body.i.sw.bb16.i_crit_edge233
  %xor17.i = and i32 %insn.067.i, -572662307
  %and18.i = xor i32 %xor17.i, -572662307
  %and19.i = and i32 %and18.i, %mask.070.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %cmp20.i = icmp eq i32 %and19.i, 0
  br i1 %cmp20.i, label %sw.bb16.i.cleanup62_crit_edge, label %sw.bb16.i.sw.epilog.i_crit_edge

sw.bb16.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb16.i.cleanup62_crit_edge:                    ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup62

sw.bb23.i:                                        ; preds = %for.body.i
  %xor24.i = and i32 %insn.067.i, 18874368
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %xor24.i)
  %tobool26.not.i = icmp eq i32 %xor24.i, 16777216
  br i1 %tobool26.not.i, label %sw.bb23.i.sw.epilog.i_crit_edge, label %sw.bb23.i.sw.bb29.i_crit_edge

sw.bb23.i.sw.bb29.i_crit_edge:                    ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb29.i

sw.bb23.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb29.i:                                        ; preds = %sw.bb23.i.sw.bb29.i_crit_edge, %for.body.i.sw.bb29.i_crit_edge, %for.body.i.sw.bb29.i_crit_edge234
  %xor30.i = xor i32 %insn.067.i, -1
  %and31.i = and i32 %mask.070.i, %xor30.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %cmp32.i = icmp eq i32 %and31.i, 0
  br i1 %cmp32.i, label %sw.bb29.i.cleanup62_crit_edge, label %sw.bb29.i.sw.epilog.i_crit_edge

sw.bb29.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb29.i.cleanup62_crit_edge:                    ; preds = %sw.bb29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup62

sw.epilog.i:                                      ; preds = %sw.bb29.i.sw.epilog.i_crit_edge, %sw.bb23.i.sw.epilog.i_crit_edge, %sw.bb16.i.sw.epilog.i_crit_edge, %sw.bb10.i.sw.epilog.i_crit_edge, %sw.bb4.i.sw.epilog.i_crit_edge, %sw.bb2.i.sw.epilog.i_crit_edge, %sw.bb1.i, %for.body.i.sw.epilog.i_crit_edge
  %new_bits.0.i = phi i32 [ 131331, %for.body.i.sw.epilog.i_crit_edge ], [ 131331, %sw.bb29.i.sw.epilog.i_crit_edge ], [ 131331, %sw.bb23.i.sw.epilog.i_crit_edge ], [ 131331, %sw.bb16.i.sw.epilog.i_crit_edge ], [ 131331, %sw.bb10.i.sw.epilog.i_crit_edge ], [ 131331, %sw.bb4.i.sw.epilog.i_crit_edge ], [ 131331, %sw.bb2.i.sw.epilog.i_crit_edge ], [ 572662306, %sw.bb1.i ]
  %neg.i = xor i32 %mask.070.i, -1
  %and35.i = and i32 %insn.067.i, %neg.i
  %and36.i = and i32 %new_bits.0.i, %mask.070.i
  %or.i115 = or i32 %and36.i, %and35.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %sw.epilog.i, %for.body.i.for.inc.i_crit_edge
  %insn.1.i = phi i32 [ %or.i115, %sw.epilog.i ], [ %insn.067.i, %for.body.i.for.inc.i_crit_edge ]
  %shl.i = shl i32 %mask.070.i, 4
  %cmp.not.i = icmp ult i32 %regs.addr.066.i.in, 256
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end10.for.end.i_crit_edge
  %insn.0.lcssa.i = phi i32 [ %insn.addr.1182, %if.end10.for.end.i_crit_edge ], [ %insn.1.i, %for.inc.i.for.end.i_crit_edge ]
  %spec.select = select i1 %emulate, i32 %insn.0.lcssa.i, i32 %insn.addr.1182
  %17 = zext i32 %and186 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %and186, label %for.end.i.cleanup62_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb16
    i32 3, label %sw.bb26
    i32 4, label %sw.bb38
    i32 5, label %for.end.i.for.inc_crit_edge
  ]

for.end.i.for.inc_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.end.i.cleanup62_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup62

sw.bb:                                            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %table15 = getelementptr inbounds %struct.decode_table, ptr %h.0185, i32 0, i32 1
  %18 = ptrtoint ptr %table15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %table15, align 4
  br label %for.inc

sw.bb16:                                          ; preds = %for.end.i
  %decoder = getelementptr inbounds %struct.decode_custom, ptr %h.0185, i32 0, i32 1
  %20 = ptrtoint ptr %decoder to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %decoder, align 4
  %tobool.not.i116 = icmp eq ptr %checkers, null
  br i1 %tobool.not.i116, label %sw.bb16.if.end21_crit_edge, label %sw.bb16.while.cond.i_crit_edge

sw.bb16.while.cond.i_crit_edge:                   ; preds = %sw.bb16
  br label %while.cond.i

sw.bb16.if.end21_crit_edge:                       ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

while.cond.i:                                     ; preds = %if.end4.i.while.cond.i_crit_edge, %sw.bb16.while.cond.i_crit_edge
  %p.0.i = phi ptr [ %incdec.ptr.i, %if.end4.i.while.cond.i_crit_edge ], [ %checkers, %sw.bb16.while.cond.i_crit_edge ]
  %22 = ptrtoint ptr %p.0.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %p.0.i, align 4
  %cmp.not.i117 = icmp eq ptr %23, null
  br i1 %cmp.not.i117, label %while.cond.i.if.end21_crit_edge, label %while.body.i

while.cond.i.if.end21_crit_edge:                  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

while.body.i:                                     ; preds = %while.cond.i
  %arrayidx.i118 = getelementptr %struct.decode_checker, ptr %23, i32 %21
  %24 = ptrtoint ptr %arrayidx.i118 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i118, align 4
  %tobool2.not.i = icmp eq ptr %25, null
  br i1 %tobool2.not.i, label %while.body.i.if.end4.i_crit_edge, label %if.then3.i

while.body.i.if.end4.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

if.then3.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 %25(i32 noundef %insn, ptr noundef %asi, ptr noundef %h.0185) #6
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %while.body.i.if.end4.i_crit_edge
  %retval1.0.i = phi i32 [ %call.i, %if.then3.i ], [ 1, %while.body.i.if.end4.i_crit_edge ]
  %cmp5.i = icmp eq i32 %retval1.0.i, 0
  %incdec.ptr.i = getelementptr ptr, ptr %p.0.i, i32 1
  br i1 %cmp5.i, label %if.end4.i.cleanup62_crit_edge, label %if.end4.i.while.cond.i_crit_edge

if.end4.i.while.cond.i_crit_edge:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

if.end4.i.cleanup62_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup62

if.end21:                                         ; preds = %while.cond.i.if.end21_crit_edge, %sw.bb16.if.end21_crit_edge
  %arrayidx22 = getelementptr %union.decode_action, ptr %actions, i32 %21
  %26 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx22, align 4
  %call23 = tail call i32 %27(i32 noundef %spec.select, ptr noundef %asi, ptr noundef %h.0185) #6
  br label %cleanup62

sw.bb26:                                          ; preds = %for.end.i
  %handler = getelementptr inbounds %struct.decode_simulate, ptr %h.0185, i32 0, i32 1
  %28 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %handler, align 4
  %tobool.not.i119 = icmp eq ptr %checkers, null
  br i1 %tobool.not.i119, label %sw.bb26.if.end33_crit_edge, label %sw.bb26.while.cond.i122_crit_edge

sw.bb26.while.cond.i122_crit_edge:                ; preds = %sw.bb26
  br label %while.cond.i122

sw.bb26.if.end33_crit_edge:                       ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

while.cond.i122:                                  ; preds = %if.end4.i131.while.cond.i122_crit_edge, %sw.bb26.while.cond.i122_crit_edge
  %p.0.i120 = phi ptr [ %incdec.ptr.i130, %if.end4.i131.while.cond.i122_crit_edge ], [ %checkers, %sw.bb26.while.cond.i122_crit_edge ]
  %30 = ptrtoint ptr %p.0.i120 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %p.0.i120, align 4
  %cmp.not.i121 = icmp eq ptr %31, null
  br i1 %cmp.not.i121, label %while.cond.i122.if.end33_crit_edge, label %while.body.i125

while.cond.i122.if.end33_crit_edge:               ; preds = %while.cond.i122
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

while.body.i125:                                  ; preds = %while.cond.i122
  %arrayidx.i123 = getelementptr %struct.decode_checker, ptr %31, i32 %29
  %32 = ptrtoint ptr %arrayidx.i123 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i123, align 4
  %tobool2.not.i124 = icmp eq ptr %33, null
  br i1 %tobool2.not.i124, label %while.body.i125.if.end4.i131_crit_edge, label %if.then3.i127

while.body.i125.if.end4.i131_crit_edge:           ; preds = %while.body.i125
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i131

if.then3.i127:                                    ; preds = %while.body.i125
  call void @__sanitizer_cov_trace_pc() #8
  %call.i126 = tail call i32 %33(i32 noundef %insn, ptr noundef %asi, ptr noundef %h.0185) #6
  br label %if.end4.i131

if.end4.i131:                                     ; preds = %if.then3.i127, %while.body.i125.if.end4.i131_crit_edge
  %retval1.0.i128 = phi i32 [ %call.i126, %if.then3.i127 ], [ 1, %while.body.i125.if.end4.i131_crit_edge ]
  %cmp5.i129 = icmp eq i32 %retval1.0.i128, 0
  %incdec.ptr.i130 = getelementptr ptr, ptr %p.0.i120, i32 1
  br i1 %cmp5.i129, label %if.end4.i131.cleanup62_crit_edge, label %if.end4.i131.while.cond.i122_crit_edge

if.end4.i131.while.cond.i122_crit_edge:           ; preds = %if.end4.i131
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i122

if.end4.i131.cleanup62_crit_edge:                 ; preds = %if.end4.i131
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup62

if.end33:                                         ; preds = %while.cond.i122.if.end33_crit_edge, %sw.bb26.if.end33_crit_edge
  %arrayidx34 = getelementptr %union.decode_action, ptr %actions, i32 %29
  %34 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx34, align 4
  %insn_handler = getelementptr inbounds %struct.arch_probes_insn, ptr %asi, i32 0, i32 1
  %36 = ptrtoint ptr %insn_handler to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %insn_handler, align 4
  br label %cleanup62

sw.bb38:                                          ; preds = %for.end.i
  %handler42 = getelementptr inbounds %struct.decode_emulate, ptr %h.0185, i32 0, i32 1
  %37 = ptrtoint ptr %handler42 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %handler42, align 4
  %tobool.not.i134 = icmp eq ptr %checkers, null
  br i1 %tobool.not.i134, label %sw.bb38.if.end46_crit_edge, label %sw.bb38.while.cond.i137_crit_edge

sw.bb38.while.cond.i137_crit_edge:                ; preds = %sw.bb38
  br label %while.cond.i137

sw.bb38.if.end46_crit_edge:                       ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

while.cond.i137:                                  ; preds = %if.end4.i146.while.cond.i137_crit_edge, %sw.bb38.while.cond.i137_crit_edge
  %p.0.i135 = phi ptr [ %incdec.ptr.i145, %if.end4.i146.while.cond.i137_crit_edge ], [ %checkers, %sw.bb38.while.cond.i137_crit_edge ]
  %39 = ptrtoint ptr %p.0.i135 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %p.0.i135, align 4
  %cmp.not.i136 = icmp eq ptr %40, null
  br i1 %cmp.not.i136, label %while.cond.i137.if.end46_crit_edge, label %while.body.i140

while.cond.i137.if.end46_crit_edge:               ; preds = %while.cond.i137
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

while.body.i140:                                  ; preds = %while.cond.i137
  %arrayidx.i138 = getelementptr %struct.decode_checker, ptr %40, i32 %38
  %41 = ptrtoint ptr %arrayidx.i138 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i138, align 4
  %tobool2.not.i139 = icmp eq ptr %42, null
  br i1 %tobool2.not.i139, label %while.body.i140.if.end4.i146_crit_edge, label %if.then3.i142

while.body.i140.if.end4.i146_crit_edge:           ; preds = %while.body.i140
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i146

if.then3.i142:                                    ; preds = %while.body.i140
  call void @__sanitizer_cov_trace_pc() #8
  %call.i141 = tail call i32 %42(i32 noundef %insn, ptr noundef %asi, ptr noundef %h.0185) #6
  br label %if.end4.i146

if.end4.i146:                                     ; preds = %if.then3.i142, %while.body.i140.if.end4.i146_crit_edge
  %retval1.0.i143 = phi i32 [ %call.i141, %if.then3.i142 ], [ 1, %while.body.i140.if.end4.i146_crit_edge ]
  %cmp5.i144 = icmp eq i32 %retval1.0.i143, 0
  %incdec.ptr.i145 = getelementptr ptr, ptr %p.0.i135, i32 1
  br i1 %cmp5.i144, label %if.end4.i146.cleanup62_crit_edge, label %if.end4.i146.while.cond.i137_crit_edge

if.end4.i146.while.cond.i137_crit_edge:           ; preds = %if.end4.i146
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i137

if.end4.i146.cleanup62_crit_edge:                 ; preds = %if.end4.i146
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup62

if.end46:                                         ; preds = %while.cond.i137.if.end46_crit_edge, %sw.bb38.if.end46_crit_edge
  %arrayidx52 = getelementptr %union.decode_action, ptr %actions, i32 %38
  %43 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx52, align 4
  br i1 %emulate, label %if.end51, label %if.then48

if.then48:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  %call50 = tail call i32 %44(i32 noundef %spec.select, ptr noundef %asi, ptr noundef %h.0185) #6
  br label %cleanup62

if.end51:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  %insn_handler53 = getelementptr inbounds %struct.arch_probes_insn, ptr %asi, i32 0, i32 1
  %45 = ptrtoint ptr %insn_handler53 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %insn_handler53, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #6
  %47 = ptrtoint ptr %asi to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %asi, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %46, ptr %48, align 4
  br label %cleanup62

for.inc:                                          ; preds = %sw.bb, %for.end.i.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %insn.addr.3 = phi i32 [ %insn.addr.1182, %land.lhs.true.for.inc_crit_edge ], [ %spec.select, %for.end.i.for.inc_crit_edge ], [ %spec.select, %sw.bb ]
  %matched.2.off0 = phi i1 [ false, %land.lhs.true.for.inc_crit_edge ], [ true, %for.end.i.for.inc_crit_edge ], [ %matched.0.off0184, %sw.bb ]
  %next.2 = phi ptr [ %11, %land.lhs.true.for.inc_crit_edge ], [ %11, %for.end.i.for.inc_crit_edge ], [ %19, %sw.bb ]
  %50 = ptrtoint ptr %next.2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %next.2, align 4
  %and = and i32 %51, 15
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %for.inc.cleanup62_crit_edge, label %for.inc.if.end5_crit_edge

for.inc.if.end5_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

for.inc.cleanup62_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup62

cleanup62:                                        ; preds = %for.inc.cleanup62_crit_edge, %if.end51, %if.then48, %if.end4.i146.cleanup62_crit_edge, %if.end33, %if.end4.i131.cleanup62_crit_edge, %if.end21, %if.end4.i.cleanup62_crit_edge, %for.end.i.cleanup62_crit_edge, %sw.bb29.i.cleanup62_crit_edge, %sw.bb16.i.cleanup62_crit_edge, %sw.bb10.i.cleanup62_crit_edge, %sw.bb4.i.cleanup62_crit_edge, %sw.bb2.i.cleanup62_crit_edge, %if.end.cleanup62_crit_edge
  %retval.4.ph = phi i32 [ %call50, %if.then48 ], [ 1, %if.end51 ], [ 2, %if.end33 ], [ %call23, %if.end21 ], [ 0, %if.end.cleanup62_crit_edge ], [ 0, %if.end4.i.cleanup62_crit_edge ], [ 0, %if.end4.i131.cleanup62_crit_edge ], [ 0, %if.end4.i146.cleanup62_crit_edge ], [ 0, %sw.bb2.i.cleanup62_crit_edge ], [ 0, %sw.bb4.i.cleanup62_crit_edge ], [ 0, %sw.bb10.i.cleanup62_crit_edge ], [ 0, %sw.bb16.i.cleanup62_crit_edge ], [ 0, %sw.bb29.i.cleanup62_crit_edge ], [ 0, %for.inc.cleanup62_crit_edge ], [ 0, %for.end.i.cleanup62_crit_edge ]
  ret i32 %retval.4.ph
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @probes_condition_checks, !1, !"probes_condition_checks", i1 false, i1 false}
!1 = !{!"../arch/arm/probes/decode.c", i32 167, i32 25}
!2 = !{ptr @str_pc_offset, !3, !"str_pc_offset", i1 false, i1 false}
!3 = !{!"../arch/arm/probes/decode.c", i32 29, i32 5}
!4 = !{ptr @alu_write_pc_interworks, !5, !"alu_write_pc_interworks", i1 false, i1 false}
!5 = !{!"../arch/arm/probes/decode.c", i32 64, i32 6}
!6 = !{ptr @decode_struct_sizes, !7, !"decode_struct_sizes", i1 false, i1 false}
!7 = !{!"../arch/arm/probes/decode.c", i32 333, i32 18}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{!"auto-init"}
!18 = !{i64 822, i64 845, i64 871, i64 901, i64 937}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = !{i64 2153344333, i64 2153344821, i64 2153344370, i64 2153344426, i64 2153344460, i64 2153344484, i64 2153344525, i64 2153344546, i64 2153344574, i64 2153344608}
