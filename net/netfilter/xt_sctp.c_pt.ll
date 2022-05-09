; ModuleID = '/llk/IR_all_yes/net/netfilter/xt_sctp.c_pt.bc'
source_filename = "../net/netfilter/xt_sctp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_match = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.sctphdr = type { i16, i16, i32, i32 }
%struct.xt_action_param = type { %union.anon.196, %union.anon.197, ptr, i32, i16, i8 }
%union.anon.196 = type { ptr }
%union.anon.197 = type { ptr }
%struct.sk_buff = type { %union.anon, %union.anon.179, %union.anon.180, [48 x i8], %union.anon.181, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.183, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.179 = type { ptr }
%union.anon.180 = type { i64 }
%union.anon.181 = type { %struct.anon.182 }
%struct.anon.182 = type { i32, ptr }
%union.anon.183 = type { %struct.anon.184 }
%struct.anon.184 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.185, i32, i32, i32, i16, i16, %union.anon.187, i32, %union.anon.188, %union.anon.189, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.185 = type { i32 }
%union.anon.187 = type { i32 }
%union.anon.188 = type { i32 }
%union.anon.189 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.xt_sctp_info = type { [2 x i16], [2 x i16], [64 x i32], i32, [4 x %struct.xt_sctp_flag_info], i32, i32, i32 }
%struct.xt_sctp_flag_info = type { i8, i8, i8 }
%struct.xt_mtchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.sctp_chunkhdr = type { i8, i8, i16 }

@__UNIQUE_ID_file682 = internal constant [35 x i8] c"xt_sctp.file=net/netfilter/xt_sctp\00", section ".modinfo", align 1
@__UNIQUE_ID_license683 = internal constant [20 x i8] c"xt_sctp.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author684 = internal constant [34 x i8] c"xt_sctp.author=Kiran Kumar Immidi\00", section ".modinfo", align 1
@__UNIQUE_ID_description685 = internal constant [56 x i8] c"xt_sctp.description=Xtables: SCTP protocol packet match\00", section ".modinfo", align 1
@__UNIQUE_ID_alias686 = internal constant [23 x i8] c"xt_sctp.alias=ipt_sctp\00", section ".modinfo", align 1
@__UNIQUE_ID_alias687 = internal constant [24 x i8] c"xt_sctp.alias=ip6t_sctp\00", section ".modinfo", align 1
@sctp_mt_reg = internal global [2 x %struct.xt_match] [%struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"sctp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @sctp_mt, ptr @sctp_mt_check, ptr null, ptr null, ptr null, i32 292, i32 0, i32 0, i16 132, i16 2 }, %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"sctp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @sctp_mt, ptr @sctp_mt_check, ptr null, ptr null, ptr null, i32 292, i32 0, i32 0, i16 132, i16 10 }], section ".data..read_mostly", align 4
@__initcall__kmod_xt_sctp__693_198_sctp_mt_init6 = internal global ptr @sctp_mt_init, section ".initcall6.init", align 4
@__exitcall_sctp_mt_exit = internal global ptr @sctp_mt_exit, section ".exitcall.exit", align 4
@sctp_mt.__UNIQUE_ID_ddebug690 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 31, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"xt_sctp\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sctp_mt\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net/netfilter/xt_sctp.c\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Dropping non-first fragment.. FIXME\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"xt_sctp: Dropping non-first fragment.. FIXME\0A\00", [50 x i8] zeroinitializer }, align 32
@sctp_mt.__UNIQUE_ID_ddebug691 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 33, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Dropping evil TCP offset=0 tinygram.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"xt_sctp: Dropping evil TCP offset=0 tinygram.\0A\00", [49 x i8] zeroinitializer }, align 32
@sctp_mt.__UNIQUE_ID_ddebug692 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 34, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"spt: %d\09dpt: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"xt_sctp: spt: %d\09dpt: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@match_packet.__UNIQUE_ID_ddebug688 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 15, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"match_packet\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Dropping invalid SCTP packet.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"xt_sctp: Dropping invalid SCTP packet.\0A\00", [56 x i8] zeroinitializer }, align 32
@match_packet.__UNIQUE_ID_ddebug689 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.12, i8 0, i8 18, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"skb->len: %d\09offset: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"xt_sctp: skb->len: %d\09offset: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 126, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 132, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 136, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 62, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private constant [27 x i8] c"../net/netfilter/xt_sctp.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 74, i32 3 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__UNIQUE_ID_alias686, ptr @__UNIQUE_ID_alias687, ptr @__UNIQUE_ID_author684, ptr @__UNIQUE_ID_description685, ptr @__UNIQUE_ID_file682, ptr @__UNIQUE_ID_license683, ptr @__exitcall_sctp_mt_exit, ptr @__initcall__kmod_xt_sctp__693_198_sctp_mt_init6, ptr @sctp_mt_exit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sctp_mt_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @xt_unregister_matches(ptr noundef nonnull @sctp_mt_reg, i32 noundef 2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_matches(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sctp_mt_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_matches(ptr noundef nonnull @sctp_mt_reg, i32 noundef 2) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @sctp_mt(ptr noundef %skb, ptr nocapture noundef %par) #2 align 64 {
entry:
  %_sh = alloca %struct.sctphdr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %_sh) #6
  %fragoff = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 4
  %3 = call ptr @memset(ptr %_sh, i32 255, i32 12)
  %4 = ptrtoint ptr %fragoff to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %fragoff, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp.not = icmp eq i16 %5, 0
  br i1 %cmp.not, label %if.end5, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_mt.__UNIQUE_ID_ddebug690, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_mt, %if.then4)) #6
          to label %cleanup [label %if.then4], !srcloc !50

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_mt.__UNIQUE_ID_ddebug690, ptr noundef nonnull @.str.4) #6
  br label %cleanup

if.end5:                                          ; preds = %entry
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
  %sub.i4.i = sub i32 %9, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 12
  br i1 %cmp.not.i.i, label %if.end.i.i, label %skb_header_pointer.exit, !prof !51

if.end.i.i:                                       ; preds = %if.end5
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.do.body10_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.do.body10_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body10

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %7, ptr noundef nonnull %_sh, i32 noundef 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.do.body10_crit_edge, label %lor.lhs.false.i.i.do.body27_crit_edge

lor.lhs.false.i.i.do.body27_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body27

lor.lhs.false.i.i.do.body10_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body10

skb_header_pointer.exit:                          ; preds = %if.end5
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 %7
  %cmp7 = icmp eq ptr %add.ptr.i.i, null
  br i1 %cmp7, label %skb_header_pointer.exit.do.body10_crit_edge, label %skb_header_pointer.exit.do.body27_crit_edge

skb_header_pointer.exit.do.body27_crit_edge:      ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body27

skb_header_pointer.exit.do.body10_crit_edge:      ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body10

do.body10:                                        ; preds = %skb_header_pointer.exit.do.body10_crit_edge, %lor.lhs.false.i.i.do.body10_crit_edge, %if.end.i.i.do.body10_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_mt.__UNIQUE_ID_ddebug691, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_mt, %if.then22)) #6
          to label %do.end25 [label %if.then22], !srcloc !50

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_mt.__UNIQUE_ID_ddebug691, ptr noundef nonnull @.str.6) #6
  br label %do.end25

do.end25:                                         ; preds = %if.then22, %do.body10
  %hotdrop = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 5
  %15 = ptrtoint ptr %hotdrop to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %hotdrop, align 2
  br label %cleanup

do.body27:                                        ; preds = %skb_header_pointer.exit.do.body27_crit_edge, %lor.lhs.false.i.i.do.body27_crit_edge
  %retval.0.i.i152 = phi ptr [ %add.ptr.i.i, %skb_header_pointer.exit.do.body27_crit_edge ], [ %_sh, %lor.lhs.false.i.i.do.body27_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sctp_mt.__UNIQUE_ID_ddebug692, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sctp_mt, %if.then39)) #6
          to label %do.end44 [label %if.then39], !srcloc !50

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %retval.0.i.i152 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %retval.0.i.i152, align 4
  %conv40 = zext i16 %17 to i32
  %dest = getelementptr inbounds %struct.sctphdr, ptr %retval.0.i.i152, i32 0, i32 1
  %18 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %dest, align 2
  %conv41 = zext i16 %19 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sctp_mt.__UNIQUE_ID_ddebug692, ptr noundef nonnull @.str.8, i32 noundef %conv40, i32 noundef %conv41) #6
  br label %do.end44

do.end44:                                         ; preds = %if.then39, %do.body27
  %flags = getelementptr inbounds %struct.xt_sctp_info, ptr %2, i32 0, i32 6
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 4
  %and = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool45.not = icmp eq i32 %and, 0
  br i1 %tobool45.not, label %do.end44.land.lhs.true_crit_edge, label %lor.lhs.false

do.end44.land.lhs.true_crit_edge:                 ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %do.end44
  %invflags = getelementptr inbounds %struct.xt_sctp_info, ptr %2, i32 0, i32 7
  %22 = ptrtoint ptr %invflags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %invflags, align 4
  %and46 = and i32 %23, 1
  %24 = ptrtoint ptr %retval.0.i.i152 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %retval.0.i.i152, align 4
  %spts = getelementptr inbounds %struct.xt_sctp_info, ptr %2, i32 0, i32 1
  %26 = ptrtoint ptr %spts to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %spts, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %27)
  %cmp55.not = icmp ult i16 %25, %27
  br i1 %cmp55.not, label %lor.lhs.false.land.end_crit_edge, label %land.rhs

lor.lhs.false.land.end_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end

land.rhs:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx60 = getelementptr %struct.xt_sctp_info, ptr %2, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx60, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %29)
  %cmp62 = icmp ule i16 %25, %29
  %phi.cast137 = zext i1 %cmp62 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false.land.end_crit_edge
  %30 = phi i32 [ 0, %lor.lhs.false.land.end_crit_edge ], [ %phi.cast137, %land.rhs ]
  call void @__sanitizer_cov_trace_cmp4(i32 %and46, i32 %30)
  %tobool64.not = icmp eq i32 %and46, %30
  br i1 %tobool64.not, label %land.end.cleanup_crit_edge, label %land.end.land.lhs.true_crit_edge

land.end.land.lhs.true_crit_edge:                 ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %land.end.land.lhs.true_crit_edge, %do.end44.land.lhs.true_crit_edge
  %and66 = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %land.lhs.true.land.rhs94_crit_edge, label %lor.lhs.false68

land.lhs.true.land.rhs94_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs94

lor.lhs.false68:                                  ; preds = %land.lhs.true
  %invflags69 = getelementptr inbounds %struct.xt_sctp_info, ptr %2, i32 0, i32 7
  %31 = ptrtoint ptr %invflags69 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %invflags69, align 4
  %and70 = lshr i32 %32, 1
  %and70.lobit = and i32 %and70, 1
  %dest76 = getelementptr inbounds %struct.sctphdr, ptr %retval.0.i.i152, i32 0, i32 1
  %33 = ptrtoint ptr %dest76 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %dest76, align 2
  %35 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %2, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %34, i16 %36)
  %cmp80.not = icmp ult i16 %34, %36
  br i1 %cmp80.not, label %lor.lhs.false68.land.end90_crit_edge, label %land.rhs82

lor.lhs.false68.land.end90_crit_edge:             ; preds = %lor.lhs.false68
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end90

land.rhs82:                                       ; preds = %lor.lhs.false68
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx86 = getelementptr [2 x i16], ptr %2, i32 0, i32 1
  %37 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx86, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %34, i16 %38)
  %cmp88 = icmp ule i16 %34, %38
  %phi.cast = zext i1 %cmp88 to i32
  br label %land.end90

land.end90:                                       ; preds = %land.rhs82, %lor.lhs.false68.land.end90_crit_edge
  %39 = phi i32 [ 0, %lor.lhs.false68.land.end90_crit_edge ], [ %phi.cast, %land.rhs82 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %and70.lobit, i32 %39)
  %tobool93.not = icmp eq i32 %and70.lobit, %39
  br i1 %tobool93.not, label %land.end90.cleanup_crit_edge, label %land.end90.land.rhs94_crit_edge

land.end90.land.rhs94_crit_edge:                  ; preds = %land.end90
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs94

land.end90.cleanup_crit_edge:                     ; preds = %land.end90
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.rhs94:                                       ; preds = %land.end90.land.rhs94_crit_edge, %land.lhs.true.land.rhs94_crit_edge
  %and96 = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %land.rhs94.cleanup_crit_edge, label %lor.rhs

land.rhs94.cleanup_crit_edge:                     ; preds = %land.rhs94
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.rhs:                                          ; preds = %land.rhs94
  call void @__sanitizer_cov_trace_pc() #8
  %invflags98 = getelementptr inbounds %struct.xt_sctp_info, ptr %2, i32 0, i32 7
  %40 = ptrtoint ptr %invflags98 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %invflags98, align 4
  %42 = ptrtoint ptr %thoff to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %thoff, align 4
  %add = add i32 %43, 12
  %hotdrop106 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 5
  %call107 = call fastcc zeroext i1 @match_packet(ptr noundef %skb, i32 noundef %add, ptr noundef %2, ptr noundef %hotdrop106)
  %44 = and i32 %41, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %45 = icmp ne i32 %44, 0
  %tobool110 = xor i1 %call107, %45
  br label %cleanup

cleanup:                                          ; preds = %lor.rhs, %land.rhs94.cleanup_crit_edge, %land.end90.cleanup_crit_edge, %land.end.cleanup_crit_edge, %do.end25, %if.then4, %do.body
  %retval.0 = phi i1 [ false, %do.end25 ], [ false, %if.then4 ], [ false, %land.end90.cleanup_crit_edge ], [ false, %land.end.cleanup_crit_edge ], [ true, %land.rhs94.cleanup_crit_edge ], [ %tobool110, %lor.rhs ], [ false, %do.body ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %_sh) #6
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sctp_mt_check(ptr nocapture noundef readonly %par) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %flags = getelementptr inbounds %struct.xt_sctp_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %tobool.not = icmp ult i32 %3, 8
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %invflags = getelementptr inbounds %struct.xt_sctp_info, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %invflags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %invflags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %5)
  %tobool2.not = icmp ult i32 %5, 8
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %neg = xor i32 %3, -1
  %and7 = and i32 %5, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end4
  %and12 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end10.cleanup_crit_edge, label %if.end15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %chunk_match_type = getelementptr inbounds %struct.xt_sctp_info, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %chunk_match_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chunk_match_type, align 4
  %and16 = and i32 %7, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %. = select i1 %tobool17.not, i32 -22, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end10.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ], [ %., %if.end15 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @match_packet(ptr noundef %skb, i32 noundef %offset, ptr nocapture noundef readonly %info, ptr nocapture noundef writeonly %hotdrop) unnamed_addr #5 align 64 {
entry:
  %chunkmapcopy = alloca [64 x i32], align 4
  %_sch = alloca %struct.sctp_chunkhdr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %chunkmapcopy) #6
  %0 = call ptr @memset(ptr %chunkmapcopy, i32 255, i32 256)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_sch) #6
  %chunk_match_type1 = getelementptr inbounds %struct.xt_sctp_info, ptr %info, i32 0, i32 3
  %1 = ptrtoint ptr %_sch to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %_sch, align 4
  %2 = ptrtoint ptr %chunk_match_type1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chunk_match_type1, align 4
  %flag_info2 = getelementptr inbounds %struct.xt_sctp_info, ptr %info, i32 0, i32 4
  %flag_count3 = getelementptr inbounds %struct.xt_sctp_info, ptr %info, i32 0, i32 5
  %4 = ptrtoint ptr %flag_count3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flag_count3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %chunkmap = getelementptr inbounds %struct.xt_sctp_info, ptr %info, i32 0, i32 2
  %6 = call ptr @memcpy(ptr %chunkmapcopy, ptr %chunkmap, i32 256)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %tobool2.not.i.i = icmp eq ptr %skb, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp20.i142 = icmp sgt i32 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cond92 = icmp eq i32 %3, 4
  br label %do.body

do.body:                                          ; preds = %do.cond76.do.body_crit_edge, %if.end
  %offset.addr.0 = phi i32 [ %offset, %if.end ], [ %add19, %do.cond76.do.body_crit_edge ]
  %7 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len.i.i, align 4
  %9 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data_len.i.i, align 8
  %11 = add i32 %offset.addr.0, %10
  %sub.i4.i = sub i32 %8, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 4
  br i1 %cmp.not.i.i, label %if.end.i.i, label %skb_header_pointer.exit, !prof !51

if.end.i.i:                                       ; preds = %do.body
  br i1 %tobool2.not.i.i, label %if.end.i.i.do.body10_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.do.body10_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body10

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %offset.addr.0, ptr noundef nonnull %_sch, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.do.body10_crit_edge, label %lor.lhs.false.i.i.lor.lhs.false_crit_edge

lor.lhs.false.i.i.lor.lhs.false_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

lor.lhs.false.i.i.do.body10_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body10

skb_header_pointer.exit:                          ; preds = %do.body
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 %offset.addr.0
  %cmp6 = icmp eq ptr %add.ptr.i.i, null
  br i1 %cmp6, label %skb_header_pointer.exit.do.body10_crit_edge, label %skb_header_pointer.exit.lor.lhs.false_crit_edge

skb_header_pointer.exit.lor.lhs.false_crit_edge:  ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

skb_header_pointer.exit.do.body10_crit_edge:      ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body10

lor.lhs.false:                                    ; preds = %skb_header_pointer.exit.lor.lhs.false_crit_edge, %lor.lhs.false.i.i.lor.lhs.false_crit_edge
  %retval.0.i.i166 = phi ptr [ %add.ptr.i.i, %skb_header_pointer.exit.lor.lhs.false_crit_edge ], [ %_sch, %lor.lhs.false.i.i.lor.lhs.false_crit_edge ]
  %length = getelementptr inbounds %struct.sctp_chunkhdr, ptr %retval.0.i.i166, i32 0, i32 2
  %14 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %length, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp7 = icmp eq i16 %15, 0
  br i1 %cmp7, label %lor.lhs.false.do.body10_crit_edge, label %if.end16

lor.lhs.false.do.body10_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body10

do.body10:                                        ; preds = %lor.lhs.false.do.body10_crit_edge, %skb_header_pointer.exit.do.body10_crit_edge, %lor.lhs.false.i.i.do.body10_crit_edge, %if.end.i.i.do.body10_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @match_packet.__UNIQUE_ID_ddebug688, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@match_packet, %if.then14)) #6
          to label %do.end [label %if.then14], !srcloc !50

if.then14:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @match_packet.__UNIQUE_ID_ddebug688, ptr noundef nonnull @.str.11) #6
  br label %do.end

do.end:                                           ; preds = %if.then14, %do.body10
  %16 = ptrtoint ptr %hotdrop to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %hotdrop, align 1
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false
  %conv = zext i16 %15 to i32
  %add = add nuw nsw i32 %conv, 3
  %and = and i32 %add, 131068
  %add19 = add i32 %and, %offset.addr.0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @match_packet.__UNIQUE_ID_ddebug689, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@match_packet, %if.then32)) #6
          to label %do.end35 [label %if.then32], !srcloc !50

if.then32:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len.i.i, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @match_packet.__UNIQUE_ID_ddebug689, ptr noundef nonnull @.str.13, i32 noundef %18, i32 noundef %add19) #6
  br label %do.end35

do.end35:                                         ; preds = %if.then32, %if.end16
  %19 = ptrtoint ptr %retval.0.i.i166 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %retval.0.i.i166, align 2
  %conv38 = zext i8 %20 to i32
  %div121 = lshr i32 %conv38, 5
  %arrayidx = getelementptr %struct.xt_sctp_info, ptr %info, i32 0, i32 2, i32 %div121
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %rem = and i32 %conv38, 31
  %shl = shl nuw i32 1, %rem
  %and41 = and i32 %shl, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.else, label %if.then44

if.then44:                                        ; preds = %do.end35
  %23 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.then44.do.cond76_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb49
    i32 4, label %sw.bb67
  ]

if.then44.do.cond76_crit_edge:                    ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond76

sw.bb:                                            ; preds = %if.then44
  %flags = getelementptr inbounds %struct.sctp_chunkhdr, ptr %retval.0.i.i166, i32 0, i32 1
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %flags, align 1
  br i1 %cmp20.i142, label %sw.bb.for.body.i_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb.for.body.i_crit_edge:                       ; preds = %sw.bb
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %sw.bb.for.body.i_crit_edge
  %i.021.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %sw.bb.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.xt_sctp_flag_info, ptr %flag_info2, i32 %i.021.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %20)
  %cmp3.i = icmp eq i8 %27, %20
  br i1 %cmp3.i, label %match_flags.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

match_flags.exit:                                 ; preds = %for.body.i
  %flag_mask.i = getelementptr %struct.xt_sctp_flag_info, ptr %flag_info2, i32 %i.021.i, i32 2
  %28 = ptrtoint ptr %flag_mask.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %flag_mask.i, align 1
  %and18.i = and i8 %29, %25
  %flag.i = getelementptr %struct.xt_sctp_flag_info, ptr %flag_info2, i32 %i.021.i, i32 1
  %30 = ptrtoint ptr %flag.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %flag.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %and18.i, i8 %31)
  %cmp10.i = icmp eq i8 %and18.i, %31
  br i1 %cmp10.i, label %match_flags.exit.cleanup_crit_edge, label %match_flags.exit.do.cond76_crit_edge

match_flags.exit.do.cond76_crit_edge:             ; preds = %match_flags.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond76

match_flags.exit.cleanup_crit_edge:               ; preds = %match_flags.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb49:                                          ; preds = %if.then44
  %flags51 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %retval.0.i.i166, i32 0, i32 1
  %32 = ptrtoint ptr %flags51 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %flags51, align 1
  br i1 %cmp20.i142, label %sw.bb49.for.body.i131_crit_edge, label %sw.bb49.do.body54_crit_edge

sw.bb49.do.body54_crit_edge:                      ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body54

sw.bb49.for.body.i131_crit_edge:                  ; preds = %sw.bb49
  br label %for.body.i131

for.body.i131:                                    ; preds = %for.inc.i139.for.body.i131_crit_edge, %sw.bb49.for.body.i131_crit_edge
  %i.021.i128 = phi i32 [ %inc.i137, %for.inc.i139.for.body.i131_crit_edge ], [ 0, %sw.bb49.for.body.i131_crit_edge ]
  %arrayidx.i129 = getelementptr %struct.xt_sctp_flag_info, ptr %flag_info2, i32 %i.021.i128
  %34 = ptrtoint ptr %arrayidx.i129 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i129, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %35, i8 %20)
  %cmp3.i130 = icmp eq i8 %35, %20
  br i1 %cmp3.i130, label %match_flags.exit141, label %for.inc.i139

for.inc.i139:                                     ; preds = %for.body.i131
  %inc.i137 = add nuw nsw i32 %i.021.i128, 1
  %exitcond.not.i138 = icmp eq i32 %inc.i137, %5
  br i1 %exitcond.not.i138, label %for.inc.i139.do.body54_crit_edge, label %for.inc.i139.for.body.i131_crit_edge

for.inc.i139.for.body.i131_crit_edge:             ; preds = %for.inc.i139
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i131

for.inc.i139.do.body54_crit_edge:                 ; preds = %for.inc.i139
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body54

match_flags.exit141:                              ; preds = %for.body.i131
  %flag_mask.i132 = getelementptr %struct.xt_sctp_flag_info, ptr %flag_info2, i32 %i.021.i128, i32 2
  %36 = ptrtoint ptr %flag_mask.i132 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %flag_mask.i132, align 1
  %and18.i133 = and i8 %37, %33
  %flag.i134 = getelementptr %struct.xt_sctp_flag_info, ptr %flag_info2, i32 %i.021.i128, i32 1
  %38 = ptrtoint ptr %flag.i134 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %flag.i134, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %and18.i133, i8 %39)
  %cmp10.i135 = icmp eq i8 %and18.i133, %39
  br i1 %cmp10.i135, label %match_flags.exit141.do.body54_crit_edge, label %match_flags.exit141.do.cond76_crit_edge

match_flags.exit141.do.cond76_crit_edge:          ; preds = %match_flags.exit141
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond76

match_flags.exit141.do.body54_crit_edge:          ; preds = %match_flags.exit141
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body54

do.body54:                                        ; preds = %match_flags.exit141.do.body54_crit_edge, %for.inc.i139.do.body54_crit_edge, %sw.bb49.do.body54_crit_edge
  %neg = xor i32 %shl, -1
  %arrayidx62 = getelementptr [64 x i32], ptr %chunkmapcopy, i32 0, i32 %div121
  %40 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx62, align 4
  %and63 = and i32 %41, %neg
  store i32 %and63, ptr %arrayidx62, align 4
  br label %do.cond76

sw.bb67:                                          ; preds = %if.then44
  %flags69 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %retval.0.i.i166, i32 0, i32 1
  %42 = ptrtoint ptr %flags69 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %flags69, align 1
  br i1 %cmp20.i142, label %sw.bb67.for.body.i146_crit_edge, label %sw.bb67.do.cond76_crit_edge

sw.bb67.do.cond76_crit_edge:                      ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond76

sw.bb67.for.body.i146_crit_edge:                  ; preds = %sw.bb67
  br label %for.body.i146

for.body.i146:                                    ; preds = %for.inc.i154.for.body.i146_crit_edge, %sw.bb67.for.body.i146_crit_edge
  %i.021.i143 = phi i32 [ %inc.i152, %for.inc.i154.for.body.i146_crit_edge ], [ 0, %sw.bb67.for.body.i146_crit_edge ]
  %arrayidx.i144 = getelementptr %struct.xt_sctp_flag_info, ptr %flag_info2, i32 %i.021.i143
  %44 = ptrtoint ptr %arrayidx.i144 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.i144, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %45, i8 %20)
  %cmp3.i145 = icmp eq i8 %45, %20
  br i1 %cmp3.i145, label %match_flags.exit156, label %for.inc.i154

for.inc.i154:                                     ; preds = %for.body.i146
  %inc.i152 = add nuw nsw i32 %i.021.i143, 1
  %exitcond.not.i153 = icmp eq i32 %inc.i152, %5
  br i1 %exitcond.not.i153, label %for.inc.i154.do.cond76_crit_edge, label %for.inc.i154.for.body.i146_crit_edge

for.inc.i154.for.body.i146_crit_edge:             ; preds = %for.inc.i154
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i146

for.inc.i154.do.cond76_crit_edge:                 ; preds = %for.inc.i154
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond76

match_flags.exit156:                              ; preds = %for.body.i146
  %flag_mask.i147 = getelementptr %struct.xt_sctp_flag_info, ptr %flag_info2, i32 %i.021.i143, i32 2
  %46 = ptrtoint ptr %flag_mask.i147 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %flag_mask.i147, align 1
  %and18.i148 = and i8 %47, %43
  %flag.i149 = getelementptr %struct.xt_sctp_flag_info, ptr %flag_info2, i32 %i.021.i143, i32 1
  %48 = ptrtoint ptr %flag.i149 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %flag.i149, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %and18.i148, i8 %49)
  %cmp10.i150 = icmp eq i8 %and18.i148, %49
  br i1 %cmp10.i150, label %match_flags.exit156.do.cond76_crit_edge, label %match_flags.exit156.cleanup_crit_edge

match_flags.exit156.cleanup_crit_edge:            ; preds = %match_flags.exit156
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

match_flags.exit156.do.cond76_crit_edge:          ; preds = %match_flags.exit156
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond76

if.else:                                          ; preds = %do.end35
  br i1 %cond92, label %if.else.cleanup_crit_edge, label %if.else.do.cond76_crit_edge

if.else.do.cond76_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond76

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.cond76:                                        ; preds = %if.else.do.cond76_crit_edge, %match_flags.exit156.do.cond76_crit_edge, %for.inc.i154.do.cond76_crit_edge, %sw.bb67.do.cond76_crit_edge, %do.body54, %match_flags.exit141.do.cond76_crit_edge, %match_flags.exit.do.cond76_crit_edge, %if.then44.do.cond76_crit_edge
  %50 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len.i.i, align 4
  %cmp78 = icmp ult i32 %add19, %51
  br i1 %cmp78, label %do.cond76.do.body_crit_edge, label %do.end80

do.cond76.do.body_crit_edge:                      ; preds = %do.cond76
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.end80:                                         ; preds = %do.cond76
  %52 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %3, label %do.end80.cleanup_crit_edge [
    i32 2, label %for.body.i160.preheader
    i32 4, label %sw.bb85
  ]

do.end80.cleanup_crit_edge:                       ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i160.preheader:                          ; preds = %do.end80
  %53 = ptrtoint ptr %chunkmapcopy to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %chunkmapcopy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i177 = icmp eq i32 %54, 0
  br i1 %tobool.not.i177, label %for.body.i160.preheader.for.cond.i_crit_edge, label %for.body.i160.preheader.cleanup_crit_edge

for.body.i160.preheader.cleanup_crit_edge:        ; preds = %for.body.i160.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i160.preheader.for.cond.i_crit_edge:     ; preds = %for.body.i160.preheader
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i160.for.cond.i_crit_edge, %for.body.i160.preheader.for.cond.i_crit_edge
  %i.01.i178 = phi i32 [ %inc.i157, %for.body.i160.for.cond.i_crit_edge ], [ 0, %for.body.i160.preheader.for.cond.i_crit_edge ]
  %inc.i157 = add nuw nsw i32 %i.01.i178, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %inc.i157)
  %exitcond.not.i158 = icmp eq i32 %inc.i157, 64
  br i1 %exitcond.not.i158, label %for.cond.i.cleanup.loopexit_crit_edge, label %for.body.i160

for.cond.i.cleanup.loopexit_crit_edge:            ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.loopexit

for.body.i160:                                    ; preds = %for.cond.i
  %arrayidx.i159 = getelementptr i32, ptr %chunkmapcopy, i32 %inc.i157
  %55 = ptrtoint ptr %arrayidx.i159 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx.i159, align 4
  %tobool.not.i = icmp eq i32 %56, 0
  br i1 %tobool.not.i, label %for.body.i160.for.cond.i_crit_edge, label %for.body.i160.cleanup.loopexit_crit_edge

for.body.i160.cleanup.loopexit_crit_edge:         ; preds = %for.body.i160
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.loopexit

for.body.i160.for.cond.i_crit_edge:               ; preds = %for.body.i160
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

sw.bb85:                                          ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.loopexit:                                 ; preds = %for.body.i160.cleanup.loopexit_crit_edge, %for.cond.i.cleanup.loopexit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %i.01.i178)
  %cmp.i.le = icmp ugt i32 %i.01.i178, 62
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %sw.bb85, %for.body.i160.preheader.cleanup_crit_edge, %do.end80.cleanup_crit_edge, %if.else.cleanup_crit_edge, %match_flags.exit156.cleanup_crit_edge, %match_flags.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %do.end
  %retval.0 = phi i1 [ false, %do.end ], [ true, %sw.bb85 ], [ false, %do.end80.cleanup_crit_edge ], [ false, %for.body.i160.preheader.cleanup_crit_edge ], [ %cmp.i.le, %cleanup.loopexit ], [ true, %for.inc.i.cleanup_crit_edge ], [ true, %sw.bb.cleanup_crit_edge ], [ false, %if.else.cleanup_crit_edge ], [ false, %match_flags.exit156.cleanup_crit_edge ], [ true, %match_flags.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_sch) #6
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %chunkmapcopy) #6
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_matches(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !37, !39, !40}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @__UNIQUE_ID_file682, !1, !"__UNIQUE_ID_file682", i1 false, i1 false}
!1 = !{!"../net/netfilter/xt_sctp.c", i32 15, i32 1}
!2 = !{ptr @__UNIQUE_ID_license683, !1, !"__UNIQUE_ID_license683", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author684, !4, !"__UNIQUE_ID_author684", i1 false, i1 false}
!4 = !{!"../net/netfilter/xt_sctp.c", i32 16, i32 1}
!5 = !{ptr @__UNIQUE_ID_description685, !6, !"__UNIQUE_ID_description685", i1 false, i1 false}
!6 = !{!"../net/netfilter/xt_sctp.c", i32 17, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias686, !8, !"__UNIQUE_ID_alias686", i1 false, i1 false}
!8 = !{!"../net/netfilter/xt_sctp.c", i32 18, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias687, !10, !"__UNIQUE_ID_alias687", i1 false, i1 false}
!10 = !{!"../net/netfilter/xt_sctp.c", i32 19, i32 1}
!11 = !{ptr @__initcall__kmod_xt_sctp__693_198_sctp_mt_init6, !12, !"__initcall__kmod_xt_sctp__693_198_sctp_mt_init6", i1 false, i1 false}
!12 = !{!"../net/netfilter/xt_sctp.c", i32 198, i32 1}
!13 = !{ptr @__exitcall_sctp_mt_exit, !14, !"__exitcall_sctp_mt_exit", i1 false, i1 false}
!14 = !{!"../net/netfilter/xt_sctp.c", i32 199, i32 1}
!15 = !{ptr @sctp_mt_reg, !16, !"sctp_mt_reg", i1 false, i1 false}
!16 = !{!"../net/netfilter/xt_sctp.c", i32 167, i32 24}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/netfilter/xt_sctp.c", i32 126, i32 3}
!19 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @sctp_mt.__UNIQUE_ID_ddebug690, !18, !"__UNIQUE_ID_ddebug690", i1 false, i1 false}
!23 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/netfilter/xt_sctp.c", i32 132, i32 3}
!26 = !{ptr @sctp_mt.__UNIQUE_ID_ddebug691, !25, !"__UNIQUE_ID_ddebug691", i1 false, i1 false}
!27 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/netfilter/xt_sctp.c", i32 136, i32 2}
!30 = !{ptr @sctp_mt.__UNIQUE_ID_ddebug692, !29, !"__UNIQUE_ID_ddebug692", i1 false, i1 false}
!31 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/netfilter/xt_sctp.c", i32 62, i32 4}
!34 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @match_packet.__UNIQUE_ID_ddebug688, !33, !"__UNIQUE_ID_ddebug688", i1 false, i1 false}
!36 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/netfilter/xt_sctp.c", i32 74, i32 3}
!39 = !{ptr @match_packet.__UNIQUE_ID_ddebug689, !38, !"__UNIQUE_ID_ddebug689", i1 false, i1 false}
!40 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{i64 2148956586, i64 2148956591, i64 2148956604, i64 2148956648, i64 2148956682, i64 2148956703}
!51 = !{!"branch_weights", i32 1, i32 2000}
