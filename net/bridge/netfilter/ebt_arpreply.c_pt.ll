; ModuleID = '/llk/IR_all_yes/net/bridge/netfilter/ebt_arpreply.c_pt.bc'
source_filename = "../net/bridge/netfilter/ebt_arpreply.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_target = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
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
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.ebt_arpreply_info = type { [6 x i8], i32 }
%struct.xt_tgchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.ebt_entry = type { i32, i32, i16, [16 x i8], [16 x i8], [16 x i8], [16 x i8], [6 x i8], [6 x i8], [6 x i8], [6 x i8], i32, i32, i32, [0 x i8] }

@ebt_arpreply_tg_reg = internal global %struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"arpreply\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @ebt_arpreply_tg, ptr @ebt_arpreply_tg_check, ptr null, ptr null, ptr @.str, i32 12, i32 0, i32 65, i16 0, i16 7 }, section ".data..read_mostly", align 4
@__initcall__kmod_ebt_arpreply__476_100_ebt_arpreply_init6 = internal global ptr @ebt_arpreply_init, section ".initcall6.init", align 4
@__exitcall_ebt_arpreply_fini = internal global ptr @ebt_arpreply_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_description477 = internal constant [52 x i8] c"ebt_arpreply.description=Ebtables: ARP reply target\00", section ".modinfo", align 1
@__UNIQUE_ID_file478 = internal constant [52 x i8] c"ebt_arpreply.file=net/bridge/netfilter/ebt_arpreply\00", section ".modinfo", align 1
@__UNIQUE_ID_license479 = internal constant [25 x i8] c"ebt_arpreply.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nat\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [39 x i8] c"../net/bridge/netfilter/ebt_arpreply.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 82, i32 12 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_description477, ptr @__UNIQUE_ID_file478, ptr @__UNIQUE_ID_license479, ptr @__exitcall_ebt_arpreply_fini, ptr @__initcall__kmod_ebt_arpreply__476_100_ebt_arpreply_init6, ptr @ebt_arpreply_fini, ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ebt_arpreply_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @xt_unregister_target(ptr noundef nonnull @ebt_arpreply_tg_reg) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_target(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ebt_arpreply_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_target(ptr noundef nonnull @ebt_arpreply_tg_reg) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ebt_arpreply_tg(ptr noundef %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  %_sip = alloca i32, align 4
  %_dip = alloca i32, align 4
  %_ah = alloca %struct.arphdr, align 8
  %_sha = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %_ah.sroa.gep = getelementptr inbounds %struct.arphdr, ptr %_ah, i32 0, i32 4
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_sip) #6
  %3 = ptrtoint ptr %_sip to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %_sip, align 4, !annotation !22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_dip) #6
  %4 = ptrtoint ptr %_dip to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %_dip, align 4, !annotation !22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_ah) #6
  %5 = ptrtoint ptr %_ah to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %_ah, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %_sha) #6
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = call ptr @memset(ptr %_sha, i32 255, i32 6)
  %7 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %9 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data_len.i.i, align 8
  %sub.i4.i = sub i32 %8, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 8
  br i1 %cmp.not.i.i, label %if.end.i.i, label %skb_header_pointer.exit, !prof !23

if.end.i.i:                                       ; preds = %entry
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef 0, ptr noundef nonnull %_ah, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i.if.end_crit_edge

lor.lhs.false.i.i.if.end_crit_edge:               ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

skb_header_pointer.exit:                          ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i, align 4
  %.sroa.gep = getelementptr inbounds %struct.arphdr, ptr %12, i32 0, i32 4
  %cmp = icmp eq ptr %12, null
  br i1 %cmp, label %skb_header_pointer.exit.cleanup_crit_edge, label %skb_header_pointer.exit.if.end_crit_edge

skb_header_pointer.exit.if.end_crit_edge:         ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

skb_header_pointer.exit.cleanup_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %skb_header_pointer.exit.if.end_crit_edge, %lor.lhs.false.i.i.if.end_crit_edge
  %retval.0.i.i87 = phi ptr [ %12, %skb_header_pointer.exit.if.end_crit_edge ], [ %_ah, %lor.lhs.false.i.i.if.end_crit_edge ]
  %retval.0.i.i87.sroa.phi = phi ptr [ %.sroa.gep, %skb_header_pointer.exit.if.end_crit_edge ], [ %_ah.sroa.gep, %lor.lhs.false.i.i.if.end_crit_edge ]
  %13 = ptrtoint ptr %retval.0.i.i87.sroa.phi to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %retval.0.i.i87.sroa.phi, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %14)
  %cmp1.not = icmp eq i16 %14, 1
  br i1 %cmp1.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %ar_hln = getelementptr inbounds %struct.arphdr, ptr %retval.0.i.i87, i32 0, i32 2
  %15 = ptrtoint ptr %ar_hln to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ar_hln, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %16)
  %cmp4.not = icmp eq i8 %16, 6
  br i1 %cmp4.not, label %lor.lhs.false6, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %ar_pro = getelementptr inbounds %struct.arphdr, ptr %retval.0.i.i87, i32 0, i32 1
  %17 = ptrtoint ptr %ar_pro to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %ar_pro, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %18)
  %cmp8.not = icmp eq i16 %18, 2048
  br i1 %cmp8.not, label %lor.lhs.false10, label %lor.lhs.false6.cleanup_crit_edge

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false10:                                  ; preds = %lor.lhs.false6
  %ar_pln = getelementptr inbounds %struct.arphdr, ptr %retval.0.i.i87, i32 0, i32 3
  %19 = ptrtoint ptr %ar_pln to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ar_pln, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %20)
  %cmp12.not = icmp eq i8 %20, 4
  br i1 %cmp12.not, label %if.end15, label %lor.lhs.false10.cleanup_crit_edge

lor.lhs.false10.cleanup_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false10
  %21 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len.i.i, align 4
  %23 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data_len.i.i, align 8
  %.neg102 = add i32 %22, -8
  %sub.i4.i55 = sub i32 %.neg102, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %sub.i4.i55)
  %cmp.not.i.i56 = icmp slt i32 %sub.i4.i55, 6
  br i1 %cmp.not.i.i56, label %if.end.i.i60, label %skb_header_pointer.exit66, !prof !23

if.end.i.i60:                                     ; preds = %if.end15
  %tobool2.not.i.i59 = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i59, label %if.end.i.i60.cleanup_crit_edge, label %lor.lhs.false.i.i64

if.end.i.i60.cleanup_crit_edge:                   ; preds = %if.end.i.i60
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false.i.i64:                              ; preds = %if.end.i.i60
  %call.i.i61 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef 8, ptr noundef nonnull %_sha, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i61)
  %cmp3.i.i62 = icmp slt i32 %call.i.i61, 0
  br i1 %cmp3.i.i62, label %lor.lhs.false.i.i64.cleanup_crit_edge, label %lor.lhs.false.i.i64.if.end20_crit_edge

lor.lhs.false.i.i64.if.end20_crit_edge:           ; preds = %lor.lhs.false.i.i64
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

lor.lhs.false.i.i64.cleanup_crit_edge:            ; preds = %lor.lhs.false.i.i64
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

skb_header_pointer.exit66:                        ; preds = %if.end15
  %data.i57 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %25 = ptrtoint ptr %data.i57 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i57, align 4
  %add.ptr.i.i = getelementptr i8, ptr %26, i32 8
  %cmp17 = icmp eq ptr %add.ptr.i.i, null
  br i1 %cmp17, label %skb_header_pointer.exit66.cleanup_crit_edge, label %skb_header_pointer.exit66.if.end20_crit_edge

skb_header_pointer.exit66.if.end20_crit_edge:     ; preds = %skb_header_pointer.exit66
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

skb_header_pointer.exit66.cleanup_crit_edge:      ; preds = %skb_header_pointer.exit66
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %skb_header_pointer.exit66.if.end20_crit_edge, %lor.lhs.false.i.i64.if.end20_crit_edge
  %retval.0.i.i6594 = phi ptr [ %add.ptr.i.i, %skb_header_pointer.exit66.if.end20_crit_edge ], [ %_sha, %lor.lhs.false.i.i64.if.end20_crit_edge ]
  %27 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len.i.i, align 4
  %29 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %data_len.i.i, align 8
  %.neg104 = add i32 %28, -14
  %sub.i4.i69 = sub i32 %.neg104, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i4.i69)
  %cmp.not.i.i70 = icmp slt i32 %sub.i4.i69, 4
  br i1 %cmp.not.i.i70, label %if.end.i.i75, label %skb_header_pointer.exit81, !prof !23

if.end.i.i75:                                     ; preds = %if.end20
  %tobool2.not.i.i74 = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i74, label %if.end.i.i75.cleanup_crit_edge, label %lor.lhs.false.i.i79

if.end.i.i75.cleanup_crit_edge:                   ; preds = %if.end.i.i75
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false.i.i79:                              ; preds = %if.end.i.i75
  %call.i.i76 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef 14, ptr noundef nonnull %_sip, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i76)
  %cmp3.i.i77 = icmp slt i32 %call.i.i76, 0
  br i1 %cmp3.i.i77, label %lor.lhs.false.i.i79.cleanup_crit_edge, label %lor.lhs.false.i.i79.if.end25_crit_edge

lor.lhs.false.i.i79.if.end25_crit_edge:           ; preds = %lor.lhs.false.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

lor.lhs.false.i.i79.cleanup_crit_edge:            ; preds = %lor.lhs.false.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

skb_header_pointer.exit81:                        ; preds = %if.end20
  %data.i71 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %31 = ptrtoint ptr %data.i71 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i71, align 4
  %add.ptr.i.i72 = getelementptr i8, ptr %32, i32 14
  %cmp22 = icmp eq ptr %add.ptr.i.i72, null
  br i1 %cmp22, label %skb_header_pointer.exit81.cleanup_crit_edge, label %skb_header_pointer.exit81.if.end25_crit_edge

skb_header_pointer.exit81.if.end25_crit_edge:     ; preds = %skb_header_pointer.exit81
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

skb_header_pointer.exit81.cleanup_crit_edge:      ; preds = %skb_header_pointer.exit81
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25:                                         ; preds = %skb_header_pointer.exit81.if.end25_crit_edge, %lor.lhs.false.i.i79.if.end25_crit_edge
  %retval.0.i.i80101 = phi ptr [ %add.ptr.i.i72, %skb_header_pointer.exit81.if.end25_crit_edge ], [ %_sip, %lor.lhs.false.i.i79.if.end25_crit_edge ]
  %call26 = call fastcc ptr @skb_header_pointer(ptr noundef %skb, i32 noundef 24, i32 noundef 4, ptr noundef nonnull %_dip)
  %cmp27 = icmp eq ptr %call26, null
  br i1 %cmp27, label %if.end25.cleanup_crit_edge, label %if.end30

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end30:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %retval.0.i.i80101 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %retval.0.i.i80101, align 4
  %state.i = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 2
  %35 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %state.i, align 4
  %in.i = getelementptr inbounds %struct.nf_hook_state, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %in.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %in.i, align 4
  %39 = ptrtoint ptr %call26 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %call26, align 4
  call void @arp_send(i32 noundef 2, i32 noundef 2054, i32 noundef %34, ptr noundef %38, i32 noundef %40, ptr noundef nonnull %retval.0.i.i6594, ptr noundef %2, ptr noundef nonnull %retval.0.i.i6594) #6
  %target = getelementptr inbounds %struct.ebt_arpreply_info, ptr %2, i32 0, i32 1
  %41 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %target, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.end25.cleanup_crit_edge, %skb_header_pointer.exit81.cleanup_crit_edge, %lor.lhs.false.i.i79.cleanup_crit_edge, %if.end.i.i75.cleanup_crit_edge, %skb_header_pointer.exit66.cleanup_crit_edge, %lor.lhs.false.i.i64.cleanup_crit_edge, %if.end.i.i60.cleanup_crit_edge, %lor.lhs.false10.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %skb_header_pointer.exit.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %42, %if.end30 ], [ -2, %skb_header_pointer.exit.cleanup_crit_edge ], [ -3, %lor.lhs.false10.cleanup_crit_edge ], [ -3, %lor.lhs.false6.cleanup_crit_edge ], [ -3, %lor.lhs.false.cleanup_crit_edge ], [ -3, %if.end.cleanup_crit_edge ], [ -2, %skb_header_pointer.exit66.cleanup_crit_edge ], [ -2, %skb_header_pointer.exit81.cleanup_crit_edge ], [ -2, %if.end25.cleanup_crit_edge ], [ -2, %if.end.i.i.cleanup_crit_edge ], [ -2, %lor.lhs.false.i.i.cleanup_crit_edge ], [ -2, %if.end.i.i60.cleanup_crit_edge ], [ -2, %lor.lhs.false.i.i64.cleanup_crit_edge ], [ -2, %if.end.i.i75.cleanup_crit_edge ], [ -2, %lor.lhs.false.i.i79.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %_sha) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_ah) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_dip) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_sip) #6
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ebt_arpreply_tg_check(ptr nocapture noundef readonly %par) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %targinfo = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %targinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %targinfo, align 4
  %entryinfo = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 2
  %2 = ptrtoint ptr %entryinfo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entryinfo, align 4
  %hook_mask = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 5
  %4 = ptrtoint ptr %hook_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hook_mask, align 4
  %and = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %target = getelementptr inbounds %struct.ebt_arpreply_info, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %7)
  %cmp = icmp eq i32 %7, -4
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %ethproto = getelementptr inbounds %struct.ebt_entry, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %ethproto to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %ethproto, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2054, i16 %9)
  %cmp1.not = icmp eq i16 %9, 2054
  br i1 %cmp1.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %invflags = getelementptr inbounds %struct.ebt_entry, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %invflags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %invflags, align 4
  %and3 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end6, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %target7 = getelementptr inbounds %struct.ebt_arpreply_info, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %target7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %target7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %13)
  %14 = icmp ult i32 %13, -4
  %. = select i1 %14, i32 -22, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %., %if.end6 ]
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
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !prof !23

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
  %spec.select.i = select i1 %cmp3.i, ptr null, ptr %buffer, !prof !23
  br label %__skb_header_pointer.exit

__skb_header_pointer.exit:                        ; preds = %lor.lhs.false.i, %if.end.i.__skb_header_pointer.exit_crit_edge, %if.then.i
  %retval.0.i = phi ptr [ %add.ptr.i, %if.then.i ], [ null, %if.end.i.__skb_header_pointer.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  ret ptr %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arp_send(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_target(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @__initcall__kmod_ebt_arpreply__476_100_ebt_arpreply_init6, !1, !"__initcall__kmod_ebt_arpreply__476_100_ebt_arpreply_init6", i1 false, i1 false}
!1 = !{!"../net/bridge/netfilter/ebt_arpreply.c", i32 100, i32 1}
!2 = !{ptr @__exitcall_ebt_arpreply_fini, !3, !"__exitcall_ebt_arpreply_fini", i1 false, i1 false}
!3 = !{!"../net/bridge/netfilter/ebt_arpreply.c", i32 101, i32 1}
!4 = !{ptr @__UNIQUE_ID_description477, !5, !"__UNIQUE_ID_description477", i1 false, i1 false}
!5 = !{!"../net/bridge/netfilter/ebt_arpreply.c", i32 102, i32 1}
!6 = !{ptr @__UNIQUE_ID_file478, !7, !"__UNIQUE_ID_file478", i1 false, i1 false}
!7 = !{!"../net/bridge/netfilter/ebt_arpreply.c", i32 103, i32 1}
!8 = !{ptr @__UNIQUE_ID_license479, !7, !"__UNIQUE_ID_license479", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../net/bridge/netfilter/ebt_arpreply.c", i32 82, i32 12}
!11 = !{ptr @ebt_arpreply_tg_reg, !12, !"ebt_arpreply_tg_reg", i1 false, i1 false}
!12 = !{!"../net/bridge/netfilter/ebt_arpreply.c", i32 78, i32 25}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{!"auto-init"}
!23 = !{!"branch_weights", i32 1, i32 2000}
