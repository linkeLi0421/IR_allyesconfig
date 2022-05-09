; ModuleID = '/llk/IR_all_yes/net/netfilter/xt_esp.c_pt.bc'
source_filename = "../net/netfilter/xt_esp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_match = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ip_esp_hdr = type { i32, i32, [0 x i8] }
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
%struct.xt_esp = type { [2 x i32], i8 }
%struct.xt_mtchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }

@__UNIQUE_ID_file618 = internal constant [33 x i8] c"xt_esp.file=net/netfilter/xt_esp\00", section ".modinfo", align 1
@__UNIQUE_ID_license619 = internal constant [19 x i8] c"xt_esp.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author620 = internal constant [42 x i8] c"xt_esp.author=Yon Uriarte <yon@astaro.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description621 = internal constant [51 x i8] c"xt_esp.description=Xtables: IPsec-ESP packet match\00", section ".modinfo", align 1
@__UNIQUE_ID_alias622 = internal constant [21 x i8] c"xt_esp.alias=ipt_esp\00", section ".modinfo", align 1
@__UNIQUE_ID_alias623 = internal constant [22 x i8] c"xt_esp.alias=ip6t_esp\00", section ".modinfo", align 1
@esp_mt_reg = internal global [2 x %struct.xt_match] [%struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"esp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @esp_mt, ptr @esp_mt_check, ptr null, ptr null, ptr null, i32 12, i32 0, i32 0, i16 50, i16 2 }, %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"esp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @esp_mt, ptr @esp_mt_check, ptr null, ptr null, ptr null, i32 12, i32 0, i32 0, i16 50, i16 10 }], section ".data..read_mostly", align 4
@__initcall__kmod_xt_esp__628_103_esp_mt_init6 = internal global ptr @esp_mt_init, section ".initcall6.init", align 4
@__exitcall_esp_mt_exit = internal global ptr @esp_mt_exit, section ".exitcall.exit", align 4
@esp_mt.__UNIQUE_ID_ddebug626 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 12, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"xt_esp\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"esp_mt\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"net/netfilter/xt_esp.c\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Dropping evil ESP tinygram.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"xt_esp: Dropping evil ESP tinygram.\0A\00", [59 x i8] zeroinitializer }, align 32
@spi_match.__UNIQUE_ID_ddebug624 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 7, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spi_match\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"spi_match:%c 0x%x <= 0x%x <= 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"xt_esp: spi_match:%c 0x%x <= 0x%x <= 0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@spi_match.__UNIQUE_ID_ddebug625 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.8, i8 0, i8 8, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" result %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"xt_esp:  result %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PASS\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"FAILED\00", [25 x i8] zeroinitializer }, align 32
@esp_mt_check.__UNIQUE_ID_ddebug627 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 16, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"esp_mt_check\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"unknown flags %X\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"xt_esp: unknown flags %X\0A\00", [38 x i8] zeroinitializer }, align 32
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 51, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 29, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 32, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.58 = private constant [26 x i8] c"../net/netfilter/xt_esp.c\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 65, i32 3 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_alias622, ptr @__UNIQUE_ID_alias623, ptr @__UNIQUE_ID_author620, ptr @__UNIQUE_ID_description621, ptr @__UNIQUE_ID_file618, ptr @__UNIQUE_ID_license619, ptr @__exitcall_esp_mt_exit, ptr @__initcall__kmod_xt_esp__628_103_esp_mt_init6, ptr @esp_mt_exit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @esp_mt_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @xt_unregister_matches(ptr noundef nonnull @esp_mt_reg, i32 noundef 2) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_matches(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @esp_mt_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_matches(ptr noundef nonnull @esp_mt_reg, i32 noundef 2) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @esp_mt(ptr noundef %skb, ptr nocapture noundef %par) #2 align 64 {
entry:
  %_esp = alloca %struct.ip_esp_hdr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_esp) #4
  %0 = ptrtoint ptr %_esp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %_esp, align 4, !annotation !49
  %1 = getelementptr inbounds %struct.ip_esp_hdr, ptr %_esp, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !49
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
  call void @__sanitizer_cov_trace_pc() #6
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub.i1.i)
  %cmp.i.i = icmp sgt i32 %sub.i1.i, 7
  br i1 %cmp.i.i, label %skb_header_pointer.exit, label %if.end.i.i, !prof !50

if.end.i.i:                                       ; preds = %if.end
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.do.body_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.do.body_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %9, ptr noundef nonnull %_esp, i32 noundef 8) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.do.body_crit_edge, label %lor.lhs.false.i.i.if.end10_crit_edge

lor.lhs.false.i.i.if.end10_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

lor.lhs.false.i.i.do.body_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #6
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
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

skb_header_pointer.exit.do.body_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.body:                                          ; preds = %skb_header_pointer.exit.do.body_crit_edge, %lor.lhs.false.i.i.do.body_crit_edge, %if.end.i.i.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @esp_mt.__UNIQUE_ID_ddebug626, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@esp_mt, %if.then8)) #4
          to label %do.end [label %if.then8], !srcloc !51

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @esp_mt.__UNIQUE_ID_ddebug626, ptr noundef nonnull @.str.4) #4
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %hotdrop = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 5
  %17 = ptrtoint ptr %hotdrop to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %hotdrop, align 2
  br label %cleanup

if.end10:                                         ; preds = %skb_header_pointer.exit.if.end10_crit_edge, %lor.lhs.false.i.i.if.end10_crit_edge
  %retval.0.i.i33 = phi ptr [ %add.ptr.i.i, %skb_header_pointer.exit.if.end10_crit_edge ], [ %_esp, %lor.lhs.false.i.i.if.end10_crit_edge ]
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %5, align 4
  %arrayidx12 = getelementptr [2 x i32], ptr %5, i32 0, i32 1
  %20 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx12, align 4
  %22 = ptrtoint ptr %retval.0.i.i33 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %retval.0.i.i33, align 4
  %invflags = getelementptr inbounds %struct.xt_esp, ptr %5, i32 0, i32 1
  %24 = ptrtoint ptr %invflags to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %invflags, align 4
  %26 = and i8 %25, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool14 = icmp ne i8 %26, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_match.__UNIQUE_ID_ddebug624, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@esp_mt, %if.then.i)) #4
          to label %do.end.i [label %if.then.i], !srcloc !51

if.then.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  %cond.i = select i1 %tobool14, i32 33, i32 32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @spi_match.__UNIQUE_ID_ddebug624, ptr noundef nonnull @.str.7, i32 noundef %cond.i, i32 noundef %19, i32 noundef %23, i32 noundef %21) #4
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end10
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %19)
  %cmp.not.i = icmp uge i32 %23, %19
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %21)
  %cmp5.i = icmp ule i32 %23, %21
  %narrow.i = and i1 %cmp.not.i, %cmp5.i
  %tobool7.i = xor i1 %narrow.i, %tobool14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_match.__UNIQUE_ID_ddebug625, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@esp_mt, %if.then21.i)) #4
          to label %cleanup [label %if.then21.i], !srcloc !51

if.then21.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %cond24.i = select i1 %tobool7.i, ptr @.str.10, ptr @.str.11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @spi_match.__UNIQUE_ID_ddebug625, ptr noundef nonnull @.str.9, ptr noundef nonnull %cond24.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then21.i, %do.end.i, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %do.end ], [ false, %entry.cleanup_crit_edge ], [ %tobool7.i, %do.end.i ], [ %tobool7.i, %if.then21.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_esp) #4
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @esp_mt_check(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %invflags = getelementptr inbounds %struct.xt_esp, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %invflags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %invflags, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %tobool.not = icmp ult i8 %3, 2
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @esp_mt_check.__UNIQUE_ID_ddebug627, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@esp_mt_check, %if.then4)) #4
          to label %cleanup [label %if.then4], !srcloc !51

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %invflags to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %invflags, align 4
  %conv6 = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @esp_mt_check.__UNIQUE_ID_ddebug627, ptr noundef nonnull @.str.14, i32 noundef %conv6) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then4 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_matches(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !34, !35, !37, !38, !39}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @__UNIQUE_ID_file618, !1, !"__UNIQUE_ID_file618", i1 false, i1 false}
!1 = !{!"../net/netfilter/xt_esp.c", i32 18, i32 1}
!2 = !{ptr @__UNIQUE_ID_license619, !1, !"__UNIQUE_ID_license619", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author620, !4, !"__UNIQUE_ID_author620", i1 false, i1 false}
!4 = !{!"../net/netfilter/xt_esp.c", i32 19, i32 1}
!5 = !{ptr @__UNIQUE_ID_description621, !6, !"__UNIQUE_ID_description621", i1 false, i1 false}
!6 = !{!"../net/netfilter/xt_esp.c", i32 20, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias622, !8, !"__UNIQUE_ID_alias622", i1 false, i1 false}
!8 = !{!"../net/netfilter/xt_esp.c", i32 21, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias623, !10, !"__UNIQUE_ID_alias623", i1 false, i1 false}
!10 = !{!"../net/netfilter/xt_esp.c", i32 22, i32 1}
!11 = !{ptr @__initcall__kmod_xt_esp__628_103_esp_mt_init6, !12, !"__initcall__kmod_xt_esp__628_103_esp_mt_init6", i1 false, i1 false}
!12 = !{!"../net/netfilter/xt_esp.c", i32 103, i32 1}
!13 = !{ptr @__exitcall_esp_mt_exit, !14, !"__exitcall_esp_mt_exit", i1 false, i1 false}
!14 = !{!"../net/netfilter/xt_esp.c", i32 104, i32 1}
!15 = !{ptr @esp_mt_reg, !16, !"esp_mt_reg", i1 false, i1 false}
!16 = !{!"../net/netfilter/xt_esp.c", i32 72, i32 24}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/netfilter/xt_esp.c", i32 51, i32 3}
!19 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @esp_mt.__UNIQUE_ID_ddebug626, !18, !"__UNIQUE_ID_ddebug626", i1 false, i1 false}
!23 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/netfilter/xt_esp.c", i32 29, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @spi_match.__UNIQUE_ID_ddebug624, !25, !"__UNIQUE_ID_ddebug624", i1 false, i1 false}
!28 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/netfilter/xt_esp.c", i32 32, i32 2}
!31 = !{ptr @spi_match.__UNIQUE_ID_ddebug625, !30, !"__UNIQUE_ID_ddebug625", i1 false, i1 false}
!32 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/netfilter/xt_esp.c", i32 65, i32 3}
!37 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @esp_mt_check.__UNIQUE_ID_ddebug627, !36, !"__UNIQUE_ID_ddebug627", i1 false, i1 false}
!39 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{!"auto-init"}
!50 = !{!"branch_weights", i32 2000, i32 1}
!51 = !{i64 2148954007, i64 2148954012, i64 2148954025, i64 2148954069, i64 2148954103, i64 2148954124}
