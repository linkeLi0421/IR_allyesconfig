; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/brcm80211/brcmutil/d11.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/brcm80211/brcmutil/d11.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+brcmu_d11_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_brcmu_d11_attach\09\09\09\09"
module asm "\09.long\09__crc_brcmu_d11_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_brcmu_d11_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22brcmu_d11_attach\22\09\09\09\09\09"
module asm "__kstrtabns_brcmu_d11_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.brcmu_d11inf = type { i8, ptr, ptr }
%struct.brcmu_chan = type { i16, i8, i8, i8, i32, i32 }

@__kstrtab_brcmu_d11_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_brcmu_d11_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_brcmu_d11_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @brcmu_d11_attach to i32), ptr @__kstrtab_brcmu_d11_attach, ptr @__kstrtabns_brcmu_d11_attach }, section "___ksymtab+brcmu_d11_attach", align 4
@.str = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"drivers/net/wireless/broadcom/brcm80211/brcmutil/d11.c\00", [41 x i8] zeroinitializer }, align 32
@brcmu_d11n_decchspec.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid chanspec 0x%04x\0A\00", [39 x i8] zeroinitializer }, align 32
@brcmu_d11n_decchspec.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@brcmu_d11ac_decchspec.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@brcmu_d11ac_decchspec.__already_done.3 = internal unnamed_addr global i1 false, section ".data.once", align 1
@brcmu_d11ac_decchspec.__already_done.5 = internal unnamed_addr global i1 false, section ".data.once", align 1
@brcmu_d11ac_decchspec.__already_done.6 = internal unnamed_addr global i1 false, section ".data.once", align 1
@switch.table.brcmu_d11n_encchspec = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 768, i16 256, i16 512], [26 x i8] zeroinitializer }, align 32
@switch.table.brcmu_d11ac_encchspec = internal constant { [5 x i16], [22 x i8] } { [5 x i16] [i16 4096, i16 6144, i16 8192, i16 4096, i16 10240], [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 2048, i64 3072]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 4096, i64 8192]
@__sancov_gen_cov_switch_values.9 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 11, i64 0, i64 256]
@__sancov_gen_cov_switch_values.11 = internal global [6 x i64] [i64 4, i64 3, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.12 = internal global [10 x i64] [i64 8, i64 3, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 49152]
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 23, i32 3 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.18 = private constant [58 x i8] c"../drivers/net/wireless/broadcom/brcm80211/brcmutil/d11.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 120, i32 3 }
@___asan_gen_.20 = private unnamed_addr constant [34 x i8] c"switch.table.brcmu_d11n_encchspec\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [35 x i8] c"switch.table.brcmu_d11ac_encchspec\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_brcmu_d11_attach, ptr @.str, ptr @.str.1, ptr @switch.table.brcmu_d11n_encchspec, ptr @switch.table.brcmu_d11ac_encchspec], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.brcmu_d11n_encchspec to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.brcmu_d11ac_encchspec to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @brcmu_d11_attach(ptr nocapture noundef %d11inf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %d11inf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %d11inf, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  %spec.select = select i1 %cmp, ptr @brcmu_d11n_encchspec, ptr @brcmu_d11ac_encchspec
  %spec.select8 = select i1 %cmp, ptr @brcmu_d11n_decchspec, ptr @brcmu_d11ac_decchspec
  %2 = getelementptr inbounds %struct.brcmu_d11inf, ptr %d11inf, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %spec.select, ptr %2, align 4
  %4 = getelementptr inbounds %struct.brcmu_d11inf, ptr %d11inf, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %spec.select8, ptr %4, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmu_d11n_encchspec(ptr nocapture noundef %ch) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %bw = getelementptr inbounds %struct.brcmu_chan, ptr %ch, i32 0, i32 4
  %0 = ptrtoint ptr %bw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %sb = getelementptr inbounds %struct.brcmu_chan, ptr %ch, i32 0, i32 5
  %2 = ptrtoint ptr %sb to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %sb, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %chnum = getelementptr inbounds %struct.brcmu_chan, ptr %ch, i32 0, i32 1
  %3 = ptrtoint ptr %chnum to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %chnum, align 2
  %conv = zext i8 %4 to i16
  %5 = ptrtoint ptr %ch to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %ch, align 2
  %sb3 = getelementptr inbounds %struct.brcmu_chan, ptr %ch, i32 0, i32 5
  %6 = ptrtoint ptr %sb3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sb3, align 4
  %switch.tableidx = add i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %8 = icmp ult i32 %switch.tableidx, 3
  br i1 %8, label %switch.lookup, label %do.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 23, i32 noundef 9, ptr noundef null) #3
  br label %d11n_sb.exit

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %switch.gep = getelementptr inbounds [3 x i16], ptr @switch.table.brcmu_d11n_encchspec, i32 0, i32 %switch.tableidx
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %9)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %d11n_sb.exit

d11n_sb.exit:                                     ; preds = %switch.lookup, %do.end.i
  %retval.0.i = phi i16 [ 0, %do.end.i ], [ %switch.load, %switch.lookup ]
  %10 = ptrtoint ptr %ch to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %ch, align 2
  %and6.i33 = and i16 %11, -769
  %or.i34 = or i16 %and6.i33, %retval.0.i
  store i16 %or.i34, ptr %ch, align 2
  %12 = ptrtoint ptr %bw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bw, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %do.end.i36 [
    i32 0, label %d11n_sb.exit.d11n_bw.exit_crit_edge
    i32 1, label %sw.bb1.i35
  ]

d11n_sb.exit.d11n_bw.exit_crit_edge:              ; preds = %d11n_sb.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %d11n_bw.exit

sw.bb1.i35:                                       ; preds = %d11n_sb.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %d11n_bw.exit

do.end.i36:                                       ; preds = %d11n_sb.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 36, i32 noundef 9, ptr noundef null) #3
  br label %d11n_bw.exit

d11n_bw.exit:                                     ; preds = %do.end.i36, %sw.bb1.i35, %d11n_sb.exit.d11n_bw.exit_crit_edge
  %retval.0.i37 = phi i16 [ 0, %do.end.i36 ], [ 3072, %sw.bb1.i35 ], [ 2048, %d11n_sb.exit.d11n_bw.exit_crit_edge ]
  %15 = ptrtoint ptr %ch to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %ch, align 2
  %and6.i40 = and i16 %16, -3073
  %or.i41 = or i16 %and6.i40, %retval.0.i37
  %17 = ptrtoint ptr %chnum to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %chnum, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %18)
  %cmp9 = icmp ult i8 %18, 15
  %storemerge.v = select i1 %cmp9, i16 8192, i16 4096
  %storemerge = or i16 %storemerge.v, %or.i41
  %19 = ptrtoint ptr %ch to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %storemerge, ptr %ch, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmu_d11n_decchspec(ptr nocapture noundef %ch) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ch to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ch, align 4
  %conv1 = trunc i16 %1 to i8
  %chnum = getelementptr inbounds %struct.brcmu_chan, ptr %ch, i32 0, i32 1
  %2 = ptrtoint ptr %chnum to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv1, ptr %chnum, align 2
  %control_ch_num = getelementptr inbounds %struct.brcmu_chan, ptr %ch, i32 0, i32 2
  %3 = ptrtoint ptr %control_ch_num to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv1, ptr %control_ch_num, align 1
  %4 = and i16 %1, 3072
  %and5 = zext i16 %4 to i32
  %5 = zext i32 %and5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %and5, label %land.end [
    i32 2048, label %sw.bb
    i32 3072, label %sw.bb6
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %bw = getelementptr inbounds %struct.brcmu_chan, ptr %ch, i32 0, i32 4
  %6 = ptrtoint ptr %bw to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %bw, align 4
  %sb = getelementptr inbounds %struct.brcmu_chan, ptr %ch, i32 0, i32 5
  %7 = ptrtoint ptr %sb to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %sb, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %bw7 = getelementptr inbounds %struct.brcmu_chan, ptr %ch, i32 0, i32 4
  %8 = ptrtoint ptr %bw7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %bw7, align 4
  %9 = and i16 %1, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %9)
  %cmp = icmp eq i16 %9, 256
  %sb14 = getelementptr inbounds %struct.brcmu_chan, ptr %ch, i32 0, i32 5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #5
  %10 = ptrtoint ptr %sb14 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %sb14, align 4
  %sub = add i8 %conv1, -2
  %11 = ptrtoint ptr %control_ch_num to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %sub, ptr %control_ch_num, align 1
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #5
  %12 = ptrtoint ptr %sb14 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %sb14, align 4
  %add = add i8 %conv1, 2
  %13 = ptrtoint ptr %control_ch_num to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %add, ptr %control_ch_num, align 1
  br label %sw.epilog

land.end:                                         ; preds = %entry
  %.b141 = load i1, ptr @brcmu_d11n_decchspec.__already_done, align 1
  br i1 %.b141, label %land.end.sw.epilog_crit_edge, label %if.then27, !prof !28

land.end.sw.epilog_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then27:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @brcmu_d11n_decchspec.__already_done, align 1
  %conv38 = zext i16 %1 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 120, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %conv38) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then27, %land.end.sw.epilog_crit_edge, %if.else, %if.then, %sw.bb
  %14 = ptrtoint ptr %ch to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %ch, align 4
  %16 = and i16 %15, 12288
  %and61 = zext i16 %16 to i32
  %17 = zext i32 %and61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %and61, label %land.end73 [
    i32 4096, label %sw.bb62
    i32 8192, label %sw.bb63
  ]

sw.bb62:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  %band = getelementptr inbounds %struct.brcmu_chan, ptr %ch, i32 0, i32 3
  %18 = ptrtoint ptr %band to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %band, align 4
  br label %sw.epilog117

sw.bb63:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  %band64 = getelementptr inbounds %struct.brcmu_chan, ptr %ch, i32 0, i32 3
  %19 = ptrtoint ptr %band64 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %band64, align 4
  br label %sw.epilog117

land.end73:                                       ; preds = %sw.epilog
  %.b139140 = load i1, ptr @brcmu_d11n_decchspec.__already_done.2, align 1
  br i1 %.b139140, label %land.end73.sw.epilog117_crit_edge, label %if.then80, !prof !28

land.end73.sw.epilog117_crit_edge:                ; preds = %land.end73
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog117

if.then80:                                        ; preds = %land.end73
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @brcmu_d11n_decchspec.__already_done.2, align 1
  %conv95 = zext i16 %15 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 132, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %conv95) #3
  br label %sw.epilog117

sw.epilog117:                                     ; preds = %if.then80, %land.end73.sw.epilog117_crit_edge, %sw.bb63, %sw.bb62
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmu_d11ac_encchspec(ptr nocapture noundef %ch) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %bw = getelementptr inbounds %struct.brcmu_chan, ptr %ch, i32 0, i32 4
  %0 = ptrtoint ptr %bw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %sb = getelementptr inbounds %struct.brcmu_chan, ptr %ch, i32 0, i32 5
  %2 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp1 = icmp eq i32 %3, -1
  br i1 %cmp1, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %sb2 = getelementptr inbounds %struct.brcmu_chan, ptr %ch, i32 0, i32 5
  %4 = ptrtoint ptr %sb2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %sb2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %chnum = getelementptr inbounds %struct.brcmu_chan, ptr %ch, i32 0, i32 1
  %5 = ptrtoint ptr %chnum to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %chnum, align 2
  %conv = zext i8 %6 to i16
  %7 = ptrtoint ptr %ch to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %ch, align 2
  %and6.i = and i16 %8, -2048
  %or.i = or i16 %and6.i, %conv
  %sb4 = getelementptr inbounds %struct.brcmu_chan, ptr %ch, i32 0, i32 5
  %9 = ptrtoint ptr %sb4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sb4, align 4
  %.tr = trunc i32 %10 to i16
  %11 = shl i16 %.tr, 8
  %conv3.i37 = and i16 %11, 1792
  %or.i39 = or i16 %conv3.i37, %or.i
  store i16 %or.i39, ptr %ch, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %12 = icmp ult i32 %1, 5
  br i1 %12, label %switch.hole_check, label %if.end.do.end.i_crit_edge

if.end.do.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end.i

do.end.i:                                         ; preds = %switch.hole_check.do.end.i_crit_edge, %if.end.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 72, i32 noundef 9, ptr noundef null) #3
  br label %d11ac_bw.exit

switch.hole_check:                                ; preds = %if.end
  %switch.maskindex = trunc i32 %1 to i8
  %switch.shifted = lshr i8 23, %switch.maskindex
  %13 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %switch.lobit.not = icmp eq i8 %13, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end.i_crit_edge, label %switch.lookup

switch.hole_check.do.end.i_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #5
  %switch.gep = getelementptr inbounds [5 x i16], ptr @switch.table.brcmu_d11ac_encchspec, i32 0, i32 %1
  %14 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %14)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %d11ac_bw.exit

d11ac_bw.exit:                                    ; preds = %switch.lookup, %do.end.i
  %retval.0.i = phi i16 [ 0, %do.end.i ], [ %switch.load, %switch.lookup ]
  %15 = ptrtoint ptr %ch to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %ch, align 2
  %and6.i42 = and i16 %16, 2047
  %or.i43 = or i16 %and6.i42, %retval.0.i
  %17 = ptrtoint ptr %chnum to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %chnum, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %18)
  %cmp13 = icmp ult i8 %18, 15
  %masksel = select i1 %cmp13, i16 0, i16 -16384
  %storemerge = or i16 %masksel, %or.i43
  %19 = ptrtoint ptr %ch to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %storemerge, ptr %ch, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmu_d11ac_decchspec(ptr noundef %ch) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ch to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ch, align 4
  %conv1 = trunc i16 %1 to i8
  %chnum = getelementptr inbounds %struct.brcmu_chan, ptr %ch, i32 0, i32 1
  %2 = ptrtoint ptr %chnum to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv1, ptr %chnum, align 2
  %control_ch_num = getelementptr inbounds %struct.brcmu_chan, ptr %ch, i32 0, i32 2
  %3 = ptrtoint ptr %control_ch_num to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv1, ptr %control_ch_num, align 1
  %4 = and i16 %1, 14336
  %and5 = zext i16 %4 to i32
  %5 = add nsw i32 %and5, -4096
  %6 = lshr exact i32 %5, 11
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %6, label %land.end251 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
    i32 2, label %sw.bb65
    i32 3, label %sw.bb142
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %bw = getelementptr inbounds %struct.brcmu_chan, ptr %ch, i32 0, i32 4
  %8 = ptrtoint ptr %bw to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %bw, align 4
  %sb = getelementptr inbounds %struct.brcmu_chan, ptr %ch, i32 0, i32 5
  %9 = ptrtoint ptr %sb to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %sb, align 4
  br label %sw.epilog295

sw.bb6:                                           ; preds = %entry
  %bw7 = getelementptr inbounds %struct.brcmu_chan, ptr %ch, i32 0, i32 4
  %10 = ptrtoint ptr %bw7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %bw7, align 4
  %11 = trunc i16 %1 to i11
  %trunc416 = and i11 %11, -256
  %12 = zext i11 %trunc416 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.10)
  switch i11 %trunc416, label %land.end [
    i11 0, label %if.then
    i11 256, label %if.then21
  ]

if.then:                                          ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #5
  %sb14 = getelementptr inbounds %struct.brcmu_chan, ptr %ch, i32 0, i32 5
  %13 = ptrtoint ptr %sb14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %sb14, align 4
  %sub = add i8 %conv1, -2
  %14 = ptrtoint ptr %control_ch_num to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %sub, ptr %control_ch_num, align 1
  br label %sw.epilog295

if.then21:                                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #5
  %sb22 = getelementptr inbounds %struct.brcmu_chan, ptr %ch, i32 0, i32 5
  %15 = ptrtoint ptr %sb22 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %sb22, align 4
  %add = add i8 %conv1, 2
  %16 = ptrtoint ptr %control_ch_num to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %add, ptr %control_ch_num, align 1
  br label %sw.epilog295

land.end:                                         ; preds = %sw.bb6
  %.b413 = load i1, ptr @brcmu_d11ac_decchspec.__already_done, align 1
  br i1 %.b413, label %land.end.sw.epilog295_crit_edge, label %if.then32, !prof !28

land.end.sw.epilog295_crit_edge:                  ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog295

if.then32:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @brcmu_d11ac_decchspec.__already_done, align 1
  %conv43 = zext i16 %1 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 159, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %conv43) #3
  br label %sw.epilog295

sw.bb65:                                          ; preds = %entry
  %bw66 = getelementptr inbounds %struct.brcmu_chan, ptr %ch, i32 0, i32 4
  %17 = ptrtoint ptr %bw66 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %bw66, align 4
  %18 = lshr i16 %1, 8
  %19 = and i16 %18, 7
  %conv68 = zext i16 %19 to i32
  %sb69 = getelementptr inbounds %struct.brcmu_chan, ptr %ch, i32 0, i32 5
  %20 = ptrtoint ptr %sb69 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv68, ptr %sb69, align 4
  %trunc415 = trunc i16 %18 to i3
  %21 = zext i3 %trunc415 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.11)
  switch i3 %trunc415, label %land.end98 [
    i3 0, label %sw.bb71
    i3 1, label %sw.bb76
    i3 2, label %sw.bb81
    i3 3, label %sw.bb86
  ]

sw.bb71:                                          ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #5
  %sub74 = add i8 %conv1, -6
  %22 = ptrtoint ptr %control_ch_num to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %sub74, ptr %control_ch_num, align 1
  br label %sw.epilog295

sw.bb76:                                          ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #5
  %sub79 = add i8 %conv1, -2
  %23 = ptrtoint ptr %control_ch_num to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %sub79, ptr %control_ch_num, align 1
  br label %sw.epilog295

sw.bb81:                                          ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #5
  %add84 = add i8 %conv1, 2
  %24 = ptrtoint ptr %control_ch_num to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %add84, ptr %control_ch_num, align 1
  br label %sw.epilog295

sw.bb86:                                          ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #5
  %add89 = add i8 %conv1, 6
  %25 = ptrtoint ptr %control_ch_num to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %add89, ptr %control_ch_num, align 1
  br label %sw.epilog295

land.end98:                                       ; preds = %sw.bb65
  %.b406412 = load i1, ptr @brcmu_d11ac_decchspec.__already_done.3, align 1
  br i1 %.b406412, label %land.end98.sw.epilog295_crit_edge, label %if.then105, !prof !28

land.end98.sw.epilog295_crit_edge:                ; preds = %land.end98
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog295

if.then105:                                       ; preds = %land.end98
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @brcmu_d11ac_decchspec.__already_done.3, align 1
  %conv120 = zext i16 %1 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 180, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %conv120) #3
  br label %sw.epilog295

sw.bb142:                                         ; preds = %entry
  %bw143 = getelementptr inbounds %struct.brcmu_chan, ptr %ch, i32 0, i32 4
  %26 = ptrtoint ptr %bw143 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 4, ptr %bw143, align 4
  %27 = lshr i16 %1, 8
  %28 = and i16 %27, 7
  %conv146 = zext i16 %28 to i32
  %sb147 = getelementptr inbounds %struct.brcmu_chan, ptr %ch, i32 0, i32 5
  %29 = ptrtoint ptr %sb147 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv146, ptr %sb147, align 4
  %trunc = trunc i16 %27 to i3
  %30 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.12)
  switch i3 %trunc, label %sw.bb142.unreachabledefault [
    i3 0, label %sw.bb149
    i3 1, label %sw.bb154
    i3 2, label %sw.bb159
    i3 3, label %sw.bb164
    i3 -4, label %sw.bb169
    i3 -3, label %sw.bb174
    i3 -2, label %sw.bb179
    i3 -1, label %sw.bb184
  ]

sw.bb149:                                         ; preds = %sw.bb142
  call void @__sanitizer_cov_trace_pc() #5
  %sub152 = add i8 %conv1, -14
  %31 = ptrtoint ptr %control_ch_num to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %sub152, ptr %control_ch_num, align 1
  br label %sw.epilog295

sw.bb154:                                         ; preds = %sw.bb142
  call void @__sanitizer_cov_trace_pc() #5
  %sub157 = add i8 %conv1, -10
  %32 = ptrtoint ptr %control_ch_num to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %sub157, ptr %control_ch_num, align 1
  br label %sw.epilog295

sw.bb159:                                         ; preds = %sw.bb142
  call void @__sanitizer_cov_trace_pc() #5
  %sub162 = add i8 %conv1, -6
  %33 = ptrtoint ptr %control_ch_num to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %sub162, ptr %control_ch_num, align 1
  br label %sw.epilog295

sw.bb164:                                         ; preds = %sw.bb142
  call void @__sanitizer_cov_trace_pc() #5
  %sub167 = add i8 %conv1, -2
  %34 = ptrtoint ptr %control_ch_num to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %sub167, ptr %control_ch_num, align 1
  br label %sw.epilog295

sw.bb169:                                         ; preds = %sw.bb142
  call void @__sanitizer_cov_trace_pc() #5
  %add172 = add i8 %conv1, 2
  %35 = ptrtoint ptr %control_ch_num to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %add172, ptr %control_ch_num, align 1
  br label %sw.epilog295

sw.bb174:                                         ; preds = %sw.bb142
  call void @__sanitizer_cov_trace_pc() #5
  %add177 = add i8 %conv1, 6
  %36 = ptrtoint ptr %control_ch_num to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %add177, ptr %control_ch_num, align 1
  br label %sw.epilog295

sw.bb179:                                         ; preds = %sw.bb142
  call void @__sanitizer_cov_trace_pc() #5
  %add182 = add i8 %conv1, 10
  %37 = ptrtoint ptr %control_ch_num to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %add182, ptr %control_ch_num, align 1
  br label %sw.epilog295

sw.bb184:                                         ; preds = %sw.bb142
  call void @__sanitizer_cov_trace_pc() #5
  %add187 = add i8 %conv1, 14
  %38 = ptrtoint ptr %control_ch_num to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %add187, ptr %control_ch_num, align 1
  br label %sw.epilog295

sw.bb142.unreachabledefault:                      ; preds = %sw.bb142
  unreachable

land.end251:                                      ; preds = %entry
  %.b408414 = load i1, ptr @brcmu_d11ac_decchspec.__already_done.5, align 1
  br i1 %.b408414, label %land.end251.sw.epilog295_crit_edge, label %if.then258, !prof !28

land.end251.sw.epilog295_crit_edge:               ; preds = %land.end251
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog295

if.then258:                                       ; preds = %land.end251
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @brcmu_d11ac_decchspec.__already_done.5, align 1
  %conv273 = zext i16 %1 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 220, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %conv273) #3
  br label %sw.epilog295

sw.epilog295:                                     ; preds = %if.then258, %land.end251.sw.epilog295_crit_edge, %sw.bb184, %sw.bb179, %sw.bb174, %sw.bb169, %sw.bb164, %sw.bb159, %sw.bb154, %sw.bb149, %if.then105, %land.end98.sw.epilog295_crit_edge, %sw.bb86, %sw.bb81, %sw.bb76, %sw.bb71, %if.then32, %land.end.sw.epilog295_crit_edge, %if.then21, %if.then, %sw.bb
  %39 = ptrtoint ptr %ch to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %ch, align 4
  %41 = and i16 %40, -16384
  %42 = zext i16 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.13)
  switch i16 %41, label %land.end310 [
    i16 -16384, label %sw.bb299
    i16 0, label %sw.bb300
  ]

sw.bb299:                                         ; preds = %sw.epilog295
  call void @__sanitizer_cov_trace_pc() #5
  %band = getelementptr inbounds %struct.brcmu_chan, ptr %ch, i32 0, i32 3
  %43 = ptrtoint ptr %band to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %band, align 4
  br label %sw.epilog354

sw.bb300:                                         ; preds = %sw.epilog295
  call void @__sanitizer_cov_trace_pc() #5
  %band301 = getelementptr inbounds %struct.brcmu_chan, ptr %ch, i32 0, i32 3
  %44 = ptrtoint ptr %band301 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %band301, align 4
  br label %sw.epilog354

land.end310:                                      ; preds = %sw.epilog295
  %.b409410 = load i1, ptr @brcmu_d11ac_decchspec.__already_done.6, align 1
  br i1 %.b409410, label %land.end310.sw.epilog354_crit_edge, label %if.then317, !prof !28

land.end310.sw.epilog354_crit_edge:               ; preds = %land.end310
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog354

if.then317:                                       ; preds = %land.end310
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @brcmu_d11ac_decchspec.__already_done.6, align 1
  %conv332 = zext i16 %40 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 232, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %conv332) #3
  br label %sw.epilog354

sw.epilog354:                                     ; preds = %if.then317, %land.end310.sw.epilog354_crit_edge, %sw.bb300, %sw.bb299
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @__ksymtab_brcmu_d11_attach, !1, !"__ksymtab_brcmu_d11_attach", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmutil/d11.c", i32 247, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmutil/d11.c", i32 23, i32 3}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmutil/d11.c", i32 120, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !8, !"__already_done", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmutil/d11.c", i32 132, i32 3}
!9 = distinct !{null, !10, !"__already_done", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmutil/d11.c", i32 159, i32 4}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmutil/d11.c", i32 180, i32 4}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmutil/d11.c", i32 214, i32 4}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmutil/d11.c", i32 220, i32 3}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmutil/d11.c", i32 232, i32 3}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{!"branch_weights", i32 2000, i32 1}
