; ModuleID = '/llk/IR_all_yes/lib/bch.c_pt.bc'
source_filename = "../lib/bch.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+bch_encode\22, \22a\22\09"
module asm "\09.weak\09__crc_bch_encode\09\09\09\09"
module asm "\09.long\09__crc_bch_encode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bch_encode:\09\09\09\09\09"
module asm "\09.asciz \09\22bch_encode\22\09\09\09\09\09"
module asm "__kstrtabns_bch_encode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+bch_decode\22, \22a\22\09"
module asm "\09.weak\09__crc_bch_decode\09\09\09\09"
module asm "\09.long\09__crc_bch_decode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bch_decode:\09\09\09\09\09"
module asm "\09.asciz \09\22bch_decode\22\09\09\09\09\09"
module asm "__kstrtabns_bch_decode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+bch_init\22, \22a\22\09"
module asm "\09.weak\09__crc_bch_init\09\09\09\09"
module asm "\09.long\09__crc_bch_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bch_init:\09\09\09\09\09"
module asm "\09.asciz \09\22bch_init\22\09\09\09\09\09"
module asm "__kstrtabns_bch_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+bch_free\22, \22a\22\09"
module asm "\09.weak\09__crc_bch_free\09\09\09\09"
module asm "\09.long\09__crc_bch_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bch_free:\09\09\09\09\09"
module asm "\09.asciz \09\22bch_free\22\09\09\09\09\09"
module asm "__kstrtabns_bch_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.bch_control = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x ptr], i8 }
%struct.gf_poly = type { i32, [0 x i32] }
%struct.gf_poly_deg1 = type { %struct.gf_poly, [2 x i32] }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lib/bch.c\00", [22 x i8] zeroinitializer }, align 32
@__kstrtab_bch_encode = external dso_local constant [0 x i8], align 1
@__kstrtabns_bch_encode = external dso_local constant [0 x i8], align 1
@__ksymtab_bch_encode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bch_encode to i32), ptr @__kstrtab_bch_encode, ptr @__kstrtabns_bch_encode }, section "___ksymtab_gpl+bch_encode", align 4
@__kstrtab_bch_decode = external dso_local constant [0 x i8], align 1
@__kstrtabns_bch_decode = external dso_local constant [0 x i8], align 1
@__ksymtab_bch_decode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bch_decode to i32), ptr @__kstrtab_bch_decode, ptr @__kstrtabns_bch_decode }, section "___ksymtab_gpl+bch_decode", align 4
@bch_init.prim_poly_tab = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 37, i32 67, i32 131, i32 285, i32 529, i32 1033, i32 2053, i32 4179, i32 8219, i32 16427, i32 32771], [52 x i8] zeroinitializer }, align 32
@__kstrtab_bch_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_bch_init = external dso_local constant [0 x i8], align 1
@__ksymtab_bch_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bch_init to i32), ptr @__kstrtab_bch_init, ptr @__kstrtabns_bch_init }, section "___ksymtab_gpl+bch_init", align 4
@__kstrtab_bch_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_bch_free = external dso_local constant [0 x i8], align 1
@__ksymtab_bch_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bch_free to i32), ptr @__kstrtab_bch_free, ptr @__kstrtabns_bch_free }, section "___ksymtab_gpl+bch_free", align 4
@__UNIQUE_ID_file173 = internal constant [17 x i8] c"bch.file=lib/bch\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [16 x i8] c"bch.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author175 = internal constant [48 x i8] c"bch.author=Ivan Djelic <ivan.djelic@parrot.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description176 = internal constant [43 x i8] c"bch.description=Binary BCH encoder/decoder\00", section ".modinfo", align 1
@swap_bits_table = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"\00\80@\C0 \A0`\E0\10\90P\D00\B0p\F0\08\88H\C8(\A8h\E8\18\98X\D88\B8x\F8\04\84D\C4$\A4d\E4\14\94T\D44\B4t\F4\0C\8CL\CC,\ACl\EC\1C\9C\\\DC<\BC|\FC\02\82B\C2\22\A2b\E2\12\92R\D22\B2r\F2\0A\8AJ\CA*\AAj\EA\1A\9AZ\DA:\BAz\FA\06\86F\C6&\A6f\E6\16\96V\D66\B6v\F6\0E\8EN\CE.\AEn\EE\1E\9E^\DE>\BE~\FE\01\81A\C1!\A1a\E1\11\91Q\D11\B1q\F1\09\89I\C9)\A9i\E9\19\99Y\D99\B9y\F9\05\85E\C5%\A5e\E5\15\95U\D55\B5u\F5\0D\8DM\CD-\ADm\ED\1D\9D]\DD=\BD}\FD\03\83C\C3#\A3c\E3\13\93S\D33\B3s\F3\0B\8BK\CB+\ABk\EB\1B\9B[\DB;\BB{\FB\07\87G\C7'\A7g\E7\17\97W\D77\B7w\F7\0F\8FO\CF/\AFo\EF\1F\9F_\DF?\BF\7F\FF", [64 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 255, i32 6 }
@___asan_gen_.4 = private unnamed_addr constant [14 x i8] c"prim_poly_tab\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 1330, i32 28 }
@___asan_gen_.7 = private unnamed_addr constant [16 x i8] c"swap_bits_table\00", align 1
@___asan_gen_.8 = private constant [13 x i8] c"../lib/bch.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 117, i32 11 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_author175, ptr @__UNIQUE_ID_description176, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__ksymtab_bch_decode, ptr @__ksymtab_bch_encode, ptr @__ksymtab_bch_free, ptr @__ksymtab_bch_init, ptr @.str, ptr @bch_init.prim_poly_tab, ptr @swap_bits_table], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_init.prim_poly_tab to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swap_bits_table to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bch_encode(ptr noundef readonly %bch, ptr noundef %data, i32 noundef %len, ptr noundef %ecc) #0 align 64 {
entry:
  %pad.sroa.0.i = alloca i32, align 4
  %r = alloca [30 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %bch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bch, align 4
  %t = getelementptr inbounds %struct.bch_control, ptr %bch, i32 0, i32 2
  %2 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %t, align 4
  %mul = mul i32 %3, %1
  %sub = add i32 %mul, 31
  %div223 = lshr i32 %sub, 5
  %sub1 = add nsw i32 %div223, -1
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %r) #10
  %4 = call ptr @memset(ptr %r, i32 255, i32 120)
  %5 = lshr i32 %sub, 3
  %mul9 = and i32 %5, 536870908
  %mod8_tab = getelementptr inbounds %struct.bch_control, ptr %bch, i32 0, i32 7
  %6 = ptrtoint ptr %mod8_tab to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mod8_tab, align 4
  %mul11 = shl i32 %div223, 8
  %add.ptr = getelementptr i32, ptr %7, i32 %mul11
  %add.ptr14 = getelementptr i32, ptr %add.ptr, i32 %mul11
  %add.ptr17 = getelementptr i32, ptr %add.ptr14, i32 %mul11
  call void @__sanitizer_cov_trace_const_cmp4(i32 120, i32 %mul9)
  %cmp = icmp ugt i32 %mul9, 120
  br i1 %cmp, label %do.end, label %if.end38, !prof !29

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 255, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end38:                                         ; preds = %entry
  %tobool39.not = icmp eq ptr %ecc, null
  %ecc_buf41 = getelementptr inbounds %struct.bch_control, ptr %bch, i32 0, i32 8
  %8 = ptrtoint ptr %ecc_buf41 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ecc_buf41, align 4
  br i1 %tobool39.not, label %if.else, label %if.then40

if.then40:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @load_ecc8(ptr noundef %bch, ptr noundef %9, ptr noundef nonnull %ecc)
  br label %if.end42

if.else:                                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %10 = call ptr @memset(ptr %9, i32 0, i32 %mul9)
  br label %if.end42

if.end42:                                         ; preds = %if.else, %if.then40
  %11 = ptrtoint ptr %data to i32
  %and = and i32 %11, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool43.not = icmp eq i32 %and, 0
  br i1 %tobool43.not, label %if.end42.if.end51_crit_edge, label %if.then44

if.end42.if.end51_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.then44:                                        ; preds = %if.end42
  %sub45 = sub nuw nsw i32 4, %and
  %12 = tail call i32 @llvm.umin.i32(i32 %sub45, i32 %len)
  %ecc_buf48 = getelementptr inbounds %struct.bch_control, ptr %bch, i32 0, i32 8
  %13 = ptrtoint ptr %ecc_buf48 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ecc_buf48, align 4
  %15 = ptrtoint ptr %bch to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bch, align 4
  %17 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %t, align 4
  %mul.i = mul i32 %18, %16
  %sub.i = add i32 %mul.i, 31
  %div32.i = lshr i32 %sub.i, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not37.i = icmp eq i32 %12, 0
  br i1 %tobool.not37.i, label %if.then44.bch_encode_unaligned.exit_crit_edge, label %while.body.lr.ph.i

if.then44.bch_encode_unaligned.exit_crit_edge:    ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  br label %bch_encode_unaligned.exit

while.body.lr.ph.i:                               ; preds = %if.then44
  %sub1.i = add nsw i32 %div32.i, -1
  %swap_bits.i.i = getelementptr inbounds %struct.bch_control, ptr %bch, i32 0, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %sub.i)
  %cmp33.i = icmp ugt i32 %sub.i, 63
  %arrayidx12.i = getelementptr i32, ptr %14, i32 %sub1.i
  %smax.i = tail call i32 @llvm.smax.i32(i32 %sub1.i, i32 1) #10
  %incdec.ptr.i = getelementptr i8, ptr %data, i32 1
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %data, align 1
  %21 = ptrtoint ptr %swap_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %swap_bits.i.i, align 4, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i.i, label %while.body.lr.ph.i.swap_bits.exit.i_crit_edge, label %if.end.i.i

while.body.lr.ph.i.swap_bits.exit.i_crit_edge:    ; preds = %while.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %swap_bits.exit.i

if.end.i.i:                                       ; preds = %while.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #9
  %idxprom.i.i = zext i8 %20 to i32
  %arrayidx.i.i = getelementptr [256 x i8], ptr @swap_bits_table, i32 0, i32 %idxprom.i.i
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i.i, align 1
  br label %swap_bits.exit.i

swap_bits.exit.i:                                 ; preds = %if.end.i.i, %while.body.lr.ph.i.swap_bits.exit.i_crit_edge
  %retval.0.i.i = phi i8 [ %24, %if.end.i.i ], [ %20, %while.body.lr.ph.i.swap_bits.exit.i_crit_edge ]
  %25 = ptrtoint ptr %mod8_tab to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mod8_tab, align 4
  %27 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %14, align 4
  %shr.i = lshr i32 %28, 24
  %conv.i = zext i8 %retval.0.i.i to i32
  %xor.i = xor i32 %shr.i, %conv.i
  %mul3.i = mul i32 %xor.i, %div32.i
  %add.ptr.i = getelementptr i32, ptr %26, i32 %mul3.i
  br i1 %cmp33.i, label %swap_bits.exit.i.for.body.i_crit_edge, label %swap_bits.exit.i.for.end.i_crit_edge

swap_bits.exit.i.for.end.i_crit_edge:             ; preds = %swap_bits.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

swap_bits.exit.i.for.body.i_crit_edge:            ; preds = %swap_bits.exit.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %swap_bits.exit.i.for.body.i_crit_edge
  %p.035.i = phi ptr [ %incdec.ptr9.i, %for.body.i.for.body.i_crit_edge ], [ %add.ptr.i, %swap_bits.exit.i.for.body.i_crit_edge ]
  %i.034.i = phi i32 [ %add6.i, %for.body.i.for.body.i_crit_edge ], [ 0, %swap_bits.exit.i.for.body.i_crit_edge ]
  %arrayidx5.i = getelementptr i32, ptr %14, i32 %i.034.i
  %29 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx5.i, align 4
  %add6.i = add nuw nsw i32 %i.034.i, 1
  %arrayidx7.i = getelementptr i32, ptr %14, i32 %add6.i
  %31 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx7.i, align 4
  %or.i = tail call i32 @llvm.fshl.i32(i32 %30, i32 %32, i32 8) #10
  %incdec.ptr9.i = getelementptr i32, ptr %p.035.i, i32 1
  %33 = ptrtoint ptr %p.035.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %p.035.i, align 4
  %xor10.i = xor i32 %or.i, %34
  %35 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %xor10.i, ptr %arrayidx5.i, align 4
  %exitcond.not.i = icmp eq i32 %add6.i, %smax.i
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %swap_bits.exit.i.for.end.i_crit_edge
  %p.0.lcssa.i = phi ptr [ %add.ptr.i, %swap_bits.exit.i.for.end.i_crit_edge ], [ %incdec.ptr9.i, %for.body.i.for.end.i_crit_edge ]
  %36 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx12.i, align 4
  %shl13.i = shl i32 %37, 8
  %38 = ptrtoint ptr %p.0.lcssa.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %p.0.lcssa.i, align 4
  %xor14.i = xor i32 %shl13.i, %39
  store i32 %xor14.i, ptr %arrayidx12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 1
  br i1 %tobool.not.i, label %for.end.i.bch_encode_unaligned.exit_crit_edge, label %while.body.i.1

for.end.i.bch_encode_unaligned.exit_crit_edge:    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bch_encode_unaligned.exit

while.body.i.1:                                   ; preds = %for.end.i
  %incdec.ptr.i.1 = getelementptr i8, ptr %data, i32 2
  %40 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %incdec.ptr.i, align 1
  %42 = ptrtoint ptr %swap_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %swap_bits.i.i, align 4, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i.i.1 = icmp eq i8 %43, 0
  br i1 %tobool.not.i.i.1, label %while.body.i.1.swap_bits.exit.i.1_crit_edge, label %if.end.i.i.1

while.body.i.1.swap_bits.exit.i.1_crit_edge:      ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %swap_bits.exit.i.1

if.end.i.i.1:                                     ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #9
  %idxprom.i.i.1 = zext i8 %41 to i32
  %arrayidx.i.i.1 = getelementptr [256 x i8], ptr @swap_bits_table, i32 0, i32 %idxprom.i.i.1
  %44 = ptrtoint ptr %arrayidx.i.i.1 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.i.i.1, align 1
  br label %swap_bits.exit.i.1

swap_bits.exit.i.1:                               ; preds = %if.end.i.i.1, %while.body.i.1.swap_bits.exit.i.1_crit_edge
  %retval.0.i.i.1 = phi i8 [ %45, %if.end.i.i.1 ], [ %41, %while.body.i.1.swap_bits.exit.i.1_crit_edge ]
  %46 = ptrtoint ptr %mod8_tab to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mod8_tab, align 4
  %48 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %14, align 4
  %shr.i.1 = lshr i32 %49, 24
  %conv.i.1 = zext i8 %retval.0.i.i.1 to i32
  %xor.i.1 = xor i32 %shr.i.1, %conv.i.1
  %mul3.i.1 = mul i32 %xor.i.1, %div32.i
  %add.ptr.i.1 = getelementptr i32, ptr %47, i32 %mul3.i.1
  br i1 %cmp33.i, label %swap_bits.exit.i.1.for.body.i.1_crit_edge, label %swap_bits.exit.i.1.for.end.i.1_crit_edge

swap_bits.exit.i.1.for.end.i.1_crit_edge:         ; preds = %swap_bits.exit.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.1

swap_bits.exit.i.1.for.body.i.1_crit_edge:        ; preds = %swap_bits.exit.i.1
  br label %for.body.i.1

for.body.i.1:                                     ; preds = %for.body.i.1.for.body.i.1_crit_edge, %swap_bits.exit.i.1.for.body.i.1_crit_edge
  %p.035.i.1 = phi ptr [ %incdec.ptr9.i.1, %for.body.i.1.for.body.i.1_crit_edge ], [ %add.ptr.i.1, %swap_bits.exit.i.1.for.body.i.1_crit_edge ]
  %i.034.i.1 = phi i32 [ %add6.i.1, %for.body.i.1.for.body.i.1_crit_edge ], [ 0, %swap_bits.exit.i.1.for.body.i.1_crit_edge ]
  %arrayidx5.i.1 = getelementptr i32, ptr %14, i32 %i.034.i.1
  %50 = ptrtoint ptr %arrayidx5.i.1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx5.i.1, align 4
  %add6.i.1 = add nuw nsw i32 %i.034.i.1, 1
  %arrayidx7.i.1 = getelementptr i32, ptr %14, i32 %add6.i.1
  %52 = ptrtoint ptr %arrayidx7.i.1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx7.i.1, align 4
  %or.i.1 = tail call i32 @llvm.fshl.i32(i32 %51, i32 %53, i32 8) #10
  %incdec.ptr9.i.1 = getelementptr i32, ptr %p.035.i.1, i32 1
  %54 = ptrtoint ptr %p.035.i.1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %p.035.i.1, align 4
  %xor10.i.1 = xor i32 %or.i.1, %55
  %56 = ptrtoint ptr %arrayidx5.i.1 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %xor10.i.1, ptr %arrayidx5.i.1, align 4
  %exitcond.not.i.1 = icmp eq i32 %add6.i.1, %smax.i
  br i1 %exitcond.not.i.1, label %for.body.i.1.for.end.i.1_crit_edge, label %for.body.i.1.for.body.i.1_crit_edge

for.body.i.1.for.body.i.1_crit_edge:              ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.1

for.body.i.1.for.end.i.1_crit_edge:               ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.1

for.end.i.1:                                      ; preds = %for.body.i.1.for.end.i.1_crit_edge, %swap_bits.exit.i.1.for.end.i.1_crit_edge
  %p.0.lcssa.i.1 = phi ptr [ %add.ptr.i.1, %swap_bits.exit.i.1.for.end.i.1_crit_edge ], [ %incdec.ptr9.i.1, %for.body.i.1.for.end.i.1_crit_edge ]
  %57 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx12.i, align 4
  %shl13.i.1 = shl i32 %58, 8
  %59 = ptrtoint ptr %p.0.lcssa.i.1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %p.0.lcssa.i.1, align 4
  %xor14.i.1 = xor i32 %shl13.i.1, %60
  store i32 %xor14.i.1, ptr %arrayidx12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %tobool.not.i.1 = icmp eq i32 %12, 2
  br i1 %tobool.not.i.1, label %for.end.i.1.bch_encode_unaligned.exit_crit_edge, label %while.body.i.2

for.end.i.1.bch_encode_unaligned.exit_crit_edge:  ; preds = %for.end.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %bch_encode_unaligned.exit

while.body.i.2:                                   ; preds = %for.end.i.1
  %incdec.ptr.i.2 = getelementptr i8, ptr %data, i32 3
  %61 = ptrtoint ptr %incdec.ptr.i.1 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %incdec.ptr.i.1, align 1
  %63 = ptrtoint ptr %swap_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %swap_bits.i.i, align 4, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool.not.i.i.2 = icmp eq i8 %64, 0
  br i1 %tobool.not.i.i.2, label %while.body.i.2.swap_bits.exit.i.2_crit_edge, label %if.end.i.i.2

while.body.i.2.swap_bits.exit.i.2_crit_edge:      ; preds = %while.body.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %swap_bits.exit.i.2

if.end.i.i.2:                                     ; preds = %while.body.i.2
  call void @__sanitizer_cov_trace_pc() #9
  %idxprom.i.i.2 = zext i8 %62 to i32
  %arrayidx.i.i.2 = getelementptr [256 x i8], ptr @swap_bits_table, i32 0, i32 %idxprom.i.i.2
  %65 = ptrtoint ptr %arrayidx.i.i.2 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx.i.i.2, align 1
  br label %swap_bits.exit.i.2

swap_bits.exit.i.2:                               ; preds = %if.end.i.i.2, %while.body.i.2.swap_bits.exit.i.2_crit_edge
  %retval.0.i.i.2 = phi i8 [ %66, %if.end.i.i.2 ], [ %62, %while.body.i.2.swap_bits.exit.i.2_crit_edge ]
  %67 = ptrtoint ptr %mod8_tab to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mod8_tab, align 4
  %69 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %14, align 4
  %shr.i.2 = lshr i32 %70, 24
  %conv.i.2 = zext i8 %retval.0.i.i.2 to i32
  %xor.i.2 = xor i32 %shr.i.2, %conv.i.2
  %mul3.i.2 = mul i32 %xor.i.2, %div32.i
  %add.ptr.i.2 = getelementptr i32, ptr %68, i32 %mul3.i.2
  br i1 %cmp33.i, label %swap_bits.exit.i.2.for.body.i.2_crit_edge, label %swap_bits.exit.i.2.for.end.i.2_crit_edge

swap_bits.exit.i.2.for.end.i.2_crit_edge:         ; preds = %swap_bits.exit.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.2

swap_bits.exit.i.2.for.body.i.2_crit_edge:        ; preds = %swap_bits.exit.i.2
  br label %for.body.i.2

for.body.i.2:                                     ; preds = %for.body.i.2.for.body.i.2_crit_edge, %swap_bits.exit.i.2.for.body.i.2_crit_edge
  %p.035.i.2 = phi ptr [ %incdec.ptr9.i.2, %for.body.i.2.for.body.i.2_crit_edge ], [ %add.ptr.i.2, %swap_bits.exit.i.2.for.body.i.2_crit_edge ]
  %i.034.i.2 = phi i32 [ %add6.i.2, %for.body.i.2.for.body.i.2_crit_edge ], [ 0, %swap_bits.exit.i.2.for.body.i.2_crit_edge ]
  %arrayidx5.i.2 = getelementptr i32, ptr %14, i32 %i.034.i.2
  %71 = ptrtoint ptr %arrayidx5.i.2 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx5.i.2, align 4
  %add6.i.2 = add nuw nsw i32 %i.034.i.2, 1
  %arrayidx7.i.2 = getelementptr i32, ptr %14, i32 %add6.i.2
  %73 = ptrtoint ptr %arrayidx7.i.2 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx7.i.2, align 4
  %or.i.2 = tail call i32 @llvm.fshl.i32(i32 %72, i32 %74, i32 8) #10
  %incdec.ptr9.i.2 = getelementptr i32, ptr %p.035.i.2, i32 1
  %75 = ptrtoint ptr %p.035.i.2 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %p.035.i.2, align 4
  %xor10.i.2 = xor i32 %or.i.2, %76
  %77 = ptrtoint ptr %arrayidx5.i.2 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %xor10.i.2, ptr %arrayidx5.i.2, align 4
  %exitcond.not.i.2 = icmp eq i32 %add6.i.2, %smax.i
  br i1 %exitcond.not.i.2, label %for.body.i.2.for.end.i.2_crit_edge, label %for.body.i.2.for.body.i.2_crit_edge

for.body.i.2.for.body.i.2_crit_edge:              ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.2

for.body.i.2.for.end.i.2_crit_edge:               ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.2

for.end.i.2:                                      ; preds = %for.body.i.2.for.end.i.2_crit_edge, %swap_bits.exit.i.2.for.end.i.2_crit_edge
  %p.0.lcssa.i.2 = phi ptr [ %add.ptr.i.2, %swap_bits.exit.i.2.for.end.i.2_crit_edge ], [ %incdec.ptr9.i.2, %for.body.i.2.for.end.i.2_crit_edge ]
  %78 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx12.i, align 4
  %shl13.i.2 = shl i32 %79, 8
  %80 = ptrtoint ptr %p.0.lcssa.i.2 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %p.0.lcssa.i.2, align 4
  %xor14.i.2 = xor i32 %shl13.i.2, %81
  store i32 %xor14.i.2, ptr %arrayidx12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %tobool.not.i.2 = icmp eq i32 %12, 3
  br i1 %tobool.not.i.2, label %for.end.i.2.bch_encode_unaligned.exit_crit_edge, label %while.body.i.3

for.end.i.2.bch_encode_unaligned.exit_crit_edge:  ; preds = %for.end.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %bch_encode_unaligned.exit

while.body.i.3:                                   ; preds = %for.end.i.2
  %82 = ptrtoint ptr %incdec.ptr.i.2 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %incdec.ptr.i.2, align 1
  %84 = ptrtoint ptr %swap_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %swap_bits.i.i, align 4, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool.not.i.i.3 = icmp eq i8 %85, 0
  br i1 %tobool.not.i.i.3, label %while.body.i.3.swap_bits.exit.i.3_crit_edge, label %if.end.i.i.3

while.body.i.3.swap_bits.exit.i.3_crit_edge:      ; preds = %while.body.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %swap_bits.exit.i.3

if.end.i.i.3:                                     ; preds = %while.body.i.3
  call void @__sanitizer_cov_trace_pc() #9
  %idxprom.i.i.3 = zext i8 %83 to i32
  %arrayidx.i.i.3 = getelementptr [256 x i8], ptr @swap_bits_table, i32 0, i32 %idxprom.i.i.3
  %86 = ptrtoint ptr %arrayidx.i.i.3 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx.i.i.3, align 1
  br label %swap_bits.exit.i.3

swap_bits.exit.i.3:                               ; preds = %if.end.i.i.3, %while.body.i.3.swap_bits.exit.i.3_crit_edge
  %retval.0.i.i.3 = phi i8 [ %87, %if.end.i.i.3 ], [ %83, %while.body.i.3.swap_bits.exit.i.3_crit_edge ]
  %88 = ptrtoint ptr %mod8_tab to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %mod8_tab, align 4
  %90 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %14, align 4
  %shr.i.3 = lshr i32 %91, 24
  %conv.i.3 = zext i8 %retval.0.i.i.3 to i32
  %xor.i.3 = xor i32 %shr.i.3, %conv.i.3
  %mul3.i.3 = mul i32 %xor.i.3, %div32.i
  %add.ptr.i.3 = getelementptr i32, ptr %89, i32 %mul3.i.3
  br i1 %cmp33.i, label %swap_bits.exit.i.3.for.body.i.3_crit_edge, label %swap_bits.exit.i.3.for.end.i.3_crit_edge

swap_bits.exit.i.3.for.end.i.3_crit_edge:         ; preds = %swap_bits.exit.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.3

swap_bits.exit.i.3.for.body.i.3_crit_edge:        ; preds = %swap_bits.exit.i.3
  br label %for.body.i.3

for.body.i.3:                                     ; preds = %for.body.i.3.for.body.i.3_crit_edge, %swap_bits.exit.i.3.for.body.i.3_crit_edge
  %p.035.i.3 = phi ptr [ %incdec.ptr9.i.3, %for.body.i.3.for.body.i.3_crit_edge ], [ %add.ptr.i.3, %swap_bits.exit.i.3.for.body.i.3_crit_edge ]
  %i.034.i.3 = phi i32 [ %add6.i.3, %for.body.i.3.for.body.i.3_crit_edge ], [ 0, %swap_bits.exit.i.3.for.body.i.3_crit_edge ]
  %arrayidx5.i.3 = getelementptr i32, ptr %14, i32 %i.034.i.3
  %92 = ptrtoint ptr %arrayidx5.i.3 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx5.i.3, align 4
  %add6.i.3 = add nuw nsw i32 %i.034.i.3, 1
  %arrayidx7.i.3 = getelementptr i32, ptr %14, i32 %add6.i.3
  %94 = ptrtoint ptr %arrayidx7.i.3 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx7.i.3, align 4
  %or.i.3 = tail call i32 @llvm.fshl.i32(i32 %93, i32 %95, i32 8) #10
  %incdec.ptr9.i.3 = getelementptr i32, ptr %p.035.i.3, i32 1
  %96 = ptrtoint ptr %p.035.i.3 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %p.035.i.3, align 4
  %xor10.i.3 = xor i32 %or.i.3, %97
  %98 = ptrtoint ptr %arrayidx5.i.3 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %xor10.i.3, ptr %arrayidx5.i.3, align 4
  %exitcond.not.i.3 = icmp eq i32 %add6.i.3, %smax.i
  br i1 %exitcond.not.i.3, label %for.body.i.3.for.end.i.3_crit_edge, label %for.body.i.3.for.body.i.3_crit_edge

for.body.i.3.for.body.i.3_crit_edge:              ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.3

for.body.i.3.for.end.i.3_crit_edge:               ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.3

for.end.i.3:                                      ; preds = %for.body.i.3.for.end.i.3_crit_edge, %swap_bits.exit.i.3.for.end.i.3_crit_edge
  %p.0.lcssa.i.3 = phi ptr [ %add.ptr.i.3, %swap_bits.exit.i.3.for.end.i.3_crit_edge ], [ %incdec.ptr9.i.3, %for.body.i.3.for.end.i.3_crit_edge ]
  %99 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx12.i, align 4
  %shl13.i.3 = shl i32 %100, 8
  %101 = ptrtoint ptr %p.0.lcssa.i.3 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %p.0.lcssa.i.3, align 4
  %xor14.i.3 = xor i32 %shl13.i.3, %102
  store i32 %xor14.i.3, ptr %arrayidx12.i, align 4
  br label %bch_encode_unaligned.exit

bch_encode_unaligned.exit:                        ; preds = %for.end.i.3, %for.end.i.2.bch_encode_unaligned.exit_crit_edge, %for.end.i.1.bch_encode_unaligned.exit_crit_edge, %for.end.i.bch_encode_unaligned.exit_crit_edge, %if.then44.bch_encode_unaligned.exit_crit_edge
  %add.ptr49 = getelementptr i8, ptr %data, i32 %12
  %sub50 = sub i32 %len, %12
  br label %if.end51

if.end51:                                         ; preds = %bch_encode_unaligned.exit, %if.end42.if.end51_crit_edge
  %len.addr.0 = phi i32 [ %sub50, %bch_encode_unaligned.exit ], [ %len, %if.end42.if.end51_crit_edge ]
  %data.addr.0 = phi ptr [ %add.ptr49, %bch_encode_unaligned.exit ], [ %data, %if.end42.if.end51_crit_edge ]
  %mul53 = and i32 %len.addr.0, -4
  %add.ptr54 = getelementptr i8, ptr %data.addr.0, i32 %mul53
  %sub56 = and i32 %len.addr.0, 3
  %ecc_buf57 = getelementptr inbounds %struct.bch_control, ptr %bch, i32 0, i32 8
  %103 = ptrtoint ptr %ecc_buf57 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ecc_buf57, align 4
  %105 = call ptr @memcpy(ptr %r, ptr %104, i32 %mul9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len.addr.0)
  %tobool58.not312 = icmp ult i32 %len.addr.0, 4
  br i1 %tobool58.not312, label %if.end51.while.end_crit_edge, label %while.body.lr.ph

if.end51.while.end_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end51
  %div52225 = lshr i32 %len.addr.0, 2
  %swap_bits = getelementptr inbounds %struct.bch_control, ptr %bch, i32 0, i32 15
  %106 = ptrtoint ptr %swap_bits to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %swap_bits, align 4, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool59.not = icmp eq i8 %107, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1)
  %cmp98309.not = icmp eq i32 %sub1, 0
  %arrayidx118 = getelementptr [30 x i32], ptr %r, i32 0, i32 %sub1
  br label %while.body

while.body:                                       ; preds = %for.end.while.body_crit_edge, %while.body.lr.ph
  %dec314.in = phi i32 [ %div52225, %while.body.lr.ph ], [ %dec314, %for.end.while.body_crit_edge ]
  %pdata.0313 = phi ptr [ %data.addr.0, %while.body.lr.ph ], [ %incdec.ptr, %for.end.while.body_crit_edge ]
  %dec314 = add nsw i32 %dec314.in, -1
  %incdec.ptr = getelementptr i32, ptr %pdata.0313, i32 1
  %108 = ptrtoint ptr %pdata.0313 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %pdata.0313, align 4
  br i1 %tobool59.not, label %while.body.if.end77_crit_edge, label %swap_bits.exit247

while.body.if.end77_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

swap_bits.exit247:                                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %idxprom.i = and i32 %109, 255
  %arrayidx.i = getelementptr [256 x i8], ptr @swap_bits_table, i32 0, i32 %idxprom.i
  %110 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx.i, align 1
  %conv61 = zext i8 %111 to i32
  %shr = lshr i32 %109, 8
  %idxprom.i229 = and i32 %shr, 255
  %arrayidx.i230 = getelementptr [256 x i8], ptr @swap_bits_table, i32 0, i32 %idxprom.i229
  %112 = ptrtoint ptr %arrayidx.i230 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx.i230, align 1
  %conv64 = zext i8 %113 to i32
  %shl = shl nuw nsw i32 %conv64, 8
  %or = or i32 %shl, %conv61
  %shr65 = lshr i32 %109, 16
  %idxprom.i236 = and i32 %shr65, 255
  %arrayidx.i237 = getelementptr [256 x i8], ptr @swap_bits_table, i32 0, i32 %idxprom.i236
  %114 = ptrtoint ptr %arrayidx.i237 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx.i237, align 1
  %conv68 = zext i8 %115 to i32
  %shl69 = shl nuw nsw i32 %conv68, 16
  %or70 = or i32 %or, %shl69
  %shr71 = lshr i32 %109, 24
  %arrayidx.i244 = getelementptr [256 x i8], ptr @swap_bits_table, i32 0, i32 %shr71
  %116 = ptrtoint ptr %arrayidx.i244 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx.i244, align 1
  %conv74 = zext i8 %117 to i32
  %shl75 = shl nuw i32 %conv74, 24
  %or76 = or i32 %or70, %shl75
  br label %if.end77

if.end77:                                         ; preds = %swap_bits.exit247, %while.body.if.end77_crit_edge
  %w.0 = phi i32 [ %or76, %swap_bits.exit247 ], [ %109, %while.body.if.end77_crit_edge ]
  %118 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %r, align 4
  %xor = xor i32 %119, %w.0
  %and80 = and i32 %xor, 255
  %mul81 = mul i32 %and80, %div223
  %add.ptr82 = getelementptr i32, ptr %7, i32 %mul81
  %shr84 = lshr i32 %xor, 8
  %and85 = and i32 %shr84, 255
  %mul86 = mul i32 %and85, %div223
  %add.ptr87 = getelementptr i32, ptr %add.ptr, i32 %mul86
  %shr89 = lshr i32 %xor, 16
  %and90 = and i32 %shr89, 255
  %mul91 = mul i32 %and90, %div223
  %add.ptr92 = getelementptr i32, ptr %add.ptr14, i32 %mul91
  %shr94 = lshr i32 %xor, 24
  %mul96 = mul i32 %shr94, %div223
  %add.ptr97 = getelementptr i32, ptr %add.ptr17, i32 %mul96
  br i1 %cmp98309.not, label %if.end77.for.end_crit_edge, label %if.end77.for.body_crit_edge

if.end77.for.body_crit_edge:                      ; preds = %if.end77
  br label %for.body

if.end77.for.end_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end77.for.body_crit_edge
  %i.0310 = phi i32 [ %add100, %for.body.for.body_crit_edge ], [ 0, %if.end77.for.body_crit_edge ]
  %add100 = add nuw i32 %i.0310, 1
  %arrayidx101 = getelementptr [30 x i32], ptr %r, i32 0, i32 %add100
  %120 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx101, align 4
  %arrayidx102 = getelementptr i32, ptr %add.ptr82, i32 %i.0310
  %122 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx102, align 4
  %xor103 = xor i32 %123, %121
  %arrayidx104 = getelementptr i32, ptr %add.ptr87, i32 %i.0310
  %124 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx104, align 4
  %xor105 = xor i32 %xor103, %125
  %arrayidx106 = getelementptr i32, ptr %add.ptr92, i32 %i.0310
  %126 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx106, align 4
  %xor107 = xor i32 %xor105, %127
  %arrayidx108 = getelementptr i32, ptr %add.ptr97, i32 %i.0310
  %128 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx108, align 4
  %xor109 = xor i32 %xor107, %129
  %arrayidx110 = getelementptr [30 x i32], ptr %r, i32 0, i32 %i.0310
  %130 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %xor109, ptr %arrayidx110, align 4
  %exitcond.not = icmp eq i32 %add100, %sub1
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end77.for.end_crit_edge
  %arrayidx111 = getelementptr i32, ptr %add.ptr82, i32 %sub1
  %131 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %arrayidx111, align 4
  %arrayidx112 = getelementptr i32, ptr %add.ptr87, i32 %sub1
  %133 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %arrayidx112, align 4
  %xor113 = xor i32 %134, %132
  %arrayidx114 = getelementptr i32, ptr %add.ptr92, i32 %sub1
  %135 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %arrayidx114, align 4
  %xor115 = xor i32 %xor113, %136
  %arrayidx116 = getelementptr i32, ptr %add.ptr97, i32 %sub1
  %137 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx116, align 4
  %xor117 = xor i32 %xor115, %138
  %139 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %xor117, ptr %arrayidx118, align 4
  %tobool58.not = icmp eq i32 %dec314, 0
  br i1 %tobool58.not, label %for.end.while.end_crit_edge, label %for.end.while.body_crit_edge

for.end.while.body_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %for.end.while.end_crit_edge, %if.end51.while.end_crit_edge
  %140 = call ptr @memcpy(ptr %104, ptr %r, i32 %mul9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub56)
  %tobool121.not = icmp eq i32 %sub56, 0
  br i1 %tobool121.not, label %while.end.if.end124_crit_edge, label %while.body.lr.ph.i259

while.end.if.end124_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end124

while.body.lr.ph.i259:                            ; preds = %while.end
  %141 = ptrtoint ptr %ecc_buf57 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %ecc_buf57, align 4
  %143 = ptrtoint ptr %bch to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %bch, align 4
  %145 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %t, align 4
  %mul.i249 = mul i32 %146, %144
  %sub.i250 = add i32 %mul.i249, 31
  %div32.i251 = lshr i32 %sub.i250, 5
  %sub1.i253 = add nsw i32 %div32.i251, -1
  %swap_bits.i.i254 = getelementptr inbounds %struct.bch_control, ptr %bch, i32 0, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %sub.i250)
  %cmp33.i256 = icmp ugt i32 %sub.i250, 63
  %arrayidx12.i257 = getelementptr i32, ptr %142, i32 %sub1.i253
  %smax.i258 = tail call i32 @llvm.smax.i32(i32 %sub1.i253, i32 1) #10
  %incdec.ptr.i263 = getelementptr i8, ptr %add.ptr54, i32 1
  %147 = ptrtoint ptr %add.ptr54 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %add.ptr54, align 1
  %149 = ptrtoint ptr %swap_bits.i.i254 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %swap_bits.i.i254, align 4, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %tobool.not.i.i264 = icmp eq i8 %150, 0
  br i1 %tobool.not.i.i264, label %while.body.lr.ph.i259.swap_bits.exit.i275_crit_edge, label %if.end.i.i268

while.body.lr.ph.i259.swap_bits.exit.i275_crit_edge: ; preds = %while.body.lr.ph.i259
  call void @__sanitizer_cov_trace_pc() #9
  br label %swap_bits.exit.i275

if.end.i.i268:                                    ; preds = %while.body.lr.ph.i259
  call void @__sanitizer_cov_trace_pc() #9
  %idxprom.i.i266 = zext i8 %148 to i32
  %arrayidx.i.i267 = getelementptr [256 x i8], ptr @swap_bits_table, i32 0, i32 %idxprom.i.i266
  %151 = ptrtoint ptr %arrayidx.i.i267 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %arrayidx.i.i267, align 1
  br label %swap_bits.exit.i275

swap_bits.exit.i275:                              ; preds = %if.end.i.i268, %while.body.lr.ph.i259.swap_bits.exit.i275_crit_edge
  %retval.0.i.i269 = phi i8 [ %152, %if.end.i.i268 ], [ %148, %while.body.lr.ph.i259.swap_bits.exit.i275_crit_edge ]
  %153 = ptrtoint ptr %mod8_tab to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %mod8_tab, align 4
  %155 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %142, align 4
  %shr.i270 = lshr i32 %156, 24
  %conv.i271 = zext i8 %retval.0.i.i269 to i32
  %xor.i272 = xor i32 %shr.i270, %conv.i271
  %mul3.i273 = mul i32 %xor.i272, %div32.i251
  %add.ptr.i274 = getelementptr i32, ptr %154, i32 %mul3.i273
  br i1 %cmp33.i256, label %swap_bits.exit.i275.for.body.i285_crit_edge, label %swap_bits.exit.i275.for.end.i290_crit_edge

swap_bits.exit.i275.for.end.i290_crit_edge:       ; preds = %swap_bits.exit.i275
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i290

swap_bits.exit.i275.for.body.i285_crit_edge:      ; preds = %swap_bits.exit.i275
  br label %for.body.i285

for.body.i285:                                    ; preds = %for.body.i285.for.body.i285_crit_edge, %swap_bits.exit.i275.for.body.i285_crit_edge
  %p.035.i276 = phi ptr [ %incdec.ptr9.i282, %for.body.i285.for.body.i285_crit_edge ], [ %add.ptr.i274, %swap_bits.exit.i275.for.body.i285_crit_edge ]
  %i.034.i277 = phi i32 [ %add6.i279, %for.body.i285.for.body.i285_crit_edge ], [ 0, %swap_bits.exit.i275.for.body.i285_crit_edge ]
  %arrayidx5.i278 = getelementptr i32, ptr %142, i32 %i.034.i277
  %157 = ptrtoint ptr %arrayidx5.i278 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx5.i278, align 4
  %add6.i279 = add nuw nsw i32 %i.034.i277, 1
  %arrayidx7.i280 = getelementptr i32, ptr %142, i32 %add6.i279
  %159 = ptrtoint ptr %arrayidx7.i280 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %arrayidx7.i280, align 4
  %or.i281 = tail call i32 @llvm.fshl.i32(i32 %158, i32 %160, i32 8) #10
  %incdec.ptr9.i282 = getelementptr i32, ptr %p.035.i276, i32 1
  %161 = ptrtoint ptr %p.035.i276 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %p.035.i276, align 4
  %xor10.i283 = xor i32 %or.i281, %162
  %163 = ptrtoint ptr %arrayidx5.i278 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %xor10.i283, ptr %arrayidx5.i278, align 4
  %exitcond.not.i284 = icmp eq i32 %add6.i279, %smax.i258
  br i1 %exitcond.not.i284, label %for.body.i285.for.end.i290_crit_edge, label %for.body.i285.for.body.i285_crit_edge

for.body.i285.for.body.i285_crit_edge:            ; preds = %for.body.i285
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i285

for.body.i285.for.end.i290_crit_edge:             ; preds = %for.body.i285
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i290

for.end.i290:                                     ; preds = %for.body.i285.for.end.i290_crit_edge, %swap_bits.exit.i275.for.end.i290_crit_edge
  %p.0.lcssa.i286 = phi ptr [ %add.ptr.i274, %swap_bits.exit.i275.for.end.i290_crit_edge ], [ %incdec.ptr9.i282, %for.body.i285.for.end.i290_crit_edge ]
  %164 = ptrtoint ptr %arrayidx12.i257 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %arrayidx12.i257, align 4
  %shl13.i287 = shl i32 %165, 8
  %166 = ptrtoint ptr %p.0.lcssa.i286 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %p.0.lcssa.i286, align 4
  %xor14.i288 = xor i32 %shl13.i287, %167
  store i32 %xor14.i288, ptr %arrayidx12.i257, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub56)
  %tobool.not.i289 = icmp eq i32 %sub56, 1
  br i1 %tobool.not.i289, label %for.end.i290.if.end124_crit_edge, label %while.body.i265.1

for.end.i290.if.end124_crit_edge:                 ; preds = %for.end.i290
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end124

while.body.i265.1:                                ; preds = %for.end.i290
  %incdec.ptr.i263.1 = getelementptr i8, ptr %incdec.ptr.i263, i32 1
  %168 = ptrtoint ptr %incdec.ptr.i263 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %incdec.ptr.i263, align 1
  %170 = ptrtoint ptr %swap_bits.i.i254 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %swap_bits.i.i254, align 4, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %171)
  %tobool.not.i.i264.1 = icmp eq i8 %171, 0
  br i1 %tobool.not.i.i264.1, label %while.body.i265.1.swap_bits.exit.i275.1_crit_edge, label %if.end.i.i268.1

while.body.i265.1.swap_bits.exit.i275.1_crit_edge: ; preds = %while.body.i265.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %swap_bits.exit.i275.1

if.end.i.i268.1:                                  ; preds = %while.body.i265.1
  call void @__sanitizer_cov_trace_pc() #9
  %idxprom.i.i266.1 = zext i8 %169 to i32
  %arrayidx.i.i267.1 = getelementptr [256 x i8], ptr @swap_bits_table, i32 0, i32 %idxprom.i.i266.1
  %172 = ptrtoint ptr %arrayidx.i.i267.1 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %arrayidx.i.i267.1, align 1
  br label %swap_bits.exit.i275.1

swap_bits.exit.i275.1:                            ; preds = %if.end.i.i268.1, %while.body.i265.1.swap_bits.exit.i275.1_crit_edge
  %retval.0.i.i269.1 = phi i8 [ %173, %if.end.i.i268.1 ], [ %169, %while.body.i265.1.swap_bits.exit.i275.1_crit_edge ]
  %174 = ptrtoint ptr %mod8_tab to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %mod8_tab, align 4
  %176 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %142, align 4
  %shr.i270.1 = lshr i32 %177, 24
  %conv.i271.1 = zext i8 %retval.0.i.i269.1 to i32
  %xor.i272.1 = xor i32 %shr.i270.1, %conv.i271.1
  %mul3.i273.1 = mul i32 %xor.i272.1, %div32.i251
  %add.ptr.i274.1 = getelementptr i32, ptr %175, i32 %mul3.i273.1
  br i1 %cmp33.i256, label %swap_bits.exit.i275.1.for.body.i285.1_crit_edge, label %swap_bits.exit.i275.1.for.end.i290.1_crit_edge

swap_bits.exit.i275.1.for.end.i290.1_crit_edge:   ; preds = %swap_bits.exit.i275.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i290.1

swap_bits.exit.i275.1.for.body.i285.1_crit_edge:  ; preds = %swap_bits.exit.i275.1
  br label %for.body.i285.1

for.body.i285.1:                                  ; preds = %for.body.i285.1.for.body.i285.1_crit_edge, %swap_bits.exit.i275.1.for.body.i285.1_crit_edge
  %p.035.i276.1 = phi ptr [ %incdec.ptr9.i282.1, %for.body.i285.1.for.body.i285.1_crit_edge ], [ %add.ptr.i274.1, %swap_bits.exit.i275.1.for.body.i285.1_crit_edge ]
  %i.034.i277.1 = phi i32 [ %add6.i279.1, %for.body.i285.1.for.body.i285.1_crit_edge ], [ 0, %swap_bits.exit.i275.1.for.body.i285.1_crit_edge ]
  %arrayidx5.i278.1 = getelementptr i32, ptr %142, i32 %i.034.i277.1
  %178 = ptrtoint ptr %arrayidx5.i278.1 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %arrayidx5.i278.1, align 4
  %add6.i279.1 = add nuw nsw i32 %i.034.i277.1, 1
  %arrayidx7.i280.1 = getelementptr i32, ptr %142, i32 %add6.i279.1
  %180 = ptrtoint ptr %arrayidx7.i280.1 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %arrayidx7.i280.1, align 4
  %or.i281.1 = tail call i32 @llvm.fshl.i32(i32 %179, i32 %181, i32 8) #10
  %incdec.ptr9.i282.1 = getelementptr i32, ptr %p.035.i276.1, i32 1
  %182 = ptrtoint ptr %p.035.i276.1 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %p.035.i276.1, align 4
  %xor10.i283.1 = xor i32 %or.i281.1, %183
  %184 = ptrtoint ptr %arrayidx5.i278.1 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %xor10.i283.1, ptr %arrayidx5.i278.1, align 4
  %exitcond.not.i284.1 = icmp eq i32 %add6.i279.1, %smax.i258
  br i1 %exitcond.not.i284.1, label %for.body.i285.1.for.end.i290.1_crit_edge, label %for.body.i285.1.for.body.i285.1_crit_edge

for.body.i285.1.for.body.i285.1_crit_edge:        ; preds = %for.body.i285.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i285.1

for.body.i285.1.for.end.i290.1_crit_edge:         ; preds = %for.body.i285.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i290.1

for.end.i290.1:                                   ; preds = %for.body.i285.1.for.end.i290.1_crit_edge, %swap_bits.exit.i275.1.for.end.i290.1_crit_edge
  %p.0.lcssa.i286.1 = phi ptr [ %add.ptr.i274.1, %swap_bits.exit.i275.1.for.end.i290.1_crit_edge ], [ %incdec.ptr9.i282.1, %for.body.i285.1.for.end.i290.1_crit_edge ]
  %185 = ptrtoint ptr %arrayidx12.i257 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %arrayidx12.i257, align 4
  %shl13.i287.1 = shl i32 %186, 8
  %187 = ptrtoint ptr %p.0.lcssa.i286.1 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %p.0.lcssa.i286.1, align 4
  %xor14.i288.1 = xor i32 %shl13.i287.1, %188
  store i32 %xor14.i288.1, ptr %arrayidx12.i257, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub56)
  %tobool.not.i289.1 = icmp eq i32 %sub56, 2
  br i1 %tobool.not.i289.1, label %for.end.i290.1.if.end124_crit_edge, label %while.body.i265.2

for.end.i290.1.if.end124_crit_edge:               ; preds = %for.end.i290.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end124

while.body.i265.2:                                ; preds = %for.end.i290.1
  %189 = ptrtoint ptr %incdec.ptr.i263.1 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %incdec.ptr.i263.1, align 1
  %191 = ptrtoint ptr %swap_bits.i.i254 to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %swap_bits.i.i254, align 4, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %192)
  %tobool.not.i.i264.2 = icmp eq i8 %192, 0
  br i1 %tobool.not.i.i264.2, label %while.body.i265.2.swap_bits.exit.i275.2_crit_edge, label %if.end.i.i268.2

while.body.i265.2.swap_bits.exit.i275.2_crit_edge: ; preds = %while.body.i265.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %swap_bits.exit.i275.2

if.end.i.i268.2:                                  ; preds = %while.body.i265.2
  call void @__sanitizer_cov_trace_pc() #9
  %idxprom.i.i266.2 = zext i8 %190 to i32
  %arrayidx.i.i267.2 = getelementptr [256 x i8], ptr @swap_bits_table, i32 0, i32 %idxprom.i.i266.2
  %193 = ptrtoint ptr %arrayidx.i.i267.2 to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %arrayidx.i.i267.2, align 1
  br label %swap_bits.exit.i275.2

swap_bits.exit.i275.2:                            ; preds = %if.end.i.i268.2, %while.body.i265.2.swap_bits.exit.i275.2_crit_edge
  %retval.0.i.i269.2 = phi i8 [ %194, %if.end.i.i268.2 ], [ %190, %while.body.i265.2.swap_bits.exit.i275.2_crit_edge ]
  %195 = ptrtoint ptr %mod8_tab to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %mod8_tab, align 4
  %197 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %142, align 4
  %shr.i270.2 = lshr i32 %198, 24
  %conv.i271.2 = zext i8 %retval.0.i.i269.2 to i32
  %xor.i272.2 = xor i32 %shr.i270.2, %conv.i271.2
  %mul3.i273.2 = mul i32 %xor.i272.2, %div32.i251
  %add.ptr.i274.2 = getelementptr i32, ptr %196, i32 %mul3.i273.2
  br i1 %cmp33.i256, label %swap_bits.exit.i275.2.for.body.i285.2_crit_edge, label %swap_bits.exit.i275.2.for.end.i290.2_crit_edge

swap_bits.exit.i275.2.for.end.i290.2_crit_edge:   ; preds = %swap_bits.exit.i275.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i290.2

swap_bits.exit.i275.2.for.body.i285.2_crit_edge:  ; preds = %swap_bits.exit.i275.2
  br label %for.body.i285.2

for.body.i285.2:                                  ; preds = %for.body.i285.2.for.body.i285.2_crit_edge, %swap_bits.exit.i275.2.for.body.i285.2_crit_edge
  %p.035.i276.2 = phi ptr [ %incdec.ptr9.i282.2, %for.body.i285.2.for.body.i285.2_crit_edge ], [ %add.ptr.i274.2, %swap_bits.exit.i275.2.for.body.i285.2_crit_edge ]
  %i.034.i277.2 = phi i32 [ %add6.i279.2, %for.body.i285.2.for.body.i285.2_crit_edge ], [ 0, %swap_bits.exit.i275.2.for.body.i285.2_crit_edge ]
  %arrayidx5.i278.2 = getelementptr i32, ptr %142, i32 %i.034.i277.2
  %199 = ptrtoint ptr %arrayidx5.i278.2 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %arrayidx5.i278.2, align 4
  %add6.i279.2 = add nuw nsw i32 %i.034.i277.2, 1
  %arrayidx7.i280.2 = getelementptr i32, ptr %142, i32 %add6.i279.2
  %201 = ptrtoint ptr %arrayidx7.i280.2 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %arrayidx7.i280.2, align 4
  %or.i281.2 = tail call i32 @llvm.fshl.i32(i32 %200, i32 %202, i32 8) #10
  %incdec.ptr9.i282.2 = getelementptr i32, ptr %p.035.i276.2, i32 1
  %203 = ptrtoint ptr %p.035.i276.2 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %p.035.i276.2, align 4
  %xor10.i283.2 = xor i32 %or.i281.2, %204
  %205 = ptrtoint ptr %arrayidx5.i278.2 to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %xor10.i283.2, ptr %arrayidx5.i278.2, align 4
  %exitcond.not.i284.2 = icmp eq i32 %add6.i279.2, %smax.i258
  br i1 %exitcond.not.i284.2, label %for.body.i285.2.for.end.i290.2_crit_edge, label %for.body.i285.2.for.body.i285.2_crit_edge

for.body.i285.2.for.body.i285.2_crit_edge:        ; preds = %for.body.i285.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i285.2

for.body.i285.2.for.end.i290.2_crit_edge:         ; preds = %for.body.i285.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i290.2

for.end.i290.2:                                   ; preds = %for.body.i285.2.for.end.i290.2_crit_edge, %swap_bits.exit.i275.2.for.end.i290.2_crit_edge
  %p.0.lcssa.i286.2 = phi ptr [ %add.ptr.i274.2, %swap_bits.exit.i275.2.for.end.i290.2_crit_edge ], [ %incdec.ptr9.i282.2, %for.body.i285.2.for.end.i290.2_crit_edge ]
  %206 = ptrtoint ptr %arrayidx12.i257 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %arrayidx12.i257, align 4
  %shl13.i287.2 = shl i32 %207, 8
  %208 = ptrtoint ptr %p.0.lcssa.i286.2 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %p.0.lcssa.i286.2, align 4
  %xor14.i288.2 = xor i32 %shl13.i287.2, %209
  store i32 %xor14.i288.2, ptr %arrayidx12.i257, align 4
  br label %if.end124

if.end124:                                        ; preds = %for.end.i290.2, %for.end.i290.1.if.end124_crit_edge, %for.end.i290.if.end124_crit_edge, %while.end.if.end124_crit_edge
  br i1 %tobool39.not, label %if.end124.cleanup_crit_edge, label %if.then126

if.end124.cleanup_crit_edge:                      ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then126:                                       ; preds = %if.end124
  %210 = ptrtoint ptr %ecc_buf57 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %ecc_buf57, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pad.sroa.0.i)
  %212 = ptrtoint ptr %pad.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 -1, ptr %pad.sroa.0.i, align 4
  %213 = ptrtoint ptr %bch to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %bch, align 4
  %215 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %t, align 4
  %mul.i293 = mul i32 %216, %214
  %sub.i294 = add i32 %mul.i293, 31
  %div81.i = lshr i32 %sub.i294, 5
  %sub1.i295 = add nsw i32 %div81.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1.i295)
  %cmp143.not.i = icmp eq i32 %sub1.i295, 0
  br i1 %cmp143.not.i, label %if.then126.for.end.i308_crit_edge, label %for.body.lr.ph.i

if.then126.for.end.i308_crit_edge:                ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i308

for.body.lr.ph.i:                                 ; preds = %if.then126
  %swap_bits.i.i296 = getelementptr inbounds %struct.bch_control, ptr %bch, i32 0, i32 15
  br label %for.body.i301

for.body.i301:                                    ; preds = %swap_bits.exit103.i.for.body.i301_crit_edge, %for.body.lr.ph.i
  %i.0145.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %swap_bits.exit103.i.for.body.i301_crit_edge ]
  %dst.addr.0144.i = phi ptr [ %ecc, %for.body.lr.ph.i ], [ %incdec.ptr15.i, %swap_bits.exit103.i.for.body.i301_crit_edge ]
  %arrayidx.i297 = getelementptr i32, ptr %211, i32 %i.0145.i
  %217 = ptrtoint ptr %arrayidx.i297 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %arrayidx.i297, align 4
  %shr.i298 = lshr i32 %218, 24
  %conv.i299 = trunc i32 %shr.i298 to i8
  %219 = ptrtoint ptr %swap_bits.i.i296 to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %swap_bits.i.i296, align 4, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %220)
  %tobool.not.i.i300 = icmp eq i8 %220, 0
  br i1 %tobool.not.i.i300, label %for.body.i301.swap_bits.exit.i306_crit_edge, label %if.end.i.i303

for.body.i301.swap_bits.exit.i306_crit_edge:      ; preds = %for.body.i301
  call void @__sanitizer_cov_trace_pc() #9
  br label %swap_bits.exit.i306

if.end.i.i303:                                    ; preds = %for.body.i301
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i302 = getelementptr [256 x i8], ptr @swap_bits_table, i32 0, i32 %shr.i298
  %221 = ptrtoint ptr %arrayidx.i.i302 to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %arrayidx.i.i302, align 1
  br label %swap_bits.exit.i306

swap_bits.exit.i306:                              ; preds = %if.end.i.i303, %for.body.i301.swap_bits.exit.i306_crit_edge
  %retval.0.i.i304 = phi i8 [ %222, %if.end.i.i303 ], [ %conv.i299, %for.body.i301.swap_bits.exit.i306_crit_edge ]
  %incdec.ptr.i305 = getelementptr i8, ptr %dst.addr.0144.i, i32 1
  %223 = ptrtoint ptr %dst.addr.0144.i to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 %retval.0.i.i304, ptr %dst.addr.0144.i, align 1
  %224 = ptrtoint ptr %arrayidx.i297 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %arrayidx.i297, align 4
  %shr3.i = lshr i32 %225, 16
  %conv4.i = trunc i32 %shr3.i to i8
  %226 = ptrtoint ptr %swap_bits.i.i296 to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %swap_bits.i.i296, align 4, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %227)
  %tobool.not.i84.i = icmp eq i8 %227, 0
  br i1 %tobool.not.i84.i, label %swap_bits.exit.i306.swap_bits.exit89.i_crit_edge, label %if.end.i87.i

swap_bits.exit.i306.swap_bits.exit89.i_crit_edge: ; preds = %swap_bits.exit.i306
  call void @__sanitizer_cov_trace_pc() #9
  br label %swap_bits.exit89.i

if.end.i87.i:                                     ; preds = %swap_bits.exit.i306
  call void @__sanitizer_cov_trace_pc() #9
  %idxprom.i85.i = and i32 %shr3.i, 255
  %arrayidx.i86.i = getelementptr [256 x i8], ptr @swap_bits_table, i32 0, i32 %idxprom.i85.i
  %228 = ptrtoint ptr %arrayidx.i86.i to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %arrayidx.i86.i, align 1
  br label %swap_bits.exit89.i

swap_bits.exit89.i:                               ; preds = %if.end.i87.i, %swap_bits.exit.i306.swap_bits.exit89.i_crit_edge
  %retval.0.i88.i = phi i8 [ %229, %if.end.i87.i ], [ %conv4.i, %swap_bits.exit.i306.swap_bits.exit89.i_crit_edge ]
  %incdec.ptr6.i = getelementptr i8, ptr %dst.addr.0144.i, i32 2
  %230 = ptrtoint ptr %incdec.ptr.i305 to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 %retval.0.i88.i, ptr %incdec.ptr.i305, align 1
  %231 = ptrtoint ptr %arrayidx.i297 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %arrayidx.i297, align 4
  %shr8.i = lshr i32 %232, 8
  %conv9.i = trunc i32 %shr8.i to i8
  %233 = ptrtoint ptr %swap_bits.i.i296 to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %swap_bits.i.i296, align 4, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %234)
  %tobool.not.i91.i = icmp eq i8 %234, 0
  br i1 %tobool.not.i91.i, label %swap_bits.exit89.i.swap_bits.exit96.i_crit_edge, label %if.end.i94.i

swap_bits.exit89.i.swap_bits.exit96.i_crit_edge:  ; preds = %swap_bits.exit89.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %swap_bits.exit96.i

if.end.i94.i:                                     ; preds = %swap_bits.exit89.i
  call void @__sanitizer_cov_trace_pc() #9
  %idxprom.i92.i = and i32 %shr8.i, 255
  %arrayidx.i93.i = getelementptr [256 x i8], ptr @swap_bits_table, i32 0, i32 %idxprom.i92.i
  %235 = ptrtoint ptr %arrayidx.i93.i to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %arrayidx.i93.i, align 1
  br label %swap_bits.exit96.i

swap_bits.exit96.i:                               ; preds = %if.end.i94.i, %swap_bits.exit89.i.swap_bits.exit96.i_crit_edge
  %retval.0.i95.i = phi i8 [ %236, %if.end.i94.i ], [ %conv9.i, %swap_bits.exit89.i.swap_bits.exit96.i_crit_edge ]
  %incdec.ptr11.i = getelementptr i8, ptr %dst.addr.0144.i, i32 3
  %237 = ptrtoint ptr %incdec.ptr6.i to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 %retval.0.i95.i, ptr %incdec.ptr6.i, align 1
  %238 = ptrtoint ptr %arrayidx.i297 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %arrayidx.i297, align 4
  %conv13.i = trunc i32 %239 to i8
  %240 = ptrtoint ptr %swap_bits.i.i296 to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %swap_bits.i.i296, align 4, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %241)
  %tobool.not.i98.i = icmp eq i8 %241, 0
  br i1 %tobool.not.i98.i, label %swap_bits.exit96.i.swap_bits.exit103.i_crit_edge, label %if.end.i101.i

swap_bits.exit96.i.swap_bits.exit103.i_crit_edge: ; preds = %swap_bits.exit96.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %swap_bits.exit103.i

if.end.i101.i:                                    ; preds = %swap_bits.exit96.i
  call void @__sanitizer_cov_trace_pc() #9
  %idxprom.i99.i = and i32 %239, 255
  %arrayidx.i100.i = getelementptr [256 x i8], ptr @swap_bits_table, i32 0, i32 %idxprom.i99.i
  %242 = ptrtoint ptr %arrayidx.i100.i to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %arrayidx.i100.i, align 1
  br label %swap_bits.exit103.i

swap_bits.exit103.i:                              ; preds = %if.end.i101.i, %swap_bits.exit96.i.swap_bits.exit103.i_crit_edge
  %retval.0.i102.i = phi i8 [ %243, %if.end.i101.i ], [ %conv13.i, %swap_bits.exit96.i.swap_bits.exit103.i_crit_edge ]
  %incdec.ptr15.i = getelementptr i8, ptr %dst.addr.0144.i, i32 4
  %244 = ptrtoint ptr %incdec.ptr11.i to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 %retval.0.i102.i, ptr %incdec.ptr11.i, align 1
  %inc.i = add nuw i32 %i.0145.i, 1
  %exitcond.not.i307 = icmp eq i32 %inc.i, %sub1.i295
  br i1 %exitcond.not.i307, label %swap_bits.exit103.i.for.end.i308_crit_edge, label %swap_bits.exit103.i.for.body.i301_crit_edge

swap_bits.exit103.i.for.body.i301_crit_edge:      ; preds = %swap_bits.exit103.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i301

swap_bits.exit103.i.for.end.i308_crit_edge:       ; preds = %swap_bits.exit103.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i308

for.end.i308:                                     ; preds = %swap_bits.exit103.i.for.end.i308_crit_edge, %if.then126.for.end.i308_crit_edge
  %dst.addr.0.lcssa.i = phi ptr [ %ecc, %if.then126.for.end.i308_crit_edge ], [ %incdec.ptr15.i, %swap_bits.exit103.i.for.end.i308_crit_edge ]
  %arrayidx16.i = getelementptr i32, ptr %211, i32 %sub1.i295
  %245 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %arrayidx16.i, align 4
  %shr17.i = lshr i32 %246, 24
  %swap_bits.i104.i = getelementptr inbounds %struct.bch_control, ptr %bch, i32 0, i32 15
  %247 = ptrtoint ptr %swap_bits.i104.i to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %swap_bits.i104.i, align 4, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %248)
  %tobool.not.i105.i = icmp eq i8 %248, 0
  br i1 %tobool.not.i105.i, label %swap_bits.exit124.thread.i, label %if.end.i129.i

swap_bits.exit124.thread.i:                       ; preds = %for.end.i308
  call void @__sanitizer_cov_trace_pc() #9
  %conv18.i = trunc i32 %shr17.i to i8
  %249 = ptrtoint ptr %pad.sroa.0.i to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 %conv18.i, ptr %pad.sroa.0.i, align 4
  %shr22136.i = lshr i32 %246, 16
  %conv23137.i = trunc i32 %shr22136.i to i8
  %shr27139.i = lshr i32 %246, 8
  %conv28140.i = trunc i32 %shr27139.i to i8
  %conv32142.i = trunc i32 %246 to i8
  br label %store_ecc8.exit

if.end.i129.i:                                    ; preds = %for.end.i308
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i107.i = getelementptr [256 x i8], ptr @swap_bits_table, i32 0, i32 %shr17.i
  %250 = ptrtoint ptr %arrayidx.i107.i to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %arrayidx.i107.i, align 1
  %252 = ptrtoint ptr %pad.sroa.0.i to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 %251, ptr %pad.sroa.0.i, align 4
  %shr22.i = lshr i32 %246, 16
  %idxprom.i113.i = and i32 %shr22.i, 255
  %arrayidx.i114.i = getelementptr [256 x i8], ptr @swap_bits_table, i32 0, i32 %idxprom.i113.i
  %253 = ptrtoint ptr %arrayidx.i114.i to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %arrayidx.i114.i, align 1
  %shr27.i = lshr i32 %246, 8
  %idxprom.i120.i = and i32 %shr27.i, 255
  %arrayidx.i121.i = getelementptr [256 x i8], ptr @swap_bits_table, i32 0, i32 %idxprom.i120.i
  %255 = ptrtoint ptr %arrayidx.i121.i to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %arrayidx.i121.i, align 1
  %idxprom.i127.i = and i32 %246, 255
  %arrayidx.i128.i = getelementptr [256 x i8], ptr @swap_bits_table, i32 0, i32 %idxprom.i127.i
  %257 = ptrtoint ptr %arrayidx.i128.i to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %arrayidx.i128.i, align 1
  br label %store_ecc8.exit

store_ecc8.exit:                                  ; preds = %if.end.i129.i, %swap_bits.exit124.thread.i
  %.sink154.i = phi i8 [ %conv23137.i, %swap_bits.exit124.thread.i ], [ %254, %if.end.i129.i ]
  %.sink.i = phi i8 [ %conv28140.i, %swap_bits.exit124.thread.i ], [ %256, %if.end.i129.i ]
  %retval.0.i130.i = phi i8 [ %conv32142.i, %swap_bits.exit124.thread.i ], [ %258, %if.end.i129.i ]
  %pad.sroa.0.i.1.i.1..sroa_idx = getelementptr inbounds i8, ptr %pad.sroa.0.i, i32 1
  %259 = ptrtoint ptr %pad.sroa.0.i.1.i.1..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %259)
  store i8 %.sink154.i, ptr %pad.sroa.0.i.1.i.1..sroa_idx, align 1
  %pad.sroa.0.i.2.i.2..sroa_idx = getelementptr inbounds i8, ptr %pad.sroa.0.i, i32 2
  %260 = ptrtoint ptr %pad.sroa.0.i.2.i.2..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %260)
  store i8 %.sink.i, ptr %pad.sroa.0.i.2.i.2..sroa_idx, align 2
  %pad.sroa.0.i.3.i.3..sroa_idx = getelementptr inbounds i8, ptr %pad.sroa.0.i, i32 3
  %261 = ptrtoint ptr %pad.sroa.0.i.3.i.3..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %261)
  store i8 %retval.0.i130.i, ptr %pad.sroa.0.i.3.i.3..sroa_idx, align 1
  %262 = ptrtoint ptr %bch to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %bch, align 4
  %264 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %t, align 4
  %mul37.i = mul i32 %265, %263
  %sub39.i = add i32 %mul37.i, 7
  %div4082.i = lshr i32 %sub39.i, 3
  %mul41.neg.i = mul nsw i32 %sub1.i295, -4
  %sub42.i = add nsw i32 %div4082.i, %mul41.neg.i
  %266 = call ptr @memcpy(ptr %dst.addr.0.lcssa.i, ptr %pad.sroa.0.i, i32 %sub42.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pad.sroa.0.i)
  br label %cleanup

cleanup:                                          ; preds = %store_ecc8.exit, %if.end124.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %r) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @load_ecc8(ptr nocapture noundef readonly %bch, ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %src) unnamed_addr #3 align 64 {
entry:
  %pad.sroa.0 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pad.sroa.0)
  %0 = ptrtoint ptr %pad.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %pad.sroa.0, align 4
  %1 = ptrtoint ptr %bch to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %bch, align 4
  %t = getelementptr inbounds %struct.bch_control, ptr %bch, i32 0, i32 2
  %3 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %t, align 4
  %mul = mul i32 %4, %2
  %sub = add i32 %mul, 31
  %div67 = lshr i32 %sub, 5
  %sub1 = add nsw i32 %div67, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1)
  %cmp159.not = icmp eq i32 %sub1, 0
  br i1 %cmp159.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %swap_bits.i = getelementptr inbounds %struct.bch_control, ptr %bch, i32 0, i32 15
  br label %for.body

for.body:                                         ; preds = %swap_bits.exit89.for.body_crit_edge, %for.body.lr.ph
  %i.0162 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %swap_bits.exit89.for.body_crit_edge ]
  %src.addr.0160 = phi ptr [ %src, %for.body.lr.ph ], [ %add.ptr, %swap_bits.exit89.for.body_crit_edge ]
  %5 = ptrtoint ptr %src.addr.0160 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %src.addr.0160, align 1
  %7 = ptrtoint ptr %swap_bits.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %swap_bits.i, align 4, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  %conv119 = zext i8 %6 to i32
  br i1 %tobool.not.i, label %swap_bits.exit82.thread, label %if.end.i87

swap_bits.exit82.thread:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %shl120 = shl nuw i32 %conv119, 24
  %arrayidx2121 = getelementptr i8, ptr %src.addr.0160, i32 1
  %9 = ptrtoint ptr %arrayidx2121 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx2121, align 1
  %conv4125 = zext i8 %10 to i32
  %shl5126 = shl nuw nsw i32 %conv4125, 16
  %or127 = or i32 %shl5126, %shl120
  %arrayidx6128 = getelementptr i8, ptr %src.addr.0160, i32 2
  %11 = ptrtoint ptr %arrayidx6128 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx6128, align 1
  %conv8132 = zext i8 %12 to i32
  %shl9133 = shl nuw nsw i32 %conv8132, 8
  %or10134 = or i32 %or127, %shl9133
  %arrayidx11135 = getelementptr i8, ptr %src.addr.0160, i32 3
  br label %swap_bits.exit89

if.end.i87:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr [256 x i8], ptr @swap_bits_table, i32 0, i32 %conv119
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i, align 1
  %conv = zext i8 %14 to i32
  %shl = shl nuw i32 %conv, 24
  %arrayidx2 = getelementptr i8, ptr %src.addr.0160, i32 1
  %15 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx2, align 1
  %idxprom.i71 = zext i8 %16 to i32
  %arrayidx.i72 = getelementptr [256 x i8], ptr @swap_bits_table, i32 0, i32 %idxprom.i71
  %17 = ptrtoint ptr %arrayidx.i72 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i72, align 1
  %conv4 = zext i8 %18 to i32
  %shl5 = shl nuw nsw i32 %conv4, 16
  %or = or i32 %shl5, %shl
  %arrayidx6 = getelementptr i8, ptr %src.addr.0160, i32 2
  %19 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx6, align 1
  %idxprom.i78 = zext i8 %20 to i32
  %arrayidx.i79 = getelementptr [256 x i8], ptr @swap_bits_table, i32 0, i32 %idxprom.i78
  %21 = ptrtoint ptr %arrayidx.i79 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i79, align 1
  %conv8 = zext i8 %22 to i32
  %shl9 = shl nuw nsw i32 %conv8, 8
  %or10 = or i32 %or, %shl9
  %arrayidx11 = getelementptr i8, ptr %src.addr.0160, i32 3
  %23 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx11, align 1
  %idxprom.i85 = zext i8 %24 to i32
  %arrayidx.i86 = getelementptr [256 x i8], ptr @swap_bits_table, i32 0, i32 %idxprom.i85
  br label %swap_bits.exit89

swap_bits.exit89:                                 ; preds = %if.end.i87, %swap_bits.exit82.thread
  %or10136 = phi i32 [ %or10, %if.end.i87 ], [ %or10134, %swap_bits.exit82.thread ]
  %retval.0.i88.in = phi ptr [ %arrayidx.i86, %if.end.i87 ], [ %arrayidx11135, %swap_bits.exit82.thread ]
  %25 = ptrtoint ptr %retval.0.i88.in to i32
  call void @__asan_load1_noabort(i32 %25)
  %retval.0.i88 = load i8, ptr %retval.0.i88.in, align 1
  %conv13 = zext i8 %retval.0.i88 to i32
  %or14 = or i32 %or10136, %conv13
  %arrayidx15 = getelementptr i32, ptr %dst, i32 %i.0162
  %26 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or14, ptr %arrayidx15, align 4
  %inc = add nuw i32 %i.0162, 1
  %add.ptr = getelementptr i8, ptr %src.addr.0160, i32 4
  %exitcond.not = icmp eq i32 %inc, %sub1
  br i1 %exitcond.not, label %swap_bits.exit89.for.end_crit_edge, label %swap_bits.exit89.for.body_crit_edge

swap_bits.exit89.for.body_crit_edge:              ; preds = %swap_bits.exit89
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

swap_bits.exit89.for.end_crit_edge:               ; preds = %swap_bits.exit89
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %swap_bits.exit89.for.end_crit_edge, %entry.for.end_crit_edge
  %src.addr.0.lcssa = phi ptr [ %src, %entry.for.end_crit_edge ], [ %add.ptr, %swap_bits.exit89.for.end_crit_edge ]
  %27 = ptrtoint ptr %bch to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bch, align 4
  %29 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %t, align 4
  %mul18 = mul i32 %30, %28
  %sub20 = add i32 %mul18, 7
  %div2168 = lshr i32 %sub20, 3
  %mul22.neg = mul nsw i32 %sub1, -4
  %sub23 = add nsw i32 %div2168, %mul22.neg
  %31 = call ptr @memcpy(ptr %pad.sroa.0, ptr %src.addr.0.lcssa, i32 %sub23)
  %32 = ptrtoint ptr %pad.sroa.0 to i32
  call void @__asan_load1_noabort(i32 %32)
  %pad.sroa.0.0.pad.sroa.0.0.pad.sroa.0.0.pad.sroa.0.0. = load i8, ptr %pad.sroa.0, align 4
  %swap_bits.i90 = getelementptr inbounds %struct.bch_control, ptr %bch, i32 0, i32 15
  %33 = ptrtoint ptr %swap_bits.i90 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %swap_bits.i90, align 4, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i91 = icmp eq i8 %34, 0
  %conv26138 = zext i8 %pad.sroa.0.0.pad.sroa.0.0.pad.sroa.0.0.pad.sroa.0.0. to i32
  br i1 %tobool.not.i91, label %swap_bits.exit110.thread, label %if.end.i115

swap_bits.exit110.thread:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %shl27139 = shl nuw i32 %conv26138, 24
  %pad.sroa.0.1.arrayidx28.sroa_idx164 = getelementptr inbounds i8, ptr %pad.sroa.0, i32 1
  %35 = ptrtoint ptr %pad.sroa.0.1.arrayidx28.sroa_idx164 to i32
  call void @__asan_load1_noabort(i32 %35)
  %pad.sroa.0.1.pad.sroa.0.1.pad.sroa.0.1.pad.sroa.0.1.141 = load i8, ptr %pad.sroa.0.1.arrayidx28.sroa_idx164, align 1
  %conv30145 = zext i8 %pad.sroa.0.1.pad.sroa.0.1.pad.sroa.0.1.pad.sroa.0.1.141 to i32
  %shl31146 = shl nuw nsw i32 %conv30145, 16
  %or32147 = or i32 %shl31146, %shl27139
  %pad.sroa.0.2.arrayidx33.sroa_idx166 = getelementptr inbounds i8, ptr %pad.sroa.0, i32 2
  %36 = ptrtoint ptr %pad.sroa.0.2.arrayidx33.sroa_idx166 to i32
  call void @__asan_load1_noabort(i32 %36)
  %pad.sroa.0.2.pad.sroa.0.2.pad.sroa.0.2.pad.sroa.0.2.149 = load i8, ptr %pad.sroa.0.2.arrayidx33.sroa_idx166, align 2
  %conv35153 = zext i8 %pad.sroa.0.2.pad.sroa.0.2.pad.sroa.0.2.pad.sroa.0.2.149 to i32
  %shl36154 = shl nuw nsw i32 %conv35153, 8
  %or37155 = or i32 %or32147, %shl36154
  %pad.sroa.0.3.arrayidx38.sroa_idx168 = getelementptr inbounds i8, ptr %pad.sroa.0, i32 3
  br label %swap_bits.exit117

if.end.i115:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i93 = getelementptr [256 x i8], ptr @swap_bits_table, i32 0, i32 %conv26138
  %37 = ptrtoint ptr %arrayidx.i93 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.i93, align 1
  %conv26 = zext i8 %38 to i32
  %shl27 = shl nuw i32 %conv26, 24
  %pad.sroa.0.1.arrayidx28.sroa_idx163 = getelementptr inbounds i8, ptr %pad.sroa.0, i32 1
  %39 = ptrtoint ptr %pad.sroa.0.1.arrayidx28.sroa_idx163 to i32
  call void @__asan_load1_noabort(i32 %39)
  %pad.sroa.0.1.pad.sroa.0.1.pad.sroa.0.1.pad.sroa.0.1. = load i8, ptr %pad.sroa.0.1.arrayidx28.sroa_idx163, align 1
  %idxprom.i99 = zext i8 %pad.sroa.0.1.pad.sroa.0.1.pad.sroa.0.1.pad.sroa.0.1. to i32
  %arrayidx.i100 = getelementptr [256 x i8], ptr @swap_bits_table, i32 0, i32 %idxprom.i99
  %40 = ptrtoint ptr %arrayidx.i100 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.i100, align 1
  %conv30 = zext i8 %41 to i32
  %shl31 = shl nuw nsw i32 %conv30, 16
  %or32 = or i32 %shl31, %shl27
  %pad.sroa.0.2.arrayidx33.sroa_idx165 = getelementptr inbounds i8, ptr %pad.sroa.0, i32 2
  %42 = ptrtoint ptr %pad.sroa.0.2.arrayidx33.sroa_idx165 to i32
  call void @__asan_load1_noabort(i32 %42)
  %pad.sroa.0.2.pad.sroa.0.2.pad.sroa.0.2.pad.sroa.0.2. = load i8, ptr %pad.sroa.0.2.arrayidx33.sroa_idx165, align 2
  %idxprom.i106 = zext i8 %pad.sroa.0.2.pad.sroa.0.2.pad.sroa.0.2.pad.sroa.0.2. to i32
  %arrayidx.i107 = getelementptr [256 x i8], ptr @swap_bits_table, i32 0, i32 %idxprom.i106
  %43 = ptrtoint ptr %arrayidx.i107 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.i107, align 1
  %conv35 = zext i8 %44 to i32
  %shl36 = shl nuw nsw i32 %conv35, 8
  %or37 = or i32 %or32, %shl36
  %pad.sroa.0.3.arrayidx38.sroa_idx167 = getelementptr inbounds i8, ptr %pad.sroa.0, i32 3
  %45 = ptrtoint ptr %pad.sroa.0.3.arrayidx38.sroa_idx167 to i32
  call void @__asan_load1_noabort(i32 %45)
  %pad.sroa.0.3.pad.sroa.0.3.pad.sroa.0.3.pad.sroa.0.3. = load i8, ptr %pad.sroa.0.3.arrayidx38.sroa_idx167, align 1
  %idxprom.i113 = zext i8 %pad.sroa.0.3.pad.sroa.0.3.pad.sroa.0.3.pad.sroa.0.3. to i32
  %arrayidx.i114 = getelementptr [256 x i8], ptr @swap_bits_table, i32 0, i32 %idxprom.i113
  br label %swap_bits.exit117

swap_bits.exit117:                                ; preds = %if.end.i115, %swap_bits.exit110.thread
  %pad.sroa.0.3.arrayidx38.sroa_idx168.sink = phi ptr [ %pad.sroa.0.3.arrayidx38.sroa_idx168, %swap_bits.exit110.thread ], [ %arrayidx.i114, %if.end.i115 ]
  %or37158 = phi i32 [ %or37155, %swap_bits.exit110.thread ], [ %or37, %if.end.i115 ]
  %46 = ptrtoint ptr %pad.sroa.0.3.arrayidx38.sroa_idx168.sink to i32
  call void @__asan_load1_noabort(i32 %46)
  %pad.sroa.0.3.pad.sroa.0.3.pad.sroa.0.3.pad.sroa.0.3.157 = load i8, ptr %pad.sroa.0.3.arrayidx38.sroa_idx168.sink, align 1
  %conv40 = zext i8 %pad.sroa.0.3.pad.sroa.0.3.pad.sroa.0.3.pad.sroa.0.3.157 to i32
  %or41 = or i32 %or37158, %conv40
  %arrayidx42 = getelementptr i32, ptr %dst, i32 %sub1
  %47 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or41, ptr %arrayidx42, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pad.sroa.0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bch_decode(ptr noundef %bch, ptr noundef %data, i32 noundef %len, ptr noundef readonly %recv_ecc, ptr noundef readonly %calc_ecc, ptr noundef readonly %syn, ptr noundef %errloc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %bch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bch, align 4
  %t = getelementptr inbounds %struct.bch_control, ptr %bch, i32 0, i32 2
  %2 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %t, align 4
  %mul = mul i32 %3, %1
  %sub = add i32 %mul, 31
  %div121 = lshr i32 %sub, 5
  %mul1 = shl i32 %len, 3
  %n = getelementptr inbounds %struct.bch_control, ptr %bch, i32 0, i32 1
  %4 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n, align 4
  %ecc_bits = getelementptr inbounds %struct.bch_control, ptr %bch, i32 0, i32 3
  %6 = ptrtoint ptr %ecc_bits to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ecc_bits, align 4
  %sub2 = sub i32 %5, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %mul1, i32 %sub2)
  %cmp = icmp ugt i32 %mul1, %sub2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %syn, null
  br i1 %tobool.not, label %if.then3, label %if.end.if.end26_crit_edge

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then3:                                         ; preds = %if.end
  %tobool4.not = icmp eq ptr %calc_ecc, null
  br i1 %tobool4.not, label %if.then5, label %if.end10

if.then5:                                         ; preds = %if.then3
  %tobool6.not = icmp eq ptr %data, null
  %tobool7.not = icmp eq ptr %recv_ecc, null
  %or.cond = or i1 %tobool6.not, %tobool7.not
  br i1 %or.cond, label %if.then5.cleanup_crit_edge, label %if.end10.thread

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10.thread:                                  ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @bch_encode(ptr noundef %bch, ptr noundef nonnull %data, i32 noundef %len, ptr noundef null)
  br label %if.then12

if.end10:                                         ; preds = %if.then3
  %ecc_buf = getelementptr inbounds %struct.bch_control, ptr %bch, i32 0, i32 8
  %8 = ptrtoint ptr %ecc_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ecc_buf, align 4
  tail call fastcc void @load_ecc8(ptr noundef %bch, ptr noundef %9, ptr noundef nonnull %calc_ecc)
  %tobool11.not = icmp eq ptr %recv_ecc, null
  br i1 %tobool11.not, label %if.end10.if.end22_crit_edge, label %if.end10.if.then12_crit_edge

if.end10.if.then12_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

if.end10.if.end22_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then12:                                        ; preds = %if.end10.if.then12_crit_edge, %if.end10.thread
  %ecc_buf2 = getelementptr inbounds %struct.bch_control, ptr %bch, i32 0, i32 9
  %10 = ptrtoint ptr %ecc_buf2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ecc_buf2, align 4
  tail call fastcc void @load_ecc8(ptr noundef %bch, ptr noundef %11, ptr noundef nonnull %recv_ecc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub)
  %cmp13161.not = icmp ult i32 %sub, 32
  br i1 %cmp13161.not, label %if.then12.cleanup_crit_edge, label %for.body.lr.ph

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.then12
  %ecc_buf15 = getelementptr inbounds %struct.bch_control, ptr %bch, i32 0, i32 8
  %umax = call i32 @llvm.umax.i32(i32 %div121, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %sum.0163 = phi i32 [ 0, %for.body.lr.ph ], [ %or, %for.body.for.body_crit_edge ]
  %i.0162 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %12 = ptrtoint ptr %ecc_buf2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ecc_buf2, align 4
  %arrayidx = getelementptr i32, ptr %13, i32 %i.0162
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %16 = ptrtoint ptr %ecc_buf15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ecc_buf15, align 4
  %arrayidx16 = getelementptr i32, ptr %17, i32 %i.0162
  %18 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx16, align 4
  %xor = xor i32 %19, %15
  store i32 %xor, ptr %arrayidx16, align 4
  %20 = load ptr, ptr %ecc_buf15, align 4
  %arrayidx18 = getelementptr i32, ptr %20, i32 %i.0162
  %21 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx18, align 4
  %or = or i32 %22, %sum.0163
  %inc = add nuw nsw i32 %i.0162, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %phi.cmp = icmp eq i32 %or, 0
  br i1 %phi.cmp, label %for.end.cleanup_crit_edge, label %for.end.if.end22_crit_edge

for.end.if.end22_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22:                                         ; preds = %for.end.if.end22_crit_edge, %if.end10.if.end22_crit_edge
  %ecc_buf23 = getelementptr inbounds %struct.bch_control, ptr %bch, i32 0, i32 8
  %23 = ptrtoint ptr %ecc_buf23 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ecc_buf23, align 4
  %syn24 = getelementptr inbounds %struct.bch_control, ptr %bch, i32 0, i32 11
  %25 = ptrtoint ptr %syn24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %syn24, align 4
  %27 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %t, align 4
  %29 = ptrtoint ptr %ecc_bits to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ecc_bits, align 4
  %and.i = and i32 %30, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end22.if.end.i_crit_edge, label %if.then.i

if.end22.if.end.i_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = sub nuw nsw i32 32, %and.i
  %notmask.i = shl nsw i32 -1, %sub.i
  %div.i = sdiv i32 %30, 32
  %arrayidx.i = getelementptr i32, ptr %24, i32 %div.i
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i, align 4
  %and3.i = and i32 %32, %notmask.i
  store i32 %and3.i, ptr %arrayidx.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end22.if.end.i_crit_edge
  %mul.i = shl i32 %28, 1
  %mul4.i = shl i32 %28, 3
  %33 = call ptr @memset(ptr %26, i32 0, i32 %mul4.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %cmp55.i = icmp sgt i32 %mul.i, 0
  %a_pow_tab.i.i = getelementptr inbounds %struct.bch_control, ptr %bch, i32 0, i32 5
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.end.i
  %ecc.addr.0.i = phi ptr [ %24, %if.end.i ], [ %incdec.ptr.i, %do.cond.i.do.body.i_crit_edge ]
  %s.0.i = phi i32 [ %30, %if.end.i ], [ %sub5.i, %do.cond.i.do.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr i32, ptr %ecc.addr.0.i, i32 1
  %34 = ptrtoint ptr %ecc.addr.0.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ecc.addr.0.i, align 4
  %sub5.i = add i32 %s.0.i, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool6.not57.i = icmp eq i32 %35, 0
  br i1 %tobool6.not57.i, label %do.body.i.do.cond.i_crit_edge, label %do.body.i.while.body.i_crit_edge

do.body.i.while.body.i_crit_edge:                 ; preds = %do.body.i
  br label %while.body.i

do.body.i.do.cond.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond.i

while.body.i:                                     ; preds = %for.end.i.while.body.i_crit_edge, %do.body.i.while.body.i_crit_edge
  %poly.058.i = phi i32 [ %xor14.i, %for.end.i.while.body.i_crit_edge ], [ %35, %do.body.i.while.body.i_crit_edge ]
  %36 = tail call i32 @llvm.ctlz.i32(i32 %poly.058.i, i1 true) #10, !range !31
  %sub.i.op.i.i = xor i32 %36, 31
  br i1 %cmp55.i, label %for.body.lr.ph.i, label %while.body.i.for.end.i_crit_edge

while.body.i.for.end.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %while.body.i
  %add8.i = add i32 %sub.i.op.i.i, %sub5.i
  br label %for.body.i

for.body.i:                                       ; preds = %a_pow.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %j.056.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add12.i, %a_pow.exit.i.for.body.i_crit_edge ]
  %add.i = or i32 %j.056.i, 1
  %mul9.i = mul i32 %add.i, %add8.i
  %37 = ptrtoint ptr %a_pow_tab.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %a_pow_tab.i.i, align 4
  %39 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %mul9.i)
  %cmp.not9.i.i.i = icmp ugt i32 %40, %mul9.i
  br i1 %cmp.not9.i.i.i, label %for.body.i.a_pow.exit.i_crit_edge, label %while.body.lr.ph.i.i.i

for.body.i.a_pow.exit.i_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %a_pow.exit.i

while.body.lr.ph.i.i.i:                           ; preds = %for.body.i
  %41 = ptrtoint ptr %bch to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bch, align 4
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %while.body.lr.ph.i.i.i
  %v.addr.010.i.i.i = phi i32 [ %mul9.i, %while.body.lr.ph.i.i.i ], [ %add.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 %v.addr.010.i.i.i, %40
  %and.i.i.i = and i32 %sub.i.i.i, %40
  %shr.i.i.i = lshr i32 %sub.i.i.i, %42
  %add.i.i.i = add i32 %shr.i.i.i, %and.i.i.i
  %cmp.not.i.i.i = icmp ult i32 %add.i.i.i, %40
  br i1 %cmp.not.i.i.i, label %while.body.i.i.i.a_pow.exit.i_crit_edge, label %while.body.i.i.i.while.body.i.i.i_crit_edge

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i.i

while.body.i.i.i.a_pow.exit.i_crit_edge:          ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %a_pow.exit.i

a_pow.exit.i:                                     ; preds = %while.body.i.i.i.a_pow.exit.i_crit_edge, %for.body.i.a_pow.exit.i_crit_edge
  %v.addr.0.lcssa.i.i.i = phi i32 [ %mul9.i, %for.body.i.a_pow.exit.i_crit_edge ], [ %add.i.i.i, %while.body.i.i.i.a_pow.exit.i_crit_edge ]
  %arrayidx.i.i = getelementptr i16, ptr %38, i32 %v.addr.0.lcssa.i.i.i
  %43 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %44 to i32
  %arrayidx11.i = getelementptr i32, ptr %26, i32 %j.056.i
  %45 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx11.i, align 4
  %xor.i = xor i32 %46, %conv.i.i
  store i32 %xor.i, ptr %arrayidx11.i, align 4
  %add12.i = add nuw nsw i32 %j.056.i, 2
  %cmp.i = icmp slt i32 %add12.i, %mul.i
  br i1 %cmp.i, label %a_pow.exit.i.for.body.i_crit_edge, label %a_pow.exit.i.for.end.i_crit_edge

a_pow.exit.i.for.end.i_crit_edge:                 ; preds = %a_pow.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

a_pow.exit.i.for.body.i_crit_edge:                ; preds = %a_pow.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %a_pow.exit.i.for.end.i_crit_edge, %while.body.i.for.end.i_crit_edge
  %shl13.i = shl nuw i32 1, %sub.i.op.i.i
  %xor14.i = xor i32 %shl13.i, %poly.058.i
  %tobool6.not.i = icmp eq i32 %xor14.i, 0
  br i1 %tobool6.not.i, label %for.end.i.do.cond.i_crit_edge, label %for.end.i.while.body.i_crit_edge

for.end.i.while.body.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

for.end.i.do.cond.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond.i

do.cond.i:                                        ; preds = %for.end.i.do.cond.i_crit_edge, %do.body.i.do.cond.i_crit_edge
  %cmp15.i = icmp sgt i32 %sub5.i, 0
  br i1 %cmp15.i, label %do.cond.i.do.body.i_crit_edge, label %for.cond16.preheader.i

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

for.cond16.preheader.i:                           ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp1759.i = icmp sgt i32 %28, 0
  br i1 %cmp1759.i, label %for.body18.lr.ph.i, label %for.cond16.preheader.i.compute_syndromes.exit_crit_edge

for.cond16.preheader.i.compute_syndromes.exit_crit_edge: ; preds = %for.cond16.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %compute_syndromes.exit

for.body18.lr.ph.i:                               ; preds = %for.cond16.preheader.i
  %a_log_tab.i.i = getelementptr inbounds %struct.bch_control, ptr %bch, i32 0, i32 6
  br label %for.body18.i

for.body18.i:                                     ; preds = %gf_sqr.exit.i.for.body18.i_crit_edge, %for.body18.lr.ph.i
  %j.160.i = phi i32 [ 0, %for.body18.lr.ph.i ], [ %inc.i, %gf_sqr.exit.i.for.body18.i_crit_edge ]
  %arrayidx19.i = getelementptr i32, ptr %26, i32 %j.160.i
  %47 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i.i = icmp eq i32 %48, 0
  br i1 %tobool.not.i.i, label %for.body18.i.gf_sqr.exit.i_crit_edge, label %cond.true.i.i

for.body18.i.gf_sqr.exit.i_crit_edge:             ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gf_sqr.exit.i

cond.true.i.i:                                    ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %a_pow_tab.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %a_pow_tab.i.i, align 4
  %51 = ptrtoint ptr %a_log_tab.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %a_log_tab.i.i, align 4
  %arrayidx.i51.i = getelementptr i16, ptr %52, i32 %48
  %53 = ptrtoint ptr %arrayidx.i51.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %arrayidx.i51.i, align 2
  %conv.i52.i = zext i16 %54 to i32
  %mul.i.i = shl nuw nsw i32 %conv.i52.i, 1
  %55 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %mul.i.i)
  %cmp.i.i.i = icmp ugt i32 %56, %mul.i.i
  %sub.i.i54.i = select i1 %cmp.i.i.i, i32 0, i32 %56
  %cond.i.i.i = sub i32 %mul.i.i, %sub.i.i54.i
  %arrayidx1.i.i = getelementptr i16, ptr %50, i32 %cond.i.i.i
  %57 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %arrayidx1.i.i, align 2
  %conv2.i.i = zext i16 %58 to i32
  br label %gf_sqr.exit.i

gf_sqr.exit.i:                                    ; preds = %cond.true.i.i, %for.body18.i.gf_sqr.exit.i_crit_edge
  %cond.i.i = phi i32 [ %conv2.i.i, %cond.true.i.i ], [ 0, %for.body18.i.gf_sqr.exit.i_crit_edge ]
  %mul21.i = shl nuw i32 %j.160.i, 1
  %add22.i = or i32 %mul21.i, 1
  %arrayidx23.i = getelementptr i32, ptr %26, i32 %add22.i
  %59 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %cond.i.i, ptr %arrayidx23.i, align 4
  %inc.i = add nuw nsw i32 %j.160.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %28
  br i1 %exitcond.not.i, label %gf_sqr.exit.i.compute_syndromes.exit_crit_edge, label %gf_sqr.exit.i.for.body18.i_crit_edge

gf_sqr.exit.i.for.body18.i_crit_edge:             ; preds = %gf_sqr.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body18.i

gf_sqr.exit.i.compute_syndromes.exit_crit_edge:   ; preds = %gf_sqr.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %compute_syndromes.exit

compute_syndromes.exit:                           ; preds = %gf_sqr.exit.i.compute_syndromes.exit_crit_edge, %for.cond16.preheader.i.compute_syndromes.exit_crit_edge
  %60 = ptrtoint ptr %syn24 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %syn24, align 4
  br label %if.end26

if.end26:                                         ; preds = %compute_syndromes.exit, %if.end.if.end26_crit_edge
  %syn.addr.0 = phi ptr [ %syn, %if.end.if.end26_crit_edge ], [ %61, %compute_syndromes.exit ]
  %62 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %t, align 4
  %64 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %n, align 4
  %66 = ptrtoint ptr %syn.addr.0 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %syn.addr.0, align 4
  %elp3.i = getelementptr inbounds %struct.bch_control, ptr %bch, i32 0, i32 13
  %68 = ptrtoint ptr %elp3.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %elp3.i, align 4
  %poly_2t.i = getelementptr inbounds %struct.bch_control, ptr %bch, i32 0, i32 14
  %70 = ptrtoint ptr %poly_2t.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %poly_2t.i, align 4
  %arrayidx6.i = getelementptr %struct.bch_control, ptr %bch, i32 0, i32 14, i32 1
  %72 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx6.i, align 4
  %mul.i123 = shl i32 %63, 3
  %add8.i124 = add i32 %mul.i123, 8
  %74 = call ptr @memset(ptr %71, i32 0, i32 %add8.i124)
  %75 = call ptr @memset(ptr %69, i32 0, i32 %add8.i124)
  %76 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %71, align 4
  %c.i = getelementptr inbounds %struct.gf_poly, ptr %71, i32 0, i32 1
  %77 = ptrtoint ptr %c.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 1, ptr %c.i, align 4
  %78 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %69, align 4
  %c15.i = getelementptr inbounds %struct.gf_poly, ptr %69, i32 0, i32 1
  %79 = ptrtoint ptr %c15.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 1, ptr %c15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp156.not.i = icmp eq i32 %63, 0
  br i1 %cmp156.not.i, label %if.end26.compute_error_locator_polynomial.exit_crit_edge, label %land.rhs.lr.ph.i

if.end26.compute_error_locator_polynomial.exit_crit_edge: ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %compute_error_locator_polynomial.exit

land.rhs.lr.ph.i:                                 ; preds = %if.end26
  %a_log_tab.i.i125 = getelementptr inbounds %struct.bch_control, ptr %bch, i32 0, i32 6
  %a_pow_tab.i.i126 = getelementptr inbounds %struct.bch_control, ptr %bch, i32 0, i32 5
  %sub48.i = add i32 %63, -1
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.inc70.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %pp.0162.i = phi i32 [ -1, %land.rhs.lr.ph.i ], [ %pp.1.i, %for.inc70.i.land.rhs.i_crit_edge ]
  %d.0161.i = phi i32 [ %67, %land.rhs.lr.ph.i ], [ %d.2.i, %for.inc70.i.land.rhs.i_crit_edge ]
  %pd.0160.i = phi i32 [ 1, %land.rhs.lr.ph.i ], [ %pd.1.i, %for.inc70.i.land.rhs.i_crit_edge ]
  %i.0157.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %inc71.i, %for.inc70.i.land.rhs.i_crit_edge ]
  %80 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %69, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %63)
  %cmp18.not.i = icmp ugt i32 %81, %63
  br i1 %cmp18.not.i, label %land.rhs.i.compute_error_locator_polynomial.exit_crit_edge, label %for.body.i128

land.rhs.i.compute_error_locator_polynomial.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %compute_error_locator_polynomial.exit

for.body.i128:                                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %d.0161.i)
  %tobool.not.i127 = icmp eq i32 %d.0161.i, 0
  br i1 %tobool.not.i127, label %for.body.i128.if.end47.i_crit_edge, label %if.then.i132

for.body.i128.if.end47.i_crit_edge:               ; preds = %for.body.i128
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47.i

if.then.i132:                                     ; preds = %for.body.i128
  %mul19.i = shl i32 %i.0157.i, 1
  %sub.i129 = sub i32 %mul19.i, %pp.0162.i
  %add.i.i = shl i32 %81, 2
  %add1.i.i = add i32 %add.i.i, 8
  %82 = call ptr @memcpy(ptr %73, ptr %69, i32 %add1.i.i)
  %83 = ptrtoint ptr %a_log_tab.i.i125 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %a_log_tab.i.i125, align 4
  %arrayidx.i.i130 = getelementptr i16, ptr %84, i32 %d.0161.i
  %85 = ptrtoint ptr %arrayidx.i.i130 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %arrayidx.i.i130, align 2
  %conv.i.i131 = zext i16 %86 to i32
  %add20.i = add i32 %65, %conv.i.i131
  %arrayidx.i135.i = getelementptr i16, ptr %84, i32 %pd.0160.i
  %87 = ptrtoint ptr %arrayidx.i135.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %arrayidx.i135.i, align 2
  %conv.i136.i = zext i16 %88 to i32
  %sub22.i = sub i32 %add20.i, %conv.i136.i
  br label %for.body26.i

for.body26.i:                                     ; preds = %for.inc.i.for.body26.i_crit_edge, %if.then.i132
  %j.0151.i = phi i32 [ 0, %if.then.i132 ], [ %inc.i145, %for.inc.i.for.body26.i_crit_edge ]
  %arrayidx28.i = getelementptr %struct.gf_poly, ptr %71, i32 0, i32 1, i32 %j.0151.i
  %89 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx28.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool29.not.i = icmp eq i32 %90, 0
  br i1 %tobool29.not.i, label %for.body26.i.for.inc.i_crit_edge, label %if.then30.i

for.body26.i.for.inc.i_crit_edge:                 ; preds = %for.body26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then30.i:                                      ; preds = %for.body26.i
  %91 = ptrtoint ptr %a_log_tab.i.i125 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %a_log_tab.i.i125, align 4
  %arrayidx.i138.i = getelementptr i16, ptr %92, i32 %90
  %93 = ptrtoint ptr %arrayidx.i138.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %arrayidx.i138.i, align 2
  %conv.i139.i = zext i16 %94 to i32
  %add34.i = add i32 %sub22.i, %conv.i139.i
  %95 = ptrtoint ptr %a_pow_tab.i.i126 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %a_pow_tab.i.i126, align 4
  %97 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %98, i32 %add34.i)
  %cmp.not9.i.i.i133 = icmp ugt i32 %98, %add34.i
  br i1 %cmp.not9.i.i.i133, label %if.then30.i.a_pow.exit.i144_crit_edge, label %while.body.lr.ph.i.i.i134

if.then30.i.a_pow.exit.i144_crit_edge:            ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %a_pow.exit.i144

while.body.lr.ph.i.i.i134:                        ; preds = %if.then30.i
  %99 = ptrtoint ptr %bch to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %bch, align 4
  br label %while.body.i.i.i141

while.body.i.i.i141:                              ; preds = %while.body.i.i.i141.while.body.i.i.i141_crit_edge, %while.body.lr.ph.i.i.i134
  %v.addr.010.i.i.i135 = phi i32 [ %add34.i, %while.body.lr.ph.i.i.i134 ], [ %add.i.i.i139, %while.body.i.i.i141.while.body.i.i.i141_crit_edge ]
  %sub.i.i.i136 = sub i32 %v.addr.010.i.i.i135, %98
  %and.i.i.i137 = and i32 %sub.i.i.i136, %98
  %shr.i.i.i138 = lshr i32 %sub.i.i.i136, %100
  %add.i.i.i139 = add i32 %shr.i.i.i138, %and.i.i.i137
  %cmp.not.i.i.i140 = icmp ult i32 %add.i.i.i139, %98
  br i1 %cmp.not.i.i.i140, label %while.body.i.i.i141.a_pow.exit.i144_crit_edge, label %while.body.i.i.i141.while.body.i.i.i141_crit_edge

while.body.i.i.i141.while.body.i.i.i141_crit_edge: ; preds = %while.body.i.i.i141
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i.i141

while.body.i.i.i141.a_pow.exit.i144_crit_edge:    ; preds = %while.body.i.i.i141
  call void @__sanitizer_cov_trace_pc() #9
  br label %a_pow.exit.i144

a_pow.exit.i144:                                  ; preds = %while.body.i.i.i141.a_pow.exit.i144_crit_edge, %if.then30.i.a_pow.exit.i144_crit_edge
  %v.addr.0.lcssa.i.i.i142 = phi i32 [ %add34.i, %if.then30.i.a_pow.exit.i144_crit_edge ], [ %add.i.i.i139, %while.body.i.i.i141.a_pow.exit.i144_crit_edge ]
  %arrayidx.i140.i = getelementptr i16, ptr %96, i32 %v.addr.0.lcssa.i.i.i142
  %101 = ptrtoint ptr %arrayidx.i140.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %arrayidx.i140.i, align 2
  %conv.i141.i = zext i16 %102 to i32
  %add37.i = add i32 %j.0151.i, %sub.i129
  %arrayidx38.i = getelementptr %struct.gf_poly, ptr %69, i32 0, i32 1, i32 %add37.i
  %103 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx38.i, align 4
  %xor.i143 = xor i32 %104, %conv.i141.i
  store i32 %xor.i143, ptr %arrayidx38.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %a_pow.exit.i144, %for.body26.i.for.inc.i_crit_edge
  %inc.i145 = add i32 %j.0151.i, 1
  %105 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %71, align 4
  %cmp25.not.i = icmp ugt i32 %inc.i145, %106
  br i1 %cmp25.not.i, label %for.end.i146, label %for.inc.i.for.body26.i_crit_edge

for.inc.i.for.body26.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body26.i

for.end.i146:                                     ; preds = %for.inc.i
  %add40.i = add i32 %106, %sub.i129
  %107 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %69, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add40.i, i32 %108)
  %cmp42.i = icmp ugt i32 %add40.i, %108
  br i1 %cmp42.i, label %if.then43.i, label %for.end.i146.if.end47.i_crit_edge

for.end.i146.if.end47.i_crit_edge:                ; preds = %for.end.i146
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47.i

if.then43.i:                                      ; preds = %for.end.i146
  call void @__sanitizer_cov_trace_pc() #9
  %109 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %add40.i, ptr %69, align 4
  %110 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %73, align 4
  %add.i142.i = shl i32 %111, 2
  %add1.i143.i = add i32 %add.i142.i, 8
  %112 = call ptr @memcpy(ptr %71, ptr %73, i32 %add1.i143.i)
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.then43.i, %for.end.i146.if.end47.i_crit_edge, %for.body.i128.if.end47.i_crit_edge
  %pd.1.i = phi i32 [ %d.0161.i, %if.then43.i ], [ %pd.0160.i, %for.end.i146.if.end47.i_crit_edge ], [ %pd.0160.i, %for.body.i128.if.end47.i_crit_edge ]
  %pp.1.i = phi i32 [ %mul19.i, %if.then43.i ], [ %pp.0162.i, %for.end.i146.if.end47.i_crit_edge ], [ %pp.0162.i, %for.body.i128.if.end47.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0157.i, i32 %sub48.i)
  %cmp49.i = icmp ult i32 %i.0157.i, %sub48.i
  br i1 %cmp49.i, label %if.then50.i, label %if.end47.i.for.inc70.i_crit_edge

if.end47.i.for.inc70.i_crit_edge:                 ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc70.i

if.then50.i:                                      ; preds = %if.end47.i
  %mul51.i = shl i32 %i.0157.i, 1
  %add52.i = add i32 %mul51.i, 2
  %arrayidx53.i = getelementptr i32, ptr %syn.addr.0, i32 %add52.i
  %113 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx53.i, align 4
  %115 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %cmp56.not153.i = icmp eq i32 %116, 0
  br i1 %cmp56.not153.i, label %if.then50.i.for.inc70.i_crit_edge, label %if.then50.i.for.body57.i_crit_edge

if.then50.i.for.body57.i_crit_edge:               ; preds = %if.then50.i
  br label %for.body57.i

if.then50.i.for.inc70.i_crit_edge:                ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc70.i

for.body57.i:                                     ; preds = %gf_mul.exit.i.for.body57.i_crit_edge, %if.then50.i.for.body57.i_crit_edge
  %d.1155.i = phi i32 [ %xor65.i, %gf_mul.exit.i.for.body57.i_crit_edge ], [ %114, %if.then50.i.for.body57.i_crit_edge ]
  %j.1154.i = phi i32 [ %inc67.i, %gf_mul.exit.i.for.body57.i_crit_edge ], [ 1, %if.then50.i.for.body57.i_crit_edge ]
  %arrayidx59.i = getelementptr %struct.gf_poly, ptr %69, i32 0, i32 1, i32 %j.1154.i
  %117 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx59.i, align 4
  %sub62.i = sub i32 %add52.i, %j.1154.i
  %arrayidx63.i = getelementptr i32, ptr %syn.addr.0, i32 %sub62.i
  %119 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx63.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool.not.i.i147 = icmp eq i32 %118, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool1.not.i.i = icmp eq i32 %120, 0
  %or.cond.i.i = or i1 %tobool.not.i.i147, %tobool1.not.i.i
  br i1 %or.cond.i.i, label %for.body57.i.gf_mul.exit.i_crit_edge, label %cond.true.i.i150

for.body57.i.gf_mul.exit.i_crit_edge:             ; preds = %for.body57.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gf_mul.exit.i

cond.true.i.i150:                                 ; preds = %for.body57.i
  call void @__sanitizer_cov_trace_pc() #9
  %121 = ptrtoint ptr %a_pow_tab.i.i126 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %a_pow_tab.i.i126, align 4
  %123 = ptrtoint ptr %a_log_tab.i.i125 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %a_log_tab.i.i125, align 4
  %arrayidx.i146.i = getelementptr i16, ptr %124, i32 %118
  %125 = ptrtoint ptr %arrayidx.i146.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %arrayidx.i146.i, align 2
  %conv.i147.i = zext i16 %126 to i32
  %arrayidx3.i.i = getelementptr i16, ptr %124, i32 %120
  %127 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %arrayidx3.i.i, align 2
  %conv4.i.i = zext i16 %128 to i32
  %add.i148.i = add nuw nsw i32 %conv4.i.i, %conv.i147.i
  %129 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %130, i32 %add.i148.i)
  %cmp.i.i.i148 = icmp ugt i32 %130, %add.i148.i
  %sub.i.i150.i = select i1 %cmp.i.i.i148, i32 0, i32 %130
  %cond.i.i.i149 = sub i32 %add.i148.i, %sub.i.i150.i
  %arrayidx5.i.i = getelementptr i16, ptr %122, i32 %cond.i.i.i149
  %131 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %arrayidx5.i.i, align 2
  %conv6.i.i = zext i16 %132 to i32
  br label %gf_mul.exit.i

gf_mul.exit.i:                                    ; preds = %cond.true.i.i150, %for.body57.i.gf_mul.exit.i_crit_edge
  %cond.i.i151 = phi i32 [ %conv6.i.i, %cond.true.i.i150 ], [ 0, %for.body57.i.gf_mul.exit.i_crit_edge ]
  %xor65.i = xor i32 %cond.i.i151, %d.1155.i
  %inc67.i = add i32 %j.1154.i, 1
  %cmp56.not.i = icmp ugt i32 %inc67.i, %116
  br i1 %cmp56.not.i, label %gf_mul.exit.i.for.inc70.i_crit_edge, label %gf_mul.exit.i.for.body57.i_crit_edge

gf_mul.exit.i.for.body57.i_crit_edge:             ; preds = %gf_mul.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body57.i

gf_mul.exit.i.for.inc70.i_crit_edge:              ; preds = %gf_mul.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc70.i

for.inc70.i:                                      ; preds = %gf_mul.exit.i.for.inc70.i_crit_edge, %if.then50.i.for.inc70.i_crit_edge, %if.end47.i.for.inc70.i_crit_edge
  %d.2.i = phi i32 [ %d.0161.i, %if.end47.i.for.inc70.i_crit_edge ], [ %114, %if.then50.i.for.inc70.i_crit_edge ], [ %xor65.i, %gf_mul.exit.i.for.inc70.i_crit_edge ]
  %inc71.i = add nuw i32 %i.0157.i, 1
  %exitcond.not.i152 = icmp eq i32 %inc71.i, %63
  br i1 %exitcond.not.i152, label %for.inc70.i.compute_error_locator_polynomial.exit_crit_edge, label %for.inc70.i.land.rhs.i_crit_edge

for.inc70.i.land.rhs.i_crit_edge:                 ; preds = %for.inc70.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i

for.inc70.i.compute_error_locator_polynomial.exit_crit_edge: ; preds = %for.inc70.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %compute_error_locator_polynomial.exit

compute_error_locator_polynomial.exit:            ; preds = %for.inc70.i.compute_error_locator_polynomial.exit_crit_edge, %land.rhs.i.compute_error_locator_polynomial.exit_crit_edge, %if.end26.compute_error_locator_polynomial.exit_crit_edge
  %133 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %69, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %134, i32 %63)
  %cmp74.i = icmp ugt i32 %134, %63
  %spec.select.i = select i1 %cmp74.i, i32 -1, i32 %134
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %cmp27 = icmp sgt i32 %spec.select.i, 0
  br i1 %cmp27, label %if.then28, label %compute_error_locator_polynomial.exit.if.end62_crit_edge

compute_error_locator_polynomial.exit.if.end62_crit_edge: ; preds = %compute_error_locator_polynomial.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.then28:                                        ; preds = %compute_error_locator_polynomial.exit
  %135 = ptrtoint ptr %elp3.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %elp3.i, align 4
  %call29 = tail call fastcc i32 @find_poly_roots(ptr noundef %bch, i32 noundef 1, ptr noundef %136, ptr noundef %errloc)
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i, i32 %call29)
  %cmp30.not = icmp eq i32 %spec.select.i, %call29
  br i1 %cmp30.not, label %for.body41.lr.ph, label %if.then28.cleanup_crit_edge

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body41.lr.ph:                                 ; preds = %if.then28
  %137 = ptrtoint ptr %ecc_bits to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %ecc_bits, align 4
  %add38 = add i32 %138, %mul1
  %swap_bits = getelementptr inbounds %struct.bch_control, ptr %bch, i32 0, i32 15
  br label %for.body41

for.body41:                                       ; preds = %for.inc59.for.body41_crit_edge, %for.body41.lr.ph
  %i.1165 = phi i32 [ 0, %for.body41.lr.ph ], [ %inc60, %for.inc59.for.body41_crit_edge ]
  %arrayidx42 = getelementptr i32, ptr %errloc, i32 %i.1165
  %139 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx42, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %140, i32 %add38)
  %cmp43.not = icmp ult i32 %140, %add38
  br i1 %cmp43.not, label %if.end45, label %for.body41.cleanup_crit_edge

for.body41.cleanup_crit_edge:                     ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end45:                                         ; preds = %for.body41
  %141 = xor i32 %140, -1
  %sub48 = add i32 %add38, %141
  %142 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %sub48, ptr %arrayidx42, align 4
  %143 = ptrtoint ptr %swap_bits to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %swap_bits, align 4, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool50.not = icmp eq i8 %144, 0
  br i1 %tobool50.not, label %if.then51, label %if.end45.for.inc59_crit_edge

if.end45.for.inc59_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc59

if.then51:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %or56 = xor i32 %sub48, 7
  %145 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %or56, ptr %arrayidx42, align 4
  br label %for.inc59

for.inc59:                                        ; preds = %if.then51, %if.end45.for.inc59_crit_edge
  %inc60 = add nuw nsw i32 %i.1165, 1
  %exitcond166.not = icmp eq i32 %inc60, %spec.select.i
  br i1 %exitcond166.not, label %for.inc59.if.end62_crit_edge, label %for.inc59.for.body41_crit_edge

for.inc59.for.body41_crit_edge:                   ; preds = %for.inc59
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body41

for.inc59.if.end62_crit_edge:                     ; preds = %for.inc59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.end62:                                         ; preds = %for.inc59.if.end62_crit_edge, %compute_error_locator_polynomial.exit.if.end62_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %spec.select.i)
  %cmp63 = icmp sgt i32 %spec.select.i, -1
  %spec.select = select i1 %cmp63, i32 %spec.select.i, i32 -74
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %for.body41.cleanup_crit_edge, %if.then28.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then5.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ -74, %if.then28.cleanup_crit_edge ], [ %spec.select, %if.end62 ], [ 0, %if.then12.cleanup_crit_edge ], [ -74, %for.body41.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @find_poly_roots(ptr noundef %bch, i32 noundef %k, ptr noundef %poly, ptr noundef %roots) unnamed_addr #3 align 64 {
entry:
  %tmp.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  %poly_2t.i = getelementptr inbounds %struct.bch_control, ptr %bch, i32 0, i32 14
  %arrayidx2.i112 = getelementptr %struct.bch_control, ptr %bch, i32 0, i32 14, i32 1
  %arrayidx4.i113 = getelementptr %struct.bch_control, ptr %bch, i32 0, i32 14, i32 2
  %arrayidx6.i114 = getelementptr %struct.bch_control, ptr %bch, i32 0, i32 14, i32 3
  %a_pow_tab.i.i115 = getelementptr inbounds %struct.bch_control, ptr %bch, i32 0, i32 5
  %cache.i.i = getelementptr inbounds %struct.bch_control, ptr %bch, i32 0, i32 12
  %n.i.i.i = getelementptr inbounds %struct.bch_control, ptr %bch, i32 0, i32 1
  %a_log_tab.i.i.i.i = getelementptr inbounds %struct.bch_control, ptr %bch, i32 0, i32 6
  br label %tailrecurse

tailrecurse:                                      ; preds = %if.then13, %entry
  %accumulator.tr = phi i32 [ 0, %entry ], [ %add16, %if.then13 ]
  %k.tr = phi i32 [ %k, %entry ], [ %add14, %if.then13 ]
  %poly.tr = phi ptr [ %poly, %entry ], [ %f2.0, %if.then13 ]
  %roots.tr = phi ptr [ %roots, %entry ], [ %add.ptr, %if.then13 ]
  %0 = ptrtoint ptr %poly.tr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %poly.tr, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %land.lhs.true [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb3
    i32 4, label %sw.bb5
    i32 0, label %tailrecurse.sw.epilog_crit_edge
  ]

tailrecurse.sw.epilog_crit_edge:                  ; preds = %tailrecurse
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %tailrecurse
  %c.i = getelementptr inbounds %struct.gf_poly, ptr %poly.tr, i32 0, i32 1
  %3 = ptrtoint ptr %c.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %c.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %sw.bb.sw.epilog_crit_edge, label %if.then.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %n.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %n.i.i.i, align 4
  %7 = ptrtoint ptr %a_log_tab.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %a_log_tab.i.i.i.i, align 4
  %arrayidx4.i = getelementptr i16, ptr %8, i32 %4
  %9 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx4.i, align 2
  %conv.i = zext i16 %10 to i32
  %sub.i = sub i32 %6, %conv.i
  %arrayidx7.i = getelementptr %struct.gf_poly, ptr %poly.tr, i32 2
  %11 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx7.i, align 4
  %arrayidx8.i = getelementptr i16, ptr %8, i32 %12
  %13 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx8.i, align 2
  %conv9.i = zext i16 %14 to i32
  %add.i = add i32 %sub.i, %conv9.i
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %add.i)
  %cmp.i.i = icmp ugt i32 %6, %add.i
  %sub.i.i = select i1 %cmp.i.i, i32 0, i32 %6
  %cond.i.i = sub i32 %add.i, %sub.i.i
  %15 = ptrtoint ptr %roots.tr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %cond.i.i, ptr %roots.tr, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %tailrecurse
  %c.i44 = getelementptr inbounds %struct.gf_poly, ptr %poly.tr, i32 0, i32 1
  %16 = ptrtoint ptr %c.i44 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %c.i44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i45 = icmp eq i32 %17, 0
  br i1 %tobool.not.i45, label %sw.bb1.sw.epilog_crit_edge, label %land.lhs.true.i

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true.i:                                  ; preds = %sw.bb1
  %arrayidx2.i = getelementptr %struct.gf_poly, ptr %poly.tr, i32 2
  %18 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool3.not.i = icmp eq i32 %19, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.sw.epilog_crit_edge, label %if.then.i50

land.lhs.true.i.sw.epilog_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then.i50:                                      ; preds = %land.lhs.true.i
  %20 = ptrtoint ptr %a_log_tab.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %a_log_tab.i.i.i.i, align 4
  %arrayidx6.i = getelementptr i16, ptr %21, i32 %17
  %22 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx6.i, align 2
  %conv.i47 = zext i16 %23 to i32
  %arrayidx10.i = getelementptr i16, ptr %21, i32 %19
  %24 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx10.i, align 2
  %conv11.i = zext i16 %25 to i32
  %arrayidx14.i = getelementptr %struct.gf_poly, ptr %poly.tr, i32 3
  %26 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx14.i, align 4
  %arrayidx15.i = getelementptr i16, ptr %21, i32 %27
  %28 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx15.i, align 2
  %conv16.i = zext i16 %29 to i32
  %add.i48 = add nuw nsw i32 %conv16.i, %conv.i47
  %30 = ptrtoint ptr %n.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %n.i.i.i, align 4
  %sub.i49 = sub i32 %31, %conv11.i
  %mul.i = shl i32 %sub.i49, 1
  %add18.i = add i32 %add.i48, %mul.i
  %32 = ptrtoint ptr %a_pow_tab.i.i115 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %a_pow_tab.i.i115, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %add18.i)
  %cmp.not9.i.i.i = icmp ugt i32 %31, %add18.i
  br i1 %cmp.not9.i.i.i, label %if.then.i50.a_pow.exit.i_crit_edge, label %while.body.lr.ph.i.i.i

if.then.i50.a_pow.exit.i_crit_edge:               ; preds = %if.then.i50
  call void @__sanitizer_cov_trace_pc() #9
  br label %a_pow.exit.i

while.body.lr.ph.i.i.i:                           ; preds = %if.then.i50
  %34 = ptrtoint ptr %bch to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bch, align 4
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %while.body.lr.ph.i.i.i
  %v.addr.010.i.i.i = phi i32 [ %add18.i, %while.body.lr.ph.i.i.i ], [ %add.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 %v.addr.010.i.i.i, %31
  %and.i.i.i = and i32 %sub.i.i.i, %31
  %shr.i.i.i = lshr i32 %sub.i.i.i, %35
  %add.i.i.i = add i32 %shr.i.i.i, %and.i.i.i
  %cmp.not.i.i.i = icmp ult i32 %add.i.i.i, %31
  br i1 %cmp.not.i.i.i, label %while.body.i.i.i.a_pow.exit.i_crit_edge, label %while.body.i.i.i.while.body.i.i.i_crit_edge

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i.i

while.body.i.i.i.a_pow.exit.i_crit_edge:          ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %a_pow.exit.i

a_pow.exit.i:                                     ; preds = %while.body.i.i.i.a_pow.exit.i_crit_edge, %if.then.i50.a_pow.exit.i_crit_edge
  %v.addr.0.lcssa.i.i.i = phi i32 [ %add18.i, %if.then.i50.a_pow.exit.i_crit_edge ], [ %add.i.i.i, %while.body.i.i.i.a_pow.exit.i_crit_edge ]
  %arrayidx.i.i = getelementptr i16, ptr %33, i32 %v.addr.0.lcssa.i.i.i
  %36 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %37 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool19.not101.i = icmp eq i16 %37, 0
  br i1 %tobool19.not101.i, label %a_pow.exit.i.gf_sqr.exit.i_crit_edge, label %while.body.lr.ph.i

a_pow.exit.i.gf_sqr.exit.i_crit_edge:             ; preds = %a_pow.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gf_sqr.exit.i

while.body.lr.ph.i:                               ; preds = %a_pow.exit.i
  %xi_tab.i = getelementptr inbounds %struct.bch_control, ptr %bch, i32 0, i32 10
  %38 = ptrtoint ptr %xi_tab.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %xi_tab.i, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %r.0103.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %xor.i, %while.body.i.while.body.i_crit_edge ]
  %v.0102.i = phi i32 [ %conv.i.i, %while.body.lr.ph.i ], [ %xor22.i, %while.body.i.while.body.i_crit_edge ]
  %40 = tail call i32 @llvm.ctlz.i32(i32 %v.0102.i, i1 true) #10, !range !31
  %sub.i.op.i.i = xor i32 %40, 31
  %arrayidx21.i = getelementptr i32, ptr %39, i32 %sub.i.op.i.i
  %41 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx21.i, align 4
  %xor.i = xor i32 %42, %r.0103.i
  %shl.i = shl nuw i32 1, %sub.i.op.i.i
  %xor22.i = xor i32 %shl.i, %v.0102.i
  %tobool19.not.i = icmp eq i32 %xor22.i, 0
  br i1 %tobool19.not.i, label %while.end.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i)
  %tobool.not.i.i = icmp eq i32 %xor.i, 0
  br i1 %tobool.not.i.i, label %while.end.i.gf_sqr.exit.i_crit_edge, label %cond.true.i.i

while.end.i.gf_sqr.exit.i_crit_edge:              ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gf_sqr.exit.i

cond.true.i.i:                                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i83.i = getelementptr i16, ptr %21, i32 %xor.i
  %43 = ptrtoint ptr %arrayidx.i83.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx.i83.i, align 2
  %conv.i84.i = zext i16 %44 to i32
  %mul.i.i = shl nuw nsw i32 %conv.i84.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %mul.i.i)
  %cmp.i.i.i = icmp ugt i32 %31, %mul.i.i
  %sub.i.i86.i = select i1 %cmp.i.i.i, i32 0, i32 %31
  %cond.i.i.i = sub i32 %mul.i.i, %sub.i.i86.i
  %arrayidx1.i.i = getelementptr i16, ptr %33, i32 %cond.i.i.i
  %45 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx1.i.i, align 2
  %conv2.i.i = zext i16 %46 to i32
  br label %gf_sqr.exit.i

gf_sqr.exit.i:                                    ; preds = %cond.true.i.i, %while.end.i.gf_sqr.exit.i_crit_edge, %a_pow.exit.i.gf_sqr.exit.i_crit_edge
  %r.0.lcssa106.i = phi i32 [ %xor.i, %cond.true.i.i ], [ 0, %while.end.i.gf_sqr.exit.i_crit_edge ], [ 0, %a_pow.exit.i.gf_sqr.exit.i_crit_edge ]
  %cond.i.i51 = phi i32 [ %conv2.i.i, %cond.true.i.i ], [ 0, %while.end.i.gf_sqr.exit.i_crit_edge ], [ 0, %a_pow.exit.i.gf_sqr.exit.i_crit_edge ]
  %xor24.i = xor i32 %cond.i.i51, %r.0.lcssa106.i
  call void @__sanitizer_cov_trace_cmp4(i32 %xor24.i, i32 %conv.i.i)
  %cmp.i = icmp eq i32 %xor24.i, %conv.i.i
  br i1 %cmp.i, label %if.then26.i, label %gf_sqr.exit.i.sw.epilog_crit_edge

gf_sqr.exit.i.sw.epilog_crit_edge:                ; preds = %gf_sqr.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then26.i:                                      ; preds = %gf_sqr.exit.i
  %mul28.i = shl i32 %31, 1
  %arrayidx31.i = getelementptr i16, ptr %21, i32 %r.0.lcssa106.i
  %47 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx31.i, align 2
  %conv32.i = zext i16 %48 to i32
  %49 = add i32 %mul28.i, %conv16.i
  %50 = add nuw nsw i32 %conv11.i, %conv32.i
  %add34.i = sub i32 %49, %50
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %add34.i)
  %cmp.not9.i.i = icmp ugt i32 %31, %add34.i
  br i1 %cmp.not9.i.i, label %if.then26.i.modulo.exit.i_crit_edge, label %while.body.lr.ph.i.i

if.then26.i.modulo.exit.i_crit_edge:              ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %modulo.exit.i

while.body.lr.ph.i.i:                             ; preds = %if.then26.i
  %51 = ptrtoint ptr %bch to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %bch, align 4
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %v.addr.010.i.i = phi i32 [ %add34.i, %while.body.lr.ph.i.i ], [ %add.i.i, %while.body.i.i.while.body.i.i_crit_edge ]
  %sub.i87.i = sub i32 %v.addr.010.i.i, %31
  %and.i.i = and i32 %sub.i87.i, %31
  %shr.i.i = lshr i32 %sub.i87.i, %52
  %add.i.i = add i32 %shr.i.i, %and.i.i
  %cmp.not.i.i = icmp ult i32 %add.i.i, %31
  br i1 %cmp.not.i.i, label %while.body.i.i.modulo.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i

while.body.i.i.modulo.exit.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %modulo.exit.i

modulo.exit.i:                                    ; preds = %while.body.i.i.modulo.exit.i_crit_edge, %if.then26.i.modulo.exit.i_crit_edge
  %v.addr.0.lcssa.i.i = phi i32 [ %add34.i, %if.then26.i.modulo.exit.i_crit_edge ], [ %add.i.i, %while.body.i.i.modulo.exit.i_crit_edge ]
  %53 = ptrtoint ptr %roots.tr to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %v.addr.0.lcssa.i.i, ptr %roots.tr, align 4
  %54 = ptrtoint ptr %n.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %n.i.i.i, align 4
  %mul38.i = shl i32 %55, 1
  %56 = ptrtoint ptr %a_log_tab.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %a_log_tab.i.i.i.i, align 4
  %xor41.i = xor i32 %r.0.lcssa106.i, 1
  %arrayidx42.i = getelementptr i16, ptr %57, i32 %xor41.i
  %58 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %arrayidx42.i, align 2
  %conv43.i = zext i16 %59 to i32
  %60 = add i32 %mul38.i, %conv16.i
  %61 = add nuw nsw i32 %conv11.i, %conv43.i
  %add45.i = sub i32 %60, %61
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %add45.i)
  %cmp.not9.i89.i = icmp ugt i32 %55, %add45.i
  br i1 %cmp.not9.i89.i, label %modulo.exit.i.modulo.exit99.i_crit_edge, label %while.body.lr.ph.i90.i

modulo.exit.i.modulo.exit99.i_crit_edge:          ; preds = %modulo.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %modulo.exit99.i

while.body.lr.ph.i90.i:                           ; preds = %modulo.exit.i
  %62 = ptrtoint ptr %bch to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %bch, align 4
  br label %while.body.i97.i

while.body.i97.i:                                 ; preds = %while.body.i97.i.while.body.i97.i_crit_edge, %while.body.lr.ph.i90.i
  %v.addr.010.i91.i = phi i32 [ %add45.i, %while.body.lr.ph.i90.i ], [ %add.i95.i, %while.body.i97.i.while.body.i97.i_crit_edge ]
  %sub.i92.i = sub i32 %v.addr.010.i91.i, %55
  %and.i93.i = and i32 %sub.i92.i, %55
  %shr.i94.i = lshr i32 %sub.i92.i, %63
  %add.i95.i = add i32 %shr.i94.i, %and.i93.i
  %cmp.not.i96.i = icmp ult i32 %add.i95.i, %55
  br i1 %cmp.not.i96.i, label %while.body.i97.i.modulo.exit99.i_crit_edge, label %while.body.i97.i.while.body.i97.i_crit_edge

while.body.i97.i.while.body.i97.i_crit_edge:      ; preds = %while.body.i97.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i97.i

while.body.i97.i.modulo.exit99.i_crit_edge:       ; preds = %while.body.i97.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %modulo.exit99.i

modulo.exit99.i:                                  ; preds = %while.body.i97.i.modulo.exit99.i_crit_edge, %modulo.exit.i.modulo.exit99.i_crit_edge
  %v.addr.0.lcssa.i98.i = phi i32 [ %add45.i, %modulo.exit.i.modulo.exit99.i_crit_edge ], [ %add.i95.i, %while.body.i97.i.modulo.exit99.i_crit_edge ]
  %arrayidx48.i = getelementptr i32, ptr %roots.tr, i32 1
  %64 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %v.addr.0.lcssa.i98.i, ptr %arrayidx48.i, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %tailrecurse
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #10
  %65 = getelementptr inbounds [4 x i32], ptr %tmp.i, i32 0, i32 1
  %66 = getelementptr inbounds [4 x i32], ptr %tmp.i, i32 0, i32 2
  %67 = getelementptr inbounds [4 x i32], ptr %tmp.i, i32 0, i32 3
  %c1.i = getelementptr inbounds %struct.gf_poly, ptr %poly.tr, i32 0, i32 1
  %68 = call ptr @memset(ptr %tmp.i, i32 255, i32 16)
  %69 = ptrtoint ptr %c1.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %c1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.not.i53 = icmp eq i32 %70, 0
  br i1 %tobool.not.i53, label %sw.bb3.find_poly_deg3_roots.exit_crit_edge, label %gf_div.exit.i

sw.bb3.find_poly_deg3_roots.exit_crit_edge:       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %find_poly_deg3_roots.exit

gf_div.exit.i:                                    ; preds = %sw.bb3
  %arrayidx4.i54 = getelementptr %struct.gf_poly, ptr %poly.tr, i32 4
  %71 = ptrtoint ptr %arrayidx4.i54 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx4.i54, align 4
  %73 = ptrtoint ptr %a_pow_tab.i.i115 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %a_pow_tab.i.i115, align 4
  %75 = ptrtoint ptr %a_log_tab.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %a_log_tab.i.i.i.i, align 4
  %arrayidx.i.i56 = getelementptr i16, ptr %76, i32 %70
  %77 = ptrtoint ptr %arrayidx.i.i56 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %arrayidx.i.i56, align 2
  %conv.i.i57 = zext i16 %78 to i32
  %79 = ptrtoint ptr %n.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %n.i.i.i, align 4
  %add.i.i58 = add i32 %80, %conv.i.i57
  %arrayidx2.i.i = getelementptr i16, ptr %76, i32 %72
  %81 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %arrayidx2.i.i, align 2
  %conv3.i.i = zext i16 %82 to i32
  %sub.i.i59 = sub i32 %add.i.i58, %conv3.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %sub.i.i59)
  %cmp.i.i.i60 = icmp ugt i32 %80, %sub.i.i59
  %sub.i.i.i61 = select i1 %cmp.i.i.i60, i32 0, i32 %80
  %cond.i.i.i62 = sub i32 %sub.i.i59, %sub.i.i.i61
  %arrayidx4.i.i = getelementptr i16, ptr %74, i32 %cond.i.i.i62
  %83 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %arrayidx4.i.i, align 2
  %conv5.i.i = zext i16 %84 to i32
  %arrayidx8.i63 = getelementptr %struct.gf_poly, ptr %poly.tr, i32 2
  %85 = ptrtoint ptr %arrayidx8.i63 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx8.i63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool.not.i52.i = icmp eq i32 %86, 0
  br i1 %tobool.not.i52.i, label %gf_div.exit.i.gf_div.exit69.i_crit_edge, label %cond.true.i67.i

gf_div.exit.i.gf_div.exit69.i_crit_edge:          ; preds = %gf_div.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gf_div.exit69.i

cond.true.i67.i:                                  ; preds = %gf_div.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i55.i = getelementptr i16, ptr %76, i32 %86
  %87 = ptrtoint ptr %arrayidx.i55.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %arrayidx.i55.i, align 2
  %conv.i56.i = zext i16 %88 to i32
  %add.i58.i = sub i32 %80, %conv3.i.i
  %sub.i61.i = add i32 %add.i58.i, %conv.i56.i
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %sub.i61.i)
  %cmp.i.i62.i = icmp ugt i32 %80, %sub.i61.i
  %sub.i.i63.i = select i1 %cmp.i.i62.i, i32 0, i32 %80
  %cond.i.i64.i = sub i32 %sub.i61.i, %sub.i.i63.i
  %arrayidx4.i65.i = getelementptr i16, ptr %74, i32 %cond.i.i64.i
  %89 = ptrtoint ptr %arrayidx4.i65.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %arrayidx4.i65.i, align 2
  %conv5.i66.i = zext i16 %90 to i32
  br label %gf_div.exit69.i

gf_div.exit69.i:                                  ; preds = %cond.true.i67.i, %gf_div.exit.i.gf_div.exit69.i_crit_edge
  %cond.i68.i = phi i32 [ %conv5.i66.i, %cond.true.i67.i ], [ 0, %gf_div.exit.i.gf_div.exit69.i_crit_edge ]
  %arrayidx11.i = getelementptr %struct.gf_poly, ptr %poly.tr, i32 3
  %91 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool.not.i70.i = icmp eq i32 %92, 0
  br i1 %tobool.not.i70.i, label %gf_div.exit69.i.gf_sqr.exit.i68_crit_edge, label %gf_div.exit87.i

gf_div.exit69.i.gf_sqr.exit.i68_crit_edge:        ; preds = %gf_div.exit69.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gf_sqr.exit.i68

gf_div.exit87.i:                                  ; preds = %gf_div.exit69.i
  %arrayidx.i73.i = getelementptr i16, ptr %76, i32 %92
  %93 = ptrtoint ptr %arrayidx.i73.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %arrayidx.i73.i, align 2
  %conv.i74.i = zext i16 %94 to i32
  %add.i76.i = sub i32 %80, %conv3.i.i
  %sub.i79.i = add i32 %add.i76.i, %conv.i74.i
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %sub.i79.i)
  %cmp.i.i80.i = icmp ugt i32 %80, %sub.i79.i
  %sub.i.i81.i = select i1 %cmp.i.i80.i, i32 0, i32 %80
  %cond.i.i82.i = sub i32 %sub.i79.i, %sub.i.i81.i
  %arrayidx4.i83.i = getelementptr i16, ptr %74, i32 %cond.i.i82.i
  %95 = ptrtoint ptr %arrayidx4.i83.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %arrayidx4.i83.i, align 2
  %conv5.i84.i = zext i16 %96 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %96)
  %tobool.not.i88.i = icmp eq i16 %96, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %84)
  %tobool1.not.i.i = icmp eq i16 %84, 0
  %or.cond.i.i = or i1 %tobool1.not.i.i, %tobool.not.i88.i
  br i1 %or.cond.i.i, label %gf_div.exit87.i.gf_mul.exit.i_crit_edge, label %cond.true.i97.i

gf_div.exit87.i.gf_mul.exit.i_crit_edge:          ; preds = %gf_div.exit87.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gf_mul.exit.i

cond.true.i97.i:                                  ; preds = %gf_div.exit87.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i91.i = getelementptr i16, ptr %76, i32 %conv5.i84.i
  %97 = ptrtoint ptr %arrayidx.i91.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %arrayidx.i91.i, align 2
  %conv.i92.i = zext i16 %98 to i32
  %arrayidx3.i.i = getelementptr i16, ptr %76, i32 %conv5.i.i
  %99 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %arrayidx3.i.i, align 2
  %conv4.i.i = zext i16 %100 to i32
  %add.i93.i = add nuw nsw i32 %conv4.i.i, %conv.i92.i
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %add.i93.i)
  %cmp.i.i94.i = icmp ugt i32 %80, %add.i93.i
  %sub.i.i95.i = select i1 %cmp.i.i94.i, i32 0, i32 %80
  %cond.i.i96.i = sub i32 %add.i93.i, %sub.i.i95.i
  %arrayidx5.i.i = getelementptr i16, ptr %74, i32 %cond.i.i96.i
  %101 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %arrayidx5.i.i, align 2
  %conv6.i.i = zext i16 %102 to i32
  br label %gf_mul.exit.i

gf_mul.exit.i:                                    ; preds = %cond.true.i97.i, %gf_div.exit87.i.gf_mul.exit.i_crit_edge
  %cond.i98.i = phi i32 [ %conv6.i.i, %cond.true.i97.i ], [ 0, %gf_div.exit87.i.gf_mul.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i68.i)
  %tobool1.not.i100.i = icmp eq i32 %cond.i68.i, 0
  %or.cond.i101.i = or i1 %tobool1.not.i100.i, %tobool.not.i88.i
  br i1 %or.cond.i101.i, label %gf_mul.exit117.i, label %cond.true.i115.i

cond.true.i115.i:                                 ; preds = %gf_mul.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i104.i = getelementptr i16, ptr %76, i32 %conv5.i84.i
  %103 = ptrtoint ptr %arrayidx.i104.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %arrayidx.i104.i, align 2
  %conv.i105.i = zext i16 %104 to i32
  %arrayidx3.i106.i = getelementptr i16, ptr %76, i32 %cond.i68.i
  %105 = ptrtoint ptr %arrayidx3.i106.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %arrayidx3.i106.i, align 2
  %conv4.i107.i = zext i16 %106 to i32
  %add.i108.i = add nuw nsw i32 %conv4.i107.i, %conv.i105.i
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %add.i108.i)
  %cmp.i.i110.i = icmp ugt i32 %80, %add.i108.i
  %sub.i.i111.i = select i1 %cmp.i.i110.i, i32 0, i32 %80
  %cond.i.i112.i = sub i32 %add.i108.i, %sub.i.i111.i
  %arrayidx5.i113.i = getelementptr i16, ptr %74, i32 %cond.i.i112.i
  %107 = ptrtoint ptr %arrayidx5.i113.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %arrayidx5.i113.i, align 2
  %xor159163.i = xor i16 %108, %84
  %xor159.i = zext i16 %xor159163.i to i32
  br label %cond.true.i127.i

gf_mul.exit117.i:                                 ; preds = %gf_mul.exit.i
  br i1 %tobool.not.i88.i, label %gf_mul.exit117.i.gf_sqr.exit.i68_crit_edge, label %gf_mul.exit117.i.cond.true.i127.i_crit_edge

gf_mul.exit117.i.cond.true.i127.i_crit_edge:      ; preds = %gf_mul.exit117.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.true.i127.i

gf_mul.exit117.i.gf_sqr.exit.i68_crit_edge:       ; preds = %gf_mul.exit117.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gf_sqr.exit.i68

cond.true.i127.i:                                 ; preds = %gf_mul.exit117.i.cond.true.i127.i_crit_edge, %cond.true.i115.i
  %xor162.i = phi i32 [ %xor159.i, %cond.true.i115.i ], [ %conv5.i.i, %gf_mul.exit117.i.cond.true.i127.i_crit_edge ]
  %arrayidx.i121.i = getelementptr i16, ptr %76, i32 %conv5.i84.i
  %109 = ptrtoint ptr %arrayidx.i121.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %arrayidx.i121.i, align 2
  %conv.i122.i = zext i16 %110 to i32
  %mul.i.i64 = shl nuw nsw i32 %conv.i122.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %mul.i.i64)
  %cmp.i.i124.i = icmp ugt i32 %80, %mul.i.i64
  %sub.i.i125.i = select i1 %cmp.i.i124.i, i32 0, i32 %80
  %cond.i.i126.i = sub i32 %mul.i.i64, %sub.i.i125.i
  %arrayidx1.i.i65 = getelementptr i16, ptr %74, i32 %cond.i.i126.i
  %111 = ptrtoint ptr %arrayidx1.i.i65 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %arrayidx1.i.i65, align 2
  %conv2.i.i66 = zext i16 %112 to i32
  br label %gf_sqr.exit.i68

gf_sqr.exit.i68:                                  ; preds = %cond.true.i127.i, %gf_mul.exit117.i.gf_sqr.exit.i68_crit_edge, %gf_div.exit69.i.gf_sqr.exit.i68_crit_edge
  %xor158.i = phi i32 [ %xor162.i, %cond.true.i127.i ], [ %conv5.i.i, %gf_mul.exit117.i.gf_sqr.exit.i68_crit_edge ], [ %conv5.i.i, %gf_div.exit69.i.gf_sqr.exit.i68_crit_edge ]
  %cond.i86141149157.i = phi i32 [ %conv5.i84.i, %cond.true.i127.i ], [ 0, %gf_mul.exit117.i.gf_sqr.exit.i68_crit_edge ], [ 0, %gf_div.exit69.i.gf_sqr.exit.i68_crit_edge ]
  %cond.i98150156.i = phi i32 [ %cond.i98.i, %cond.true.i127.i ], [ %cond.i98.i, %gf_mul.exit117.i.gf_sqr.exit.i68_crit_edge ], [ 0, %gf_div.exit69.i.gf_sqr.exit.i68_crit_edge ]
  %cond.i128.i = phi i32 [ %conv2.i.i66, %cond.true.i127.i ], [ 0, %gf_mul.exit117.i.gf_sqr.exit.i68_crit_edge ], [ 0, %gf_div.exit69.i.gf_sqr.exit.i68_crit_edge ]
  %xor16.i = xor i32 %cond.i128.i, %cond.i68.i
  %call17.i = call fastcc i32 @find_affine4_roots(ptr noundef %bch, i32 noundef %xor16.i, i32 noundef %xor158.i, i32 noundef %cond.i98150156.i, ptr noundef nonnull %tmp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call17.i)
  %cmp.i67 = icmp eq i32 %call17.i, 4
  br i1 %cmp.i67, label %for.cond.preheader.i, label %gf_sqr.exit.i68.find_poly_deg3_roots.exit_crit_edge

gf_sqr.exit.i68.find_poly_deg3_roots.exit_crit_edge: ; preds = %gf_sqr.exit.i68
  call void @__sanitizer_cov_trace_pc() #9
  br label %find_poly_deg3_roots.exit

for.cond.preheader.i:                             ; preds = %gf_sqr.exit.i68
  %113 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %tmp.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %114, i32 %cond.i86141149157.i)
  %cmp21.not.i = icmp eq i32 %114, %cond.i86141149157.i
  br i1 %cmp21.not.i, label %for.cond.preheader.i.for.inc.i_crit_edge, label %if.then22.i

for.cond.preheader.i.for.inc.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then22.i:                                      ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  %115 = ptrtoint ptr %n.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %n.i.i.i, align 4
  %117 = ptrtoint ptr %a_log_tab.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %a_log_tab.i.i.i.i, align 4
  %arrayidx.i131.i = getelementptr i16, ptr %118, i32 %114
  %119 = ptrtoint ptr %arrayidx.i131.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %arrayidx.i131.i, align 2
  %conv.i132.i = zext i16 %120 to i32
  %sub.i133.i = sub i32 %116, %conv.i132.i
  call void @__sanitizer_cov_trace_cmp4(i32 %116, i32 %sub.i133.i)
  %cmp.i.i134.i = icmp ugt i32 %116, %sub.i133.i
  %sub.i.i135.i = select i1 %cmp.i.i134.i, i32 0, i32 %116
  %cond.i.i136.i = sub i32 %sub.i133.i, %sub.i.i135.i
  %121 = ptrtoint ptr %roots.tr to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %cond.i.i136.i, ptr %roots.tr, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then22.i, %for.cond.preheader.i.for.inc.i_crit_edge
  %n.1.i = phi i32 [ 1, %if.then22.i ], [ 0, %for.cond.preheader.i.for.inc.i_crit_edge ]
  %122 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %65, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %123, i32 %cond.i86141149157.i)
  %cmp21.not.1.i = icmp eq i32 %123, %cond.i86141149157.i
  br i1 %cmp21.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.then22.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i

if.then22.1.i:                                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  %124 = ptrtoint ptr %n.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %n.i.i.i, align 4
  %126 = ptrtoint ptr %a_log_tab.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %a_log_tab.i.i.i.i, align 4
  %arrayidx.i131.1.i = getelementptr i16, ptr %127, i32 %123
  %128 = ptrtoint ptr %arrayidx.i131.1.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %arrayidx.i131.1.i, align 2
  %conv.i132.1.i = zext i16 %129 to i32
  %sub.i133.1.i = sub i32 %125, %conv.i132.1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %125, i32 %sub.i133.1.i)
  %cmp.i.i134.1.i = icmp ugt i32 %125, %sub.i133.1.i
  %sub.i.i135.1.i = select i1 %cmp.i.i134.1.i, i32 0, i32 %125
  %cond.i.i136.1.i = sub i32 %sub.i133.1.i, %sub.i.i135.1.i
  %inc.1.i = add nuw nsw i32 %n.1.i, 1
  %arrayidx25.1.i = getelementptr i32, ptr %roots.tr, i32 %n.1.i
  %130 = ptrtoint ptr %arrayidx25.1.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %cond.i.i136.1.i, ptr %arrayidx25.1.i, align 4
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then22.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %n.1.1.i = phi i32 [ %inc.1.i, %if.then22.1.i ], [ %n.1.i, %for.inc.i.for.inc.1.i_crit_edge ]
  %131 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %66, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %132, i32 %cond.i86141149157.i)
  %cmp21.not.2.i = icmp eq i32 %132, %cond.i86141149157.i
  br i1 %cmp21.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.then22.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i

if.then22.2.i:                                    ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %133 = ptrtoint ptr %n.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %n.i.i.i, align 4
  %135 = ptrtoint ptr %a_log_tab.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %a_log_tab.i.i.i.i, align 4
  %arrayidx.i131.2.i = getelementptr i16, ptr %136, i32 %132
  %137 = ptrtoint ptr %arrayidx.i131.2.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %arrayidx.i131.2.i, align 2
  %conv.i132.2.i = zext i16 %138 to i32
  %sub.i133.2.i = sub i32 %134, %conv.i132.2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %134, i32 %sub.i133.2.i)
  %cmp.i.i134.2.i = icmp ugt i32 %134, %sub.i133.2.i
  %sub.i.i135.2.i = select i1 %cmp.i.i134.2.i, i32 0, i32 %134
  %cond.i.i136.2.i = sub i32 %sub.i133.2.i, %sub.i.i135.2.i
  %inc.2.i = add nuw nsw i32 %n.1.1.i, 1
  %arrayidx25.2.i = getelementptr i32, ptr %roots.tr, i32 %n.1.1.i
  %139 = ptrtoint ptr %arrayidx25.2.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %cond.i.i136.2.i, ptr %arrayidx25.2.i, align 4
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then22.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %n.1.2.i = phi i32 [ %inc.2.i, %if.then22.2.i ], [ %n.1.1.i, %for.inc.1.i.for.inc.2.i_crit_edge ]
  %140 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %67, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %141, i32 %cond.i86141149157.i)
  %cmp21.not.3.i = icmp eq i32 %141, %cond.i86141149157.i
  br i1 %cmp21.not.3.i, label %for.inc.2.i.find_poly_deg3_roots.exit_crit_edge, label %if.then22.3.i

for.inc.2.i.find_poly_deg3_roots.exit_crit_edge:  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %find_poly_deg3_roots.exit

if.then22.3.i:                                    ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  %142 = ptrtoint ptr %n.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %n.i.i.i, align 4
  %144 = ptrtoint ptr %a_log_tab.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %a_log_tab.i.i.i.i, align 4
  %arrayidx.i131.3.i = getelementptr i16, ptr %145, i32 %141
  %146 = ptrtoint ptr %arrayidx.i131.3.i to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %arrayidx.i131.3.i, align 2
  %conv.i132.3.i = zext i16 %147 to i32
  %sub.i133.3.i = sub i32 %143, %conv.i132.3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %143, i32 %sub.i133.3.i)
  %cmp.i.i134.3.i = icmp ugt i32 %143, %sub.i133.3.i
  %sub.i.i135.3.i = select i1 %cmp.i.i134.3.i, i32 0, i32 %143
  %cond.i.i136.3.i = sub i32 %sub.i133.3.i, %sub.i.i135.3.i
  %inc.3.i = add nuw nsw i32 %n.1.2.i, 1
  %arrayidx25.3.i = getelementptr i32, ptr %roots.tr, i32 %n.1.2.i
  %148 = ptrtoint ptr %arrayidx25.3.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %cond.i.i136.3.i, ptr %arrayidx25.3.i, align 4
  br label %find_poly_deg3_roots.exit

find_poly_deg3_roots.exit:                        ; preds = %if.then22.3.i, %for.inc.2.i.find_poly_deg3_roots.exit_crit_edge, %gf_sqr.exit.i68.find_poly_deg3_roots.exit_crit_edge, %sw.bb3.find_poly_deg3_roots.exit_crit_edge
  %n.2.i = phi i32 [ 0, %gf_sqr.exit.i68.find_poly_deg3_roots.exit_crit_edge ], [ 0, %sw.bb3.find_poly_deg3_roots.exit_crit_edge ], [ %inc.3.i, %if.then22.3.i ], [ %n.1.2.i, %for.inc.2.i.find_poly_deg3_roots.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #10
  br label %sw.epilog

sw.bb5:                                           ; preds = %tailrecurse
  %c1.i69 = getelementptr inbounds %struct.gf_poly, ptr %poly.tr, i32 0, i32 1
  %149 = ptrtoint ptr %c1.i69 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %c1.i69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %cmp.i70 = icmp eq i32 %150, 0
  br i1 %cmp.i70, label %sw.bb5.sw.epilog_crit_edge, label %gf_div.exit.i87

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

gf_div.exit.i87:                                  ; preds = %sw.bb5
  %arrayidx4.i71 = getelementptr %struct.gf_poly, ptr %poly.tr, i32 5
  %151 = ptrtoint ptr %arrayidx4.i71 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %arrayidx4.i71, align 4
  %153 = ptrtoint ptr %a_pow_tab.i.i115 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %a_pow_tab.i.i115, align 4
  %155 = ptrtoint ptr %a_log_tab.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %a_log_tab.i.i.i.i, align 4
  %arrayidx.i.i74 = getelementptr i16, ptr %156, i32 %150
  %157 = ptrtoint ptr %arrayidx.i.i74 to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %arrayidx.i.i74, align 2
  %conv.i.i75 = zext i16 %158 to i32
  %159 = ptrtoint ptr %n.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %n.i.i.i, align 4
  %add.i.i77 = add i32 %160, %conv.i.i75
  %arrayidx2.i.i78 = getelementptr i16, ptr %156, i32 %152
  %161 = ptrtoint ptr %arrayidx2.i.i78 to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %arrayidx2.i.i78, align 2
  %conv3.i.i79 = zext i16 %162 to i32
  %sub.i.i80 = sub i32 %add.i.i77, %conv3.i.i79
  call void @__sanitizer_cov_trace_cmp4(i32 %160, i32 %sub.i.i80)
  %cmp.i.i.i81 = icmp ugt i32 %160, %sub.i.i80
  %sub.i.i.i82 = select i1 %cmp.i.i.i81, i32 0, i32 %160
  %cond.i.i.i83 = sub i32 %sub.i.i80, %sub.i.i.i82
  %arrayidx4.i.i84 = getelementptr i16, ptr %154, i32 %cond.i.i.i83
  %163 = ptrtoint ptr %arrayidx4.i.i84 to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %arrayidx4.i.i84, align 2
  %conv5.i.i85 = zext i16 %164 to i32
  %arrayidx8.i86 = getelementptr %struct.gf_poly, ptr %poly.tr, i32 2
  %165 = ptrtoint ptr %arrayidx8.i86 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %arrayidx8.i86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %tobool.not.i116.i = icmp eq i32 %166, 0
  br i1 %tobool.not.i116.i, label %gf_div.exit.i87.gf_div.exit133.i_crit_edge, label %cond.true.i131.i

gf_div.exit.i87.gf_div.exit133.i_crit_edge:       ; preds = %gf_div.exit.i87
  call void @__sanitizer_cov_trace_pc() #9
  br label %gf_div.exit133.i

cond.true.i131.i:                                 ; preds = %gf_div.exit.i87
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i119.i = getelementptr i16, ptr %156, i32 %166
  %167 = ptrtoint ptr %arrayidx.i119.i to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %arrayidx.i119.i, align 2
  %conv.i120.i = zext i16 %168 to i32
  %add.i122.i = sub i32 %160, %conv3.i.i79
  %sub.i125.i = add i32 %add.i122.i, %conv.i120.i
  call void @__sanitizer_cov_trace_cmp4(i32 %160, i32 %sub.i125.i)
  %cmp.i.i126.i = icmp ugt i32 %160, %sub.i125.i
  %sub.i.i127.i = select i1 %cmp.i.i126.i, i32 0, i32 %160
  %cond.i.i128.i = sub i32 %sub.i125.i, %sub.i.i127.i
  %arrayidx4.i129.i = getelementptr i16, ptr %154, i32 %cond.i.i128.i
  %169 = ptrtoint ptr %arrayidx4.i129.i to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %arrayidx4.i129.i, align 2
  %conv5.i130.i = zext i16 %170 to i32
  br label %gf_div.exit133.i

gf_div.exit133.i:                                 ; preds = %cond.true.i131.i, %gf_div.exit.i87.gf_div.exit133.i_crit_edge
  %cond.i132.i = phi i32 [ %conv5.i130.i, %cond.true.i131.i ], [ 0, %gf_div.exit.i87.gf_div.exit133.i_crit_edge ]
  %arrayidx11.i88 = getelementptr %struct.gf_poly, ptr %poly.tr, i32 3
  %171 = ptrtoint ptr %arrayidx11.i88 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %arrayidx11.i88, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %tobool.not.i134.i = icmp eq i32 %172, 0
  br i1 %tobool.not.i134.i, label %gf_div.exit133.i.gf_div.exit151.i_crit_edge, label %cond.true.i149.i

gf_div.exit133.i.gf_div.exit151.i_crit_edge:      ; preds = %gf_div.exit133.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gf_div.exit151.i

cond.true.i149.i:                                 ; preds = %gf_div.exit133.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i137.i = getelementptr i16, ptr %156, i32 %172
  %173 = ptrtoint ptr %arrayidx.i137.i to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %arrayidx.i137.i, align 2
  %conv.i138.i = zext i16 %174 to i32
  %add.i140.i = sub i32 %160, %conv3.i.i79
  %sub.i143.i = add i32 %add.i140.i, %conv.i138.i
  call void @__sanitizer_cov_trace_cmp4(i32 %160, i32 %sub.i143.i)
  %cmp.i.i144.i = icmp ugt i32 %160, %sub.i143.i
  %sub.i.i145.i = select i1 %cmp.i.i144.i, i32 0, i32 %160
  %cond.i.i146.i = sub i32 %sub.i143.i, %sub.i.i145.i
  %arrayidx4.i147.i = getelementptr i16, ptr %154, i32 %cond.i.i146.i
  %175 = ptrtoint ptr %arrayidx4.i147.i to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %arrayidx4.i147.i, align 2
  %conv5.i148.i = zext i16 %176 to i32
  br label %gf_div.exit151.i

gf_div.exit151.i:                                 ; preds = %cond.true.i149.i, %gf_div.exit133.i.gf_div.exit151.i_crit_edge
  %cond.i150.i = phi i32 [ %conv5.i148.i, %cond.true.i149.i ], [ 0, %gf_div.exit133.i.gf_div.exit151.i_crit_edge ]
  %arrayidx14.i89 = getelementptr %struct.gf_poly, ptr %poly.tr, i32 4
  %177 = ptrtoint ptr %arrayidx14.i89 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %arrayidx14.i89, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %178)
  %tobool.not.i152.i = icmp eq i32 %178, 0
  br i1 %tobool.not.i152.i, label %gf_div.exit151.i.if.end36.i_crit_edge, label %gf_div.exit169.i

gf_div.exit151.i.if.end36.i_crit_edge:            ; preds = %gf_div.exit151.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36.i

gf_div.exit169.i:                                 ; preds = %gf_div.exit151.i
  %arrayidx.i155.i = getelementptr i16, ptr %156, i32 %178
  %179 = ptrtoint ptr %arrayidx.i155.i to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %arrayidx.i155.i, align 2
  %conv.i156.i = zext i16 %180 to i32
  %add.i158.i = sub i32 %160, %conv3.i.i79
  %sub.i161.i = add i32 %add.i158.i, %conv.i156.i
  call void @__sanitizer_cov_trace_cmp4(i32 %160, i32 %sub.i161.i)
  %cmp.i.i162.i = icmp ugt i32 %160, %sub.i161.i
  %sub.i.i163.i = select i1 %cmp.i.i162.i, i32 0, i32 %160
  %cond.i.i164.i = sub i32 %sub.i161.i, %sub.i.i163.i
  %arrayidx4.i165.i = getelementptr i16, ptr %154, i32 %cond.i.i164.i
  %181 = ptrtoint ptr %arrayidx4.i165.i to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %arrayidx4.i165.i, align 2
  %conv5.i166.i = zext i16 %182 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %182)
  %tobool.not.i90 = icmp eq i16 %182, 0
  br i1 %tobool.not.i90, label %gf_div.exit169.i.if.end36.i_crit_edge, label %if.then16.i

gf_div.exit169.i.if.end36.i_crit_edge:            ; preds = %gf_div.exit169.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36.i

if.then16.i:                                      ; preds = %gf_div.exit169.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i132.i)
  %tobool17.not.i = icmp eq i32 %cond.i132.i, 0
  br i1 %tobool17.not.i, label %if.then16.i.if.end29.i_crit_edge, label %gf_div.exit187.i

if.then16.i.if.end29.i_crit_edge:                 ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.i

gf_div.exit187.i:                                 ; preds = %if.then16.i
  %arrayidx.i173.i = getelementptr i16, ptr %156, i32 %cond.i132.i
  %183 = ptrtoint ptr %arrayidx.i173.i to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %arrayidx.i173.i, align 2
  %conv.i174.i = zext i16 %184 to i32
  %add.i176.i = add i32 %160, %conv.i174.i
  %arrayidx2.i177.i = getelementptr i16, ptr %156, i32 %conv5.i166.i
  %185 = ptrtoint ptr %arrayidx2.i177.i to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %arrayidx2.i177.i, align 2
  %conv3.i178.i = zext i16 %186 to i32
  %sub.i179.i = sub i32 %add.i176.i, %conv3.i178.i
  call void @__sanitizer_cov_trace_cmp4(i32 %160, i32 %sub.i179.i)
  %cmp.i.i180.i = icmp ugt i32 %160, %sub.i179.i
  %sub.i.i181.i = select i1 %cmp.i.i180.i, i32 0, i32 %160
  %cond.i.i182.i = sub i32 %sub.i179.i, %sub.i.i181.i
  %arrayidx4.i183.i = getelementptr i16, ptr %154, i32 %cond.i.i182.i
  %187 = ptrtoint ptr %arrayidx4.i183.i to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %arrayidx4.i183.i, align 2
  %conv5.i184.i = zext i16 %188 to i32
  %arrayidx.i189.i = getelementptr i16, ptr %156, i32 %conv5.i184.i
  %189 = ptrtoint ptr %arrayidx.i189.i to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %arrayidx.i189.i, align 2
  %conv.i190.i = zext i16 %190 to i32
  %and.i = and i32 %conv.i190.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool21.not.i = icmp eq i32 %and.i, 0
  %spec.select = select i1 %tobool21.not.i, i32 0, i32 %160
  %add.i91 = add i32 %spec.select, %conv.i190.i
  %div.i = sdiv i32 %add.i91, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %160, i32 %div.i)
  %cmp.not9.i.i.i92 = icmp ugt i32 %160, %div.i
  br i1 %cmp.not9.i.i.i92, label %gf_div.exit187.i.a_pow.exit.i102_crit_edge, label %while.body.lr.ph.i.i.i93

gf_div.exit187.i.a_pow.exit.i102_crit_edge:       ; preds = %gf_div.exit187.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %a_pow.exit.i102

while.body.lr.ph.i.i.i93:                         ; preds = %gf_div.exit187.i
  %191 = ptrtoint ptr %bch to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %bch, align 4
  br label %while.body.i.i.i99

while.body.i.i.i99:                               ; preds = %while.body.i.i.i99.while.body.i.i.i99_crit_edge, %while.body.lr.ph.i.i.i93
  %v.addr.010.i.i.i94 = phi i32 [ %div.i, %while.body.lr.ph.i.i.i93 ], [ %add.i.i.i97, %while.body.i.i.i99.while.body.i.i.i99_crit_edge ]
  %sub.i.i192.i = sub i32 %v.addr.010.i.i.i94, %160
  %and.i.i.i95 = and i32 %sub.i.i192.i, %160
  %shr.i.i.i96 = lshr i32 %sub.i.i192.i, %192
  %add.i.i.i97 = add i32 %shr.i.i.i96, %and.i.i.i95
  %cmp.not.i.i.i98 = icmp ult i32 %add.i.i.i97, %160
  br i1 %cmp.not.i.i.i98, label %while.body.i.i.i99.a_pow.exit.i102_crit_edge, label %while.body.i.i.i99.while.body.i.i.i99_crit_edge

while.body.i.i.i99.while.body.i.i.i99_crit_edge:  ; preds = %while.body.i.i.i99
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i.i99

while.body.i.i.i99.a_pow.exit.i102_crit_edge:     ; preds = %while.body.i.i.i99
  call void @__sanitizer_cov_trace_pc() #9
  br label %a_pow.exit.i102

a_pow.exit.i102:                                  ; preds = %while.body.i.i.i99.a_pow.exit.i102_crit_edge, %gf_div.exit187.i.a_pow.exit.i102_crit_edge
  %v.addr.0.lcssa.i.i.i100 = phi i32 [ %div.i, %gf_div.exit187.i.a_pow.exit.i102_crit_edge ], [ %add.i.i.i97, %while.body.i.i.i99.a_pow.exit.i102_crit_edge ]
  %arrayidx.i193.i = getelementptr i16, ptr %154, i32 %v.addr.0.lcssa.i.i.i100
  %193 = ptrtoint ptr %arrayidx.i193.i to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %arrayidx.i193.i, align 2
  %conv.i194.i = zext i16 %194 to i32
  %mul.i101 = shl i32 %add.i91, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %160, i32 %mul.i101)
  %cmp.not9.i.i197.i = icmp ugt i32 %160, %mul.i101
  br i1 %cmp.not9.i.i197.i, label %a_pow.exit.i102.a_pow.exit209.i_crit_edge, label %while.body.lr.ph.i.i198.i

a_pow.exit.i102.a_pow.exit209.i_crit_edge:        ; preds = %a_pow.exit.i102
  call void @__sanitizer_cov_trace_pc() #9
  br label %a_pow.exit209.i

while.body.lr.ph.i.i198.i:                        ; preds = %a_pow.exit.i102
  %195 = ptrtoint ptr %bch to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %bch, align 4
  br label %while.body.i.i205.i

while.body.i.i205.i:                              ; preds = %while.body.i.i205.i.while.body.i.i205.i_crit_edge, %while.body.lr.ph.i.i198.i
  %v.addr.010.i.i199.i = phi i32 [ %mul.i101, %while.body.lr.ph.i.i198.i ], [ %add.i.i203.i, %while.body.i.i205.i.while.body.i.i205.i_crit_edge ]
  %sub.i.i200.i = sub i32 %v.addr.010.i.i199.i, %160
  %and.i.i201.i = and i32 %sub.i.i200.i, %160
  %shr.i.i202.i = lshr i32 %sub.i.i200.i, %196
  %add.i.i203.i = add i32 %shr.i.i202.i, %and.i.i201.i
  %cmp.not.i.i204.i = icmp ult i32 %add.i.i203.i, %160
  br i1 %cmp.not.i.i204.i, label %while.body.i.i205.i.a_pow.exit209.i_crit_edge, label %while.body.i.i205.i.while.body.i.i205.i_crit_edge

while.body.i.i205.i.while.body.i.i205.i_crit_edge: ; preds = %while.body.i.i205.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i205.i

while.body.i.i205.i.a_pow.exit209.i_crit_edge:    ; preds = %while.body.i.i205.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %a_pow.exit209.i

a_pow.exit209.i:                                  ; preds = %while.body.i.i205.i.a_pow.exit209.i_crit_edge, %a_pow.exit.i102.a_pow.exit209.i_crit_edge
  %v.addr.0.lcssa.i.i206.i = phi i32 [ %mul.i101, %a_pow.exit.i102.a_pow.exit209.i_crit_edge ], [ %add.i.i203.i, %while.body.i.i205.i.a_pow.exit209.i_crit_edge ]
  %arrayidx.i207.i = getelementptr i16, ptr %154, i32 %v.addr.0.lcssa.i.i206.i
  %197 = ptrtoint ptr %arrayidx.i207.i to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %arrayidx.i207.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i150.i)
  %tobool.not.i210.i = icmp eq i32 %cond.i150.i, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %188)
  %tobool1.not.i.i103 = icmp eq i16 %188, 0
  %or.cond.i.i104 = or i1 %tobool.not.i210.i, %tobool1.not.i.i103
  br i1 %or.cond.i.i104, label %a_pow.exit209.i.gf_mul.exit.i108_crit_edge, label %cond.true.i220.i

a_pow.exit209.i.gf_mul.exit.i108_crit_edge:       ; preds = %a_pow.exit209.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gf_mul.exit.i108

cond.true.i220.i:                                 ; preds = %a_pow.exit209.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i213.i = getelementptr i16, ptr %156, i32 %cond.i150.i
  %199 = ptrtoint ptr %arrayidx.i213.i to i32
  call void @__asan_load2_noabort(i32 %199)
  %200 = load i16, ptr %arrayidx.i213.i, align 2
  %conv.i214.i = zext i16 %200 to i32
  %add.i215.i = add nuw nsw i32 %conv.i214.i, %conv.i190.i
  call void @__sanitizer_cov_trace_cmp4(i32 %160, i32 %add.i215.i)
  %cmp.i.i217.i = icmp ugt i32 %160, %add.i215.i
  %sub.i.i218.i = select i1 %cmp.i.i217.i, i32 0, i32 %160
  %cond.i.i219.i = sub i32 %add.i215.i, %sub.i.i218.i
  %arrayidx5.i.i105 = getelementptr i16, ptr %154, i32 %cond.i.i219.i
  %201 = ptrtoint ptr %arrayidx5.i.i105 to i32
  call void @__asan_load2_noabort(i32 %201)
  %202 = load i16, ptr %arrayidx5.i.i105, align 2
  %conv6.i.i106 = zext i16 %202 to i32
  br label %gf_mul.exit.i108

gf_mul.exit.i108:                                 ; preds = %cond.true.i220.i, %a_pow.exit209.i.gf_mul.exit.i108_crit_edge
  %cond.i221.i = phi i32 [ %conv6.i.i106, %cond.true.i220.i ], [ 0, %a_pow.exit209.i.gf_mul.exit.i108_crit_edge ]
  %xor307.i = xor i16 %198, %164
  %xor.i107 = zext i16 %xor307.i to i32
  %xor26.i = xor i32 %cond.i221.i, %xor.i107
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %194)
  %tobool1.not.i223.i = icmp eq i16 %194, 0
  br i1 %tobool1.not.i223.i, label %gf_mul.exit.i108.gf_mul.exit240.i_crit_edge, label %cond.true.i238.i

gf_mul.exit.i108.gf_mul.exit240.i_crit_edge:      ; preds = %gf_mul.exit.i108
  call void @__sanitizer_cov_trace_pc() #9
  br label %gf_mul.exit240.i

cond.true.i238.i:                                 ; preds = %gf_mul.exit.i108
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx3.i229.i = getelementptr i16, ptr %156, i32 %conv.i194.i
  %203 = ptrtoint ptr %arrayidx3.i229.i to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %arrayidx3.i229.i, align 2
  %conv4.i230.i = zext i16 %204 to i32
  %add.i231.i = add nuw nsw i32 %conv4.i230.i, %conv3.i178.i
  call void @__sanitizer_cov_trace_cmp4(i32 %160, i32 %add.i231.i)
  %cmp.i.i233.i = icmp ugt i32 %160, %add.i231.i
  %sub.i.i234.i = select i1 %cmp.i.i233.i, i32 0, i32 %160
  %cond.i.i235.i = sub i32 %add.i231.i, %sub.i.i234.i
  %arrayidx5.i236.i = getelementptr i16, ptr %154, i32 %cond.i.i235.i
  %205 = ptrtoint ptr %arrayidx5.i236.i to i32
  call void @__asan_load2_noabort(i32 %205)
  %206 = load i16, ptr %arrayidx5.i236.i, align 2
  %conv6.i237.i = zext i16 %206 to i32
  br label %gf_mul.exit240.i

gf_mul.exit240.i:                                 ; preds = %cond.true.i238.i, %gf_mul.exit.i108.gf_mul.exit240.i_crit_edge
  %cond.i239.i = phi i32 [ %conv6.i237.i, %cond.true.i238.i ], [ 0, %gf_mul.exit.i108.gf_mul.exit240.i_crit_edge ]
  %xor28.i = xor i32 %cond.i239.i, %cond.i150.i
  br label %if.end29.i

if.end29.i:                                       ; preds = %gf_mul.exit240.i, %if.then16.i.if.end29.i_crit_edge
  %b.0.i = phi i32 [ %xor28.i, %gf_mul.exit240.i ], [ %cond.i150.i, %if.then16.i.if.end29.i_crit_edge ]
  %d.0.i = phi i32 [ %xor26.i, %gf_mul.exit240.i ], [ %conv5.i.i85, %if.then16.i.if.end29.i_crit_edge ]
  %e.0.i = phi i32 [ %conv.i194.i, %gf_mul.exit240.i ], [ 0, %if.then16.i.if.end29.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %d.0.i)
  %cmp30.i = icmp eq i32 %d.0.i, 0
  br i1 %cmp30.i, label %if.end29.i.sw.epilog_crit_edge, label %gf_div.exit264.i

if.end29.i.sw.epilog_crit_edge:                   ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

gf_div.exit264.i:                                 ; preds = %if.end29.i
  %arrayidx.i244.i = getelementptr i16, ptr %156, i32 %d.0.i
  %207 = ptrtoint ptr %arrayidx.i244.i to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %arrayidx.i244.i, align 2
  %conv.i245.i = zext i16 %208 to i32
  %sub.i246.i = sub i32 %160, %conv.i245.i
  %arrayidx1.i.i109 = getelementptr i16, ptr %154, i32 %sub.i246.i
  %209 = ptrtoint ptr %arrayidx1.i.i109 to i32
  call void @__asan_load2_noabort(i32 %209)
  %210 = load i16, ptr %arrayidx1.i.i109, align 2
  %conv2.i.i110 = zext i16 %210 to i32
  %arrayidx.i250.i = getelementptr i16, ptr %156, i32 %conv5.i166.i
  %211 = ptrtoint ptr %arrayidx.i250.i to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %arrayidx.i250.i, align 2
  %conv.i251.i = zext i16 %212 to i32
  %sub.i256.i = add i32 %sub.i246.i, %conv.i251.i
  call void @__sanitizer_cov_trace_cmp4(i32 %160, i32 %sub.i256.i)
  %cmp.i.i257.i = icmp ugt i32 %160, %sub.i256.i
  %sub.i.i258.i = select i1 %cmp.i.i257.i, i32 0, i32 %160
  %cond.i.i259.i = sub i32 %sub.i256.i, %sub.i.i258.i
  %arrayidx4.i260.i = getelementptr i16, ptr %154, i32 %cond.i.i259.i
  %213 = ptrtoint ptr %arrayidx4.i260.i to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %arrayidx4.i260.i, align 2
  %conv5.i261.i = zext i16 %214 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %b.0.i)
  %tobool.not.i265.i = icmp eq i32 %b.0.i, 0
  br i1 %tobool.not.i265.i, label %gf_div.exit264.i.if.end36.i_crit_edge, label %cond.true.i280.i

gf_div.exit264.i.if.end36.i_crit_edge:            ; preds = %gf_div.exit264.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36.i

cond.true.i280.i:                                 ; preds = %gf_div.exit264.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i268.i = getelementptr i16, ptr %156, i32 %b.0.i
  %215 = ptrtoint ptr %arrayidx.i268.i to i32
  call void @__asan_load2_noabort(i32 %215)
  %216 = load i16, ptr %arrayidx.i268.i, align 2
  %conv.i269.i = zext i16 %216 to i32
  %sub.i274.i = add i32 %sub.i246.i, %conv.i269.i
  call void @__sanitizer_cov_trace_cmp4(i32 %160, i32 %sub.i274.i)
  %cmp.i.i275.i = icmp ugt i32 %160, %sub.i274.i
  %sub.i.i276.i = select i1 %cmp.i.i275.i, i32 0, i32 %160
  %cond.i.i277.i = sub i32 %sub.i274.i, %sub.i.i276.i
  %arrayidx4.i278.i = getelementptr i16, ptr %154, i32 %cond.i.i277.i
  %217 = ptrtoint ptr %arrayidx4.i278.i to i32
  call void @__asan_load2_noabort(i32 %217)
  %218 = load i16, ptr %arrayidx4.i278.i, align 2
  %conv5.i279.i = zext i16 %218 to i32
  br label %if.end36.i

if.end36.i:                                       ; preds = %cond.true.i280.i, %gf_div.exit264.i.if.end36.i_crit_edge, %gf_div.exit169.i.if.end36.i_crit_edge, %gf_div.exit151.i.if.end36.i_crit_edge
  %tobool.not304.i = phi i1 [ true, %gf_div.exit169.i.if.end36.i_crit_edge ], [ false, %gf_div.exit264.i.if.end36.i_crit_edge ], [ false, %cond.true.i280.i ], [ true, %gf_div.exit151.i.if.end36.i_crit_edge ]
  %e.1.i = phi i32 [ 0, %gf_div.exit169.i.if.end36.i_crit_edge ], [ %e.0.i, %gf_div.exit264.i.if.end36.i_crit_edge ], [ %e.0.i, %cond.true.i280.i ], [ 0, %gf_div.exit151.i.if.end36.i_crit_edge ]
  %a2.0.i = phi i32 [ %cond.i150.i, %gf_div.exit169.i.if.end36.i_crit_edge ], [ 0, %gf_div.exit264.i.if.end36.i_crit_edge ], [ %conv5.i279.i, %cond.true.i280.i ], [ %cond.i150.i, %gf_div.exit151.i.if.end36.i_crit_edge ]
  %b2.0.i = phi i32 [ %cond.i132.i, %gf_div.exit169.i.if.end36.i_crit_edge ], [ %conv5.i261.i, %gf_div.exit264.i.if.end36.i_crit_edge ], [ %conv5.i261.i, %cond.true.i280.i ], [ %cond.i132.i, %gf_div.exit151.i.if.end36.i_crit_edge ]
  %c2.0.i = phi i32 [ %conv5.i.i85, %gf_div.exit169.i.if.end36.i_crit_edge ], [ %conv2.i.i110, %gf_div.exit264.i.if.end36.i_crit_edge ], [ %conv2.i.i110, %cond.true.i280.i ], [ %conv5.i.i85, %gf_div.exit151.i.if.end36.i_crit_edge ]
  %call37.i = tail call fastcc i32 @find_affine4_roots(ptr noundef %bch, i32 noundef %a2.0.i, i32 noundef %b2.0.i, i32 noundef %c2.0.i, ptr noundef %roots.tr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call37.i)
  %cmp38.i = icmp eq i32 %call37.i, 4
  br i1 %cmp38.i, label %for.cond.preheader.i111, label %if.end36.i.sw.epilog_crit_edge

if.end36.i.sw.epilog_crit_edge:                   ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.cond.preheader.i111:                          ; preds = %if.end36.i
  %219 = ptrtoint ptr %roots.tr to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %roots.tr, align 4
  br i1 %tobool.not304.i, label %for.cond.preheader.i111.cond.end47.i_crit_edge, label %cond.true42.i

for.cond.preheader.i111.cond.end47.i_crit_edge:   ; preds = %for.cond.preheader.i111
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end47.i

cond.true42.i:                                    ; preds = %for.cond.preheader.i111
  call void @__sanitizer_cov_trace_pc() #9
  %221 = ptrtoint ptr %a_pow_tab.i.i115 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %a_pow_tab.i.i115, align 4
  %223 = ptrtoint ptr %n.i.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %n.i.i.i, align 4
  %225 = ptrtoint ptr %a_log_tab.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %a_log_tab.i.i.i.i, align 4
  %arrayidx.i286.i = getelementptr i16, ptr %226, i32 %220
  %227 = ptrtoint ptr %arrayidx.i286.i to i32
  call void @__asan_load2_noabort(i32 %227)
  %228 = load i16, ptr %arrayidx.i286.i, align 2
  %conv.i287.i = zext i16 %228 to i32
  %sub.i288.i = sub i32 %224, %conv.i287.i
  %arrayidx1.i289.i = getelementptr i16, ptr %222, i32 %sub.i288.i
  %229 = ptrtoint ptr %arrayidx1.i289.i to i32
  call void @__asan_load2_noabort(i32 %229)
  %230 = load i16, ptr %arrayidx1.i289.i, align 2
  %conv2.i290.i = zext i16 %230 to i32
  br label %cond.end47.i

cond.end47.i:                                     ; preds = %cond.true42.i, %for.cond.preheader.i111.cond.end47.i_crit_edge
  %cond48.i = phi i32 [ %conv2.i290.i, %cond.true42.i ], [ %220, %for.cond.preheader.i111.cond.end47.i_crit_edge ]
  %xor49.i = xor i32 %cond48.i, %e.1.i
  %231 = ptrtoint ptr %n.i.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %n.i.i.i, align 4
  %233 = ptrtoint ptr %a_log_tab.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %a_log_tab.i.i.i.i, align 4
  %arrayidx.i293.i = getelementptr i16, ptr %234, i32 %xor49.i
  %235 = ptrtoint ptr %arrayidx.i293.i to i32
  call void @__asan_load2_noabort(i32 %235)
  %236 = load i16, ptr %arrayidx.i293.i, align 2
  %conv.i294.i = zext i16 %236 to i32
  %sub.i295.i = sub i32 %232, %conv.i294.i
  call void @__sanitizer_cov_trace_cmp4(i32 %232, i32 %sub.i295.i)
  %cmp.i.i296.i = icmp ugt i32 %232, %sub.i295.i
  %sub.i.i297.i = select i1 %cmp.i.i296.i, i32 0, i32 %232
  %cond.i.i298.i = sub i32 %sub.i295.i, %sub.i.i297.i
  %237 = ptrtoint ptr %roots.tr to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 %cond.i.i298.i, ptr %roots.tr, align 4
  %arrayidx46.1.i = getelementptr i32, ptr %roots.tr, i32 1
  %238 = ptrtoint ptr %arrayidx46.1.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %arrayidx46.1.i, align 4
  br i1 %tobool.not304.i, label %cond.end47.i.cond.end47.1.i_crit_edge, label %cond.true42.1.i

cond.end47.i.cond.end47.1.i_crit_edge:            ; preds = %cond.end47.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end47.1.i

cond.true42.1.i:                                  ; preds = %cond.end47.i
  call void @__sanitizer_cov_trace_pc() #9
  %240 = ptrtoint ptr %a_pow_tab.i.i115 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %a_pow_tab.i.i115, align 4
  %242 = ptrtoint ptr %n.i.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %n.i.i.i, align 4
  %244 = ptrtoint ptr %a_log_tab.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %a_log_tab.i.i.i.i, align 4
  %arrayidx.i286.1.i = getelementptr i16, ptr %245, i32 %239
  %246 = ptrtoint ptr %arrayidx.i286.1.i to i32
  call void @__asan_load2_noabort(i32 %246)
  %247 = load i16, ptr %arrayidx.i286.1.i, align 2
  %conv.i287.1.i = zext i16 %247 to i32
  %sub.i288.1.i = sub i32 %243, %conv.i287.1.i
  %arrayidx1.i289.1.i = getelementptr i16, ptr %241, i32 %sub.i288.1.i
  %248 = ptrtoint ptr %arrayidx1.i289.1.i to i32
  call void @__asan_load2_noabort(i32 %248)
  %249 = load i16, ptr %arrayidx1.i289.1.i, align 2
  %conv2.i290.1.i = zext i16 %249 to i32
  br label %cond.end47.1.i

cond.end47.1.i:                                   ; preds = %cond.true42.1.i, %cond.end47.i.cond.end47.1.i_crit_edge
  %cond48.1.i = phi i32 [ %conv2.i290.1.i, %cond.true42.1.i ], [ %239, %cond.end47.i.cond.end47.1.i_crit_edge ]
  %xor49.1.i = xor i32 %cond48.1.i, %e.1.i
  %250 = ptrtoint ptr %n.i.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %n.i.i.i, align 4
  %252 = ptrtoint ptr %a_log_tab.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %a_log_tab.i.i.i.i, align 4
  %arrayidx.i293.1.i = getelementptr i16, ptr %253, i32 %xor49.1.i
  %254 = ptrtoint ptr %arrayidx.i293.1.i to i32
  call void @__asan_load2_noabort(i32 %254)
  %255 = load i16, ptr %arrayidx.i293.1.i, align 2
  %conv.i294.1.i = zext i16 %255 to i32
  %sub.i295.1.i = sub i32 %251, %conv.i294.1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %251, i32 %sub.i295.1.i)
  %cmp.i.i296.1.i = icmp ugt i32 %251, %sub.i295.1.i
  %sub.i.i297.1.i = select i1 %cmp.i.i296.1.i, i32 0, i32 %251
  %cond.i.i298.1.i = sub i32 %sub.i295.1.i, %sub.i.i297.1.i
  %256 = ptrtoint ptr %arrayidx46.1.i to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 %cond.i.i298.1.i, ptr %arrayidx46.1.i, align 4
  %arrayidx46.2.i = getelementptr i32, ptr %roots.tr, i32 2
  %257 = ptrtoint ptr %arrayidx46.2.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %arrayidx46.2.i, align 4
  br i1 %tobool.not304.i, label %cond.end47.1.i.cond.end47.2.i_crit_edge, label %cond.true42.2.i

cond.end47.1.i.cond.end47.2.i_crit_edge:          ; preds = %cond.end47.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end47.2.i

cond.true42.2.i:                                  ; preds = %cond.end47.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %259 = ptrtoint ptr %a_pow_tab.i.i115 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %a_pow_tab.i.i115, align 4
  %261 = ptrtoint ptr %n.i.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %n.i.i.i, align 4
  %263 = ptrtoint ptr %a_log_tab.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %a_log_tab.i.i.i.i, align 4
  %arrayidx.i286.2.i = getelementptr i16, ptr %264, i32 %258
  %265 = ptrtoint ptr %arrayidx.i286.2.i to i32
  call void @__asan_load2_noabort(i32 %265)
  %266 = load i16, ptr %arrayidx.i286.2.i, align 2
  %conv.i287.2.i = zext i16 %266 to i32
  %sub.i288.2.i = sub i32 %262, %conv.i287.2.i
  %arrayidx1.i289.2.i = getelementptr i16, ptr %260, i32 %sub.i288.2.i
  %267 = ptrtoint ptr %arrayidx1.i289.2.i to i32
  call void @__asan_load2_noabort(i32 %267)
  %268 = load i16, ptr %arrayidx1.i289.2.i, align 2
  %conv2.i290.2.i = zext i16 %268 to i32
  br label %cond.end47.2.i

cond.end47.2.i:                                   ; preds = %cond.true42.2.i, %cond.end47.1.i.cond.end47.2.i_crit_edge
  %cond48.2.i = phi i32 [ %conv2.i290.2.i, %cond.true42.2.i ], [ %258, %cond.end47.1.i.cond.end47.2.i_crit_edge ]
  %xor49.2.i = xor i32 %cond48.2.i, %e.1.i
  %269 = ptrtoint ptr %n.i.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %n.i.i.i, align 4
  %271 = ptrtoint ptr %a_log_tab.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %a_log_tab.i.i.i.i, align 4
  %arrayidx.i293.2.i = getelementptr i16, ptr %272, i32 %xor49.2.i
  %273 = ptrtoint ptr %arrayidx.i293.2.i to i32
  call void @__asan_load2_noabort(i32 %273)
  %274 = load i16, ptr %arrayidx.i293.2.i, align 2
  %conv.i294.2.i = zext i16 %274 to i32
  %sub.i295.2.i = sub i32 %270, %conv.i294.2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %270, i32 %sub.i295.2.i)
  %cmp.i.i296.2.i = icmp ugt i32 %270, %sub.i295.2.i
  %sub.i.i297.2.i = select i1 %cmp.i.i296.2.i, i32 0, i32 %270
  %cond.i.i298.2.i = sub i32 %sub.i295.2.i, %sub.i.i297.2.i
  %275 = ptrtoint ptr %arrayidx46.2.i to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 %cond.i.i298.2.i, ptr %arrayidx46.2.i, align 4
  %arrayidx46.3.i = getelementptr i32, ptr %roots.tr, i32 3
  %276 = ptrtoint ptr %arrayidx46.3.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %arrayidx46.3.i, align 4
  br i1 %tobool.not304.i, label %cond.end47.2.i.cond.end47.3.i_crit_edge, label %cond.true42.3.i

cond.end47.2.i.cond.end47.3.i_crit_edge:          ; preds = %cond.end47.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end47.3.i

cond.true42.3.i:                                  ; preds = %cond.end47.2.i
  call void @__sanitizer_cov_trace_pc() #9
  %278 = ptrtoint ptr %a_pow_tab.i.i115 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %a_pow_tab.i.i115, align 4
  %280 = ptrtoint ptr %n.i.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %n.i.i.i, align 4
  %282 = ptrtoint ptr %a_log_tab.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %a_log_tab.i.i.i.i, align 4
  %arrayidx.i286.3.i = getelementptr i16, ptr %283, i32 %277
  %284 = ptrtoint ptr %arrayidx.i286.3.i to i32
  call void @__asan_load2_noabort(i32 %284)
  %285 = load i16, ptr %arrayidx.i286.3.i, align 2
  %conv.i287.3.i = zext i16 %285 to i32
  %sub.i288.3.i = sub i32 %281, %conv.i287.3.i
  %arrayidx1.i289.3.i = getelementptr i16, ptr %279, i32 %sub.i288.3.i
  %286 = ptrtoint ptr %arrayidx1.i289.3.i to i32
  call void @__asan_load2_noabort(i32 %286)
  %287 = load i16, ptr %arrayidx1.i289.3.i, align 2
  %conv2.i290.3.i = zext i16 %287 to i32
  br label %cond.end47.3.i

cond.end47.3.i:                                   ; preds = %cond.true42.3.i, %cond.end47.2.i.cond.end47.3.i_crit_edge
  %cond48.3.i = phi i32 [ %conv2.i290.3.i, %cond.true42.3.i ], [ %277, %cond.end47.2.i.cond.end47.3.i_crit_edge ]
  %xor49.3.i = xor i32 %cond48.3.i, %e.1.i
  %288 = ptrtoint ptr %n.i.i.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %n.i.i.i, align 4
  %290 = ptrtoint ptr %a_log_tab.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %a_log_tab.i.i.i.i, align 4
  %arrayidx.i293.3.i = getelementptr i16, ptr %291, i32 %xor49.3.i
  %292 = ptrtoint ptr %arrayidx.i293.3.i to i32
  call void @__asan_load2_noabort(i32 %292)
  %293 = load i16, ptr %arrayidx.i293.3.i, align 2
  %conv.i294.3.i = zext i16 %293 to i32
  %sub.i295.3.i = sub i32 %289, %conv.i294.3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %289, i32 %sub.i295.3.i)
  %cmp.i.i296.3.i = icmp ugt i32 %289, %sub.i295.3.i
  %sub.i.i297.3.i = select i1 %cmp.i.i296.3.i, i32 0, i32 %289
  %cond.i.i298.3.i = sub i32 %sub.i295.3.i, %sub.i.i297.3.i
  %294 = ptrtoint ptr %arrayidx46.3.i to i32
  call void @__asan_store4_noabort(i32 %294)
  store i32 %cond.i.i298.3.i, ptr %arrayidx46.3.i, align 4
  br label %sw.epilog

land.lhs.true:                                    ; preds = %tailrecurse
  %295 = ptrtoint ptr %bch to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %bch, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %296, i32 %k.tr)
  %cmp.not = icmp ult i32 %296, %k.tr
  br i1 %cmp.not, label %land.lhs.true.sw.epilog_crit_edge, label %if.then

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then:                                          ; preds = %land.lhs.true
  %297 = ptrtoint ptr %poly_2t.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %poly_2t.i, align 4
  %299 = ptrtoint ptr %arrayidx2.i112 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %arrayidx2.i112, align 4
  %301 = ptrtoint ptr %arrayidx4.i113 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %arrayidx4.i113, align 4
  %303 = ptrtoint ptr %arrayidx6.i114 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %arrayidx6.i114, align 4
  %305 = ptrtoint ptr %304 to i32
  call void @__asan_store4_noabort(i32 %305)
  store i32 1, ptr %304, align 4
  %c.i.i = getelementptr inbounds %struct.gf_poly, ptr %304, i32 0, i32 1
  %306 = ptrtoint ptr %c.i.i to i32
  call void @__asan_store4_noabort(i32 %306)
  store i32 0, ptr %c.i.i, align 4
  %307 = ptrtoint ptr %a_pow_tab.i.i115 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %a_pow_tab.i.i115, align 4
  %arrayidx2.i.i116 = getelementptr i16, ptr %308, i32 %k.tr
  %309 = ptrtoint ptr %arrayidx2.i.i116 to i32
  call void @__asan_load2_noabort(i32 %309)
  %310 = load i16, ptr %arrayidx2.i.i116, align 2
  %conv.i.i117 = zext i16 %310 to i32
  %arrayidx4.i.i118 = getelementptr %struct.gf_poly, ptr %304, i32 2
  %311 = ptrtoint ptr %arrayidx4.i.i118 to i32
  call void @__asan_store4_noabort(i32 %311)
  store i32 %conv.i.i117, ptr %arrayidx4.i.i118, align 4
  %312 = ptrtoint ptr %302 to i32
  call void @__asan_store4_noabort(i32 %312)
  store i32 0, ptr %302, align 4
  %313 = ptrtoint ptr %poly.tr to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %poly.tr, align 4
  %add.i.i119 = shl i32 %314, 2
  %add7.i.i = add i32 %add.i.i119, 8
  %315 = call ptr @memset(ptr %302, i32 0, i32 %add7.i.i)
  %316 = ptrtoint ptr %cache.i.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %cache.i.i, align 4
  %318 = load i32, ptr %poly.tr, align 4
  %319 = ptrtoint ptr %n.i.i.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %n.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.gf_poly, ptr %poly.tr, i32 0, i32 1, i32 %318
  %321 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %arrayidx.i.i.i, align 4
  %323 = ptrtoint ptr %a_log_tab.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %a_log_tab.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr i16, ptr %324, i32 %322
  %325 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %325)
  %326 = load i16, ptr %arrayidx.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %326 to i32
  %sub.i.i.i120 = sub i32 %320, %conv.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %318)
  %cmp23.i.i.i = icmp sgt i32 %318, 0
  br i1 %cmp23.i.i.i, label %if.then.for.body.i.i.i_crit_edge, label %if.then.gf_poly_logrep.exit.i.i_crit_edge

if.then.gf_poly_logrep.exit.i.i_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %gf_poly_logrep.exit.i.i

if.then.for.body.i.i.i_crit_edge:                 ; preds = %if.then
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %cond.end.i.i.i.for.body.i.i.i_crit_edge, %if.then.for.body.i.i.i_crit_edge
  %i.024.i.i.i = phi i32 [ %inc.i.i.i, %cond.end.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.then.for.body.i.i.i_crit_edge ]
  %arrayidx3.i.i.i = getelementptr %struct.gf_poly, ptr %poly.tr, i32 0, i32 1, i32 %i.024.i.i.i
  %327 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %arrayidx3.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %328)
  %tobool.not.i.i.i = icmp eq i32 %328, 0
  br i1 %tobool.not.i.i.i, label %for.body.i.i.i.cond.end.i.i.i_crit_edge, label %cond.true.i.i.i

for.body.i.i.i.cond.end.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i.i.i

cond.true.i.i.i:                                  ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %329 = ptrtoint ptr %a_log_tab.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %a_log_tab.i.i.i.i, align 4
  %arrayidx.i21.i.i.i = getelementptr i16, ptr %330, i32 %328
  %331 = ptrtoint ptr %arrayidx.i21.i.i.i to i32
  call void @__asan_load2_noabort(i32 %331)
  %332 = load i16, ptr %arrayidx.i21.i.i.i, align 2
  %conv.i22.i.i.i = zext i16 %332 to i32
  %add.i.i.i121 = add i32 %sub.i.i.i120, %conv.i22.i.i.i
  %333 = ptrtoint ptr %n.i.i.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %n.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %334, i32 %add.i.i.i121)
  %cmp.i.i.i.i = icmp ugt i32 %334, %add.i.i.i121
  %sub.i.i.i.i = select i1 %cmp.i.i.i.i, i32 0, i32 %334
  %cond.i.i.i.i = sub i32 %add.i.i.i121, %sub.i.i.i.i
  br label %cond.end.i.i.i

cond.end.i.i.i:                                   ; preds = %cond.true.i.i.i, %for.body.i.i.i.cond.end.i.i.i_crit_edge
  %cond.i.i.i122 = phi i32 [ %cond.i.i.i.i, %cond.true.i.i.i ], [ -1, %for.body.i.i.i.cond.end.i.i.i_crit_edge ]
  %arrayidx8.i.i.i = getelementptr i32, ptr %317, i32 %i.024.i.i.i
  %335 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %335)
  store i32 %cond.i.i.i122, ptr %arrayidx8.i.i.i, align 4
  %inc.i.i.i = add nuw nsw i32 %i.024.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %318
  br i1 %exitcond.not.i.i.i, label %cond.end.i.i.i.gf_poly_logrep.exit.i.i_crit_edge, label %cond.end.i.i.i.for.body.i.i.i_crit_edge

cond.end.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %cond.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

cond.end.i.i.i.gf_poly_logrep.exit.i.i_crit_edge: ; preds = %cond.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gf_poly_logrep.exit.i.i

gf_poly_logrep.exit.i.i:                          ; preds = %cond.end.i.i.i.gf_poly_logrep.exit.i.i_crit_edge, %if.then.gf_poly_logrep.exit.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %296)
  %cmp97.i.i = icmp sgt i32 %296, 0
  br i1 %cmp97.i.i, label %for.body.lr.ph.i.i, label %gf_poly_logrep.exit.i.i.while.cond.preheader.i.i_crit_edge

gf_poly_logrep.exit.i.i.while.cond.preheader.i.i_crit_edge: ; preds = %gf_poly_logrep.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.preheader.i.i

for.body.lr.ph.i.i:                               ; preds = %gf_poly_logrep.exit.i.i
  %sub.i.i123 = add nsw i32 %296, -1
  br label %for.body.i.i

while.cond.preheader.i.i:                         ; preds = %for.inc40.i.i.while.cond.preheader.i.i_crit_edge, %gf_poly_logrep.exit.i.i.while.cond.preheader.i.i_crit_edge
  %336 = ptrtoint ptr %302 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %302, align 4
  %arrayidx4499.i.i = getelementptr %struct.gf_poly, ptr %302, i32 0, i32 1, i32 %337
  %338 = ptrtoint ptr %arrayidx4499.i.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %arrayidx4499.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %339)
  %tobool.not100.i.i = icmp ne i32 %339, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %337)
  %tobool46.not101.i.i = icmp eq i32 %337, 0
  %or.cond102.i.i = select i1 %tobool.not100.i.i, i1 true, i1 %tobool46.not101.i.i
  br i1 %or.cond102.i.i, label %while.cond.preheader.i.i.compute_trace_bk_mod.exit.i_crit_edge, label %while.cond.preheader.i.i.while.body.i.i126_crit_edge

while.cond.preheader.i.i.while.body.i.i126_crit_edge: ; preds = %while.cond.preheader.i.i
  br label %while.body.i.i126

while.cond.preheader.i.i.compute_trace_bk_mod.exit.i_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %compute_trace_bk_mod.exit.i

for.body.i.i:                                     ; preds = %for.inc40.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.098.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc40.i.i.for.body.i.i_crit_edge ]
  %340 = ptrtoint ptr %304 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %304, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %341)
  %cmp1195.i.i = icmp sgt i32 %341, -1
  br i1 %cmp1195.i.i, label %for.body.i.i.for.body13.i.i_crit_edge, label %for.body.i.i.for.end.i.i_crit_edge

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.body.i.i.for.body13.i.i_crit_edge:            ; preds = %for.body.i.i
  br label %for.body13.i.i

for.body13.i.i:                                   ; preds = %gf_sqr.exit.i.i.for.body13.i.i_crit_edge, %for.body.i.i.for.body13.i.i_crit_edge
  %j.096.i.i = phi i32 [ %dec.i.i, %gf_sqr.exit.i.i.for.body13.i.i_crit_edge ], [ %341, %for.body.i.i.for.body13.i.i_crit_edge ]
  %arrayidx15.i.i = getelementptr %struct.gf_poly, ptr %304, i32 0, i32 1, i32 %j.096.i.i
  %342 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %arrayidx15.i.i, align 4
  %arrayidx17.i.i = getelementptr %struct.gf_poly, ptr %302, i32 0, i32 1, i32 %j.096.i.i
  %344 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %arrayidx17.i.i, align 4
  %xor.i.i = xor i32 %345, %343
  store i32 %xor.i.i, ptr %arrayidx17.i.i, align 4
  %346 = load i32, ptr %arrayidx15.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %346)
  %tobool.not.i87.i.i = icmp eq i32 %346, 0
  br i1 %tobool.not.i87.i.i, label %for.body13.i.i.gf_sqr.exit.i.i_crit_edge, label %cond.true.i92.i.i

for.body13.i.i.gf_sqr.exit.i.i_crit_edge:         ; preds = %for.body13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gf_sqr.exit.i.i

cond.true.i92.i.i:                                ; preds = %for.body13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %347 = ptrtoint ptr %a_pow_tab.i.i115 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %a_pow_tab.i.i115, align 4
  %349 = ptrtoint ptr %a_log_tab.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %a_log_tab.i.i.i.i, align 4
  %arrayidx.i88.i.i = getelementptr i16, ptr %350, i32 %346
  %351 = ptrtoint ptr %arrayidx.i88.i.i to i32
  call void @__asan_load2_noabort(i32 %351)
  %352 = load i16, ptr %arrayidx.i88.i.i, align 2
  %conv.i.i.i = zext i16 %352 to i32
  %mul.i.i.i = shl nuw nsw i32 %conv.i.i.i, 1
  %353 = ptrtoint ptr %n.i.i.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %n.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %354, i32 %mul.i.i.i)
  %cmp.i.i89.i.i = icmp ugt i32 %354, %mul.i.i.i
  %sub.i.i90.i.i = select i1 %cmp.i.i89.i.i, i32 0, i32 %354
  %cond.i.i91.i.i = sub i32 %mul.i.i.i, %sub.i.i90.i.i
  %arrayidx1.i.i.i = getelementptr i16, ptr %348, i32 %cond.i.i91.i.i
  %355 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %355)
  %356 = load i16, ptr %arrayidx1.i.i.i, align 2
  %conv2.i.i.i = zext i16 %356 to i32
  br label %gf_sqr.exit.i.i

gf_sqr.exit.i.i:                                  ; preds = %cond.true.i92.i.i, %for.body13.i.i.gf_sqr.exit.i.i_crit_edge
  %cond.i93.i.i = phi i32 [ %conv2.i.i.i, %cond.true.i92.i.i ], [ 0, %for.body13.i.i.gf_sqr.exit.i.i_crit_edge ]
  %mul21.i.i = shl nuw i32 %j.096.i.i, 1
  %arrayidx22.i.i = getelementptr %struct.gf_poly, ptr %304, i32 0, i32 1, i32 %mul21.i.i
  %357 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_store4_noabort(i32 %357)
  store i32 %cond.i93.i.i, ptr %arrayidx22.i.i, align 4
  %add25.i.i = or i32 %mul21.i.i, 1
  %arrayidx26.i.i = getelementptr %struct.gf_poly, ptr %304, i32 0, i32 1, i32 %add25.i.i
  %358 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_store4_noabort(i32 %358)
  store i32 0, ptr %arrayidx26.i.i, align 4
  %dec.i.i = add nsw i32 %j.096.i.i, -1
  %cmp11.i.i = icmp sgt i32 %j.096.i.i, 0
  br i1 %cmp11.i.i, label %gf_sqr.exit.i.i.for.body13.i.i_crit_edge, label %gf_sqr.exit.i.i.for.end.i.i_crit_edge

gf_sqr.exit.i.i.for.end.i.i_crit_edge:            ; preds = %gf_sqr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

gf_sqr.exit.i.i.for.body13.i.i_crit_edge:         ; preds = %gf_sqr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body13.i.i

for.end.i.i:                                      ; preds = %gf_sqr.exit.i.i.for.end.i.i_crit_edge, %for.body.i.i.for.end.i.i_crit_edge
  %359 = ptrtoint ptr %304 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %304, align 4
  %361 = ptrtoint ptr %302 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %302, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %360, i32 %362)
  %cmp29.i.i = icmp ugt i32 %360, %362
  br i1 %cmp29.i.i, label %if.then.i.i, label %for.end.i.i.if.end.i.i_crit_edge

for.end.i.i.if.end.i.i_crit_edge:                 ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %363 = ptrtoint ptr %302 to i32
  call void @__asan_store4_noabort(i32 %363)
  store i32 %360, ptr %302, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %for.end.i.i.if.end.i.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %i.098.i.i, i32 %sub.i.i123)
  %cmp33.i.i = icmp slt i32 %i.098.i.i, %sub.i.i123
  br i1 %cmp33.i.i, label %if.then35.i.i, label %if.end.i.i.for.inc40.i.i_crit_edge

if.end.i.i.for.inc40.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc40.i.i

if.then35.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %364 = ptrtoint ptr %304 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %304, align 4
  %mul37.i.i = shl i32 %365, 1
  store i32 %mul37.i.i, ptr %304, align 4
  %366 = ptrtoint ptr %cache.i.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %cache.i.i, align 4
  tail call fastcc void @gf_poly_mod(ptr noundef %bch, ptr noundef %304, ptr noundef %poly.tr, ptr noundef %367) #10
  br label %for.inc40.i.i

for.inc40.i.i:                                    ; preds = %if.then35.i.i, %if.end.i.i.for.inc40.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.098.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %296
  br i1 %exitcond.not.i.i, label %for.inc40.i.i.while.cond.preheader.i.i_crit_edge, label %for.inc40.i.i.for.body.i.i_crit_edge

for.inc40.i.i.for.body.i.i_crit_edge:             ; preds = %for.inc40.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc40.i.i.while.cond.preheader.i.i_crit_edge: ; preds = %for.inc40.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.preheader.i.i

while.body.i.i126:                                ; preds = %while.body.i.i126.while.body.i.i126_crit_edge, %while.cond.preheader.i.i.while.body.i.i126_crit_edge
  %368 = phi i32 [ %dec48.i.i, %while.body.i.i126.while.body.i.i126_crit_edge ], [ %337, %while.cond.preheader.i.i.while.body.i.i126_crit_edge ]
  %dec48.i.i = add i32 %368, -1
  %369 = ptrtoint ptr %302 to i32
  call void @__asan_store4_noabort(i32 %369)
  store i32 %dec48.i.i, ptr %302, align 4
  %arrayidx44.i.i = getelementptr %struct.gf_poly, ptr %302, i32 0, i32 1, i32 %dec48.i.i
  %370 = ptrtoint ptr %arrayidx44.i.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %arrayidx44.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %371)
  %tobool.not.i.i124 = icmp ne i32 %371, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec48.i.i)
  %tobool46.not.i.i = icmp eq i32 %dec48.i.i, 0
  %or.cond.i.i125 = select i1 %tobool.not.i.i124, i1 true, i1 %tobool46.not.i.i
  br i1 %or.cond.i.i125, label %while.body.i.i126.compute_trace_bk_mod.exit.i_crit_edge, label %while.body.i.i126.while.body.i.i126_crit_edge

while.body.i.i126.while.body.i.i126_crit_edge:    ; preds = %while.body.i.i126
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i126

while.body.i.i126.compute_trace_bk_mod.exit.i_crit_edge: ; preds = %while.body.i.i126
  call void @__sanitizer_cov_trace_pc() #9
  br label %compute_trace_bk_mod.exit.i

compute_trace_bk_mod.exit.i:                      ; preds = %while.body.i.i126.compute_trace_bk_mod.exit.i_crit_edge, %while.cond.preheader.i.i.compute_trace_bk_mod.exit.i_crit_edge
  %372 = ptrtoint ptr %302 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %302, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %373)
  %cmp.not.i = icmp eq i32 %373, 0
  br i1 %cmp.not.i, label %compute_trace_bk_mod.exit.i.factor_polynomial.exit_crit_edge, label %if.then.i128

compute_trace_bk_mod.exit.i.factor_polynomial.exit_crit_edge: ; preds = %compute_trace_bk_mod.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %factor_polynomial.exit

if.then.i128:                                     ; preds = %compute_trace_bk_mod.exit.i
  %374 = ptrtoint ptr %poly.tr to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %poly.tr, align 4
  %add.i35.i = shl i32 %375, 2
  %add1.i.i = add i32 %add.i35.i, 8
  %376 = call ptr @memcpy(ptr %298, ptr %poly.tr, i32 %add1.i.i)
  %377 = ptrtoint ptr %298 to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load i32, ptr %298, align 4
  %379 = ptrtoint ptr %302 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %302, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %378, i32 %380)
  %cmp.i.i127 = icmp ult i32 %378, %380
  %spec.select.i.i = select i1 %cmp.i.i127, ptr %302, ptr %298
  %381 = tail call i32 @llvm.umin.i32(i32 %378, i32 %380) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %381)
  %cmp3.not17.i.i = icmp eq i32 %381, 0
  br i1 %cmp3.not17.i.i, label %if.then.i128.gf_poly_gcd.exit.i_crit_edge, label %while.body.preheader.i.i

if.then.i128.gf_poly_gcd.exit.i_crit_edge:        ; preds = %if.then.i128
  call void @__sanitizer_cov_trace_pc() #9
  br label %gf_poly_gcd.exit.i

while.body.preheader.i.i:                         ; preds = %if.then.i128
  %spec.select16.i.i = select i1 %cmp.i.i127, ptr %298, ptr %302
  br label %while.body.i36.i

while.body.i36.i:                                 ; preds = %while.body.i36.i.while.body.i36.i_crit_edge, %while.body.preheader.i.i
  %b.addr.119.i.i = phi ptr [ %a.addr.118.i.i, %while.body.i36.i.while.body.i36.i_crit_edge ], [ %spec.select16.i.i, %while.body.preheader.i.i ]
  %a.addr.118.i.i = phi ptr [ %b.addr.119.i.i, %while.body.i36.i.while.body.i36.i_crit_edge ], [ %spec.select.i.i, %while.body.preheader.i.i ]
  tail call fastcc void @gf_poly_mod(ptr noundef %bch, ptr noundef %a.addr.118.i.i, ptr noundef %b.addr.119.i.i, ptr noundef null) #10
  %382 = ptrtoint ptr %a.addr.118.i.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %a.addr.118.i.i, align 4
  %cmp3.not.i.i = icmp eq i32 %383, 0
  br i1 %cmp3.not.i.i, label %while.body.i36.i.gf_poly_gcd.exit.i_crit_edge, label %while.body.i36.i.while.body.i36.i_crit_edge

while.body.i36.i.while.body.i36.i_crit_edge:      ; preds = %while.body.i36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i36.i

while.body.i36.i.gf_poly_gcd.exit.i_crit_edge:    ; preds = %while.body.i36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gf_poly_gcd.exit.i

gf_poly_gcd.exit.i:                               ; preds = %while.body.i36.i.gf_poly_gcd.exit.i_crit_edge, %if.then.i128.gf_poly_gcd.exit.i_crit_edge
  %a.addr.1.lcssa.i.i = phi ptr [ %spec.select.i.i, %if.then.i128.gf_poly_gcd.exit.i_crit_edge ], [ %b.addr.119.i.i, %while.body.i36.i.gf_poly_gcd.exit.i_crit_edge ]
  %384 = ptrtoint ptr %a.addr.1.lcssa.i.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %a.addr.1.lcssa.i.i, align 4
  %386 = ptrtoint ptr %poly.tr to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load i32, ptr %poly.tr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %387, i32 %385)
  %cmp9.i = icmp ugt i32 %387, %385
  br i1 %cmp9.i, label %gf_poly_div.exit.i, label %gf_poly_gcd.exit.i.factor_polynomial.exit_crit_edge

gf_poly_gcd.exit.i.factor_polynomial.exit_crit_edge: ; preds = %gf_poly_gcd.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %factor_polynomial.exit

gf_poly_div.exit.i:                               ; preds = %gf_poly_gcd.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i37.i = sub i32 %387, %385
  %388 = ptrtoint ptr %300 to i32
  call void @__asan_store4_noabort(i32 %388)
  store i32 %sub.i37.i, ptr %300, align 4
  tail call fastcc void @gf_poly_mod(ptr noundef %bch, ptr noundef %poly.tr, ptr noundef %a.addr.1.lcssa.i.i, ptr noundef null) #10
  %c.i38.i = getelementptr inbounds %struct.gf_poly, ptr %300, i32 0, i32 1
  %389 = ptrtoint ptr %a.addr.1.lcssa.i.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %a.addr.1.lcssa.i.i, align 4
  %arrayidx.i.i129 = getelementptr %struct.gf_poly, ptr %poly.tr, i32 0, i32 1, i32 %390
  %391 = ptrtoint ptr %300 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load i32, ptr %300, align 4
  %add.i39.i = shl i32 %392, 2
  %mul.i.i130 = add i32 %add.i39.i, 4
  %393 = call ptr @memcpy(ptr %c.i38.i, ptr %arrayidx.i.i129, i32 %mul.i.i130)
  %394 = load i32, ptr %a.addr.1.lcssa.i.i, align 4
  %arrayidx12.i = getelementptr %struct.gf_poly_deg1, ptr %poly.tr, i32 %394
  %add.i42.i = shl i32 %394, 2
  %add1.i43.i = add i32 %add.i42.i, 8
  %395 = call ptr @memcpy(ptr %poly.tr, ptr %a.addr.1.lcssa.i.i, i32 %add1.i43.i)
  %396 = load i32, ptr %300, align 4
  %add.i44.i = shl i32 %396, 2
  %add1.i45.i = add i32 %add.i44.i, 8
  %397 = call ptr @memcpy(ptr %arrayidx12.i, ptr %300, i32 %add1.i45.i)
  br label %factor_polynomial.exit

factor_polynomial.exit:                           ; preds = %gf_poly_div.exit.i, %gf_poly_gcd.exit.i.factor_polynomial.exit_crit_edge, %compute_trace_bk_mod.exit.i.factor_polynomial.exit_crit_edge
  %f2.0 = phi ptr [ null, %compute_trace_bk_mod.exit.i.factor_polynomial.exit_crit_edge ], [ %arrayidx12.i, %gf_poly_div.exit.i ], [ null, %gf_poly_gcd.exit.i.factor_polynomial.exit_crit_edge ]
  %tobool8.not = icmp eq ptr %poly.tr, null
  br i1 %tobool8.not, label %factor_polynomial.exit.if.end_crit_edge, label %if.then9

factor_polynomial.exit.if.end_crit_edge:          ; preds = %factor_polynomial.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then9:                                         ; preds = %factor_polynomial.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add = add i32 %k.tr, 1
  %call10 = tail call fastcc i32 @find_poly_roots(ptr noundef %bch, i32 noundef %add, ptr noundef nonnull %poly.tr, ptr noundef %roots.tr)
  br label %if.end

if.end:                                           ; preds = %if.then9, %factor_polynomial.exit.if.end_crit_edge
  %cnt.0 = phi i32 [ %call10, %if.then9 ], [ 0, %factor_polynomial.exit.if.end_crit_edge ]
  %tobool12.not = icmp eq ptr %f2.0, null
  br i1 %tobool12.not, label %if.end.sw.epilog_crit_edge, label %if.then13

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add14 = add i32 %k.tr, 1
  %add.ptr = getelementptr i32, ptr %roots.tr, i32 %cnt.0
  %add16 = add i32 %cnt.0, %accumulator.tr
  br label %tailrecurse

sw.epilog:                                        ; preds = %if.end.sw.epilog_crit_edge, %land.lhs.true.sw.epilog_crit_edge, %cond.end47.3.i, %if.end36.i.sw.epilog_crit_edge, %if.end29.i.sw.epilog_crit_edge, %sw.bb5.sw.epilog_crit_edge, %find_poly_deg3_roots.exit, %modulo.exit99.i, %gf_sqr.exit.i.sw.epilog_crit_edge, %land.lhs.true.i.sw.epilog_crit_edge, %sw.bb1.sw.epilog_crit_edge, %if.then.i, %sw.bb.sw.epilog_crit_edge, %tailrecurse.sw.epilog_crit_edge
  %cnt.1 = phi i32 [ %n.2.i, %find_poly_deg3_roots.exit ], [ 1, %if.then.i ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ 2, %modulo.exit99.i ], [ 0, %gf_sqr.exit.i.sw.epilog_crit_edge ], [ 0, %land.lhs.true.i.sw.epilog_crit_edge ], [ 0, %sw.bb1.sw.epilog_crit_edge ], [ 0, %sw.bb5.sw.epilog_crit_edge ], [ 0, %if.end29.i.sw.epilog_crit_edge ], [ 0, %if.end36.i.sw.epilog_crit_edge ], [ 4, %cond.end47.3.i ], [ %cnt.0, %if.end.sw.epilog_crit_edge ], [ 0, %land.lhs.true.sw.epilog_crit_edge ], [ %1, %tailrecurse.sw.epilog_crit_edge ]
  %accumulator.ret.tr = add i32 %cnt.1, %accumulator.tr
  ret i32 %accumulator.ret.tr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bch_init(i32 noundef %m, i32 noundef %t, i32 noundef %prim_poly, i1 noundef zeroext %swap_bits) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %frombool = zext i1 %swap_bits to i8
  %0 = add i32 %m, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %0)
  %1 = icmp ult i32 %0, -11
  %2 = add i32 %t, -65
  call void @__sanitizer_cov_trace_const_cmp4(i32 -64, i32 %2)
  %3 = icmp ult i32 %2, -64
  %4 = or i1 %1, %3
  br i1 %4, label %entry.fail_crit_edge, label %lor.lhs.false6

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

lor.lhs.false6:                                   ; preds = %entry
  %mul = mul nuw nsw i32 %t, %m
  %notmask = shl nsw i32 -1, %m
  %sub = xor i32 %notmask, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %sub)
  %cmp7.not = icmp slt i32 %mul, %sub
  br i1 %cmp7.not, label %if.end9, label %lor.lhs.false6.fail_crit_edge

lor.lhs.false6.fail_crit_edge:                    ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end9:                                          ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %prim_poly)
  %cmp10 = icmp eq i32 %prim_poly, 0
  br i1 %cmp10, label %if.then11, label %if.end9.if.end13_crit_edge

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %sub12 = add nsw i32 %m, -5
  %arrayidx = getelementptr [11 x i32], ptr @bch_init.prim_poly_tab, i32 0, i32 %sub12
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end9.if.end13_crit_edge
  %prim_poly.addr.0 = phi i32 [ %6, %if.then11 ], [ %prim_poly, %if.end9.if.end13_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 76) #11
  %cmp14 = icmp eq ptr %call7.i.i, null
  br i1 %cmp14, label %if.end13.fail_crit_edge, label %if.end16

if.end13.fail_crit_edge:                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end16:                                         ; preds = %if.end13
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %m, ptr %call7.i.i, align 8
  %t18 = getelementptr inbounds %struct.bch_control, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %t18 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %t, ptr %t18, align 8
  %n = getelementptr inbounds %struct.bch_control, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub, ptr %n, align 4
  %div471.lhs.trunc = add nuw nsw i32 %mul, 31
  %div471472490 = lshr i32 %div471.lhs.trunc, 5
  %div26473.lhs.trunc = add nuw nsw i32 %mul, 7
  %div26473474491 = lshr i32 %div26473.lhs.trunc, 3
  %ecc_bytes = getelementptr inbounds %struct.bch_control, ptr %call7.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %ecc_bytes to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %div26473474491, ptr %ecc_bytes, align 8
  %add28 = shl i32 %sub, 1
  %mul29 = add i32 %add28, 2
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul29, i32 noundef 3264) #12
  %cmp.i = icmp ne ptr %call9.i.i, null
  %a_pow_tab = getelementptr inbounds %struct.bch_control, ptr %call7.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %a_pow_tab to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call9.i.i, ptr %a_pow_tab, align 4
  %13 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n, align 4
  %add32 = shl i32 %14, 1
  %mul33 = add i32 %add32, 2
  %call9.i.i161 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul33, i32 noundef 3264) #12
  %cmp.i164 = icmp ne ptr %call9.i.i161, null
  %a_log_tab = getelementptr inbounds %struct.bch_control, ptr %call7.i.i, i32 0, i32 6
  %15 = ptrtoint ptr %a_log_tab to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call9.i.i161, ptr %a_log_tab, align 8
  %mul36 = shl nuw nsw i32 %div471472490, 12
  %call9.i.i197 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul36, i32 noundef 3264) #12
  %cmp.i200 = icmp ne ptr %call9.i.i197, null
  %mod8_tab = getelementptr inbounds %struct.bch_control, ptr %call7.i.i, i32 0, i32 7
  %16 = ptrtoint ptr %mod8_tab to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call9.i.i197, ptr %mod8_tab, align 4
  %mul38 = shl nuw nsw i32 %div471472490, 2
  %call9.i.i233 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul38, i32 noundef 3264) #12
  %ecc_buf = getelementptr inbounds %struct.bch_control, ptr %call7.i.i, i32 0, i32 8
  %17 = ptrtoint ptr %ecc_buf to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call9.i.i233, ptr %ecc_buf, align 8
  %call9.i.i269 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul38, i32 noundef 3264) #12
  %cmp.i236501 = icmp ne ptr %call9.i.i233, null
  %cmp.i272 = icmp ne ptr %call9.i.i269, null
  %ecc_buf2 = getelementptr inbounds %struct.bch_control, ptr %call7.i.i, i32 0, i32 9
  %18 = ptrtoint ptr %ecc_buf2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call9.i.i269, ptr %ecc_buf2, align 4
  %mul42 = shl nuw nsw i32 %m, 2
  %call9.i.i305 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul42, i32 noundef 3264) #12
  %cmp.i308 = icmp ne ptr %call9.i.i305, null
  %xi_tab = getelementptr inbounds %struct.bch_control, ptr %call7.i.i, i32 0, i32 10
  %19 = ptrtoint ptr %xi_tab to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call9.i.i305, ptr %xi_tab, align 8
  %mul44 = shl nuw nsw i32 %t, 3
  %call9.i.i341 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul44, i32 noundef 3264) #12
  %syn = getelementptr inbounds %struct.bch_control, ptr %call7.i.i, i32 0, i32 11
  %20 = ptrtoint ptr %syn to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call9.i.i341, ptr %syn, align 4
  %call9.i.i377 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul44, i32 noundef 3264) #12
  %cmp.i344506 = icmp ne ptr %call9.i.i341, null
  %cmp.i380 = icmp ne ptr %call9.i.i377, null
  %cache = getelementptr inbounds %struct.bch_control, ptr %call7.i.i, i32 0, i32 12
  %21 = ptrtoint ptr %cache to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call9.i.i377, ptr %cache, align 8
  %22 = mul nuw nsw i32 %t, 12
  %mul51 = add nuw nsw i32 %22, 12
  %call9.i.i413 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul51, i32 noundef 3264) #12
  %elp = getelementptr inbounds %struct.bch_control, ptr %call7.i.i, i32 0, i32 13
  %23 = ptrtoint ptr %elp to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call9.i.i413, ptr %elp, align 4
  %swap_bits53 = getelementptr inbounds %struct.bch_control, ptr %call7.i.i, i32 0, i32 15
  %24 = ptrtoint ptr %swap_bits53 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %frombool, ptr %swap_bits53, align 8
  %add59 = add nuw nsw i32 %mul44, 8
  %call9.i.i449 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add59, i32 noundef 3264) #12
  %arrayidx61 = getelementptr %struct.bch_control, ptr %call7.i.i, i32 0, i32 14, i32 0
  %25 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call9.i.i449, ptr %arrayidx61, align 8
  %call9.i.i449.1 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add59, i32 noundef 3264) #12
  %arrayidx61.1 = getelementptr %struct.bch_control, ptr %call7.i.i, i32 0, i32 14, i32 1
  %26 = ptrtoint ptr %arrayidx61.1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call9.i.i449.1, ptr %arrayidx61.1, align 4
  %call9.i.i449.2 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add59, i32 noundef 3264) #12
  %arrayidx61.2 = getelementptr %struct.bch_control, ptr %call7.i.i, i32 0, i32 14, i32 2
  %27 = ptrtoint ptr %arrayidx61.2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call9.i.i449.2, ptr %arrayidx61.2, align 8
  %call9.i.i449.3 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add59, i32 noundef 3264) #12
  %cmp.i452.2 = icmp ne ptr %call9.i.i449.2, null
  %cmp.i452.1 = icmp ne ptr %call9.i.i449.1, null
  %cmp.i452 = icmp ne ptr %call9.i.i449, null
  %cmp.i416 = icmp ne ptr %call9.i.i413, null
  %cmp.i452.3 = icmp ne ptr %call9.i.i449.3, null
  %arrayidx61.3 = getelementptr %struct.bch_control, ptr %call7.i.i, i32 0, i32 14, i32 3
  %28 = ptrtoint ptr %arrayidx61.3 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call9.i.i449.3, ptr %arrayidx61.3, align 4
  %29 = select i1 %cmp.i452.3, i1 %cmp.i452.2, i1 false
  %30 = select i1 %29, i1 %cmp.i452.1, i1 false
  %31 = select i1 %30, i1 %cmp.i452, i1 false
  %32 = select i1 %31, i1 %cmp.i416, i1 false
  %33 = select i1 %32, i1 %cmp.i380, i1 false
  %34 = select i1 %33, i1 %cmp.i344506, i1 false
  %35 = select i1 %34, i1 %cmp.i308, i1 false
  %36 = select i1 %35, i1 %cmp.i272, i1 false
  %37 = select i1 %36, i1 %cmp.i236501, i1 false
  %38 = select i1 %37, i1 %cmp.i200, i1 false
  %39 = select i1 %38, i1 %cmp.i164, i1 false
  %tobool62.not = select i1 %39, i1 %cmp.i, i1 false
  br i1 %tobool62.not, label %if.end64, label %if.end16.fail_crit_edge

if.end16.fail_crit_edge:                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end64:                                         ; preds = %if.end16
  %40 = tail call i32 @llvm.ctlz.i32(i32 %prim_poly.addr.0, i1 true) #10, !range !31
  %sub.i.op.i.i = xor i32 %40, 31
  %sub.i.op.i.op.i = shl nuw i32 1, %sub.i.op.i.i
  %41 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %call7.i.i, align 8
  %shl1.i = shl nuw i32 1, %42
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.op.i.op.i, i32 %shl1.i)
  %cmp.not.i = icmp eq i32 %sub.i.op.i.op.i, %shl1.i
  br i1 %cmp.not.i, label %for.cond.preheader.i, label %if.end64.fail_crit_edge

if.end64.fail_crit_edge:                          ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

for.cond.preheader.i:                             ; preds = %if.end64
  %43 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp238.not.i = icmp eq i32 %44, 0
  br i1 %cmp238.not.i, label %for.cond.preheader.i.if.end68_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end68_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

for.body.i:                                       ; preds = %if.end8.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %x.040.i = phi i32 [ %spec.select.i, %if.end8.i.for.body.i_crit_edge ], [ 1, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.039.i = phi i32 [ %inc.i, %if.end8.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %conv.i = trunc i32 %x.040.i to i16
  %45 = ptrtoint ptr %a_pow_tab to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %a_pow_tab, align 4
  %arrayidx.i = getelementptr i16, ptr %46, i32 %i.039.i
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv.i, ptr %arrayidx.i, align 2
  %conv3.i = trunc i32 %i.039.i to i16
  %48 = ptrtoint ptr %a_log_tab to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %a_log_tab, align 8
  %arrayidx4.i = getelementptr i16, ptr %49, i32 %x.040.i
  %50 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv3.i, ptr %arrayidx4.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.039.i)
  %tobool.not.i = icmp ne i32 %i.039.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %x.040.i)
  %cmp5.i = icmp eq i32 %x.040.i, 1
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp5.i, i1 false
  br i1 %or.cond.i, label %for.body.i.fail_crit_edge, label %if.end8.i

for.body.i.fail_crit_edge:                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end8.i:                                        ; preds = %for.body.i
  %shl9.i = shl i32 %x.040.i, 1
  %and.i = and i32 %shl9.i, %sub.i.op.i.op.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not.i = icmp eq i32 %and.i, 0
  %xor.i = select i1 %tobool10.not.i, i32 0, i32 %prim_poly.addr.0
  %spec.select.i = xor i32 %xor.i, %shl9.i
  %inc.i = add nuw i32 %i.039.i, 1
  %51 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %n, align 4
  %cmp2.i = icmp ult i32 %inc.i, %52
  br i1 %cmp2.i, label %if.end8.i.for.body.i_crit_edge, label %if.end8.i.if.end68_crit_edge

if.end8.i.if.end68_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

if.end8.i.for.body.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end68:                                         ; preds = %if.end8.i.if.end68_crit_edge, %for.cond.preheader.i.if.end68_crit_edge
  %.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.if.end68_crit_edge ], [ %52, %if.end8.i.if.end68_crit_edge ]
  %53 = ptrtoint ptr %a_pow_tab to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %a_pow_tab, align 4
  %arrayidx15.i = getelementptr i16, ptr %54, i32 %.lcssa.i
  %55 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 1, ptr %arrayidx15.i, align 2
  %56 = ptrtoint ptr %a_log_tab to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %a_log_tab, align 8
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 0, ptr %57, align 2
  %59 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %call7.i.i, align 8
  %61 = ptrtoint ptr %t18 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %t18, align 8
  %mul.i = mul i32 %62, %60
  %add.i = shl i32 %mul.i, 2
  %add4.i = add i32 %add.i, 8
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add4.i, i32 noundef 3264) #12
  %cmp.i.i459 = icmp eq ptr %call9.i.i.i, null
  %63 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %n, align 4
  %add6.i = shl i32 %64, 2
  %mul7.i = add i32 %add6.i, 4
  %call9.i.i178.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul7.i, i32 noundef 3264) #12
  %cmp.i181.i = icmp eq ptr %call9.i.i178.i, null
  %sub.i = add i32 %mul.i, 32
  %65 = lshr i32 %sub.i, 3
  %mul12.i = and i32 %65, 536870908
  %call9.i.i214.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul12.i, i32 noundef 3264) #12
  %cmp.i217.i = icmp eq ptr %call9.i.i214.i, null
  %66 = select i1 %cmp.i217.i, i1 true, i1 %cmp.i181.i
  %brmerge = select i1 %66, i1 true, i1 %cmp.i.i459
  br i1 %brmerge, label %if.then.i461, label %if.end.i

if.then.i461:                                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef %call9.i.i214.i) #10
  br label %compute_generator_polynomial.exit

if.end.i:                                         ; preds = %if.end68
  %67 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %n, align 4
  %add15.i = shl i32 %68, 2
  %mul16.i = add i32 %add15.i, 4
  %69 = call ptr @memset(ptr %call9.i.i178.i, i32 0, i32 %mul16.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp255.not.i = icmp eq i32 %62, 0
  br i1 %cmp255.not.i, label %if.end.i.for.end26.i_crit_edge, label %for.body.lr.ph.i462

if.end.i.for.end26.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end26.i

for.body.lr.ph.i462:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp20252.not.i = icmp eq i32 %60, 0
  br label %for.body.i463

for.body.i463:                                    ; preds = %for.inc24.i.for.body.i463_crit_edge, %for.body.lr.ph.i462
  %i.0256.i = phi i32 [ 0, %for.body.lr.ph.i462 ], [ %inc25.i, %for.inc24.i.for.body.i463_crit_edge ]
  br i1 %cmp20252.not.i, label %for.body.i463.for.inc24.i_crit_edge, label %for.body21.preheader.i

for.body.i463.for.inc24.i_crit_edge:              ; preds = %for.body.i463
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc24.i

for.body21.preheader.i:                           ; preds = %for.body.i463
  %mul17.i = shl i32 %i.0256.i, 1
  %add18.i = or i32 %mul17.i, 1
  %70 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %n, align 4
  br label %for.body21.i

for.body21.i:                                     ; preds = %for.body21.i.for.body21.i_crit_edge, %for.body21.preheader.i
  %r.0254.i = phi i32 [ %cond.i.i, %for.body21.i.for.body21.i_crit_edge ], [ %add18.i, %for.body21.preheader.i ]
  %j.0253.i = phi i32 [ %inc.i465, %for.body21.i.for.body21.i_crit_edge ], [ 0, %for.body21.preheader.i ]
  %arrayidx.i464 = getelementptr i32, ptr %call9.i.i178.i, i32 %r.0254.i
  %72 = ptrtoint ptr %arrayidx.i464 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 1, ptr %arrayidx.i464, align 4
  %mul22.i = shl i32 %r.0254.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %mul22.i)
  %cmp.i222.i = icmp ugt i32 %71, %mul22.i
  %sub.i.i = select i1 %cmp.i222.i, i32 0, i32 %71
  %cond.i.i = sub i32 %mul22.i, %sub.i.i
  %inc.i465 = add nuw i32 %j.0253.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i465, %60
  br i1 %exitcond.not.i, label %for.body21.i.for.inc24.i_crit_edge, label %for.body21.i.for.body21.i_crit_edge

for.body21.i.for.body21.i_crit_edge:              ; preds = %for.body21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body21.i

for.body21.i.for.inc24.i_crit_edge:               ; preds = %for.body21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc24.i

for.inc24.i:                                      ; preds = %for.body21.i.for.inc24.i_crit_edge, %for.body.i463.for.inc24.i_crit_edge
  %inc25.i = add nuw i32 %i.0256.i, 1
  %exitcond269.not.i = icmp eq i32 %inc25.i, %62
  br i1 %exitcond269.not.i, label %for.inc24.i.for.end26.i_crit_edge, label %for.inc24.i.for.body.i463_crit_edge

for.inc24.i.for.body.i463_crit_edge:              ; preds = %for.inc24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i463

for.inc24.i.for.end26.i_crit_edge:                ; preds = %for.inc24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end26.i

for.end26.i:                                      ; preds = %for.inc24.i.for.end26.i_crit_edge, %if.end.i.for.end26.i_crit_edge
  %73 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %call9.i.i.i, align 128
  %c.i = getelementptr inbounds %struct.gf_poly, ptr %call9.i.i.i, i32 0, i32 1
  %74 = ptrtoint ptr %c.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 1, ptr %c.i, align 4
  %75 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp30259.not.i = icmp eq i32 %76, 0
  br i1 %cmp30259.not.i, label %for.end26.i.while.body.preheader.i_crit_edge, label %for.body31.i.preheader

for.end26.i.while.body.preheader.i_crit_edge:     ; preds = %for.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.preheader.i

for.body31.i.preheader:                           ; preds = %for.end26.i
  %77 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %n, align 4
  br label %for.body31.i

for.body31.i:                                     ; preds = %for.inc63.i.for.body31.i_crit_edge, %for.body31.i.preheader
  %i.1260.i = phi i32 [ %inc64.i, %for.inc63.i.for.body31.i_crit_edge ], [ 0, %for.body31.i.preheader ]
  %arrayidx32.i = getelementptr i32, ptr %call9.i.i178.i, i32 %i.1260.i
  %79 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx32.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool33.not.i = icmp eq i32 %80, 0
  br i1 %tobool33.not.i, label %for.body31.i.for.inc63.i_crit_edge, label %if.then34.i

for.body31.i.for.inc63.i_crit_edge:               ; preds = %for.body31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc63.i

if.then34.i:                                      ; preds = %for.body31.i
  %81 = ptrtoint ptr %a_pow_tab to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %a_pow_tab, align 4
  %arrayidx35.i = getelementptr i16, ptr %82, i32 %i.1260.i
  %83 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %arrayidx35.i, align 2
  %conv.i467 = zext i16 %84 to i32
  %85 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %call9.i.i.i, align 128
  %add38.i = add i32 %86, 1
  %arrayidx39.i = getelementptr %struct.gf_poly, ptr %call9.i.i.i, i32 0, i32 1, i32 %add38.i
  %87 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 1, ptr %arrayidx39.i, align 4
  %88 = load i32, ptr %call9.i.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp42.not257.i = icmp eq i32 %88, 0
  br i1 %cmp42.not257.i, label %if.then34.i.for.end54.i_crit_edge, label %for.body44.lr.ph.i

if.then34.i.for.end54.i_crit_edge:                ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end54.i

for.body44.lr.ph.i:                               ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %84)
  %tobool1.not.i.i = icmp eq i16 %84, 0
  br label %for.body44.i

for.body44.i:                                     ; preds = %gf_mul.exit.i.for.body44.i_crit_edge, %for.body44.lr.ph.i
  %j.1258.i = phi i32 [ %88, %for.body44.lr.ph.i ], [ %sub49.i, %gf_mul.exit.i.for.body44.i_crit_edge ]
  %arrayidx46.i = getelementptr %struct.gf_poly, ptr %call9.i.i.i, i32 0, i32 1, i32 %j.1258.i
  %89 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx46.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool.not.i.i = icmp eq i32 %90, 0
  %or.cond.i.i = or i1 %tobool1.not.i.i, %tobool.not.i.i
  br i1 %or.cond.i.i, label %for.body44.i.gf_mul.exit.i_crit_edge, label %cond.true.i.i

for.body44.i.gf_mul.exit.i_crit_edge:             ; preds = %for.body44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gf_mul.exit.i

cond.true.i.i:                                    ; preds = %for.body44.i
  call void @__sanitizer_cov_trace_pc() #9
  %91 = ptrtoint ptr %a_pow_tab to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %a_pow_tab, align 4
  %93 = ptrtoint ptr %a_log_tab to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %a_log_tab, align 8
  %arrayidx.i.i = getelementptr i16, ptr %94, i32 %90
  %95 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %96 to i32
  %arrayidx3.i.i = getelementptr i16, ptr %94, i32 %conv.i467
  %97 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %arrayidx3.i.i, align 2
  %conv4.i.i = zext i16 %98 to i32
  %add.i.i = add nuw nsw i32 %conv4.i.i, %conv.i.i
  %99 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %add.i.i)
  %cmp.i.i223.i = icmp ugt i32 %100, %add.i.i
  %sub.i.i.i = select i1 %cmp.i.i223.i, i32 0, i32 %100
  %cond.i.i.i = sub i32 %add.i.i, %sub.i.i.i
  %arrayidx5.i.i = getelementptr i16, ptr %92, i32 %cond.i.i.i
  %101 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %arrayidx5.i.i, align 2
  %conv6.i.i = zext i16 %102 to i32
  br label %gf_mul.exit.i

gf_mul.exit.i:                                    ; preds = %cond.true.i.i, %for.body44.i.gf_mul.exit.i_crit_edge
  %cond.i224.i = phi i32 [ %conv6.i.i, %cond.true.i.i ], [ 0, %for.body44.i.gf_mul.exit.i_crit_edge ]
  %sub49.i = add i32 %j.1258.i, -1
  %arrayidx50.i = getelementptr %struct.gf_poly, ptr %call9.i.i.i, i32 0, i32 1, i32 %sub49.i
  %103 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx50.i, align 4
  %xor.i468 = xor i32 %104, %cond.i224.i
  %105 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %xor.i468, ptr %arrayidx46.i, align 4
  %cmp42.not.i = icmp eq i32 %sub49.i, 0
  br i1 %cmp42.not.i, label %gf_mul.exit.i.for.end54.i_crit_edge, label %gf_mul.exit.i.for.body44.i_crit_edge

gf_mul.exit.i.for.body44.i_crit_edge:             ; preds = %gf_mul.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body44.i

gf_mul.exit.i.for.end54.i_crit_edge:              ; preds = %gf_mul.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end54.i

for.end54.i:                                      ; preds = %gf_mul.exit.i.for.end54.i_crit_edge, %if.then34.i.for.end54.i_crit_edge
  %106 = ptrtoint ptr %c.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %c.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool.not.i225.i = icmp eq i32 %107, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %84)
  %tobool1.not.i226.i = icmp eq i16 %84, 0
  %or.cond.i227.i = or i1 %tobool1.not.i226.i, %tobool.not.i225.i
  br i1 %or.cond.i227.i, label %for.end54.i.gf_mul.exit243.i_crit_edge, label %cond.true.i241.i

for.end54.i.gf_mul.exit243.i_crit_edge:           ; preds = %for.end54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gf_mul.exit243.i

cond.true.i241.i:                                 ; preds = %for.end54.i
  call void @__sanitizer_cov_trace_pc() #9
  %108 = ptrtoint ptr %a_pow_tab to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %a_pow_tab, align 4
  %110 = ptrtoint ptr %a_log_tab to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %a_log_tab, align 8
  %arrayidx.i230.i = getelementptr i16, ptr %111, i32 %107
  %112 = ptrtoint ptr %arrayidx.i230.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %arrayidx.i230.i, align 2
  %conv.i231.i = zext i16 %113 to i32
  %arrayidx3.i232.i = getelementptr i16, ptr %111, i32 %conv.i467
  %114 = ptrtoint ptr %arrayidx3.i232.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %arrayidx3.i232.i, align 2
  %conv4.i233.i = zext i16 %115 to i32
  %add.i234.i = add nuw nsw i32 %conv4.i233.i, %conv.i231.i
  %116 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %117, i32 %add.i234.i)
  %cmp.i.i236.i = icmp ugt i32 %117, %add.i234.i
  %sub.i.i237.i = select i1 %cmp.i.i236.i, i32 0, i32 %117
  %cond.i.i238.i = sub i32 %add.i234.i, %sub.i.i237.i
  %arrayidx5.i239.i = getelementptr i16, ptr %109, i32 %cond.i.i238.i
  %118 = ptrtoint ptr %arrayidx5.i239.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %arrayidx5.i239.i, align 2
  %conv6.i240.i = zext i16 %119 to i32
  br label %gf_mul.exit243.i

gf_mul.exit243.i:                                 ; preds = %cond.true.i241.i, %for.end54.i.gf_mul.exit243.i_crit_edge
  %cond.i242.i = phi i32 [ %conv6.i240.i, %cond.true.i241.i ], [ 0, %for.end54.i.gf_mul.exit243.i_crit_edge ]
  %120 = ptrtoint ptr %c.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %cond.i242.i, ptr %c.i, align 4
  %121 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %call9.i.i.i, align 128
  %inc61.i = add i32 %122, 1
  store i32 %inc61.i, ptr %call9.i.i.i, align 128
  br label %for.inc63.i

for.inc63.i:                                      ; preds = %gf_mul.exit243.i, %for.body31.i.for.inc63.i_crit_edge
  %inc64.i = add nuw i32 %i.1260.i, 1
  %cmp30.i = icmp ult i32 %inc64.i, %78
  br i1 %cmp30.i, label %for.inc63.i.for.body31.i_crit_edge, label %for.end65.i

for.inc63.i.for.body31.i_crit_edge:               ; preds = %for.inc63.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body31.i

for.end65.i:                                      ; preds = %for.inc63.i
  %123 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %.pr.i = load i32, ptr %call9.i.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %.pr.i)
  %cmp68265.i = icmp ult i32 %.pr.i, 2147483647
  br i1 %cmp68265.i, label %for.end65.i.while.body.preheader.i_crit_edge, label %for.end65.i.while.end.i_crit_edge

for.end65.i.while.end.i_crit_edge:                ; preds = %for.end65.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

for.end65.i.while.body.preheader.i_crit_edge:     ; preds = %for.end65.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.preheader.i

while.body.preheader.i:                           ; preds = %for.end65.i.while.body.preheader.i_crit_edge, %for.end26.i.while.body.preheader.i_crit_edge
  %124 = phi i32 [ %.pr.i, %for.end65.i.while.body.preheader.i_crit_edge ], [ 0, %for.end26.i.while.body.preheader.i_crit_edge ]
  %add67.i = add nuw nsw i32 %124, 1
  br label %while.body.i

while.body.i:                                     ; preds = %for.end86.i.while.body.i_crit_edge, %while.body.preheader.i
  %i.2268.i = phi i32 [ %inc87.i, %for.end86.i.while.body.i_crit_edge ], [ 0, %while.body.preheader.i ]
  %n.0266.i = phi i32 [ %sub89.i, %for.end86.i.while.body.i_crit_edge ], [ %add67.i, %while.body.preheader.i ]
  %125 = tail call i32 @llvm.umin.i32(i32 %n.0266.i, i32 32) #10
  br label %for.body75.i

for.body75.i:                                     ; preds = %for.body75.i.for.body75.i_crit_edge, %while.body.i
  %word.0264.i = phi i32 [ %word.1.i, %for.body75.i.for.body75.i_crit_edge ], [ 0, %while.body.i ]
  %j.2263.i = phi i32 [ %inc85.i, %for.body75.i.for.body75.i_crit_edge ], [ 0, %while.body.i ]
  %126 = xor i32 %j.2263.i, -1
  %sub78.i = add i32 %n.0266.i, %126
  %arrayidx79.i = getelementptr %struct.gf_poly, ptr %call9.i.i.i, i32 0, i32 1, i32 %sub78.i
  %127 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx79.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool80.not.i = icmp eq i32 %128, 0
  %shl.i = lshr i32 -2147483648, %j.2263.i
  %or.i = select i1 %tobool80.not.i, i32 0, i32 %shl.i
  %word.1.i = or i32 %or.i, %word.0264.i
  %inc85.i = add nuw nsw i32 %j.2263.i, 1
  %exitcond270.not.i = icmp eq i32 %inc85.i, %125
  br i1 %exitcond270.not.i, label %for.end86.i, label %for.body75.i.for.body75.i_crit_edge

for.body75.i.for.body75.i_crit_edge:              ; preds = %for.body75.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body75.i

for.end86.i:                                      ; preds = %for.body75.i
  %inc87.i = add i32 %i.2268.i, 1
  %arrayidx88.i = getelementptr i32, ptr %call9.i.i214.i, i32 %i.2268.i
  %129 = ptrtoint ptr %arrayidx88.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %word.1.i, ptr %arrayidx88.i, align 4
  %sub89.i = sub i32 %n.0266.i, %125
  %cmp68.i = icmp sgt i32 %sub89.i, 0
  br i1 %cmp68.i, label %for.end86.i.while.body.i_crit_edge, label %for.end86.i.while.end.i_crit_edge

for.end86.i.while.end.i_crit_edge:                ; preds = %for.end86.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

for.end86.i.while.body.i_crit_edge:               ; preds = %for.end86.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.end.i:                                      ; preds = %for.end86.i.while.end.i_crit_edge, %for.end65.i.while.end.i_crit_edge
  %130 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %call9.i.i.i, align 128
  %ecc_bits.i = getelementptr inbounds %struct.bch_control, ptr %call7.i.i, i32 0, i32 3
  %132 = ptrtoint ptr %ecc_bits.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %ecc_bits.i, align 4
  br label %compute_generator_polynomial.exit

compute_generator_polynomial.exit:                ; preds = %while.end.i, %if.then.i461
  %genpoly.0.i = phi ptr [ null, %if.then.i461 ], [ %call9.i.i214.i, %while.end.i ]
  tail call void @kfree(ptr noundef %call9.i.i.i) #10
  tail call void @kfree(ptr noundef %call9.i.i178.i) #10
  %cmp70 = icmp eq ptr %genpoly.0.i, null
  br i1 %cmp70, label %compute_generator_polynomial.exit.fail_crit_edge, label %if.end72

compute_generator_polynomial.exit.fail_crit_edge: ; preds = %compute_generator_polynomial.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end72:                                         ; preds = %compute_generator_polynomial.exit
  tail call fastcc void @build_mod8_tables(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %genpoly.0.i)
  tail call void @kfree(ptr noundef nonnull %genpoly.0.i) #10
  %call73 = tail call fastcc i32 @build_deg2_base(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end72.cleanup_crit_edge, label %if.end72.fail_crit_edge

if.end72.fail_crit_edge:                          ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

fail:                                             ; preds = %if.end72.fail_crit_edge, %compute_generator_polynomial.exit.fail_crit_edge, %for.body.i.fail_crit_edge, %if.end64.fail_crit_edge, %if.end16.fail_crit_edge, %if.end13.fail_crit_edge, %lor.lhs.false6.fail_crit_edge, %entry.fail_crit_edge
  %bch.0 = phi ptr [ null, %entry.fail_crit_edge ], [ null, %lor.lhs.false6.fail_crit_edge ], [ null, %if.end13.fail_crit_edge ], [ %call7.i.i, %if.end16.fail_crit_edge ], [ %call7.i.i, %compute_generator_polynomial.exit.fail_crit_edge ], [ %call7.i.i, %if.end72.fail_crit_edge ], [ %call7.i.i, %if.end64.fail_crit_edge ], [ %call7.i.i, %for.body.i.fail_crit_edge ]
  tail call void @bch_free(ptr noundef %bch.0)
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end72.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %fail ], [ %call7.i.i, %if.end72.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @build_mod8_tables(ptr nocapture noundef readonly %bch, ptr nocapture noundef readonly %g) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %bch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bch, align 4
  %t = getelementptr inbounds %struct.bch_control, ptr %bch, i32 0, i32 2
  %2 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %t, align 4
  %mul = mul i32 %3, %1
  %sub = add i32 %mul, 31
  %div69 = lshr i32 %sub, 5
  %ecc_bits = getelementptr inbounds %struct.bch_control, ptr %bch, i32 0, i32 3
  %4 = ptrtoint ptr %ecc_bits to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ecc_bits, align 4
  %sub3 = add i32 %5, 32
  %div470 = lshr i32 %sub3, 5
  %sub7 = add i32 %5, 31
  %div871 = lshr i32 %sub7, 5
  %mod8_tab = getelementptr inbounds %struct.bch_control, ptr %bch, i32 0, i32 7
  %6 = ptrtoint ptr %mod8_tab to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mod8_tab, align 4
  %mul10 = shl i32 %div69, 12
  %8 = call ptr @memset(ptr %7, i32 0, i32 %mul10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub7)
  %cmp2172.not = icmp ult i32 %sub7, 32
  %umax = call i32 @llvm.umax.i32(i32 %div871, i32 1)
  br label %for.cond11.preheader

for.cond11.preheader:                             ; preds = %for.inc42.for.cond11.preheader_crit_edge, %entry
  %i.078 = phi i32 [ 0, %entry ], [ %inc43, %for.inc42.for.cond11.preheader_crit_edge ]
  br label %for.body13

for.body13:                                       ; preds = %for.inc39.for.body13_crit_edge, %for.cond11.preheader
  %b.077 = phi i32 [ 0, %for.cond11.preheader ], [ %inc40, %for.inc39.for.body13_crit_edge ]
  %9 = ptrtoint ptr %mod8_tab to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mod8_tab, align 4
  %mul15 = shl i32 %b.077, 8
  %add16 = add nuw nsw i32 %mul15, %i.078
  %mul17 = mul i32 %add16, %div69
  %add.ptr = getelementptr i32, ptr %10, i32 %mul17
  %mul18 = shl i32 %b.077, 3
  %shl = shl i32 %i.078, %mul18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl)
  %tobool.not75 = icmp eq i32 %shl, 0
  br i1 %tobool.not75, label %for.body13.for.inc39_crit_edge, label %for.body13.while.body_crit_edge

for.body13.while.body_crit_edge:                  ; preds = %for.body13
  br label %while.body

for.body13.for.inc39_crit_edge:                   ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc39

while.cond.loopexit:                              ; preds = %cond.end35.while.cond.loopexit_crit_edge, %while.body.while.cond.loopexit_crit_edge
  %tobool.not = icmp eq i32 %xor, 0
  br i1 %tobool.not, label %while.cond.loopexit.for.inc39_crit_edge, label %while.cond.loopexit.while.body_crit_edge

while.cond.loopexit.while.body_crit_edge:         ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.cond.loopexit.for.inc39_crit_edge:          ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc39

while.body:                                       ; preds = %while.cond.loopexit.while.body_crit_edge, %for.body13.while.body_crit_edge
  %data.076 = phi i32 [ %xor, %while.cond.loopexit.while.body_crit_edge ], [ %shl, %for.body13.while.body_crit_edge ]
  %11 = tail call i32 @llvm.ctlz.i32(i32 %data.076, i1 true) #10, !range !31
  %12 = ptrtoint ptr %g to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %g, align 4
  %shr = lshr i32 %13, %11
  %xor = xor i32 %shr, %data.076
  br i1 %cmp2172.not, label %while.body.while.cond.loopexit_crit_edge, label %for.body22.lr.ph

while.body.while.cond.loopexit_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.loopexit

for.body22.lr.ph:                                 ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp23.not = icmp eq i32 %11, 0
  %add25 = sub nuw nsw i32 32, %11
  br label %for.body22

for.body22:                                       ; preds = %cond.end35.for.body22_crit_edge, %for.body22.lr.ph
  %j.073 = phi i32 [ 0, %for.body22.lr.ph ], [ %add27, %cond.end35.for.body22_crit_edge ]
  br i1 %cmp23.not, label %for.body22.cond.end_crit_edge, label %cond.true

for.body22.cond.end_crit_edge:                    ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx24 = getelementptr i32, ptr %g, i32 %j.073
  %14 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx24, align 4
  %shl26 = shl i32 %15, %add25
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %for.body22.cond.end_crit_edge
  %cond = phi i32 [ %shl26, %cond.true ], [ 0, %for.body22.cond.end_crit_edge ]
  %add27 = add nuw nsw i32 %j.073, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add27, i32 %div470)
  %cmp28 = icmp ult i32 %add27, %div470
  br i1 %cmp28, label %cond.true29, label %cond.end.cond.end35_crit_edge

cond.end.cond.end35_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end35

cond.true29:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx31 = getelementptr i32, ptr %g, i32 %add27
  %16 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx31, align 4
  %shr33 = lshr i32 %17, %11
  br label %cond.end35

cond.end35:                                       ; preds = %cond.true29, %cond.end.cond.end35_crit_edge
  %cond36 = phi i32 [ %shr33, %cond.true29 ], [ 0, %cond.end.cond.end35_crit_edge ]
  %or = or i32 %cond36, %cond
  %arrayidx37 = getelementptr i32, ptr %add.ptr, i32 %j.073
  %18 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx37, align 4
  %xor38 = xor i32 %19, %or
  store i32 %xor38, ptr %arrayidx37, align 4
  %exitcond.not = icmp eq i32 %add27, %umax
  br i1 %exitcond.not, label %cond.end35.while.cond.loopexit_crit_edge, label %cond.end35.for.body22_crit_edge

cond.end35.for.body22_crit_edge:                  ; preds = %cond.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body22

cond.end35.while.cond.loopexit_crit_edge:         ; preds = %cond.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.loopexit

for.inc39:                                        ; preds = %while.cond.loopexit.for.inc39_crit_edge, %for.body13.for.inc39_crit_edge
  %inc40 = add nuw nsw i32 %b.077, 1
  %exitcond79.not = icmp eq i32 %inc40, 4
  br i1 %exitcond79.not, label %for.inc42, label %for.inc39.for.body13_crit_edge

for.inc39.for.body13_crit_edge:                   ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body13

for.inc42:                                        ; preds = %for.inc39
  %inc43 = add nuw nsw i32 %i.078, 1
  %exitcond80.not = icmp eq i32 %inc43, 256
  br i1 %exitcond80.not, label %for.end44, label %for.inc42.for.cond11.preheader_crit_edge

for.inc42.for.cond11.preheader_crit_edge:         ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond11.preheader

for.end44:                                        ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @build_deg2_base(ptr nocapture noundef readonly %bch) unnamed_addr #3 align 64 {
entry:
  %xi = alloca [15 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %bch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bch, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %xi) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp79 = icmp sgt i32 %1, 0
  br i1 %cmp79, label %for.cond2.preheader.lr.ph, label %entry.for.end7_crit_edge

entry.for.end7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end7

for.cond2.preheader.lr.ph:                        ; preds = %entry
  %a_pow_tab.i = getelementptr inbounds %struct.bch_control, ptr %bch, i32 0, i32 5
  %n1.i.i = getelementptr inbounds %struct.bch_control, ptr %bch, i32 0, i32 1
  %2 = ptrtoint ptr %a_pow_tab.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %a_pow_tab.i, align 4
  %4 = ptrtoint ptr %n1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n1.i.i, align 4
  br label %for.body4.lr.ph

for.body4.lr.ph:                                  ; preds = %for.inc5.for.body4.lr.ph_crit_edge, %for.cond2.preheader.lr.ph
  %i.080 = phi i32 [ 0, %for.cond2.preheader.lr.ph ], [ %inc6, %for.inc5.for.body4.lr.ph_crit_edge ]
  br label %for.body4

for.body4:                                        ; preds = %a_pow.exit.for.body4_crit_edge, %for.body4.lr.ph
  %sum.078 = phi i32 [ 0, %for.body4.lr.ph ], [ %xor, %a_pow.exit.for.body4_crit_edge ]
  %j.077 = phi i32 [ 0, %for.body4.lr.ph ], [ %inc, %a_pow.exit.for.body4_crit_edge ]
  %mul = shl i32 %i.080, %j.077
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %mul)
  %cmp.not9.i.i = icmp ugt i32 %5, %mul
  br i1 %cmp.not9.i.i, label %for.body4.a_pow.exit_crit_edge, label %for.body4.while.body.i.i_crit_edge

for.body4.while.body.i.i_crit_edge:               ; preds = %for.body4
  br label %while.body.i.i

for.body4.a_pow.exit_crit_edge:                   ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #9
  br label %a_pow.exit

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %for.body4.while.body.i.i_crit_edge
  %v.addr.010.i.i = phi i32 [ %add.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %mul, %for.body4.while.body.i.i_crit_edge ]
  %sub.i.i = sub i32 %v.addr.010.i.i, %5
  %and.i.i = and i32 %sub.i.i, %5
  %shr.i.i = lshr i32 %sub.i.i, %1
  %add.i.i = add i32 %shr.i.i, %and.i.i
  %cmp.not.i.i = icmp ult i32 %add.i.i, %5
  br i1 %cmp.not.i.i, label %while.body.i.i.a_pow.exit_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i

while.body.i.i.a_pow.exit_crit_edge:              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %a_pow.exit

a_pow.exit:                                       ; preds = %while.body.i.i.a_pow.exit_crit_edge, %for.body4.a_pow.exit_crit_edge
  %v.addr.0.lcssa.i.i = phi i32 [ %mul, %for.body4.a_pow.exit_crit_edge ], [ %add.i.i, %while.body.i.i.a_pow.exit_crit_edge ]
  %arrayidx.i = getelementptr i16, ptr %3, i32 %v.addr.0.lcssa.i.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %7 to i32
  %xor = xor i32 %sum.078, %conv.i
  %inc = add nuw nsw i32 %j.077, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.end, label %a_pow.exit.for.body4_crit_edge

a_pow.exit.for.body4_crit_edge:                   ; preds = %a_pow.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body4

for.end:                                          ; preds = %a_pow.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor)
  %tobool.not = icmp eq i32 %xor, 0
  br i1 %tobool.not, label %for.inc5, label %if.then

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %a_pow_tab.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %a_pow_tab.i, align 4
  %arrayidx = getelementptr i16, ptr %9, i32 %i.080
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %11 to i32
  br label %for.end7

for.inc5:                                         ; preds = %for.end
  %inc6 = add nuw nsw i32 %i.080, 1
  %exitcond92.not = icmp eq i32 %inc6, %1
  br i1 %exitcond92.not, label %for.inc5.for.end7_crit_edge, label %for.inc5.for.body4.lr.ph_crit_edge

for.inc5.for.body4.lr.ph_crit_edge:               ; preds = %for.inc5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body4.lr.ph

for.inc5.for.end7_crit_edge:                      ; preds = %for.inc5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end7

for.end7:                                         ; preds = %for.inc5.for.end7_crit_edge, %if.then, %entry.for.end7_crit_edge
  %ak.0 = phi i32 [ %conv, %if.then ], [ 0, %entry.for.end7_crit_edge ], [ 0, %for.inc5.for.end7_crit_edge ]
  %12 = call ptr @memset(ptr %xi, i32 0, i32 60)
  %n = getelementptr inbounds %struct.bch_control, ptr %bch, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool11.not84 = icmp eq i32 %1, 0
  br i1 %tobool11.not84, label %for.end7.for.end36_crit_edge, label %for.body12.lr.ph

for.end7.for.end36_crit_edge:                     ; preds = %for.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end36

for.body12.lr.ph:                                 ; preds = %for.end7
  %13 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n, align 4
  %a_pow_tab.i67 = getelementptr inbounds %struct.bch_control, ptr %bch, i32 0, i32 5
  %a_log_tab.i = getelementptr inbounds %struct.bch_control, ptr %bch, i32 0, i32 6
  %xi_tab = getelementptr inbounds %struct.bch_control, ptr %bch, i32 0, i32 10
  br label %for.body12

for.body12:                                       ; preds = %for.inc34.for.body12_crit_edge, %for.body12.lr.ph
  %15 = phi i32 [ %14, %for.body12.lr.ph ], [ %39, %for.inc34.for.body12_crit_edge ]
  %remaining.088 = phi i32 [ %1, %for.body12.lr.ph ], [ %remaining.1, %for.inc34.for.body12_crit_edge ]
  %x.085 = phi i32 [ 0, %for.body12.lr.ph ], [ %inc35, %for.inc34.for.body12_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %x.085)
  %tobool.not.i = icmp eq i32 %x.085, 0
  br i1 %tobool.not.i, label %for.body12.gf_sqr.exit_crit_edge, label %cond.true.i

for.body12.gf_sqr.exit_crit_edge:                 ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #9
  br label %gf_sqr.exit

cond.true.i:                                      ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %a_pow_tab.i67 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %a_pow_tab.i67, align 4
  %18 = ptrtoint ptr %a_log_tab.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %a_log_tab.i, align 4
  %arrayidx.i68 = getelementptr i16, ptr %19, i32 %x.085
  %20 = ptrtoint ptr %arrayidx.i68 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx.i68, align 2
  %conv.i69 = zext i16 %21 to i32
  %mul.i = shl nuw nsw i32 %conv.i69, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %mul.i)
  %cmp.i.i = icmp ugt i32 %15, %mul.i
  %sub.i.i71 = select i1 %cmp.i.i, i32 0, i32 %15
  %cond.i.i = sub i32 %mul.i, %sub.i.i71
  %arrayidx1.i = getelementptr i16, ptr %17, i32 %cond.i.i
  %22 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx1.i, align 2
  %conv2.i = zext i16 %23 to i32
  br label %gf_sqr.exit

gf_sqr.exit:                                      ; preds = %cond.true.i, %for.body12.gf_sqr.exit_crit_edge
  %cond.i = phi i32 [ %conv2.i, %cond.true.i ], [ 0, %for.body12.gf_sqr.exit_crit_edge ]
  %xor14 = xor i32 %cond.i, %x.085
  %24 = ptrtoint ptr %a_log_tab.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %a_log_tab.i, align 4
  %arrayidx.i73 = getelementptr i16, ptr %25, i32 %xor14
  %26 = ptrtoint ptr %arrayidx.i73 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx.i73, align 2
  %conv.i74 = zext i16 %27 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor14)
  %tobool20.not = icmp ne i32 %xor14, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv.i74)
  %cmp21 = icmp sgt i32 %1, %conv.i74
  %or.cond66 = select i1 %tobool20.not, i1 %cmp21, i1 false
  br i1 %or.cond66, label %land.lhs.true23, label %gf_sqr.exit.if.end29_crit_edge

gf_sqr.exit.if.end29_crit_edge:                   ; preds = %gf_sqr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

land.lhs.true23:                                  ; preds = %gf_sqr.exit
  %arrayidx24 = getelementptr [15 x i32], ptr %xi, i32 0, i32 %conv.i74
  %28 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool25.not = icmp eq i32 %29, 0
  br i1 %tobool25.not, label %land.lhs.true23.if.then26_crit_edge, label %land.lhs.true23.if.end29_crit_edge

land.lhs.true23.if.end29_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

land.lhs.true23.if.then26_crit_edge:              ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then26

if.then26:                                        ; preds = %land.lhs.true23.1.if.then26_crit_edge, %land.lhs.true23.if.then26_crit_edge
  %conv.i74.le.pre-phi = phi i32 [ %conv.i74.1, %land.lhs.true23.1.if.then26_crit_edge ], [ %conv.i74, %land.lhs.true23.if.then26_crit_edge ]
  %arrayidx24.le = getelementptr [15 x i32], ptr %xi, i32 0, i32 %conv.i74.le.pre-phi
  %30 = ptrtoint ptr %xi_tab to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %xi_tab, align 4
  %arrayidx27 = getelementptr i32, ptr %31, i32 %conv.i74.le.pre-phi
  %32 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %x.085, ptr %arrayidx27, align 4
  %33 = ptrtoint ptr %arrayidx24.le to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %arrayidx24.le, align 4
  %dec = add i32 %remaining.088, -1
  br label %for.inc34

if.end29:                                         ; preds = %land.lhs.true23.if.end29_crit_edge, %gf_sqr.exit.if.end29_crit_edge
  %xor30 = xor i32 %xor14, %ak.0
  %arrayidx.i73.1 = getelementptr i16, ptr %25, i32 %xor30
  %34 = ptrtoint ptr %arrayidx.i73.1 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx.i73.1, align 2
  %conv.i74.1 = zext i16 %35 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor30)
  %tobool20.not.1 = icmp ne i32 %xor30, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv.i74.1)
  %cmp21.1 = icmp sgt i32 %1, %conv.i74.1
  %or.cond66.1 = select i1 %tobool20.not.1, i1 %cmp21.1, i1 false
  br i1 %or.cond66.1, label %land.lhs.true23.1, label %if.end29.for.inc34_crit_edge

if.end29.for.inc34_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc34

land.lhs.true23.1:                                ; preds = %if.end29
  %arrayidx24.1 = getelementptr [15 x i32], ptr %xi, i32 0, i32 %conv.i74.1
  %36 = ptrtoint ptr %arrayidx24.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx24.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool25.not.1 = icmp eq i32 %37, 0
  br i1 %tobool25.not.1, label %land.lhs.true23.1.if.then26_crit_edge, label %land.lhs.true23.1.for.inc34_crit_edge

land.lhs.true23.1.for.inc34_crit_edge:            ; preds = %land.lhs.true23.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc34

land.lhs.true23.1.if.then26_crit_edge:            ; preds = %land.lhs.true23.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then26

for.inc34:                                        ; preds = %land.lhs.true23.1.for.inc34_crit_edge, %if.end29.for.inc34_crit_edge, %if.then26
  %remaining.1 = phi i32 [ %dec, %if.then26 ], [ %remaining.088, %land.lhs.true23.1.for.inc34_crit_edge ], [ %remaining.088, %if.end29.for.inc34_crit_edge ]
  %inc35 = add i32 %x.085, 1
  %38 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc35, i32 %39)
  %cmp9.not = icmp ugt i32 %inc35, %39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %remaining.1)
  %tobool11.not = icmp eq i32 %remaining.1, 0
  %or.cond = select i1 %cmp9.not, i1 true, i1 %tobool11.not
  br i1 %or.cond, label %for.inc34.for.end36_crit_edge, label %for.inc34.for.body12_crit_edge

for.inc34.for.body12_crit_edge:                   ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body12

for.inc34.for.end36_crit_edge:                    ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end36

for.end36:                                        ; preds = %for.inc34.for.end36_crit_edge, %for.end7.for.end36_crit_edge
  %remaining.0.lcssa = phi i32 [ 0, %for.end7.for.end36_crit_edge ], [ %remaining.1, %for.inc34.for.end36_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %remaining.0.lcssa)
  %tobool37.not = icmp ne i32 %remaining.0.lcssa, 0
  %cond = sext i1 %tobool37.not to i32
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %xi) #10
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bch_free(ptr noundef %bch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %tobool.not = icmp eq ptr %bch, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %a_pow_tab = getelementptr inbounds %struct.bch_control, ptr %bch, i32 0, i32 5
  %0 = ptrtoint ptr %a_pow_tab to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %a_pow_tab, align 4
  tail call void @kfree(ptr noundef %1) #10
  %a_log_tab = getelementptr inbounds %struct.bch_control, ptr %bch, i32 0, i32 6
  %2 = ptrtoint ptr %a_log_tab to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %a_log_tab, align 4
  tail call void @kfree(ptr noundef %3) #10
  %mod8_tab = getelementptr inbounds %struct.bch_control, ptr %bch, i32 0, i32 7
  %4 = ptrtoint ptr %mod8_tab to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mod8_tab, align 4
  tail call void @kfree(ptr noundef %5) #10
  %ecc_buf = getelementptr inbounds %struct.bch_control, ptr %bch, i32 0, i32 8
  %6 = ptrtoint ptr %ecc_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ecc_buf, align 4
  tail call void @kfree(ptr noundef %7) #10
  %ecc_buf2 = getelementptr inbounds %struct.bch_control, ptr %bch, i32 0, i32 9
  %8 = ptrtoint ptr %ecc_buf2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ecc_buf2, align 4
  tail call void @kfree(ptr noundef %9) #10
  %xi_tab = getelementptr inbounds %struct.bch_control, ptr %bch, i32 0, i32 10
  %10 = ptrtoint ptr %xi_tab to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xi_tab, align 4
  tail call void @kfree(ptr noundef %11) #10
  %syn = getelementptr inbounds %struct.bch_control, ptr %bch, i32 0, i32 11
  %12 = ptrtoint ptr %syn to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %syn, align 4
  tail call void @kfree(ptr noundef %13) #10
  %cache = getelementptr inbounds %struct.bch_control, ptr %bch, i32 0, i32 12
  %14 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cache, align 4
  tail call void @kfree(ptr noundef %15) #10
  %elp = getelementptr inbounds %struct.bch_control, ptr %bch, i32 0, i32 13
  %16 = ptrtoint ptr %elp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %elp, align 4
  tail call void @kfree(ptr noundef %17) #10
  %arrayidx = getelementptr %struct.bch_control, ptr %bch, i32 0, i32 14, i32 0
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %19) #10
  %arrayidx.1 = getelementptr %struct.bch_control, ptr %bch, i32 0, i32 14, i32 1
  %20 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.1, align 4
  tail call void @kfree(ptr noundef %21) #10
  %arrayidx.2 = getelementptr %struct.bch_control, ptr %bch, i32 0, i32 14, i32 2
  %22 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.2, align 4
  tail call void @kfree(ptr noundef %23) #10
  %arrayidx.3 = getelementptr %struct.bch_control, ptr %bch, i32 0, i32 14, i32 3
  %24 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.3, align 4
  tail call void @kfree(ptr noundef %25) #10
  tail call void @kfree(ptr noundef nonnull %bch) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @find_affine4_roots(ptr nocapture noundef readonly %bch, i32 noundef %a, i32 noundef %b, i32 noundef %c, ptr nocapture noundef writeonly %roots) unnamed_addr #3 align 64 {
entry:
  %param.i = alloca [15 x i32], align 4
  %rows = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %bch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bch, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %rows) #10
  %2 = call ptr @memset(ptr %rows, i32 0, i32 64)
  %a_log_tab.i = getelementptr inbounds %struct.bch_control, ptr %bch, i32 0, i32 6
  %3 = ptrtoint ptr %a_log_tab.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %a_log_tab.i, align 4
  %arrayidx.i = getelementptr i16, ptr %4, i32 %b
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx.i, align 2
  %arrayidx.i83 = getelementptr i16, ptr %4, i32 %a
  %7 = ptrtoint ptr %arrayidx.i83 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx.i83, align 2
  %9 = ptrtoint ptr %rows to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %c, ptr %rows, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp95 = icmp sgt i32 %1, 0
  br i1 %cmp95, label %for.body.lr.ph, label %entry.for.cond21.preheader_crit_edge

entry.for.cond21.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond21.preheader

for.body.lr.ph:                                   ; preds = %entry
  %conv.i84 = zext i16 %8 to i32
  %conv.i = zext i16 %6 to i32
  %a_pow_tab = getelementptr inbounds %struct.bch_control, ptr %bch, i32 0, i32 5
  %10 = ptrtoint ptr %a_pow_tab to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %a_pow_tab, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %a)
  %tobool.not = icmp eq i32 %a, 0
  %n1.i = getelementptr inbounds %struct.bch_control, ptr %bch, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %b)
  %tobool8.not = icmp eq i32 %b, 0
  br label %for.body

for.cond21.preheader:                             ; preds = %cond.end15.for.cond21.preheader_crit_edge, %entry.for.cond21.preheader_crit_edge
  %12 = ptrtoint ptr %rows to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rows, align 4
  %shr = lshr i32 %13, 8
  %arrayidx31 = getelementptr inbounds [16 x i32], ptr %rows, i32 0, i32 8
  %14 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx31, align 4
  %xor32 = xor i32 %shr, %15
  %and = and i32 %xor32, 255
  %shl = shl nuw nsw i32 %and, 8
  %xor34 = xor i32 %shl, %13
  %xor37 = xor i32 %and, %15
  store i32 %xor37, ptr %arrayidx31, align 4
  %arrayidx29.1 = getelementptr inbounds [16 x i32], ptr %rows, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx29.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx29.1, align 4
  %shr.1107 = lshr i32 %17, 8
  %arrayidx31.1108 = getelementptr inbounds [16 x i32], ptr %rows, i32 0, i32 9
  %18 = ptrtoint ptr %arrayidx31.1108 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx31.1108, align 4
  %xor32.1109 = xor i32 %shr.1107, %19
  %and.1110 = and i32 %xor32.1109, 255
  %shl.1111 = shl nuw nsw i32 %and.1110, 8
  %xor34.1112 = xor i32 %shl.1111, %17
  %xor37.1113 = xor i32 %and.1110, %19
  store i32 %xor37.1113, ptr %arrayidx31.1108, align 4
  %arrayidx29.2 = getelementptr inbounds [16 x i32], ptr %rows, i32 0, i32 2
  %20 = ptrtoint ptr %arrayidx29.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx29.2, align 4
  %shr.2115 = lshr i32 %21, 8
  %arrayidx31.2116 = getelementptr inbounds [16 x i32], ptr %rows, i32 0, i32 10
  %22 = ptrtoint ptr %arrayidx31.2116 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx31.2116, align 4
  %xor32.2117 = xor i32 %shr.2115, %23
  %and.2118 = and i32 %xor32.2117, 255
  %shl.2119 = shl nuw nsw i32 %and.2118, 8
  %xor34.2120 = xor i32 %shl.2119, %21
  %xor37.2121 = xor i32 %and.2118, %23
  store i32 %xor37.2121, ptr %arrayidx31.2116, align 4
  %arrayidx29.3 = getelementptr inbounds [16 x i32], ptr %rows, i32 0, i32 3
  %24 = ptrtoint ptr %arrayidx29.3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx29.3, align 4
  %shr.3123 = lshr i32 %25, 8
  %arrayidx31.3124 = getelementptr inbounds [16 x i32], ptr %rows, i32 0, i32 11
  %26 = ptrtoint ptr %arrayidx31.3124 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx31.3124, align 4
  %xor32.3125 = xor i32 %shr.3123, %27
  %and.3126 = and i32 %xor32.3125, 255
  %shl.3127 = shl nuw nsw i32 %and.3126, 8
  %xor34.3128 = xor i32 %shl.3127, %25
  %xor37.3129 = xor i32 %and.3126, %27
  store i32 %xor37.3129, ptr %arrayidx31.3124, align 4
  %arrayidx29.4 = getelementptr inbounds [16 x i32], ptr %rows, i32 0, i32 4
  %28 = ptrtoint ptr %arrayidx29.4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx29.4, align 4
  %shr.4 = lshr i32 %29, 8
  %arrayidx31.4 = getelementptr inbounds [16 x i32], ptr %rows, i32 0, i32 12
  %30 = ptrtoint ptr %arrayidx31.4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx31.4, align 4
  %xor32.4 = xor i32 %shr.4, %31
  %and.4 = and i32 %xor32.4, 255
  %shl.4 = shl nuw nsw i32 %and.4, 8
  %xor34.4 = xor i32 %shl.4, %29
  %xor37.4 = xor i32 %and.4, %31
  %arrayidx29.5 = getelementptr inbounds [16 x i32], ptr %rows, i32 0, i32 5
  %32 = ptrtoint ptr %arrayidx29.5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx29.5, align 4
  %shr.5 = lshr i32 %33, 8
  %arrayidx31.5 = getelementptr inbounds [16 x i32], ptr %rows, i32 0, i32 13
  %34 = ptrtoint ptr %arrayidx31.5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx31.5, align 4
  %xor32.5 = xor i32 %shr.5, %35
  %and.5 = and i32 %xor32.5, 255
  %shl.5 = shl nuw nsw i32 %and.5, 8
  %xor34.5 = xor i32 %shl.5, %33
  %xor37.5 = xor i32 %and.5, %35
  %arrayidx29.6 = getelementptr inbounds [16 x i32], ptr %rows, i32 0, i32 6
  %36 = ptrtoint ptr %arrayidx29.6 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx29.6, align 4
  %shr.6 = lshr i32 %37, 8
  %arrayidx31.6 = getelementptr inbounds [16 x i32], ptr %rows, i32 0, i32 14
  %38 = ptrtoint ptr %arrayidx31.6 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx31.6, align 4
  %xor32.6 = xor i32 %shr.6, %39
  %and.6 = and i32 %xor32.6, 255
  %shl.6 = shl nuw nsw i32 %and.6, 8
  %xor34.6 = xor i32 %shl.6, %37
  %xor37.6 = xor i32 %and.6, %39
  %arrayidx29.7 = getelementptr inbounds [16 x i32], ptr %rows, i32 0, i32 7
  %40 = ptrtoint ptr %arrayidx29.7 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx29.7, align 4
  %shr.7 = lshr i32 %41, 8
  %arrayidx31.7 = getelementptr inbounds [16 x i32], ptr %rows, i32 0, i32 15
  %42 = ptrtoint ptr %arrayidx31.7 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx31.7, align 4
  %xor32.7 = xor i32 %shr.7, %43
  %and.7 = and i32 %xor32.7, 255
  %shl.7 = shl nuw nsw i32 %and.7, 8
  %xor34.7 = xor i32 %shl.7, %41
  %xor37.7 = xor i32 %and.7, %43
  %shr.1 = lshr i32 %xor34, 4
  %xor32.1 = xor i32 %shr.1, %xor34.4
  %and.1 = and i32 %xor32.1, 3855
  %shl.1 = shl nuw nsw i32 %and.1, 4
  %xor34.1 = xor i32 %shl.1, %xor34
  %xor37.1 = xor i32 %and.1, %xor34.4
  %shr.1.1 = lshr i32 %xor34.1112, 4
  %xor32.1.1 = xor i32 %shr.1.1, %xor34.5
  %and.1.1 = and i32 %xor32.1.1, 3855
  %shl.1.1 = shl nuw nsw i32 %and.1.1, 4
  %xor34.1.1 = xor i32 %shl.1.1, %xor34.1112
  %xor37.1.1 = xor i32 %and.1.1, %xor34.5
  %shr.1.2 = lshr i32 %xor34.2120, 4
  %xor32.1.2 = xor i32 %shr.1.2, %xor34.6
  %and.1.2 = and i32 %xor32.1.2, 3855
  %shl.1.2 = shl nuw nsw i32 %and.1.2, 4
  %xor34.1.2 = xor i32 %shl.1.2, %xor34.2120
  %xor37.1.2 = xor i32 %and.1.2, %xor34.6
  %shr.1.3 = lshr i32 %xor34.3128, 4
  %xor32.1.3 = xor i32 %shr.1.3, %xor34.7
  %and.1.3 = and i32 %xor32.1.3, 3855
  %shl.1.3 = shl nuw nsw i32 %and.1.3, 4
  %xor34.1.3 = xor i32 %shl.1.3, %xor34.3128
  %xor37.1.3 = xor i32 %and.1.3, %xor34.7
  %44 = load i32, ptr %arrayidx31, align 4
  %shr.1.4 = lshr i32 %44, 4
  %xor32.1.4 = xor i32 %shr.1.4, %xor37.4
  %and.1.4 = and i32 %xor32.1.4, 3855
  %shl.1.4 = shl nuw nsw i32 %and.1.4, 4
  %xor34.1.4 = xor i32 %shl.1.4, %44
  %xor37.1.4 = xor i32 %and.1.4, %xor37.4
  %45 = load i32, ptr %arrayidx31.1108, align 4
  %shr.1.5 = lshr i32 %45, 4
  %xor32.1.5 = xor i32 %shr.1.5, %xor37.5
  %and.1.5 = and i32 %xor32.1.5, 3855
  %shl.1.5 = shl nuw nsw i32 %and.1.5, 4
  %xor34.1.5 = xor i32 %shl.1.5, %45
  %xor37.1.5 = xor i32 %and.1.5, %xor37.5
  %46 = load i32, ptr %arrayidx31.2116, align 4
  %shr.1.6 = lshr i32 %46, 4
  %xor32.1.6 = xor i32 %shr.1.6, %xor37.6
  %and.1.6 = and i32 %xor32.1.6, 3855
  %shl.1.6 = shl nuw nsw i32 %and.1.6, 4
  %xor34.1.6 = xor i32 %shl.1.6, %46
  %xor37.1.6 = xor i32 %and.1.6, %xor37.6
  %47 = load i32, ptr %arrayidx31.3124, align 4
  %shr.1.7 = lshr i32 %47, 4
  %xor32.1.7 = xor i32 %shr.1.7, %xor37.7
  %and.1.7 = and i32 %xor32.1.7, 3855
  %shl.1.7 = shl nuw nsw i32 %and.1.7, 4
  %xor34.1.7 = xor i32 %shl.1.7, %47
  %xor37.1.7 = xor i32 %and.1.7, %xor37.7
  %shr.2 = lshr i32 %xor34.1, 2
  %xor32.2 = xor i32 %shr.2, %xor34.1.2
  %and.2 = and i32 %xor32.2, 13107
  %shl.2 = shl nuw nsw i32 %and.2, 2
  %xor34.2 = xor i32 %shl.2, %xor34.1
  %xor37.2 = xor i32 %and.2, %xor34.1.2
  %shr.2.1 = lshr i32 %xor34.1.1, 2
  %xor32.2.1 = xor i32 %shr.2.1, %xor34.1.3
  %and.2.1 = and i32 %xor32.2.1, 13107
  %shl.2.1 = shl nuw nsw i32 %and.2.1, 2
  %xor34.2.1 = xor i32 %shl.2.1, %xor34.1.1
  %xor37.2.1 = xor i32 %and.2.1, %xor34.1.3
  %shr.2.2 = lshr i32 %xor37.1, 2
  %xor32.2.2 = xor i32 %shr.2.2, %xor37.1.2
  %and.2.2 = and i32 %xor32.2.2, 13107
  %shl.2.2 = shl nuw nsw i32 %and.2.2, 2
  %xor34.2.2 = xor i32 %shl.2.2, %xor37.1
  %xor37.2.2 = xor i32 %and.2.2, %xor37.1.2
  %shr.2.3 = lshr i32 %xor37.1.1, 2
  %xor32.2.3 = xor i32 %shr.2.3, %xor37.1.3
  %and.2.3 = and i32 %xor32.2.3, 13107
  %shl.2.3 = shl nuw nsw i32 %and.2.3, 2
  %xor34.2.3 = xor i32 %shl.2.3, %xor37.1.1
  %xor37.2.3 = xor i32 %and.2.3, %xor37.1.3
  %shr.2.4 = lshr i32 %xor34.1.4, 2
  %xor32.2.4 = xor i32 %shr.2.4, %xor34.1.6
  %and.2.4 = and i32 %xor32.2.4, 13107
  %shl.2.4 = shl nuw nsw i32 %and.2.4, 2
  %xor34.2.4 = xor i32 %shl.2.4, %xor34.1.4
  %xor37.2.4 = xor i32 %and.2.4, %xor34.1.6
  %shr.2.5 = lshr i32 %xor34.1.5, 2
  %xor32.2.5 = xor i32 %shr.2.5, %xor34.1.7
  %and.2.5 = and i32 %xor32.2.5, 13107
  %shl.2.5 = shl nuw nsw i32 %and.2.5, 2
  %xor34.2.5 = xor i32 %shl.2.5, %xor34.1.5
  %xor37.2.5 = xor i32 %and.2.5, %xor34.1.7
  %shr.2.6 = lshr i32 %xor37.1.4, 2
  %xor32.2.6 = xor i32 %shr.2.6, %xor37.1.6
  %and.2.6 = and i32 %xor32.2.6, 13107
  %shl.2.6 = shl nuw nsw i32 %and.2.6, 2
  %xor34.2.6 = xor i32 %shl.2.6, %xor37.1.4
  %xor37.2.6 = xor i32 %and.2.6, %xor37.1.6
  %shr.2.7 = lshr i32 %xor37.1.5, 2
  %xor32.2.7 = xor i32 %shr.2.7, %xor37.1.7
  %and.2.7 = and i32 %xor32.2.7, 13107
  %shl.2.7 = shl nuw nsw i32 %and.2.7, 2
  %xor34.2.7 = xor i32 %shl.2.7, %xor37.1.5
  %xor37.2.7 = xor i32 %and.2.7, %xor37.1.7
  %shr.3 = lshr i32 %xor34.2, 1
  %xor32.3 = xor i32 %shr.3, %xor34.2.1
  %and.3 = and i32 %xor32.3, 21845
  %shl.3 = shl nuw nsw i32 %and.3, 1
  %xor34.3 = xor i32 %shl.3, %xor34.2
  store i32 %xor34.3, ptr %rows, align 4
  %xor37.3 = xor i32 %and.3, %xor34.2.1
  store i32 %xor37.3, ptr %arrayidx29.1, align 4
  %shr.3.1 = lshr i32 %xor37.2, 1
  %xor32.3.1 = xor i32 %shr.3.1, %xor37.2.1
  %and.3.1 = and i32 %xor32.3.1, 21845
  %shl.3.1 = shl nuw nsw i32 %and.3.1, 1
  %xor34.3.1 = xor i32 %shl.3.1, %xor37.2
  store i32 %xor34.3.1, ptr %arrayidx29.2, align 4
  %xor37.3.1 = xor i32 %and.3.1, %xor37.2.1
  store i32 %xor37.3.1, ptr %arrayidx29.3, align 4
  %shr.3.2 = lshr i32 %xor34.2.2, 1
  %xor32.3.2 = xor i32 %shr.3.2, %xor34.2.3
  %and.3.2 = and i32 %xor32.3.2, 21845
  %shl.3.2 = shl nuw nsw i32 %and.3.2, 1
  %xor34.3.2 = xor i32 %shl.3.2, %xor34.2.2
  store i32 %xor34.3.2, ptr %arrayidx29.4, align 4
  %xor37.3.2 = xor i32 %and.3.2, %xor34.2.3
  store i32 %xor37.3.2, ptr %arrayidx29.5, align 4
  %shr.3.3 = lshr i32 %xor37.2.2, 1
  %xor32.3.3 = xor i32 %shr.3.3, %xor37.2.3
  %and.3.3 = and i32 %xor32.3.3, 21845
  %shl.3.3 = shl nuw nsw i32 %and.3.3, 1
  %xor34.3.3 = xor i32 %shl.3.3, %xor37.2.2
  store i32 %xor34.3.3, ptr %arrayidx29.6, align 4
  %xor37.3.3 = xor i32 %and.3.3, %xor37.2.3
  store i32 %xor37.3.3, ptr %arrayidx29.7, align 4
  %shr.3.4 = lshr i32 %xor34.2.4, 1
  %xor32.3.4 = xor i32 %shr.3.4, %xor34.2.5
  %and.3.4 = and i32 %xor32.3.4, 21845
  %shl.3.4 = shl nuw nsw i32 %and.3.4, 1
  %xor34.3.4 = xor i32 %shl.3.4, %xor34.2.4
  store i32 %xor34.3.4, ptr %arrayidx31, align 4
  %xor37.3.4 = xor i32 %and.3.4, %xor34.2.5
  store i32 %xor37.3.4, ptr %arrayidx31.1108, align 4
  %shr.3.5 = lshr i32 %xor37.2.4, 1
  %xor32.3.5 = xor i32 %shr.3.5, %xor37.2.5
  %and.3.5 = and i32 %xor32.3.5, 21845
  %shl.3.5 = shl nuw nsw i32 %and.3.5, 1
  %xor34.3.5 = xor i32 %shl.3.5, %xor37.2.4
  store i32 %xor34.3.5, ptr %arrayidx31.2116, align 4
  %xor37.3.5 = xor i32 %and.3.5, %xor37.2.5
  store i32 %xor37.3.5, ptr %arrayidx31.3124, align 4
  %shr.3.6 = lshr i32 %xor34.2.6, 1
  %xor32.3.6 = xor i32 %shr.3.6, %xor34.2.7
  %and.3.6 = and i32 %xor32.3.6, 21845
  %shl.3.6 = shl nuw nsw i32 %and.3.6, 1
  %xor34.3.6 = xor i32 %shl.3.6, %xor34.2.6
  store i32 %xor34.3.6, ptr %arrayidx31.4, align 4
  %xor37.3.6 = xor i32 %and.3.6, %xor34.2.7
  store i32 %xor37.3.6, ptr %arrayidx31.5, align 4
  %shr.3.7 = lshr i32 %xor37.2.6, 1
  %xor32.3.7 = xor i32 %shr.3.7, %xor37.2.7
  %and.3.7 = and i32 %xor32.3.7, 21845
  %shl.3.7 = shl nuw nsw i32 %and.3.7, 1
  %xor34.3.7 = xor i32 %shl.3.7, %xor37.2.6
  store i32 %xor34.3.7, ptr %arrayidx31.6, align 4
  %xor37.3.7 = xor i32 %and.3.7, %xor37.2.7
  store i32 %xor37.3.7, ptr %arrayidx31.7, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %param.i) #10
  %48 = call ptr @memset(ptr %param.i, i32 255, i32 60)
  br i1 %cmp95, label %for.body.preheader.i, label %for.cond21.preheader.solve_linear_system.exit_crit_edge

for.cond21.preheader.solve_linear_system.exit_crit_edge: ; preds = %for.cond21.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %solve_linear_system.exit

for.body:                                         ; preds = %cond.end15.for.body_crit_edge, %for.body.lr.ph
  %k.099 = phi i32 [ %conv.i84, %for.body.lr.ph ], [ %add19, %cond.end15.for.body_crit_edge ]
  %j.097 = phi i32 [ %conv.i, %for.body.lr.ph ], [ %inc, %cond.end15.for.body_crit_edge ]
  %i.096 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %cond.end15.for.body_crit_edge ]
  %mul = shl i32 %i.096, 2
  %arrayidx3 = getelementptr i16, ptr %11, i32 %mul
  %49 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %arrayidx3, align 2
  %conv = zext i16 %50 to i32
  br i1 %tobool.not, label %for.body.cond.end_crit_edge, label %cond.true

for.body.cond.end_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %n1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %n1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %k.099)
  %cmp.i = icmp ugt i32 %52, %k.099
  %sub.i = select i1 %cmp.i, i32 0, i32 %52
  %cond.i = sub i32 %k.099, %sub.i
  %arrayidx6 = getelementptr i16, ptr %11, i32 %cond.i
  %53 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %arrayidx6, align 2
  %conv7 = zext i16 %54 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %for.body.cond.end_crit_edge
  %cond = phi i32 [ %conv7, %cond.true ], [ 0, %for.body.cond.end_crit_edge ]
  %xor = xor i32 %cond, %conv
  br i1 %tobool8.not, label %cond.end.cond.end15_crit_edge, label %cond.true9

cond.end.cond.end15_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end15

cond.true9:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %n1.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %n1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %j.097)
  %cmp.i86 = icmp ugt i32 %56, %j.097
  %sub.i87 = select i1 %cmp.i86, i32 0, i32 %56
  %cond.i88 = sub i32 %j.097, %sub.i87
  %arrayidx12 = getelementptr i16, ptr %11, i32 %cond.i88
  %57 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %arrayidx12, align 2
  %conv13 = zext i16 %58 to i32
  br label %cond.end15

cond.end15:                                       ; preds = %cond.true9, %cond.end.cond.end15_crit_edge
  %cond16 = phi i32 [ %conv13, %cond.true9 ], [ 0, %cond.end.cond.end15_crit_edge ]
  %xor17 = xor i32 %xor, %cond16
  %add = add nuw nsw i32 %i.096, 1
  %arrayidx18 = getelementptr [16 x i32], ptr %rows, i32 0, i32 %add
  %59 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %xor17, ptr %arrayidx18, align 4
  %inc = add nuw i32 %j.097, 1
  %add19 = add i32 %k.099, 2
  %exitcond.not = icmp eq i32 %add, %1
  br i1 %exitcond.not, label %cond.end15.for.cond21.preheader_crit_edge, label %cond.end15.for.body_crit_edge

cond.end15.for.body_crit_edge:                    ; preds = %cond.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cond.end15.for.cond21.preheader_crit_edge:        ; preds = %cond.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond21.preheader

for.body.preheader.i:                             ; preds = %for.cond21.preheader
  %shl.i = shl nuw i32 1, %1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end29.i.for.body.i_crit_edge, %for.body.preheader.i
  %k.015.i = phi i32 [ %k.1.i, %if.end29.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %c.014.i = phi i32 [ %inc31.i, %if.end29.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %mask.013.i = phi i32 [ %shr.i, %if.end29.i.for.body.i_crit_edge ], [ %shl.i, %for.body.preheader.i ]
  %sub.i89 = sub i32 %c.014.i, %k.015.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i89, i32 %1)
  %cmp38.i = icmp slt i32 %sub.i89, %1
  br i1 %cmp38.i, label %for.body.i.for.body4.i_crit_edge, label %for.body.i.if.else.i_crit_edge

for.body.i.if.else.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

for.body.i.for.body4.i_crit_edge:                 ; preds = %for.body.i
  br label %for.body4.i

for.body4.i:                                      ; preds = %for.inc.i.for.body4.i_crit_edge, %for.body.i.for.body4.i_crit_edge
  %r.09.i = phi i32 [ %inc.i, %for.inc.i.for.body4.i_crit_edge ], [ %sub.i89, %for.body.i.for.body4.i_crit_edge ]
  %arrayidx.i90 = getelementptr i32, ptr %rows, i32 %r.09.i
  %60 = ptrtoint ptr %arrayidx.i90 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.i90, align 4
  %and.i = and i32 %61, %mask.013.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.inc.i, label %if.then.i

if.then.i:                                        ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_cmp4(i32 %r.09.i, i32 %sub.i89)
  %cmp5.not.i = icmp eq i32 %r.09.i, %sub.i89
  br i1 %cmp5.not.i, label %if.then.i.for.end.i_crit_edge, label %if.then6.i

if.then.i.for.end.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i90.le = getelementptr i32, ptr %rows, i32 %r.09.i
  %arrayidx8.i = getelementptr i32, ptr %rows, i32 %sub.i89
  %62 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx8.i, align 4
  %64 = ptrtoint ptr %arrayidx.i90.le to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %arrayidx.i90.le, align 4
  store i32 %61, ptr %arrayidx8.i, align 4
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body4.i
  %inc.i = add nsw i32 %r.09.i, 1
  %cmp3.i = icmp slt i32 %inc.i, %1
  br i1 %cmp3.i, label %for.inc.i.for.body4.i_crit_edge, label %for.inc.i.if.else.i_crit_edge

for.inc.i.if.else.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

for.inc.i.for.body4.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body4.i

for.end.i:                                        ; preds = %if.then6.i, %if.then.i.for.end.i_crit_edge
  %r.0936.i = phi i32 [ %sub.i89, %if.then.i.for.end.i_crit_edge ], [ %r.09.i, %if.then6.i ]
  %add.i = add nsw i32 %r.0936.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %tobool12.not.i = icmp eq i32 %add.i, 0
  br i1 %tobool12.not.i, label %for.end.i.if.else.i_crit_edge, label %if.then13.i

for.end.i.if.else.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.then13.i:                                      ; preds = %for.end.i
  %arrayidx14.i = getelementptr i32, ptr %rows, i32 %sub.i89
  %65 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx14.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %1)
  %cmp1610.i = icmp slt i32 %add.i, %1
  br i1 %cmp1610.i, label %if.then13.i.for.body17.i_crit_edge, label %if.then13.i.if.end29.i_crit_edge

if.then13.i.if.end29.i_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.i

if.then13.i.for.body17.i_crit_edge:               ; preds = %if.then13.i
  br label %for.body17.i

for.body17.i:                                     ; preds = %for.inc24.i.for.body17.i_crit_edge, %if.then13.i.for.body17.i_crit_edge
  %r.111.i = phi i32 [ %inc25.i, %for.inc24.i.for.body17.i_crit_edge ], [ %add.i, %if.then13.i.for.body17.i_crit_edge ]
  %arrayidx18.i = getelementptr i32, ptr %rows, i32 %r.111.i
  %67 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx18.i, align 4
  %and19.i = and i32 %68, %mask.013.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %for.body17.i.for.inc24.i_crit_edge, label %if.then21.i

for.body17.i.for.inc24.i_crit_edge:               ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc24.i

if.then21.i:                                      ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #9
  %xor.i = xor i32 %68, %66
  %69 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %xor.i, ptr %arrayidx18.i, align 4
  br label %for.inc24.i

for.inc24.i:                                      ; preds = %if.then21.i, %for.body17.i.for.inc24.i_crit_edge
  %inc25.i = add nsw i32 %r.111.i, 1
  %exitcond.not.i = icmp eq i32 %inc25.i, %1
  br i1 %exitcond.not.i, label %for.inc24.i.if.end29.i_crit_edge, label %for.inc24.i.for.body17.i_crit_edge

for.inc24.i.for.body17.i_crit_edge:               ; preds = %for.inc24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body17.i

for.inc24.i.if.end29.i_crit_edge:                 ; preds = %for.inc24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.i

if.else.i:                                        ; preds = %for.end.i.if.else.i_crit_edge, %for.inc.i.if.else.i_crit_edge, %for.body.i.if.else.i_crit_edge
  %inc27.i = add i32 %k.015.i, 1
  %arrayidx28.i = getelementptr [15 x i32], ptr %param.i, i32 0, i32 %k.015.i
  %70 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %c.014.i, ptr %arrayidx28.i, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.else.i, %for.inc24.i.if.end29.i_crit_edge, %if.then13.i.if.end29.i_crit_edge
  %k.1.i = phi i32 [ %inc27.i, %if.else.i ], [ %k.015.i, %if.then13.i.if.end29.i_crit_edge ], [ %k.015.i, %for.inc24.i.if.end29.i_crit_edge ]
  %shr.i = lshr i32 %mask.013.i, 1
  %inc31.i = add nuw nsw i32 %c.014.i, 1
  %exitcond37.not.i = icmp eq i32 %inc31.i, %1
  br i1 %exitcond37.not.i, label %for.end32.i, label %if.end29.i.for.body.i_crit_edge

if.end29.i.for.body.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end32.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %k.1.i)
  %cmp33.i = icmp sgt i32 %k.1.i, 0
  br i1 %cmp33.i, label %if.then34.i, label %for.end32.i.solve_linear_system.exit_crit_edge

for.end32.i.solve_linear_system.exit_crit_edge:   ; preds = %for.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %solve_linear_system.exit

if.then34.i:                                      ; preds = %for.end32.i
  %sub35.i = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub35.i)
  %cmp3718.i = icmp sgt i32 %sub35.i, -1
  br i1 %cmp3718.i, label %for.body38.lr.ph.i, label %if.then34.i.if.end59.i_crit_edge

if.then34.i.if.end59.i_crit_edge:                 ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59.i

for.body38.lr.ph.i:                               ; preds = %if.then34.i
  %sub40.i = sub nsw i32 %sub35.i, %k.1.i
  br label %for.body38.i

for.body38.i:                                     ; preds = %cond.end.i.for.body38.i_crit_edge, %for.body38.lr.ph.i
  %p.022.i = phi i32 [ %k.1.i, %for.body38.lr.ph.i ], [ %p.1.i, %cond.end.i.for.body38.i_crit_edge ]
  %r.219.i = phi i32 [ %sub35.i, %for.body38.lr.ph.i ], [ %dec57.i, %cond.end.i.for.body38.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %r.219.i, i32 %sub40.i)
  %cmp41.i = icmp sgt i32 %r.219.i, %sub40.i
  br i1 %cmp41.i, label %land.lhs.true.i, label %for.body38.i.if.end45.i_crit_edge

for.body38.i.if.end45.i_crit_edge:                ; preds = %for.body38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45.i

land.lhs.true.i:                                  ; preds = %for.body38.i
  %arrayidx42.i = getelementptr i32, ptr %rows, i32 %r.219.i
  %71 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx42.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool43.not.i = icmp eq i32 %72, 0
  br i1 %tobool43.not.i, label %land.lhs.true.i.if.end45.i_crit_edge, label %land.lhs.true.i.solve_linear_system.exit_crit_edge

land.lhs.true.i.solve_linear_system.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %solve_linear_system.exit

land.lhs.true.i.if.end45.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45.i

if.end45.i:                                       ; preds = %land.lhs.true.i.if.end45.i_crit_edge, %for.body38.i.if.end45.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %p.022.i)
  %tobool46.not.i = icmp eq i32 %p.022.i, 0
  br i1 %tobool46.not.i, label %if.end45.i.cond.false.i_crit_edge, label %land.lhs.true47.i

if.end45.i.cond.false.i_crit_edge:                ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false.i

land.lhs.true47.i:                                ; preds = %if.end45.i
  %sub48.i = add i32 %p.022.i, -1
  %arrayidx49.i = getelementptr [15 x i32], ptr %param.i, i32 0, i32 %sub48.i
  %73 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx49.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %r.219.i, i32 %74)
  %cmp50.i = icmp eq i32 %r.219.i, %74
  br i1 %cmp50.i, label %cond.true.i, label %land.lhs.true47.i.cond.false.i_crit_edge

land.lhs.true47.i.cond.false.i_crit_edge:         ; preds = %land.lhs.true47.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false.i

cond.true.i:                                      ; preds = %land.lhs.true47.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub51.i = sub i32 %1, %r.219.i
  %shl52.i = shl nuw i32 1, %sub51.i
  br label %cond.end.i

cond.false.i:                                     ; preds = %land.lhs.true47.i.cond.false.i_crit_edge, %if.end45.i.cond.false.i_crit_edge
  %sub53.i = sub i32 %r.219.i, %p.022.i
  %arrayidx54.i = getelementptr i32, ptr %rows, i32 %sub53.i
  %75 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx54.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %p.1.i = phi i32 [ %sub48.i, %cond.true.i ], [ %p.022.i, %cond.false.i ]
  %cond.i91 = phi i32 [ %shl52.i, %cond.true.i ], [ %76, %cond.false.i ]
  %arrayidx55.i = getelementptr i32, ptr %rows, i32 %r.219.i
  %77 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %cond.i91, ptr %arrayidx55.i, align 4
  %dec57.i = add nsw i32 %r.219.i, -1
  %cmp37.i = icmp sgt i32 %r.219.i, 0
  br i1 %cmp37.i, label %cond.end.i.for.body38.i_crit_edge, label %cond.end.i.if.end59.i_crit_edge

cond.end.i.if.end59.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59.i

cond.end.i.for.body38.i_crit_edge:                ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body38.i

if.end59.i:                                       ; preds = %cond.end.i.if.end59.i_crit_edge, %if.then34.i.if.end59.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %k.1.i)
  %cmp61.not.i = icmp eq i32 %k.1.i, 2
  br i1 %cmp61.not.i, label %for.body69.i.preheader, label %if.end59.i.solve_linear_system.exit_crit_edge

if.end59.i.solve_linear_system.exit_crit_edge:    ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %solve_linear_system.exit

for.body69.i.preheader:                           ; preds = %if.end59.i
  %78 = ptrtoint ptr %param.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %param.i, align 4
  %arrayidx71.i = getelementptr i32, ptr %rows, i32 %79
  %80 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx71.i, align 4
  %and72.i = and i32 %81, -2
  store i32 %and72.i, ptr %arrayidx71.i, align 4
  %arrayidx70.i.1 = getelementptr inbounds [15 x i32], ptr %param.i, i32 0, i32 1
  %82 = ptrtoint ptr %arrayidx70.i.1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx70.i.1, align 4
  %arrayidx71.i.1 = getelementptr i32, ptr %rows, i32 %83
  %84 = ptrtoint ptr %arrayidx71.i.1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx71.i.1, align 4
  %and72.i.1 = and i32 %85, -2
  store i32 %and72.i.1, ptr %arrayidx71.i.1, align 4
  br i1 %cmp3718.i, label %for.body69.i.preheader.for.body83.i_crit_edge, label %for.body69.i.preheader.for.body69.preheader.1.i_crit_edge

for.body69.i.preheader.for.body69.preheader.1.i_crit_edge: ; preds = %for.body69.i.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body69.preheader.1.i

for.body69.i.preheader.for.body83.i_crit_edge:    ; preds = %for.body69.i.preheader
  br label %for.body83.i

for.body83.i:                                     ; preds = %for.body83.i.for.body83.i_crit_edge, %for.body69.i.preheader.for.body83.i_crit_edge
  %r.329.i = phi i32 [ %r.3.i, %for.body83.i.for.body83.i_crit_edge ], [ %sub35.i, %for.body69.i.preheader.for.body83.i_crit_edge ]
  %tmp.028.i = phi i32 [ %or89.i, %for.body83.i.for.body83.i_crit_edge ], [ 0, %for.body69.i.preheader.for.body83.i_crit_edge ]
  %arrayidx84.i = getelementptr i32, ptr %rows, i32 %r.329.i
  %86 = ptrtoint ptr %arrayidx84.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx84.i, align 4
  %or85.i = or i32 %tmp.028.i, 1
  %and86.i = and i32 %87, %or85.i
  %shr.i.i = lshr i32 %and86.i, 1
  %xor.i.i = xor i32 %shr.i.i, %and86.i
  %shr1.i.i = lshr i32 %xor.i.i, 2
  %xor2.i.i = xor i32 %shr1.i.i, %xor.i.i
  %and.i.i = and i32 %xor2.i.i, 286331153
  %mul.i.i = mul i32 %and.i.i, 286331153
  %shr3.i.i = lshr i32 %mul.i.i, 28
  %and4.i.i = and i32 %shr3.i.i, 1
  %sub87.i = sub i32 %1, %r.329.i
  %shl88.i = shl nuw i32 %and4.i.i, %sub87.i
  %or89.i = or i32 %shl88.i, %tmp.028.i
  %r.3.i = add nsw i32 %r.329.i, -1
  %cmp82.i.not = icmp eq i32 %r.329.i, 0
  br i1 %cmp82.i.not, label %for.end92.loopexit.i, label %for.body83.i.for.body83.i_crit_edge

for.body83.i.for.body83.i_crit_edge:              ; preds = %for.body83.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body83.i

for.end92.loopexit.i:                             ; preds = %for.body83.i
  call void @__sanitizer_cov_trace_pc() #9
  %phi.bo.i = lshr i32 %or89.i, 1
  br label %for.body69.preheader.1.i

for.body69.preheader.1.i:                         ; preds = %for.end92.loopexit.i, %for.body69.i.preheader.for.body69.preheader.1.i_crit_edge
  %tmp.0.lcssa.i = phi i32 [ 0, %for.body69.i.preheader.for.body69.preheader.1.i_crit_edge ], [ %phi.bo.i, %for.end92.loopexit.i ]
  %88 = ptrtoint ptr %roots to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %tmp.0.lcssa.i, ptr %roots, align 4
  %89 = ptrtoint ptr %param.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %param.i, align 4
  %arrayidx71.1.i = getelementptr i32, ptr %rows, i32 %90
  %91 = ptrtoint ptr %arrayidx71.1.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx71.1.i, align 4
  %or.1.i = or i32 %92, 1
  store i32 %or.1.i, ptr %arrayidx71.1.i, align 4
  %93 = ptrtoint ptr %arrayidx70.i.1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx70.i.1, align 4
  %arrayidx71.1.i.1 = getelementptr i32, ptr %rows, i32 %94
  %95 = ptrtoint ptr %arrayidx71.1.i.1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx71.1.i.1, align 4
  %and72.1.i.1 = and i32 %96, -2
  store i32 %and72.1.i.1, ptr %arrayidx71.1.i.1, align 4
  br i1 %cmp3718.i, label %for.body69.preheader.1.i.for.body83.1.i_crit_edge, label %for.body69.preheader.1.i.for.body69.preheader.2.i_crit_edge

for.body69.preheader.1.i.for.body69.preheader.2.i_crit_edge: ; preds = %for.body69.preheader.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body69.preheader.2.i

for.body69.preheader.1.i.for.body83.1.i_crit_edge: ; preds = %for.body69.preheader.1.i
  br label %for.body83.1.i

for.body83.1.i:                                   ; preds = %for.body83.1.i.for.body83.1.i_crit_edge, %for.body69.preheader.1.i.for.body83.1.i_crit_edge
  %r.329.1.i = phi i32 [ %r.3.1.i, %for.body83.1.i.for.body83.1.i_crit_edge ], [ %sub35.i, %for.body69.preheader.1.i.for.body83.1.i_crit_edge ]
  %tmp.028.1.i = phi i32 [ %or89.1.i, %for.body83.1.i.for.body83.1.i_crit_edge ], [ 0, %for.body69.preheader.1.i.for.body83.1.i_crit_edge ]
  %arrayidx84.1.i = getelementptr i32, ptr %rows, i32 %r.329.1.i
  %97 = ptrtoint ptr %arrayidx84.1.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx84.1.i, align 4
  %or85.1.i = or i32 %tmp.028.1.i, 1
  %and86.1.i = and i32 %98, %or85.1.i
  %shr.i.1.i = lshr i32 %and86.1.i, 1
  %xor.i.1.i = xor i32 %shr.i.1.i, %and86.1.i
  %shr1.i.1.i = lshr i32 %xor.i.1.i, 2
  %xor2.i.1.i = xor i32 %shr1.i.1.i, %xor.i.1.i
  %and.i.1.i = and i32 %xor2.i.1.i, 286331153
  %mul.i.1.i = mul i32 %and.i.1.i, 286331153
  %shr3.i.1.i = lshr i32 %mul.i.1.i, 28
  %and4.i.1.i = and i32 %shr3.i.1.i, 1
  %sub87.1.i = sub i32 %1, %r.329.1.i
  %shl88.1.i = shl nuw i32 %and4.i.1.i, %sub87.1.i
  %or89.1.i = or i32 %shl88.1.i, %tmp.028.1.i
  %r.3.1.i = add nsw i32 %r.329.1.i, -1
  %cmp82.1.i.not = icmp eq i32 %r.329.1.i, 0
  br i1 %cmp82.1.i.not, label %for.end92.loopexit.1.i, label %for.body83.1.i.for.body83.1.i_crit_edge

for.body83.1.i.for.body83.1.i_crit_edge:          ; preds = %for.body83.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body83.1.i

for.end92.loopexit.1.i:                           ; preds = %for.body83.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %phi.bo40.i = lshr i32 %or89.1.i, 1
  br label %for.body69.preheader.2.i

for.body69.preheader.2.i:                         ; preds = %for.end92.loopexit.1.i, %for.body69.preheader.1.i.for.body69.preheader.2.i_crit_edge
  %tmp.0.lcssa.1.i = phi i32 [ 0, %for.body69.preheader.1.i.for.body69.preheader.2.i_crit_edge ], [ %phi.bo40.i, %for.end92.loopexit.1.i ]
  %arrayidx94.1.i = getelementptr i32, ptr %roots, i32 1
  %99 = ptrtoint ptr %arrayidx94.1.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %tmp.0.lcssa.1.i, ptr %arrayidx94.1.i, align 4
  %100 = ptrtoint ptr %param.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %param.i, align 4
  %arrayidx71.2.i = getelementptr i32, ptr %rows, i32 %101
  %102 = ptrtoint ptr %arrayidx71.2.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx71.2.i, align 4
  %and72.2.i = and i32 %103, -2
  store i32 %and72.2.i, ptr %arrayidx71.2.i, align 4
  %104 = ptrtoint ptr %arrayidx70.i.1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx70.i.1, align 4
  %arrayidx71.2.i.1 = getelementptr i32, ptr %rows, i32 %105
  %106 = ptrtoint ptr %arrayidx71.2.i.1 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx71.2.i.1, align 4
  %or.2.i.1 = or i32 %107, 1
  store i32 %or.2.i.1, ptr %arrayidx71.2.i.1, align 4
  br i1 %cmp3718.i, label %for.body69.preheader.2.i.for.body83.2.i_crit_edge, label %for.body69.preheader.2.i.for.body69.preheader.3.i_crit_edge

for.body69.preheader.2.i.for.body69.preheader.3.i_crit_edge: ; preds = %for.body69.preheader.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body69.preheader.3.i

for.body69.preheader.2.i.for.body83.2.i_crit_edge: ; preds = %for.body69.preheader.2.i
  br label %for.body83.2.i

for.body83.2.i:                                   ; preds = %for.body83.2.i.for.body83.2.i_crit_edge, %for.body69.preheader.2.i.for.body83.2.i_crit_edge
  %r.329.2.i = phi i32 [ %r.3.2.i, %for.body83.2.i.for.body83.2.i_crit_edge ], [ %sub35.i, %for.body69.preheader.2.i.for.body83.2.i_crit_edge ]
  %tmp.028.2.i = phi i32 [ %or89.2.i, %for.body83.2.i.for.body83.2.i_crit_edge ], [ 0, %for.body69.preheader.2.i.for.body83.2.i_crit_edge ]
  %arrayidx84.2.i = getelementptr i32, ptr %rows, i32 %r.329.2.i
  %108 = ptrtoint ptr %arrayidx84.2.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx84.2.i, align 4
  %or85.2.i = or i32 %tmp.028.2.i, 1
  %and86.2.i = and i32 %109, %or85.2.i
  %shr.i.2.i = lshr i32 %and86.2.i, 1
  %xor.i.2.i = xor i32 %shr.i.2.i, %and86.2.i
  %shr1.i.2.i = lshr i32 %xor.i.2.i, 2
  %xor2.i.2.i = xor i32 %shr1.i.2.i, %xor.i.2.i
  %and.i.2.i = and i32 %xor2.i.2.i, 286331153
  %mul.i.2.i = mul i32 %and.i.2.i, 286331153
  %shr3.i.2.i = lshr i32 %mul.i.2.i, 28
  %and4.i.2.i = and i32 %shr3.i.2.i, 1
  %sub87.2.i = sub i32 %1, %r.329.2.i
  %shl88.2.i = shl nuw i32 %and4.i.2.i, %sub87.2.i
  %or89.2.i = or i32 %shl88.2.i, %tmp.028.2.i
  %r.3.2.i = add nsw i32 %r.329.2.i, -1
  %cmp82.2.i.not = icmp eq i32 %r.329.2.i, 0
  br i1 %cmp82.2.i.not, label %for.end92.loopexit.2.i, label %for.body83.2.i.for.body83.2.i_crit_edge

for.body83.2.i.for.body83.2.i_crit_edge:          ; preds = %for.body83.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body83.2.i

for.end92.loopexit.2.i:                           ; preds = %for.body83.2.i
  call void @__sanitizer_cov_trace_pc() #9
  %phi.bo41.i = lshr i32 %or89.2.i, 1
  br label %for.body69.preheader.3.i

for.body69.preheader.3.i:                         ; preds = %for.end92.loopexit.2.i, %for.body69.preheader.2.i.for.body69.preheader.3.i_crit_edge
  %tmp.0.lcssa.2.i = phi i32 [ 0, %for.body69.preheader.2.i.for.body69.preheader.3.i_crit_edge ], [ %phi.bo41.i, %for.end92.loopexit.2.i ]
  %arrayidx94.2.i = getelementptr i32, ptr %roots, i32 2
  %110 = ptrtoint ptr %arrayidx94.2.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %tmp.0.lcssa.2.i, ptr %arrayidx94.2.i, align 4
  %111 = ptrtoint ptr %param.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %param.i, align 4
  %arrayidx71.3.i = getelementptr i32, ptr %rows, i32 %112
  %113 = ptrtoint ptr %arrayidx71.3.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx71.3.i, align 4
  %or.3.i = or i32 %114, 1
  store i32 %or.3.i, ptr %arrayidx71.3.i, align 4
  %115 = ptrtoint ptr %arrayidx70.i.1 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx70.i.1, align 4
  %arrayidx71.3.i.1 = getelementptr i32, ptr %rows, i32 %116
  %117 = ptrtoint ptr %arrayidx71.3.i.1 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx71.3.i.1, align 4
  %or.3.i.1 = or i32 %118, 1
  store i32 %or.3.i.1, ptr %arrayidx71.3.i.1, align 4
  br i1 %cmp3718.i, label %for.body69.preheader.3.i.for.body83.3.i_crit_edge, label %for.body69.preheader.3.i.for.end92.3.i_crit_edge

for.body69.preheader.3.i.for.end92.3.i_crit_edge: ; preds = %for.body69.preheader.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end92.3.i

for.body69.preheader.3.i.for.body83.3.i_crit_edge: ; preds = %for.body69.preheader.3.i
  br label %for.body83.3.i

for.body83.3.i:                                   ; preds = %for.body83.3.i.for.body83.3.i_crit_edge, %for.body69.preheader.3.i.for.body83.3.i_crit_edge
  %r.329.3.i = phi i32 [ %r.3.3.i, %for.body83.3.i.for.body83.3.i_crit_edge ], [ %sub35.i, %for.body69.preheader.3.i.for.body83.3.i_crit_edge ]
  %tmp.028.3.i = phi i32 [ %or89.3.i, %for.body83.3.i.for.body83.3.i_crit_edge ], [ 0, %for.body69.preheader.3.i.for.body83.3.i_crit_edge ]
  %arrayidx84.3.i = getelementptr i32, ptr %rows, i32 %r.329.3.i
  %119 = ptrtoint ptr %arrayidx84.3.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx84.3.i, align 4
  %or85.3.i = or i32 %tmp.028.3.i, 1
  %and86.3.i = and i32 %120, %or85.3.i
  %shr.i.3.i = lshr i32 %and86.3.i, 1
  %xor.i.3.i = xor i32 %shr.i.3.i, %and86.3.i
  %shr1.i.3.i = lshr i32 %xor.i.3.i, 2
  %xor2.i.3.i = xor i32 %shr1.i.3.i, %xor.i.3.i
  %and.i.3.i = and i32 %xor2.i.3.i, 286331153
  %mul.i.3.i = mul i32 %and.i.3.i, 286331153
  %shr3.i.3.i = lshr i32 %mul.i.3.i, 28
  %and4.i.3.i = and i32 %shr3.i.3.i, 1
  %sub87.3.i = sub i32 %1, %r.329.3.i
  %shl88.3.i = shl nuw i32 %and4.i.3.i, %sub87.3.i
  %or89.3.i = or i32 %shl88.3.i, %tmp.028.3.i
  %r.3.3.i = add nsw i32 %r.329.3.i, -1
  %cmp82.3.i.not = icmp eq i32 %r.329.3.i, 0
  br i1 %cmp82.3.i.not, label %for.end92.loopexit.3.i, label %for.body83.3.i.for.body83.3.i_crit_edge

for.body83.3.i.for.body83.3.i_crit_edge:          ; preds = %for.body83.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body83.3.i

for.end92.loopexit.3.i:                           ; preds = %for.body83.3.i
  call void @__sanitizer_cov_trace_pc() #9
  %phi.bo42.i = lshr i32 %or89.3.i, 1
  br label %for.end92.3.i

for.end92.3.i:                                    ; preds = %for.end92.loopexit.3.i, %for.body69.preheader.3.i.for.end92.3.i_crit_edge
  %tmp.0.lcssa.3.i = phi i32 [ 0, %for.body69.preheader.3.i.for.end92.3.i_crit_edge ], [ %phi.bo42.i, %for.end92.loopexit.3.i ]
  %arrayidx94.3.i = getelementptr i32, ptr %roots, i32 3
  %121 = ptrtoint ptr %arrayidx94.3.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %tmp.0.lcssa.3.i, ptr %arrayidx94.3.i, align 4
  br label %solve_linear_system.exit

solve_linear_system.exit:                         ; preds = %for.end92.3.i, %if.end59.i.solve_linear_system.exit_crit_edge, %land.lhs.true.i.solve_linear_system.exit_crit_edge, %for.end32.i.solve_linear_system.exit_crit_edge, %for.cond21.preheader.solve_linear_system.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end59.i.solve_linear_system.exit_crit_edge ], [ 0, %for.end32.i.solve_linear_system.exit_crit_edge ], [ 4, %for.end92.3.i ], [ 0, %for.cond21.preheader.solve_linear_system.exit_crit_edge ], [ 0, %land.lhs.true.i.solve_linear_system.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %param.i) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %rows) #10
  ret i32 %retval.0.i
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gf_poly_mod(ptr nocapture noundef readonly %bch, ptr nocapture noundef %a, ptr nocapture noundef readonly %b, ptr noundef readonly %rep) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %c1 = getelementptr inbounds %struct.gf_poly, ptr %a, i32 0, i32 1
  %0 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %b, align 4
  %2 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %a, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp = icmp ult i32 %3, %1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %rep, null
  br i1 %tobool.not, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then3:                                         ; preds = %if.end
  %cache = getelementptr inbounds %struct.bch_control, ptr %bch, i32 0, i32 12
  %4 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cache, align 4
  %n.i = getelementptr inbounds %struct.bch_control, ptr %bch, i32 0, i32 1
  %6 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n.i, align 4
  %arrayidx.i = getelementptr %struct.gf_poly, ptr %b, i32 0, i32 1, i32 %1
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %a_log_tab.i.i = getelementptr inbounds %struct.bch_control, ptr %bch, i32 0, i32 6
  %10 = ptrtoint ptr %a_log_tab.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %a_log_tab.i.i, align 4
  %arrayidx.i.i = getelementptr i16, ptr %11, i32 %9
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %13 to i32
  %sub.i = sub i32 %7, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp23.i = icmp sgt i32 %1, 0
  br i1 %cmp23.i, label %if.then3.for.body.i_crit_edge, label %if.then3.if.end4_crit_edge

if.then3.if.end4_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then3.for.body.i_crit_edge:                    ; preds = %if.then3
  br label %for.body.i

for.body.i:                                       ; preds = %cond.end.i.for.body.i_crit_edge, %if.then3.for.body.i_crit_edge
  %i.024.i = phi i32 [ %inc.i, %cond.end.i.for.body.i_crit_edge ], [ 0, %if.then3.for.body.i_crit_edge ]
  %arrayidx3.i = getelementptr %struct.gf_poly, ptr %b, i32 0, i32 1, i32 %i.024.i
  %14 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %for.body.i.cond.end.i_crit_edge, label %cond.true.i

for.body.i.cond.end.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i

cond.true.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %a_log_tab.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %a_log_tab.i.i, align 4
  %arrayidx.i21.i = getelementptr i16, ptr %17, i32 %15
  %18 = ptrtoint ptr %arrayidx.i21.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx.i21.i, align 2
  %conv.i22.i = zext i16 %19 to i32
  %add.i = add i32 %sub.i, %conv.i22.i
  %20 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %n.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %add.i)
  %cmp.i.i = icmp ugt i32 %21, %add.i
  %sub.i.i = select i1 %cmp.i.i, i32 0, i32 %21
  %cond.i.i = sub i32 %add.i, %sub.i.i
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %for.body.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %cond.i.i, %cond.true.i ], [ -1, %for.body.i.cond.end.i_crit_edge ]
  %arrayidx8.i = getelementptr i32, ptr %5, i32 %i.024.i
  %22 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %cond.i, ptr %arrayidx8.i, align 4
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %1
  br i1 %exitcond.not.i, label %cond.end.i.if.end4_crit_edge, label %cond.end.i.for.body.i_crit_edge

cond.end.i.for.body.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

cond.end.i.if.end4_crit_edge:                     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.end4:                                          ; preds = %cond.end.i.if.end4_crit_edge, %if.then3.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %rep.addr.0 = phi ptr [ %rep, %if.end.if.end4_crit_edge ], [ %5, %if.then3.if.end4_crit_edge ], [ %5, %cond.end.i.if.end4_crit_edge ]
  %23 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %a, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %1)
  %cmp6.not76 = icmp ult i32 %24, %1
  br i1 %cmp6.not76, label %if.end4.while.cond.preheader_crit_edge, label %for.body.lr.ph

if.end4.while.cond.preheader_crit_edge:           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.preheader

for.body.lr.ph:                                   ; preds = %if.end4
  %a_log_tab.i = getelementptr inbounds %struct.bch_control, ptr %bch, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1173.not = icmp eq i32 %1, 0
  %a_pow_tab = getelementptr inbounds %struct.bch_control, ptr %bch, i32 0, i32 5
  %n1.i = getelementptr inbounds %struct.bch_control, ptr %bch, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc22.for.body_crit_edge, %for.body.lr.ph
  %j.077 = phi i32 [ %24, %for.body.lr.ph ], [ %dec, %for.inc22.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %c1, i32 %j.077
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool7.not = icmp eq i32 %26, 0
  br i1 %tobool7.not, label %for.body.for.inc22_crit_edge, label %if.then8

for.body.for.inc22_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc22

if.then8:                                         ; preds = %for.body
  %27 = ptrtoint ptr %a_log_tab.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %a_log_tab.i, align 4
  %arrayidx.i70 = getelementptr i16, ptr %28, i32 %26
  %29 = ptrtoint ptr %arrayidx.i70 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx.i70, align 2
  %conv.i = zext i16 %30 to i32
  br i1 %cmp1173.not, label %if.then8.for.inc22_crit_edge, label %for.body12.preheader

if.then8.for.inc22_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc22

for.body12.preheader:                             ; preds = %if.then8
  %sub = sub i32 %j.077, %1
  br label %for.body12

for.body12:                                       ; preds = %for.inc.for.body12_crit_edge, %for.body12.preheader
  %i.075 = phi i32 [ %inc, %for.inc.for.body12_crit_edge ], [ 0, %for.body12.preheader ]
  %p.074 = phi i32 [ %inc20, %for.inc.for.body12_crit_edge ], [ %sub, %for.body12.preheader ]
  %arrayidx13 = getelementptr i32, ptr %rep.addr.0, i32 %i.075
  %31 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %cmp14 = icmp sgt i32 %32, -1
  br i1 %cmp14, label %if.then15, label %for.body12.for.inc_crit_edge

for.body12.for.inc_crit_edge:                     ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then15:                                        ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %a_pow_tab to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %a_pow_tab, align 4
  %add = add i32 %32, %conv.i
  %35 = ptrtoint ptr %n1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %n1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %add)
  %cmp.i = icmp ugt i32 %36, %add
  %sub.i71 = select i1 %cmp.i, i32 0, i32 %36
  %cond.i72 = sub i32 %add, %sub.i71
  %arrayidx17 = getelementptr i16, ptr %34, i32 %cond.i72
  %37 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx17, align 2
  %conv = zext i16 %38 to i32
  %arrayidx18 = getelementptr i32, ptr %c1, i32 %p.074
  %39 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx18, align 4
  %xor = xor i32 %40, %conv
  store i32 %xor, ptr %arrayidx18, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then15, %for.body12.for.inc_crit_edge
  %inc = add nuw i32 %i.075, 1
  %inc20 = add i32 %p.074, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.for.inc22_crit_edge, label %for.inc.for.body12_crit_edge

for.inc.for.body12_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body12

for.inc.for.inc22_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc22

for.inc22:                                        ; preds = %for.inc.for.inc22_crit_edge, %if.then8.for.inc22_crit_edge, %for.body.for.inc22_crit_edge
  %dec = add i32 %j.077, -1
  %cmp6.not = icmp ult i32 %dec, %1
  br i1 %cmp6.not, label %for.inc22.while.cond.preheader_crit_edge, label %for.inc22.for.body_crit_edge

for.inc22.for.body_crit_edge:                     ; preds = %for.inc22
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc22.while.cond.preheader_crit_edge:         ; preds = %for.inc22
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.inc22.while.cond.preheader_crit_edge, %if.end4.while.cond.preheader_crit_edge
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %while.cond.preheader
  %storemerge.in = phi i32 [ %storemerge, %while.cond.while.cond_crit_edge ], [ %1, %while.cond.preheader ]
  %storemerge = add i32 %storemerge.in, -1
  %41 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %storemerge, ptr %a, align 4
  %arrayidx27 = getelementptr i32, ptr %c1, i32 %storemerge
  %42 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool28.not = icmp ne i32 %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %storemerge)
  %tobool30.not = icmp eq i32 %storemerge, 0
  %or.cond = select i1 %tobool28.not, i1 true, i1 %tobool30.not
  br i1 %or.cond, label %while.cond.cleanup_crit_edge, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %while.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind uwtable(sync) }
attributes #9 = { nomerge }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../lib/bch.c", i32 255, i32 6}
!2 = !{ptr @__ksymtab_bch_encode, !3, !"__ksymtab_bch_encode", i1 false, i1 false}
!3 = !{!"../lib/bch.c", i32 321, i32 1}
!4 = !{ptr @__ksymtab_bch_decode, !5, !"__ksymtab_bch_decode", i1 false, i1 false}
!5 = !{!"../lib/bch.c", i32 1115, i32 1}
!6 = !{ptr @bch_init.prim_poly_tab, !7, !"prim_poly_tab", i1 false, i1 false}
!7 = !{!"../lib/bch.c", i32 1330, i32 28}
!8 = !{ptr @__ksymtab_bch_init, !9, !"__ksymtab_bch_init", i1 false, i1 false}
!9 = !{!"../lib/bch.c", i32 1415, i32 1}
!10 = !{ptr @__ksymtab_bch_free, !11, !"__ksymtab_bch_free", i1 false, i1 false}
!11 = !{!"../lib/bch.c", i32 1442, i32 1}
!12 = !{ptr @__UNIQUE_ID_file173, !13, !"__UNIQUE_ID_file173", i1 false, i1 false}
!13 = !{!"../lib/bch.c", i32 1444, i32 1}
!14 = !{ptr @__UNIQUE_ID_license174, !13, !"__UNIQUE_ID_license174", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_author175, !16, !"__UNIQUE_ID_author175", i1 false, i1 false}
!16 = !{!"../lib/bch.c", i32 1445, i32 1}
!17 = !{ptr @__UNIQUE_ID_description176, !18, !"__UNIQUE_ID_description176", i1 false, i1 false}
!18 = !{!"../lib/bch.c", i32 1446, i32 1}
!19 = !{ptr @swap_bits_table, !20, !"swap_bits_table", i1 false, i1 false}
!20 = !{!"../lib/bch.c", i32 117, i32 11}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{!"branch_weights", i32 1, i32 2000}
!30 = !{i8 0, i8 2}
!31 = !{i32 0, i32 33}
