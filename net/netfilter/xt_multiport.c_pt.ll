; ModuleID = '/llk/IR_all_yes/net/netfilter/xt_multiport.c_pt.bc'
source_filename = "../net/netfilter/xt_multiport.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_match = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.xt_action_param = type { %union.anon.185, %union.anon.186, ptr, i32, i16, i8 }
%union.anon.185 = type { ptr }
%union.anon.186 = type { ptr }
%struct.sk_buff = type { %union.anon, %union.anon.168, %union.anon.169, [48 x i8], %union.anon.170, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.172, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.168 = type { ptr }
%union.anon.169 = type { i64 }
%union.anon.170 = type { %struct.anon.171 }
%struct.anon.171 = type { i32, ptr }
%union.anon.172 = type { %struct.anon.173 }
%struct.anon.173 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.174, i32, i32, i32, i16, i16, %union.anon.176, i32, %union.anon.177, %union.anon.178, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.174 = type { i32 }
%union.anon.176 = type { i32 }
%union.anon.177 = type { i32 }
%union.anon.178 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.xt_mtchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.ipt_ip = type { %struct.in_addr, %struct.in_addr, %struct.in_addr, %struct.in_addr, [16 x i8], [16 x i8], [16 x i8], [16 x i8], i16, i8, i8 }
%struct.in_addr = type { i32 }
%struct.xt_multiport_v1 = type { i8, i8, [15 x i16], [15 x i8], i8 }
%struct.ip6t_ip6 = type { %struct.in6_addr, %struct.in6_addr, %struct.in6_addr, %struct.in6_addr, [16 x i8], [16 x i8], [16 x i8], [16 x i8], i16, i8, i8, i8 }
%struct.in6_addr = type { %union.anon.28 }
%union.anon.28 = type { [4 x i32] }

@__UNIQUE_ID_file618 = internal constant [45 x i8] c"xt_multiport.file=net/netfilter/xt_multiport\00", section ".modinfo", align 1
@__UNIQUE_ID_license619 = internal constant [25 x i8] c"xt_multiport.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author620 = internal constant [65 x i8] c"xt_multiport.author=Netfilter Core Team <coreteam@netfilter.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description621 = internal constant [95 x i8] c"xt_multiport.description=Xtables: multiple port matching for TCP, UDP, UDP-Lite, SCTP and DCCP\00", section ".modinfo", align 1
@__UNIQUE_ID_alias622 = internal constant [33 x i8] c"xt_multiport.alias=ipt_multiport\00", section ".modinfo", align 1
@__UNIQUE_ID_alias623 = internal constant [34 x i8] c"xt_multiport.alias=ip6t_multiport\00", section ".modinfo", align 1
@multiport_mt_reg = internal global [2 x %struct.xt_match] [%struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"multiport\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 1, ptr @multiport_mt, ptr @multiport_mt_check, ptr null, ptr null, ptr null, i32 48, i32 0, i32 0, i16 0, i16 2 }, %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"multiport\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 1, ptr @multiport_mt, ptr @multiport_mt6_check, ptr null, ptr null, ptr null, i32 48, i32 0, i32 0, i16 0, i16 10 }], section ".data..read_mostly", align 4
@__initcall__kmod_xt_multiport__627_175_multiport_mt_init6 = internal global ptr @multiport_mt_init, section ".initcall6.init", align 4
@__exitcall_multiport_mt_exit = internal global ptr @multiport_mt_exit, section ".exitcall.exit", align 4
@multiport_mt.__UNIQUE_ID_ddebug626 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 25, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xt_multiport\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"multiport_mt\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"net/netfilter/xt_multiport.c\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Dropping evil offset=0 tinygram.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"xt_multiport: Dropping evil offset=0 tinygram.\0A\00", [48 x i8] zeroinitializer }, align 32
@ports_match_v1.__UNIQUE_ID_ddebug624 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 10, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ports_match_v1\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"src or dst matches with %d-%d?\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"xt_multiport: src or dst matches with %d-%d?\0A\00", [50 x i8] zeroinitializer }, align 32
@ports_match_v1.__UNIQUE_ID_ddebug625 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.8, i8 0, i8 15, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"src or dst matches with %d?\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"xt_multiport: src or dst matches with %d?\0A\00", [53 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 16, i64 6, i64 17, i64 33, i64 132, i64 136]
@__sancov_gen_cov_switch_values.10 = internal global [7 x i64] [i64 5, i64 16, i64 6, i64 17, i64 33, i64 132, i64 136]
@__sancov_gen_cov_switch_values.11 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.12 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 100, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 40, i32 4 }
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private constant [32 x i8] c"../net/netfilter/xt_multiport.c\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 61, i32 4 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_alias622, ptr @__UNIQUE_ID_alias623, ptr @__UNIQUE_ID_author620, ptr @__UNIQUE_ID_description621, ptr @__UNIQUE_ID_file618, ptr @__UNIQUE_ID_license619, ptr @__exitcall_multiport_mt_exit, ptr @__initcall__kmod_xt_multiport__627_175_multiport_mt_init6, ptr @multiport_mt_exit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @multiport_mt_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @xt_unregister_matches(ptr noundef nonnull @multiport_mt_reg, i32 noundef 2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_matches(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @multiport_mt_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_matches(ptr noundef nonnull @multiport_mt_reg, i32 noundef 2) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @multiport_mt(ptr noundef %skb, ptr nocapture noundef %par) #2 align 64 {
entry:
  %_ports = alloca [2 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_ports) #6
  %0 = ptrtoint ptr %_ports to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %_ports, align 2, !annotation !42
  %1 = getelementptr inbounds [2 x i16], ptr %_ports, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %1, align 2, !annotation !42
  %3 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %fragoff = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 4
  %6 = ptrtoint ptr %fragoff to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %fragoff, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp.not = icmp eq i16 %7, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %thoff = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 3
  %8 = ptrtoint ptr %thoff to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %thoff, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %12 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_len.i.i, align 8
  %14 = add i32 %9, %13
  %sub.i1.i = sub i32 %11, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i)
  %cmp.i.i = icmp sgt i32 %sub.i1.i, 3
  br i1 %cmp.i.i, label %skb_header_pointer.exit, label %if.end.i.i, !prof !43

if.end.i.i:                                       ; preds = %if.end
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.do.body_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.do.body_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %9, ptr noundef nonnull %_ports, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.do.body_crit_edge, label %lor.lhs.false.i.i.if.end10_crit_edge

lor.lhs.false.i.i.if.end10_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

lor.lhs.false.i.i.do.body_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

skb_header_pointer.exit:                          ; preds = %if.end
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 %9
  %cmp2 = icmp eq ptr %add.ptr.i.i, null
  br i1 %cmp2, label %skb_header_pointer.exit.do.body_crit_edge, label %skb_header_pointer.exit.if.end10_crit_edge

skb_header_pointer.exit.if.end10_crit_edge:       ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

skb_header_pointer.exit.do.body_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %skb_header_pointer.exit.do.body_crit_edge, %lor.lhs.false.i.i.do.body_crit_edge, %if.end.i.i.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @multiport_mt.__UNIQUE_ID_ddebug626, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@multiport_mt, %if.then8)) #6
          to label %do.end [label %if.then8], !srcloc !44

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @multiport_mt.__UNIQUE_ID_ddebug626, ptr noundef nonnull @.str.4) #6
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %hotdrop = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 5
  %17 = ptrtoint ptr %hotdrop to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %hotdrop, align 2
  br label %cleanup

if.end10:                                         ; preds = %skb_header_pointer.exit.if.end10_crit_edge, %lor.lhs.false.i.i.if.end10_crit_edge
  %retval.0.i.i25 = phi ptr [ %add.ptr.i.i, %skb_header_pointer.exit.if.end10_crit_edge ], [ %_ports, %lor.lhs.false.i.i.if.end10_crit_edge ]
  %18 = ptrtoint ptr %retval.0.i.i25 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %retval.0.i.i25, align 2
  %arrayidx11 = getelementptr i16, ptr %retval.0.i.i25, i32 1
  %20 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx11, align 2
  %call12 = call fastcc zeroext i1 @ports_match_v1(ptr noundef %5, i16 noundef zeroext %19, i16 noundef zeroext %21)
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %do.end ], [ %call12, %if.end10 ], [ false, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_ports) #6
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @multiport_mt_check(ptr nocapture noundef readonly %par) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %entryinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 2
  %0 = ptrtoint ptr %entryinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %entryinfo, align 4
  %proto = getelementptr inbounds %struct.ipt_ip, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %proto to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %proto, align 4
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %3, label %entry.check.exit.thread_crit_edge [
    i16 6, label %entry.check.exit_crit_edge
    i16 17, label %entry.check.exit_crit_edge4
    i16 136, label %entry.check.exit_crit_edge5
    i16 132, label %entry.check.exit_crit_edge6
    i16 33, label %entry.check.exit_crit_edge7
  ]

entry.check.exit_crit_edge7:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %check.exit

entry.check.exit_crit_edge6:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %check.exit

entry.check.exit_crit_edge5:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %check.exit

entry.check.exit_crit_edge4:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %check.exit

entry.check.exit_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %check.exit

entry.check.exit.thread_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %check.exit.thread

check.exit:                                       ; preds = %entry.check.exit_crit_edge, %entry.check.exit_crit_edge4, %entry.check.exit_crit_edge5, %entry.check.exit_crit_edge6, %entry.check.exit_crit_edge7
  %matchinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 4
  %5 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %matchinfo, align 4
  %count = getelementptr inbounds %struct.xt_multiport_v1, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %count, align 1
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %6, align 2
  %invflags = getelementptr inbounds %struct.ipt_ip, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %invflags to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %invflags, align 1
  %13 = and i8 %12, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %10)
  %switch.i = icmp ult i8 %10, 3
  %or.cond.i = and i1 %switch.i, %tobool.not.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %8)
  %cmp31.i = icmp ult i8 %8, 16
  %spec.select.i = and i1 %cmp31.i, %or.cond.i
  %spec.select = select i1 %spec.select.i, i32 0, i32 -22
  br label %check.exit.thread

check.exit.thread:                                ; preds = %check.exit, %entry.check.exit.thread_crit_edge
  %14 = phi i32 [ -22, %entry.check.exit.thread_crit_edge ], [ %spec.select, %check.exit ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @multiport_mt6_check(ptr nocapture noundef readonly %par) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %entryinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 2
  %0 = ptrtoint ptr %entryinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %entryinfo, align 4
  %proto = getelementptr inbounds %struct.ip6t_ip6, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %proto to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %proto, align 4
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.10)
  switch i16 %3, label %entry.check.exit.thread_crit_edge [
    i16 6, label %entry.check.exit_crit_edge
    i16 17, label %entry.check.exit_crit_edge4
    i16 136, label %entry.check.exit_crit_edge5
    i16 132, label %entry.check.exit_crit_edge6
    i16 33, label %entry.check.exit_crit_edge7
  ]

entry.check.exit_crit_edge7:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %check.exit

entry.check.exit_crit_edge6:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %check.exit

entry.check.exit_crit_edge5:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %check.exit

entry.check.exit_crit_edge4:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %check.exit

entry.check.exit_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %check.exit

entry.check.exit.thread_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %check.exit.thread

check.exit:                                       ; preds = %entry.check.exit_crit_edge, %entry.check.exit_crit_edge4, %entry.check.exit_crit_edge5, %entry.check.exit_crit_edge6, %entry.check.exit_crit_edge7
  %matchinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 4
  %5 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %matchinfo, align 4
  %count = getelementptr inbounds %struct.xt_multiport_v1, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %count, align 1
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %6, align 2
  %invflags = getelementptr inbounds %struct.ip6t_ip6, ptr %1, i32 0, i32 11
  %11 = ptrtoint ptr %invflags to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %invflags, align 4
  %13 = and i8 %12, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %10)
  %switch.i = icmp ult i8 %10, 3
  %or.cond.i = and i1 %switch.i, %tobool.not.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %8)
  %cmp31.i = icmp ult i8 %8, 16
  %spec.select.i = and i1 %cmp31.i, %or.cond.i
  %spec.select = select i1 %spec.select.i, i32 0, i32 -22
  br label %check.exit.thread

check.exit.thread:                                ; preds = %check.exit, %entry.check.exit.thread_crit_edge
  %14 = phi i32 [ -22, %entry.check.exit.thread_crit_edge ], [ %spec.select, %check.exit ]
  ret i32 %14
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ports_match_v1(ptr nocapture noundef readonly %minfo, i16 noundef zeroext %src, i16 noundef zeroext %dst) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %count = getelementptr inbounds %struct.xt_multiport_v1, ptr %minfo, i32 0, i32 1
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp179.not = icmp eq i8 %1, 0
  br i1 %cmp179.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0180 = phi i32 [ %inc125, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.xt_multiport_v1, ptr %minfo, i32 0, i32 2, i32 %i.0180
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %arrayidx2 = getelementptr %struct.xt_multiport_v1, ptr %minfo, i32 0, i32 3, i32 %i.0180
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %do.body65, label %if.then

if.then:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0180, 1
  %arrayidx4 = getelementptr %struct.xt_multiport_v1, ptr %minfo, i32 0, i32 2, i32 %inc
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx4, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ports_match_v1.__UNIQUE_ID_ddebug624, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ports_match_v1, %if.then8)) #6
          to label %do.end [label %if.then8], !srcloc !44

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %conv9 = zext i16 %3 to i32
  %conv10 = zext i16 %7 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ports_match_v1.__UNIQUE_ID_ddebug624, ptr noundef nonnull @.str.7, i32 noundef %conv9, i32 noundef %conv10) #6
  br label %do.end

do.end:                                           ; preds = %if.then8, %if.then
  %8 = ptrtoint ptr %minfo to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %minfo, align 2
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.11)
  switch i8 %9, label %do.end.for.inc_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb24
    i8 2, label %sw.bb40
  ]

do.end.for.inc_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %src)
  %cmp14.not = icmp ugt i16 %3, %src
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %src)
  %cmp18.not = icmp ult i16 %7, %src
  %or.cond = select i1 %cmp14.not, i1 true, i1 %cmp18.not
  br i1 %or.cond, label %sw.bb.for.inc_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb.for.inc_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

sw.bb24:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %dst)
  %cmp27.not = icmp ugt i16 %3, %dst
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %dst)
  %cmp32.not = icmp ult i16 %7, %dst
  %or.cond169 = select i1 %cmp27.not, i1 true, i1 %cmp32.not
  br i1 %or.cond169, label %sw.bb24.for.inc_crit_edge, label %sw.bb24.cleanup_crit_edge

sw.bb24.cleanup_crit_edge:                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb24.for.inc_crit_edge:                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

sw.bb40:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %dst)
  %cmp43.not = icmp ugt i16 %3, %dst
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %dst)
  %cmp48.not = icmp ult i16 %7, %dst
  %or.cond170 = select i1 %cmp43.not, i1 true, i1 %cmp48.not
  br i1 %or.cond170, label %lor.lhs.false, label %sw.bb40.cleanup_crit_edge

sw.bb40.cleanup_crit_edge:                        ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %src)
  %cmp52.not = icmp ugt i16 %3, %src
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %src)
  %cmp57.not = icmp ult i16 %7, %src
  %or.cond171 = select i1 %cmp52.not, i1 true, i1 %cmp57.not
  br i1 %or.cond171, label %lor.lhs.false.for.inc_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.body65:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ports_match_v1.__UNIQUE_ID_ddebug625, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ports_match_v1, %if.then77)) #6
          to label %do.end81 [label %if.then77], !srcloc !44

if.then77:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #8
  %conv78 = zext i16 %3 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ports_match_v1.__UNIQUE_ID_ddebug625, ptr noundef nonnull @.str.9, i32 noundef %conv78) #6
  br label %do.end81

do.end81:                                         ; preds = %if.then77, %do.body65
  %11 = ptrtoint ptr %minfo to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %minfo, align 2
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.12)
  switch i8 %12, label %do.end81.for.inc_crit_edge [
    i8 0, label %sw.bb84
    i8 1, label %sw.bb95
    i8 2, label %sw.bb106
  ]

do.end81.for.inc_crit_edge:                       ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

sw.bb84:                                          ; preds = %do.end81
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %src)
  %cmp87 = icmp eq i16 %3, %src
  br i1 %cmp87, label %sw.bb84.cleanup_crit_edge, label %sw.bb84.for.inc_crit_edge

sw.bb84.for.inc_crit_edge:                        ; preds = %sw.bb84
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

sw.bb84.cleanup_crit_edge:                        ; preds = %sw.bb84
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb95:                                          ; preds = %do.end81
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %dst)
  %cmp98 = icmp eq i16 %3, %dst
  br i1 %cmp98, label %sw.bb95.cleanup_crit_edge, label %sw.bb95.for.inc_crit_edge

sw.bb95.for.inc_crit_edge:                        ; preds = %sw.bb95
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

sw.bb95.cleanup_crit_edge:                        ; preds = %sw.bb95
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb106:                                         ; preds = %do.end81
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %src)
  %cmp109 = icmp eq i16 %3, %src
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %dst)
  %cmp114 = icmp eq i16 %3, %dst
  %or.cond172 = or i1 %cmp109, %cmp114
  br i1 %or.cond172, label %sw.bb106.cleanup_crit_edge, label %sw.bb106.for.inc_crit_edge

sw.bb106.for.inc_crit_edge:                       ; preds = %sw.bb106
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

sw.bb106.cleanup_crit_edge:                       ; preds = %sw.bb106
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc:                                          ; preds = %sw.bb106.for.inc_crit_edge, %sw.bb95.for.inc_crit_edge, %sw.bb84.for.inc_crit_edge, %do.end81.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %sw.bb24.for.inc_crit_edge, %sw.bb.for.inc_crit_edge, %do.end.for.inc_crit_edge
  %i.1 = phi i32 [ %inc, %do.end.for.inc_crit_edge ], [ %inc, %lor.lhs.false.for.inc_crit_edge ], [ %inc, %sw.bb24.for.inc_crit_edge ], [ %inc, %sw.bb.for.inc_crit_edge ], [ %i.0180, %do.end81.for.inc_crit_edge ], [ %i.0180, %sw.bb95.for.inc_crit_edge ], [ %i.0180, %sw.bb84.for.inc_crit_edge ], [ %i.0180, %sw.bb106.for.inc_crit_edge ]
  %inc125 = add i32 %i.1, 1
  %14 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %count, align 1
  %conv = zext i8 %15 to i32
  %cmp = icmp ult i32 %inc125, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %sw.bb106.cleanup_crit_edge, %sw.bb95.cleanup_crit_edge, %sw.bb84.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %sw.bb40.cleanup_crit_edge, %sw.bb24.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %.sink181 = phi i8 [ 0, %entry.cleanup_crit_edge ], [ 1, %sw.bb.cleanup_crit_edge ], [ 1, %sw.bb24.cleanup_crit_edge ], [ 1, %lor.lhs.false.cleanup_crit_edge ], [ 1, %sw.bb40.cleanup_crit_edge ], [ 1, %sw.bb84.cleanup_crit_edge ], [ 1, %sw.bb95.cleanup_crit_edge ], [ 1, %sw.bb106.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  %invert126 = getelementptr inbounds %struct.xt_multiport_v1, ptr %minfo, i32 0, i32 4
  %16 = ptrtoint ptr %invert126 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %invert126, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %.sink181)
  %tobool127 = icmp ne i8 %17, %.sink181
  ret i1 %tobool127
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_matches(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !26, !27, !28, !29, !31, !32}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @__UNIQUE_ID_file618, !1, !"__UNIQUE_ID_file618", i1 false, i1 false}
!1 = !{!"../net/netfilter/xt_multiport.c", i32 20, i32 1}
!2 = !{ptr @__UNIQUE_ID_license619, !1, !"__UNIQUE_ID_license619", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author620, !4, !"__UNIQUE_ID_author620", i1 false, i1 false}
!4 = !{!"../net/netfilter/xt_multiport.c", i32 21, i32 1}
!5 = !{ptr @__UNIQUE_ID_description621, !6, !"__UNIQUE_ID_description621", i1 false, i1 false}
!6 = !{!"../net/netfilter/xt_multiport.c", i32 22, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias622, !8, !"__UNIQUE_ID_alias622", i1 false, i1 false}
!8 = !{!"../net/netfilter/xt_multiport.c", i32 23, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias623, !10, !"__UNIQUE_ID_alias623", i1 false, i1 false}
!10 = !{!"../net/netfilter/xt_multiport.c", i32 24, i32 1}
!11 = !{ptr @__initcall__kmod_xt_multiport__627_175_multiport_mt_init6, !12, !"__initcall__kmod_xt_multiport__627_175_multiport_mt_init6", i1 false, i1 false}
!12 = !{!"../net/netfilter/xt_multiport.c", i32 175, i32 1}
!13 = !{ptr @__exitcall_multiport_mt_exit, !14, !"__exitcall_multiport_mt_exit", i1 false, i1 false}
!14 = !{!"../net/netfilter/xt_multiport.c", i32 176, i32 1}
!15 = !{ptr @multiport_mt_reg, !16, !"multiport_mt_reg", i1 false, i1 false}
!16 = !{!"../net/netfilter/xt_multiport.c", i32 143, i32 24}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/netfilter/xt_multiport.c", i32 100, i32 3}
!19 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @multiport_mt.__UNIQUE_ID_ddebug626, !18, !"__UNIQUE_ID_ddebug626", i1 false, i1 false}
!23 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/netfilter/xt_multiport.c", i32 40, i32 4}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @ports_match_v1.__UNIQUE_ID_ddebug624, !25, !"__UNIQUE_ID_ddebug624", i1 false, i1 false}
!28 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/netfilter/xt_multiport.c", i32 61, i32 4}
!31 = !{ptr @ports_match_v1.__UNIQUE_ID_ddebug625, !30, !"__UNIQUE_ID_ddebug625", i1 false, i1 false}
!32 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{!"auto-init"}
!43 = !{!"branch_weights", i32 2000, i32 1}
!44 = !{i64 2148956079, i64 2148956084, i64 2148956097, i64 2148956141, i64 2148956175, i64 2148956196}
