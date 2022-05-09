; ModuleID = '/llk/IR_all_yes/net/bridge/netfilter/ebt_ip.c_pt.bc'
source_filename = "../net/bridge/netfilter/ebt_ip.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_match = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%union.pkthdr = type { %struct.anon.150 }
%struct.anon.150 = type { i16, i16 }
%struct.xt_action_param = type { %union.anon.142, %union.anon.143, ptr, i32, i16, i8 }
%union.anon.142 = type { ptr }
%union.anon.143 = type { ptr }
%struct.sk_buff = type { %union.anon, %union.anon.125, %union.anon.126, [48 x i8], %union.anon.127, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.129, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.125 = type { ptr }
%union.anon.126 = type { i64 }
%union.anon.127 = type { %struct.anon.128 }
%struct.anon.128 = type { i32, ptr }
%union.anon.129 = type { %struct.anon.130 }
%struct.anon.130 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.131, i32, i32, i32, i16, i16, %union.anon.133, i32, %union.anon.134, %union.anon.135, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.131 = type { i32 }
%union.anon.133 = type { i32 }
%union.anon.134 = type { i32 }
%union.anon.135 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ebt_ip_info = type { i32, i32, i32, i32, i8, i8, i8, i8, %union.anon.148, %union.anon.149 }
%union.anon.148 = type { [2 x i16] }
%union.anon.149 = type { [2 x i16] }
%struct.anon.151 = type { i8, i8 }
%struct.xt_mtchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.ebt_entry = type { i32, i32, i16, [16 x i8], [16 x i8], [16 x i8], [16 x i8], [6 x i8], [6 x i8], [6 x i8], [6 x i8], i32, i32, i32, [0 x i8] }

@ebt_ip_mt_reg = internal global %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"ip\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @ebt_ip_mt, ptr @ebt_ip_mt_check, ptr null, ptr null, ptr null, i32 28, i32 0, i32 0, i16 0, i16 7 }, section ".data..read_mostly", align 4
@__initcall__kmod_ebt_ip__511_166_ebt_ip_init6 = internal global ptr @ebt_ip_init, section ".initcall6.init", align 4
@__exitcall_ebt_ip_fini = internal global ptr @ebt_ip_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_description512 = internal constant [56 x i8] c"ebt_ip.description=Ebtables: IPv4 protocol packet match\00", section ".modinfo", align 1
@__UNIQUE_ID_file513 = internal constant [40 x i8] c"ebt_ip.file=net/bridge/netfilter/ebt_ip\00", section ".modinfo", align 1
@__UNIQUE_ID_license514 = internal constant [19 x i8] c"ebt_ip.license=GPL\00", section ".modinfo", align 1
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 6, i64 17, i64 33, i64 132, i64 136]
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_description512, ptr @__UNIQUE_ID_file513, ptr @__UNIQUE_ID_license514, ptr @__exitcall_ebt_ip_fini, ptr @__initcall__kmod_ebt_ip__511_166_ebt_ip_init6, ptr @ebt_ip_fini], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ebt_ip_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @xt_unregister_match(ptr noundef nonnull @ebt_ip_mt_reg) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ebt_ip_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_match(ptr noundef nonnull @ebt_ip_mt_reg) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @ebt_ip_mt(ptr noundef %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  %_iph = alloca %struct.iphdr, align 4
  %_pkthdr = alloca %union.pkthdr, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %_iph) #6
  %3 = call ptr @memset(ptr %_iph, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_pkthdr) #6
  %4 = ptrtoint ptr %_pkthdr to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %_pkthdr, align 2, !annotation !20
  %5 = getelementptr inbounds %struct.anon.150, ptr %_pkthdr, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %5, align 2, !annotation !20
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %7 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %9 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data_len.i.i, align 8
  %sub.i4.i = sub i32 %8, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 20
  br i1 %cmp.not.i.i, label %if.end.i.i, label %skb_header_pointer.exit, !prof !21

if.end.i.i:                                       ; preds = %entry
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.cleanup231_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.cleanup231_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup231

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef 0, ptr noundef nonnull %_iph, i32 noundef 20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.cleanup231_crit_edge, label %lor.lhs.false.i.i.if.end_crit_edge

lor.lhs.false.i.i.if.end_crit_edge:               ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

lor.lhs.false.i.i.cleanup231_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup231

skb_header_pointer.exit:                          ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i, align 4
  %cmp = icmp eq ptr %12, null
  br i1 %cmp, label %skb_header_pointer.exit.cleanup231_crit_edge, label %skb_header_pointer.exit.if.end_crit_edge

skb_header_pointer.exit.if.end_crit_edge:         ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

skb_header_pointer.exit.cleanup231_crit_edge:     ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup231

if.end:                                           ; preds = %skb_header_pointer.exit.if.end_crit_edge, %lor.lhs.false.i.i.if.end_crit_edge
  %retval.0.i.i303 = phi ptr [ %12, %skb_header_pointer.exit.if.end_crit_edge ], [ %_iph, %lor.lhs.false.i.i.if.end_crit_edge ]
  %bitmask = getelementptr inbounds %struct.ebt_ip_info, ptr %2, i32 0, i32 6
  %13 = ptrtoint ptr %bitmask to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bitmask, align 2
  %15 = and i8 %14, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %if.end.if.end12_crit_edge, label %land.lhs.true

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end
  %tos = getelementptr inbounds %struct.ebt_ip_info, ptr %2, i32 0, i32 4
  %16 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %tos, align 4
  %tos2 = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i303, i32 0, i32 1
  %18 = ptrtoint ptr %tos2 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %tos2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %19)
  %cmp4 = icmp eq i8 %17, %19
  %invflags = getelementptr inbounds %struct.ebt_ip_info, ptr %2, i32 0, i32 7
  %20 = ptrtoint ptr %invflags to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %invflags, align 1
  %22 = and i8 %21, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %23 = icmp ne i8 %22, 0
  %tobool10.not = xor i1 %cmp4, %23
  br i1 %tobool10.not, label %land.lhs.true.if.end12_crit_edge, label %land.lhs.true.cleanup231_crit_edge

land.lhs.true.cleanup231_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup231

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.end12:                                         ; preds = %land.lhs.true.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %24 = and i8 %14, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool16.not = icmp eq i8 %24, 0
  br i1 %tobool16.not, label %if.end12.if.end33_crit_edge, label %land.lhs.true17

if.end12.if.end33_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

land.lhs.true17:                                  ; preds = %if.end12
  %saddr = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i303, i32 0, i32 8
  %25 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %saddr, align 4
  %smsk = getelementptr inbounds %struct.ebt_ip_info, ptr %2, i32 0, i32 2
  %27 = ptrtoint ptr %smsk to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %smsk, align 4
  %and18 = and i32 %28, %26
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and18, i32 %30)
  %cmp20 = icmp eq i32 %and18, %30
  %invflags22 = getelementptr inbounds %struct.ebt_ip_info, ptr %2, i32 0, i32 7
  %31 = ptrtoint ptr %invflags22 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %invflags22, align 1
  %33 = and i8 %32, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %34 = icmp ne i8 %33, 0
  %tobool31.not = xor i1 %cmp20, %34
  br i1 %tobool31.not, label %land.lhs.true17.if.end33_crit_edge, label %land.lhs.true17.cleanup231_crit_edge

land.lhs.true17.cleanup231_crit_edge:             ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup231

land.lhs.true17.if.end33_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.end33:                                         ; preds = %land.lhs.true17.if.end33_crit_edge, %if.end12.if.end33_crit_edge
  %35 = and i8 %14, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool37.not = icmp eq i8 %35, 0
  br i1 %tobool37.not, label %if.end33.if.end54_crit_edge, label %land.lhs.true38

if.end33.if.end54_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

land.lhs.true38:                                  ; preds = %if.end33
  %daddr = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i303, i32 0, i32 9
  %36 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %daddr, align 4
  %dmsk = getelementptr inbounds %struct.ebt_ip_info, ptr %2, i32 0, i32 3
  %38 = ptrtoint ptr %dmsk to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dmsk, align 4
  %and39 = and i32 %39, %37
  %daddr40 = getelementptr inbounds %struct.ebt_ip_info, ptr %2, i32 0, i32 1
  %40 = ptrtoint ptr %daddr40 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %daddr40, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and39, i32 %41)
  %cmp41 = icmp eq i32 %and39, %41
  %invflags43 = getelementptr inbounds %struct.ebt_ip_info, ptr %2, i32 0, i32 7
  %42 = ptrtoint ptr %invflags43 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %invflags43, align 1
  %44 = and i8 %43, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %45 = icmp ne i8 %44, 0
  %tobool52.not = xor i1 %cmp41, %45
  br i1 %tobool52.not, label %land.lhs.true38.if.end54_crit_edge, label %land.lhs.true38.cleanup231_crit_edge

land.lhs.true38.cleanup231_crit_edge:             ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup231

land.lhs.true38.if.end54_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.end54:                                         ; preds = %land.lhs.true38.if.end54_crit_edge, %if.end33.if.end54_crit_edge
  %conv56 = zext i8 %14 to i32
  %and57 = and i32 %conv56, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.end54.if.end230_crit_edge, label %if.then59

if.end54.if.end230_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end230

if.then59:                                        ; preds = %if.end54
  %protocol = getelementptr inbounds %struct.ebt_ip_info, ptr %2, i32 0, i32 5
  %46 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %protocol, align 1
  %protocol61 = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i303, i32 0, i32 6
  %48 = ptrtoint ptr %protocol61 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %protocol61, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %47, i8 %49)
  %cmp63 = icmp eq i8 %47, %49
  %invflags65 = getelementptr inbounds %struct.ebt_ip_info, ptr %2, i32 0, i32 7
  %50 = ptrtoint ptr %invflags65 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %invflags65, align 1
  %52 = and i8 %51, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %53 = icmp ne i8 %52, 0
  %tobool74.not = xor i1 %cmp63, %53
  br i1 %tobool74.not, label %if.end76, label %if.then59.cleanup231_crit_edge

if.then59.cleanup231_crit_edge:                   ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup231

if.end76:                                         ; preds = %if.then59
  %and79 = and i32 %conv56, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.end76.cleanup231_crit_edge, label %if.end82

if.end76.cleanup231_crit_edge:                    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup231

if.end82:                                         ; preds = %if.end76
  %frag_off = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i303, i32 0, i32 4
  %54 = ptrtoint ptr %frag_off to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %frag_off, align 2
  %56 = and i16 %55, 8191
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %tobool85.not = icmp eq i16 %56, 0
  br i1 %tobool85.not, label %if.end87, label %if.end82.cleanup231_crit_edge

if.end82.cleanup231_crit_edge:                    ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup231

if.end87:                                         ; preds = %if.end82
  %57 = ptrtoint ptr %retval.0.i.i303 to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load = load i8, ptr %retval.0.i.i303, align 4
  %bf.clear = shl i8 %bf.load, 2
  %58 = and i8 %bf.clear, 60
  %mul = zext i8 %58 to i32
  %call89 = call fastcc ptr @skb_header_pointer(ptr noundef %skb, i32 noundef %mul, i32 noundef 4, ptr noundef nonnull %_pkthdr)
  %cmp90 = icmp eq ptr %call89, null
  br i1 %cmp90, label %if.end87.cleanup231_crit_edge, label %if.end93

if.end87.cleanup231_crit_edge:                    ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup231

if.end93:                                         ; preds = %if.end87
  %59 = ptrtoint ptr %bitmask to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %bitmask, align 2
  %61 = and i8 %60, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool97.not = icmp eq i8 %61, 0
  br i1 %tobool97.not, label %if.end93.if.end120_crit_edge, label %if.then98

if.end93.if.end120_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end120

if.then98:                                        ; preds = %if.end93
  %dst99 = getelementptr inbounds %struct.anon.150, ptr %call89, i32 0, i32 1
  %62 = ptrtoint ptr %dst99 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %dst99, align 2
  %64 = getelementptr inbounds %struct.ebt_ip_info, ptr %2, i32 0, i32 9
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %64, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %63, i16 %66)
  %cmp102 = icmp ult i16 %63, %66
  br i1 %cmp102, label %if.then98.lor.end_crit_edge, label %lor.rhs

if.then98.lor.end_crit_edge:                      ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end

lor.rhs:                                          ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx104 = getelementptr %struct.ebt_ip_info, ptr %2, i32 0, i32 9, i32 0, i32 1
  %67 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %arrayidx104, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %63, i16 %68)
  %cmp106 = icmp ugt i16 %63, %68
  %phi.cast291 = zext i1 %cmp106 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then98.lor.end_crit_edge
  %69 = phi i32 [ 1, %if.then98.lor.end_crit_edge ], [ %phi.cast291, %lor.rhs ]
  %70 = ptrtoint ptr %invflags65 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %invflags65, align 1
  %72 = lshr i8 %71, 5
  %.lobit292 = and i8 %72, 1
  %73 = zext i8 %.lobit292 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %73)
  %tobool117.not = icmp eq i32 %69, %73
  br i1 %tobool117.not, label %lor.end.if.end120_crit_edge, label %lor.end.cleanup231_crit_edge

lor.end.cleanup231_crit_edge:                     ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup231

lor.end.if.end120_crit_edge:                      ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end120

if.end120:                                        ; preds = %lor.end.if.end120_crit_edge, %if.end93.if.end120_crit_edge
  %74 = and i8 %60, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool124.not = icmp eq i8 %74, 0
  br i1 %tobool124.not, label %if.end120.if.end154_crit_edge, label %if.then125

if.end120.if.end154_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end154

if.then125:                                       ; preds = %if.end120
  %75 = ptrtoint ptr %call89 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %call89, align 2
  %77 = getelementptr inbounds %struct.ebt_ip_info, ptr %2, i32 0, i32 8
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %77, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %76, i16 %79)
  %cmp130 = icmp ult i16 %76, %79
  br i1 %cmp130, label %if.then125.lor.end137_crit_edge, label %lor.rhs132

if.then125.lor.end137_crit_edge:                  ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end137

lor.rhs132:                                       ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx133 = getelementptr %struct.ebt_ip_info, ptr %2, i32 0, i32 8, i32 0, i32 1
  %80 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %arrayidx133, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %76, i16 %81)
  %cmp135 = icmp ugt i16 %76, %81
  %phi.cast289 = zext i1 %cmp135 to i32
  br label %lor.end137

lor.end137:                                       ; preds = %lor.rhs132, %if.then125.lor.end137_crit_edge
  %82 = phi i32 [ 1, %if.then125.lor.end137_crit_edge ], [ %phi.cast289, %lor.rhs132 ]
  %83 = ptrtoint ptr %invflags65 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %invflags65, align 1
  %85 = lshr i8 %84, 4
  %.lobit290 = and i8 %85, 1
  %86 = zext i8 %.lobit290 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %86)
  %tobool148.not = icmp eq i32 %82, %86
  br i1 %tobool148.not, label %lor.end137.if.end154_crit_edge, label %lor.end137.cleanup231_crit_edge

lor.end137.cleanup231_crit_edge:                  ; preds = %lor.end137
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup231

lor.end137.if.end154_crit_edge:                   ; preds = %lor.end137
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end154

if.end154:                                        ; preds = %lor.end137.if.end154_crit_edge, %if.end120.if.end154_crit_edge
  %87 = and i8 %60, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool158.not = icmp eq i8 %87, 0
  br i1 %tobool158.not, label %if.end154.if.end197_crit_edge, label %land.lhs.true159

if.end154.if.end197_crit_edge:                    ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end197

land.lhs.true159:                                 ; preds = %if.end154
  %88 = ptrtoint ptr %call89 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %call89, align 2
  %90 = getelementptr inbounds %struct.ebt_ip_info, ptr %2, i32 0, i32 8
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %90, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %89, i8 %92)
  %cmp163 = icmp ult i8 %89, %92
  br i1 %cmp163, label %land.lhs.true159.lor.end184_crit_edge, label %lor.lhs.false

land.lhs.true159.lor.end184_crit_edge:            ; preds = %land.lhs.true159
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end184

lor.lhs.false:                                    ; preds = %land.lhs.true159
  %arrayidx167 = getelementptr [2 x i8], ptr %90, i32 0, i32 1
  %93 = ptrtoint ptr %arrayidx167 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx167, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %89, i8 %94)
  %cmp169 = icmp ugt i8 %89, %94
  br i1 %cmp169, label %lor.lhs.false.lor.end184_crit_edge, label %lor.lhs.false171

lor.lhs.false.lor.end184_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end184

lor.lhs.false171:                                 ; preds = %lor.lhs.false
  %code = getelementptr inbounds %struct.anon.151, ptr %call89, i32 0, i32 1
  %95 = ptrtoint ptr %code to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %code, align 1
  %97 = getelementptr inbounds %struct.ebt_ip_info, ptr %2, i32 0, i32 9
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %97, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %96, i8 %99)
  %cmp175 = icmp ult i8 %96, %99
  br i1 %cmp175, label %lor.lhs.false171.lor.end184_crit_edge, label %lor.rhs177

lor.lhs.false171.lor.end184_crit_edge:            ; preds = %lor.lhs.false171
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end184

lor.rhs177:                                       ; preds = %lor.lhs.false171
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx180 = getelementptr [2 x i8], ptr %97, i32 0, i32 1
  %100 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx180, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %96, i8 %101)
  %cmp182 = icmp ugt i8 %96, %101
  %phi.cast287 = zext i1 %cmp182 to i32
  br label %lor.end184

lor.end184:                                       ; preds = %lor.rhs177, %lor.lhs.false171.lor.end184_crit_edge, %lor.lhs.false.lor.end184_crit_edge, %land.lhs.true159.lor.end184_crit_edge
  %102 = phi i32 [ 1, %lor.lhs.false171.lor.end184_crit_edge ], [ 1, %lor.lhs.false.lor.end184_crit_edge ], [ 1, %land.lhs.true159.lor.end184_crit_edge ], [ %phi.cast287, %lor.rhs177 ]
  %103 = ptrtoint ptr %invflags65 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %invflags65, align 1
  %105 = lshr i8 %104, 6
  %.lobit288 = and i8 %105, 1
  %106 = zext i8 %.lobit288 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %106)
  %tobool195.not = icmp eq i32 %102, %106
  br i1 %tobool195.not, label %lor.end184.if.end197_crit_edge, label %lor.end184.cleanup231_crit_edge

lor.end184.cleanup231_crit_edge:                  ; preds = %lor.end184
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup231

lor.end184.if.end197_crit_edge:                   ; preds = %lor.end184
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end197

if.end197:                                        ; preds = %lor.end184.if.end197_crit_edge, %if.end154.if.end197_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %60)
  %tobool201.not = icmp sgt i8 %60, -1
  br i1 %tobool201.not, label %if.end197.if.end230_crit_edge, label %land.lhs.true202

if.end197.if.end230_crit_edge:                    ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end230

land.lhs.true202:                                 ; preds = %if.end197
  %107 = ptrtoint ptr %call89 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %call89, align 2
  %109 = getelementptr inbounds %struct.ebt_ip_info, ptr %2, i32 0, i32 8
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %109, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %108, i8 %111)
  %cmp207 = icmp ult i8 %108, %111
  br i1 %cmp207, label %land.lhs.true202.lor.end216_crit_edge, label %lor.rhs209

land.lhs.true202.lor.end216_crit_edge:            ; preds = %land.lhs.true202
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end216

lor.rhs209:                                       ; preds = %land.lhs.true202
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx212 = getelementptr [2 x i8], ptr %109, i32 0, i32 1
  %112 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx212, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %108, i8 %113)
  %cmp214 = icmp ugt i8 %108, %113
  %phi.cast = zext i1 %cmp214 to i32
  br label %lor.end216

lor.end216:                                       ; preds = %lor.rhs209, %land.lhs.true202.lor.end216_crit_edge
  %114 = phi i32 [ 1, %land.lhs.true202.lor.end216_crit_edge ], [ %phi.cast, %lor.rhs209 ]
  %115 = ptrtoint ptr %invflags65 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %invflags65, align 1
  %.lobit = lshr i8 %116, 7
  %117 = zext i8 %.lobit to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %114, i32 %117)
  %tobool227.not = icmp eq i32 %114, %117
  br i1 %tobool227.not, label %lor.end216.if.end230_crit_edge, label %lor.end216.cleanup231_crit_edge

lor.end216.cleanup231_crit_edge:                  ; preds = %lor.end216
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup231

lor.end216.if.end230_crit_edge:                   ; preds = %lor.end216
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end230

if.end230:                                        ; preds = %lor.end216.if.end230_crit_edge, %if.end197.if.end230_crit_edge, %if.end54.if.end230_crit_edge
  br label %cleanup231

cleanup231:                                       ; preds = %if.end230, %lor.end216.cleanup231_crit_edge, %lor.end184.cleanup231_crit_edge, %lor.end137.cleanup231_crit_edge, %lor.end.cleanup231_crit_edge, %if.end87.cleanup231_crit_edge, %if.end82.cleanup231_crit_edge, %if.end76.cleanup231_crit_edge, %if.then59.cleanup231_crit_edge, %land.lhs.true38.cleanup231_crit_edge, %land.lhs.true17.cleanup231_crit_edge, %land.lhs.true.cleanup231_crit_edge, %skb_header_pointer.exit.cleanup231_crit_edge, %lor.lhs.false.i.i.cleanup231_crit_edge, %if.end.i.i.cleanup231_crit_edge
  %retval.3 = phi i1 [ true, %if.end230 ], [ false, %lor.end137.cleanup231_crit_edge ], [ false, %lor.end.cleanup231_crit_edge ], [ false, %skb_header_pointer.exit.cleanup231_crit_edge ], [ false, %land.lhs.true.cleanup231_crit_edge ], [ false, %land.lhs.true17.cleanup231_crit_edge ], [ false, %land.lhs.true38.cleanup231_crit_edge ], [ false, %if.then59.cleanup231_crit_edge ], [ true, %if.end76.cleanup231_crit_edge ], [ false, %if.end82.cleanup231_crit_edge ], [ false, %if.end87.cleanup231_crit_edge ], [ false, %lor.end184.cleanup231_crit_edge ], [ false, %lor.end216.cleanup231_crit_edge ], [ false, %if.end.i.i.cleanup231_crit_edge ], [ false, %lor.lhs.false.i.i.cleanup231_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_pkthdr) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_iph) #6
  ret i1 %retval.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ebt_ip_mt_check(ptr nocapture noundef readonly %par) #3 align 64 {
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
  %ethproto = getelementptr inbounds %struct.ebt_entry, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ethproto to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ethproto, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %5)
  %cmp.not = icmp eq i16 %5, 2048
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %invflags = getelementptr inbounds %struct.ebt_entry, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %invflags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %invflags, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %bitmask = getelementptr inbounds %struct.ebt_ip_info, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %bitmask to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bitmask, align 2
  %invflags6 = getelementptr inbounds %struct.ebt_ip_info, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %invflags6 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %invflags6, align 1
  %12 = and i8 %9, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool15.not = icmp eq i8 %12, 0
  br i1 %tobool15.not, label %if.end.if.end47_crit_edge, label %if.then16

if.end.if.end47_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.then16:                                        ; preds = %if.end
  %13 = and i8 %11, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool20.not = icmp eq i8 %13, 0
  br i1 %tobool20.not, label %if.end22, label %if.then16.cleanup_crit_edge

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22:                                         ; preds = %if.then16
  %protocol = getelementptr inbounds %struct.ebt_ip_info, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %protocol, align 1
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i8 %15, label %if.end22.cleanup_crit_edge [
    i8 6, label %if.end22.if.end47_crit_edge
    i8 17, label %if.end22.if.end47_crit_edge159
    i8 -120, label %if.end22.if.end47_crit_edge160
    i8 -124, label %if.end22.if.end47_crit_edge161
    i8 33, label %if.end22.if.end47_crit_edge162
  ]

if.end22.if.end47_crit_edge162:                   ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.end22.if.end47_crit_edge161:                   ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.end22.if.end47_crit_edge160:                   ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.end22.if.end47_crit_edge159:                   ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.end22.if.end47_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end47:                                         ; preds = %if.end22.if.end47_crit_edge, %if.end22.if.end47_crit_edge159, %if.end22.if.end47_crit_edge160, %if.end22.if.end47_crit_edge161, %if.end22.if.end47_crit_edge162, %if.end.if.end47_crit_edge
  %17 = and i8 %9, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool51.not = icmp eq i8 %17, 0
  br i1 %tobool51.not, label %if.end47.if.end59_crit_edge, label %land.lhs.true52

if.end47.if.end59_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

land.lhs.true52:                                  ; preds = %if.end47
  %18 = getelementptr inbounds %struct.ebt_ip_info, ptr %1, i32 0, i32 9
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %18, align 4
  %arrayidx54 = getelementptr %struct.ebt_ip_info, ptr %1, i32 0, i32 9, i32 0, i32 1
  %21 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx54, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %20, i16 %22)
  %cmp56 = icmp ugt i16 %20, %22
  br i1 %cmp56, label %land.lhs.true52.cleanup_crit_edge, label %land.lhs.true52.if.end59_crit_edge

land.lhs.true52.if.end59_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

land.lhs.true52.cleanup_crit_edge:                ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end59:                                         ; preds = %land.lhs.true52.if.end59_crit_edge, %if.end47.if.end59_crit_edge
  %23 = and i8 %9, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool63.not = icmp eq i8 %23, 0
  br i1 %tobool63.not, label %if.end59.if.end72_crit_edge, label %land.lhs.true64

if.end59.if.end72_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

land.lhs.true64:                                  ; preds = %if.end59
  %24 = getelementptr inbounds %struct.ebt_ip_info, ptr %1, i32 0, i32 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %24, align 4
  %arrayidx67 = getelementptr %struct.ebt_ip_info, ptr %1, i32 0, i32 8, i32 0, i32 1
  %27 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx67, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %26, i16 %28)
  %cmp69 = icmp ugt i16 %26, %28
  br i1 %cmp69, label %land.lhs.true64.cleanup_crit_edge, label %land.lhs.true64.if.end72_crit_edge

land.lhs.true64.if.end72_crit_edge:               ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

land.lhs.true64.cleanup_crit_edge:                ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end72:                                         ; preds = %land.lhs.true64.if.end72_crit_edge, %if.end59.if.end72_crit_edge
  %29 = and i8 %9, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool76.not = icmp eq i8 %29, 0
  br i1 %tobool76.not, label %if.end72.if.end104_crit_edge, label %if.then77

if.end72.if.end104_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end104

if.then77:                                        ; preds = %if.end72
  %30 = and i8 %11, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool81.not = icmp eq i8 %30, 0
  br i1 %tobool81.not, label %lor.lhs.false82, label %if.then77.cleanup_crit_edge

if.then77.cleanup_crit_edge:                      ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false82:                                  ; preds = %if.then77
  %protocol83 = getelementptr inbounds %struct.ebt_ip_info, ptr %1, i32 0, i32 5
  %31 = ptrtoint ptr %protocol83 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %protocol83, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %32)
  %cmp85.not = icmp eq i8 %32, 1
  br i1 %cmp85.not, label %if.end88, label %lor.lhs.false82.cleanup_crit_edge

lor.lhs.false82.cleanup_crit_edge:                ; preds = %lor.lhs.false82
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end88:                                         ; preds = %lor.lhs.false82
  %33 = getelementptr inbounds %struct.ebt_ip_info, ptr %1, i32 0, i32 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %33, align 4
  %arrayidx91 = getelementptr [2 x i8], ptr %33, i32 0, i32 1
  %36 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx91, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %35, i8 %37)
  %cmp93 = icmp ugt i8 %35, %37
  br i1 %cmp93, label %if.end88.cleanup_crit_edge, label %lor.lhs.false95

if.end88.cleanup_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false95:                                  ; preds = %if.end88
  %38 = getelementptr inbounds %struct.ebt_ip_info, ptr %1, i32 0, i32 9
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %38, align 4
  %arrayidx98 = getelementptr [2 x i8], ptr %38, i32 0, i32 1
  %41 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx98, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %40, i8 %42)
  %cmp100 = icmp ugt i8 %40, %42
  br i1 %cmp100, label %lor.lhs.false95.cleanup_crit_edge, label %lor.lhs.false95.if.end104_crit_edge

lor.lhs.false95.if.end104_crit_edge:              ; preds = %lor.lhs.false95
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end104

lor.lhs.false95.cleanup_crit_edge:                ; preds = %lor.lhs.false95
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end104:                                        ; preds = %lor.lhs.false95.if.end104_crit_edge, %if.end72.if.end104_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %tobool108.not = icmp sgt i8 %9, -1
  br i1 %tobool108.not, label %if.end104.if.end129_crit_edge, label %if.then109

if.end104.if.end129_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end129

if.then109:                                       ; preds = %if.end104
  %43 = and i8 %11, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool113.not = icmp eq i8 %43, 0
  br i1 %tobool113.not, label %lor.lhs.false114, label %if.then109.cleanup_crit_edge

if.then109.cleanup_crit_edge:                     ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false114:                                 ; preds = %if.then109
  %protocol115 = getelementptr inbounds %struct.ebt_ip_info, ptr %1, i32 0, i32 5
  %44 = ptrtoint ptr %protocol115 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %protocol115, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %45)
  %cmp117.not = icmp eq i8 %45, 2
  br i1 %cmp117.not, label %if.end120, label %lor.lhs.false114.cleanup_crit_edge

lor.lhs.false114.cleanup_crit_edge:               ; preds = %lor.lhs.false114
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end120:                                        ; preds = %lor.lhs.false114
  %46 = getelementptr inbounds %struct.ebt_ip_info, ptr %1, i32 0, i32 8
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %46, align 4
  %arrayidx123 = getelementptr [2 x i8], ptr %46, i32 0, i32 1
  %49 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx123, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %48, i8 %50)
  %cmp125 = icmp ugt i8 %48, %50
  br i1 %cmp125, label %if.end120.cleanup_crit_edge, label %if.end120.if.end129_crit_edge

if.end120.if.end129_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end129

if.end120.cleanup_crit_edge:                      ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end129:                                        ; preds = %if.end120.if.end129_crit_edge, %if.end104.if.end129_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end129, %if.end120.cleanup_crit_edge, %lor.lhs.false114.cleanup_crit_edge, %if.then109.cleanup_crit_edge, %lor.lhs.false95.cleanup_crit_edge, %if.end88.cleanup_crit_edge, %lor.lhs.false82.cleanup_crit_edge, %if.then77.cleanup_crit_edge, %land.lhs.true64.cleanup_crit_edge, %land.lhs.true52.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.then16.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end129 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then16.cleanup_crit_edge ], [ -22, %if.end22.cleanup_crit_edge ], [ -22, %land.lhs.true52.cleanup_crit_edge ], [ -22, %land.lhs.true64.cleanup_crit_edge ], [ -22, %lor.lhs.false82.cleanup_crit_edge ], [ -22, %if.then77.cleanup_crit_edge ], [ -22, %lor.lhs.false95.cleanup_crit_edge ], [ -22, %if.end88.cleanup_crit_edge ], [ -22, %lor.lhs.false114.cleanup_crit_edge ], [ -22, %if.then109.cleanup_crit_edge ], [ -22, %if.end120.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @skb_header_pointer(ptr noundef %skb, i32 noundef %offset, i32 noundef %len, ptr noundef %buffer) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !prof !21

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %__skb_header_pointer.exit

lor.lhs.false.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %offset, ptr noundef %buffer, i32 noundef %len) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp slt i32 %call.i, 0
  %spec.select.i = select i1 %cmp3.i, ptr null, ptr %buffer, !prof !21
  br label %__skb_header_pointer.exit

__skb_header_pointer.exit:                        ; preds = %lor.lhs.false.i, %if.end.i.__skb_header_pointer.exit_crit_edge, %if.then.i
  %retval.0.i = phi ptr [ %add.ptr.i, %if.then.i ], [ null, %if.end.i.__skb_header_pointer.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  ret ptr %retval.0.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare void @__asan_store2_noabort(i32)

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
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @__initcall__kmod_ebt_ip__511_166_ebt_ip_init6, !1, !"__initcall__kmod_ebt_ip__511_166_ebt_ip_init6", i1 false, i1 false}
!1 = !{!"../net/bridge/netfilter/ebt_ip.c", i32 166, i32 1}
!2 = !{ptr @__exitcall_ebt_ip_fini, !3, !"__exitcall_ebt_ip_fini", i1 false, i1 false}
!3 = !{!"../net/bridge/netfilter/ebt_ip.c", i32 167, i32 1}
!4 = !{ptr @__UNIQUE_ID_description512, !5, !"__UNIQUE_ID_description512", i1 false, i1 false}
!5 = !{!"../net/bridge/netfilter/ebt_ip.c", i32 168, i32 1}
!6 = !{ptr @__UNIQUE_ID_file513, !7, !"__UNIQUE_ID_file513", i1 false, i1 false}
!7 = !{!"../net/bridge/netfilter/ebt_ip.c", i32 169, i32 1}
!8 = !{ptr @__UNIQUE_ID_license514, !7, !"__UNIQUE_ID_license514", i1 false, i1 false}
!9 = !{ptr @ebt_ip_mt_reg, !10, !"ebt_ip_mt_reg", i1 false, i1 false}
!10 = !{!"../net/bridge/netfilter/ebt_ip.c", i32 146, i32 24}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!20 = !{!"auto-init"}
!21 = !{!"branch_weights", i32 1, i32 2000}
