; ModuleID = '/llk/IR_all_yes/lib/hexdump.c_pt.bc'
source_filename = "../lib/hexdump.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+hex_asc\22, \22a\22\09"
module asm "\09.weak\09__crc_hex_asc\09\09\09\09"
module asm "\09.long\09__crc_hex_asc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hex_asc:\09\09\09\09\09"
module asm "\09.asciz \09\22hex_asc\22\09\09\09\09\09"
module asm "__kstrtabns_hex_asc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+hex_asc_upper\22, \22a\22\09"
module asm "\09.weak\09__crc_hex_asc_upper\09\09\09\09"
module asm "\09.long\09__crc_hex_asc_upper\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hex_asc_upper:\09\09\09\09\09"
module asm "\09.asciz \09\22hex_asc_upper\22\09\09\09\09\09"
module asm "__kstrtabns_hex_asc_upper:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+hex_to_bin\22, \22a\22\09"
module asm "\09.weak\09__crc_hex_to_bin\09\09\09\09"
module asm "\09.long\09__crc_hex_to_bin\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hex_to_bin:\09\09\09\09\09"
module asm "\09.asciz \09\22hex_to_bin\22\09\09\09\09\09"
module asm "__kstrtabns_hex_to_bin:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+hex2bin\22, \22a\22\09"
module asm "\09.weak\09__crc_hex2bin\09\09\09\09"
module asm "\09.long\09__crc_hex2bin\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hex2bin:\09\09\09\09\09"
module asm "\09.asciz \09\22hex2bin\22\09\09\09\09\09"
module asm "__kstrtabns_hex2bin:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+bin2hex\22, \22a\22\09"
module asm "\09.weak\09__crc_bin2hex\09\09\09\09"
module asm "\09.long\09__crc_bin2hex\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bin2hex:\09\09\09\09\09"
module asm "\09.asciz \09\22bin2hex\22\09\09\09\09\09"
module asm "__kstrtabns_bin2hex:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+hex_dump_to_buffer\22, \22a\22\09"
module asm "\09.weak\09__crc_hex_dump_to_buffer\09\09\09\09"
module asm "\09.long\09__crc_hex_dump_to_buffer\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hex_dump_to_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22hex_dump_to_buffer\22\09\09\09\09\09"
module asm "__kstrtabns_hex_dump_to_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+print_hex_dump\22, \22a\22\09"
module asm "\09.weak\09__crc_print_hex_dump\09\09\09\09"
module asm "\09.long\09__crc_print_hex_dump\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_print_hex_dump:\09\09\09\09\09"
module asm "\09.asciz \09\22print_hex_dump\22\09\09\09\09\09"
module asm "__kstrtabns_print_hex_dump:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }

@hex_asc = dso_local constant { [17 x i8], [47 x i8] } { [17 x i8] c"0123456789abcdef\00", [47 x i8] zeroinitializer }, align 32
@__kstrtab_hex_asc = external dso_local constant [0 x i8], align 1
@__kstrtabns_hex_asc = external dso_local constant [0 x i8], align 1
@__ksymtab_hex_asc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hex_asc to i32), ptr @__kstrtab_hex_asc, ptr @__kstrtabns_hex_asc }, section "___ksymtab+hex_asc", align 4
@hex_asc_upper = dso_local constant { [17 x i8], [47 x i8] } { [17 x i8] c"0123456789ABCDEF\00", [47 x i8] zeroinitializer }, align 32
@__kstrtab_hex_asc_upper = external dso_local constant [0 x i8], align 1
@__kstrtabns_hex_asc_upper = external dso_local constant [0 x i8], align 1
@__ksymtab_hex_asc_upper = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hex_asc_upper to i32), ptr @__kstrtab_hex_asc_upper, ptr @__kstrtabns_hex_asc_upper }, section "___ksymtab+hex_asc_upper", align 4
@__kstrtab_hex_to_bin = external dso_local constant [0 x i8], align 1
@__kstrtabns_hex_to_bin = external dso_local constant [0 x i8], align 1
@__ksymtab_hex_to_bin = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hex_to_bin to i32), ptr @__kstrtab_hex_to_bin, ptr @__kstrtabns_hex_to_bin }, section "___ksymtab+hex_to_bin", align 4
@__kstrtab_hex2bin = external dso_local constant [0 x i8], align 1
@__kstrtabns_hex2bin = external dso_local constant [0 x i8], align 1
@__ksymtab_hex2bin = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hex2bin to i32), ptr @__kstrtab_hex2bin, ptr @__kstrtabns_hex2bin }, section "___ksymtab+hex2bin", align 4
@__kstrtab_bin2hex = external dso_local constant [0 x i8], align 1
@__kstrtabns_bin2hex = external dso_local constant [0 x i8], align 1
@__ksymtab_bin2hex = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bin2hex to i32), ptr @__kstrtab_bin2hex, ptr @__kstrtabns_bin2hex }, section "___ksymtab+bin2hex", align 4
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s%16.16llx\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s%8.8x\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s%4.4x\00", [24 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@__kstrtab_hex_dump_to_buffer = external dso_local constant [0 x i8], align 1
@__kstrtabns_hex_dump_to_buffer = external dso_local constant [0 x i8], align 1
@__ksymtab_hex_dump_to_buffer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hex_dump_to_buffer to i32), ptr @__kstrtab_hex_dump_to_buffer, ptr @__kstrtabns_hex_dump_to_buffer }, section "___ksymtab+hex_dump_to_buffer", align 4
@print_hex_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s%s%p: %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"print_hex_dump\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lib/hexdump.c\00", [18 x i8] zeroinitializer }, align 32
@print_hex_dump._entry_ptr = internal global ptr @print_hex_dump._entry, section ".printk_index", align 4
@print_hex_dump._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.6, ptr @.str.7, i32 264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s%s%.8x: %s\0A\00", [18 x i8] zeroinitializer }, align 32
@print_hex_dump._entry_ptr.10 = internal global ptr @print_hex_dump._entry.8, section ".printk_index", align 4
@print_hex_dump._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.6, ptr @.str.7, i32 267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s%s%s\0A\00", [24 x i8] zeroinitializer }, align 32
@print_hex_dump._entry_ptr.13 = internal global ptr @print_hex_dump._entry.11, section ".printk_index", align 4
@__kstrtab_print_hex_dump = external dso_local constant [0 x i8], align 1
@__kstrtabns_print_hex_dump = external dso_local constant [0 x i8], align 1
@__ksymtab_print_hex_dump = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @print_hex_dump to i32), ptr @__kstrtab_print_hex_dump, ptr @__kstrtabns_print_hex_dump }, section "___ksymtab+print_hex_dump", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.15 = private unnamed_addr constant [8 x i8] c"hex_asc\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 14, i32 12 }
@___asan_gen_.18 = private unnamed_addr constant [14 x i8] c"hex_asc_upper\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 16, i32 12 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 140, i32 12 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 140, i32 31 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 140, i32 37 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 151, i32 12 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 162, i32 12 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 260, i32 4 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 264, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.58 = private constant [17 x i8] c"../lib/hexdump.c\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 267, i32 4 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__ksymtab_bin2hex, ptr @__ksymtab_hex2bin, ptr @__ksymtab_hex_asc, ptr @__ksymtab_hex_asc_upper, ptr @__ksymtab_hex_dump_to_buffer, ptr @__ksymtab_hex_to_bin, ptr @__ksymtab_print_hex_dump, ptr @print_hex_dump._entry, ptr @print_hex_dump._entry.11, ptr @print_hex_dump._entry.8, ptr @print_hex_dump._entry_ptr, ptr @print_hex_dump._entry_ptr.10, ptr @print_hex_dump._entry_ptr.13, ptr @hex_asc, ptr @hex_asc_upper, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hex_asc to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hex_asc_upper to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_hex_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_hex_dump._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_hex_dump._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @hex_to_bin(i8 noundef zeroext %ch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %ch to i32
  %0 = add i8 %ch, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %0)
  %1 = icmp ult i8 %0, 10
  br i1 %1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sub = add nsw i32 %conv, -48
  br label %return

if.end:                                           ; preds = %entry
  %arrayidx.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp.not.i = icmp eq i8 %4, 0
  %sub.i = add i8 %ch, 32
  %spec.select.i = select i1 %cmp.not.i, i8 %ch, i8 %sub.i
  %5 = add i8 %spec.select.i, -97
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %5)
  %6 = icmp ult i8 %5, 6
  br i1 %6, label %if.then13, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv6 = zext i8 %spec.select.i to i32
  %add = add nsw i32 %conv6, -87
  br label %return

return:                                           ; preds = %if.then13, %if.end.return_crit_edge, %if.then
  %retval.0 = phi i32 [ %sub, %if.then ], [ %add, %if.then13 ], [ -1, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hex2bin(ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %src, i32 noundef %count) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not30 = icmp eq i32 %count, 0
  br i1 %tobool.not30, label %entry.return_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %entry.while.body_crit_edge
  %dec33.in = phi i32 [ %dec33, %cleanup.while.body_crit_edge ], [ %count, %entry.while.body_crit_edge ]
  %src.addr.032 = phi ptr [ %incdec.ptr1, %cleanup.while.body_crit_edge ], [ %src, %entry.while.body_crit_edge ]
  %dst.addr.031 = phi ptr [ %incdec.ptr4, %cleanup.while.body_crit_edge ], [ %dst, %entry.while.body_crit_edge ]
  %dec33 = add i32 %dec33.in, -1
  %incdec.ptr = getelementptr i8, ptr %src.addr.032, i32 1
  %0 = ptrtoint ptr %src.addr.032 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %src.addr.032, align 1
  %conv.i = zext i8 %1 to i32
  %2 = add i8 %1, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %2)
  %3 = icmp ult i8 %2, 10
  br i1 %3, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = add nsw i32 %conv.i, -48
  br label %hex_to_bin.exit

if.end.i:                                         ; preds = %while.body
  %arrayidx.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i.i, align 1
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp.not.i.i = icmp eq i8 %6, 0
  %sub.i.i = add i8 %1, 32
  %spec.select.i.i = select i1 %cmp.not.i.i, i8 %1, i8 %sub.i.i
  %7 = add i8 %spec.select.i.i, -97
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %7)
  %8 = icmp ult i8 %7, 6
  br i1 %8, label %if.then13.i, label %if.end.i.hex_to_bin.exit_crit_edge

if.end.i.hex_to_bin.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hex_to_bin.exit

if.then13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i = zext i8 %spec.select.i.i to i32
  %add.i = add nsw i32 %conv6.i, -87
  br label %hex_to_bin.exit

hex_to_bin.exit:                                  ; preds = %if.then13.i, %if.end.i.hex_to_bin.exit_crit_edge, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %add.i, %if.then13.i ], [ -1, %if.end.i.hex_to_bin.exit_crit_edge ]
  %incdec.ptr1 = getelementptr i8, ptr %src.addr.032, i32 2
  %9 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %incdec.ptr, align 1
  %conv.i9 = zext i8 %10 to i32
  %11 = add i8 %10, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %11)
  %12 = icmp ult i8 %11, 10
  br i1 %12, label %if.then.i11, label %if.end.i16

if.then.i11:                                      ; preds = %hex_to_bin.exit
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i10 = add nsw i32 %conv.i9, -48
  br label %hex_to_bin.exit21

if.end.i16:                                       ; preds = %hex_to_bin.exit
  %arrayidx.i.i12 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i9
  %13 = ptrtoint ptr %arrayidx.i.i12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i.i12, align 1
  %15 = and i8 %14, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp.not.i.i13 = icmp eq i8 %15, 0
  %sub.i.i14 = add i8 %10, 32
  %spec.select.i.i15 = select i1 %cmp.not.i.i13, i8 %10, i8 %sub.i.i14
  %16 = add i8 %spec.select.i.i15, -97
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %16)
  %17 = icmp ult i8 %16, 6
  br i1 %17, label %if.then13.i19, label %if.end.i16.return_crit_edge

if.end.i16.return_crit_edge:                      ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then13.i19:                                    ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i17 = zext i8 %spec.select.i.i15 to i32
  %add.i18 = add nsw i32 %conv6.i17, -87
  br label %hex_to_bin.exit21

hex_to_bin.exit21:                                ; preds = %if.then13.i19, %if.then.i11
  %retval.0.i20 = phi i32 [ %sub.i10, %if.then.i11 ], [ %add.i18, %if.then13.i19 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i20)
  %cmp3 = icmp slt i32 %retval.0.i20, 0
  %or.cond = select i1 %cmp, i1 true, i1 %cmp3
  br i1 %or.cond, label %hex_to_bin.exit21.return_crit_edge, label %cleanup

hex_to_bin.exit21.return_crit_edge:               ; preds = %hex_to_bin.exit21
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

cleanup:                                          ; preds = %hex_to_bin.exit21
  %shl = shl nuw nsw i32 %retval.0.i, 4
  %or = or i32 %retval.0.i20, %shl
  %conv = trunc i32 %or to i8
  %incdec.ptr4 = getelementptr i8, ptr %dst.addr.031, i32 1
  %18 = ptrtoint ptr %dst.addr.031 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv, ptr %dst.addr.031, align 1
  %tobool.not = icmp eq i32 %dec33, 0
  br i1 %tobool.not, label %cleanup.return_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

cleanup.return_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %cleanup.return_crit_edge, %hex_to_bin.exit21.return_crit_edge, %if.end.i16.return_crit_edge, %entry.return_crit_edge
  %retval.2 = phi i32 [ 0, %entry.return_crit_edge ], [ -22, %if.end.i16.return_crit_edge ], [ -22, %hex_to_bin.exit21.return_crit_edge ], [ 0, %cleanup.return_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bin2hex(ptr noundef writeonly %dst, ptr nocapture noundef readonly %src, i32 noundef %count) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not2 = icmp eq i32 %count, 0
  br i1 %tobool.not2, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %_src.05 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %src, %entry.while.body_crit_edge ]
  %count.addr.04 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %count, %entry.while.body_crit_edge ]
  %dst.addr.03 = phi ptr [ %incdec.ptr4.i, %while.body.while.body_crit_edge ], [ %dst, %entry.while.body_crit_edge ]
  %dec = add i32 %count.addr.04, -1
  %incdec.ptr = getelementptr i8, ptr %_src.05, i32 1
  %0 = ptrtoint ptr %_src.05 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %_src.05, align 1
  %conv.i = zext i8 %1 to i32
  %2 = lshr i32 %conv.i, 4
  %arrayidx.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %2
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i, align 1
  %incdec.ptr.i = getelementptr i8, ptr %dst.addr.03, i32 1
  %5 = ptrtoint ptr %dst.addr.03 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %dst.addr.03, align 1
  %and2.i = and i32 %conv.i, 15
  %arrayidx3.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %and2.i
  %6 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx3.i, align 1
  %incdec.ptr4.i = getelementptr i8, ptr %dst.addr.03, i32 2
  %8 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %incdec.ptr.i, align 1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %dst.addr.0.lcssa = phi ptr [ %dst, %entry.while.end_crit_edge ], [ %incdec.ptr4.i, %while.body.while.end_crit_edge ]
  ret ptr %dst.addr.0.lcssa
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hex_dump_to_buffer(ptr nocapture noundef readonly %buf, i32 noundef %len, i32 noundef %rowsize, i32 noundef %groupsize, ptr nocapture noundef writeonly %linebuf, i32 noundef %linebuflen, i1 noundef zeroext %ascii) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %rowsize)
  %cmp.not = icmp eq i32 %rowsize, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %rowsize)
  %cmp1.not = icmp eq i32 %rowsize, 32
  %spec.store.select = select i1 %cmp1.not, i32 32, i32 16
  %rowsize.addr.0 = select i1 %cmp.not, i32 16, i32 %spec.store.select
  %0 = tail call i32 @llvm.umin.i32(i32 %rowsize.addr.0, i32 %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %groupsize)
  %cmp.not.i = icmp eq i32 %groupsize, 0
  br i1 %cmp.not.i, label %entry.is_power_of_2.exit_crit_edge, label %land.rhs.i

entry.is_power_of_2.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %is_power_of_2.exit

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = tail call i32 @llvm.ctpop.i32(i32 %groupsize) #10, !range !50
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp1.i = icmp ugt i32 %1, 1
  br label %is_power_of_2.exit

is_power_of_2.exit:                               ; preds = %land.rhs.i, %entry.is_power_of_2.exit_crit_edge
  %2 = phi i1 [ true, %entry.is_power_of_2.exit_crit_edge ], [ %cmp1.i, %land.rhs.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %groupsize)
  %cmp5 = icmp sgt i32 %groupsize, 8
  %or.cond = or i1 %cmp5, %2
  %groupsize.addr.0 = select i1 %or.cond, i32 1, i32 %groupsize
  %rem = urem i32 %0, %groupsize.addr.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp8.not = icmp eq i32 %rem, 0
  %spec.store.select182 = select i1 %cmp8.not, i32 %groupsize.addr.0, i32 1
  %div = udiv i32 %0, %spec.store.select182
  %mul = shl nuw nsw i32 %rowsize.addr.0, 1
  %div11 = sdiv i32 %rowsize.addr.0, %spec.store.select182
  %add = add nsw i32 %div11, %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %linebuflen)
  %tobool.not = icmp eq i32 %linebuflen, 0
  br i1 %tobool.not, label %is_power_of_2.exit.overflow1_crit_edge, label %if.end14

is_power_of_2.exit.overflow1_crit_edge:           ; preds = %is_power_of_2.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %overflow1

if.end14:                                         ; preds = %is_power_of_2.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool15.not = icmp eq i32 %0, 0
  br i1 %tobool15.not, label %if.end14.nil_crit_edge, label %if.end17

if.end14.nil_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %nil

if.end17:                                         ; preds = %if.end14
  %3 = zext i32 %spec.store.select182 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %spec.store.select182, label %if.end17.for.body85_crit_edge [
    i32 8, label %for.cond.preheader
    i32 4, label %for.cond31.preheader
    i32 2, label %for.cond57.preheader
  ]

if.end17.for.body85_crit_edge:                    ; preds = %if.end17
  br label %for.body85

for.cond57.preheader:                             ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp58309.not = icmp ult i32 %0, 2
  br i1 %cmp58309.not, label %for.cond57.preheader.if.end120_crit_edge, label %for.body59.preheader

for.cond57.preheader.if.end120_crit_edge:         ; preds = %for.cond57.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120

for.body59.preheader:                             ; preds = %for.cond57.preheader
  %umax = call i32 @llvm.umax.i32(i32 %div, i32 1)
  br label %for.body59

for.cond31.preheader:                             ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %0)
  %cmp32312.not = icmp ult i32 %0, 4
  br i1 %cmp32312.not, label %for.cond31.preheader.if.end120_crit_edge, label %for.body33.preheader

for.cond31.preheader.if.end120_crit_edge:         ; preds = %for.cond31.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120

for.body33.preheader:                             ; preds = %for.cond31.preheader
  %umax339 = call i32 @llvm.umax.i32(i32 %div, i32 1)
  br label %for.body33

for.cond.preheader:                               ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %0)
  %cmp20316.not = icmp ult i32 %0, 8
  br i1 %cmp20316.not, label %for.cond.preheader.if.end120_crit_edge, label %for.body.preheader

for.cond.preheader.if.end120_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120

for.body.preheader:                               ; preds = %for.cond.preheader
  %umax341 = call i32 @llvm.umax.i32(i32 %div, i32 1)
  br label %for.body

for.body:                                         ; preds = %if.end27.for.body_crit_edge, %for.body.preheader
  %lx.0318 = phi i32 [ %add28, %if.end27.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %j.0317 = phi i32 [ %inc, %if.end27.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %add.ptr = getelementptr i8, ptr %linebuf, i32 %lx.0318
  %sub = sub i32 %linebuflen, %lx.0318
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.0317)
  %tobool21.not = icmp eq i32 %j.0317, 0
  %cond = select i1 %tobool21.not, ptr @.str.2, ptr @.str.1
  %add.ptr22 = getelementptr i64, ptr %buf, i32 %j.0317
  %4 = ptrtoint ptr %add.ptr22 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %add.ptr22, align 1
  %call23 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str, ptr noundef nonnull %cond, i64 noundef %5)
  call void @__sanitizer_cov_trace_cmp4(i32 %call23, i32 %sub)
  %cmp25.not = icmp ult i32 %call23, %sub
  br i1 %cmp25.not, label %if.end27, label %for.body.overflow1_crit_edge

for.body.overflow1_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %overflow1

if.end27:                                         ; preds = %for.body
  %add28 = add i32 %call23, %lx.0318
  %inc = add nuw nsw i32 %j.0317, 1
  %exitcond342.not = icmp eq i32 %inc, %umax341
  br i1 %exitcond342.not, label %if.end27.if.end120_crit_edge, label %if.end27.for.body_crit_edge

if.end27.for.body_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end27.if.end120_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120

for.body33:                                       ; preds = %if.end46.for.body33_crit_edge, %for.body33.preheader
  %lx.1314 = phi i32 [ %add47, %if.end46.for.body33_crit_edge ], [ 0, %for.body33.preheader ]
  %j.1313 = phi i32 [ %inc49, %if.end46.for.body33_crit_edge ], [ 0, %for.body33.preheader ]
  %add.ptr34 = getelementptr i8, ptr %linebuf, i32 %lx.1314
  %sub35 = sub i32 %linebuflen, %lx.1314
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.1313)
  %tobool36.not = icmp eq i32 %j.1313, 0
  %cond37 = select i1 %tobool36.not, ptr @.str.2, ptr @.str.1
  %add.ptr39 = getelementptr i32, ptr %buf, i32 %j.1313
  %6 = ptrtoint ptr %add.ptr39 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %add.ptr39, align 1
  %call42 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr34, i32 noundef %sub35, ptr noundef nonnull @.str.3, ptr noundef nonnull %cond37, i32 noundef %7)
  call void @__sanitizer_cov_trace_cmp4(i32 %call42, i32 %sub35)
  %cmp44.not = icmp ult i32 %call42, %sub35
  br i1 %cmp44.not, label %if.end46, label %for.body33.overflow1_crit_edge

for.body33.overflow1_crit_edge:                   ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #9
  br label %overflow1

if.end46:                                         ; preds = %for.body33
  %add47 = add i32 %call42, %lx.1314
  %inc49 = add nuw nsw i32 %j.1313, 1
  %exitcond340.not = icmp eq i32 %inc49, %umax339
  br i1 %exitcond340.not, label %if.end46.if.end120_crit_edge, label %if.end46.for.body33_crit_edge

if.end46.for.body33_crit_edge:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body33

if.end46.if.end120_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120

for.body59:                                       ; preds = %if.end73.for.body59_crit_edge, %for.body59.preheader
  %lx.2311 = phi i32 [ %add74, %if.end73.for.body59_crit_edge ], [ 0, %for.body59.preheader ]
  %j.2310 = phi i32 [ %inc76, %if.end73.for.body59_crit_edge ], [ 0, %for.body59.preheader ]
  %add.ptr60 = getelementptr i8, ptr %linebuf, i32 %lx.2311
  %sub61 = sub i32 %linebuflen, %lx.2311
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.2310)
  %tobool62.not = icmp eq i32 %j.2310, 0
  %cond63 = select i1 %tobool62.not, ptr @.str.2, ptr @.str.1
  %add.ptr65 = getelementptr i16, ptr %buf, i32 %j.2310
  %8 = ptrtoint ptr %add.ptr65 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %add.ptr65, align 1
  %conv = zext i16 %9 to i32
  %call68 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr60, i32 noundef %sub61, ptr noundef nonnull @.str.4, ptr noundef nonnull %cond63, i32 noundef %conv)
  call void @__sanitizer_cov_trace_cmp4(i32 %call68, i32 %sub61)
  %cmp70.not = icmp ult i32 %call68, %sub61
  br i1 %cmp70.not, label %if.end73, label %for.body59.overflow1_crit_edge

for.body59.overflow1_crit_edge:                   ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #9
  br label %overflow1

if.end73:                                         ; preds = %for.body59
  %add74 = add i32 %call68, %lx.2311
  %inc76 = add nuw nsw i32 %j.2310, 1
  %exitcond.not = icmp eq i32 %inc76, %umax
  br i1 %exitcond.not, label %if.end73.if.end120_crit_edge, label %if.end73.for.body59_crit_edge

if.end73.for.body59_crit_edge:                    ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body59

if.end73.if.end120_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120

for.body85:                                       ; preds = %if.end109.for.body85_crit_edge, %if.end17.for.body85_crit_edge
  %lx.3322 = phi i32 [ %add95, %if.end109.for.body85_crit_edge ], [ 0, %if.end17.for.body85_crit_edge ]
  %j.3321 = phi i32 [ %inc113, %if.end109.for.body85_crit_edge ], [ 0, %if.end17.for.body85_crit_edge ]
  %add86 = add nuw nsw i32 %lx.3322, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add86, i32 %linebuflen)
  %cmp87 = icmp ugt i32 %add86, %linebuflen
  br i1 %cmp87, label %for.body85.overflow2_crit_edge, label %if.end90

for.body85.overflow2_crit_edge:                   ; preds = %for.body85
  call void @__sanitizer_cov_trace_pc() #9
  br label %overflow2

if.end90:                                         ; preds = %for.body85
  %arrayidx = getelementptr i8, ptr %buf, i32 %j.3321
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %conv91 = zext i8 %11 to i32
  %12 = lshr i32 %conv91, 4
  %arrayidx92 = getelementptr [17 x i8], ptr @hex_asc, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx92, align 1
  %inc93 = add nuw nsw i32 %lx.3322, 1
  %arrayidx94 = getelementptr i8, ptr %linebuf, i32 %lx.3322
  %15 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %arrayidx94, align 1
  %add95 = add nuw nsw i32 %lx.3322, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add95, i32 %linebuflen)
  %cmp96 = icmp ugt i32 %add95, %linebuflen
  br i1 %cmp96, label %if.end90.overflow2_crit_edge, label %if.end99

if.end90.overflow2_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  br label %overflow2

if.end99:                                         ; preds = %if.end90
  %and101 = and i32 %conv91, 15
  %arrayidx102 = getelementptr [17 x i8], ptr @hex_asc, i32 0, i32 %and101
  %16 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx102, align 1
  %arrayidx104 = getelementptr i8, ptr %linebuf, i32 %inc93
  %18 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %arrayidx104, align 1
  %add105 = add nuw nsw i32 %lx.3322, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add105, i32 %linebuflen)
  %cmp106 = icmp ugt i32 %add105, %linebuflen
  br i1 %cmp106, label %if.end99.overflow2_crit_edge, label %if.end109

if.end99.overflow2_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  br label %overflow2

if.end109:                                        ; preds = %if.end99
  %arrayidx111 = getelementptr i8, ptr %linebuf, i32 %add86
  %19 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 32, ptr %arrayidx111, align 1
  %inc113 = add nuw nsw i32 %j.3321, 1
  %exitcond343.not = icmp eq i32 %inc113, %0
  br i1 %exitcond343.not, label %if.then116, label %if.end109.for.body85_crit_edge

if.end109.for.body85_crit_edge:                   ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body85

if.then116:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  %phi.bo = add nuw i32 %lx.3322, 2
  br label %if.end120

if.end120:                                        ; preds = %if.then116, %if.end73.if.end120_crit_edge, %if.end46.if.end120_crit_edge, %if.end27.if.end120_crit_edge, %for.cond.preheader.if.end120_crit_edge, %for.cond31.preheader.if.end120_crit_edge, %for.cond57.preheader.if.end120_crit_edge
  %lx.4 = phi i32 [ %phi.bo, %if.then116 ], [ 0, %for.cond.preheader.if.end120_crit_edge ], [ 0, %for.cond31.preheader.if.end120_crit_edge ], [ 0, %for.cond57.preheader.if.end120_crit_edge ], [ %add28, %if.end27.if.end120_crit_edge ], [ %add47, %if.end46.if.end120_crit_edge ], [ %add74, %if.end73.if.end120_crit_edge ]
  br i1 %ascii, label %while.cond.preheader, label %if.end120.nil_crit_edge

if.end120.nil_crit_edge:                          ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #9
  br label %nil

while.cond.preheader:                             ; preds = %if.end120
  call void @__sanitizer_cov_trace_cmp4(i32 %lx.4, i32 %add)
  %cmp124.not324 = icmp sgt i32 %lx.4, %add
  br i1 %cmp124.not324, label %while.cond.preheader.for.body136.preheader_crit_edge, label %while.body.preheader

while.cond.preheader.for.body136.preheader_crit_edge: ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body136.preheader

while.body.preheader:                             ; preds = %while.cond.preheader
  %20 = add i32 %add, 1
  br label %while.body

for.body136.preheader:                            ; preds = %if.end130.for.body136.preheader_crit_edge, %while.cond.preheader.for.body136.preheader_crit_edge
  %lx.5.lcssa = phi i32 [ %lx.4, %while.cond.preheader.for.body136.preheader_crit_edge ], [ %20, %if.end130.for.body136.preheader_crit_edge ]
  %umax345 = call i32 @llvm.umax.i32(i32 %0, i32 1)
  br label %for.body136

while.body:                                       ; preds = %if.end130.while.body_crit_edge, %while.body.preheader
  %lx.5325 = phi i32 [ %inc131, %if.end130.while.body_crit_edge ], [ %lx.4, %while.body.preheader ]
  %add126 = add i32 %lx.5325, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add126, i32 %linebuflen)
  %cmp127 = icmp ugt i32 %add126, %linebuflen
  br i1 %cmp127, label %while.body.overflow2_crit_edge, label %if.end130

while.body.overflow2_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %overflow2

if.end130:                                        ; preds = %while.body
  %inc131 = add i32 %lx.5325, 1
  %arrayidx132 = getelementptr i8, ptr %linebuf, i32 %lx.5325
  %21 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 32, ptr %arrayidx132, align 1
  %exitcond344.not = icmp eq i32 %lx.5325, %add
  br i1 %exitcond344.not, label %if.end130.for.body136.preheader_crit_edge, label %if.end130.while.body_crit_edge

if.end130.while.body_crit_edge:                   ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end130.for.body136.preheader_crit_edge:        ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body136.preheader

for.body136:                                      ; preds = %cond.end.for.body136_crit_edge, %for.body136.preheader
  %lx.6329 = phi i32 [ %inc156, %cond.end.for.body136_crit_edge ], [ %lx.5.lcssa, %for.body136.preheader ]
  %j.4328 = phi i32 [ %inc159, %cond.end.for.body136_crit_edge ], [ 0, %for.body136.preheader ]
  %add137 = add i32 %lx.6329, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add137, i32 %linebuflen)
  %cmp138 = icmp ugt i32 %add137, %linebuflen
  br i1 %cmp138, label %for.body136.overflow2_crit_edge, label %if.end141

for.body136.overflow2_crit_edge:                  ; preds = %for.body136
  call void @__sanitizer_cov_trace_pc() #9
  br label %overflow2

if.end141:                                        ; preds = %for.body136
  %arrayidx142 = getelementptr i8, ptr %buf, i32 %j.4328
  %22 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx142, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %23)
  %cmp144 = icmp sgt i8 %23, -1
  br i1 %cmp144, label %land.lhs.true146, label %if.end141.cond.end_crit_edge

if.end141.cond.end_crit_edge:                     ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

land.lhs.true146:                                 ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #9
  %conv143 = zext i8 %23 to i32
  %arrayidx148 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv143
  %24 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx148, align 1
  %26 = and i8 %25, -105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp151.not = icmp eq i8 %26, 0
  %spec.select = select i1 %cmp151.not, i8 46, i8 %23
  br label %cond.end

cond.end:                                         ; preds = %land.lhs.true146, %if.end141.cond.end_crit_edge
  %cond154 = phi i8 [ 46, %if.end141.cond.end_crit_edge ], [ %spec.select, %land.lhs.true146 ]
  %inc156 = add i32 %lx.6329, 1
  %arrayidx157 = getelementptr i8, ptr %linebuf, i32 %lx.6329
  %27 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %cond154, ptr %arrayidx157, align 1
  %inc159 = add nuw nsw i32 %j.4328, 1
  %exitcond346.not = icmp eq i32 %inc159, %umax345
  br i1 %exitcond346.not, label %cond.end.nil_crit_edge, label %cond.end.for.body136_crit_edge

cond.end.for.body136_crit_edge:                   ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body136

cond.end.nil_crit_edge:                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %nil

nil:                                              ; preds = %cond.end.nil_crit_edge, %if.end120.nil_crit_edge, %if.end14.nil_crit_edge
  %lx.7 = phi i32 [ %lx.4, %if.end120.nil_crit_edge ], [ 0, %if.end14.nil_crit_edge ], [ %inc156, %cond.end.nil_crit_edge ]
  %arrayidx161 = getelementptr i8, ptr %linebuf, i32 %lx.7
  %28 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %arrayidx161, align 1
  br label %cleanup175

overflow2:                                        ; preds = %for.body136.overflow2_crit_edge, %while.body.overflow2_crit_edge, %if.end99.overflow2_crit_edge, %if.end90.overflow2_crit_edge, %for.body85.overflow2_crit_edge
  %lx.8 = phi i32 [ %lx.6329, %for.body136.overflow2_crit_edge ], [ %lx.5325, %while.body.overflow2_crit_edge ], [ %add86, %if.end99.overflow2_crit_edge ], [ %inc93, %if.end90.overflow2_crit_edge ], [ %lx.3322, %for.body85.overflow2_crit_edge ]
  %arrayidx163 = getelementptr i8, ptr %linebuf, i32 %lx.8
  %29 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %arrayidx163, align 1
  br label %overflow1

overflow1:                                        ; preds = %overflow2, %for.body59.overflow1_crit_edge, %for.body33.overflow1_crit_edge, %for.body.overflow1_crit_edge, %is_power_of_2.exit.overflow1_crit_edge
  %add12 = add nuw nsw i32 %0, 1
  %add167 = add i32 %add12, %add
  %mul169 = shl i32 %spec.store.select182, 1
  %add170 = or i32 %mul169, 1
  %mul171 = mul i32 %add170, %div
  %sub172 = add i32 %mul171, -1
  %cond174 = select i1 %ascii, i32 %add167, i32 %sub172
  br label %cleanup175

cleanup175:                                       ; preds = %overflow1, %nil
  %retval.0 = phi i32 [ %cond174, %overflow1 ], [ %lx.7, %nil ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @print_hex_dump(ptr noundef %level, ptr noundef %prefix_str, i32 noundef %prefix_type, i32 noundef %rowsize, i32 noundef %groupsize, ptr noundef %buf, i32 noundef %len, i1 noundef zeroext %ascii) #5 align 64 {
entry:
  %linebuf = alloca [131 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 131, ptr nonnull %linebuf) #10
  %0 = call ptr @memset(ptr %linebuf, i32 255, i32 131)
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %rowsize)
  %cmp.not = icmp eq i32 %rowsize, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %rowsize)
  %cmp1.not = icmp eq i32 %rowsize, 32
  %spec.store.select = select i1 %cmp1.not, i32 32, i32 16
  %rowsize.addr.0 = select i1 %cmp.not, i32 16, i32 %spec.store.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp239.not = icmp eq i32 %len, 0
  br i1 %cmp239.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.041 = phi i32 [ %add, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %remaining.040 = phi i32 [ %sub, %for.inc.for.body_crit_edge ], [ %len, %entry.for.body_crit_edge ]
  %1 = call i32 @llvm.smin.i32(i32 %remaining.040, i32 %rowsize.addr.0)
  %sub = sub i32 %remaining.040, %rowsize.addr.0
  %add.ptr = getelementptr i8, ptr %buf, i32 %i.041
  %call = call i32 @hex_dump_to_buffer(ptr noundef %add.ptr, i32 noundef %1, i32 noundef %rowsize.addr.0, i32 noundef %groupsize, ptr noundef nonnull %linebuf, i32 noundef 131, i1 noundef zeroext %ascii)
  %2 = zext i32 %prefix_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %prefix_type, label %do.end17 [
    i32 1, label %do.end
    i32 2, label %do.end11
  ]

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %level, ptr noundef %prefix_str, ptr noundef %add.ptr, ptr noundef nonnull %linebuf) #11
  br label %for.inc

do.end11:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %level, ptr noundef %prefix_str, i32 noundef %i.041, ptr noundef nonnull %linebuf) #11
  br label %for.inc

do.end17:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %level, ptr noundef %prefix_str, ptr noundef nonnull %linebuf) #11
  br label %for.inc

for.inc:                                          ; preds = %do.end17, %do.end11, %do.end
  %add = add i32 %i.041, %rowsize.addr.0
  %cmp2 = icmp ult i32 %add, %len
  br i1 %cmp2, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 131, ptr nonnull %linebuf) #10
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind uwtable(sync) }
attributes #9 = { nomerge }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @hex_asc, !1, !"hex_asc", i1 false, i1 false}
!1 = !{!"../lib/hexdump.c", i32 14, i32 12}
!2 = !{ptr @__ksymtab_hex_asc, !3, !"__ksymtab_hex_asc", i1 false, i1 false}
!3 = !{!"../lib/hexdump.c", i32 15, i32 1}
!4 = !{ptr @hex_asc_upper, !5, !"hex_asc_upper", i1 false, i1 false}
!5 = !{!"../lib/hexdump.c", i32 16, i32 12}
!6 = !{ptr @__ksymtab_hex_asc_upper, !7, !"__ksymtab_hex_asc_upper", i1 false, i1 false}
!7 = !{!"../lib/hexdump.c", i32 17, i32 1}
!8 = !{ptr @__ksymtab_hex_to_bin, !9, !"__ksymtab_hex_to_bin", i1 false, i1 false}
!9 = !{!"../lib/hexdump.c", i32 35, i32 1}
!10 = !{ptr @__ksymtab_hex2bin, !11, !"__ksymtab_hex2bin", i1 false, i1 false}
!11 = !{!"../lib/hexdump.c", i32 58, i32 1}
!12 = !{ptr @__ksymtab_bin2hex, !13, !"__ksymtab_bin2hex", i1 false, i1 false}
!13 = !{!"../lib/hexdump.c", i32 74, i32 1}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../lib/hexdump.c", i32 140, i32 12}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../lib/hexdump.c", i32 140, i32 31}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../lib/hexdump.c", i32 140, i32 37}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../lib/hexdump.c", i32 151, i32 12}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../lib/hexdump.c", i32 162, i32 12}
!24 = !{ptr @__ksymtab_hex_dump_to_buffer, !25, !"__ksymtab_hex_dump_to_buffer", i1 false, i1 false}
!25 = !{!"../lib/hexdump.c", i32 206, i32 1}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../lib/hexdump.c", i32 260, i32 4}
!28 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @print_hex_dump._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @print_hex_dump._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../lib/hexdump.c", i32 264, i32 4}
!34 = !{ptr @print_hex_dump._entry.8, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @print_hex_dump._entry_ptr.10, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../lib/hexdump.c", i32 267, i32 4}
!38 = !{ptr @print_hex_dump._entry.11, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @print_hex_dump._entry_ptr.13, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @__ksymtab_print_hex_dump, !41, !"__ksymtab_print_hex_dump", i1 false, i1 false}
!41 = !{!"../lib/hexdump.c", i32 272, i32 1}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{i32 0, i32 33}
