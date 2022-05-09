; ModuleID = '/llk/IR_all_yes/net/bridge/netfilter/ebt_stp.c_pt.bc'
source_filename = "../net/bridge/netfilter/ebt_stp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_match = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.stp_header = type { i8, i8, i8, i8, i8, i8 }
%struct.stp_config_pdu = type { i8, [8 x i8], [4 x i8], [8 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i8] }
%struct.xt_action_param = type { %union.anon.141, %union.anon.142, ptr, i32, i16, i8 }
%union.anon.141 = type { ptr }
%union.anon.142 = type { ptr }
%struct.sk_buff = type { %union.anon, %union.anon.124, %union.anon.125, [48 x i8], %union.anon.126, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.128, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.124 = type { ptr }
%union.anon.125 = type { i64 }
%union.anon.126 = type { %struct.anon.127 }
%struct.anon.127 = type { i32, ptr }
%union.anon.128 = type { %struct.anon.129 }
%struct.anon.129 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.130, i32, i32, i32, i16, i16, %union.anon.132, i32, %union.anon.133, %union.anon.134, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.130 = type { i32 }
%union.anon.132 = type { i32 }
%union.anon.133 = type { i32 }
%union.anon.134 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ebt_stp_info = type { i8, %struct.ebt_stp_config_info, i16, i16 }
%struct.ebt_stp_config_info = type { i8, i16, i16, [6 x i8], [6 x i8], i32, i32, i16, i16, [6 x i8], [6 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.xt_mtchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.ebt_entry = type { i32, i32, i16, [16 x i8], [16 x i8], [16 x i8], [16 x i8], [6 x i8], [6 x i8], [6 x i8], [6 x i8], i32, i32, i32, [0 x i8] }

@ebt_stp_mt_reg = internal global %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"stp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @ebt_stp_mt, ptr @ebt_stp_mt_check, ptr null, ptr null, ptr null, i32 72, i32 0, i32 0, i16 0, i16 7 }, section ".data..read_mostly", align 4
@__initcall__kmod_ebt_stp__476_191_ebt_stp_init6 = internal global ptr @ebt_stp_init, section ".initcall6.init", align 4
@__exitcall_ebt_stp_fini = internal global ptr @ebt_stp_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_description477 = internal constant [66 x i8] c"ebt_stp.description=Ebtables: Spanning Tree Protocol packet match\00", section ".modinfo", align 1
@__UNIQUE_ID_file478 = internal constant [42 x i8] c"ebt_stp.file=net/bridge/netfilter/ebt_stp\00", section ".modinfo", align 1
@__UNIQUE_ID_license479 = internal constant [20 x i8] c"ebt_stp.license=GPL\00", section ".modinfo", align 1
@__const.ebt_stp_mt.header = private unnamed_addr constant [6 x i8] c"BB\03\00\00\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_description477, ptr @__UNIQUE_ID_file478, ptr @__UNIQUE_ID_license479, ptr @__exitcall_ebt_stp_fini, ptr @__initcall__kmod_ebt_stp__476_191_ebt_stp_init6, ptr @ebt_stp_fini], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ebt_stp_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @xt_unregister_match(ptr noundef nonnull @ebt_stp_mt_reg) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ebt_stp_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_match(ptr noundef nonnull @ebt_stp_mt_reg) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @ebt_stp_mt(ptr noundef %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  %_stph = alloca %struct.stp_header, align 1
  %_stpc = alloca %struct.stp_config_pdu, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %_stph) #6
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %3 = call ptr @memset(ptr %_stph, i32 255, i32 6)
  %4 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %6 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len.i.i, align 8
  %sub.i4.i = sub i32 %5, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 6
  br i1 %cmp.not.i.i, label %if.end.i.i, label %skb_header_pointer.exit, !prof !22

if.end.i.i:                                       ; preds = %entry
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.cleanup35_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.cleanup35_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup35

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef 0, ptr noundef nonnull %_stph, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.cleanup35_crit_edge, label %lor.lhs.false.i.i.if.end_crit_edge

lor.lhs.false.i.i.if.end_crit_edge:               ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

lor.lhs.false.i.i.cleanup35_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup35

skb_header_pointer.exit:                          ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %cmp = icmp eq ptr %9, null
  br i1 %cmp, label %skb_header_pointer.exit.cleanup35_crit_edge, label %skb_header_pointer.exit.if.end_crit_edge

skb_header_pointer.exit.if.end_crit_edge:         ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

skb_header_pointer.exit.cleanup35_crit_edge:      ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup35

if.end:                                           ; preds = %skb_header_pointer.exit.if.end_crit_edge, %lor.lhs.false.i.i.if.end_crit_edge
  %retval.0.i.i68 = phi ptr [ %9, %skb_header_pointer.exit.if.end_crit_edge ], [ %_stph, %lor.lhs.false.i.i.if.end_crit_edge ]
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %retval.0.i.i68, ptr noundef nonnull dereferenceable(6) @__const.ebt_stp_mt.header, i32 6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup35_crit_edge

if.end.cleanup35_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup35

if.end3:                                          ; preds = %if.end
  %bitmask = getelementptr inbounds %struct.ebt_stp_info, ptr %2, i32 0, i32 2
  %10 = ptrtoint ptr %bitmask to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %bitmask, align 4
  %12 = and i16 %11, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool4.not = icmp eq i16 %12, 0
  br i1 %tobool4.not, label %if.end3.if.end16_crit_edge, label %land.lhs.true

if.end3.if.end16_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end3
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %2, align 4
  %type6 = getelementptr inbounds %struct.stp_header, ptr %retval.0.i.i68, i32 0, i32 5
  %15 = ptrtoint ptr %type6 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %type6, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %16)
  %cmp8 = icmp eq i8 %14, %16
  %invflags = getelementptr inbounds %struct.ebt_stp_info, ptr %2, i32 0, i32 3
  %17 = ptrtoint ptr %invflags to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %invflags, align 2
  %19 = and i16 %18, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %20 = icmp ne i16 %19, 0
  %tobool14.not = xor i1 %cmp8, %20
  br i1 %tobool14.not, label %land.lhs.true.if.end16_crit_edge, label %land.lhs.true.cleanup35_crit_edge

land.lhs.true.cleanup35_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup35

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.end16:                                         ; preds = %land.lhs.true.if.end16_crit_edge, %if.end3.if.end16_crit_edge
  %type17 = getelementptr inbounds %struct.stp_header, ptr %retval.0.i.i68, i32 0, i32 5
  %21 = ptrtoint ptr %type17 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %type17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp19 = icmp ne i8 %22, 0
  %23 = and i16 %11, 4094
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool25.not = icmp eq i16 %23, 0
  %or.cond = select i1 %cmp19, i1 true, i1 %tobool25.not
  br i1 %or.cond, label %if.end16.cleanup35_crit_edge, label %if.then26

if.end16.cleanup35_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup35

if.then26:                                        ; preds = %if.end16
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %_stpc) #6
  %24 = call ptr @memset(ptr %_stpc, i32 255, i32 31)
  %25 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len.i.i, align 4
  %27 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %data_len.i.i, align 8
  %.neg86 = add i32 %26, -6
  %sub.i4.i50 = sub i32 %.neg86, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %sub.i4.i50)
  %cmp.not.i.i51 = icmp slt i32 %sub.i4.i50, 31
  br i1 %cmp.not.i.i51, label %if.end.i.i55, label %skb_header_pointer.exit61, !prof !22

if.end.i.i55:                                     ; preds = %if.then26
  %tobool2.not.i.i54 = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i54, label %if.end.i.i55.cleanup_crit_edge, label %lor.lhs.false.i.i59

if.end.i.i55.cleanup_crit_edge:                   ; preds = %if.end.i.i55
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false.i.i59:                              ; preds = %if.end.i.i55
  %call.i.i56 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef 6, ptr noundef nonnull %_stpc, i32 noundef 31) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i56)
  %cmp3.i.i57 = icmp slt i32 %call.i.i56, 0
  br i1 %cmp3.i.i57, label %lor.lhs.false.i.i59.cleanup_crit_edge, label %lor.lhs.false.i.i59.if.end31_crit_edge

lor.lhs.false.i.i59.if.end31_crit_edge:           ; preds = %lor.lhs.false.i.i59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

lor.lhs.false.i.i59.cleanup_crit_edge:            ; preds = %lor.lhs.false.i.i59
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

skb_header_pointer.exit61:                        ; preds = %if.then26
  %data.i52 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %29 = ptrtoint ptr %data.i52 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i52, align 4
  %add.ptr.i.i = getelementptr i8, ptr %30, i32 6
  %cmp28 = icmp eq ptr %add.ptr.i.i, null
  br i1 %cmp28, label %skb_header_pointer.exit61.cleanup_crit_edge, label %skb_header_pointer.exit61.if.end31_crit_edge

skb_header_pointer.exit61.if.end31_crit_edge:     ; preds = %skb_header_pointer.exit61
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

skb_header_pointer.exit61.cleanup_crit_edge:      ; preds = %skb_header_pointer.exit61
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end31:                                         ; preds = %skb_header_pointer.exit61.if.end31_crit_edge, %lor.lhs.false.i.i59.if.end31_crit_edge
  %retval.0.i.i6085 = phi ptr [ %add.ptr.i.i, %skb_header_pointer.exit61.if.end31_crit_edge ], [ %_stpc, %lor.lhs.false.i.i59.if.end31_crit_edge ]
  %31 = ptrtoint ptr %bitmask to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %bitmask, align 4
  %33 = and i16 %32, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool.not.i = icmp eq i16 %33, 0
  br i1 %tobool.not.i, label %if.end31.if.end.i_crit_edge, label %land.lhs.true.i

if.end31.if.end.i_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end31
  %config.i = getelementptr inbounds %struct.ebt_stp_info, ptr %2, i32 0, i32 1
  %34 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %config.i, align 4
  %36 = ptrtoint ptr %retval.0.i.i6085 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %retval.0.i.i6085, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %35, i8 %37)
  %cmp.i = icmp eq i8 %35, %37
  %invflags.i = getelementptr inbounds %struct.ebt_stp_info, ptr %2, i32 0, i32 3
  %38 = ptrtoint ptr %invflags.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %invflags.i, align 2
  %40 = and i16 %39, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %41 = icmp ne i16 %40, 0
  %tobool9.not.i = xor i1 %cmp.i, %41
  br i1 %tobool9.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.end31.if.end.i_crit_edge
  %42 = and i16 %32, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool13.not.i = icmp eq i16 %42, 0
  br i1 %tobool13.not.i, label %if.end.i.if.end40.i_crit_edge, label %if.then14.i

if.end.i.if.end40.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40.i

if.then14.i:                                      ; preds = %if.end.i
  %root.i = getelementptr inbounds %struct.stp_config_pdu, ptr %retval.0.i.i6085, i32 0, i32 1
  %43 = ptrtoint ptr %root.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %root.i, align 1
  %conv15.i = zext i8 %44 to i32
  %shl.i = shl nuw nsw i32 %conv15.i, 8
  %arrayidx17.i = getelementptr %struct.stp_config_pdu, ptr %retval.0.i.i6085, i32 0, i32 1, i32 1
  %45 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx17.i, align 1
  %conv18.i = zext i8 %46 to i32
  %or.i = or i32 %shl.i, %conv18.i
  %root_priol.i = getelementptr inbounds %struct.ebt_stp_info, ptr %2, i32 0, i32 1, i32 1
  %47 = ptrtoint ptr %root_priol.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %root_priol.i, align 2
  %conv21.i = zext i16 %48 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i, i32 %conv21.i)
  %cmp22.i = icmp ult i32 %or.i, %conv21.i
  br i1 %cmp22.i, label %if.then14.lor.end_crit_edge.i, label %lor.end.i

if.then14.lor.end_crit_edge.i:                    ; preds = %if.then14.i
  %invflags28485.i = getelementptr inbounds %struct.ebt_stp_info, ptr %2, i32 0, i32 3
  %49 = ptrtoint ptr %invflags28485.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %invflags28485.i, align 2
  %51 = and i16 %50, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %.not496.i = icmp eq i16 %51, 0
  br i1 %.not496.i, label %if.then14.lor.end_crit_edge.i.cleanup_crit_edge, label %if.then14.lor.end_crit_edge.i.if.end40.i_crit_edge

if.then14.lor.end_crit_edge.i.if.end40.i_crit_edge: ; preds = %if.then14.lor.end_crit_edge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40.i

if.then14.lor.end_crit_edge.i.cleanup_crit_edge:  ; preds = %if.then14.lor.end_crit_edge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.end.i:                                        ; preds = %if.then14.i
  %root_priou.i = getelementptr inbounds %struct.ebt_stp_info, ptr %2, i32 0, i32 1, i32 2
  %52 = ptrtoint ptr %root_priou.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %root_priou.i, align 4
  %conv25.i = zext i16 %53 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i, i32 %conv25.i)
  %cmp26.i = icmp ugt i32 %or.i, %conv25.i
  %invflags28.i = getelementptr inbounds %struct.ebt_stp_info, ptr %2, i32 0, i32 3
  %54 = ptrtoint ptr %invflags28.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %invflags28.i, align 2
  %56 = and i16 %55, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %57 = icmp eq i16 %56, 0
  %tobool37.not.i = xor i1 %cmp26.i, %57
  br i1 %tobool37.not.i, label %lor.end.i.if.end40.i_crit_edge, label %lor.end.i.cleanup_crit_edge

lor.end.i.cleanup_crit_edge:                      ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.end.i.if.end40.i_crit_edge:                   ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40.i

if.end40.i:                                       ; preds = %lor.end.i.if.end40.i_crit_edge, %if.then14.lor.end_crit_edge.i.if.end40.i_crit_edge, %if.end.i.if.end40.i_crit_edge
  %58 = and i16 %32, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %tobool44.not.i = icmp eq i16 %58, 0
  br i1 %tobool44.not.i, label %if.end40.i.if.end63.i_crit_edge, label %if.then45.i

if.end40.i.if.end63.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63.i

if.then45.i:                                      ; preds = %if.end40.i
  %arrayidx47.i = getelementptr %struct.stp_config_pdu, ptr %retval.0.i.i6085, i32 0, i32 1, i32 2
  %root_addr.i = getelementptr inbounds %struct.ebt_stp_info, ptr %2, i32 0, i32 1, i32 3
  %root_addrmsk.i = getelementptr inbounds %struct.ebt_stp_info, ptr %2, i32 0, i32 1, i32 4
  %59 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx47.i, align 1
  %61 = ptrtoint ptr %root_addr.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %root_addr.i, align 1
  %xor9.i.i = xor i8 %62, %60
  %63 = ptrtoint ptr %root_addrmsk.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %root_addrmsk.i, align 1
  %and10.i.i = and i8 %xor9.i.i, %64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and10.i.i)
  %tobool.not.i.i = icmp eq i8 %and10.i.i, 0
  br i1 %tobool.not.i.i, label %for.cond.i.i, label %if.then45.i.ether_addr_equal_masked.exit.thr_comm.i_crit_edge

if.then45.i.ether_addr_equal_masked.exit.thr_comm.i_crit_edge: ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ether_addr_equal_masked.exit.thr_comm.i

for.cond.i.i:                                     ; preds = %if.then45.i
  %arrayidx.1.i.i = getelementptr %struct.stp_config_pdu, ptr %retval.0.i.i6085, i32 0, i32 1, i32 3
  %65 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx.1.i.i, align 1
  %arrayidx1.1.i.i = getelementptr %struct.ebt_stp_info, ptr %2, i32 0, i32 1, i32 3, i32 1
  %67 = ptrtoint ptr %arrayidx1.1.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx1.1.i.i, align 1
  %xor9.1.i.i = xor i8 %68, %66
  %arrayidx3.1.i.i = getelementptr %struct.ebt_stp_info, ptr %2, i32 0, i32 1, i32 4, i32 1
  %69 = ptrtoint ptr %arrayidx3.1.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx3.1.i.i, align 1
  %and10.1.i.i = and i8 %xor9.1.i.i, %70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and10.1.i.i)
  %tobool.not.1.i.i = icmp eq i8 %and10.1.i.i, 0
  br i1 %tobool.not.1.i.i, label %for.cond.1.i.i, label %for.cond.i.i.ether_addr_equal_masked.exit.thr_comm.i_crit_edge

for.cond.i.i.ether_addr_equal_masked.exit.thr_comm.i_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ether_addr_equal_masked.exit.thr_comm.i

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %arrayidx.2.i.i = getelementptr %struct.stp_config_pdu, ptr %retval.0.i.i6085, i32 0, i32 1, i32 4
  %71 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx.2.i.i, align 1
  %arrayidx1.2.i.i = getelementptr %struct.ebt_stp_info, ptr %2, i32 0, i32 1, i32 3, i32 2
  %73 = ptrtoint ptr %arrayidx1.2.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx1.2.i.i, align 1
  %xor9.2.i.i = xor i8 %74, %72
  %arrayidx3.2.i.i = getelementptr %struct.ebt_stp_info, ptr %2, i32 0, i32 1, i32 4, i32 2
  %75 = ptrtoint ptr %arrayidx3.2.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx3.2.i.i, align 1
  %and10.2.i.i = and i8 %xor9.2.i.i, %76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and10.2.i.i)
  %tobool.not.2.i.i = icmp eq i8 %and10.2.i.i, 0
  br i1 %tobool.not.2.i.i, label %for.cond.2.i.i, label %for.cond.1.i.i.ether_addr_equal_masked.exit.thr_comm.i_crit_edge

for.cond.1.i.i.ether_addr_equal_masked.exit.thr_comm.i_crit_edge: ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ether_addr_equal_masked.exit.thr_comm.i

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  %arrayidx.3.i.i = getelementptr %struct.stp_config_pdu, ptr %retval.0.i.i6085, i32 0, i32 1, i32 5
  %77 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx.3.i.i, align 1
  %arrayidx1.3.i.i = getelementptr %struct.ebt_stp_info, ptr %2, i32 0, i32 1, i32 3, i32 3
  %79 = ptrtoint ptr %arrayidx1.3.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx1.3.i.i, align 1
  %xor9.3.i.i = xor i8 %80, %78
  %arrayidx3.3.i.i = getelementptr %struct.ebt_stp_info, ptr %2, i32 0, i32 1, i32 4, i32 3
  %81 = ptrtoint ptr %arrayidx3.3.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx3.3.i.i, align 1
  %and10.3.i.i = and i8 %xor9.3.i.i, %82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and10.3.i.i)
  %tobool.not.3.i.i = icmp eq i8 %and10.3.i.i, 0
  br i1 %tobool.not.3.i.i, label %for.cond.3.i.i, label %for.cond.2.i.i.ether_addr_equal_masked.exit.thr_comm.i_crit_edge

for.cond.2.i.i.ether_addr_equal_masked.exit.thr_comm.i_crit_edge: ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ether_addr_equal_masked.exit.thr_comm.i

for.cond.3.i.i:                                   ; preds = %for.cond.2.i.i
  %arrayidx.4.i.i = getelementptr %struct.stp_config_pdu, ptr %retval.0.i.i6085, i32 0, i32 1, i32 6
  %83 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx.4.i.i, align 1
  %arrayidx1.4.i.i = getelementptr %struct.ebt_stp_info, ptr %2, i32 0, i32 1, i32 3, i32 4
  %85 = ptrtoint ptr %arrayidx1.4.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx1.4.i.i, align 1
  %xor9.4.i.i = xor i8 %86, %84
  %arrayidx3.4.i.i = getelementptr %struct.ebt_stp_info, ptr %2, i32 0, i32 1, i32 4, i32 4
  %87 = ptrtoint ptr %arrayidx3.4.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx3.4.i.i, align 1
  %and10.4.i.i = and i8 %xor9.4.i.i, %88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and10.4.i.i)
  %tobool.not.4.i.i = icmp eq i8 %and10.4.i.i, 0
  br i1 %tobool.not.4.i.i, label %ether_addr_equal_masked.exit.i, label %for.cond.3.i.i.ether_addr_equal_masked.exit.thr_comm.i_crit_edge

for.cond.3.i.i.ether_addr_equal_masked.exit.thr_comm.i_crit_edge: ; preds = %for.cond.3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ether_addr_equal_masked.exit.thr_comm.i

ether_addr_equal_masked.exit.thr_comm.i:          ; preds = %for.cond.3.i.i.ether_addr_equal_masked.exit.thr_comm.i_crit_edge, %for.cond.2.i.i.ether_addr_equal_masked.exit.thr_comm.i_crit_edge, %for.cond.1.i.i.ether_addr_equal_masked.exit.thr_comm.i_crit_edge, %for.cond.i.i.ether_addr_equal_masked.exit.thr_comm.i_crit_edge, %if.then45.i.ether_addr_equal_masked.exit.thr_comm.i_crit_edge
  %invflags51487.i = getelementptr inbounds %struct.ebt_stp_info, ptr %2, i32 0, i32 3
  %89 = ptrtoint ptr %invflags51487.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %invflags51487.i, align 2
  %91 = and i16 %90, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %91)
  %.not.i = icmp eq i16 %91, 0
  br i1 %.not.i, label %ether_addr_equal_masked.exit.thr_comm.i.cleanup_crit_edge, label %ether_addr_equal_masked.exit.thr_comm.i.if.end63.i_crit_edge

ether_addr_equal_masked.exit.thr_comm.i.if.end63.i_crit_edge: ; preds = %ether_addr_equal_masked.exit.thr_comm.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63.i

ether_addr_equal_masked.exit.thr_comm.i.cleanup_crit_edge: ; preds = %ether_addr_equal_masked.exit.thr_comm.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

ether_addr_equal_masked.exit.i:                   ; preds = %for.cond.3.i.i
  %arrayidx.5.i.i = getelementptr %struct.stp_config_pdu, ptr %retval.0.i.i6085, i32 0, i32 1, i32 7
  %92 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx.5.i.i, align 1
  %arrayidx1.5.i.i = getelementptr %struct.ebt_stp_info, ptr %2, i32 0, i32 1, i32 3, i32 5
  %94 = ptrtoint ptr %arrayidx1.5.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx1.5.i.i, align 1
  %xor9.5.i.i = xor i8 %95, %93
  %arrayidx3.5.i.i = getelementptr %struct.ebt_stp_info, ptr %2, i32 0, i32 1, i32 4, i32 5
  %96 = ptrtoint ptr %arrayidx3.5.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx3.5.i.i, align 1
  %and10.5.i.i = and i8 %xor9.5.i.i, %97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and10.5.i.i)
  %tobool.not.5.i.i = icmp eq i8 %and10.5.i.i, 0
  %invflags51.i = getelementptr inbounds %struct.ebt_stp_info, ptr %2, i32 0, i32 3
  %98 = ptrtoint ptr %invflags51.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %invflags51.i, align 2
  %100 = and i16 %99, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %100)
  %101 = icmp ne i16 %100, 0
  %tobool60.not.i = xor i1 %tobool.not.5.i.i, %101
  br i1 %tobool60.not.i, label %ether_addr_equal_masked.exit.i.if.end63.i_crit_edge, label %ether_addr_equal_masked.exit.i.cleanup_crit_edge

ether_addr_equal_masked.exit.i.cleanup_crit_edge: ; preds = %ether_addr_equal_masked.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

ether_addr_equal_masked.exit.i.if.end63.i_crit_edge: ; preds = %ether_addr_equal_masked.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63.i

if.end63.i:                                       ; preds = %ether_addr_equal_masked.exit.i.if.end63.i_crit_edge, %ether_addr_equal_masked.exit.thr_comm.i.if.end63.i_crit_edge, %if.end40.i.if.end63.i_crit_edge
  %102 = and i16 %32, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %102)
  %tobool67.not.i = icmp eq i16 %102, 0
  br i1 %tobool67.not.i, label %if.end63.i.if.end105.i_crit_edge, label %if.then68.i

if.end63.i.if.end105.i_crit_edge:                 ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end105.i

if.then68.i:                                      ; preds = %if.end63.i
  %root_cost.i = getelementptr inbounds %struct.stp_config_pdu, ptr %retval.0.i.i6085, i32 0, i32 2
  %103 = ptrtoint ptr %root_cost.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %root_cost.i, align 1
  %conv70.i = zext i8 %104 to i32
  %shl71.i = shl nuw i32 %conv70.i, 24
  %arrayidx73.i = getelementptr %struct.stp_config_pdu, ptr %retval.0.i.i6085, i32 0, i32 2, i32 1
  %105 = ptrtoint ptr %arrayidx73.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx73.i, align 1
  %conv74.i = zext i8 %106 to i32
  %shl75.i = shl nuw nsw i32 %conv74.i, 16
  %or76.i = or i32 %shl75.i, %shl71.i
  %arrayidx78.i = getelementptr %struct.stp_config_pdu, ptr %retval.0.i.i6085, i32 0, i32 2, i32 2
  %107 = ptrtoint ptr %arrayidx78.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx78.i, align 1
  %conv79.i = zext i8 %108 to i32
  %shl80.i = shl nuw nsw i32 %conv79.i, 8
  %or81.i = or i32 %or76.i, %shl80.i
  %arrayidx83.i = getelementptr %struct.stp_config_pdu, ptr %retval.0.i.i6085, i32 0, i32 2, i32 3
  %109 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx83.i, align 1
  %conv84.i = zext i8 %110 to i32
  %or85.i = or i32 %or81.i, %conv84.i
  %root_costl.i = getelementptr inbounds %struct.ebt_stp_info, ptr %2, i32 0, i32 1, i32 5
  %111 = ptrtoint ptr %root_costl.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %root_costl.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or85.i, i32 %112)
  %cmp86.i = icmp ult i32 %or85.i, %112
  br i1 %cmp86.i, label %if.then68.lor.end91_crit_edge.i, label %lor.end91.i

if.then68.lor.end91_crit_edge.i:                  ; preds = %if.then68.i
  %invflags93488.i = getelementptr inbounds %struct.ebt_stp_info, ptr %2, i32 0, i32 3
  %113 = ptrtoint ptr %invflags93488.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %invflags93488.i, align 2
  %115 = and i16 %114, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %115)
  %.not495.i = icmp eq i16 %115, 0
  br i1 %.not495.i, label %if.then68.lor.end91_crit_edge.i.cleanup_crit_edge, label %if.then68.lor.end91_crit_edge.i.if.end105.i_crit_edge

if.then68.lor.end91_crit_edge.i.if.end105.i_crit_edge: ; preds = %if.then68.lor.end91_crit_edge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end105.i

if.then68.lor.end91_crit_edge.i.cleanup_crit_edge: ; preds = %if.then68.lor.end91_crit_edge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.end91.i:                                      ; preds = %if.then68.i
  %root_costu.i = getelementptr inbounds %struct.ebt_stp_info, ptr %2, i32 0, i32 1, i32 6
  %116 = ptrtoint ptr %root_costu.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %root_costu.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or85.i, i32 %117)
  %cmp89.i = icmp ugt i32 %or85.i, %117
  %invflags93.i = getelementptr inbounds %struct.ebt_stp_info, ptr %2, i32 0, i32 3
  %118 = ptrtoint ptr %invflags93.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %invflags93.i, align 2
  %120 = and i16 %119, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %120)
  %121 = icmp eq i16 %120, 0
  %tobool102.not.i = xor i1 %cmp89.i, %121
  br i1 %tobool102.not.i, label %lor.end91.i.if.end105.i_crit_edge, label %lor.end91.i.cleanup_crit_edge

lor.end91.i.cleanup_crit_edge:                    ; preds = %lor.end91.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.end91.i.if.end105.i_crit_edge:                ; preds = %lor.end91.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end105.i

if.end105.i:                                      ; preds = %lor.end91.i.if.end105.i_crit_edge, %if.then68.lor.end91_crit_edge.i.if.end105.i_crit_edge, %if.end63.i.if.end105.i_crit_edge
  %122 = and i16 %32, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %122)
  %tobool109.not.i = icmp eq i16 %122, 0
  br i1 %tobool109.not.i, label %if.end105.i.if.end142.i_crit_edge, label %if.then110.i

if.end105.i.if.end142.i_crit_edge:                ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end142.i

if.then110.i:                                     ; preds = %if.end105.i
  %sender.i = getelementptr inbounds %struct.stp_config_pdu, ptr %retval.0.i.i6085, i32 0, i32 3
  %123 = ptrtoint ptr %sender.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %sender.i, align 1
  %conv112.i = zext i8 %124 to i32
  %shl113.i = shl nuw nsw i32 %conv112.i, 8
  %arrayidx115.i = getelementptr %struct.stp_config_pdu, ptr %retval.0.i.i6085, i32 0, i32 3, i32 1
  %125 = ptrtoint ptr %arrayidx115.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx115.i, align 1
  %conv116.i = zext i8 %126 to i32
  %or117.i = or i32 %shl113.i, %conv116.i
  %sender_priol.i = getelementptr inbounds %struct.ebt_stp_info, ptr %2, i32 0, i32 1, i32 7
  %127 = ptrtoint ptr %sender_priol.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %sender_priol.i, align 4
  %conv120.i = zext i16 %128 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or117.i, i32 %conv120.i)
  %cmp121.i = icmp ult i32 %or117.i, %conv120.i
  br i1 %cmp121.i, label %if.then110.lor.end128_crit_edge.i, label %lor.end128.i

if.then110.lor.end128_crit_edge.i:                ; preds = %if.then110.i
  %invflags130490.i = getelementptr inbounds %struct.ebt_stp_info, ptr %2, i32 0, i32 3
  %129 = ptrtoint ptr %invflags130490.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %invflags130490.i, align 2
  %131 = and i16 %130, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %131)
  %.not494.i = icmp eq i16 %131, 0
  br i1 %.not494.i, label %if.then110.lor.end128_crit_edge.i.cleanup_crit_edge, label %if.then110.lor.end128_crit_edge.i.if.end142.i_crit_edge

if.then110.lor.end128_crit_edge.i.if.end142.i_crit_edge: ; preds = %if.then110.lor.end128_crit_edge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end142.i

if.then110.lor.end128_crit_edge.i.cleanup_crit_edge: ; preds = %if.then110.lor.end128_crit_edge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.end128.i:                                     ; preds = %if.then110.i
  %sender_priou.i = getelementptr inbounds %struct.ebt_stp_info, ptr %2, i32 0, i32 1, i32 8
  %132 = ptrtoint ptr %sender_priou.i to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %sender_priou.i, align 2
  %conv125.i = zext i16 %133 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or117.i, i32 %conv125.i)
  %cmp126.i = icmp ugt i32 %or117.i, %conv125.i
  %invflags130.i = getelementptr inbounds %struct.ebt_stp_info, ptr %2, i32 0, i32 3
  %134 = ptrtoint ptr %invflags130.i to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %invflags130.i, align 2
  %136 = and i16 %135, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %136)
  %137 = icmp eq i16 %136, 0
  %tobool139.not.i = xor i1 %cmp126.i, %137
  br i1 %tobool139.not.i, label %lor.end128.i.if.end142.i_crit_edge, label %lor.end128.i.cleanup_crit_edge

lor.end128.i.cleanup_crit_edge:                   ; preds = %lor.end128.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.end128.i.if.end142.i_crit_edge:               ; preds = %lor.end128.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end142.i

if.end142.i:                                      ; preds = %lor.end128.i.if.end142.i_crit_edge, %if.then110.lor.end128_crit_edge.i.if.end142.i_crit_edge, %if.end105.i.if.end142.i_crit_edge
  %138 = and i16 %32, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %138)
  %tobool146.not.i = icmp eq i16 %138, 0
  br i1 %tobool146.not.i, label %if.end142.i.if.end167.i_crit_edge, label %if.then147.i

if.end142.i.if.end167.i_crit_edge:                ; preds = %if.end142.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end167.i

if.then147.i:                                     ; preds = %if.end142.i
  %arrayidx149.i = getelementptr %struct.stp_config_pdu, ptr %retval.0.i.i6085, i32 0, i32 3, i32 2
  %sender_addr.i = getelementptr inbounds %struct.ebt_stp_info, ptr %2, i32 0, i32 1, i32 9
  %sender_addrmsk.i = getelementptr inbounds %struct.ebt_stp_info, ptr %2, i32 0, i32 1, i32 10
  %139 = ptrtoint ptr %arrayidx149.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx149.i, align 1
  %141 = ptrtoint ptr %sender_addr.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %sender_addr.i, align 1
  %xor9.i445.i = xor i8 %142, %140
  %143 = ptrtoint ptr %sender_addrmsk.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %sender_addrmsk.i, align 1
  %and10.i446.i = and i8 %xor9.i445.i, %144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and10.i446.i)
  %tobool.not.i447.i = icmp eq i8 %and10.i446.i, 0
  br i1 %tobool.not.i447.i, label %for.cond.i454.i, label %if.then147.i.ether_addr_equal_masked.exit484.thr_comm.i_crit_edge

if.then147.i.ether_addr_equal_masked.exit484.thr_comm.i_crit_edge: ; preds = %if.then147.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ether_addr_equal_masked.exit484.thr_comm.i

for.cond.i454.i:                                  ; preds = %if.then147.i
  %arrayidx.1.i448.i = getelementptr %struct.stp_config_pdu, ptr %retval.0.i.i6085, i32 0, i32 3, i32 3
  %145 = ptrtoint ptr %arrayidx.1.i448.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %arrayidx.1.i448.i, align 1
  %arrayidx1.1.i449.i = getelementptr %struct.ebt_stp_info, ptr %2, i32 0, i32 1, i32 9, i32 1
  %147 = ptrtoint ptr %arrayidx1.1.i449.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx1.1.i449.i, align 1
  %xor9.1.i450.i = xor i8 %148, %146
  %arrayidx3.1.i451.i = getelementptr %struct.ebt_stp_info, ptr %2, i32 0, i32 1, i32 10, i32 1
  %149 = ptrtoint ptr %arrayidx3.1.i451.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %arrayidx3.1.i451.i, align 1
  %and10.1.i452.i = and i8 %xor9.1.i450.i, %150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and10.1.i452.i)
  %tobool.not.1.i453.i = icmp eq i8 %and10.1.i452.i, 0
  br i1 %tobool.not.1.i453.i, label %for.cond.1.i461.i, label %for.cond.i454.i.ether_addr_equal_masked.exit484.thr_comm.i_crit_edge

for.cond.i454.i.ether_addr_equal_masked.exit484.thr_comm.i_crit_edge: ; preds = %for.cond.i454.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ether_addr_equal_masked.exit484.thr_comm.i

for.cond.1.i461.i:                                ; preds = %for.cond.i454.i
  %arrayidx.2.i455.i = getelementptr %struct.stp_config_pdu, ptr %retval.0.i.i6085, i32 0, i32 3, i32 4
  %151 = ptrtoint ptr %arrayidx.2.i455.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %arrayidx.2.i455.i, align 1
  %arrayidx1.2.i456.i = getelementptr %struct.ebt_stp_info, ptr %2, i32 0, i32 1, i32 9, i32 2
  %153 = ptrtoint ptr %arrayidx1.2.i456.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %arrayidx1.2.i456.i, align 1
  %xor9.2.i457.i = xor i8 %154, %152
  %arrayidx3.2.i458.i = getelementptr %struct.ebt_stp_info, ptr %2, i32 0, i32 1, i32 10, i32 2
  %155 = ptrtoint ptr %arrayidx3.2.i458.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %arrayidx3.2.i458.i, align 1
  %and10.2.i459.i = and i8 %xor9.2.i457.i, %156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and10.2.i459.i)
  %tobool.not.2.i460.i = icmp eq i8 %and10.2.i459.i, 0
  br i1 %tobool.not.2.i460.i, label %for.cond.2.i468.i, label %for.cond.1.i461.i.ether_addr_equal_masked.exit484.thr_comm.i_crit_edge

for.cond.1.i461.i.ether_addr_equal_masked.exit484.thr_comm.i_crit_edge: ; preds = %for.cond.1.i461.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ether_addr_equal_masked.exit484.thr_comm.i

for.cond.2.i468.i:                                ; preds = %for.cond.1.i461.i
  %arrayidx.3.i462.i = getelementptr %struct.stp_config_pdu, ptr %retval.0.i.i6085, i32 0, i32 3, i32 5
  %157 = ptrtoint ptr %arrayidx.3.i462.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %arrayidx.3.i462.i, align 1
  %arrayidx1.3.i463.i = getelementptr %struct.ebt_stp_info, ptr %2, i32 0, i32 1, i32 9, i32 3
  %159 = ptrtoint ptr %arrayidx1.3.i463.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %arrayidx1.3.i463.i, align 1
  %xor9.3.i464.i = xor i8 %160, %158
  %arrayidx3.3.i465.i = getelementptr %struct.ebt_stp_info, ptr %2, i32 0, i32 1, i32 10, i32 3
  %161 = ptrtoint ptr %arrayidx3.3.i465.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %arrayidx3.3.i465.i, align 1
  %and10.3.i466.i = and i8 %xor9.3.i464.i, %162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and10.3.i466.i)
  %tobool.not.3.i467.i = icmp eq i8 %and10.3.i466.i, 0
  br i1 %tobool.not.3.i467.i, label %for.cond.3.i475.i, label %for.cond.2.i468.i.ether_addr_equal_masked.exit484.thr_comm.i_crit_edge

for.cond.2.i468.i.ether_addr_equal_masked.exit484.thr_comm.i_crit_edge: ; preds = %for.cond.2.i468.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ether_addr_equal_masked.exit484.thr_comm.i

for.cond.3.i475.i:                                ; preds = %for.cond.2.i468.i
  %arrayidx.4.i469.i = getelementptr %struct.stp_config_pdu, ptr %retval.0.i.i6085, i32 0, i32 3, i32 6
  %163 = ptrtoint ptr %arrayidx.4.i469.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %arrayidx.4.i469.i, align 1
  %arrayidx1.4.i470.i = getelementptr %struct.ebt_stp_info, ptr %2, i32 0, i32 1, i32 9, i32 4
  %165 = ptrtoint ptr %arrayidx1.4.i470.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %arrayidx1.4.i470.i, align 1
  %xor9.4.i471.i = xor i8 %166, %164
  %arrayidx3.4.i472.i = getelementptr %struct.ebt_stp_info, ptr %2, i32 0, i32 1, i32 10, i32 4
  %167 = ptrtoint ptr %arrayidx3.4.i472.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %arrayidx3.4.i472.i, align 1
  %and10.4.i473.i = and i8 %xor9.4.i471.i, %168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and10.4.i473.i)
  %tobool.not.4.i474.i = icmp eq i8 %and10.4.i473.i, 0
  br i1 %tobool.not.4.i474.i, label %ether_addr_equal_masked.exit484.i, label %for.cond.3.i475.i.ether_addr_equal_masked.exit484.thr_comm.i_crit_edge

for.cond.3.i475.i.ether_addr_equal_masked.exit484.thr_comm.i_crit_edge: ; preds = %for.cond.3.i475.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ether_addr_equal_masked.exit484.thr_comm.i

ether_addr_equal_masked.exit484.thr_comm.i:       ; preds = %for.cond.3.i475.i.ether_addr_equal_masked.exit484.thr_comm.i_crit_edge, %for.cond.2.i468.i.ether_addr_equal_masked.exit484.thr_comm.i_crit_edge, %for.cond.1.i461.i.ether_addr_equal_masked.exit484.thr_comm.i_crit_edge, %for.cond.i454.i.ether_addr_equal_masked.exit484.thr_comm.i_crit_edge, %if.then147.i.ether_addr_equal_masked.exit484.thr_comm.i_crit_edge
  %invflags155492.i = getelementptr inbounds %struct.ebt_stp_info, ptr %2, i32 0, i32 3
  %169 = ptrtoint ptr %invflags155492.i to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %invflags155492.i, align 2
  %171 = and i16 %170, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %171)
  %.not493.i = icmp eq i16 %171, 0
  br i1 %.not493.i, label %ether_addr_equal_masked.exit484.thr_comm.i.cleanup_crit_edge, label %ether_addr_equal_masked.exit484.thr_comm.i.if.end167.i_crit_edge

ether_addr_equal_masked.exit484.thr_comm.i.if.end167.i_crit_edge: ; preds = %ether_addr_equal_masked.exit484.thr_comm.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end167.i

ether_addr_equal_masked.exit484.thr_comm.i.cleanup_crit_edge: ; preds = %ether_addr_equal_masked.exit484.thr_comm.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

ether_addr_equal_masked.exit484.i:                ; preds = %for.cond.3.i475.i
  %arrayidx.5.i476.i = getelementptr %struct.stp_config_pdu, ptr %retval.0.i.i6085, i32 0, i32 3, i32 7
  %172 = ptrtoint ptr %arrayidx.5.i476.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %arrayidx.5.i476.i, align 1
  %arrayidx1.5.i477.i = getelementptr %struct.ebt_stp_info, ptr %2, i32 0, i32 1, i32 9, i32 5
  %174 = ptrtoint ptr %arrayidx1.5.i477.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %arrayidx1.5.i477.i, align 1
  %xor9.5.i478.i = xor i8 %175, %173
  %arrayidx3.5.i479.i = getelementptr %struct.ebt_stp_info, ptr %2, i32 0, i32 1, i32 10, i32 5
  %176 = ptrtoint ptr %arrayidx3.5.i479.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %arrayidx3.5.i479.i, align 1
  %and10.5.i480.i = and i8 %xor9.5.i478.i, %177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and10.5.i480.i)
  %tobool.not.5.i481.i = icmp eq i8 %and10.5.i480.i, 0
  %invflags155.i = getelementptr inbounds %struct.ebt_stp_info, ptr %2, i32 0, i32 3
  %178 = ptrtoint ptr %invflags155.i to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %invflags155.i, align 2
  %180 = and i16 %179, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %180)
  %181 = icmp ne i16 %180, 0
  %tobool164.not.i = xor i1 %tobool.not.5.i481.i, %181
  br i1 %tobool164.not.i, label %ether_addr_equal_masked.exit484.i.if.end167.i_crit_edge, label %ether_addr_equal_masked.exit484.i.cleanup_crit_edge

ether_addr_equal_masked.exit484.i.cleanup_crit_edge: ; preds = %ether_addr_equal_masked.exit484.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

ether_addr_equal_masked.exit484.i.if.end167.i_crit_edge: ; preds = %ether_addr_equal_masked.exit484.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end167.i

if.end167.i:                                      ; preds = %ether_addr_equal_masked.exit484.i.if.end167.i_crit_edge, %ether_addr_equal_masked.exit484.thr_comm.i.if.end167.i_crit_edge, %if.end142.i.if.end167.i_crit_edge
  %182 = and i16 %32, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %182)
  %tobool171.not.i = icmp eq i16 %182, 0
  br i1 %tobool171.not.i, label %if.end167.i.if.end204.i_crit_edge, label %if.then172.i

if.end167.i.if.end204.i_crit_edge:                ; preds = %if.end167.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end204.i

if.then172.i:                                     ; preds = %if.end167.i
  %port.i = getelementptr inbounds %struct.stp_config_pdu, ptr %retval.0.i.i6085, i32 0, i32 4
  %183 = ptrtoint ptr %port.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %port.i, align 1
  %conv174.i = zext i8 %184 to i32
  %shl175.i = shl nuw nsw i32 %conv174.i, 8
  %arrayidx177.i = getelementptr %struct.stp_config_pdu, ptr %retval.0.i.i6085, i32 0, i32 4, i32 1
  %185 = ptrtoint ptr %arrayidx177.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %arrayidx177.i, align 1
  %conv178.i = zext i8 %186 to i32
  %or179.i = or i32 %shl175.i, %conv178.i
  %portl.i = getelementptr inbounds %struct.ebt_stp_info, ptr %2, i32 0, i32 1, i32 11
  %187 = ptrtoint ptr %portl.i to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %portl.i, align 4
  %conv182.i = zext i16 %188 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or179.i, i32 %conv182.i)
  %cmp183.i = icmp ult i32 %or179.i, %conv182.i
  br i1 %cmp183.i, label %if.then172.i.lor.end190.i_crit_edge, label %lor.rhs185.i

if.then172.i.lor.end190.i_crit_edge:              ; preds = %if.then172.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end190.i

lor.rhs185.i:                                     ; preds = %if.then172.i
  call void @__sanitizer_cov_trace_pc() #8
  %portu.i = getelementptr inbounds %struct.ebt_stp_info, ptr %2, i32 0, i32 1, i32 12
  %189 = ptrtoint ptr %portu.i to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %portu.i, align 2
  %conv187.i = zext i16 %190 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or179.i, i32 %conv187.i)
  %cmp188.i = icmp ugt i32 %or179.i, %conv187.i
  %phi.cast437.i = zext i1 %cmp188.i to i32
  br label %lor.end190.i

lor.end190.i:                                     ; preds = %lor.rhs185.i, %if.then172.i.lor.end190.i_crit_edge
  %191 = phi i32 [ 1, %if.then172.i.lor.end190.i_crit_edge ], [ %phi.cast437.i, %lor.rhs185.i ]
  %invflags192.i = getelementptr inbounds %struct.ebt_stp_info, ptr %2, i32 0, i32 3
  %192 = ptrtoint ptr %invflags192.i to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %invflags192.i, align 2
  %194 = lshr i16 %193, 7
  %.lobit438.i = and i16 %194, 1
  %195 = zext i16 %.lobit438.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %191, i32 %195)
  %tobool201.not.i = icmp eq i32 %191, %195
  br i1 %tobool201.not.i, label %lor.end190.i.if.end204.i_crit_edge, label %lor.end190.i.cleanup_crit_edge

lor.end190.i.cleanup_crit_edge:                   ; preds = %lor.end190.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.end190.i.if.end204.i_crit_edge:               ; preds = %lor.end190.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end204.i

if.end204.i:                                      ; preds = %lor.end190.i.if.end204.i_crit_edge, %if.end167.i.if.end204.i_crit_edge
  %196 = and i16 %32, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %196)
  %tobool208.not.i = icmp eq i16 %196, 0
  br i1 %tobool208.not.i, label %if.end204.i.if.end241.i_crit_edge, label %if.then209.i

if.end204.i.if.end241.i_crit_edge:                ; preds = %if.end204.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end241.i

if.then209.i:                                     ; preds = %if.end204.i
  %msg_age.i = getelementptr inbounds %struct.stp_config_pdu, ptr %retval.0.i.i6085, i32 0, i32 5
  %197 = ptrtoint ptr %msg_age.i to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %msg_age.i, align 1
  %conv211.i = zext i8 %198 to i32
  %shl212.i = shl nuw nsw i32 %conv211.i, 8
  %arrayidx214.i = getelementptr %struct.stp_config_pdu, ptr %retval.0.i.i6085, i32 0, i32 5, i32 1
  %199 = ptrtoint ptr %arrayidx214.i to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %arrayidx214.i, align 1
  %conv215.i = zext i8 %200 to i32
  %or216.i = or i32 %shl212.i, %conv215.i
  %msg_agel.i = getelementptr inbounds %struct.ebt_stp_info, ptr %2, i32 0, i32 1, i32 13
  %201 = ptrtoint ptr %msg_agel.i to i32
  call void @__asan_load2_noabort(i32 %201)
  %202 = load i16, ptr %msg_agel.i, align 4
  %conv219.i = zext i16 %202 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or216.i, i32 %conv219.i)
  %cmp220.i = icmp ult i32 %or216.i, %conv219.i
  br i1 %cmp220.i, label %if.then209.i.lor.end227.i_crit_edge, label %lor.rhs222.i

if.then209.i.lor.end227.i_crit_edge:              ; preds = %if.then209.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end227.i

lor.rhs222.i:                                     ; preds = %if.then209.i
  call void @__sanitizer_cov_trace_pc() #8
  %msg_ageu.i = getelementptr inbounds %struct.ebt_stp_info, ptr %2, i32 0, i32 1, i32 14
  %203 = ptrtoint ptr %msg_ageu.i to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %msg_ageu.i, align 2
  %conv224.i = zext i16 %204 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or216.i, i32 %conv224.i)
  %cmp225.i = icmp ugt i32 %or216.i, %conv224.i
  %phi.cast435.i = zext i1 %cmp225.i to i32
  br label %lor.end227.i

lor.end227.i:                                     ; preds = %lor.rhs222.i, %if.then209.i.lor.end227.i_crit_edge
  %205 = phi i32 [ 1, %if.then209.i.lor.end227.i_crit_edge ], [ %phi.cast435.i, %lor.rhs222.i ]
  %invflags229.i = getelementptr inbounds %struct.ebt_stp_info, ptr %2, i32 0, i32 3
  %206 = ptrtoint ptr %invflags229.i to i32
  call void @__asan_load2_noabort(i32 %206)
  %207 = load i16, ptr %invflags229.i, align 2
  %208 = lshr i16 %207, 8
  %.lobit436.i = and i16 %208, 1
  %209 = zext i16 %.lobit436.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %205, i32 %209)
  %tobool238.not.i = icmp eq i32 %205, %209
  br i1 %tobool238.not.i, label %lor.end227.i.if.end241.i_crit_edge, label %lor.end227.i.cleanup_crit_edge

lor.end227.i.cleanup_crit_edge:                   ; preds = %lor.end227.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.end227.i.if.end241.i_crit_edge:               ; preds = %lor.end227.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end241.i

if.end241.i:                                      ; preds = %lor.end227.i.if.end241.i_crit_edge, %if.end204.i.if.end241.i_crit_edge
  %210 = and i16 %32, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %210)
  %tobool245.not.i = icmp eq i16 %210, 0
  br i1 %tobool245.not.i, label %if.end241.i.if.end278.i_crit_edge, label %if.then246.i

if.end241.i.if.end278.i_crit_edge:                ; preds = %if.end241.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end278.i

if.then246.i:                                     ; preds = %if.end241.i
  %max_age.i = getelementptr inbounds %struct.stp_config_pdu, ptr %retval.0.i.i6085, i32 0, i32 6
  %211 = ptrtoint ptr %max_age.i to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %max_age.i, align 1
  %conv248.i = zext i8 %212 to i32
  %shl249.i = shl nuw nsw i32 %conv248.i, 8
  %arrayidx251.i = getelementptr %struct.stp_config_pdu, ptr %retval.0.i.i6085, i32 0, i32 6, i32 1
  %213 = ptrtoint ptr %arrayidx251.i to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %arrayidx251.i, align 1
  %conv252.i = zext i8 %214 to i32
  %or253.i = or i32 %shl249.i, %conv252.i
  %max_agel.i = getelementptr inbounds %struct.ebt_stp_info, ptr %2, i32 0, i32 1, i32 15
  %215 = ptrtoint ptr %max_agel.i to i32
  call void @__asan_load2_noabort(i32 %215)
  %216 = load i16, ptr %max_agel.i, align 4
  %conv256.i = zext i16 %216 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or253.i, i32 %conv256.i)
  %cmp257.i = icmp ult i32 %or253.i, %conv256.i
  br i1 %cmp257.i, label %if.then246.i.lor.end264.i_crit_edge, label %lor.rhs259.i

if.then246.i.lor.end264.i_crit_edge:              ; preds = %if.then246.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end264.i

lor.rhs259.i:                                     ; preds = %if.then246.i
  call void @__sanitizer_cov_trace_pc() #8
  %max_ageu.i = getelementptr inbounds %struct.ebt_stp_info, ptr %2, i32 0, i32 1, i32 16
  %217 = ptrtoint ptr %max_ageu.i to i32
  call void @__asan_load2_noabort(i32 %217)
  %218 = load i16, ptr %max_ageu.i, align 2
  %conv261.i = zext i16 %218 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or253.i, i32 %conv261.i)
  %cmp262.i = icmp ugt i32 %or253.i, %conv261.i
  %phi.cast433.i = zext i1 %cmp262.i to i32
  br label %lor.end264.i

lor.end264.i:                                     ; preds = %lor.rhs259.i, %if.then246.i.lor.end264.i_crit_edge
  %219 = phi i32 [ 1, %if.then246.i.lor.end264.i_crit_edge ], [ %phi.cast433.i, %lor.rhs259.i ]
  %invflags266.i = getelementptr inbounds %struct.ebt_stp_info, ptr %2, i32 0, i32 3
  %220 = ptrtoint ptr %invflags266.i to i32
  call void @__asan_load2_noabort(i32 %220)
  %221 = load i16, ptr %invflags266.i, align 2
  %222 = lshr i16 %221, 9
  %.lobit434.i = and i16 %222, 1
  %223 = zext i16 %.lobit434.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %219, i32 %223)
  %tobool275.not.i = icmp eq i32 %219, %223
  br i1 %tobool275.not.i, label %lor.end264.i.if.end278.i_crit_edge, label %lor.end264.i.cleanup_crit_edge

lor.end264.i.cleanup_crit_edge:                   ; preds = %lor.end264.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.end264.i.if.end278.i_crit_edge:               ; preds = %lor.end264.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end278.i

if.end278.i:                                      ; preds = %lor.end264.i.if.end278.i_crit_edge, %if.end241.i.if.end278.i_crit_edge
  %224 = and i16 %32, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %224)
  %tobool282.not.i = icmp eq i16 %224, 0
  br i1 %tobool282.not.i, label %if.end278.i.if.end315.i_crit_edge, label %if.then283.i

if.end278.i.if.end315.i_crit_edge:                ; preds = %if.end278.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end315.i

if.then283.i:                                     ; preds = %if.end278.i
  %hello_time.i = getelementptr inbounds %struct.stp_config_pdu, ptr %retval.0.i.i6085, i32 0, i32 7
  %225 = ptrtoint ptr %hello_time.i to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %hello_time.i, align 1
  %conv285.i = zext i8 %226 to i32
  %shl286.i = shl nuw nsw i32 %conv285.i, 8
  %arrayidx288.i = getelementptr %struct.stp_config_pdu, ptr %retval.0.i.i6085, i32 0, i32 7, i32 1
  %227 = ptrtoint ptr %arrayidx288.i to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %arrayidx288.i, align 1
  %conv289.i = zext i8 %228 to i32
  %or290.i = or i32 %shl286.i, %conv289.i
  %hello_timel.i = getelementptr inbounds %struct.ebt_stp_info, ptr %2, i32 0, i32 1, i32 17
  %229 = ptrtoint ptr %hello_timel.i to i32
  call void @__asan_load2_noabort(i32 %229)
  %230 = load i16, ptr %hello_timel.i, align 4
  %conv293.i = zext i16 %230 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or290.i, i32 %conv293.i)
  %cmp294.i = icmp ult i32 %or290.i, %conv293.i
  br i1 %cmp294.i, label %if.then283.i.lor.end301.i_crit_edge, label %lor.rhs296.i

if.then283.i.lor.end301.i_crit_edge:              ; preds = %if.then283.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end301.i

lor.rhs296.i:                                     ; preds = %if.then283.i
  call void @__sanitizer_cov_trace_pc() #8
  %hello_timeu.i = getelementptr inbounds %struct.ebt_stp_info, ptr %2, i32 0, i32 1, i32 18
  %231 = ptrtoint ptr %hello_timeu.i to i32
  call void @__asan_load2_noabort(i32 %231)
  %232 = load i16, ptr %hello_timeu.i, align 2
  %conv298.i = zext i16 %232 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or290.i, i32 %conv298.i)
  %cmp299.i = icmp ugt i32 %or290.i, %conv298.i
  %phi.cast431.i = zext i1 %cmp299.i to i32
  br label %lor.end301.i

lor.end301.i:                                     ; preds = %lor.rhs296.i, %if.then283.i.lor.end301.i_crit_edge
  %233 = phi i32 [ 1, %if.then283.i.lor.end301.i_crit_edge ], [ %phi.cast431.i, %lor.rhs296.i ]
  %invflags303.i = getelementptr inbounds %struct.ebt_stp_info, ptr %2, i32 0, i32 3
  %234 = ptrtoint ptr %invflags303.i to i32
  call void @__asan_load2_noabort(i32 %234)
  %235 = load i16, ptr %invflags303.i, align 2
  %236 = lshr i16 %235, 10
  %.lobit432.i = and i16 %236, 1
  %237 = zext i16 %.lobit432.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %233, i32 %237)
  %tobool312.not.i = icmp eq i32 %233, %237
  br i1 %tobool312.not.i, label %lor.end301.i.if.end315.i_crit_edge, label %lor.end301.i.cleanup_crit_edge

lor.end301.i.cleanup_crit_edge:                   ; preds = %lor.end301.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.end301.i.if.end315.i_crit_edge:               ; preds = %lor.end301.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end315.i

if.end315.i:                                      ; preds = %lor.end301.i.if.end315.i_crit_edge, %if.end278.i.if.end315.i_crit_edge
  %238 = and i16 %32, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %238)
  %tobool319.not.i = icmp eq i16 %238, 0
  br i1 %tobool319.not.i, label %if.end315.i.if.end352.i_crit_edge, label %if.then320.i

if.end315.i.if.end352.i_crit_edge:                ; preds = %if.end315.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end352.i

if.then320.i:                                     ; preds = %if.end315.i
  %forward_delay.i = getelementptr inbounds %struct.stp_config_pdu, ptr %retval.0.i.i6085, i32 0, i32 8
  %239 = ptrtoint ptr %forward_delay.i to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %forward_delay.i, align 1
  %conv322.i = zext i8 %240 to i32
  %shl323.i = shl nuw nsw i32 %conv322.i, 8
  %arrayidx325.i = getelementptr %struct.stp_config_pdu, ptr %retval.0.i.i6085, i32 0, i32 8, i32 1
  %241 = ptrtoint ptr %arrayidx325.i to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %arrayidx325.i, align 1
  %conv326.i = zext i8 %242 to i32
  %or327.i = or i32 %shl323.i, %conv326.i
  %forward_delayl.i = getelementptr inbounds %struct.ebt_stp_info, ptr %2, i32 0, i32 1, i32 19
  %243 = ptrtoint ptr %forward_delayl.i to i32
  call void @__asan_load2_noabort(i32 %243)
  %244 = load i16, ptr %forward_delayl.i, align 4
  %conv330.i = zext i16 %244 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or327.i, i32 %conv330.i)
  %cmp331.i = icmp ult i32 %or327.i, %conv330.i
  br i1 %cmp331.i, label %if.then320.i.lor.end338.i_crit_edge, label %lor.rhs333.i

if.then320.i.lor.end338.i_crit_edge:              ; preds = %if.then320.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end338.i

lor.rhs333.i:                                     ; preds = %if.then320.i
  call void @__sanitizer_cov_trace_pc() #8
  %forward_delayu.i = getelementptr inbounds %struct.ebt_stp_info, ptr %2, i32 0, i32 1, i32 20
  %245 = ptrtoint ptr %forward_delayu.i to i32
  call void @__asan_load2_noabort(i32 %245)
  %246 = load i16, ptr %forward_delayu.i, align 2
  %conv335.i = zext i16 %246 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or327.i, i32 %conv335.i)
  %cmp336.i = icmp ugt i32 %or327.i, %conv335.i
  %phi.cast.i = zext i1 %cmp336.i to i32
  br label %lor.end338.i

lor.end338.i:                                     ; preds = %lor.rhs333.i, %if.then320.i.lor.end338.i_crit_edge
  %247 = phi i32 [ 1, %if.then320.i.lor.end338.i_crit_edge ], [ %phi.cast.i, %lor.rhs333.i ]
  %invflags340.i = getelementptr inbounds %struct.ebt_stp_info, ptr %2, i32 0, i32 3
  %248 = ptrtoint ptr %invflags340.i to i32
  call void @__asan_load2_noabort(i32 %248)
  %249 = load i16, ptr %invflags340.i, align 2
  %250 = lshr i16 %249, 11
  %.lobit.i = and i16 %250, 1
  %251 = zext i16 %.lobit.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %247, i32 %251)
  %tobool349.not.i = icmp eq i32 %247, %251
  br i1 %tobool349.not.i, label %lor.end338.i.if.end352.i_crit_edge, label %lor.end338.i.cleanup_crit_edge

lor.end338.i.cleanup_crit_edge:                   ; preds = %lor.end338.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.end338.i.if.end352.i_crit_edge:               ; preds = %lor.end338.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end352.i

if.end352.i:                                      ; preds = %lor.end338.i.if.end352.i_crit_edge, %if.end315.i.if.end352.i_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end352.i, %lor.end338.i.cleanup_crit_edge, %lor.end301.i.cleanup_crit_edge, %lor.end264.i.cleanup_crit_edge, %lor.end227.i.cleanup_crit_edge, %lor.end190.i.cleanup_crit_edge, %ether_addr_equal_masked.exit484.i.cleanup_crit_edge, %ether_addr_equal_masked.exit484.thr_comm.i.cleanup_crit_edge, %lor.end128.i.cleanup_crit_edge, %if.then110.lor.end128_crit_edge.i.cleanup_crit_edge, %lor.end91.i.cleanup_crit_edge, %if.then68.lor.end91_crit_edge.i.cleanup_crit_edge, %ether_addr_equal_masked.exit.i.cleanup_crit_edge, %ether_addr_equal_masked.exit.thr_comm.i.cleanup_crit_edge, %lor.end.i.cleanup_crit_edge, %if.then14.lor.end_crit_edge.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %skb_header_pointer.exit61.cleanup_crit_edge, %lor.lhs.false.i.i59.cleanup_crit_edge, %if.end.i.i55.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %skb_header_pointer.exit61.cleanup_crit_edge ], [ true, %if.end352.i ], [ false, %land.lhs.true.i.cleanup_crit_edge ], [ false, %lor.end.i.cleanup_crit_edge ], [ false, %ether_addr_equal_masked.exit.i.cleanup_crit_edge ], [ false, %lor.end91.i.cleanup_crit_edge ], [ false, %lor.end128.i.cleanup_crit_edge ], [ false, %ether_addr_equal_masked.exit484.i.cleanup_crit_edge ], [ false, %lor.end190.i.cleanup_crit_edge ], [ false, %lor.end227.i.cleanup_crit_edge ], [ false, %lor.end264.i.cleanup_crit_edge ], [ false, %lor.end301.i.cleanup_crit_edge ], [ false, %lor.end338.i.cleanup_crit_edge ], [ false, %if.then14.lor.end_crit_edge.i.cleanup_crit_edge ], [ false, %ether_addr_equal_masked.exit.thr_comm.i.cleanup_crit_edge ], [ false, %if.then68.lor.end91_crit_edge.i.cleanup_crit_edge ], [ false, %if.then110.lor.end128_crit_edge.i.cleanup_crit_edge ], [ false, %ether_addr_equal_masked.exit484.thr_comm.i.cleanup_crit_edge ], [ false, %if.end.i.i55.cleanup_crit_edge ], [ false, %lor.lhs.false.i.i59.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %_stpc) #6
  br label %cleanup35

cleanup35:                                        ; preds = %cleanup, %if.end16.cleanup35_crit_edge, %land.lhs.true.cleanup35_crit_edge, %if.end.cleanup35_crit_edge, %skb_header_pointer.exit.cleanup35_crit_edge, %lor.lhs.false.i.i.cleanup35_crit_edge, %if.end.i.i.cleanup35_crit_edge
  %retval.1 = phi i1 [ %retval.0, %cleanup ], [ false, %skb_header_pointer.exit.cleanup35_crit_edge ], [ false, %if.end.cleanup35_crit_edge ], [ false, %land.lhs.true.cleanup35_crit_edge ], [ true, %if.end16.cleanup35_crit_edge ], [ false, %if.end.i.i.cleanup35_crit_edge ], [ false, %lor.lhs.false.i.i.cleanup35_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %_stph) #6
  ret i1 %retval.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ebt_stp_mt_check(ptr nocapture noundef readonly %par) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %entryinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 2
  %2 = ptrtoint ptr %entryinfo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entryinfo, align 4
  %bitmask = getelementptr inbounds %struct.ebt_stp_info, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %bitmask to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %bitmask, align 4
  %conv = zext i16 %5 to i32
  %and = and i32 %conv, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %invflags = getelementptr inbounds %struct.ebt_stp_info, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %invflags to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %invflags, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %7)
  %tobool3.not = icmp ugt i16 %7, 4095
  %and7 = and i32 %conv, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %or.cond = select i1 %tobool3.not, i1 true, i1 %tobool8.not
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %nft_compat = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 7
  %8 = ptrtoint ptr %nft_compat to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %nft_compat, align 1, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool9.not = icmp eq i8 %9, 0
  br i1 %tobool9.not, label %land.lhs.true, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

land.lhs.true:                                    ; preds = %if.end
  %destmac = getelementptr inbounds %struct.ebt_entry, ptr %3, i32 0, i32 9
  %10 = ptrtoint ptr %destmac to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %destmac, align 4
  %xor.i = xor i32 %11, 25215488
  %add.ptr.i = getelementptr %struct.ebt_entry, ptr %3, i32 0, i32 9, i32 4
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr.i, align 2
  %conv.i = zext i16 %13 to i32
  %or.i = or i32 %xor.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %lor.lhs.false10, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false10:                                  ; preds = %land.lhs.true
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %3, align 4
  %and12 = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %lor.lhs.false10.cleanup_crit_edge, label %lor.lhs.false14

lor.lhs.false10.cleanup_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false14:                                  ; preds = %lor.lhs.false10
  %destmsk = getelementptr inbounds %struct.ebt_entry, ptr %3, i32 0, i32 10
  %16 = ptrtoint ptr %destmsk to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %destmsk, align 2
  %add.ptr1.i = getelementptr %struct.ebt_entry, ptr %3, i32 0, i32 10, i32 2
  %18 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %add.ptr1.i, align 2
  %and9.i = and i16 %19, %17
  %add.ptr3.i = getelementptr %struct.ebt_entry, ptr %3, i32 0, i32 10, i32 4
  %20 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %add.ptr3.i, align 2
  %and510.i = and i16 %and9.i, %21
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i26 = icmp eq i16 %and510.i, -1
  br i1 %cmp.i26, label %lor.lhs.false14.if.end18_crit_edge, label %lor.lhs.false14.cleanup_crit_edge

lor.lhs.false14.cleanup_crit_edge:                ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false14.if.end18_crit_edge:               ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.end18:                                         ; preds = %lor.lhs.false14.if.end18_crit_edge, %if.end.if.end18_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %lor.lhs.false14.cleanup_crit_edge, %lor.lhs.false10.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end18 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false14.cleanup_crit_edge ], [ -22, %lor.lhs.false10.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @__initcall__kmod_ebt_stp__476_191_ebt_stp_init6, !1, !"__initcall__kmod_ebt_stp__476_191_ebt_stp_init6", i1 false, i1 false}
!1 = !{!"../net/bridge/netfilter/ebt_stp.c", i32 191, i32 1}
!2 = !{ptr @__exitcall_ebt_stp_fini, !3, !"__exitcall_ebt_stp_fini", i1 false, i1 false}
!3 = !{!"../net/bridge/netfilter/ebt_stp.c", i32 192, i32 1}
!4 = !{ptr @__UNIQUE_ID_description477, !5, !"__UNIQUE_ID_description477", i1 false, i1 false}
!5 = !{!"../net/bridge/netfilter/ebt_stp.c", i32 193, i32 1}
!6 = !{ptr @__UNIQUE_ID_file478, !7, !"__UNIQUE_ID_file478", i1 false, i1 false}
!7 = !{!"../net/bridge/netfilter/ebt_stp.c", i32 194, i32 1}
!8 = !{ptr @__UNIQUE_ID_license479, !7, !"__UNIQUE_ID_license479", i1 false, i1 false}
!9 = !{ptr @ebt_stp_mt_reg, !10, !"ebt_stp_mt_reg", i1 false, i1 false}
!10 = !{!"../net/bridge/netfilter/ebt_stp.c", i32 171, i32 24}
!11 = distinct !{null, !12, !"eth_reserved_addr_base", i1 false, i1 false}
!12 = !{!"../include/linux/etherdevice.h", i32 70, i32 17}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{!"branch_weights", i32 1, i32 2000}
!23 = !{i8 0, i8 2}
