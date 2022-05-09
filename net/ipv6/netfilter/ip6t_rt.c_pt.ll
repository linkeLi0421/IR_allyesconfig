; ModuleID = '/llk/IR_all_yes/net/ipv6/netfilter/ip6t_rt.c_pt.bc'
source_filename = "../net/ipv6/netfilter/ip6t_rt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_match = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ipv6_rt_hdr = type { i8, i8, i8, i8 }
%struct.in6_addr = type { %union.anon.28 }
%union.anon.28 = type { [4 x i32] }
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
%struct.ip6t_rt = type { i32, [2 x i32], i32, i8, i8, [16 x %struct.in6_addr], i8 }
%struct.xt_mtchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }

@__UNIQUE_ID_file618 = internal constant [40 x i8] c"ip6t_rt.file=net/ipv6/netfilter/ip6t_rt\00", section ".modinfo", align 1
@__UNIQUE_ID_license619 = internal constant [20 x i8] c"ip6t_rt.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description620 = internal constant [55 x i8] c"ip6t_rt.description=Xtables: IPv6 Routing Header match\00", section ".modinfo", align 1
@__UNIQUE_ID_author621 = internal constant [51 x i8] c"ip6t_rt.author=Andras Kis-Szabo <kisza@sch.bme.hu>\00", section ".modinfo", align 1
@rt_mt6_reg = internal global %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"rt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @rt_mt6, ptr @rt_mt6_check, ptr null, ptr null, ptr null, i32 280, i32 0, i32 0, i16 0, i16 10 }, section ".data..read_mostly", align 4
@__initcall__kmod_ip6t_rt__624_190_rt_mt6_init6 = internal global ptr @rt_mt6_init, section ".initcall6.init", align 4
@__exitcall_rt_mt6_exit = internal global ptr @rt_mt6_exit, section ".exitcall.exit", align 4
@rt_mt6_check.__UNIQUE_ID_ddebug622 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ip6t_rt\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rt_mt6_check\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"net/ipv6/netfilter/ip6t_rt.c\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"unknown flags %X\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ip6t_rt: unknown flags %X\0A\00", [37 x i8] zeroinitializer }, align 32
@rt_mt6_check.__UNIQUE_ID_ddebug623 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"`--rt-type 0' required before `--rt-0-*'\00", [55 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"ip6t_rt: `--rt-type 0' required before `--rt-0-*'\00", [46 x i8] zeroinitializer }, align 32
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 157, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.26 = private constant [32 x i8] c"../net/ipv6/netfilter/ip6t_rt.c\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 164, i32 3 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_author621, ptr @__UNIQUE_ID_description620, ptr @__UNIQUE_ID_file618, ptr @__UNIQUE_ID_license619, ptr @__exitcall_rt_mt6_exit, ptr @__initcall__kmod_ip6t_rt__624_190_rt_mt6_init6, ptr @rt_mt6_exit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rt_mt6_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @xt_unregister_match(ptr noundef nonnull @rt_mt6_reg) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rt_mt6_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_match(ptr noundef nonnull @rt_mt6_reg) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @rt_mt6(ptr noundef %skb, ptr nocapture noundef %par) #2 align 64 {
entry:
  %_route = alloca %struct.ipv6_rt_hdr, align 4
  %ptr = alloca i32, align 4
  %_addr = alloca %struct.in6_addr, align 4
  %_reserved = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_route) #5
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %_route to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %_route, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ptr) #5
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %ptr, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_addr) #5
  %5 = call ptr @memset(ptr %_addr, i32 255, i32 16)
  %call = call i32 @ipv6_find_hdr(ptr noundef %skb, ptr noundef nonnull %ptr, i32 noundef 43, ptr noundef null, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call)
  %cmp1.not = icmp eq i32 %call, -2
  br i1 %cmp1.not, label %if.then.cleanup162_crit_edge, label %if.then2

if.then.cleanup162_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup162

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %hotdrop = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 5
  %6 = ptrtoint ptr %hotdrop to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %hotdrop, align 2
  br label %cleanup162

if.end3:                                          ; preds = %entry
  %7 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ptr, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %11 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data_len.i.i, align 8
  %13 = add i32 %8, %12
  %sub.i4.i = sub i32 %10, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 4
  br i1 %cmp.not.i.i, label %if.end.i.i, label %skb_header_pointer.exit, !prof !33

if.end.i.i:                                       ; preds = %if.end3
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.then6_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.if.then6_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then6

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %8, ptr noundef nonnull %_route, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.if.then6_crit_edge, label %lor.lhs.false.i.i.if.end8_crit_edge

lor.lhs.false.i.i.if.end8_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

lor.lhs.false.i.i.if.then6_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then6

skb_header_pointer.exit:                          ; preds = %if.end3
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 %8
  %cmp5 = icmp eq ptr %add.ptr.i.i, null
  br i1 %cmp5, label %skb_header_pointer.exit.if.then6_crit_edge, label %skb_header_pointer.exit.if.end8_crit_edge

skb_header_pointer.exit.if.end8_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

skb_header_pointer.exit.if.then6_crit_edge:       ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then6

if.then6:                                         ; preds = %skb_header_pointer.exit.if.then6_crit_edge, %lor.lhs.false.i.i.if.then6_crit_edge, %if.end.i.i.if.then6_crit_edge
  %hotdrop7 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 5
  %16 = ptrtoint ptr %hotdrop7 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %hotdrop7, align 2
  br label %cleanup162

if.end8:                                          ; preds = %skb_header_pointer.exit.if.end8_crit_edge, %lor.lhs.false.i.i.if.end8_crit_edge
  %retval.0.i.i297 = phi ptr [ %add.ptr.i.i, %skb_header_pointer.exit.if.end8_crit_edge ], [ %_route, %lor.lhs.false.i.i.if.end8_crit_edge ]
  %hdrlen9 = getelementptr inbounds %struct.ipv6_rt_hdr, ptr %retval.0.i.i297, i32 0, i32 1
  %17 = ptrtoint ptr %hdrlen9 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %hdrlen9, align 1
  %conv = zext i8 %18 to i32
  %add = shl nuw nsw i32 %conv, 3
  %shl = add nuw nsw i32 %add, 8
  %19 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len.i.i, align 4
  %21 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ptr, align 4
  %sub = sub i32 %20, %22
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %shl)
  %cmp10 = icmp ult i32 %sub, %shl
  br i1 %cmp10, label %if.end8.cleanup162_crit_edge, label %if.end13

if.end8.cleanup162_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup162

if.end13:                                         ; preds = %if.end8
  %segsleft = getelementptr inbounds %struct.ip6t_rt, ptr %3, i32 0, i32 1
  %23 = ptrtoint ptr %segsleft to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %segsleft, align 4
  %arrayidx15 = getelementptr %struct.ip6t_rt, ptr %3, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx15, align 4
  %segments_left = getelementptr inbounds %struct.ipv6_rt_hdr, ptr %retval.0.i.i297, i32 0, i32 3
  %27 = ptrtoint ptr %segments_left to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %segments_left, align 1
  %conv16 = zext i8 %28 to i32
  %invflags = getelementptr inbounds %struct.ip6t_rt, ptr %3, i32 0, i32 4
  %29 = ptrtoint ptr %invflags to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %invflags, align 1
  %31 = and i8 %30, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool = icmp ne i8 %31, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %conv16)
  %cmp.not.i = icmp ule i32 %24, %conv16
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %conv16)
  %cmp1.i = icmp uge i32 %26, %conv16
  %narrow.i = and i1 %cmp.not.i, %cmp1.i
  %tobool2.i = xor i1 %narrow.i, %tobool
  br i1 %tobool2.i, label %land.lhs.true, label %if.end13.if.end69_crit_edge

if.end13.if.end69_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

land.lhs.true:                                    ; preds = %if.end13
  %flags = getelementptr inbounds %struct.ip6t_rt, ptr %3, i32 0, i32 3
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %flags, align 4
  %34 = and i8 %33, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool23.not = icmp eq i8 %34, 0
  br i1 %tobool23.not, label %land.lhs.true.land.rhs_crit_edge, label %lor.lhs.false

land.lhs.true.land.rhs_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

lor.lhs.false:                                    ; preds = %land.lhs.true
  %hdrlen24 = getelementptr inbounds %struct.ip6t_rt, ptr %3, i32 0, i32 2
  %35 = ptrtoint ptr %hdrlen24 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %hdrlen24, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %shl)
  %cmp25 = icmp ne i32 %36, %shl
  %37 = and i8 %30, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %38 = icmp ne i8 %37, 0
  %tobool33.not = xor i1 %38, %cmp25
  br i1 %tobool33.not, label %lor.lhs.false.if.end69_crit_edge, label %lor.lhs.false.land.rhs_crit_edge

lor.lhs.false.land.rhs_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

lor.lhs.false.if.end69_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

land.rhs:                                         ; preds = %lor.lhs.false.land.rhs_crit_edge, %land.lhs.true.land.rhs_crit_edge
  %39 = and i8 %33, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool37.not = icmp eq i8 %39, 0
  br i1 %tobool37.not, label %land.rhs.land.lhs.true53_crit_edge, label %land.end

land.rhs.land.lhs.true53_crit_edge:               ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true53

land.end:                                         ; preds = %land.rhs
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %3, align 4
  %type = getelementptr inbounds %struct.ipv6_rt_hdr, ptr %retval.0.i.i297, i32 0, i32 2
  %42 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %type, align 1
  %conv38 = zext i8 %43 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %conv38)
  %cmp39 = icmp eq i32 %41, %conv38
  %44 = and i8 %30, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %45 = icmp ne i8 %44, 0
  %tobool50 = xor i1 %45, %cmp39
  br i1 %tobool50, label %land.end.land.lhs.true53_crit_edge, label %land.end.if.end69_crit_edge

land.end.if.end69_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

land.end.land.lhs.true53_crit_edge:               ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true53

land.lhs.true53:                                  ; preds = %land.end.land.lhs.true53_crit_edge, %land.rhs.land.lhs.true53_crit_edge
  %46 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %flags, align 4
  %48 = and i8 %47, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool57.not = icmp eq i8 %48, 0
  br i1 %tobool57.not, label %land.lhs.true53.if.end69_crit_edge, label %if.then58

land.lhs.true53.if.end69_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

if.then58:                                        ; preds = %land.lhs.true53
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_reserved) #5
  %49 = ptrtoint ptr %_reserved to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %_reserved, align 4, !annotation !34
  %add59 = add i32 %22, 4
  %50 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %data_len.i.i, align 8
  %52 = add i32 %20, -4
  %53 = add i32 %22, %51
  %sub.i4.i235 = sub i32 %52, %53
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i4.i235)
  %cmp.not.i.i236 = icmp slt i32 %sub.i4.i235, 4
  br i1 %cmp.not.i.i236, label %if.end.i.i241, label %skb_header_pointer.exit247, !prof !33

if.end.i.i241:                                    ; preds = %if.then58
  %tobool2.not.i.i240 = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i240, label %if.end.i.i241.cleanup.thread_crit_edge, label %lor.lhs.false.i.i245

if.end.i.i241.cleanup.thread_crit_edge:           ; preds = %if.end.i.i241
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

lor.lhs.false.i.i245:                             ; preds = %if.end.i.i241
  %call.i.i242 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add59, ptr noundef nonnull %_reserved, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i242)
  %cmp3.i.i243 = icmp slt i32 %call.i.i242, 0
  br i1 %cmp3.i.i243, label %lor.lhs.false.i.i245.cleanup.thread_crit_edge, label %lor.lhs.false.i.i245.cleanup_crit_edge

lor.lhs.false.i.i245.cleanup_crit_edge:           ; preds = %lor.lhs.false.i.i245
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false.i.i245.cleanup.thread_crit_edge:    ; preds = %lor.lhs.false.i.i245
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

skb_header_pointer.exit247:                       ; preds = %if.then58
  %data.i237 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %54 = ptrtoint ptr %data.i237 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data.i237, align 4
  %add.ptr.i.i238 = getelementptr i8, ptr %55, i32 %add59
  %tobool61.not = icmp eq ptr %add.ptr.i.i238, null
  br i1 %tobool61.not, label %skb_header_pointer.exit247.cleanup.thread_crit_edge, label %skb_header_pointer.exit247.cleanup_crit_edge

skb_header_pointer.exit247.cleanup_crit_edge:     ; preds = %skb_header_pointer.exit247
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

skb_header_pointer.exit247.cleanup.thread_crit_edge: ; preds = %skb_header_pointer.exit247
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %skb_header_pointer.exit247.cleanup.thread_crit_edge, %lor.lhs.false.i.i245.cleanup.thread_crit_edge, %if.end.i.i241.cleanup.thread_crit_edge
  %hotdrop63 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 5
  %56 = ptrtoint ptr %hotdrop63 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %hotdrop63, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_reserved) #5
  br label %cleanup162

cleanup:                                          ; preds = %skb_header_pointer.exit247.cleanup_crit_edge, %lor.lhs.false.i.i245.cleanup_crit_edge
  %retval.0.i.i246307 = phi ptr [ %add.ptr.i.i238, %skb_header_pointer.exit247.cleanup_crit_edge ], [ %_reserved, %lor.lhs.false.i.i245.cleanup_crit_edge ]
  %57 = ptrtoint ptr %retval.0.i.i246307 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %retval.0.i.i246307, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp65 = icmp eq i32 %58, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_reserved) #5
  br label %if.end69

if.end69:                                         ; preds = %cleanup, %land.lhs.true53.if.end69_crit_edge, %land.end.if.end69_crit_edge, %lor.lhs.false.if.end69_crit_edge, %if.end13.if.end69_crit_edge
  %ret.1.off0 = phi i1 [ %cmp65, %cleanup ], [ true, %land.lhs.true53.if.end69_crit_edge ], [ false, %land.end.if.end69_crit_edge ], [ false, %lor.lhs.false.if.end69_crit_edge ], [ false, %if.end13.if.end69_crit_edge ]
  %flags70 = getelementptr inbounds %struct.ip6t_rt, ptr %3, i32 0, i32 3
  %59 = ptrtoint ptr %flags70 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %flags70, align 4
  %conv71 = zext i8 %60 to i32
  %and72 = and i32 %conv71, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.end69.cleanup162_crit_edge, label %if.else

if.end69.cleanup162_crit_edge:                    ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup162

if.else:                                          ; preds = %if.end69
  %and78 = and i32 %conv71, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  %addrnr119 = getelementptr inbounds %struct.ip6t_rt, ptr %3, i32 0, i32 6
  %61 = ptrtoint ptr %addrnr119 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %addrnr119, align 4
  %conv120 = zext i8 %62 to i32
  %div122230 = lshr i32 %conv, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div122230, i32 %conv120)
  %cmp123 = icmp ult i32 %div122230, %conv120
  br i1 %tobool79.not, label %if.else118, label %if.then80

if.then80:                                        ; preds = %if.else
  br i1 %cmp123, label %if.then80.cleanup162_crit_edge, label %for.cond.preheader

if.then80.cleanup162_crit_edge:                   ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup162

for.cond.preheader:                               ; preds = %if.then80
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %18)
  %cmp89334.not = icmp ult i8 %18, 2
  br i1 %cmp89334.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %data.i252 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %tobool2.not.i.i255 = icmp eq ptr %skb, null
  %umax = call i32 @llvm.umax.i32(i32 %div122230, i32 1)
  br label %for.body

for.body:                                         ; preds = %if.end98.for.body_crit_edge, %for.body.lr.ph
  %i.0336 = phi i32 [ 0, %for.body.lr.ph ], [ %spec.select, %if.end98.for.body_crit_edge ]
  %temp.0335 = phi i32 [ 0, %for.body.lr.ph ], [ %inc109, %if.end98.for.body_crit_edge ]
  %63 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ptr, align 4
  %mul = shl i32 %temp.0335, 4
  %add91 = or i32 %mul, 8
  %add92 = add i32 %add91, %64
  %65 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %len.i.i, align 4
  %67 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %data_len.i.i, align 8
  %69 = add i32 %add92, %68
  %sub.i4.i250 = sub i32 %66, %69
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.i4.i250)
  %cmp.not.i.i251 = icmp slt i32 %sub.i4.i250, 16
  br i1 %cmp.not.i.i251, label %if.end.i.i256, label %skb_header_pointer.exit262, !prof !33

if.end.i.i256:                                    ; preds = %for.body
  br i1 %tobool2.not.i.i255, label %if.end.i.i256.if.then96_crit_edge, label %lor.lhs.false.i.i260

if.end.i.i256.if.then96_crit_edge:                ; preds = %if.end.i.i256
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then96

lor.lhs.false.i.i260:                             ; preds = %if.end.i.i256
  %call.i.i257 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add92, ptr noundef nonnull %_addr, i32 noundef 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i257)
  %cmp3.i.i258 = icmp slt i32 %call.i.i257, 0
  br i1 %cmp3.i.i258, label %lor.lhs.false.i.i260.if.then96_crit_edge, label %lor.lhs.false.i.i260.if.end98_crit_edge

lor.lhs.false.i.i260.if.end98_crit_edge:          ; preds = %lor.lhs.false.i.i260
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end98

lor.lhs.false.i.i260.if.then96_crit_edge:         ; preds = %lor.lhs.false.i.i260
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then96

skb_header_pointer.exit262:                       ; preds = %for.body
  %70 = ptrtoint ptr %data.i252 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %data.i252, align 4
  %add.ptr.i.i253 = getelementptr i8, ptr %71, i32 %add92
  %cmp94 = icmp eq ptr %add.ptr.i.i253, null
  br i1 %cmp94, label %skb_header_pointer.exit262.if.then96_crit_edge, label %skb_header_pointer.exit262.if.end98_crit_edge

skb_header_pointer.exit262.if.end98_crit_edge:    ; preds = %skb_header_pointer.exit262
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end98

skb_header_pointer.exit262.if.then96_crit_edge:   ; preds = %skb_header_pointer.exit262
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then96

if.then96:                                        ; preds = %skb_header_pointer.exit262.if.then96_crit_edge, %lor.lhs.false.i.i260.if.then96_crit_edge, %if.end.i.i256.if.then96_crit_edge
  %hotdrop97 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 5
  %72 = ptrtoint ptr %hotdrop97 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 1, ptr %hotdrop97, align 2
  br label %cleanup162

if.end98:                                         ; preds = %skb_header_pointer.exit262.if.end98_crit_edge, %lor.lhs.false.i.i260.if.end98_crit_edge
  %retval.0.i.i261317 = phi ptr [ %add.ptr.i.i253, %skb_header_pointer.exit262.if.end98_crit_edge ], [ %_addr, %lor.lhs.false.i.i260.if.end98_crit_edge ]
  %arrayidx99 = getelementptr %struct.ip6t_rt, ptr %3, i32 0, i32 5, i32 %i.0336
  %73 = ptrtoint ptr %retval.0.i.i261317 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %retval.0.i.i261317, align 4
  %75 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx99, align 4
  %xor.i = xor i32 %76, %74
  %arrayidx4.i = getelementptr [4 x i32], ptr %retval.0.i.i261317, i32 0, i32 1
  %77 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [4 x i32], ptr %arrayidx99, i32 0, i32 1
  %79 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx6.i, align 4
  %xor7.i = xor i32 %80, %78
  %or.i = or i32 %xor7.i, %xor.i
  %arrayidx9.i = getelementptr [4 x i32], ptr %retval.0.i.i261317, i32 0, i32 2
  %81 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx9.i, align 4
  %arrayidx11.i = getelementptr [4 x i32], ptr %arrayidx99, i32 0, i32 2
  %83 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx11.i, align 4
  %xor12.i = xor i32 %84, %82
  %or13.i = or i32 %or.i, %xor12.i
  %arrayidx15.i = getelementptr [4 x i32], ptr %retval.0.i.i261317, i32 0, i32 3
  %85 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx15.i, align 4
  %arrayidx17.i = getelementptr [4 x i32], ptr %arrayidx99, i32 0, i32 3
  %87 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx17.i, align 4
  %xor18.i = xor i32 %88, %86
  %or19.i = or i32 %or13.i, %xor18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i)
  %cmp.i = icmp eq i32 %or19.i, 0
  %inc = zext i1 %cmp.i to i32
  %spec.select = add i32 %i.0336, %inc
  %89 = ptrtoint ptr %addrnr119 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %addrnr119, align 4
  %conv104 = zext i8 %90 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %conv104)
  %cmp105 = icmp eq i32 %spec.select, %conv104
  %inc109 = add nuw nsw i32 %temp.0335, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc109, i32 %umax)
  %exitcond.not = icmp eq i32 %inc109, %umax
  %or.cond343 = select i1 %cmp105, i1 true, i1 %exitcond.not
  br i1 %or.cond343, label %if.end98.for.end_crit_edge, label %if.end98.for.body_crit_edge

if.end98.for.body_crit_edge:                      ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end98.for.end_crit_edge:                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %if.end98.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.2 = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %spec.select, %if.end98.for.end_crit_edge ]
  %91 = ptrtoint ptr %addrnr119 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %addrnr119, align 4
  %conv111 = zext i8 %92 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.2, i32 %conv111)
  %cmp112 = icmp eq i32 %i.2, %conv111
  %ret.1.off0. = select i1 %cmp112, i1 %ret.1.off0, i1 false
  br label %cleanup162

if.else118:                                       ; preds = %if.else
  br i1 %cmp123, label %if.else118.cleanup162_crit_edge, label %for.cond127.preheader

if.else118.cleanup162_crit_edge:                  ; preds = %if.else118
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup162

for.cond127.preheader:                            ; preds = %if.else118
  %93 = ptrtoint ptr %addrnr119 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %addrnr119, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %cmp130339.not = icmp eq i8 %94, 0
  br i1 %cmp130339.not, label %for.cond127.preheader.for.end149_crit_edge, label %for.body132.lr.ph

for.cond127.preheader.for.end149_crit_edge:       ; preds = %for.cond127.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end149

for.body132.lr.ph:                                ; preds = %for.cond127.preheader
  %data.i267 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %tobool2.not.i.i270 = icmp eq ptr %skb, null
  br label %for.body132

for.body132:                                      ; preds = %for.inc147.for.body132_crit_edge, %for.body132.lr.ph
  %temp.1340 = phi i32 [ 0, %for.body132.lr.ph ], [ %inc148, %for.inc147.for.body132_crit_edge ]
  %95 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %ptr, align 4
  %mul134 = shl i32 %temp.1340, 4
  %add133 = or i32 %mul134, 8
  %add135 = add i32 %add133, %96
  %97 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %len.i.i, align 4
  %99 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %data_len.i.i, align 8
  %101 = add i32 %add135, %100
  %sub.i4.i265 = sub i32 %98, %101
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.i4.i265)
  %cmp.not.i.i266 = icmp slt i32 %sub.i4.i265, 16
  br i1 %cmp.not.i.i266, label %if.end.i.i271, label %skb_header_pointer.exit277, !prof !33

if.end.i.i271:                                    ; preds = %for.body132
  br i1 %tobool2.not.i.i270, label %if.end.i.i271.if.then139_crit_edge, label %lor.lhs.false.i.i275

if.end.i.i271.if.then139_crit_edge:               ; preds = %if.end.i.i271
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then139

lor.lhs.false.i.i275:                             ; preds = %if.end.i.i271
  %call.i.i272 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add135, ptr noundef nonnull %_addr, i32 noundef 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i272)
  %cmp3.i.i273 = icmp slt i32 %call.i.i272, 0
  br i1 %cmp3.i.i273, label %lor.lhs.false.i.i275.if.then139_crit_edge, label %lor.lhs.false.i.i275.if.end141_crit_edge

lor.lhs.false.i.i275.if.end141_crit_edge:         ; preds = %lor.lhs.false.i.i275
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end141

lor.lhs.false.i.i275.if.then139_crit_edge:        ; preds = %lor.lhs.false.i.i275
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then139

skb_header_pointer.exit277:                       ; preds = %for.body132
  %102 = ptrtoint ptr %data.i267 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %data.i267, align 4
  %add.ptr.i.i268 = getelementptr i8, ptr %103, i32 %add135
  %cmp137 = icmp eq ptr %add.ptr.i.i268, null
  br i1 %cmp137, label %skb_header_pointer.exit277.if.then139_crit_edge, label %skb_header_pointer.exit277.if.end141_crit_edge

skb_header_pointer.exit277.if.end141_crit_edge:   ; preds = %skb_header_pointer.exit277
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end141

skb_header_pointer.exit277.if.then139_crit_edge:  ; preds = %skb_header_pointer.exit277
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then139

if.then139:                                       ; preds = %skb_header_pointer.exit277.if.then139_crit_edge, %lor.lhs.false.i.i275.if.then139_crit_edge, %if.end.i.i271.if.then139_crit_edge
  %hotdrop140 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 5
  %104 = ptrtoint ptr %hotdrop140 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 1, ptr %hotdrop140, align 2
  br label %cleanup162

if.end141:                                        ; preds = %skb_header_pointer.exit277.if.end141_crit_edge, %lor.lhs.false.i.i275.if.end141_crit_edge
  %retval.0.i.i276324 = phi ptr [ %add.ptr.i.i268, %skb_header_pointer.exit277.if.end141_crit_edge ], [ %_addr, %lor.lhs.false.i.i275.if.end141_crit_edge ]
  %arrayidx143 = getelementptr %struct.ip6t_rt, ptr %3, i32 0, i32 5, i32 %temp.1340
  %105 = ptrtoint ptr %retval.0.i.i276324 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %retval.0.i.i276324, align 4
  %107 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx143, align 4
  %xor.i278 = xor i32 %108, %106
  %arrayidx4.i279 = getelementptr [4 x i32], ptr %retval.0.i.i276324, i32 0, i32 1
  %109 = ptrtoint ptr %arrayidx4.i279 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx4.i279, align 4
  %arrayidx6.i280 = getelementptr [4 x i32], ptr %arrayidx143, i32 0, i32 1
  %111 = ptrtoint ptr %arrayidx6.i280 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx6.i280, align 4
  %xor7.i281 = xor i32 %112, %110
  %or.i282 = or i32 %xor7.i281, %xor.i278
  %arrayidx9.i283 = getelementptr [4 x i32], ptr %retval.0.i.i276324, i32 0, i32 2
  %113 = ptrtoint ptr %arrayidx9.i283 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx9.i283, align 4
  %arrayidx11.i284 = getelementptr [4 x i32], ptr %arrayidx143, i32 0, i32 2
  %115 = ptrtoint ptr %arrayidx11.i284 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx11.i284, align 4
  %xor12.i285 = xor i32 %116, %114
  %or13.i286 = or i32 %or.i282, %xor12.i285
  %arrayidx15.i287 = getelementptr [4 x i32], ptr %retval.0.i.i276324, i32 0, i32 3
  %117 = ptrtoint ptr %arrayidx15.i287 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx15.i287, align 4
  %arrayidx17.i288 = getelementptr [4 x i32], ptr %arrayidx143, i32 0, i32 3
  %119 = ptrtoint ptr %arrayidx17.i288 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx17.i288, align 4
  %xor18.i289 = xor i32 %120, %118
  %or19.i290 = or i32 %or13.i286, %xor18.i289
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i290)
  %cmp.i291 = icmp eq i32 %or19.i290, 0
  br i1 %cmp.i291, label %for.inc147, label %if.end141.for.end149_crit_edge

if.end141.for.end149_crit_edge:                   ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end149

for.inc147:                                       ; preds = %if.end141
  %inc148 = add nuw nsw i32 %temp.1340, 1
  %121 = ptrtoint ptr %addrnr119 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %addrnr119, align 4
  %conv129 = zext i8 %122 to i32
  %cmp130 = icmp ult i32 %inc148, %conv129
  br i1 %cmp130, label %for.inc147.for.body132_crit_edge, label %for.inc147.for.end149_crit_edge

for.inc147.for.end149_crit_edge:                  ; preds = %for.inc147
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end149

for.inc147.for.body132_crit_edge:                 ; preds = %for.inc147
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body132

for.end149:                                       ; preds = %for.inc147.for.end149_crit_edge, %if.end141.for.end149_crit_edge, %for.cond127.preheader.for.end149_crit_edge
  %temp.1.lcssa = phi i32 [ 0, %for.cond127.preheader.for.end149_crit_edge ], [ %temp.1340, %if.end141.for.end149_crit_edge ], [ %inc148, %for.inc147.for.end149_crit_edge ]
  %123 = ptrtoint ptr %addrnr119 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %addrnr119, align 4
  %conv151 = zext i8 %124 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %temp.1.lcssa, i32 %conv151)
  %cmp152 = icmp eq i32 %temp.1.lcssa, %conv151
  call void @__sanitizer_cov_trace_cmp4(i32 %temp.1.lcssa, i32 %div122230)
  %cmp157 = icmp eq i32 %temp.1.lcssa, %div122230
  %or.cond = select i1 %cmp152, i1 %cmp157, i1 false
  %spec.select232 = select i1 %or.cond, i1 %ret.1.off0, i1 false
  br label %cleanup162

cleanup162:                                       ; preds = %for.end149, %if.then139, %if.else118.cleanup162_crit_edge, %for.end, %if.then96, %if.then80.cleanup162_crit_edge, %if.end69.cleanup162_crit_edge, %cleanup.thread, %if.end8.cleanup162_crit_edge, %if.then6, %if.then2, %if.then.cleanup162_crit_edge
  %retval.2 = phi i1 [ false, %if.then6 ], [ false, %if.then139 ], [ false, %if.then2 ], [ false, %if.then.cleanup162_crit_edge ], [ false, %if.end8.cleanup162_crit_edge ], [ %ret.1.off0, %if.end69.cleanup162_crit_edge ], [ false, %if.then80.cleanup162_crit_edge ], [ false, %if.then96 ], [ %ret.1.off0., %for.end ], [ false, %if.else118.cleanup162_crit_edge ], [ %spec.select232, %for.end149 ], [ false, %cleanup.thread ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_addr) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ptr) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_route) #5
  ret i1 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt_mt6_check(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %invflags = getelementptr inbounds %struct.ip6t_rt, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %invflags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %invflags, align 1
  %conv = zext i8 %3 to i32
  %and = and i32 %conv, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end7, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt_mt6_check.__UNIQUE_ID_ddebug622, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt_mt6_check, %if.then4)) #5
          to label %cleanup [label %if.then4], !srcloc !35

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %invflags to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %invflags, align 1
  %conv6 = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rt_mt6_check.__UNIQUE_ID_ddebug622, ptr noundef nonnull @.str.4, i32 noundef %conv6) #5
  br label %cleanup

if.end7:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.ip6t_rt, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %flags, align 4
  %conv8 = zext i8 %7 to i32
  %and9 = and i32 %conv8, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end7.cleanup_crit_edge, label %land.lhs.true

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end7
  %and13 = and i32 %conv8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %land.lhs.true.do.body22_crit_edge, label %lor.lhs.false

land.lhs.true.do.body22_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body22

lor.lhs.false:                                    ; preds = %land.lhs.true
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not = icmp eq i32 %9, 0
  %and19 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %or.cond = select i1 %cmp.not, i1 %tobool20.not, i1 false
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.do.body22_crit_edge

lor.lhs.false.do.body22_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body22

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body22:                                        ; preds = %lor.lhs.false.do.body22_crit_edge, %land.lhs.true.do.body22_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt_mt6_check.__UNIQUE_ID_ddebug623, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt_mt6_check, %if.then34)) #5
          to label %cleanup [label %if.then34], !srcloc !35

if.then34:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rt_mt6_check.__UNIQUE_ID_ddebug623, ptr noundef nonnull @.str.6) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %do.body22, %lor.lhs.false.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then4, %do.body
  %retval.0 = phi i32 [ -22, %if.then4 ], [ -22, %if.then34 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ -22, %do.body ], [ -22, %do.body22 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_find_hdr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !16, !17, !18, !19, !20, !22, !23}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @__UNIQUE_ID_file618, !1, !"__UNIQUE_ID_file618", i1 false, i1 false}
!1 = !{!"../net/ipv6/netfilter/ip6t_rt.c", i32 20, i32 1}
!2 = !{ptr @__UNIQUE_ID_license619, !1, !"__UNIQUE_ID_license619", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description620, !4, !"__UNIQUE_ID_description620", i1 false, i1 false}
!4 = !{!"../net/ipv6/netfilter/ip6t_rt.c", i32 21, i32 1}
!5 = !{ptr @__UNIQUE_ID_author621, !6, !"__UNIQUE_ID_author621", i1 false, i1 false}
!6 = !{!"../net/ipv6/netfilter/ip6t_rt.c", i32 22, i32 1}
!7 = !{ptr @__initcall__kmod_ip6t_rt__624_190_rt_mt6_init6, !8, !"__initcall__kmod_ip6t_rt__624_190_rt_mt6_init6", i1 false, i1 false}
!8 = !{!"../net/ipv6/netfilter/ip6t_rt.c", i32 190, i32 1}
!9 = !{ptr @__exitcall_rt_mt6_exit, !10, !"__exitcall_rt_mt6_exit", i1 false, i1 false}
!10 = !{!"../net/ipv6/netfilter/ip6t_rt.c", i32 191, i32 1}
!11 = !{ptr @rt_mt6_reg, !12, !"rt_mt6_reg", i1 false, i1 false}
!12 = !{!"../net/ipv6/netfilter/ip6t_rt.c", i32 171, i32 24}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/ipv6/netfilter/ip6t_rt.c", i32 157, i32 3}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @rt_mt6_check.__UNIQUE_ID_ddebug622, !14, !"__UNIQUE_ID_ddebug622", i1 false, i1 false}
!19 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/ipv6/netfilter/ip6t_rt.c", i32 164, i32 3}
!22 = !{ptr @rt_mt6_check.__UNIQUE_ID_ddebug623, !21, !"__UNIQUE_ID_ddebug623", i1 false, i1 false}
!23 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{!"branch_weights", i32 1, i32 2000}
!34 = !{!"auto-init"}
!35 = !{i64 2148955929, i64 2148955934, i64 2148955947, i64 2148955991, i64 2148956025, i64 2148956046}
