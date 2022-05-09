; ModuleID = '/llk/IR_all_yes/net/bridge/netfilter/ebt_arp.c_pt.bc'
source_filename = "../net/bridge/netfilter/ebt_arp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_match = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.arphdr = type { i16, i16, i8, i8, i16 }
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
%struct.ebt_arp_info = type { i16, i16, i16, i32, i32, i32, i32, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8 }
%struct.xt_mtchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.ebt_entry = type { i32, i32, i16, [16 x i8], [16 x i8], [16 x i8], [16 x i8], [6 x i8], [6 x i8], [6 x i8], [6 x i8], i32, i32, i32, [0 x i8] }

@ebt_arp_mt_reg = internal global %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"arp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @ebt_arp_mt, ptr @ebt_arp_mt_check, ptr null, ptr null, ptr null, i32 52, i32 0, i32 0, i16 0, i16 7 }, section ".data..read_mostly", align 4
@__initcall__kmod_ebt_arp__476_135_ebt_arp_init6 = internal global ptr @ebt_arp_init, section ".initcall6.init", align 4
@__exitcall_ebt_arp_fini = internal global ptr @ebt_arp_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_description477 = internal constant [56 x i8] c"ebt_arp.description=Ebtables: ARP protocol packet match\00", section ".modinfo", align 1
@__UNIQUE_ID_file478 = internal constant [42 x i8] c"ebt_arp.file=net/bridge/netfilter/ebt_arp\00", section ".modinfo", align 1
@__UNIQUE_ID_license479 = internal constant [20 x i8] c"ebt_arp.license=GPL\00", section ".modinfo", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2054, i64 32821]
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_description477, ptr @__UNIQUE_ID_file478, ptr @__UNIQUE_ID_license479, ptr @__exitcall_ebt_arp_fini, ptr @__initcall__kmod_ebt_arp__476_135_ebt_arp_init6, ptr @ebt_arp_fini], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ebt_arp_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @xt_unregister_match(ptr noundef nonnull @ebt_arp_mt_reg) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ebt_arp_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_match(ptr noundef nonnull @ebt_arp_mt_reg) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @ebt_arp_mt(ptr noundef %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  %_arph = alloca %struct.arphdr, align 8
  %saddr = alloca i32, align 4
  %daddr = alloca i32, align 4
  %_mac = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_arph) #7
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %3 = ptrtoint ptr %_arph to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %_arph, align 8
  %4 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %6 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len.i.i, align 8
  %sub.i4.i = sub i32 %5, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 8
  br i1 %cmp.not.i.i, label %if.end.i.i, label %skb_header_pointer.exit, !prof !20

if.end.i.i:                                       ; preds = %entry
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.cleanup230_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.cleanup230_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup230

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef 0, ptr noundef nonnull %_arph, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.cleanup230_crit_edge, label %lor.lhs.false.i.i.if.end_crit_edge

lor.lhs.false.i.i.if.end_crit_edge:               ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false.i.i.cleanup230_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup230

skb_header_pointer.exit:                          ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %cmp = icmp eq ptr %9, null
  br i1 %cmp, label %skb_header_pointer.exit.cleanup230_crit_edge, label %skb_header_pointer.exit.if.end_crit_edge

skb_header_pointer.exit.if.end_crit_edge:         ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

skb_header_pointer.exit.cleanup230_crit_edge:     ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup230

if.end:                                           ; preds = %skb_header_pointer.exit.if.end_crit_edge, %lor.lhs.false.i.i.if.end_crit_edge
  %retval.0.i.i327 = phi ptr [ %9, %skb_header_pointer.exit.if.end_crit_edge ], [ %_arph, %lor.lhs.false.i.i.if.end_crit_edge ]
  %bitmask = getelementptr inbounds %struct.ebt_arp_info, ptr %2, i32 0, i32 11
  %10 = ptrtoint ptr %bitmask to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bitmask, align 4
  %12 = and i8 %11, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %if.end.if.end11_crit_edge, label %land.lhs.true

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %opcode = getelementptr inbounds %struct.ebt_arp_info, ptr %2, i32 0, i32 2
  %13 = ptrtoint ptr %opcode to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %opcode, align 4
  %ar_op = getelementptr inbounds %struct.arphdr, ptr %retval.0.i.i327, i32 0, i32 4
  %15 = ptrtoint ptr %ar_op to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %ar_op, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %16)
  %cmp3 = icmp eq i16 %14, %16
  %invflags = getelementptr inbounds %struct.ebt_arp_info, ptr %2, i32 0, i32 12
  %17 = ptrtoint ptr %invflags to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %invflags, align 1
  %19 = and i8 %18, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %20 = icmp ne i8 %19, 0
  %tobool9.not = xor i1 %cmp3, %20
  br i1 %tobool9.not, label %land.lhs.true.if.end11_crit_edge, label %land.lhs.true.cleanup230_crit_edge

land.lhs.true.cleanup230_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup230

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.end11:                                         ; preds = %land.lhs.true.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %21 = and i8 %11, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool15.not = icmp eq i8 %21, 0
  br i1 %tobool15.not, label %if.end11.if.end32_crit_edge, label %land.lhs.true16

if.end11.if.end32_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

land.lhs.true16:                                  ; preds = %if.end11
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %2, align 4
  %24 = ptrtoint ptr %retval.0.i.i327 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %retval.0.i.i327, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %25)
  %cmp19 = icmp eq i16 %23, %25
  %invflags21 = getelementptr inbounds %struct.ebt_arp_info, ptr %2, i32 0, i32 12
  %26 = ptrtoint ptr %invflags21 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %invflags21, align 1
  %28 = and i8 %27, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %29 = icmp ne i8 %28, 0
  %tobool30.not = xor i1 %cmp19, %29
  br i1 %tobool30.not, label %land.lhs.true16.if.end32_crit_edge, label %land.lhs.true16.cleanup230_crit_edge

land.lhs.true16.cleanup230_crit_edge:             ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup230

land.lhs.true16.if.end32_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.end32:                                         ; preds = %land.lhs.true16.if.end32_crit_edge, %if.end11.if.end32_crit_edge
  %30 = and i8 %11, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool36.not = icmp eq i8 %30, 0
  br i1 %tobool36.not, label %if.end32.if.end53_crit_edge, label %land.lhs.true37

if.end32.if.end53_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

land.lhs.true37:                                  ; preds = %if.end32
  %ptype = getelementptr inbounds %struct.ebt_arp_info, ptr %2, i32 0, i32 1
  %31 = ptrtoint ptr %ptype to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %ptype, align 2
  %ar_pro = getelementptr inbounds %struct.arphdr, ptr %retval.0.i.i327, i32 0, i32 1
  %33 = ptrtoint ptr %ar_pro to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %ar_pro, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %32, i16 %34)
  %cmp40 = icmp eq i16 %32, %34
  %invflags42 = getelementptr inbounds %struct.ebt_arp_info, ptr %2, i32 0, i32 12
  %35 = ptrtoint ptr %invflags42 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %invflags42, align 1
  %37 = and i8 %36, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %38 = icmp ne i8 %37, 0
  %tobool51.not = xor i1 %cmp40, %38
  br i1 %tobool51.not, label %land.lhs.true37.if.end53_crit_edge, label %land.lhs.true37.cleanup230_crit_edge

land.lhs.true37.cleanup230_crit_edge:             ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup230

land.lhs.true37.if.end53_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

if.end53:                                         ; preds = %land.lhs.true37.if.end53_crit_edge, %if.end32.if.end53_crit_edge
  %39 = and i8 %11, -104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool57.not = icmp eq i8 %39, 0
  br i1 %tobool57.not, label %if.end53.if.end147_crit_edge, label %if.then58

if.end53.if.end147_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end147

if.then58:                                        ; preds = %if.end53
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %saddr) #7
  %40 = ptrtoint ptr %saddr to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %saddr, align 4, !annotation !21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %daddr) #7
  %41 = ptrtoint ptr %daddr to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %daddr, align 4, !annotation !21
  %ar_pln = getelementptr inbounds %struct.arphdr, ptr %retval.0.i.i327, i32 0, i32 3
  %42 = ptrtoint ptr %ar_pln to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ar_pln, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %43)
  %cmp60.not = icmp eq i8 %43, 4
  br i1 %cmp60.not, label %lor.lhs.false, label %if.then58.cleanup_crit_edge

if.then58.cleanup_crit_edge:                      ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then58
  %ar_pro62 = getelementptr inbounds %struct.arphdr, ptr %retval.0.i.i327, i32 0, i32 1
  %44 = ptrtoint ptr %ar_pro62 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %ar_pro62, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %45)
  %cmp64.not = icmp eq i16 %45, 2048
  br i1 %cmp64.not, label %if.end67, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end67:                                         ; preds = %lor.lhs.false
  %ar_hln = getelementptr inbounds %struct.arphdr, ptr %retval.0.i.i327, i32 0, i32 2
  %46 = ptrtoint ptr %ar_hln to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %ar_hln, align 2
  %conv68 = zext i8 %47 to i32
  %add = add nuw nsw i32 %conv68, 8
  %48 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %len.i.i, align 4
  %50 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %data_len.i.i, align 8
  %52 = add i32 %49, -8
  %53 = add i32 %51, %conv68
  %sub.i4.i291 = sub i32 %52, %53
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i4.i291)
  %cmp.not.i.i292 = icmp slt i32 %sub.i4.i291, 4
  br i1 %cmp.not.i.i292, label %if.end.i.i296, label %skb_header_pointer.exit302, !prof !20

if.end.i.i296:                                    ; preds = %if.end67
  %tobool2.not.i.i295 = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i295, label %if.end.i.i296.cleanup_crit_edge, label %lor.lhs.false.i.i300

if.end.i.i296.cleanup_crit_edge:                  ; preds = %if.end.i.i296
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.i.i300:                             ; preds = %if.end.i.i296
  %call.i.i297 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add, ptr noundef nonnull %saddr, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i297)
  %cmp3.i.i298 = icmp slt i32 %call.i.i297, 0
  br i1 %cmp3.i.i298, label %lor.lhs.false.i.i300.cleanup_crit_edge, label %lor.lhs.false.i.i300.if.end73_crit_edge

lor.lhs.false.i.i300.if.end73_crit_edge:          ; preds = %lor.lhs.false.i.i300
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

lor.lhs.false.i.i300.cleanup_crit_edge:           ; preds = %lor.lhs.false.i.i300
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

skb_header_pointer.exit302:                       ; preds = %if.end67
  %data.i293 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %54 = ptrtoint ptr %data.i293 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data.i293, align 4
  %add.ptr.i.i = getelementptr i8, ptr %55, i32 %add
  %cmp70 = icmp eq ptr %add.ptr.i.i, null
  br i1 %cmp70, label %skb_header_pointer.exit302.cleanup_crit_edge, label %skb_header_pointer.exit302.if.end73_crit_edge

skb_header_pointer.exit302.if.end73_crit_edge:    ; preds = %skb_header_pointer.exit302
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

skb_header_pointer.exit302.cleanup_crit_edge:     ; preds = %skb_header_pointer.exit302
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end73:                                         ; preds = %skb_header_pointer.exit302.if.end73_crit_edge, %lor.lhs.false.i.i300.if.end73_crit_edge
  %retval.0.i.i301335 = phi ptr [ %add.ptr.i.i, %skb_header_pointer.exit302.if.end73_crit_edge ], [ %saddr, %lor.lhs.false.i.i300.if.end73_crit_edge ]
  %56 = ptrtoint ptr %ar_hln to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %ar_hln, align 2
  %conv75 = zext i8 %57 to i32
  %mul = shl nuw nsw i32 %conv75, 1
  %add77 = add nuw nsw i32 %mul, 12
  %58 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %len.i.i, align 4
  %60 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %data_len.i.i, align 8
  %add77.neg = sub nuw nsw i32 -12, %mul
  %.neg346 = sub i32 %59, %61
  %sub.i4.i305 = add i32 %.neg346, %add77.neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i4.i305)
  %cmp.not.i.i306 = icmp slt i32 %sub.i4.i305, 4
  br i1 %cmp.not.i.i306, label %if.end.i.i311, label %skb_header_pointer.exit317, !prof !20

if.end.i.i311:                                    ; preds = %if.end73
  %tobool2.not.i.i310 = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i310, label %if.end.i.i311.cleanup_crit_edge, label %lor.lhs.false.i.i315

if.end.i.i311.cleanup_crit_edge:                  ; preds = %if.end.i.i311
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.i.i315:                             ; preds = %if.end.i.i311
  %call.i.i312 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add77, ptr noundef nonnull %daddr, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i312)
  %cmp3.i.i313 = icmp slt i32 %call.i.i312, 0
  br i1 %cmp3.i.i313, label %lor.lhs.false.i.i315.cleanup_crit_edge, label %lor.lhs.false.i.i315.if.end82_crit_edge

lor.lhs.false.i.i315.if.end82_crit_edge:          ; preds = %lor.lhs.false.i.i315
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82

lor.lhs.false.i.i315.cleanup_crit_edge:           ; preds = %lor.lhs.false.i.i315
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

skb_header_pointer.exit317:                       ; preds = %if.end73
  %data.i307 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %62 = ptrtoint ptr %data.i307 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %data.i307, align 4
  %add.ptr.i.i308 = getelementptr i8, ptr %63, i32 %add77
  %cmp79 = icmp eq ptr %add.ptr.i.i308, null
  br i1 %cmp79, label %skb_header_pointer.exit317.cleanup_crit_edge, label %skb_header_pointer.exit317.if.end82_crit_edge

skb_header_pointer.exit317.if.end82_crit_edge:    ; preds = %skb_header_pointer.exit317
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82

skb_header_pointer.exit317.cleanup_crit_edge:     ; preds = %skb_header_pointer.exit317
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end82:                                         ; preds = %skb_header_pointer.exit317.if.end82_crit_edge, %lor.lhs.false.i.i315.if.end82_crit_edge
  %retval.0.i.i316343 = phi ptr [ %add.ptr.i.i308, %skb_header_pointer.exit317.if.end82_crit_edge ], [ %daddr, %lor.lhs.false.i.i315.if.end82_crit_edge ]
  %64 = ptrtoint ptr %bitmask to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %bitmask, align 4
  %66 = and i8 %65, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool86.not = icmp eq i8 %66, 0
  br i1 %tobool86.not, label %if.end82.if.end103_crit_edge, label %land.lhs.true87

if.end82.if.end103_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end103

land.lhs.true87:                                  ; preds = %if.end82
  %saddr88 = getelementptr inbounds %struct.ebt_arp_info, ptr %2, i32 0, i32 3
  %67 = ptrtoint ptr %saddr88 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %saddr88, align 4
  %69 = ptrtoint ptr %retval.0.i.i301335 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %retval.0.i.i301335, align 4
  %smsk = getelementptr inbounds %struct.ebt_arp_info, ptr %2, i32 0, i32 4
  %71 = ptrtoint ptr %smsk to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %smsk, align 4
  %and89 = and i32 %72, %70
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %and89)
  %cmp90 = icmp eq i32 %68, %and89
  %invflags92 = getelementptr inbounds %struct.ebt_arp_info, ptr %2, i32 0, i32 12
  %73 = ptrtoint ptr %invflags92 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %invflags92, align 1
  %75 = and i8 %74, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %76 = icmp ne i8 %75, 0
  %tobool101.not = xor i1 %cmp90, %76
  br i1 %tobool101.not, label %land.lhs.true87.if.end103_crit_edge, label %land.lhs.true87.cleanup_crit_edge

land.lhs.true87.cleanup_crit_edge:                ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true87.if.end103_crit_edge:              ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end103

if.end103:                                        ; preds = %land.lhs.true87.if.end103_crit_edge, %if.end82.if.end103_crit_edge
  %77 = and i8 %65, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool107.not = icmp eq i8 %77, 0
  br i1 %tobool107.not, label %if.end103.if.end124_crit_edge, label %land.lhs.true108

if.end103.if.end124_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end124

land.lhs.true108:                                 ; preds = %if.end103
  %daddr109 = getelementptr inbounds %struct.ebt_arp_info, ptr %2, i32 0, i32 5
  %78 = ptrtoint ptr %daddr109 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %daddr109, align 4
  %80 = ptrtoint ptr %retval.0.i.i316343 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %retval.0.i.i316343, align 4
  %dmsk = getelementptr inbounds %struct.ebt_arp_info, ptr %2, i32 0, i32 6
  %82 = ptrtoint ptr %dmsk to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %dmsk, align 4
  %and110 = and i32 %83, %81
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %and110)
  %cmp111 = icmp eq i32 %79, %and110
  %invflags113 = getelementptr inbounds %struct.ebt_arp_info, ptr %2, i32 0, i32 12
  %84 = ptrtoint ptr %invflags113 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %invflags113, align 1
  %86 = and i8 %85, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %87 = icmp ne i8 %86, 0
  %tobool122.not = xor i1 %cmp111, %87
  br i1 %tobool122.not, label %land.lhs.true108.if.end124_crit_edge, label %land.lhs.true108.cleanup_crit_edge

land.lhs.true108.cleanup_crit_edge:               ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true108.if.end124_crit_edge:             ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end124

if.end124:                                        ; preds = %land.lhs.true108.if.end124_crit_edge, %if.end103.if.end124_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %65)
  %tobool128.not = icmp sgt i8 %65, -1
  br i1 %tobool128.not, label %if.end124.if.end147.critedge_crit_edge, label %land.lhs.true129

if.end124.if.end147.critedge_crit_edge:           ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end147.critedge

land.lhs.true129:                                 ; preds = %if.end124
  %88 = ptrtoint ptr %retval.0.i.i316343 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %retval.0.i.i316343, align 4
  %90 = ptrtoint ptr %retval.0.i.i301335 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %retval.0.i.i301335, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %89, i32 %91)
  %cmp130 = icmp ne i32 %89, %91
  %invflags132 = getelementptr inbounds %struct.ebt_arp_info, ptr %2, i32 0, i32 12
  %92 = ptrtoint ptr %invflags132 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %invflags132, align 1
  %.lobit = lshr i8 %93, 7
  %94 = zext i1 %cmp130 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %.lobit, i8 %94)
  %tobool141.not = icmp eq i8 %.lobit, %94
  br i1 %tobool141.not, label %land.lhs.true129.if.end147.critedge_crit_edge, label %land.lhs.true129.cleanup_crit_edge

land.lhs.true129.cleanup_crit_edge:               ; preds = %land.lhs.true129
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true129.if.end147.critedge_crit_edge:    ; preds = %land.lhs.true129
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end147.critedge

cleanup:                                          ; preds = %land.lhs.true129.cleanup_crit_edge, %land.lhs.true108.cleanup_crit_edge, %land.lhs.true87.cleanup_crit_edge, %skb_header_pointer.exit317.cleanup_crit_edge, %lor.lhs.false.i.i315.cleanup_crit_edge, %if.end.i.i311.cleanup_crit_edge, %skb_header_pointer.exit302.cleanup_crit_edge, %lor.lhs.false.i.i300.cleanup_crit_edge, %if.end.i.i296.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then58.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %daddr) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %saddr) #7
  br label %cleanup230

if.end147.critedge:                               ; preds = %land.lhs.true129.if.end147.critedge_crit_edge, %if.end124.if.end147.critedge_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %daddr) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %saddr) #7
  br label %if.end147

if.end147:                                        ; preds = %if.end147.critedge, %if.end53.if.end147_crit_edge
  %95 = ptrtoint ptr %bitmask to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %bitmask, align 4
  %97 = and i8 %96, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool151.not = icmp eq i8 %97, 0
  br i1 %tobool151.not, label %if.end147.cleanup230_crit_edge, label %if.then152

if.end147.cleanup230_crit_edge:                   ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup230

if.then152:                                       ; preds = %if.end147
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %_mac) #7
  %ar_hln153 = getelementptr inbounds %struct.arphdr, ptr %retval.0.i.i327, i32 0, i32 2
  %98 = call ptr @memset(ptr %_mac, i32 255, i32 6)
  %99 = ptrtoint ptr %ar_hln153 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %ar_hln153, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %100)
  %cmp155.not = icmp eq i8 %100, 6
  br i1 %cmp155.not, label %lor.lhs.false157, label %if.then152.cleanup225_crit_edge

if.then152.cleanup225_crit_edge:                  ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup225

lor.lhs.false157:                                 ; preds = %if.then152
  %101 = ptrtoint ptr %retval.0.i.i327 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %retval.0.i.i327, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %102)
  %cmp160.not = icmp eq i16 %102, 1
  br i1 %cmp160.not, label %if.end163, label %lor.lhs.false157.cleanup225_crit_edge

lor.lhs.false157.cleanup225_crit_edge:            ; preds = %lor.lhs.false157
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup225

if.end163:                                        ; preds = %lor.lhs.false157
  %103 = and i8 %96, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool167.not = icmp eq i8 %103, 0
  br i1 %tobool167.not, label %if.end163.if.end190_crit_edge, label %if.then168

if.end163.if.end190_crit_edge:                    ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end190

if.then168:                                       ; preds = %if.end163
  %call169 = call fastcc ptr @skb_header_pointer(ptr noundef %skb, i32 noundef 8, i32 noundef 6, ptr noundef nonnull %_mac)
  %cmp170 = icmp eq ptr %call169, null
  br i1 %cmp170, label %if.then168.cleanup225_crit_edge, label %if.end173

if.then168.cleanup225_crit_edge:                  ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup225

if.end173:                                        ; preds = %if.then168
  %smaddr = getelementptr inbounds %struct.ebt_arp_info, ptr %2, i32 0, i32 7
  %smmsk = getelementptr inbounds %struct.ebt_arp_info, ptr %2, i32 0, i32 8
  %call175 = call fastcc zeroext i1 @ether_addr_equal_masked(ptr noundef nonnull %call169, ptr noundef %smaddr, ptr noundef %smmsk)
  %invflags178 = getelementptr inbounds %struct.ebt_arp_info, ptr %2, i32 0, i32 12
  %104 = ptrtoint ptr %invflags178 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %invflags178, align 1
  %106 = and i8 %105, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %107 = icmp ne i8 %106, 0
  %tobool187.not = xor i1 %call175, %107
  br i1 %tobool187.not, label %if.end173.if.end190_crit_edge, label %if.end173.cleanup225_crit_edge

if.end173.cleanup225_crit_edge:                   ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup225

if.end173.if.end190_crit_edge:                    ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end190

if.end190:                                        ; preds = %if.end173.if.end190_crit_edge, %if.end163.if.end190_crit_edge
  %108 = ptrtoint ptr %bitmask to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %bitmask, align 4
  %110 = and i8 %109, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool194.not = icmp eq i8 %110, 0
  br i1 %tobool194.not, label %if.end190.if.end229.critedge_crit_edge, label %if.then195

if.end190.if.end229.critedge_crit_edge:           ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end229.critedge

if.then195:                                       ; preds = %if.end190
  %111 = ptrtoint ptr %ar_hln153 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %ar_hln153, align 2
  %conv197 = zext i8 %112 to i32
  %add198 = add nuw nsw i32 %conv197, 8
  %ar_pln199 = getelementptr inbounds %struct.arphdr, ptr %retval.0.i.i327, i32 0, i32 3
  %113 = ptrtoint ptr %ar_pln199 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %ar_pln199, align 1
  %conv200 = zext i8 %114 to i32
  %add201 = add nuw nsw i32 %add198, %conv200
  %call202 = call fastcc ptr @skb_header_pointer(ptr noundef %skb, i32 noundef %add201, i32 noundef 6, ptr noundef nonnull %_mac)
  %cmp203 = icmp eq ptr %call202, null
  br i1 %cmp203, label %if.then195.cleanup225_crit_edge, label %if.end206

if.then195.cleanup225_crit_edge:                  ; preds = %if.then195
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup225

if.end206:                                        ; preds = %if.then195
  %dmaddr = getelementptr inbounds %struct.ebt_arp_info, ptr %2, i32 0, i32 9
  %dmmsk = getelementptr inbounds %struct.ebt_arp_info, ptr %2, i32 0, i32 10
  %call209 = call fastcc zeroext i1 @ether_addr_equal_masked(ptr noundef nonnull %call202, ptr noundef %dmaddr, ptr noundef %dmmsk)
  %invflags212 = getelementptr inbounds %struct.ebt_arp_info, ptr %2, i32 0, i32 12
  %115 = ptrtoint ptr %invflags212 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %invflags212, align 1
  %117 = and i8 %116, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %118 = icmp ne i8 %117, 0
  %tobool221.not = xor i1 %call209, %118
  br i1 %tobool221.not, label %if.end206.if.end229.critedge_crit_edge, label %if.end206.cleanup225_crit_edge

if.end206.cleanup225_crit_edge:                   ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup225

if.end206.if.end229.critedge_crit_edge:           ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end229.critedge

cleanup225:                                       ; preds = %if.end206.cleanup225_crit_edge, %if.then195.cleanup225_crit_edge, %if.end173.cleanup225_crit_edge, %if.then168.cleanup225_crit_edge, %lor.lhs.false157.cleanup225_crit_edge, %if.then152.cleanup225_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %_mac) #7
  br label %cleanup230

if.end229.critedge:                               ; preds = %if.end206.if.end229.critedge_crit_edge, %if.end190.if.end229.critedge_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %_mac) #7
  br label %cleanup230

cleanup230:                                       ; preds = %if.end229.critedge, %cleanup225, %if.end147.cleanup230_crit_edge, %cleanup, %land.lhs.true37.cleanup230_crit_edge, %land.lhs.true16.cleanup230_crit_edge, %land.lhs.true.cleanup230_crit_edge, %skb_header_pointer.exit.cleanup230_crit_edge, %lor.lhs.false.i.i.cleanup230_crit_edge, %if.end.i.i.cleanup230_crit_edge
  %retval.3 = phi i1 [ false, %cleanup225 ], [ false, %cleanup ], [ false, %skb_header_pointer.exit.cleanup230_crit_edge ], [ false, %land.lhs.true.cleanup230_crit_edge ], [ false, %land.lhs.true16.cleanup230_crit_edge ], [ false, %land.lhs.true37.cleanup230_crit_edge ], [ true, %if.end229.critedge ], [ true, %if.end147.cleanup230_crit_edge ], [ false, %if.end.i.i.cleanup230_crit_edge ], [ false, %lor.lhs.false.i.i.cleanup230_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_arph) #7
  ret i1 %retval.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ebt_arp_mt_check(ptr nocapture noundef readonly %par) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %entryinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 2
  %0 = ptrtoint ptr %entryinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %entryinfo, align 4
  %ethproto = getelementptr inbounds %struct.ebt_entry, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ethproto to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ethproto, align 4
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %3, label %entry.cleanup_crit_edge [
    i16 2054, label %entry.lor.lhs.false_crit_edge
    i16 -32715, label %entry.lor.lhs.false_crit_edge21
  ]

entry.lor.lhs.false_crit_edge21:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge21
  %invflags = getelementptr inbounds %struct.ebt_entry, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %invflags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %invflags, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @skb_header_pointer(ptr noundef %skb, i32 noundef %offset, i32 noundef %len, ptr noundef %buffer) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i, align 8
  %4 = add i32 %3, %offset
  %sub.i4 = sub i32 %1, %4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i4, i32 %len)
  %cmp.not.i = icmp slt i32 %sub.i4, %len
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !prof !20

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %offset
  br label %__skb_header_pointer.exit

if.end.i:                                         ; preds = %entry
  %tobool2.not.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i, label %if.end.i.__skb_header_pointer.exit_crit_edge, label %lor.lhs.false.i

if.end.i.__skb_header_pointer.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__skb_header_pointer.exit

lor.lhs.false.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %offset, ptr noundef %buffer, i32 noundef %len) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp slt i32 %call.i, 0
  %spec.select.i = select i1 %cmp3.i, ptr null, ptr %buffer, !prof !20
  br label %__skb_header_pointer.exit

__skb_header_pointer.exit:                        ; preds = %lor.lhs.false.i, %if.end.i.__skb_header_pointer.exit_crit_edge, %if.then.i
  %retval.0.i = phi ptr [ %add.ptr.i, %if.then.i ], [ null, %if.end.i.__skb_header_pointer.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  ret ptr %retval.0.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly inlinehint nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ether_addr_equal_masked(ptr nocapture noundef readonly %addr1, ptr nocapture noundef readonly %addr2, ptr nocapture noundef readonly %mask) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %addr1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %addr1, align 1
  %2 = ptrtoint ptr %addr2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %addr2, align 1
  %xor9 = xor i8 %3, %1
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mask, align 1
  %and10 = and i8 %xor9, %5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and10)
  %tobool.not = icmp eq i8 %and10, 0
  br i1 %tobool.not, label %for.cond, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond:                                         ; preds = %entry
  %arrayidx.1 = getelementptr i8, ptr %addr1, i32 1
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.1, align 1
  %arrayidx1.1 = getelementptr i8, ptr %addr2, i32 1
  %8 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx1.1, align 1
  %xor9.1 = xor i8 %9, %7
  %arrayidx3.1 = getelementptr i8, ptr %mask, i32 1
  %10 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx3.1, align 1
  %and10.1 = and i8 %xor9.1, %11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and10.1)
  %tobool.not.1 = icmp eq i8 %and10.1, 0
  br i1 %tobool.not.1, label %for.cond.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr i8, ptr %addr1, i32 2
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.2, align 1
  %arrayidx1.2 = getelementptr i8, ptr %addr2, i32 2
  %14 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx1.2, align 1
  %xor9.2 = xor i8 %15, %13
  %arrayidx3.2 = getelementptr i8, ptr %mask, i32 2
  %16 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx3.2, align 1
  %and10.2 = and i8 %xor9.2, %17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and10.2)
  %tobool.not.2 = icmp eq i8 %and10.2, 0
  br i1 %tobool.not.2, label %for.cond.2, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx.3 = getelementptr i8, ptr %addr1, i32 3
  %18 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.3, align 1
  %arrayidx1.3 = getelementptr i8, ptr %addr2, i32 3
  %20 = ptrtoint ptr %arrayidx1.3 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx1.3, align 1
  %xor9.3 = xor i8 %21, %19
  %arrayidx3.3 = getelementptr i8, ptr %mask, i32 3
  %22 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx3.3, align 1
  %and10.3 = and i8 %xor9.3, %23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and10.3)
  %tobool.not.3 = icmp eq i8 %and10.3, 0
  br i1 %tobool.not.3, label %for.cond.3, label %for.cond.2.cleanup_crit_edge

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %arrayidx.4 = getelementptr i8, ptr %addr1, i32 4
  %24 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.4, align 1
  %arrayidx1.4 = getelementptr i8, ptr %addr2, i32 4
  %26 = ptrtoint ptr %arrayidx1.4 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx1.4, align 1
  %xor9.4 = xor i8 %27, %25
  %arrayidx3.4 = getelementptr i8, ptr %mask, i32 4
  %28 = ptrtoint ptr %arrayidx3.4 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx3.4, align 1
  %and10.4 = and i8 %xor9.4, %29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and10.4)
  %tobool.not.4 = icmp eq i8 %and10.4, 0
  br i1 %tobool.not.4, label %for.cond.4, label %for.cond.3.cleanup_crit_edge

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.5 = getelementptr i8, ptr %addr1, i32 5
  %30 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.5, align 1
  %arrayidx1.5 = getelementptr i8, ptr %addr2, i32 5
  %32 = ptrtoint ptr %arrayidx1.5 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx1.5, align 1
  %xor9.5 = xor i8 %33, %31
  %arrayidx3.5 = getelementptr i8, ptr %mask, i32 5
  %34 = ptrtoint ptr %arrayidx3.5 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx3.5, align 1
  %and10.5 = and i8 %xor9.5, %35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and10.5)
  %tobool.not.5 = icmp eq i8 %and10.5, 0
  br label %cleanup

cleanup:                                          ; preds = %for.cond.4, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %cmp.lcssa = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %for.cond.cleanup_crit_edge ], [ false, %for.cond.1.cleanup_crit_edge ], [ false, %for.cond.2.cleanup_crit_edge ], [ false, %for.cond.3.cleanup_crit_edge ], [ %tobool.not.5, %for.cond.4 ]
  ret i1 %cmp.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly inlinehint nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @__initcall__kmod_ebt_arp__476_135_ebt_arp_init6, !1, !"__initcall__kmod_ebt_arp__476_135_ebt_arp_init6", i1 false, i1 false}
!1 = !{!"../net/bridge/netfilter/ebt_arp.c", i32 135, i32 1}
!2 = !{ptr @__exitcall_ebt_arp_fini, !3, !"__exitcall_ebt_arp_fini", i1 false, i1 false}
!3 = !{!"../net/bridge/netfilter/ebt_arp.c", i32 136, i32 1}
!4 = !{ptr @__UNIQUE_ID_description477, !5, !"__UNIQUE_ID_description477", i1 false, i1 false}
!5 = !{!"../net/bridge/netfilter/ebt_arp.c", i32 137, i32 1}
!6 = !{ptr @__UNIQUE_ID_file478, !7, !"__UNIQUE_ID_file478", i1 false, i1 false}
!7 = !{!"../net/bridge/netfilter/ebt_arp.c", i32 138, i32 1}
!8 = !{ptr @__UNIQUE_ID_license479, !7, !"__UNIQUE_ID_license479", i1 false, i1 false}
!9 = !{ptr @ebt_arp_mt_reg, !10, !"ebt_arp_mt_reg", i1 false, i1 false}
!10 = !{!"../net/bridge/netfilter/ebt_arp.c", i32 115, i32 24}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!20 = !{!"branch_weights", i32 1, i32 2000}
!21 = !{!"auto-init"}
