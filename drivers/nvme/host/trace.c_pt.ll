; ModuleID = '/llk/IR_all_yes/drivers/nvme/host/trace.c_pt.bc'
source_filename = "../drivers/nvme/host/trace.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+__tracepoint_nvme_sq\22, \22a\22\09"
module asm "\09.weak\09__crc___tracepoint_nvme_sq\09\09\09\09"
module asm "\09.long\09__crc___tracepoint_nvme_sq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_nvme_sq:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_nvme_sq\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_nvme_sq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__traceiter_nvme_sq\22, \22a\22\09"
module asm "\09.weak\09__crc___traceiter_nvme_sq\09\09\09\09"
module asm "\09.long\09__crc___traceiter_nvme_sq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_nvme_sq:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_nvme_sq\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_nvme_sq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__SCK__tp_func_nvme_sq\22, \22a\22\09"
module asm "\09.weak\09__crc___SCK__tp_func_nvme_sq\09\09\09\09"
module asm "\09.long\09__crc___SCK__tp_func_nvme_sq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_nvme_sq:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_nvme_sq\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_nvme_sq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon }
%struct.atomic_t = type { i32 }
%union.anon = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.static_call_key = type { ptr }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"disk=%s, \00", [22 x i8] zeroinitializer }, align 32
@__tracepoint_nvme_sq = external dso_local global %struct.tracepoint, align 4
@__kstrtab___tracepoint_nvme_sq = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_nvme_sq = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_nvme_sq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_nvme_sq to i32), ptr @__kstrtab___tracepoint_nvme_sq, ptr @__kstrtabns___tracepoint_nvme_sq }, section "___ksymtab_gpl+__tracepoint_nvme_sq", align 4
@__kstrtab___traceiter_nvme_sq = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_nvme_sq = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_nvme_sq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_nvme_sq to i32), ptr @__kstrtab___traceiter_nvme_sq, ptr @__kstrtabns___traceiter_nvme_sq }, section "___ksymtab_gpl+__traceiter_nvme_sq", align 4
@__SCK__tp_func_nvme_sq = external dso_local global %struct.static_call_key, align 4
@__kstrtab___SCK__tp_func_nvme_sq = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_nvme_sq = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_nvme_sq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_nvme_sq to i32), ptr @__kstrtab___SCK__tp_func_nvme_sq, ptr @__kstrtabns___SCK__tp_func_nvme_sq }, section "___ksymtab_gpl+__SCK__tp_func_nvme_sq", align 4
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sqid=%u\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"sqid=%u, qsize=%u, sq_flags=0x%x, cqid=%u\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cqid=%u\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"cqid=%u, qsize=%u, cq_flags=0x%x, irq_vector=%u\00", [48 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cns=%u, ctrlid=%u\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"fid=0x%x, sv=0x%x, cdw11=0x%x\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"fid=0x%x, sel=0x%x, cdw11=0x%x\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"slba=0x%llx, mndw=0x%x, rl=0x%x, atype=%u\00", [54 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"lbaf=%u, mset=%u, pi=%u, pil=%u, ses=%u\00", [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cdw10=%*ph\00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"slba=%llu, len=%u, ctrl=0x%x, dsmgmt=%u, reftag=%u\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nr=%u, attributes=%u\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"slba=%llu, zsa=%u, all=%u\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"slba=%llu, numd=%u, zra=%u, zrasf=%u, pr=%u\00", [52 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"attrib=%u, ofst=0x%x, value=0x%llx\00", [61 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"recfmt=%u, qid=%u, sqsize=%u, cattr=%u, kato=%u\00", [48 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"attrib=%u, ofst=0x%x\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"specific=%*ph\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 8, i64 0, i64 1, i64 4, i64 5, i64 6, i64 9, i64 10, i64 128, i64 134]
@__sancov_gen_cov_switch_values.19 = internal global [9 x i64] [i64 7, i64 8, i64 1, i64 2, i64 8, i64 9, i64 121, i64 122, i64 125]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 4]
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 319, i32 23 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 15, i32 22 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 30, i32 22 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 42, i32 22 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 56, i32 22 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 69, i32 22 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 83, i32 22 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 97, i32 22 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 112, i32 22 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 128, i32 22 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 198, i32 22 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 146, i32 5 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 157, i32 22 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 172, i32 22 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 187, i32 22 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 258, i32 22 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 273, i32 22 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 285, i32 22 }
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.76 = private constant [29 x i8] c"../drivers/nvme/host/trace.c\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 294, i32 22 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__ksymtab___SCK__tp_func_nvme_sq, ptr @__ksymtab___traceiter_nvme_sq, ptr @__ksymtab___tracepoint_nvme_sq, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nvme_trace_parse_admin_cmd(ptr noundef %p, i8 noundef zeroext %opcode, ptr noundef %cdw10) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %opcode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i8 %opcode, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %sw.bb1
    i8 4, label %sw.bb3
    i8 5, label %sw.bb5
    i8 6, label %sw.bb7
    i8 9, label %sw.bb9
    i8 10, label %sw.bb11
    i8 -122, label %sw.bb13
    i8 -128, label %sw.bb15
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %len.i.i.i = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 2
  %1 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len.i.i.i, align 8
  %size.i.i.i = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %size.i.i.i, align 4
  %5 = tail call i32 @llvm.umin.i32(i32 %2, i32 %4) #3
  %add.ptr.i.i = getelementptr i8, ptr %p, i32 %5
  %6 = ptrtoint ptr %cdw10 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %cdw10, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #3
  %conv.i = zext i16 %8 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %p, ptr noundef nonnull @.str.1, i32 noundef %conv.i) #3
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %len.i.i.i36 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %len.i.i.i36 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len.i.i.i36, align 8
  %size.i.i.i37 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %size.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size.i.i.i37, align 4
  %13 = tail call i32 @llvm.umin.i32(i32 %10, i32 %12) #3
  %add.ptr.i.i38 = getelementptr i8, ptr %p, i32 %13
  %14 = ptrtoint ptr %cdw10 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %cdw10, align 1
  %16 = tail call i16 @llvm.bswap.i16(i16 %15) #3
  %add.ptr.i = getelementptr i8, ptr %cdw10, i32 2
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %add.ptr.i, align 1
  %19 = tail call i16 @llvm.bswap.i16(i16 %18) #3
  %add.ptr3.i = getelementptr i8, ptr %cdw10, i32 4
  %20 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %add.ptr3.i, align 1
  %22 = tail call i16 @llvm.bswap.i16(i16 %21) #3
  %add.ptr5.i = getelementptr i8, ptr %cdw10, i32 6
  %23 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %add.ptr5.i, align 1
  %25 = tail call i16 @llvm.bswap.i16(i16 %24) #3
  %conv.i39 = zext i16 %16 to i32
  %conv7.i = zext i16 %19 to i32
  %conv8.i = zext i16 %22 to i32
  %conv9.i = zext i16 %25 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %p, ptr noundef nonnull @.str.2, i32 noundef %conv.i39, i32 noundef %conv7.i, i32 noundef %conv8.i, i32 noundef %conv9.i) #3
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %len.i.i.i40 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 2
  %26 = ptrtoint ptr %len.i.i.i40 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len.i.i.i40, align 8
  %size.i.i.i41 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %size.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %size.i.i.i41, align 4
  %30 = tail call i32 @llvm.umin.i32(i32 %27, i32 %29) #3
  %add.ptr.i.i42 = getelementptr i8, ptr %p, i32 %30
  %31 = ptrtoint ptr %cdw10 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %cdw10, align 1
  %33 = tail call i16 @llvm.bswap.i16(i16 %32) #3
  %conv.i43 = zext i16 %33 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %p, ptr noundef nonnull @.str.3, i32 noundef %conv.i43) #3
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %len.i.i.i44 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 2
  %34 = ptrtoint ptr %len.i.i.i44 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len.i.i.i44, align 8
  %size.i.i.i45 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %size.i.i.i45 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %size.i.i.i45, align 4
  %38 = tail call i32 @llvm.umin.i32(i32 %35, i32 %37) #3
  %add.ptr.i.i46 = getelementptr i8, ptr %p, i32 %38
  %39 = ptrtoint ptr %cdw10 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %cdw10, align 1
  %41 = tail call i16 @llvm.bswap.i16(i16 %40) #3
  %add.ptr.i47 = getelementptr i8, ptr %cdw10, i32 2
  %42 = ptrtoint ptr %add.ptr.i47 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %43 = load i16, ptr %add.ptr.i47, align 1
  %44 = tail call i16 @llvm.bswap.i16(i16 %43) #3
  %add.ptr3.i48 = getelementptr i8, ptr %cdw10, i32 4
  %45 = ptrtoint ptr %add.ptr3.i48 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %46 = load i16, ptr %add.ptr3.i48, align 1
  %47 = tail call i16 @llvm.bswap.i16(i16 %46) #3
  %add.ptr5.i49 = getelementptr i8, ptr %cdw10, i32 6
  %48 = ptrtoint ptr %add.ptr5.i49 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %49 = load i16, ptr %add.ptr5.i49, align 1
  %50 = tail call i16 @llvm.bswap.i16(i16 %49) #3
  %conv.i50 = zext i16 %41 to i32
  %conv7.i51 = zext i16 %44 to i32
  %conv8.i52 = zext i16 %47 to i32
  %conv9.i53 = zext i16 %50 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %p, ptr noundef nonnull @.str.4, i32 noundef %conv.i50, i32 noundef %conv7.i51, i32 noundef %conv8.i52, i32 noundef %conv9.i53) #3
  br label %return

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %len.i.i.i54 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 2
  %51 = ptrtoint ptr %len.i.i.i54 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %len.i.i.i54, align 8
  %size.i.i.i55 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 1
  %53 = ptrtoint ptr %size.i.i.i55 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %size.i.i.i55, align 4
  %55 = tail call i32 @llvm.umin.i32(i32 %52, i32 %54) #3
  %add.ptr.i.i56 = getelementptr i8, ptr %p, i32 %55
  %56 = ptrtoint ptr %cdw10 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %cdw10, align 1
  %add.ptr.i57 = getelementptr i8, ptr %cdw10, i32 2
  %58 = ptrtoint ptr %add.ptr.i57 to i32
  call void @__asan_loadN_noabort(i32 %58, i32 2)
  %59 = load i16, ptr %add.ptr.i57, align 1
  %60 = tail call i16 @llvm.bswap.i16(i16 %59) #3
  %conv.i58 = zext i8 %57 to i32
  %conv2.i = zext i16 %60 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %p, ptr noundef nonnull @.str.5, i32 noundef %conv.i58, i32 noundef %conv2.i) #3
  br label %return

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %len.i.i.i59 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 2
  %61 = ptrtoint ptr %len.i.i.i59 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %len.i.i.i59, align 8
  %size.i.i.i60 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 1
  %63 = ptrtoint ptr %size.i.i.i60 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %size.i.i.i60, align 4
  %65 = tail call i32 @llvm.umin.i32(i32 %62, i32 %64) #3
  %add.ptr.i.i61 = getelementptr i8, ptr %p, i32 %65
  %66 = ptrtoint ptr %cdw10 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %cdw10, align 1
  %arrayidx1.i = getelementptr i8, ptr %cdw10, i32 3
  %68 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx1.i, align 1
  %70 = and i8 %69, 8
  %add.ptr.i62 = getelementptr i8, ptr %cdw10, i32 4
  %71 = ptrtoint ptr %add.ptr.i62 to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %add.ptr.i62, align 1
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #3
  %conv4.i = zext i8 %67 to i32
  %conv5.i = zext i8 %70 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %p, ptr noundef nonnull @.str.6, i32 noundef %conv4.i, i32 noundef %conv5.i, i32 noundef %73) #3
  br label %return

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %len.i.i.i63 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 2
  %74 = ptrtoint ptr %len.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %len.i.i.i63, align 8
  %size.i.i.i64 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 1
  %76 = ptrtoint ptr %size.i.i.i64 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %size.i.i.i64, align 4
  %78 = tail call i32 @llvm.umin.i32(i32 %75, i32 %77) #3
  %add.ptr.i.i65 = getelementptr i8, ptr %p, i32 %78
  %79 = ptrtoint ptr %cdw10 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %cdw10, align 1
  %arrayidx1.i66 = getelementptr i8, ptr %cdw10, i32 1
  %81 = ptrtoint ptr %arrayidx1.i66 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx1.i66, align 1
  %83 = and i8 %82, 7
  %add.ptr.i67 = getelementptr i8, ptr %cdw10, i32 4
  %84 = ptrtoint ptr %add.ptr.i67 to i32
  call void @__asan_loadN_noabort(i32 %84, i32 4)
  %85 = load i32, ptr %add.ptr.i67, align 1
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #3
  %conv4.i68 = zext i8 %80 to i32
  %conv5.i69 = zext i8 %83 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %p, ptr noundef nonnull @.str.7, i32 noundef %conv4.i68, i32 noundef %conv5.i69, i32 noundef %86) #3
  br label %return

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %len.i.i.i70 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 2
  %87 = ptrtoint ptr %len.i.i.i70 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %len.i.i.i70, align 8
  %size.i.i.i71 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 1
  %89 = ptrtoint ptr %size.i.i.i71 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %size.i.i.i71, align 4
  %91 = tail call i32 @llvm.umin.i32(i32 %88, i32 %90) #3
  %add.ptr.i.i72 = getelementptr i8, ptr %p, i32 %91
  %92 = ptrtoint ptr %cdw10 to i32
  call void @__asan_loadN_noabort(i32 %92, i32 8)
  %93 = load i64, ptr %cdw10, align 1
  %94 = tail call i64 @llvm.bswap.i64(i64 %93) #3
  %add.ptr.i73 = getelementptr i8, ptr %cdw10, i32 8
  %95 = ptrtoint ptr %add.ptr.i73 to i32
  call void @__asan_loadN_noabort(i32 %95, i32 4)
  %96 = load i32, ptr %add.ptr.i73, align 1
  %97 = tail call i32 @llvm.bswap.i32(i32 %96) #3
  %add.ptr3.i74 = getelementptr i8, ptr %cdw10, i32 12
  %98 = ptrtoint ptr %add.ptr3.i74 to i32
  call void @__asan_loadN_noabort(i32 %98, i32 2)
  %99 = load i16, ptr %add.ptr3.i74, align 1
  %100 = tail call i16 @llvm.bswap.i16(i16 %99) #3
  %arrayidx.i = getelementptr i8, ptr %cdw10, i32 15
  %101 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx.i, align 1
  %conv.i75 = zext i16 %100 to i32
  %conv5.i76 = zext i8 %102 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %p, ptr noundef nonnull @.str.8, i64 noundef %94, i32 noundef %97, i32 noundef %conv.i75, i32 noundef %conv5.i76) #3
  br label %return

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %len.i.i.i77 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 2
  %103 = ptrtoint ptr %len.i.i.i77 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %len.i.i.i77, align 8
  %size.i.i.i78 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 1
  %105 = ptrtoint ptr %size.i.i.i78 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %size.i.i.i78, align 4
  %107 = tail call i32 @llvm.umin.i32(i32 %104, i32 %106) #3
  %add.ptr.i.i79 = getelementptr i8, ptr %p, i32 %107
  %108 = ptrtoint ptr %cdw10 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %cdw10, align 1
  %and.i = and i8 %109, 15
  %110 = lshr i8 %109, 4
  %and4.i = and i8 %110, 1
  %111 = lshr i8 %109, 5
  %arrayidx11.i = getelementptr i8, ptr %cdw10, i32 1
  %112 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx11.i, align 1
  %and13.i = and i8 %113, 1
  %114 = lshr i8 %113, 1
  %115 = and i8 %114, 7
  %conv20.i = zext i8 %and.i to i32
  %conv21.i = zext i8 %and4.i to i32
  %conv22.i = zext i8 %111 to i32
  %conv23.i = zext i8 %and13.i to i32
  %conv24.i = zext i8 %115 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %p, ptr noundef nonnull @.str.9, i32 noundef %conv20.i, i32 noundef %conv21.i, i32 noundef %conv22.i, i32 noundef %conv23.i, i32 noundef %conv24.i) #3
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %len.i.i.i80 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 2
  %116 = ptrtoint ptr %len.i.i.i80 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %len.i.i.i80, align 8
  %size.i.i.i81 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 1
  %118 = ptrtoint ptr %size.i.i.i81 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %size.i.i.i81, align 4
  %120 = tail call i32 @llvm.umin.i32(i32 %117, i32 %119) #3
  %add.ptr.i.i82 = getelementptr i8, ptr %p, i32 %120
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %p, ptr noundef nonnull @.str.10, i32 noundef 24, ptr noundef %cdw10) #3
  br label %return

return:                                           ; preds = %sw.default, %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
  %retval.0 = phi ptr [ %add.ptr.i.i82, %sw.default ], [ %add.ptr.i.i79, %sw.bb15 ], [ %add.ptr.i.i72, %sw.bb13 ], [ %add.ptr.i.i65, %sw.bb11 ], [ %add.ptr.i.i61, %sw.bb9 ], [ %add.ptr.i.i56, %sw.bb7 ], [ %add.ptr.i.i46, %sw.bb5 ], [ %add.ptr.i.i42, %sw.bb3 ], [ %add.ptr.i.i38, %sw.bb1 ], [ %add.ptr.i.i, %sw.bb ]
  tail call void @trace_seq_putc(ptr noundef %p, i8 noundef zeroext 0) #3
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nvme_trace_parse_nvm_cmd(ptr noundef %p, i8 noundef zeroext %opcode, ptr noundef %cdw10) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %opcode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %opcode, label %sw.default [
    i8 2, label %entry.sw.bb_crit_edge
    i8 1, label %entry.sw.bb_crit_edge33
    i8 8, label %entry.sw.bb_crit_edge34
    i8 125, label %entry.sw.bb_crit_edge35
    i8 9, label %sw.bb1
    i8 121, label %sw.bb3
    i8 122, label %sw.bb5
  ]

entry.sw.bb_crit_edge35:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

entry.sw.bb_crit_edge34:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

entry.sw.bb_crit_edge33:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge33, %entry.sw.bb_crit_edge34, %entry.sw.bb_crit_edge35
  %len.i.i.i = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 2
  %1 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len.i.i.i, align 8
  %size.i.i.i = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %size.i.i.i, align 4
  %5 = tail call i32 @llvm.umin.i32(i32 %2, i32 %4) #3
  %add.ptr.i.i = getelementptr i8, ptr %p, i32 %5
  %6 = ptrtoint ptr %cdw10 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %cdw10, align 1
  %8 = tail call i64 @llvm.bswap.i64(i64 %7) #3
  %add.ptr.i = getelementptr i8, ptr %cdw10, i32 8
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %add.ptr.i, align 1
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #3
  %add.ptr3.i = getelementptr i8, ptr %cdw10, i32 10
  %12 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %add.ptr3.i, align 1
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #3
  %add.ptr5.i = getelementptr i8, ptr %cdw10, i32 12
  %15 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %add.ptr5.i, align 1
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #3
  %add.ptr7.i = getelementptr i8, ptr %cdw10, i32 16
  %18 = ptrtoint ptr %add.ptr7.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %add.ptr7.i, align 1
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #3
  %conv.i = zext i16 %11 to i32
  %conv9.i = zext i16 %14 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %p, ptr noundef nonnull @.str.11, i64 noundef %8, i32 noundef %conv.i, i32 noundef %conv9.i, i32 noundef %17, i32 noundef %20) #3
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %len.i.i.i16 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %len.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len.i.i.i16, align 8
  %size.i.i.i17 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %size.i.i.i17 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size.i.i.i17, align 4
  %25 = tail call i32 @llvm.umin.i32(i32 %22, i32 %24) #3
  %add.ptr.i.i18 = getelementptr i8, ptr %p, i32 %25
  %26 = ptrtoint ptr %cdw10 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %cdw10, align 1
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #3
  %add.ptr.i19 = getelementptr i8, ptr %cdw10, i32 4
  %29 = ptrtoint ptr %add.ptr.i19 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %add.ptr.i19, align 1
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #3
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %p, ptr noundef nonnull @.str.12, i32 noundef %28, i32 noundef %31) #3
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %len.i.i.i20 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 2
  %32 = ptrtoint ptr %len.i.i.i20 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len.i.i.i20, align 8
  %size.i.i.i21 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %size.i.i.i21 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %size.i.i.i21, align 4
  %36 = tail call i32 @llvm.umin.i32(i32 %33, i32 %35) #3
  %add.ptr.i.i22 = getelementptr i8, ptr %p, i32 %36
  %37 = ptrtoint ptr %cdw10 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 8)
  %38 = load i64, ptr %cdw10, align 1
  %39 = tail call i64 @llvm.bswap.i64(i64 %38) #3
  %arrayidx.i = getelementptr i8, ptr %cdw10, i32 12
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.i, align 1
  %arrayidx2.i = getelementptr i8, ptr %cdw10, i32 13
  %42 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx2.i, align 1
  %conv.i23 = zext i8 %41 to i32
  %conv3.i = zext i8 %43 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %p, ptr noundef nonnull @.str.13, i64 noundef %39, i32 noundef %conv.i23, i32 noundef %conv3.i) #3
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %len.i.i.i24 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 2
  %44 = ptrtoint ptr %len.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %len.i.i.i24, align 8
  %size.i.i.i25 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 1
  %46 = ptrtoint ptr %size.i.i.i25 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %size.i.i.i25, align 4
  %48 = tail call i32 @llvm.umin.i32(i32 %45, i32 %47) #3
  %add.ptr.i.i26 = getelementptr i8, ptr %p, i32 %48
  %49 = ptrtoint ptr %cdw10 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 8)
  %50 = load i64, ptr %cdw10, align 1
  %51 = tail call i64 @llvm.bswap.i64(i64 %50) #3
  %add.ptr.i27 = getelementptr i8, ptr %cdw10, i32 8
  %52 = ptrtoint ptr %add.ptr.i27 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %add.ptr.i27, align 1
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #3
  %arrayidx.i28 = getelementptr i8, ptr %cdw10, i32 12
  %55 = ptrtoint ptr %arrayidx.i28 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx.i28, align 1
  %arrayidx3.i = getelementptr i8, ptr %cdw10, i32 13
  %57 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx3.i, align 1
  %arrayidx4.i = getelementptr i8, ptr %cdw10, i32 14
  %59 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx4.i, align 1
  %conv.i29 = zext i8 %56 to i32
  %conv5.i = zext i8 %58 to i32
  %conv6.i = zext i8 %60 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %p, ptr noundef nonnull @.str.14, i64 noundef %51, i32 noundef %54, i32 noundef %conv.i29, i32 noundef %conv5.i, i32 noundef %conv6.i) #3
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %len.i.i.i30 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 2
  %61 = ptrtoint ptr %len.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %len.i.i.i30, align 8
  %size.i.i.i31 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 1
  %63 = ptrtoint ptr %size.i.i.i31 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %size.i.i.i31, align 4
  %65 = tail call i32 @llvm.umin.i32(i32 %62, i32 %64) #3
  %add.ptr.i.i32 = getelementptr i8, ptr %p, i32 %65
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %p, ptr noundef nonnull @.str.10, i32 noundef 24, ptr noundef %cdw10) #3
  br label %return

return:                                           ; preds = %sw.default, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
  %retval.0 = phi ptr [ %add.ptr.i.i32, %sw.default ], [ %add.ptr.i.i26, %sw.bb5 ], [ %add.ptr.i.i22, %sw.bb3 ], [ %add.ptr.i.i18, %sw.bb1 ], [ %add.ptr.i.i, %sw.bb ]
  tail call void @trace_seq_putc(ptr noundef %p, i8 noundef zeroext 0) #3
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nvme_trace_parse_fabrics_cmd(ptr noundef %p, i8 noundef zeroext %fctype, ptr noundef %spc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %fctype to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.20)
  switch i8 %fctype, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %sw.bb1
    i8 4, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %len.i.i.i = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 2
  %1 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len.i.i.i, align 8
  %size.i.i.i = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %size.i.i.i, align 4
  %5 = tail call i32 @llvm.umin.i32(i32 %2, i32 %4) #3
  %add.ptr.i.i = getelementptr i8, ptr %p, i32 %5
  %6 = ptrtoint ptr %spc to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %spc, align 1
  %add.ptr.i = getelementptr i8, ptr %spc, i32 4
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %add.ptr.i, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #3
  %add.ptr2.i = getelementptr i8, ptr %spc, i32 8
  %11 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %add.ptr2.i, align 1
  %13 = tail call i64 @llvm.bswap.i64(i64 %12) #3
  %conv.i = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %p, ptr noundef nonnull @.str.15, i32 noundef %conv.i, i32 noundef %10, i64 noundef %13) #3
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %len.i.i.i12 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %len.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len.i.i.i12, align 8
  %size.i.i.i13 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %size.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size.i.i.i13, align 4
  %18 = tail call i32 @llvm.umin.i32(i32 %15, i32 %17) #3
  %add.ptr.i.i14 = getelementptr i8, ptr %p, i32 %18
  %19 = ptrtoint ptr %spc to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %spc, align 1
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #3
  %add.ptr.i15 = getelementptr i8, ptr %spc, i32 2
  %22 = ptrtoint ptr %add.ptr.i15 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %add.ptr.i15, align 1
  %24 = tail call i16 @llvm.bswap.i16(i16 %23) #3
  %add.ptr3.i = getelementptr i8, ptr %spc, i32 4
  %25 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %add.ptr3.i, align 1
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #3
  %arrayidx.i = getelementptr i8, ptr %spc, i32 6
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i, align 1
  %add.ptr5.i = getelementptr i8, ptr %spc, i32 8
  %30 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %add.ptr5.i, align 1
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #3
  %conv.i16 = zext i16 %21 to i32
  %conv7.i = zext i16 %24 to i32
  %conv8.i = zext i16 %27 to i32
  %conv9.i = zext i8 %29 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %p, ptr noundef nonnull @.str.16, i32 noundef %conv.i16, i32 noundef %conv7.i, i32 noundef %conv8.i, i32 noundef %conv9.i, i32 noundef %32) #3
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %len.i.i.i17 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 2
  %33 = ptrtoint ptr %len.i.i.i17 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len.i.i.i17, align 8
  %size.i.i.i18 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %size.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %size.i.i.i18, align 4
  %37 = tail call i32 @llvm.umin.i32(i32 %34, i32 %36) #3
  %add.ptr.i.i19 = getelementptr i8, ptr %p, i32 %37
  %38 = ptrtoint ptr %spc to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %spc, align 1
  %add.ptr.i20 = getelementptr i8, ptr %spc, i32 4
  %40 = ptrtoint ptr %add.ptr.i20 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %add.ptr.i20, align 1
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #3
  %conv.i21 = zext i8 %39 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %p, ptr noundef nonnull @.str.17, i32 noundef %conv.i21, i32 noundef %42) #3
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %len.i.i.i22 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 2
  %43 = ptrtoint ptr %len.i.i.i22 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len.i.i.i22, align 8
  %size.i.i.i23 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 1
  %45 = ptrtoint ptr %size.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %size.i.i.i23, align 4
  %47 = tail call i32 @llvm.umin.i32(i32 %44, i32 %46) #3
  %add.ptr.i.i24 = getelementptr i8, ptr %p, i32 %47
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %p, ptr noundef nonnull @.str.18, i32 noundef 24, ptr noundef %spc) #3
  br label %return

return:                                           ; preds = %sw.default, %sw.bb3, %sw.bb1, %sw.bb
  %retval.0 = phi ptr [ %add.ptr.i.i24, %sw.default ], [ %add.ptr.i.i19, %sw.bb3 ], [ %add.ptr.i.i14, %sw.bb1 ], [ %add.ptr.i.i, %sw.bb ]
  tail call void @trace_seq_putc(ptr noundef %p, i8 noundef zeroext 0) #3
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nvme_trace_disk_name(ptr noundef %p, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %len.i.i = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i.i, align 8
  %size.i.i = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size.i.i, align 4
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %p, ptr noundef nonnull @.str, ptr noundef %name) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = tail call i32 @llvm.umin.i32(i32 %1, i32 %3) #3
  %add.ptr.i = getelementptr i8, ptr %p, i32 %6
  tail call void @trace_seq_putc(ptr noundef %p, i8 noundef zeroext 0) #3
  ret ptr %add.ptr.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nvme_sq(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/nvme/host/trace.c", i32 319, i32 23}
!2 = !{ptr @__ksymtab___tracepoint_nvme_sq, !3, !"__ksymtab___tracepoint_nvme_sq", i1 false, i1 false}
!3 = !{!"../drivers/nvme/host/trace.c", i32 325, i32 1}
!4 = !{ptr @__ksymtab___traceiter_nvme_sq, !3, !"__ksymtab___traceiter_nvme_sq", i1 false, i1 false}
!5 = !{ptr @__ksymtab___SCK__tp_func_nvme_sq, !3, !"__ksymtab___SCK__tp_func_nvme_sq", i1 false, i1 false}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/nvme/host/trace.c", i32 15, i32 22}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/nvme/host/trace.c", i32 30, i32 22}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/nvme/host/trace.c", i32 42, i32 22}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/nvme/host/trace.c", i32 56, i32 22}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/nvme/host/trace.c", i32 69, i32 22}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/nvme/host/trace.c", i32 83, i32 22}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/nvme/host/trace.c", i32 97, i32 22}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/nvme/host/trace.c", i32 112, i32 22}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/nvme/host/trace.c", i32 128, i32 22}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/nvme/host/trace.c", i32 198, i32 22}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/nvme/host/trace.c", i32 146, i32 5}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/nvme/host/trace.c", i32 157, i32 22}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/nvme/host/trace.c", i32 172, i32 22}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/nvme/host/trace.c", i32 187, i32 22}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/nvme/host/trace.c", i32 258, i32 22}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/nvme/host/trace.c", i32 273, i32 22}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/nvme/host/trace.c", i32 285, i32 22}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/nvme/host/trace.c", i32 294, i32 22}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
