; ModuleID = '/llk/IR_all_yes/net/ipv6/netfilter/ip6t_mh.c_pt.bc'
source_filename = "../net/ipv6/netfilter/ip6t_mh.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_match = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ip6_mh = type { i8, i8, i8, i8, i16, [0 x i8] }
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
%struct.ip6t_mh = type { [2 x i8], i8 }
%struct.xt_mtchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }

@__UNIQUE_ID_description509 = internal constant [56 x i8] c"ip6t_mh.description=Xtables: IPv6 Mobility Header match\00", section ".modinfo", align 1
@__UNIQUE_ID_file510 = internal constant [40 x i8] c"ip6t_mh.file=net/ipv6/netfilter/ip6t_mh\00", section ".modinfo", align 1
@__UNIQUE_ID_license511 = internal constant [20 x i8] c"ip6t_mh.license=GPL\00", section ".modinfo", align 1
@mh_mt6_reg = internal global %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"mh\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @mh_mt6, ptr @mh_mt6_check, ptr null, ptr null, ptr null, i32 3, i32 0, i32 0, i16 135, i16 10 }, section ".data..read_mostly", align 4
@__initcall__kmod_ip6t_mh__514_89_mh_mt6_init6 = internal global ptr @mh_mt6_init, section ".initcall6.init", align 4
@__exitcall_mh_mt6_exit = internal global ptr @mh_mt6_exit, section ".exitcall.exit", align 4
@mh_mt6.__UNIQUE_ID_ddebug512 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 11, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ip6t_mh\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mh_mt6\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"net/ipv6/netfilter/ip6t_mh.c\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Dropping evil MH tinygram.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ip6t_mh: Dropping evil MH tinygram.\0A\00", [59 x i8] zeroinitializer }, align 32
@mh_mt6.__UNIQUE_ID_ddebug513 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 13, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Dropping invalid MH Payload Proto: %u\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"ip6t_mh: Dropping invalid MH Payload Proto: %u\0A\00", [48 x i8] zeroinitializer }, align 32
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 45, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.26 = private constant [32 x i8] c"../net/ipv6/netfilter/ip6t_mh.c\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 51, i32 3 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_description509, ptr @__UNIQUE_ID_file510, ptr @__UNIQUE_ID_license511, ptr @__exitcall_mh_mt6_exit, ptr @__initcall__kmod_ip6t_mh__514_89_mh_mt6_init6, ptr @mh_mt6_exit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mh_mt6_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @xt_unregister_match(ptr noundef nonnull @mh_mt6_reg) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mh_mt6_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_match(ptr noundef nonnull @mh_mt6_reg) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @mh_mt6(ptr noundef %skb, ptr nocapture noundef %par) #2 align 64 {
entry:
  %_mh = alloca %struct.ip6_mh, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %_mh) #5
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = call ptr @memset(ptr %_mh, i32 255, i32 6)
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %0, align 4
  %fragoff = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 4
  %4 = ptrtoint ptr %fragoff to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %fragoff, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp.not = icmp eq i16 %5, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %thoff = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 3
  %6 = ptrtoint ptr %thoff to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %thoff, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %10 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_len.i.i, align 8
  %12 = add i32 %7, %11
  %sub.i1.i = sub i32 %9, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub.i1.i)
  %cmp.i.i = icmp sgt i32 %sub.i1.i, 5
  br i1 %cmp.i.i, label %skb_header_pointer.exit, label %if.end.i.i, !prof !31

if.end.i.i:                                       ; preds = %if.end
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.do.body_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.do.body_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %7, ptr noundef nonnull %_mh, i32 noundef 6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.do.body_crit_edge, label %lor.lhs.false.i.i.if.end10_crit_edge

lor.lhs.false.i.i.if.end10_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

lor.lhs.false.i.i.do.body_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

skb_header_pointer.exit:                          ; preds = %if.end
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 %7
  %cmp2 = icmp eq ptr %add.ptr.i.i, null
  br i1 %cmp2, label %skb_header_pointer.exit.do.body_crit_edge, label %skb_header_pointer.exit.if.end10_crit_edge

skb_header_pointer.exit.if.end10_crit_edge:       ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

skb_header_pointer.exit.do.body_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.body:                                          ; preds = %skb_header_pointer.exit.do.body_crit_edge, %lor.lhs.false.i.i.do.body_crit_edge, %if.end.i.i.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mh_mt6.__UNIQUE_ID_ddebug512, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mh_mt6, %if.then8)) #5
          to label %do.end [label %if.then8], !srcloc !32

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mh_mt6.__UNIQUE_ID_ddebug512, ptr noundef nonnull @.str.4) #5
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %hotdrop = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 5
  %15 = ptrtoint ptr %hotdrop to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %hotdrop, align 2
  br label %cleanup

if.end10:                                         ; preds = %skb_header_pointer.exit.if.end10_crit_edge, %lor.lhs.false.i.i.if.end10_crit_edge
  %retval.0.i.i63 = phi ptr [ %add.ptr.i.i, %skb_header_pointer.exit.if.end10_crit_edge ], [ %_mh, %lor.lhs.false.i.i.if.end10_crit_edge ]
  %16 = ptrtoint ptr %retval.0.i.i63 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %retval.0.i.i63, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 59, i8 %17)
  %cmp12.not = icmp eq i8 %17, 59
  br i1 %cmp12.not, label %if.end34, label %do.body15

do.body15:                                        ; preds = %if.end10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mh_mt6.__UNIQUE_ID_ddebug513, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mh_mt6, %if.then27)) #5
          to label %do.end32 [label %if.then27], !srcloc !32

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %retval.0.i.i63 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %retval.0.i.i63, align 1
  %conv29 = zext i8 %19 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mh_mt6.__UNIQUE_ID_ddebug513, ptr noundef nonnull @.str.6, i32 noundef %conv29) #5
  br label %do.end32

do.end32:                                         ; preds = %if.then27, %do.body15
  %hotdrop33 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 5
  %20 = ptrtoint ptr %hotdrop33 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %hotdrop33, align 2
  br label %cleanup

if.end34:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %3, align 1
  %arrayidx36 = getelementptr [2 x i8], ptr %3, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx36, align 1
  %ip6mh_type = getelementptr inbounds %struct.ip6_mh, ptr %retval.0.i.i63, i32 0, i32 2
  %25 = ptrtoint ptr %ip6mh_type to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ip6mh_type, align 1
  %invflags = getelementptr inbounds %struct.ip6t_mh, ptr %3, i32 0, i32 1
  %27 = ptrtoint ptr %invflags to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %invflags, align 1
  %29 = and i8 %28, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool38 = icmp ne i8 %29, 0
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %22)
  %cmp.not.i = icmp uge i8 %26, %22
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %24)
  %cmp5.i = icmp ule i8 %26, %24
  %narrow.i = and i1 %cmp.not.i, %cmp5.i
  %tobool8.i = xor i1 %narrow.i, %tobool38
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %do.end32, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %do.end ], [ false, %do.end32 ], [ %tobool8.i, %if.end34 ], [ false, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %_mh) #5
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mh_mt6_check(ptr nocapture noundef readonly %par) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %invflags = getelementptr inbounds %struct.ip6t_mh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %invflags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %invflags, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %tobool.not = icmp ult i8 %3, 2
  %cond = select i1 %tobool.not, i32 0, i32 -22
  ret i32 %cond
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !14, !15, !16, !17, !18, !20, !21}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @__UNIQUE_ID_description509, !1, !"__UNIQUE_ID_description509", i1 false, i1 false}
!1 = !{!"../net/ipv6/netfilter/ip6t_mh.c", i32 21, i32 1}
!2 = !{ptr @__UNIQUE_ID_file510, !3, !"__UNIQUE_ID_file510", i1 false, i1 false}
!3 = !{!"../net/ipv6/netfilter/ip6t_mh.c", i32 22, i32 1}
!4 = !{ptr @__UNIQUE_ID_license511, !3, !"__UNIQUE_ID_license511", i1 false, i1 false}
!5 = !{ptr @__initcall__kmod_ip6t_mh__514_89_mh_mt6_init6, !6, !"__initcall__kmod_ip6t_mh__514_89_mh_mt6_init6", i1 false, i1 false}
!6 = !{!"../net/ipv6/netfilter/ip6t_mh.c", i32 89, i32 1}
!7 = !{ptr @__exitcall_mh_mt6_exit, !8, !"__exitcall_mh_mt6_exit", i1 false, i1 false}
!8 = !{!"../net/ipv6/netfilter/ip6t_mh.c", i32 90, i32 1}
!9 = !{ptr @mh_mt6_reg, !10, !"mh_mt6_reg", i1 false, i1 false}
!10 = !{!"../net/ipv6/netfilter/ip6t_mh.c", i32 69, i32 24}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/ipv6/netfilter/ip6t_mh.c", i32 45, i32 3}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @mh_mt6.__UNIQUE_ID_ddebug512, !12, !"__UNIQUE_ID_ddebug512", i1 false, i1 false}
!17 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/ipv6/netfilter/ip6t_mh.c", i32 51, i32 3}
!20 = !{ptr @mh_mt6.__UNIQUE_ID_ddebug513, !19, !"__UNIQUE_ID_ddebug513", i1 false, i1 false}
!21 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{!"branch_weights", i32 2000, i32 1}
!32 = !{i64 2148953663, i64 2148953668, i64 2148953681, i64 2148953725, i64 2148953759, i64 2148953780}
