; ModuleID = '/llk/IR_all_yes/drivers/media/platform/allegro-dvt/nal-h264.c_pt.bc'
source_filename = "../drivers/media/platform/allegro-dvt/nal-h264.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nal_h264_write_sps\22, \22a\22\09"
module asm "\09.weak\09__crc_nal_h264_write_sps\09\09\09\09"
module asm "\09.long\09__crc_nal_h264_write_sps\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nal_h264_write_sps:\09\09\09\09\09"
module asm "\09.asciz \09\22nal_h264_write_sps\22\09\09\09\09\09"
module asm "__kstrtabns_nal_h264_write_sps:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nal_h264_read_sps\22, \22a\22\09"
module asm "\09.weak\09__crc_nal_h264_read_sps\09\09\09\09"
module asm "\09.long\09__crc_nal_h264_read_sps\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nal_h264_read_sps:\09\09\09\09\09"
module asm "\09.asciz \09\22nal_h264_read_sps\22\09\09\09\09\09"
module asm "__kstrtabns_nal_h264_read_sps:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nal_h264_write_pps\22, \22a\22\09"
module asm "\09.weak\09__crc_nal_h264_write_pps\09\09\09\09"
module asm "\09.long\09__crc_nal_h264_write_pps\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nal_h264_write_pps:\09\09\09\09\09"
module asm "\09.asciz \09\22nal_h264_write_pps\22\09\09\09\09\09"
module asm "__kstrtabns_nal_h264_write_pps:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nal_h264_read_pps\22, \22a\22\09"
module asm "\09.weak\09__crc_nal_h264_read_pps\09\09\09\09"
module asm "\09.long\09__crc_nal_h264_read_pps\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nal_h264_read_pps:\09\09\09\09\09"
module asm "\09.asciz \09\22nal_h264_read_pps\22\09\09\09\09\09"
module asm "__kstrtabns_nal_h264_read_pps:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nal_h264_write_filler\22, \22a\22\09"
module asm "\09.weak\09__crc_nal_h264_write_filler\09\09\09\09"
module asm "\09.long\09__crc_nal_h264_write_filler\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nal_h264_write_filler:\09\09\09\09\09"
module asm "\09.asciz \09\22nal_h264_write_filler\22\09\09\09\09\09"
module asm "__kstrtabns_nal_h264_write_filler:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nal_h264_read_filler\22, \22a\22\09"
module asm "\09.weak\09__crc_nal_h264_read_filler\09\09\09\09"
module asm "\09.long\09__crc_nal_h264_read_filler\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nal_h264_read_filler:\09\09\09\09\09"
module asm "\09.asciz \09\22nal_h264_read_filler\22\09\09\09\09\09"
module asm "__kstrtabns_nal_h264_read_filler:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.nal_rbsp_ops = type { ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rbsp = type { ptr, i32, i32, i32, ptr, i32 }
%struct.nal_h264_sps = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.43, i32, i32, %union.anon.44, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.46, i32, %struct.nal_h264_vui_parameters }
%struct.anon.43 = type { i32, i32, i32, i32, i32, i32 }
%union.anon.44 = type { %struct.anon.45 }
%struct.anon.45 = type { i32, i32, i32, i32, [255 x i32] }
%struct.anon.46 = type { i32, i32, i32, i32 }
%struct.nal_h264_vui_parameters = type { i32, %struct.anon.47, i32, i32, i32, %struct.anon.48, i32, %struct.anon.50, i32, %struct.anon.51, i32, %struct.nal_h264_hrd_parameters, i32, %struct.nal_h264_hrd_parameters, i32, i32, i32, %struct.anon.53 }
%struct.anon.47 = type { i32, i32, i32 }
%struct.anon.48 = type { i32, i32, i32, %struct.anon.49 }
%struct.anon.49 = type { i32, i32, i32 }
%struct.anon.50 = type { i32, i32 }
%struct.anon.51 = type { i32, i32, i32 }
%struct.nal_h264_hrd_parameters = type { i32, i32, i32, %struct.anon.52, i32, i32, i32, i32 }
%struct.anon.52 = type { [16 x i32], [16 x i32], [16 x i32] }
%struct.anon.53 = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.nal_h264_pps = type { i32, i32, i32, i32, i32, i32, %union.anon.54, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.58 }
%union.anon.54 = type { %struct.anon.55 }
%struct.anon.55 = type { [8 x i32], [8 x i32] }
%struct.anon.58 = type { i32, i32, i32 }

@write = external dso_local global %struct.nal_rbsp_ops, align 4
@__kstrtab_nal_h264_write_sps = external dso_local constant [0 x i8], align 1
@__kstrtabns_nal_h264_write_sps = external dso_local constant [0 x i8], align 1
@__ksymtab_nal_h264_write_sps = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nal_h264_write_sps to i32), ptr @__kstrtab_nal_h264_write_sps, ptr @__kstrtabns_nal_h264_write_sps }, section "___ksymtab_gpl+nal_h264_write_sps", align 4
@read = external dso_local global %struct.nal_rbsp_ops, align 4
@__kstrtab_nal_h264_read_sps = external dso_local constant [0 x i8], align 1
@__kstrtabns_nal_h264_read_sps = external dso_local constant [0 x i8], align 1
@__ksymtab_nal_h264_read_sps = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nal_h264_read_sps to i32), ptr @__kstrtab_nal_h264_read_sps, ptr @__kstrtabns_nal_h264_read_sps }, section "___ksymtab_gpl+nal_h264_read_sps", align 4
@__kstrtab_nal_h264_write_pps = external dso_local constant [0 x i8], align 1
@__kstrtabns_nal_h264_write_pps = external dso_local constant [0 x i8], align 1
@__ksymtab_nal_h264_write_pps = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nal_h264_write_pps to i32), ptr @__kstrtab_nal_h264_write_pps, ptr @__kstrtabns_nal_h264_write_pps }, section "___ksymtab_gpl+nal_h264_write_pps", align 4
@__kstrtab_nal_h264_read_pps = external dso_local constant [0 x i8], align 1
@__kstrtabns_nal_h264_read_pps = external dso_local constant [0 x i8], align 1
@__ksymtab_nal_h264_read_pps = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nal_h264_read_pps to i32), ptr @__kstrtab_nal_h264_read_pps, ptr @__kstrtabns_nal_h264_read_pps }, section "___ksymtab_gpl+nal_h264_read_pps", align 4
@__kstrtab_nal_h264_write_filler = external dso_local constant [0 x i8], align 1
@__kstrtabns_nal_h264_write_filler = external dso_local constant [0 x i8], align 1
@__ksymtab_nal_h264_write_filler = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nal_h264_write_filler to i32), ptr @__kstrtab_nal_h264_write_filler, ptr @__kstrtabns_nal_h264_write_filler }, section "___ksymtab_gpl+nal_h264_write_filler", align 4
@__kstrtab_nal_h264_read_filler = external dso_local constant [0 x i8], align 1
@__kstrtabns_nal_h264_read_filler = external dso_local constant [0 x i8], align 1
@__ksymtab_nal_h264_read_filler = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nal_h264_read_filler to i32), ptr @__kstrtab_nal_h264_read_filler, ptr @__kstrtabns_nal_h264_read_filler }, section "___ksymtab_gpl+nal_h264_read_filler", align 4
@__sancov_gen_cov_switch_values = internal global [15 x i64] [i64 13, i64 32, i64 44, i64 83, i64 86, i64 100, i64 110, i64 118, i64 122, i64 128, i64 134, i64 135, i64 138, i64 139, i64 244]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.2 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 2, i64 3, i64 4, i64 5, i64 6]
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_nal_h264_read_filler, ptr @__ksymtab_nal_h264_read_pps, ptr @__ksymtab_nal_h264_read_sps, ptr @__ksymtab_nal_h264_write_filler, ptr @__ksymtab_nal_h264_write_pps, ptr @__ksymtab_nal_h264_write_sps], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nal_h264_write_sps(ptr nocapture readnone %dev, ptr noundef %dest, i32 noundef %n, ptr noundef %sps) #0 align 64 {
entry:
  %rbsp = alloca %struct.rbsp, align 4
  %forbidden_zero_bit = alloca i32, align 4
  %nal_ref_idc = alloca i32, align 4
  %nal_unit_type = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %rbsp) #4
  %0 = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 2
  %1 = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 5
  %2 = call ptr @memset(ptr %rbsp, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %forbidden_zero_bit) #4
  %3 = ptrtoint ptr %forbidden_zero_bit to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %forbidden_zero_bit, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nal_ref_idc) #4
  %4 = ptrtoint ptr %nal_ref_idc to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %nal_ref_idc, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nal_unit_type) #4
  %5 = ptrtoint ptr %nal_unit_type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 7, ptr %nal_unit_type, align 4
  %tobool.not = icmp eq ptr %dest, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 1
  call void @rbsp_init(ptr noundef nonnull %rbsp, ptr noundef nonnull %dest, i32 noundef %n, ptr noundef nonnull @write) #4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %0, align 4
  %sub.i = add i32 %8, 7
  %div21.i = lshr i32 %sub.i, 3
  %add5.i = add nuw nsw i32 %div21.i, 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add5.i, i32 %10)
  %cmp.i = icmp ugt i32 %add5.i, %10
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -22, ptr %1, align 4
  br label %nal_h264_write_start_code_prefix.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %rbsp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rbsp, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 %div21.i
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %add.ptr.i, align 1
  %arrayidx6.i = getelementptr i8, ptr %add.ptr.i, i32 1
  %15 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx6.i, align 1
  %arrayidx7.i = getelementptr i8, ptr %add.ptr.i, i32 2
  %16 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx7.i, align 1
  %arrayidx8.i = getelementptr i8, ptr %add.ptr.i, i32 3
  %17 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %arrayidx8.i, align 1
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %0, align 4
  %add10.i = add i32 %19, 32
  store i32 %add10.i, ptr %0, align 4
  br label %nal_h264_write_start_code_prefix.exit

nal_h264_write_start_code_prefix.exit:            ; preds = %if.end.i, %if.then.i
  call void @rbsp_bit(ptr noundef nonnull %rbsp, ptr noundef nonnull %forbidden_zero_bit) #4
  call void @rbsp_bits(ptr noundef nonnull %rbsp, i32 noundef 2, ptr noundef nonnull %nal_ref_idc) #4
  call void @rbsp_bits(ptr noundef nonnull %rbsp, i32 noundef 5, ptr noundef nonnull %nal_unit_type) #4
  call fastcc void @nal_h264_rbsp_sps(ptr noundef nonnull %rbsp, ptr noundef %sps)
  call void @rbsp_trailing_bits(ptr noundef nonnull %rbsp) #4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool1.not = icmp eq i32 %21, 0
  br i1 %tobool1.not, label %if.end4, label %nal_h264_write_start_code_prefix.exit.cleanup_crit_edge

nal_h264_write_start_code_prefix.exit.cleanup_crit_edge: ; preds = %nal_h264_write_start_code_prefix.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %nal_h264_write_start_code_prefix.exit
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %0, align 4
  %sub = add i32 %23, 7
  %div9 = lshr i32 %sub, 3
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %nal_h264_write_start_code_prefix.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %div9, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ %21, %nal_h264_write_start_code_prefix.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nal_unit_type) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nal_ref_idc) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %forbidden_zero_bit) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %rbsp) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rbsp_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rbsp_bit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rbsp_bits(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nal_h264_rbsp_sps(ptr noundef %rbsp, ptr noundef %sps) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sps, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %error = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 5
  %0 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -22, ptr %error, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @rbsp_bits(ptr noundef %rbsp, i32 noundef 8, ptr noundef nonnull %sps) #4
  %constraint_set0_flag = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 1
  tail call void @rbsp_bit(ptr noundef %rbsp, ptr noundef %constraint_set0_flag) #4
  %constraint_set1_flag = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 2
  tail call void @rbsp_bit(ptr noundef %rbsp, ptr noundef %constraint_set1_flag) #4
  %constraint_set2_flag = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 3
  tail call void @rbsp_bit(ptr noundef %rbsp, ptr noundef %constraint_set2_flag) #4
  %constraint_set3_flag = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 4
  tail call void @rbsp_bit(ptr noundef %rbsp, ptr noundef %constraint_set3_flag) #4
  %constraint_set4_flag = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 5
  tail call void @rbsp_bit(ptr noundef %rbsp, ptr noundef %constraint_set4_flag) #4
  %constraint_set5_flag = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 6
  tail call void @rbsp_bit(ptr noundef %rbsp, ptr noundef %constraint_set5_flag) #4
  %reserved_zero_2bits = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 7
  tail call void @rbsp_bits(ptr noundef %rbsp, i32 noundef 2, ptr noundef %reserved_zero_2bits) #4
  %level_idc = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 8
  tail call void @rbsp_bits(ptr noundef %rbsp, i32 noundef 8, ptr noundef %level_idc) #4
  %seq_parameter_set_id = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 9
  tail call void @rbsp_uev(ptr noundef %rbsp, ptr noundef %seq_parameter_set_id) #4
  %1 = ptrtoint ptr %sps to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %sps, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %2, label %if.end.if.end47_crit_edge [
    i32 100, label %if.end.if.then37_crit_edge
    i32 110, label %if.end.if.then37_crit_edge167
    i32 122, label %if.end.if.then37_crit_edge168
    i32 244, label %if.end.if.then37_crit_edge169
    i32 44, label %if.end.if.then37_crit_edge170
    i32 83, label %if.end.if.then37_crit_edge171
    i32 86, label %if.end.if.then37_crit_edge172
    i32 118, label %if.end.if.then37_crit_edge173
    i32 128, label %if.end.if.then37_crit_edge174
    i32 138, label %if.end.if.then37_crit_edge175
    i32 139, label %if.end.if.then37_crit_edge176
    i32 134, label %if.end.if.then37_crit_edge177
    i32 135, label %if.end.if.then37_crit_edge178
  ]

if.end.if.then37_crit_edge178:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then37

if.end.if.then37_crit_edge177:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then37

if.end.if.then37_crit_edge176:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then37

if.end.if.then37_crit_edge175:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then37

if.end.if.then37_crit_edge174:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then37

if.end.if.then37_crit_edge173:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then37

if.end.if.then37_crit_edge172:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then37

if.end.if.then37_crit_edge171:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then37

if.end.if.then37_crit_edge170:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then37

if.end.if.then37_crit_edge169:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then37

if.end.if.then37_crit_edge168:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then37

if.end.if.then37_crit_edge167:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then37

if.end.if.then37_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then37

if.end.if.end47_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end47

if.then37:                                        ; preds = %if.end.if.then37_crit_edge, %if.end.if.then37_crit_edge167, %if.end.if.then37_crit_edge168, %if.end.if.then37_crit_edge169, %if.end.if.then37_crit_edge170, %if.end.if.then37_crit_edge171, %if.end.if.then37_crit_edge172, %if.end.if.then37_crit_edge173, %if.end.if.then37_crit_edge174, %if.end.if.then37_crit_edge175, %if.end.if.then37_crit_edge176, %if.end.if.then37_crit_edge177, %if.end.if.then37_crit_edge178
  %4 = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 10
  tail call void @rbsp_uev(ptr noundef %rbsp, ptr noundef %4) #4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp39 = icmp eq i32 %6, 3
  br i1 %cmp39, label %if.then40, label %if.then37.if.end41_crit_edge

if.then37.if.end41_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end41

if.then40:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #6
  %separate_colour_plane_flag = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 10, i32 1
  tail call void @rbsp_bit(ptr noundef %rbsp, ptr noundef %separate_colour_plane_flag) #4
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.then37.if.end41_crit_edge
  %bit_depth_luma_minus8 = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 10, i32 2
  tail call void @rbsp_uev(ptr noundef %rbsp, ptr noundef %bit_depth_luma_minus8) #4
  %bit_depth_chroma_minus8 = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 10, i32 3
  tail call void @rbsp_uev(ptr noundef %rbsp, ptr noundef %bit_depth_chroma_minus8) #4
  %qpprime_y_zero_transform_bypass_flag = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 10, i32 4
  tail call void @rbsp_bit(ptr noundef %rbsp, ptr noundef %qpprime_y_zero_transform_bypass_flag) #4
  %seq_scaling_matrix_present_flag = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 10, i32 5
  tail call void @rbsp_bit(ptr noundef %rbsp, ptr noundef %seq_scaling_matrix_present_flag) #4
  %7 = ptrtoint ptr %seq_scaling_matrix_present_flag to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %seq_scaling_matrix_present_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool43.not = icmp eq i32 %8, 0
  br i1 %tobool43.not, label %if.end41.if.end47_crit_edge, label %if.then44

if.end41.if.end47_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end47

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  %error45 = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 5
  %9 = ptrtoint ptr %error45 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -22, ptr %error45, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.end41.if.end47_crit_edge, %if.end.if.end47_crit_edge
  %log2_max_frame_num_minus4 = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 11
  tail call void @rbsp_uev(ptr noundef %rbsp, ptr noundef %log2_max_frame_num_minus4) #4
  %pic_order_cnt_type = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 12
  tail call void @rbsp_uev(ptr noundef %rbsp, ptr noundef %pic_order_cnt_type) #4
  %10 = ptrtoint ptr %pic_order_cnt_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pic_order_cnt_type, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %11, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb49
  ]

sw.bb:                                            ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #6
  %13 = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 13
  tail call void @rbsp_uev(ptr noundef %rbsp, ptr noundef %13) #4
  br label %sw.epilog

sw.bb49:                                          ; preds = %if.end47
  %14 = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 13
  tail call void @rbsp_bit(ptr noundef %rbsp, ptr noundef %14) #4
  %offset_for_non_ref_pic = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 13, i32 0, i32 1
  tail call void @rbsp_sev(ptr noundef %rbsp, ptr noundef %offset_for_non_ref_pic) #4
  %offset_for_top_to_bottom_field = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 13, i32 0, i32 2
  tail call void @rbsp_sev(ptr noundef %rbsp, ptr noundef %offset_for_top_to_bottom_field) #4
  %num_ref_frames_in_pic_order_cnt_cycle = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 13, i32 0, i32 3
  tail call void @rbsp_uev(ptr noundef %rbsp, ptr noundef %num_ref_frames_in_pic_order_cnt_cycle) #4
  %15 = ptrtoint ptr %num_ref_frames_in_pic_order_cnt_cycle to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_ref_frames_in_pic_order_cnt_cycle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp51165.not = icmp eq i32 %16, 0
  br i1 %cmp51165.not, label %sw.bb49.sw.epilog_crit_edge, label %sw.bb49.for.body_crit_edge

sw.bb49.for.body_crit_edge:                       ; preds = %sw.bb49
  br label %for.body

sw.bb49.sw.epilog_crit_edge:                      ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

for.body:                                         ; preds = %for.body.for.body_crit_edge, %sw.bb49.for.body_crit_edge
  %i.0166 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %sw.bb49.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.nal_h264_sps, ptr %sps, i32 0, i32 13, i32 0, i32 4, i32 %i.0166
  tail call void @rbsp_sev(ptr noundef %rbsp, ptr noundef %arrayidx) #4
  %inc = add nuw i32 %i.0166, 1
  %17 = ptrtoint ptr %num_ref_frames_in_pic_order_cnt_cycle to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_ref_frames_in_pic_order_cnt_cycle, align 4
  %cmp51 = icmp ult i32 %inc, %18
  br i1 %cmp51, label %for.body.for.body_crit_edge, label %for.body.sw.epilog_crit_edge

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

sw.default:                                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #6
  %error52 = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 5
  %19 = ptrtoint ptr %error52 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -22, ptr %error52, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.body.sw.epilog_crit_edge, %sw.bb49.sw.epilog_crit_edge, %sw.bb
  %max_num_ref_frames = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 14
  tail call void @rbsp_uev(ptr noundef %rbsp, ptr noundef %max_num_ref_frames) #4
  %gaps_in_frame_num_value_allowed_flag = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 15
  tail call void @rbsp_bit(ptr noundef %rbsp, ptr noundef %gaps_in_frame_num_value_allowed_flag) #4
  %pic_width_in_mbs_minus1 = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 16
  tail call void @rbsp_uev(ptr noundef %rbsp, ptr noundef %pic_width_in_mbs_minus1) #4
  %pic_height_in_map_units_minus1 = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 17
  tail call void @rbsp_uev(ptr noundef %rbsp, ptr noundef %pic_height_in_map_units_minus1) #4
  %frame_mbs_only_flag = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 18
  tail call void @rbsp_bit(ptr noundef %rbsp, ptr noundef %frame_mbs_only_flag) #4
  %20 = ptrtoint ptr %frame_mbs_only_flag to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %frame_mbs_only_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool54.not = icmp eq i32 %21, 0
  br i1 %tobool54.not, label %if.then55, label %sw.epilog.if.end56_crit_edge

sw.epilog.if.end56_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end56

if.then55:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %mb_adaptive_frame_field_flag = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 19
  tail call void @rbsp_bit(ptr noundef %rbsp, ptr noundef %mb_adaptive_frame_field_flag) #4
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %sw.epilog.if.end56_crit_edge
  %direct_8x8_inference_flag = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 20
  tail call void @rbsp_bit(ptr noundef %rbsp, ptr noundef %direct_8x8_inference_flag) #4
  %frame_cropping_flag = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 21
  tail call void @rbsp_bit(ptr noundef %rbsp, ptr noundef %frame_cropping_flag) #4
  %22 = ptrtoint ptr %frame_cropping_flag to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %frame_cropping_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool58.not = icmp eq i32 %23, 0
  br i1 %tobool58.not, label %if.end56.if.end60_crit_edge, label %if.then59

if.end56.if.end60_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60

if.then59:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #6
  %24 = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 22
  tail call void @rbsp_uev(ptr noundef %rbsp, ptr noundef %24) #4
  %crop_right = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 22, i32 1
  tail call void @rbsp_uev(ptr noundef %rbsp, ptr noundef %crop_right) #4
  %crop_top = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 22, i32 2
  tail call void @rbsp_uev(ptr noundef %rbsp, ptr noundef %crop_top) #4
  %crop_bottom = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 22, i32 3
  tail call void @rbsp_uev(ptr noundef %rbsp, ptr noundef %crop_bottom) #4
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %if.end56.if.end60_crit_edge
  %vui_parameters_present_flag = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 23
  tail call void @rbsp_bit(ptr noundef %rbsp, ptr noundef %vui_parameters_present_flag) #4
  %25 = ptrtoint ptr %vui_parameters_present_flag to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vui_parameters_present_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool62.not = icmp eq i32 %26, 0
  br i1 %tobool62.not, label %if.end60.cleanup_crit_edge, label %if.then63

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then63:                                        ; preds = %if.end60
  %vui = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 24
  %tobool.not.i = icmp eq ptr %vui, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #6
  %error.i = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 5
  %27 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -22, ptr %error.i, align 4
  br label %cleanup

if.end.i:                                         ; preds = %if.then63
  tail call void @rbsp_bit(ptr noundef %rbsp, ptr noundef nonnull %vui) #4
  %28 = ptrtoint ptr %vui to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vui, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool2.not.i = icmp eq i32 %29, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then3.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7.i

if.then3.i:                                       ; preds = %if.end.i
  %30 = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 24, i32 1
  tail call void @rbsp_bits(ptr noundef %rbsp, i32 noundef 8, ptr noundef %30) #4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %32)
  %cmp.i = icmp eq i32 %32, 255
  br i1 %cmp.i, label %if.then5.i, label %if.then3.i.if.end7.i_crit_edge

if.then3.i.if.end7.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #6
  %sar_width.i = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 24, i32 1, i32 1
  tail call void @rbsp_bits(ptr noundef %rbsp, i32 noundef 16, ptr noundef %sar_width.i) #4
  %sar_height.i = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 24, i32 1, i32 2
  tail call void @rbsp_bits(ptr noundef %rbsp, i32 noundef 16, ptr noundef %sar_height.i) #4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.then3.i.if.end7.i_crit_edge, %if.end.i.if.end7.i_crit_edge
  %overscan_info_present_flag.i = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 24, i32 2
  tail call void @rbsp_bit(ptr noundef %rbsp, ptr noundef %overscan_info_present_flag.i) #4
  %33 = ptrtoint ptr %overscan_info_present_flag.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %overscan_info_present_flag.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool9.not.i = icmp eq i32 %34, 0
  br i1 %tobool9.not.i, label %if.end7.i.if.end11.i_crit_edge, label %if.then10.i

if.end7.i.if.end11.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11.i

if.then10.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  %overscan_appropriate_flag.i = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 24, i32 3
  tail call void @rbsp_bit(ptr noundef %rbsp, ptr noundef %overscan_appropriate_flag.i) #4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then10.i, %if.end7.i.if.end11.i_crit_edge
  %video_signal_type_present_flag.i = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 24, i32 4
  tail call void @rbsp_bit(ptr noundef %rbsp, ptr noundef %video_signal_type_present_flag.i) #4
  %35 = ptrtoint ptr %video_signal_type_present_flag.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %video_signal_type_present_flag.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool13.not.i = icmp eq i32 %36, 0
  br i1 %tobool13.not.i, label %if.end11.i.if.end19.i_crit_edge, label %if.then14.i

if.end11.i.if.end19.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19.i

if.then14.i:                                      ; preds = %if.end11.i
  %37 = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 24, i32 5
  tail call void @rbsp_bits(ptr noundef %rbsp, i32 noundef 3, ptr noundef %37) #4
  %video_full_range_flag.i = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 24, i32 5, i32 1
  tail call void @rbsp_bit(ptr noundef %rbsp, ptr noundef %video_full_range_flag.i) #4
  %colour_description_present_flag.i = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 24, i32 5, i32 2
  tail call void @rbsp_bit(ptr noundef %rbsp, ptr noundef %colour_description_present_flag.i) #4
  %38 = ptrtoint ptr %colour_description_present_flag.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %colour_description_present_flag.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool16.not.i = icmp eq i32 %39, 0
  br i1 %tobool16.not.i, label %if.then14.i.if.end19.i_crit_edge, label %if.then17.i

if.then14.i.if.end19.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19.i

if.then17.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #6
  %40 = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 24, i32 5, i32 3
  tail call void @rbsp_bits(ptr noundef %rbsp, i32 noundef 8, ptr noundef %40) #4
  %transfer_characteristics.i = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 24, i32 5, i32 3, i32 1
  tail call void @rbsp_bits(ptr noundef %rbsp, i32 noundef 8, ptr noundef %transfer_characteristics.i) #4
  %matrix_coefficients.i = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 24, i32 5, i32 3, i32 2
  tail call void @rbsp_bits(ptr noundef %rbsp, i32 noundef 8, ptr noundef %matrix_coefficients.i) #4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then17.i, %if.then14.i.if.end19.i_crit_edge, %if.end11.i.if.end19.i_crit_edge
  %chroma_loc_info_present_flag.i = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 24, i32 6
  tail call void @rbsp_bit(ptr noundef %rbsp, ptr noundef %chroma_loc_info_present_flag.i) #4
  %41 = ptrtoint ptr %chroma_loc_info_present_flag.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %chroma_loc_info_present_flag.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool21.not.i = icmp eq i32 %42, 0
  br i1 %tobool21.not.i, label %if.end19.i.if.end23.i_crit_edge, label %if.then22.i

if.end19.i.if.end23.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23.i

if.then22.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #6
  %43 = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 24, i32 7
  tail call void @rbsp_uev(ptr noundef %rbsp, ptr noundef %43) #4
  %chroma_sample_loc_type_bottom_field.i = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 24, i32 7, i32 1
  tail call void @rbsp_uev(ptr noundef %rbsp, ptr noundef %chroma_sample_loc_type_bottom_field.i) #4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then22.i, %if.end19.i.if.end23.i_crit_edge
  %timing_info_present_flag.i = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 24, i32 8
  tail call void @rbsp_bit(ptr noundef %rbsp, ptr noundef %timing_info_present_flag.i) #4
  %44 = ptrtoint ptr %timing_info_present_flag.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %timing_info_present_flag.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool25.not.i = icmp eq i32 %45, 0
  br i1 %tobool25.not.i, label %if.end23.i.if.end27.i_crit_edge, label %if.then26.i

if.end23.i.if.end27.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27.i

if.then26.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #6
  %46 = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 24, i32 9
  tail call void @rbsp_bits(ptr noundef %rbsp, i32 noundef 32, ptr noundef %46) #4
  %time_scale.i = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 24, i32 9, i32 1
  tail call void @rbsp_bits(ptr noundef %rbsp, i32 noundef 32, ptr noundef %time_scale.i) #4
  %fixed_frame_rate_flag.i = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 24, i32 9, i32 2
  tail call void @rbsp_bit(ptr noundef %rbsp, ptr noundef %fixed_frame_rate_flag.i) #4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then26.i, %if.end23.i.if.end27.i_crit_edge
  %nal_hrd_parameters_present_flag.i = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 24, i32 10
  tail call void @rbsp_bit(ptr noundef %rbsp, ptr noundef %nal_hrd_parameters_present_flag.i) #4
  %47 = ptrtoint ptr %nal_hrd_parameters_present_flag.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %nal_hrd_parameters_present_flag.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool29.not.i = icmp eq i32 %48, 0
  br i1 %tobool29.not.i, label %if.end27.i.if.end31.i_crit_edge, label %if.then30.i

if.end27.i.if.end31.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31.i

if.then30.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #6
  %nal_hrd_parameters.i = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 24, i32 11
  tail call fastcc void @nal_h264_rbsp_hrd_parameters(ptr noundef %rbsp, ptr noundef %nal_hrd_parameters.i) #4
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then30.i, %if.end27.i.if.end31.i_crit_edge
  %vcl_hrd_parameters_present_flag.i = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 24, i32 12
  tail call void @rbsp_bit(ptr noundef %rbsp, ptr noundef %vcl_hrd_parameters_present_flag.i) #4
  %49 = ptrtoint ptr %vcl_hrd_parameters_present_flag.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %vcl_hrd_parameters_present_flag.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool33.not.i = icmp eq i32 %50, 0
  br i1 %tobool33.not.i, label %if.end31.i.if.end35.i_crit_edge, label %if.then34.i

if.end31.i.if.end35.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35.i

if.then34.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #6
  %vcl_hrd_parameters.i = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 24, i32 13
  tail call fastcc void @nal_h264_rbsp_hrd_parameters(ptr noundef %rbsp, ptr noundef %vcl_hrd_parameters.i) #4
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then34.i, %if.end31.i.if.end35.i_crit_edge
  %51 = ptrtoint ptr %nal_hrd_parameters_present_flag.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %nal_hrd_parameters_present_flag.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool37.not.i = icmp eq i32 %52, 0
  br i1 %tobool37.not.i, label %lor.lhs.false.i, label %if.end35.i.if.then40.i_crit_edge

if.end35.i.if.then40.i_crit_edge:                 ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then40.i

lor.lhs.false.i:                                  ; preds = %if.end35.i
  %53 = ptrtoint ptr %vcl_hrd_parameters_present_flag.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %vcl_hrd_parameters_present_flag.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool39.not.i = icmp eq i32 %54, 0
  br i1 %tobool39.not.i, label %lor.lhs.false.i.if.end41.i_crit_edge, label %lor.lhs.false.i.if.then40.i_crit_edge

lor.lhs.false.i.if.then40.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then40.i

lor.lhs.false.i.if.end41.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end41.i

if.then40.i:                                      ; preds = %lor.lhs.false.i.if.then40.i_crit_edge, %if.end35.i.if.then40.i_crit_edge
  %low_delay_hrd_flag.i = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 24, i32 14
  tail call void @rbsp_bit(ptr noundef %rbsp, ptr noundef %low_delay_hrd_flag.i) #4
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then40.i, %lor.lhs.false.i.if.end41.i_crit_edge
  %pic_struct_present_flag.i = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 24, i32 15
  tail call void @rbsp_bit(ptr noundef %rbsp, ptr noundef %pic_struct_present_flag.i) #4
  %bitstream_restriction_flag.i = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 24, i32 16
  tail call void @rbsp_bit(ptr noundef %rbsp, ptr noundef %bitstream_restriction_flag.i) #4
  %55 = ptrtoint ptr %bitstream_restriction_flag.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %bitstream_restriction_flag.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool43.not.i = icmp eq i32 %56, 0
  br i1 %tobool43.not.i, label %if.end41.i.cleanup_crit_edge, label %if.then44.i

if.end41.i.cleanup_crit_edge:                     ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then44.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #6
  %57 = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 24, i32 17
  tail call void @rbsp_bit(ptr noundef %rbsp, ptr noundef %57) #4
  %max_bytes_per_pic_denom.i = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 24, i32 17, i32 1
  tail call void @rbsp_uev(ptr noundef %rbsp, ptr noundef %max_bytes_per_pic_denom.i) #4
  %max_bits_per_mb_denom.i = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 24, i32 17, i32 2
  tail call void @rbsp_uev(ptr noundef %rbsp, ptr noundef %max_bits_per_mb_denom.i) #4
  %log2_max_mv_length_horizontal.i = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 24, i32 17, i32 3
  tail call void @rbsp_uev(ptr noundef %rbsp, ptr noundef %log2_max_mv_length_horizontal.i) #4
  %log21_max_mv_length_vertical.i = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 24, i32 17, i32 4
  tail call void @rbsp_uev(ptr noundef %rbsp, ptr noundef %log21_max_mv_length_vertical.i) #4
  %max_num_reorder_frames.i = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 24, i32 17, i32 5
  tail call void @rbsp_uev(ptr noundef %rbsp, ptr noundef %max_num_reorder_frames.i) #4
  %max_dec_frame_buffering.i = getelementptr inbounds %struct.nal_h264_sps, ptr %sps, i32 0, i32 24, i32 17, i32 6
  tail call void @rbsp_uev(ptr noundef %rbsp, ptr noundef %max_dec_frame_buffering.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then44.i, %if.end41.i.cleanup_crit_edge, %if.then.i, %if.end60.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rbsp_trailing_bits(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nal_h264_read_sps(ptr nocapture readnone %dev, ptr noundef %sps, ptr noundef %src, i32 noundef %n) #0 align 64 {
entry:
  %rbsp = alloca %struct.rbsp, align 4
  %forbidden_zero_bit = alloca i32, align 4
  %nal_ref_idc = alloca i32, align 4
  %nal_unit_type = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %rbsp) #4
  %0 = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 2
  %1 = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 5
  %2 = call ptr @memset(ptr %rbsp, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %forbidden_zero_bit) #4
  %3 = ptrtoint ptr %forbidden_zero_bit to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %forbidden_zero_bit, align 4, !annotation !21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nal_ref_idc) #4
  %4 = ptrtoint ptr %nal_ref_idc to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %nal_ref_idc, align 4, !annotation !21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nal_unit_type) #4
  %5 = ptrtoint ptr %nal_unit_type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %nal_unit_type, align 4, !annotation !21
  %tobool.not = icmp eq ptr %src, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 1
  call void @rbsp_init(ptr noundef nonnull %rbsp, ptr noundef nonnull %src, i32 noundef %n, ptr noundef nonnull @read) #4
  %7 = ptrtoint ptr %rbsp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rbsp, align 4
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %0, align 4
  %sub.i = add i32 %10, 7
  %div38.i = lshr i32 %sub.i, 3
  %add.ptr.i = getelementptr i8, ptr %8, i32 %div38.i
  %add5.i = add nuw nsw i32 %div38.i, 4
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add5.i, i32 %12)
  %cmp.i = icmp ugt i32 %add5.i, %12
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -22, ptr %1, align 4
  br label %nal_h264_read_start_code_prefix.exit

if.end.i:                                         ; preds = %if.end
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp6.not.i = icmp eq i8 %15, 0
  br i1 %cmp6.not.i, label %lor.lhs.false.i, label %if.end.i.if.then22.i_crit_edge

if.end.i.if.then22.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then22.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %arrayidx8.i = getelementptr i8, ptr %add.ptr.i, i32 1
  %16 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx8.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp10.not.i = icmp eq i8 %17, 0
  br i1 %cmp10.not.i, label %lor.lhs.false12.i, label %lor.lhs.false.i.if.then22.i_crit_edge

lor.lhs.false.i.if.then22.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then22.i

lor.lhs.false12.i:                                ; preds = %lor.lhs.false.i
  %arrayidx13.i = getelementptr i8, ptr %add.ptr.i, i32 2
  %18 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx13.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp15.not.i = icmp eq i8 %19, 0
  br i1 %cmp15.not.i, label %lor.lhs.false17.i, label %lor.lhs.false12.i.if.then22.i_crit_edge

lor.lhs.false12.i.if.then22.i_crit_edge:          ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then22.i

lor.lhs.false17.i:                                ; preds = %lor.lhs.false12.i
  %arrayidx18.i = getelementptr i8, ptr %add.ptr.i, i32 3
  %20 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx18.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %21)
  %cmp20.not.i = icmp eq i8 %21, 1
  br i1 %cmp20.not.i, label %if.end24.i, label %lor.lhs.false17.i.if.then22.i_crit_edge

lor.lhs.false17.i.if.then22.i_crit_edge:          ; preds = %lor.lhs.false17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then22.i

if.then22.i:                                      ; preds = %lor.lhs.false17.i.if.then22.i_crit_edge, %lor.lhs.false12.i.if.then22.i_crit_edge, %lor.lhs.false.i.if.then22.i_crit_edge, %if.end.i.if.then22.i_crit_edge
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -22, ptr %1, align 4
  br label %nal_h264_read_start_code_prefix.exit

if.end24.i:                                       ; preds = %lor.lhs.false17.i
  call void @__sanitizer_cov_trace_pc() #6
  %add26.i = add i32 %10, 32
  %23 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add26.i, ptr %0, align 4
  br label %nal_h264_read_start_code_prefix.exit

nal_h264_read_start_code_prefix.exit:             ; preds = %if.end24.i, %if.then22.i, %if.then.i
  call void @rbsp_bit(ptr noundef nonnull %rbsp, ptr noundef nonnull %forbidden_zero_bit) #4
  call void @rbsp_bits(ptr noundef nonnull %rbsp, i32 noundef 2, ptr noundef nonnull %nal_ref_idc) #4
  call void @rbsp_bits(ptr noundef nonnull %rbsp, i32 noundef 5, ptr noundef nonnull %nal_unit_type) #4
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool1.not = icmp eq i32 %25, 0
  br i1 %tobool1.not, label %lor.lhs.false, label %nal_h264_read_start_code_prefix.exit.cleanup_crit_edge

nal_h264_read_start_code_prefix.exit.cleanup_crit_edge: ; preds = %nal_h264_read_start_code_prefix.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %nal_h264_read_start_code_prefix.exit
  %26 = ptrtoint ptr %forbidden_zero_bit to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %forbidden_zero_bit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.not = icmp eq i32 %27, 0
  br i1 %cmp.not, label %lor.lhs.false2, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %28 = ptrtoint ptr %nal_ref_idc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nal_ref_idc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp3.not = icmp eq i32 %29, 0
  br i1 %cmp3.not, label %lor.lhs.false4, label %lor.lhs.false2.cleanup_crit_edge

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %30 = ptrtoint ptr %nal_unit_type to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nal_unit_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %31)
  %cmp5.not = icmp eq i32 %31, 7
  br i1 %cmp5.not, label %if.end7, label %lor.lhs.false4.cleanup_crit_edge

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false4
  call fastcc void @nal_h264_rbsp_sps(ptr noundef nonnull %rbsp, ptr noundef %sps)
  call void @rbsp_trailing_bits(ptr noundef nonnull %rbsp) #4
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool9.not = icmp eq i32 %33, 0
  br i1 %tobool9.not, label %if.end12, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  %34 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %0, align 4
  %sub = add i32 %35, 7
  %div17 = lshr i32 %sub, 3
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end7.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %nal_h264_read_start_code_prefix.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %div17, %if.end12 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false4.cleanup_crit_edge ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %nal_h264_read_start_code_prefix.exit.cleanup_crit_edge ], [ %33, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nal_unit_type) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nal_ref_idc) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %forbidden_zero_bit) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %rbsp) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nal_h264_write_pps(ptr nocapture readnone %dev, ptr noundef %dest, i32 noundef %n, ptr noundef %pps) #0 align 64 {
entry:
  %rbsp = alloca %struct.rbsp, align 4
  %forbidden_zero_bit = alloca i32, align 4
  %nal_ref_idc = alloca i32, align 4
  %nal_unit_type = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %rbsp) #4
  %0 = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 2
  %1 = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 5
  %2 = call ptr @memset(ptr %rbsp, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %forbidden_zero_bit) #4
  %3 = ptrtoint ptr %forbidden_zero_bit to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %forbidden_zero_bit, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nal_ref_idc) #4
  %4 = ptrtoint ptr %nal_ref_idc to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %nal_ref_idc, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nal_unit_type) #4
  %5 = ptrtoint ptr %nal_unit_type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 8, ptr %nal_unit_type, align 4
  %tobool.not = icmp eq ptr %dest, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 1
  call void @rbsp_init(ptr noundef nonnull %rbsp, ptr noundef nonnull %dest, i32 noundef %n, ptr noundef nonnull @write) #4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %0, align 4
  %sub.i = add i32 %8, 7
  %div21.i = lshr i32 %sub.i, 3
  %add5.i = add nuw nsw i32 %div21.i, 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add5.i, i32 %10)
  %cmp.i = icmp ugt i32 %add5.i, %10
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -22, ptr %1, align 4
  br label %nal_h264_write_start_code_prefix.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %rbsp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rbsp, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 %div21.i
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %add.ptr.i, align 1
  %arrayidx6.i = getelementptr i8, ptr %add.ptr.i, i32 1
  %15 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx6.i, align 1
  %arrayidx7.i = getelementptr i8, ptr %add.ptr.i, i32 2
  %16 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx7.i, align 1
  %arrayidx8.i = getelementptr i8, ptr %add.ptr.i, i32 3
  %17 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %arrayidx8.i, align 1
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %0, align 4
  %add10.i = add i32 %19, 32
  store i32 %add10.i, ptr %0, align 4
  br label %nal_h264_write_start_code_prefix.exit

nal_h264_write_start_code_prefix.exit:            ; preds = %if.end.i, %if.then.i
  call void @rbsp_bit(ptr noundef nonnull %rbsp, ptr noundef nonnull %forbidden_zero_bit) #4
  call void @rbsp_bits(ptr noundef nonnull %rbsp, i32 noundef 2, ptr noundef nonnull %nal_ref_idc) #4
  call void @rbsp_bits(ptr noundef nonnull %rbsp, i32 noundef 5, ptr noundef nonnull %nal_unit_type) #4
  call fastcc void @nal_h264_rbsp_pps(ptr noundef nonnull %rbsp, ptr noundef %pps)
  call void @rbsp_trailing_bits(ptr noundef nonnull %rbsp) #4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool1.not = icmp eq i32 %21, 0
  br i1 %tobool1.not, label %if.end4, label %nal_h264_write_start_code_prefix.exit.cleanup_crit_edge

nal_h264_write_start_code_prefix.exit.cleanup_crit_edge: ; preds = %nal_h264_write_start_code_prefix.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %nal_h264_write_start_code_prefix.exit
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %0, align 4
  %sub = add i32 %23, 7
  %div9 = lshr i32 %sub, 3
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %nal_h264_write_start_code_prefix.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %div9, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ %21, %nal_h264_write_start_code_prefix.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nal_unit_type) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nal_ref_idc) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %forbidden_zero_bit) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %rbsp) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nal_h264_rbsp_pps(ptr noundef %rbsp, ptr noundef %pps) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rbsp_uev(ptr noundef %rbsp, ptr noundef %pps) #4
  %seq_parameter_set_id = getelementptr inbounds %struct.nal_h264_pps, ptr %pps, i32 0, i32 1
  tail call void @rbsp_uev(ptr noundef %rbsp, ptr noundef %seq_parameter_set_id) #4
  %entropy_coding_mode_flag = getelementptr inbounds %struct.nal_h264_pps, ptr %pps, i32 0, i32 2
  tail call void @rbsp_bit(ptr noundef %rbsp, ptr noundef %entropy_coding_mode_flag) #4
  %bottom_field_pic_order_in_frame_present_flag = getelementptr inbounds %struct.nal_h264_pps, ptr %pps, i32 0, i32 3
  tail call void @rbsp_bit(ptr noundef %rbsp, ptr noundef %bottom_field_pic_order_in_frame_present_flag) #4
  %num_slice_groups_minus1 = getelementptr inbounds %struct.nal_h264_pps, ptr %pps, i32 0, i32 4
  tail call void @rbsp_uev(ptr noundef %rbsp, ptr noundef %num_slice_groups_minus1) #4
  %0 = ptrtoint ptr %num_slice_groups_minus1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_slice_groups_minus1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  %slice_group_map_type = getelementptr inbounds %struct.nal_h264_pps, ptr %pps, i32 0, i32 5
  tail call void @rbsp_uev(ptr noundef %rbsp, ptr noundef %slice_group_map_type) #4
  %2 = ptrtoint ptr %slice_group_map_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %slice_group_map_type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %3, label %if.then.if.end_crit_edge [
    i32 0, label %for.cond.preheader
    i32 2, label %for.cond6.preheader
    i32 3, label %if.then.sw.bb15_crit_edge
    i32 4, label %if.then.sw.bb15_crit_edge143
    i32 5, label %if.then.sw.bb15_crit_edge144
    i32 6, label %sw.bb16
  ]

if.then.sw.bb15_crit_edge144:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb15

if.then.sw.bb15_crit_edge143:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb15

if.then.sw.bb15_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb15

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

for.cond6.preheader:                              ; preds = %if.then
  %5 = ptrtoint ptr %num_slice_groups_minus1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_slice_groups_minus1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp8131.not = icmp eq i32 %6, 0
  br i1 %cmp8131.not, label %for.cond6.preheader.if.end_crit_edge, label %for.body9.lr.ph

for.cond6.preheader.if.end_crit_edge:             ; preds = %for.cond6.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

for.body9.lr.ph:                                  ; preds = %for.cond6.preheader
  %7 = getelementptr inbounds %struct.nal_h264_pps, ptr %pps, i32 0, i32 6
  br label %for.body9

for.cond.preheader:                               ; preds = %if.then
  %8 = ptrtoint ptr %num_slice_groups_minus1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_slice_groups_minus1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp4133.not = icmp eq i32 %9, 0
  br i1 %cmp4133.not, label %for.cond.preheader.if.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %10 = getelementptr inbounds %struct.nal_h264_pps, ptr %pps, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0134 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x i32], ptr %10, i32 0, i32 %i.0134
  tail call void @rbsp_uev(ptr noundef %rbsp, ptr noundef %arrayidx) #4
  %inc = add nuw i32 %i.0134, 1
  %11 = ptrtoint ptr %num_slice_groups_minus1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_slice_groups_minus1, align 4
  %cmp4 = icmp ult i32 %inc, %12
  br i1 %cmp4, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body9:                                        ; preds = %for.body9.for.body9_crit_edge, %for.body9.lr.ph
  %i.1132 = phi i32 [ 0, %for.body9.lr.ph ], [ %inc13, %for.body9.for.body9_crit_edge ]
  %arrayidx10 = getelementptr [8 x i32], ptr %7, i32 0, i32 %i.1132
  tail call void @rbsp_uev(ptr noundef %rbsp, ptr noundef %arrayidx10) #4
  %arrayidx11 = getelementptr %struct.nal_h264_pps, ptr %pps, i32 0, i32 6, i32 0, i32 1, i32 %i.1132
  tail call void @rbsp_uev(ptr noundef %rbsp, ptr noundef %arrayidx11) #4
  %inc13 = add nuw i32 %i.1132, 1
  %13 = ptrtoint ptr %num_slice_groups_minus1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_slice_groups_minus1, align 4
  %cmp8 = icmp ult i32 %inc13, %14
  br i1 %cmp8, label %for.body9.for.body9_crit_edge, label %for.body9.if.end_crit_edge

for.body9.if.end_crit_edge:                       ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

for.body9.for.body9_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body9

sw.bb15:                                          ; preds = %if.then.sw.bb15_crit_edge, %if.then.sw.bb15_crit_edge143, %if.then.sw.bb15_crit_edge144
  %15 = getelementptr inbounds %struct.nal_h264_pps, ptr %pps, i32 0, i32 6
  tail call void @rbsp_bit(ptr noundef %rbsp, ptr noundef %15) #4
  %slice_group_change_rate_minus1 = getelementptr inbounds %struct.nal_h264_pps, ptr %pps, i32 0, i32 6, i32 0, i32 0, i32 1
  tail call void @rbsp_uev(ptr noundef %rbsp, ptr noundef %slice_group_change_rate_minus1) #4
  br label %if.end

sw.bb16:                                          ; preds = %if.then
  %16 = getelementptr inbounds %struct.nal_h264_pps, ptr %pps, i32 0, i32 6
  tail call void @rbsp_uev(ptr noundef %rbsp, ptr noundef %16) #4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp19129.not = icmp eq i32 %18, 0
  br i1 %cmp19129.not, label %sw.bb16.if.end_crit_edge, label %for.body20.lr.ph

sw.bb16.if.end_crit_edge:                         ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

for.body20.lr.ph:                                 ; preds = %sw.bb16
  %slice_group_id = getelementptr inbounds %struct.nal_h264_pps, ptr %pps, i32 0, i32 6, i32 0, i32 0, i32 1
  br label %for.body20

for.body20:                                       ; preds = %for.body20.for.body20_crit_edge, %for.body20.lr.ph
  %i.2130 = phi i32 [ 0, %for.body20.lr.ph ], [ %inc59, %for.body20.for.body20_crit_edge ]
  %19 = ptrtoint ptr %num_slice_groups_minus1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_slice_groups_minus1, align 4
  %21 = add i32 %20, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %21)
  %cmp.i = icmp ult i32 %21, -2
  %22 = tail call i32 @llvm.ctlz.i32(i32 %20, i1 true) #4, !range !22
  %add.i = sub nuw nsw i32 32, %22
  %cond56 = select i1 %cmp.i, i32 %add.i, i32 0
  %arrayidx57 = getelementptr [8 x i32], ptr %slice_group_id, i32 0, i32 %i.2130
  tail call void @rbsp_bits(ptr noundef %rbsp, i32 noundef %cond56, ptr noundef %arrayidx57) #4
  %inc59 = add nuw i32 %i.2130, 1
  %23 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %16, align 4
  %cmp19 = icmp ult i32 %inc59, %24
  br i1 %cmp19, label %for.body20.for.body20_crit_edge, label %for.body20.if.end_crit_edge

for.body20.if.end_crit_edge:                      ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

for.body20.for.body20_crit_edge:                  ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body20

if.end:                                           ; preds = %for.body20.if.end_crit_edge, %sw.bb16.if.end_crit_edge, %sw.bb15, %for.body9.if.end_crit_edge, %for.body.if.end_crit_edge, %for.cond.preheader.if.end_crit_edge, %for.cond6.preheader.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %num_ref_idx_l0_default_active_minus1 = getelementptr inbounds %struct.nal_h264_pps, ptr %pps, i32 0, i32 7
  tail call void @rbsp_uev(ptr noundef %rbsp, ptr noundef %num_ref_idx_l0_default_active_minus1) #4
  %num_ref_idx_l1_default_active_minus1 = getelementptr inbounds %struct.nal_h264_pps, ptr %pps, i32 0, i32 8
  tail call void @rbsp_uev(ptr noundef %rbsp, ptr noundef %num_ref_idx_l1_default_active_minus1) #4
  %weighted_pred_flag = getelementptr inbounds %struct.nal_h264_pps, ptr %pps, i32 0, i32 9
  tail call void @rbsp_bit(ptr noundef %rbsp, ptr noundef %weighted_pred_flag) #4
  %weighted_bipred_idc = getelementptr inbounds %struct.nal_h264_pps, ptr %pps, i32 0, i32 10
  tail call void @rbsp_bits(ptr noundef %rbsp, i32 noundef 2, ptr noundef %weighted_bipred_idc) #4
  %pic_init_qp_minus26 = getelementptr inbounds %struct.nal_h264_pps, ptr %pps, i32 0, i32 11
  tail call void @rbsp_sev(ptr noundef %rbsp, ptr noundef %pic_init_qp_minus26) #4
  %pic_init_qs_minus26 = getelementptr inbounds %struct.nal_h264_pps, ptr %pps, i32 0, i32 12
  tail call void @rbsp_sev(ptr noundef %rbsp, ptr noundef %pic_init_qs_minus26) #4
  %chroma_qp_index_offset = getelementptr inbounds %struct.nal_h264_pps, ptr %pps, i32 0, i32 13
  tail call void @rbsp_sev(ptr noundef %rbsp, ptr noundef %chroma_qp_index_offset) #4
  %deblocking_filter_control_present_flag = getelementptr inbounds %struct.nal_h264_pps, ptr %pps, i32 0, i32 14
  tail call void @rbsp_bit(ptr noundef %rbsp, ptr noundef %deblocking_filter_control_present_flag) #4
  %constrained_intra_pred_flag = getelementptr inbounds %struct.nal_h264_pps, ptr %pps, i32 0, i32 15
  tail call void @rbsp_bit(ptr noundef %rbsp, ptr noundef %constrained_intra_pred_flag) #4
  %redundant_pic_cnt_present_flag = getelementptr inbounds %struct.nal_h264_pps, ptr %pps, i32 0, i32 16
  tail call void @rbsp_bit(ptr noundef %rbsp, ptr noundef %redundant_pic_cnt_present_flag) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nal_h264_read_pps(ptr nocapture readnone %dev, ptr noundef %pps, ptr noundef %src, i32 noundef %n) #0 align 64 {
entry:
  %rbsp = alloca %struct.rbsp, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %rbsp) #4
  %0 = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 2
  %1 = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 5
  %tobool.not = icmp eq ptr %src, null
  %2 = call ptr @memset(ptr %rbsp, i32 255, i32 24)
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 1
  call void @rbsp_init(ptr noundef nonnull %rbsp, ptr noundef nonnull %src, i32 noundef %n, ptr noundef nonnull @read) #4
  %4 = ptrtoint ptr %rbsp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rbsp, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %0, align 4
  %sub.i = add i32 %7, 7
  %div38.i = lshr i32 %sub.i, 3
  %add.ptr.i = getelementptr i8, ptr %5, i32 %div38.i
  %add5.i = add nuw nsw i32 %div38.i, 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add5.i, i32 %9)
  %cmp.i = icmp ugt i32 %add5.i, %9
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -22, ptr %1, align 4
  br label %nal_h264_read_start_code_prefix.exit

if.end.i:                                         ; preds = %if.end
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp6.not.i = icmp eq i8 %12, 0
  br i1 %cmp6.not.i, label %lor.lhs.false.i, label %if.end.i.if.then22.i_crit_edge

if.end.i.if.then22.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then22.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %arrayidx8.i = getelementptr i8, ptr %add.ptr.i, i32 1
  %13 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx8.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp10.not.i = icmp eq i8 %14, 0
  br i1 %cmp10.not.i, label %lor.lhs.false12.i, label %lor.lhs.false.i.if.then22.i_crit_edge

lor.lhs.false.i.if.then22.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then22.i

lor.lhs.false12.i:                                ; preds = %lor.lhs.false.i
  %arrayidx13.i = getelementptr i8, ptr %add.ptr.i, i32 2
  %15 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx13.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp15.not.i = icmp eq i8 %16, 0
  br i1 %cmp15.not.i, label %lor.lhs.false17.i, label %lor.lhs.false12.i.if.then22.i_crit_edge

lor.lhs.false12.i.if.then22.i_crit_edge:          ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then22.i

lor.lhs.false17.i:                                ; preds = %lor.lhs.false12.i
  %arrayidx18.i = getelementptr i8, ptr %add.ptr.i, i32 3
  %17 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx18.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp20.not.i = icmp eq i8 %18, 1
  br i1 %cmp20.not.i, label %if.end24.i, label %lor.lhs.false17.i.if.then22.i_crit_edge

lor.lhs.false17.i.if.then22.i_crit_edge:          ; preds = %lor.lhs.false17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then22.i

if.then22.i:                                      ; preds = %lor.lhs.false17.i.if.then22.i_crit_edge, %lor.lhs.false12.i.if.then22.i_crit_edge, %lor.lhs.false.i.if.then22.i_crit_edge, %if.end.i.if.then22.i_crit_edge
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -22, ptr %1, align 4
  br label %nal_h264_read_start_code_prefix.exit

if.end24.i:                                       ; preds = %lor.lhs.false17.i
  call void @__sanitizer_cov_trace_pc() #6
  %add26.i = add i32 %7, 32
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add26.i, ptr %0, align 4
  br label %nal_h264_read_start_code_prefix.exit

nal_h264_read_start_code_prefix.exit:             ; preds = %if.end24.i, %if.then22.i, %if.then.i
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %0, align 4
  %add = add i32 %22, 8
  store i32 %add, ptr %0, align 4
  call fastcc void @nal_h264_rbsp_pps(ptr noundef nonnull %rbsp, ptr noundef %pps)
  call void @rbsp_trailing_bits(ptr noundef nonnull %rbsp) #4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool1.not = icmp eq i32 %24, 0
  br i1 %tobool1.not, label %if.end4, label %nal_h264_read_start_code_prefix.exit.cleanup_crit_edge

nal_h264_read_start_code_prefix.exit.cleanup_crit_edge: ; preds = %nal_h264_read_start_code_prefix.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %nal_h264_read_start_code_prefix.exit
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %0, align 4
  %sub = add i32 %26, 7
  %div8 = lshr i32 %sub, 3
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %nal_h264_read_start_code_prefix.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %div8, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ %24, %nal_h264_read_start_code_prefix.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %rbsp) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nal_h264_write_filler(ptr nocapture readnone %dev, ptr noundef %dest, i32 noundef %n) #0 align 64 {
entry:
  %rbsp = alloca %struct.rbsp, align 4
  %forbidden_zero_bit = alloca i32, align 4
  %nal_ref_idc = alloca i32, align 4
  %nal_unit_type = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %rbsp) #4
  %0 = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 1
  %1 = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 2
  %2 = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 5
  %3 = call ptr @memset(ptr %rbsp, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %forbidden_zero_bit) #4
  %4 = ptrtoint ptr %forbidden_zero_bit to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %forbidden_zero_bit, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nal_ref_idc) #4
  %5 = ptrtoint ptr %nal_ref_idc to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %nal_ref_idc, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nal_unit_type) #4
  %6 = ptrtoint ptr %nal_unit_type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 12, ptr %nal_unit_type, align 4
  %tobool.not = icmp eq ptr %dest, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @rbsp_init(ptr noundef nonnull %rbsp, ptr noundef nonnull %dest, i32 noundef %n, ptr noundef nonnull @write) #4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 4
  %sub.i = add i32 %8, 7
  %div21.i = lshr i32 %sub.i, 3
  %add5.i = add nuw nsw i32 %div21.i, 4
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add5.i, i32 %10)
  %cmp.i = icmp ugt i32 %add5.i, %10
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -22, ptr %2, align 4
  br label %nal_h264_write_start_code_prefix.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %rbsp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rbsp, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 %div21.i
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %add.ptr.i, align 1
  %arrayidx6.i = getelementptr i8, ptr %add.ptr.i, i32 1
  %15 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx6.i, align 1
  %arrayidx7.i = getelementptr i8, ptr %add.ptr.i, i32 2
  %16 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx7.i, align 1
  %arrayidx8.i = getelementptr i8, ptr %add.ptr.i, i32 3
  %17 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %arrayidx8.i, align 1
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %1, align 4
  %add10.i = add i32 %19, 32
  store i32 %add10.i, ptr %1, align 4
  br label %nal_h264_write_start_code_prefix.exit

nal_h264_write_start_code_prefix.exit:            ; preds = %if.end.i, %if.then.i
  call void @rbsp_bit(ptr noundef nonnull %rbsp, ptr noundef nonnull %forbidden_zero_bit) #4
  call void @rbsp_bits(ptr noundef nonnull %rbsp, i32 noundef 2, ptr noundef nonnull %nal_ref_idc) #4
  call void @rbsp_bits(ptr noundef nonnull %rbsp, i32 noundef 5, ptr noundef nonnull %nal_unit_type) #4
  %20 = ptrtoint ptr %rbsp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rbsp, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %1, align 4
  %sub.i7 = add i32 %23, 7
  %div14.i = lshr i32 %sub.i7, 3
  %add.ptr.i8 = getelementptr i8, ptr %21, i32 %div14.i
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %0, align 4
  %26 = xor i32 %div14.i, -1
  %sub6.i = add i32 %25, %26
  %27 = call ptr @memset(ptr %add.ptr.i8, i32 255, i32 %sub6.i)
  %mul.i = shl i32 %sub6.i, 3
  %28 = load i32, ptr %1, align 4
  %add8.i = add i32 %mul.i, %28
  store i32 %add8.i, ptr %1, align 4
  call void @rbsp_trailing_bits(ptr noundef nonnull %rbsp) #4
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %1, align 4
  %sub = add i32 %30, 7
  %div5 = lshr i32 %sub, 3
  br label %cleanup

cleanup:                                          ; preds = %nal_h264_write_start_code_prefix.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %div5, %nal_h264_write_start_code_prefix.exit ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nal_unit_type) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nal_ref_idc) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %forbidden_zero_bit) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %rbsp) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nal_h264_read_filler(ptr nocapture readnone %dev, ptr noundef %src, i32 noundef %n) #0 align 64 {
entry:
  %rbsp = alloca %struct.rbsp, align 4
  %forbidden_zero_bit = alloca i32, align 4
  %nal_ref_idc = alloca i32, align 4
  %nal_unit_type = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %rbsp) #4
  %0 = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 1
  %1 = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 2
  %2 = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 5
  %3 = call ptr @memset(ptr %rbsp, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %forbidden_zero_bit) #4
  %4 = ptrtoint ptr %forbidden_zero_bit to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %forbidden_zero_bit, align 4, !annotation !21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nal_ref_idc) #4
  %5 = ptrtoint ptr %nal_ref_idc to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %nal_ref_idc, align 4, !annotation !21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nal_unit_type) #4
  %6 = ptrtoint ptr %nal_unit_type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %nal_unit_type, align 4, !annotation !21
  %tobool.not = icmp eq ptr %src, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @rbsp_init(ptr noundef nonnull %rbsp, ptr noundef nonnull %src, i32 noundef %n, ptr noundef nonnull @read) #4
  %7 = ptrtoint ptr %rbsp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rbsp, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %1, align 4
  %sub.i = add i32 %10, 7
  %div38.i = lshr i32 %sub.i, 3
  %add.ptr.i = getelementptr i8, ptr %8, i32 %div38.i
  %add5.i = add nuw nsw i32 %div38.i, 4
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add5.i, i32 %12)
  %cmp.i = icmp ugt i32 %add5.i, %12
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -22, ptr %2, align 4
  br label %nal_h264_read_start_code_prefix.exit

if.end.i:                                         ; preds = %if.end
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp6.not.i = icmp eq i8 %15, 0
  br i1 %cmp6.not.i, label %lor.lhs.false.i, label %if.end.i.if.then22.i_crit_edge

if.end.i.if.then22.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then22.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %arrayidx8.i = getelementptr i8, ptr %add.ptr.i, i32 1
  %16 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx8.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp10.not.i = icmp eq i8 %17, 0
  br i1 %cmp10.not.i, label %lor.lhs.false12.i, label %lor.lhs.false.i.if.then22.i_crit_edge

lor.lhs.false.i.if.then22.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then22.i

lor.lhs.false12.i:                                ; preds = %lor.lhs.false.i
  %arrayidx13.i = getelementptr i8, ptr %add.ptr.i, i32 2
  %18 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx13.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp15.not.i = icmp eq i8 %19, 0
  br i1 %cmp15.not.i, label %lor.lhs.false17.i, label %lor.lhs.false12.i.if.then22.i_crit_edge

lor.lhs.false12.i.if.then22.i_crit_edge:          ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then22.i

lor.lhs.false17.i:                                ; preds = %lor.lhs.false12.i
  %arrayidx18.i = getelementptr i8, ptr %add.ptr.i, i32 3
  %20 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx18.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %21)
  %cmp20.not.i = icmp eq i8 %21, 1
  br i1 %cmp20.not.i, label %if.end24.i, label %lor.lhs.false17.i.if.then22.i_crit_edge

lor.lhs.false17.i.if.then22.i_crit_edge:          ; preds = %lor.lhs.false17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then22.i

if.then22.i:                                      ; preds = %lor.lhs.false17.i.if.then22.i_crit_edge, %lor.lhs.false12.i.if.then22.i_crit_edge, %lor.lhs.false.i.if.then22.i_crit_edge, %if.end.i.if.then22.i_crit_edge
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -22, ptr %2, align 4
  br label %nal_h264_read_start_code_prefix.exit

if.end24.i:                                       ; preds = %lor.lhs.false17.i
  call void @__sanitizer_cov_trace_pc() #6
  %add26.i = add i32 %10, 32
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add26.i, ptr %1, align 4
  br label %nal_h264_read_start_code_prefix.exit

nal_h264_read_start_code_prefix.exit:             ; preds = %if.end24.i, %if.then22.i, %if.then.i
  call void @rbsp_bit(ptr noundef nonnull %rbsp, ptr noundef nonnull %forbidden_zero_bit) #4
  call void @rbsp_bits(ptr noundef nonnull %rbsp, i32 noundef 2, ptr noundef nonnull %nal_ref_idc) #4
  call void @rbsp_bits(ptr noundef nonnull %rbsp, i32 noundef 5, ptr noundef nonnull %nal_unit_type) #4
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool1.not = icmp eq i32 %25, 0
  br i1 %tobool1.not, label %if.end4, label %nal_h264_read_start_code_prefix.exit.cleanup_crit_edge

nal_h264_read_start_code_prefix.exit.cleanup_crit_edge: ; preds = %nal_h264_read_start_code_prefix.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %nal_h264_read_start_code_prefix.exit
  %26 = ptrtoint ptr %forbidden_zero_bit to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %forbidden_zero_bit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.not = icmp eq i32 %27, 0
  br i1 %cmp.not, label %lor.lhs.false, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end4
  %28 = ptrtoint ptr %nal_ref_idc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nal_ref_idc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp5.not = icmp eq i32 %29, 0
  br i1 %cmp5.not, label %lor.lhs.false6, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %30 = ptrtoint ptr %nal_unit_type to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nal_unit_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %31)
  %cmp7.not = icmp eq i32 %31, 12
  br i1 %cmp7.not, label %if.end9, label %lor.lhs.false6.cleanup_crit_edge

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false6
  %32 = ptrtoint ptr %rbsp to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rbsp, align 4
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %1, align 4
  %sub.i22 = add i32 %35, 7
  %div16.i = lshr i32 %sub.i22, 3
  %add.ptr.i23 = getelementptr i8, ptr %33, i32 %div16.i
  %36 = ptrtoint ptr %add.ptr.i23 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %add.ptr.i23, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %37)
  %cmp18.i = icmp eq i8 %37, -1
  br i1 %cmp18.i, label %while.body.lr.ph.i, label %if.end9.nal_h264_read_filler_data.exit_crit_edge

if.end9.nal_h264_read_filler_data.exit_crit_edge: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %nal_h264_read_filler_data.exit

while.body.lr.ph.i:                               ; preds = %if.end9
  %38 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %0, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i28.while.body.i_crit_edge, %while.body.lr.ph.i
  %p.019.i = phi ptr [ %add.ptr.i23, %while.body.lr.ph.i ], [ %incdec.ptr.i, %if.end.i28.while.body.i_crit_edge ]
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %1, align 4
  %sub4.i = add i32 %41, 7
  %div517.i = lshr i32 %sub4.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %div517.i, i32 %39)
  %cmp6.i = icmp ugt i32 %div517.i, %39
  br i1 %cmp6.i, label %if.then.i26, label %if.end.i28

if.then.i26:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %42 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -22, ptr %2, align 4
  br label %nal_h264_read_filler_data.exit

if.end.i28:                                       ; preds = %while.body.i
  %add3.i = add i32 %41, 8
  %incdec.ptr.i = getelementptr i8, ptr %p.019.i, i32 1
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %add3.i, ptr %1, align 4
  %44 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %incdec.ptr.i, align 1
  %cmp.i27 = icmp eq i8 %45, -1
  br i1 %cmp.i27, label %if.end.i28.while.body.i_crit_edge, label %if.end.i28.nal_h264_read_filler_data.exit_crit_edge

if.end.i28.nal_h264_read_filler_data.exit_crit_edge: ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #6
  br label %nal_h264_read_filler_data.exit

if.end.i28.while.body.i_crit_edge:                ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

nal_h264_read_filler_data.exit:                   ; preds = %if.end.i28.nal_h264_read_filler_data.exit_crit_edge, %if.then.i26, %if.end9.nal_h264_read_filler_data.exit_crit_edge
  call void @rbsp_trailing_bits(ptr noundef nonnull %rbsp) #4
  %46 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool11.not = icmp eq i32 %47, 0
  br i1 %tobool11.not, label %if.end14, label %nal_h264_read_filler_data.exit.cleanup_crit_edge

nal_h264_read_filler_data.exit.cleanup_crit_edge: ; preds = %nal_h264_read_filler_data.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end14:                                         ; preds = %nal_h264_read_filler_data.exit
  call void @__sanitizer_cov_trace_pc() #6
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %1, align 4
  %sub = add i32 %49, 7
  %div20 = lshr i32 %sub, 3
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %nal_h264_read_filler_data.exit.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %nal_h264_read_start_code_prefix.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %div20, %if.end14 ], [ -22, %entry.cleanup_crit_edge ], [ %25, %nal_h264_read_start_code_prefix.exit.cleanup_crit_edge ], [ -22, %lor.lhs.false6.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ %47, %nal_h264_read_filler_data.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nal_unit_type) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nal_ref_idc) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %forbidden_zero_bit) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %rbsp) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rbsp_uev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rbsp_sev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nal_h264_rbsp_hrd_parameters(ptr noundef %rbsp, ptr noundef %hrd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %hrd, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %error = getelementptr inbounds %struct.rbsp, ptr %rbsp, i32 0, i32 5
  %0 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -22, ptr %error, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @rbsp_uev(ptr noundef %rbsp, ptr noundef nonnull %hrd) #4
  %bit_rate_scale = getelementptr inbounds %struct.nal_h264_hrd_parameters, ptr %hrd, i32 0, i32 1
  tail call void @rbsp_bits(ptr noundef %rbsp, i32 noundef 4, ptr noundef %bit_rate_scale) #4
  %cpb_size_scale = getelementptr inbounds %struct.nal_h264_hrd_parameters, ptr %hrd, i32 0, i32 2
  tail call void @rbsp_bits(ptr noundef %rbsp, i32 noundef 4, ptr noundef %cpb_size_scale) #4
  %1 = getelementptr inbounds %struct.nal_h264_hrd_parameters, ptr %hrd, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %i.029 = phi i32 [ 0, %if.end ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x i32], ptr %1, i32 0, i32 %i.029
  tail call void @rbsp_uev(ptr noundef %rbsp, ptr noundef %arrayidx) #4
  %arrayidx2 = getelementptr %struct.nal_h264_hrd_parameters, ptr %hrd, i32 0, i32 3, i32 1, i32 %i.029
  tail call void @rbsp_uev(ptr noundef %rbsp, ptr noundef %arrayidx2) #4
  %arrayidx3 = getelementptr %struct.nal_h264_hrd_parameters, ptr %hrd, i32 0, i32 3, i32 2, i32 %i.029
  tail call void @rbsp_bit(ptr noundef %rbsp, ptr noundef %arrayidx3) #4
  %inc = add i32 %i.029, 1
  %2 = ptrtoint ptr %hrd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hrd, align 4
  %cmp.not = icmp ugt i32 %inc, %3
  br i1 %cmp.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %initial_cpb_removal_delay_length_minus1 = getelementptr inbounds %struct.nal_h264_hrd_parameters, ptr %hrd, i32 0, i32 4
  tail call void @rbsp_bits(ptr noundef %rbsp, i32 noundef 5, ptr noundef %initial_cpb_removal_delay_length_minus1) #4
  %cpb_removal_delay_length_minus1 = getelementptr inbounds %struct.nal_h264_hrd_parameters, ptr %hrd, i32 0, i32 5
  tail call void @rbsp_bits(ptr noundef %rbsp, i32 noundef 5, ptr noundef %cpb_removal_delay_length_minus1) #4
  %dpb_output_delay_length_minus1 = getelementptr inbounds %struct.nal_h264_hrd_parameters, ptr %hrd, i32 0, i32 6
  tail call void @rbsp_bits(ptr noundef %rbsp, i32 noundef 5, ptr noundef %dpb_output_delay_length_minus1) #4
  %time_offset_length = getelementptr inbounds %struct.nal_h264_hrd_parameters, ptr %hrd, i32 0, i32 7
  tail call void @rbsp_bits(ptr noundef %rbsp, i32 noundef 5, ptr noundef %time_offset_length) #4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @__ksymtab_nal_h264_write_sps, !1, !"__ksymtab_nal_h264_write_sps", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/allegro-dvt/nal-h264.c", i32 381, i32 1}
!2 = !{ptr @__ksymtab_nal_h264_read_sps, !3, !"__ksymtab_nal_h264_read_sps", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/allegro-dvt/nal-h264.c", i32 428, i32 1}
!4 = !{ptr @__ksymtab_nal_h264_write_pps, !5, !"__ksymtab_nal_h264_write_pps", i1 false, i1 false}
!5 = !{!"../drivers/media/platform/allegro-dvt/nal-h264.c", i32 473, i32 1}
!6 = !{ptr @__ksymtab_nal_h264_read_pps, !7, !"__ksymtab_nal_h264_read_pps", i1 false, i1 false}
!7 = !{!"../drivers/media/platform/allegro-dvt/nal-h264.c", i32 510, i32 1}
!8 = !{ptr @__ksymtab_nal_h264_write_filler, !9, !"__ksymtab_nal_h264_write_filler", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/allegro-dvt/nal-h264.c", i32 553, i32 1}
!10 = !{ptr @__ksymtab_nal_h264_read_filler, !11, !"__ksymtab_nal_h264_read_filler", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/allegro-dvt/nal-h264.c", i32 605, i32 1}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{!"auto-init"}
!22 = !{i32 0, i32 33}
