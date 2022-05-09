; ModuleID = '/llk/IR_all_yes/net/bridge/netfilter/ebt_among.c_pt.bc'
source_filename = "../net/bridge/netfilter/ebt_among.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_match = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.arphdr = type { i16, i16, i8, i8, i16 }
%struct.xt_action_param = type { %union.anon.141, %union.anon.142, ptr, i32, i16, i8 }
%union.anon.141 = type { ptr }
%union.anon.142 = type { ptr }
%struct.ebt_among_info = type { i32, i32, i32 }
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
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.ebt_mac_wormhash = type { [257 x i32], i32, [0 x %struct.ebt_mac_wormhash_tuple] }
%struct.ebt_mac_wormhash_tuple = type { [2 x i32], i32 }
%struct.xt_mtchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }

@ebt_among_mt_reg = internal global %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"among\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @ebt_among_mt, ptr @ebt_among_mt_check, ptr null, ptr null, ptr null, i32 -1, i32 0, i32 0, i16 0, i16 7 }, section ".data..read_mostly", align 4
@__initcall__kmod_ebt_among__476_278_ebt_among_init6 = internal global ptr @ebt_among_init, section ".initcall6.init", align 4
@__exitcall_ebt_among_fini = internal global ptr @ebt_among_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_description477 = internal constant [70 x i8] c"ebt_among.description=Ebtables: Combined MAC/IP address list matching\00", section ".modinfo", align 1
@__UNIQUE_ID_file478 = internal constant [46 x i8] c"ebt_among.file=net/bridge/netfilter/ebt_among\00", section ".modinfo", align 1
@__UNIQUE_ID_license479 = internal constant [22 x i8] c"ebt_among.license=GPL\00", section ".modinfo", align 1
@ebt_among_mt_check._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.ebt_among_mt_check = private unnamed_addr constant [19 x i8] c"ebt_among_mt_check\00", align 1
@ebt_among_mt_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.ebt_among_mt_check, ptr @.str.2, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013ebt_among: wrong size: %d against expected %d, rounded to %zd\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"net/bridge/netfilter/ebt_among.c\00", [63 x i8] zeroinitializer }, align 32
@ebt_among_mt_check._entry_ptr = internal global ptr @ebt_among_mt_check._entry, section ".printk_index", align 4
@ebt_among_mt_check._rs.3 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ebt_among_mt_check._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.ebt_among_mt_check, ptr @.str.2, i32 248, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013ebt_among: dst integrity fail: %x\0A\00", [59 x i8] zeroinitializer }, align 32
@ebt_among_mt_check._entry_ptr.6 = internal global ptr @ebt_among_mt_check._entry.4, section ".printk_index", align 4
@ebt_among_mt_check._rs.7 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ebt_among_mt_check._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @__func__.ebt_among_mt_check, ptr @.str.2, i32 252, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013ebt_among: src integrity fail: %x\0A\00", [59 x i8] zeroinitializer }, align 32
@ebt_among_mt_check._entry_ptr.10 = internal global ptr @ebt_among_mt_check._entry.8, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 2054]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 2054]
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 242, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 248, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private constant [36 x i8] c"../net/bridge/netfilter/ebt_among.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 252, i32 3 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_description477, ptr @__UNIQUE_ID_file478, ptr @__UNIQUE_ID_license479, ptr @__exitcall_ebt_among_fini, ptr @__initcall__kmod_ebt_among__476_278_ebt_among_init6, ptr @ebt_among_fini, ptr @ebt_among_mt_check._entry, ptr @ebt_among_mt_check._entry.4, ptr @ebt_among_mt_check._entry.8, ptr @ebt_among_mt_check._entry_ptr, ptr @ebt_among_mt_check._entry_ptr.10, ptr @ebt_among_mt_check._entry_ptr.6, ptr @ebt_among_mt_check._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @ebt_among_mt_check._rs.3, ptr @.str.5, ptr @ebt_among_mt_check._rs.7, ptr @.str.9], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ebt_among_mt_check._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ebt_among_mt_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ebt_among_mt_check._rs.3 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ebt_among_mt_check._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ebt_among_mt_check._rs.7 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ebt_among_mt_check._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ebt_among_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @xt_unregister_match(ptr noundef nonnull @ebt_among_mt_reg) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ebt_among_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_match(ptr noundef nonnull @ebt_among_mt_reg) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @ebt_among_mt(ptr noundef %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  %_iph.i124 = alloca %struct.iphdr, align 4
  %_arph.i126 = alloca %struct.arphdr, align 8
  %buf.i128 = alloca i32, align 4
  %_iph.i = alloca %struct.iphdr, align 4
  %_arph.i = alloca %struct.arphdr, align 8
  %buf.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %add.ptr = getelementptr i8, ptr %2, i32 %4
  %spec.select = select i1 %tobool.not, ptr null, ptr %add.ptr
  %wh_src_ofs = getelementptr inbounds %struct.ebt_among_info, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %wh_src_ofs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %wh_src_ofs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  %add.ptr5 = getelementptr i8, ptr %2, i32 %6
  %tobool9.not305 = icmp eq ptr %add.ptr5, null
  %tobool9.not = or i1 %tobool2.not, %tobool9.not305
  br i1 %tobool9.not, label %entry.if.end22_crit_edge, label %if.then

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then:                                          ; preds = %entry
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %7 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %head.i.i, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %9 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i = zext i16 %10 to i32
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 %conv.i.i
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 1
  %_iph.sroa.gep.i = getelementptr inbounds %struct.iphdr, ptr %_iph.i, i32 0, i32 8
  %_arph.sroa.gep.i = getelementptr inbounds %struct.arphdr, ptr %_arph.i, i32 0, i32 3
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %h_proto.i, align 1
  %13 = zext i16 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i16 %12, label %if.then.if.end_crit_edge [
    i16 2048, label %if.then.i
    i16 2054, label %if.then12.i
  ]

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %_iph.i) #6
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %14 = call ptr @memset(ptr %_iph.i, i32 255, i32 20)
  %15 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %17 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i4.i.i = sub i32 %16, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i4.i.i)
  %cmp.not.i.i.i = icmp slt i32 %sub.i4.i.i, 20
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %skb_header_pointer.exit.i, !prof !38

if.end.i.i.i:                                     ; preds = %if.then.i
  %tobool2.not.i.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i.i, label %if.end.i.i.i.cleanup.thread.i_crit_edge, label %lor.lhs.false.i.i.i

if.end.i.i.i.cleanup.thread.i_crit_edge:          ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread.i

lor.lhs.false.i.i.i:                              ; preds = %if.end.i.i.i
  %call.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef 0, ptr noundef nonnull %_iph.i, i32 noundef 20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp3.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp3.i.i.i, label %lor.lhs.false.i.i.i.cleanup.thread.i_crit_edge, label %lor.lhs.false.i.i.i.cleanup.i_crit_edge

lor.lhs.false.i.i.i.cleanup.i_crit_edge:          ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

lor.lhs.false.i.i.i.cleanup.thread.i_crit_edge:   ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread.i

skb_header_pointer.exit.i:                        ; preds = %if.then.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %19 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i.i, align 4
  %.sroa.gep109.i = getelementptr inbounds %struct.iphdr, ptr %20, i32 0, i32 8
  %cmp3.i = icmp eq ptr %20, null
  br i1 %cmp3.i, label %skb_header_pointer.exit.i.cleanup.thread.i_crit_edge, label %skb_header_pointer.exit.i.cleanup.i_crit_edge

skb_header_pointer.exit.i.cleanup.i_crit_edge:    ; preds = %skb_header_pointer.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

skb_header_pointer.exit.i.cleanup.thread.i_crit_edge: ; preds = %skb_header_pointer.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %skb_header_pointer.exit.i.cleanup.thread.i_crit_edge, %lor.lhs.false.i.i.i.cleanup.thread.i_crit_edge, %if.end.i.i.i.cleanup.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_iph.i) #6
  br label %cleanup

cleanup.i:                                        ; preds = %skb_header_pointer.exit.i.cleanup.i_crit_edge, %lor.lhs.false.i.i.i.cleanup.i_crit_edge
  %retval.0.i.i88.sroa.phi.i = phi ptr [ %.sroa.gep109.i, %skb_header_pointer.exit.i.cleanup.i_crit_edge ], [ %_iph.sroa.gep.i, %lor.lhs.false.i.i.i.cleanup.i_crit_edge ]
  %21 = ptrtoint ptr %retval.0.i.i88.sroa.phi.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %retval.0.i.i88.sroa.phi.i, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_iph.i) #6
  br label %if.end

if.then12.i:                                      ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_arph.i) #6
  %23 = ptrtoint ptr %_arph.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 -1, ptr %_arph.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #6
  %24 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %buf.i, align 4, !annotation !39
  %len.i.i53.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %25 = ptrtoint ptr %len.i.i53.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len.i.i53.i, align 4
  %data_len.i.i54.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %27 = ptrtoint ptr %data_len.i.i54.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %data_len.i.i54.i, align 8
  %sub.i4.i55.i = sub i32 %26, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i4.i55.i)
  %cmp.not.i.i56.i = icmp slt i32 %sub.i4.i55.i, 8
  br i1 %cmp.not.i.i56.i, label %if.end.i.i60.i, label %skb_header_pointer.exit66.i, !prof !38

if.end.i.i60.i:                                   ; preds = %if.then12.i
  %tobool2.not.i.i59.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i59.i, label %if.end.i.i60.i.cleanup30.thread.i_crit_edge, label %lor.lhs.false.i.i64.i

if.end.i.i60.i.cleanup30.thread.i_crit_edge:      ; preds = %if.end.i.i60.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup30.thread.i

lor.lhs.false.i.i64.i:                            ; preds = %if.end.i.i60.i
  %call.i.i61.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef 0, ptr noundef nonnull %_arph.i, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i61.i)
  %cmp3.i.i62.i = icmp slt i32 %call.i.i61.i, 0
  br i1 %cmp3.i.i62.i, label %lor.lhs.false.i.i64.i.cleanup30.thread.i_crit_edge, label %lor.lhs.false.i.i64.i.lor.lhs.false.i_crit_edge

lor.lhs.false.i.i64.i.lor.lhs.false.i_crit_edge:  ; preds = %lor.lhs.false.i.i64.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

lor.lhs.false.i.i64.i.cleanup30.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i64.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup30.thread.i

skb_header_pointer.exit66.i:                      ; preds = %if.then12.i
  %data.i57.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %29 = ptrtoint ptr %data.i57.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i57.i, align 4
  %.sroa.gep.i = getelementptr inbounds %struct.arphdr, ptr %30, i32 0, i32 3
  %cmp14.i = icmp eq ptr %30, null
  br i1 %cmp14.i, label %skb_header_pointer.exit66.i.cleanup30.thread.i_crit_edge, label %skb_header_pointer.exit66.i.lor.lhs.false.i_crit_edge

skb_header_pointer.exit66.i.lor.lhs.false.i_crit_edge: ; preds = %skb_header_pointer.exit66.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

skb_header_pointer.exit66.i.cleanup30.thread.i_crit_edge: ; preds = %skb_header_pointer.exit66.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup30.thread.i

lor.lhs.false.i:                                  ; preds = %skb_header_pointer.exit66.i.lor.lhs.false.i_crit_edge, %lor.lhs.false.i.i64.i.lor.lhs.false.i_crit_edge
  %retval.0.i.i6598.i = phi ptr [ %30, %skb_header_pointer.exit66.i.lor.lhs.false.i_crit_edge ], [ %_arph.i, %lor.lhs.false.i.i64.i.lor.lhs.false.i_crit_edge ]
  %retval.0.i.i6598.sroa.phi.i = phi ptr [ %.sroa.gep.i, %skb_header_pointer.exit66.i.lor.lhs.false.i_crit_edge ], [ %_arph.sroa.gep.i, %lor.lhs.false.i.i64.i.lor.lhs.false.i_crit_edge ]
  %31 = ptrtoint ptr %retval.0.i.i6598.sroa.phi.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %retval.0.i.i6598.sroa.phi.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %32)
  %cmp17.not.i = icmp eq i8 %32, 4
  br i1 %cmp17.not.i, label %lor.lhs.false19.i, label %lor.lhs.false.i.cleanup30.thread.i_crit_edge

lor.lhs.false.i.cleanup30.thread.i_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup30.thread.i

lor.lhs.false19.i:                                ; preds = %lor.lhs.false.i
  %ar_hln.i = getelementptr inbounds %struct.arphdr, ptr %retval.0.i.i6598.i, i32 0, i32 2
  %33 = ptrtoint ptr %ar_hln.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ar_hln.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %34)
  %cmp21.not.i = icmp eq i8 %34, 6
  br i1 %cmp21.not.i, label %if.end24.i, label %lor.lhs.false19.i.cleanup30.thread.i_crit_edge

lor.lhs.false19.i.cleanup30.thread.i_crit_edge:   ; preds = %lor.lhs.false19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup30.thread.i

if.end24.i:                                       ; preds = %lor.lhs.false19.i
  %35 = ptrtoint ptr %len.i.i53.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len.i.i53.i, align 4
  %37 = ptrtoint ptr %data_len.i.i54.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %data_len.i.i54.i, align 8
  %.neg108.i = add i32 %36, -14
  %sub.i4.i69.i = sub i32 %.neg108.i, %38
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i4.i69.i)
  %cmp.not.i.i70.i = icmp slt i32 %sub.i4.i69.i, 4
  br i1 %cmp.not.i.i70.i, label %if.end.i.i75.i, label %skb_header_pointer.exit81.i, !prof !38

if.end.i.i75.i:                                   ; preds = %if.end24.i
  %tobool2.not.i.i74.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i74.i, label %if.end.i.i75.i.cleanup30.thread.i_crit_edge, label %lor.lhs.false.i.i79.i

if.end.i.i75.i.cleanup30.thread.i_crit_edge:      ; preds = %if.end.i.i75.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup30.thread.i

lor.lhs.false.i.i79.i:                            ; preds = %if.end.i.i75.i
  %call.i.i76.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef 14, ptr noundef nonnull %buf.i, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i76.i)
  %cmp3.i.i77.i = icmp slt i32 %call.i.i76.i, 0
  br i1 %cmp3.i.i77.i, label %lor.lhs.false.i.i79.i.cleanup30.thread.i_crit_edge, label %lor.lhs.false.i.i79.i.cleanup30.i_crit_edge

lor.lhs.false.i.i79.i.cleanup30.i_crit_edge:      ; preds = %lor.lhs.false.i.i79.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup30.i

lor.lhs.false.i.i79.i.cleanup30.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i79.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup30.thread.i

skb_header_pointer.exit81.i:                      ; preds = %if.end24.i
  %data.i71.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %39 = ptrtoint ptr %data.i71.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data.i71.i, align 4
  %add.ptr.i.i72.i = getelementptr i8, ptr %40, i32 14
  %cmp26.i = icmp eq ptr %add.ptr.i.i72.i, null
  br i1 %cmp26.i, label %skb_header_pointer.exit81.i.cleanup30.thread.i_crit_edge, label %skb_header_pointer.exit81.i.cleanup30.i_crit_edge

skb_header_pointer.exit81.i.cleanup30.i_crit_edge: ; preds = %skb_header_pointer.exit81.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup30.i

skb_header_pointer.exit81.i.cleanup30.thread.i_crit_edge: ; preds = %skb_header_pointer.exit81.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup30.thread.i

cleanup30.thread.i:                               ; preds = %skb_header_pointer.exit81.i.cleanup30.thread.i_crit_edge, %lor.lhs.false.i.i79.i.cleanup30.thread.i_crit_edge, %if.end.i.i75.i.cleanup30.thread.i_crit_edge, %lor.lhs.false19.i.cleanup30.thread.i_crit_edge, %lor.lhs.false.i.cleanup30.thread.i_crit_edge, %skb_header_pointer.exit66.i.cleanup30.thread.i_crit_edge, %lor.lhs.false.i.i64.i.cleanup30.thread.i_crit_edge, %if.end.i.i60.i.cleanup30.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_arph.i) #6
  br label %cleanup

cleanup30.i:                                      ; preds = %skb_header_pointer.exit81.i.cleanup30.i_crit_edge, %lor.lhs.false.i.i79.i.cleanup30.i_crit_edge
  %retval.0.i.i80105.i = phi ptr [ %add.ptr.i.i72.i, %skb_header_pointer.exit81.i.cleanup30.i_crit_edge ], [ %buf.i, %lor.lhs.false.i.i79.i.cleanup30.i_crit_edge ]
  %41 = ptrtoint ptr %retval.0.i.i80105.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %retval.0.i.i80105.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_arph.i) #6
  br label %if.end

if.end:                                           ; preds = %cleanup30.i, %cleanup.i, %if.then.if.end_crit_edge
  %sip.0.ph = phi i32 [ %22, %cleanup.i ], [ %42, %cleanup30.i ], [ 0, %if.then.if.end_crit_edge ]
  %bitmask = getelementptr inbounds %struct.ebt_among_info, ptr %2, i32 0, i32 2
  %43 = ptrtoint ptr %bitmask to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bitmask, align 4
  %and = and i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  %arrayidx.i = getelementptr i8, ptr %h_source, i32 5
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %46 to i32
  %47 = ptrtoint ptr %h_source to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %h_source, align 4
  %cmp.sroa.0.2.insert.ext.i = zext i32 %48 to i64
  %cmp.sroa.0.2.insert.shift.i = shl nuw nsw i64 %cmp.sroa.0.2.insert.ext.i, 16
  %add.ptr.i.i67 = getelementptr i8, ptr %h_source, i32 4
  %49 = ptrtoint ptr %add.ptr.i.i67 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %add.ptr.i.i67, align 2
  %cmp.sroa.0.6.insert.ext.i = zext i16 %50 to i64
  %cmp.sroa.0.6.insert.insert.i = or i64 %cmp.sroa.0.2.insert.shift.i, %cmp.sroa.0.6.insert.ext.i
  %arrayidx1.i = getelementptr [257 x i32], ptr %add.ptr5, i32 0, i32 %conv.i
  %51 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx1.i, align 4
  %add.i = add nuw nsw i32 %conv.i, 1
  %arrayidx3.i = getelementptr [257 x i32], ptr %add.ptr5, i32 0, i32 %add.i
  %53 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sip.0.ph)
  %tobool.not.i = icmp eq i32 %sip.0.ph, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %54)
  %cmp2789.i = icmp slt i32 %52, %54
  br i1 %tobool13.not, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end
  br i1 %tobool.not.i, label %for.cond26.preheader.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.then14
  br i1 %cmp2789.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.cleanup_crit_edge

for.cond.preheader.i.cleanup_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %cmp.sroa.0.4.extract.trunc82.i = trunc i64 %cmp.sroa.0.6.insert.insert.i to i32
  %cmp.sroa.0.0.extract.shift.i = lshr i32 %48, 16
  br label %for.body.i

for.cond26.preheader.i:                           ; preds = %if.then14
  br i1 %cmp2789.i, label %for.body29.lr.ph.i, label %for.cond26.preheader.i.cleanup_crit_edge

for.cond26.preheader.i.cleanup_crit_edge:         ; preds = %for.cond26.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body29.lr.ph.i:                               ; preds = %for.cond26.preheader.i
  %cmp.sroa.0.4.extract.trunc.i = trunc i64 %cmp.sroa.0.6.insert.insert.i to i32
  %cmp.sroa.0.0.extract.shift79.i = lshr i32 %48, 16
  br label %for.body29.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.086.i = phi i32 [ %52, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx6.i = getelementptr %struct.ebt_mac_wormhash, ptr %add.ptr5, i32 0, i32 2, i32 %i.086.i
  %arrayidx9.i = getelementptr [2 x i32], ptr %arrayidx6.i, i32 0, i32 1
  %55 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx9.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %cmp.sroa.0.4.extract.trunc82.i)
  %cmp10.i = icmp eq i32 %56, %cmp.sroa.0.4.extract.trunc82.i
  br i1 %cmp10.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %57 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cmp.sroa.0.0.extract.shift.i, i32 %58)
  %cmp15.i = icmp eq i32 %cmp.sroa.0.0.extract.shift.i, %58
  br i1 %cmp15.i, label %if.then17.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then17.i:                                      ; preds = %land.lhs.true.i
  %ip18.i = getelementptr %struct.ebt_mac_wormhash, ptr %add.ptr5, i32 0, i32 2, i32 %i.086.i, i32 1
  %59 = ptrtoint ptr %ip18.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ip18.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp19.i = icmp eq i32 %60, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %sip.0.ph)
  %cmp22.i = icmp eq i32 %60, %sip.0.ph
  %or.cond.i = or i1 %cmp19.i, %cmp22.i
  br i1 %or.cond.i, label %if.then17.i.if.end22_crit_edge, label %if.then17.i.for.inc.i_crit_edge

if.then17.i.for.inc.i_crit_edge:                  ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then17.i.if.end22_crit_edge:                   ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

for.inc.i:                                        ; preds = %if.then17.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add i32 %i.086.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %54
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body29.i:                                     ; preds = %for.inc50.i.for.body29.i_crit_edge, %for.body29.lr.ph.i
  %i.190.i = phi i32 [ %52, %for.body29.lr.ph.i ], [ %inc51.i, %for.inc50.i.for.body29.i_crit_edge ]
  %arrayidx31.i = getelementptr %struct.ebt_mac_wormhash, ptr %add.ptr5, i32 0, i32 2, i32 %i.190.i
  %arrayidx34.i = getelementptr [2 x i32], ptr %arrayidx31.i, i32 0, i32 1
  %61 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx34.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %cmp.sroa.0.4.extract.trunc.i)
  %cmp35.i = icmp eq i32 %62, %cmp.sroa.0.4.extract.trunc.i
  br i1 %cmp35.i, label %land.lhs.true37.i, label %for.body29.i.for.inc50.i_crit_edge

for.body29.i.for.inc50.i_crit_edge:               ; preds = %for.body29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc50.i

land.lhs.true37.i:                                ; preds = %for.body29.i
  %63 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx31.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cmp.sroa.0.0.extract.shift79.i, i32 %64)
  %cmp41.i = icmp eq i32 %cmp.sroa.0.0.extract.shift79.i, %64
  br i1 %cmp41.i, label %if.then43.i, label %land.lhs.true37.i.for.inc50.i_crit_edge

land.lhs.true37.i.for.inc50.i_crit_edge:          ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc50.i

if.then43.i:                                      ; preds = %land.lhs.true37.i
  %ip44.i = getelementptr %struct.ebt_mac_wormhash, ptr %add.ptr5, i32 0, i32 2, i32 %i.190.i, i32 1
  %65 = ptrtoint ptr %ip44.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ip44.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp45.i = icmp eq i32 %66, 0
  br i1 %cmp45.i, label %if.then43.i.if.end22_crit_edge, label %if.then43.i.for.inc50.i_crit_edge

if.then43.i.for.inc50.i_crit_edge:                ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc50.i

if.then43.i.if.end22_crit_edge:                   ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

for.inc50.i:                                      ; preds = %if.then43.i.for.inc50.i_crit_edge, %land.lhs.true37.i.for.inc50.i_crit_edge, %for.body29.i.for.inc50.i_crit_edge
  %inc51.i = add i32 %i.190.i, 1
  %exitcond96.not.i = icmp eq i32 %inc51.i, %54
  br i1 %exitcond96.not.i, label %for.inc50.i.cleanup_crit_edge, label %for.inc50.i.for.body29.i_crit_edge

for.inc50.i.for.body29.i_crit_edge:               ; preds = %for.inc50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body29.i

for.inc50.i.cleanup_crit_edge:                    ; preds = %for.inc50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else:                                          ; preds = %if.end
  br i1 %tobool.not.i, label %for.cond26.preheader.i85, label %for.cond.preheader.i81

for.cond.preheader.i81:                           ; preds = %if.else
  br i1 %cmp2789.i, label %for.body.lr.ph.i84, label %for.cond.preheader.i81.if.end22_crit_edge

for.cond.preheader.i81.if.end22_crit_edge:        ; preds = %for.cond.preheader.i81
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

for.body.lr.ph.i84:                               ; preds = %for.cond.preheader.i81
  %cmp.sroa.0.4.extract.trunc82.i82 = trunc i64 %cmp.sroa.0.6.insert.insert.i to i32
  %cmp.sroa.0.0.extract.shift.i83 = lshr i32 %48, 16
  br label %for.body.i93

for.cond26.preheader.i85:                         ; preds = %if.else
  br i1 %cmp2789.i, label %for.body29.lr.ph.i88, label %for.cond26.preheader.i85.if.end22_crit_edge

for.cond26.preheader.i85.if.end22_crit_edge:      ; preds = %for.cond26.preheader.i85
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

for.body29.lr.ph.i88:                             ; preds = %for.cond26.preheader.i85
  %cmp.sroa.0.4.extract.trunc.i86 = trunc i64 %cmp.sroa.0.6.insert.insert.i to i32
  %cmp.sroa.0.0.extract.shift79.i87 = lshr i32 %48, 16
  br label %for.body29.i108

for.body.i93:                                     ; preds = %for.inc.i103.for.body.i93_crit_edge, %for.body.lr.ph.i84
  %i.086.i89 = phi i32 [ %52, %for.body.lr.ph.i84 ], [ %inc.i101, %for.inc.i103.for.body.i93_crit_edge ]
  %arrayidx6.i90 = getelementptr %struct.ebt_mac_wormhash, ptr %add.ptr5, i32 0, i32 2, i32 %i.086.i89
  %arrayidx9.i91 = getelementptr [2 x i32], ptr %arrayidx6.i90, i32 0, i32 1
  %67 = ptrtoint ptr %arrayidx9.i91 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx9.i91, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %cmp.sroa.0.4.extract.trunc82.i82)
  %cmp10.i92 = icmp eq i32 %68, %cmp.sroa.0.4.extract.trunc82.i82
  br i1 %cmp10.i92, label %land.lhs.true.i95, label %for.body.i93.for.inc.i103_crit_edge

for.body.i93.for.inc.i103_crit_edge:              ; preds = %for.body.i93
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i103

land.lhs.true.i95:                                ; preds = %for.body.i93
  %69 = ptrtoint ptr %arrayidx6.i90 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx6.i90, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cmp.sroa.0.0.extract.shift.i83, i32 %70)
  %cmp15.i94 = icmp eq i32 %cmp.sroa.0.0.extract.shift.i83, %70
  br i1 %cmp15.i94, label %if.then17.i100, label %land.lhs.true.i95.for.inc.i103_crit_edge

land.lhs.true.i95.for.inc.i103_crit_edge:         ; preds = %land.lhs.true.i95
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i103

if.then17.i100:                                   ; preds = %land.lhs.true.i95
  %ip18.i96 = getelementptr %struct.ebt_mac_wormhash, ptr %add.ptr5, i32 0, i32 2, i32 %i.086.i89, i32 1
  %71 = ptrtoint ptr %ip18.i96 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ip18.i96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp19.i97 = icmp eq i32 %72, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %sip.0.ph)
  %cmp22.i98 = icmp eq i32 %72, %sip.0.ph
  %or.cond.i99 = or i1 %cmp19.i97, %cmp22.i98
  br i1 %or.cond.i99, label %if.then17.i100.cleanup_crit_edge, label %if.then17.i100.for.inc.i103_crit_edge

if.then17.i100.for.inc.i103_crit_edge:            ; preds = %if.then17.i100
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i103

if.then17.i100.cleanup_crit_edge:                 ; preds = %if.then17.i100
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.i103:                                     ; preds = %if.then17.i100.for.inc.i103_crit_edge, %land.lhs.true.i95.for.inc.i103_crit_edge, %for.body.i93.for.inc.i103_crit_edge
  %inc.i101 = add i32 %i.086.i89, 1
  %exitcond.not.i102 = icmp eq i32 %inc.i101, %54
  br i1 %exitcond.not.i102, label %for.inc.i103.if.end22_crit_edge, label %for.inc.i103.for.body.i93_crit_edge

for.inc.i103.for.body.i93_crit_edge:              ; preds = %for.inc.i103
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i93

for.inc.i103.if.end22_crit_edge:                  ; preds = %for.inc.i103
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

for.body29.i108:                                  ; preds = %for.inc50.i116.for.body29.i108_crit_edge, %for.body29.lr.ph.i88
  %i.190.i104 = phi i32 [ %52, %for.body29.lr.ph.i88 ], [ %inc51.i114, %for.inc50.i116.for.body29.i108_crit_edge ]
  %arrayidx31.i105 = getelementptr %struct.ebt_mac_wormhash, ptr %add.ptr5, i32 0, i32 2, i32 %i.190.i104
  %arrayidx34.i106 = getelementptr [2 x i32], ptr %arrayidx31.i105, i32 0, i32 1
  %73 = ptrtoint ptr %arrayidx34.i106 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx34.i106, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %cmp.sroa.0.4.extract.trunc.i86)
  %cmp35.i107 = icmp eq i32 %74, %cmp.sroa.0.4.extract.trunc.i86
  br i1 %cmp35.i107, label %land.lhs.true37.i110, label %for.body29.i108.for.inc50.i116_crit_edge

for.body29.i108.for.inc50.i116_crit_edge:         ; preds = %for.body29.i108
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc50.i116

land.lhs.true37.i110:                             ; preds = %for.body29.i108
  %75 = ptrtoint ptr %arrayidx31.i105 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx31.i105, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cmp.sroa.0.0.extract.shift79.i87, i32 %76)
  %cmp41.i109 = icmp eq i32 %cmp.sroa.0.0.extract.shift79.i87, %76
  br i1 %cmp41.i109, label %if.then43.i113, label %land.lhs.true37.i110.for.inc50.i116_crit_edge

land.lhs.true37.i110.for.inc50.i116_crit_edge:    ; preds = %land.lhs.true37.i110
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc50.i116

if.then43.i113:                                   ; preds = %land.lhs.true37.i110
  %ip44.i111 = getelementptr %struct.ebt_mac_wormhash, ptr %add.ptr5, i32 0, i32 2, i32 %i.190.i104, i32 1
  %77 = ptrtoint ptr %ip44.i111 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %ip44.i111, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp45.i112 = icmp eq i32 %78, 0
  br i1 %cmp45.i112, label %if.then43.i113.cleanup_crit_edge, label %if.then43.i113.for.inc50.i116_crit_edge

if.then43.i113.for.inc50.i116_crit_edge:          ; preds = %if.then43.i113
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc50.i116

if.then43.i113.cleanup_crit_edge:                 ; preds = %if.then43.i113
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc50.i116:                                   ; preds = %if.then43.i113.for.inc50.i116_crit_edge, %land.lhs.true37.i110.for.inc50.i116_crit_edge, %for.body29.i108.for.inc50.i116_crit_edge
  %inc51.i114 = add i32 %i.190.i104, 1
  %exitcond96.not.i115 = icmp eq i32 %inc51.i114, %54
  br i1 %exitcond96.not.i115, label %for.inc50.i116.if.end22_crit_edge, label %for.inc50.i116.for.body29.i108_crit_edge

for.inc50.i116.for.body29.i108_crit_edge:         ; preds = %for.inc50.i116
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body29.i108

for.inc50.i116.if.end22_crit_edge:                ; preds = %for.inc50.i116
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.end22:                                         ; preds = %for.inc50.i116.if.end22_crit_edge, %for.inc.i103.if.end22_crit_edge, %for.cond26.preheader.i85.if.end22_crit_edge, %for.cond.preheader.i81.if.end22_crit_edge, %if.then43.i.if.end22_crit_edge, %if.then17.i.if.end22_crit_edge, %entry.if.end22_crit_edge
  %tobool23.not = icmp eq ptr %spec.select, null
  br i1 %tobool23.not, label %if.end22.cleanup_crit_edge, label %if.then24

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then24:                                        ; preds = %if.end22
  %head.i.i120 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %79 = ptrtoint ptr %head.i.i120 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %head.i.i120, align 8
  %mac_header.i.i121 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %81 = ptrtoint ptr %mac_header.i.i121 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %mac_header.i.i121, align 2
  %conv.i.i122 = zext i16 %82 to i32
  %add.ptr.i.i123 = getelementptr i8, ptr %80, i32 %conv.i.i122
  %_iph.sroa.gep.i125 = getelementptr inbounds %struct.iphdr, ptr %_iph.i124, i32 0, i32 9
  %_arph.sroa.gep.i127 = getelementptr inbounds %struct.arphdr, ptr %_arph.i126, i32 0, i32 3
  %h_proto.i133 = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i123, i32 0, i32 2
  %83 = ptrtoint ptr %h_proto.i133 to i32
  call void @__asan_loadN_noabort(i32 %83, i32 2)
  %84 = load i16, ptr %h_proto.i133, align 1
  %85 = zext i16 %84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.11)
  switch i16 %84, label %if.then24.if.end30_crit_edge [
    i16 2048, label %if.then.i138
    i16 2054, label %if.then12.i155
  ]

if.then24.if.end30_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then.i138:                                     ; preds = %if.then24
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %_iph.i124) #6
  %len.i.i.i134 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %86 = call ptr @memset(ptr %_iph.i124, i32 255, i32 20)
  %87 = ptrtoint ptr %len.i.i.i134 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %len.i.i.i134, align 4
  %data_len.i.i.i135 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %89 = ptrtoint ptr %data_len.i.i.i135 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %data_len.i.i.i135, align 8
  %sub.i4.i.i136 = sub i32 %88, %90
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i4.i.i136)
  %cmp.not.i.i.i137 = icmp slt i32 %sub.i4.i.i136, 20
  br i1 %cmp.not.i.i.i137, label %if.end.i.i.i140, label %skb_header_pointer.exit.i147, !prof !38

if.end.i.i.i140:                                  ; preds = %if.then.i138
  %tobool2.not.i.i.i139 = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i.i139, label %if.end.i.i.i140.cleanup.thread.i148_crit_edge, label %lor.lhs.false.i.i.i143

if.end.i.i.i140.cleanup.thread.i148_crit_edge:    ; preds = %if.end.i.i.i140
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread.i148

lor.lhs.false.i.i.i143:                           ; preds = %if.end.i.i.i140
  %call.i.i.i141 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef 0, ptr noundef nonnull %_iph.i124, i32 noundef 20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i141)
  %cmp3.i.i.i142 = icmp slt i32 %call.i.i.i141, 0
  br i1 %cmp3.i.i.i142, label %lor.lhs.false.i.i.i143.cleanup.thread.i148_crit_edge, label %lor.lhs.false.i.i.i143.cleanup.i150_crit_edge

lor.lhs.false.i.i.i143.cleanup.i150_crit_edge:    ; preds = %lor.lhs.false.i.i.i143
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i150

lor.lhs.false.i.i.i143.cleanup.thread.i148_crit_edge: ; preds = %lor.lhs.false.i.i.i143
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread.i148

skb_header_pointer.exit.i147:                     ; preds = %if.then.i138
  %data.i.i144 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %91 = ptrtoint ptr %data.i.i144 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %data.i.i144, align 4
  %.sroa.gep109.i145 = getelementptr inbounds %struct.iphdr, ptr %92, i32 0, i32 9
  %cmp3.i146 = icmp eq ptr %92, null
  br i1 %cmp3.i146, label %skb_header_pointer.exit.i147.cleanup.thread.i148_crit_edge, label %skb_header_pointer.exit.i147.cleanup.i150_crit_edge

skb_header_pointer.exit.i147.cleanup.i150_crit_edge: ; preds = %skb_header_pointer.exit.i147
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i150

skb_header_pointer.exit.i147.cleanup.thread.i148_crit_edge: ; preds = %skb_header_pointer.exit.i147
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread.i148

cleanup.thread.i148:                              ; preds = %skb_header_pointer.exit.i147.cleanup.thread.i148_crit_edge, %lor.lhs.false.i.i.i143.cleanup.thread.i148_crit_edge, %if.end.i.i.i140.cleanup.thread.i148_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_iph.i124) #6
  br label %cleanup

cleanup.i150:                                     ; preds = %skb_header_pointer.exit.i147.cleanup.i150_crit_edge, %lor.lhs.false.i.i.i143.cleanup.i150_crit_edge
  %retval.0.i.i88.sroa.phi.i149 = phi ptr [ %.sroa.gep109.i145, %skb_header_pointer.exit.i147.cleanup.i150_crit_edge ], [ %_iph.sroa.gep.i125, %lor.lhs.false.i.i.i143.cleanup.i150_crit_edge ]
  %93 = ptrtoint ptr %retval.0.i.i88.sroa.phi.i149 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %retval.0.i.i88.sroa.phi.i149, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_iph.i124) #6
  br label %if.end30

if.then12.i155:                                   ; preds = %if.then24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_arph.i126) #6
  %95 = ptrtoint ptr %_arph.i126 to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 -1, ptr %_arph.i126, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i128) #6
  %96 = ptrtoint ptr %buf.i128 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 -1, ptr %buf.i128, align 4, !annotation !39
  %len.i.i53.i151 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %97 = ptrtoint ptr %len.i.i53.i151 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %len.i.i53.i151, align 4
  %data_len.i.i54.i152 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %99 = ptrtoint ptr %data_len.i.i54.i152 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %data_len.i.i54.i152, align 8
  %sub.i4.i55.i153 = sub i32 %98, %100
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i4.i55.i153)
  %cmp.not.i.i56.i154 = icmp slt i32 %sub.i4.i55.i153, 8
  br i1 %cmp.not.i.i56.i154, label %if.end.i.i60.i157, label %skb_header_pointer.exit66.i164, !prof !38

if.end.i.i60.i157:                                ; preds = %if.then12.i155
  %tobool2.not.i.i59.i156 = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i59.i156, label %if.end.i.i60.i157.cleanup30.thread.i185_crit_edge, label %lor.lhs.false.i.i64.i160

if.end.i.i60.i157.cleanup30.thread.i185_crit_edge: ; preds = %if.end.i.i60.i157
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup30.thread.i185

lor.lhs.false.i.i64.i160:                         ; preds = %if.end.i.i60.i157
  %call.i.i61.i158 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef 0, ptr noundef nonnull %_arph.i126, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i61.i158)
  %cmp3.i.i62.i159 = icmp slt i32 %call.i.i61.i158, 0
  br i1 %cmp3.i.i62.i159, label %lor.lhs.false.i.i64.i160.cleanup30.thread.i185_crit_edge, label %lor.lhs.false.i.i64.i160.lor.lhs.false.i168_crit_edge

lor.lhs.false.i.i64.i160.lor.lhs.false.i168_crit_edge: ; preds = %lor.lhs.false.i.i64.i160
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i168

lor.lhs.false.i.i64.i160.cleanup30.thread.i185_crit_edge: ; preds = %lor.lhs.false.i.i64.i160
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup30.thread.i185

skb_header_pointer.exit66.i164:                   ; preds = %if.then12.i155
  %data.i57.i161 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %101 = ptrtoint ptr %data.i57.i161 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %data.i57.i161, align 4
  %.sroa.gep.i162 = getelementptr inbounds %struct.arphdr, ptr %102, i32 0, i32 3
  %cmp14.i163 = icmp eq ptr %102, null
  br i1 %cmp14.i163, label %skb_header_pointer.exit66.i164.cleanup30.thread.i185_crit_edge, label %skb_header_pointer.exit66.i164.lor.lhs.false.i168_crit_edge

skb_header_pointer.exit66.i164.lor.lhs.false.i168_crit_edge: ; preds = %skb_header_pointer.exit66.i164
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i168

skb_header_pointer.exit66.i164.cleanup30.thread.i185_crit_edge: ; preds = %skb_header_pointer.exit66.i164
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup30.thread.i185

lor.lhs.false.i168:                               ; preds = %skb_header_pointer.exit66.i164.lor.lhs.false.i168_crit_edge, %lor.lhs.false.i.i64.i160.lor.lhs.false.i168_crit_edge
  %retval.0.i.i6598.i165 = phi ptr [ %102, %skb_header_pointer.exit66.i164.lor.lhs.false.i168_crit_edge ], [ %_arph.i126, %lor.lhs.false.i.i64.i160.lor.lhs.false.i168_crit_edge ]
  %retval.0.i.i6598.sroa.phi.i166 = phi ptr [ %.sroa.gep.i162, %skb_header_pointer.exit66.i164.lor.lhs.false.i168_crit_edge ], [ %_arph.sroa.gep.i127, %lor.lhs.false.i.i64.i160.lor.lhs.false.i168_crit_edge ]
  %103 = ptrtoint ptr %retval.0.i.i6598.sroa.phi.i166 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %retval.0.i.i6598.sroa.phi.i166, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %104)
  %cmp17.not.i167 = icmp eq i8 %104, 4
  br i1 %cmp17.not.i167, label %lor.lhs.false19.i171, label %lor.lhs.false.i168.cleanup30.thread.i185_crit_edge

lor.lhs.false.i168.cleanup30.thread.i185_crit_edge: ; preds = %lor.lhs.false.i168
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup30.thread.i185

lor.lhs.false19.i171:                             ; preds = %lor.lhs.false.i168
  %ar_hln.i169 = getelementptr inbounds %struct.arphdr, ptr %retval.0.i.i6598.i165, i32 0, i32 2
  %105 = ptrtoint ptr %ar_hln.i169 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %ar_hln.i169, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %106)
  %cmp21.not.i170 = icmp eq i8 %106, 6
  br i1 %cmp21.not.i170, label %if.end24.i175, label %lor.lhs.false19.i171.cleanup30.thread.i185_crit_edge

lor.lhs.false19.i171.cleanup30.thread.i185_crit_edge: ; preds = %lor.lhs.false19.i171
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup30.thread.i185

if.end24.i175:                                    ; preds = %lor.lhs.false19.i171
  %107 = ptrtoint ptr %len.i.i53.i151 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %len.i.i53.i151, align 4
  %109 = ptrtoint ptr %data_len.i.i54.i152 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %data_len.i.i54.i152, align 8
  %.neg108.i172 = add i32 %108, -24
  %sub.i4.i69.i173 = sub i32 %.neg108.i172, %110
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i4.i69.i173)
  %cmp.not.i.i70.i174 = icmp slt i32 %sub.i4.i69.i173, 4
  br i1 %cmp.not.i.i70.i174, label %if.end.i.i75.i177, label %skb_header_pointer.exit81.i184, !prof !38

if.end.i.i75.i177:                                ; preds = %if.end24.i175
  %tobool2.not.i.i74.i176 = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i74.i176, label %if.end.i.i75.i177.cleanup30.thread.i185_crit_edge, label %lor.lhs.false.i.i79.i180

if.end.i.i75.i177.cleanup30.thread.i185_crit_edge: ; preds = %if.end.i.i75.i177
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup30.thread.i185

lor.lhs.false.i.i79.i180:                         ; preds = %if.end.i.i75.i177
  %call.i.i76.i178 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef 24, ptr noundef nonnull %buf.i128, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i76.i178)
  %cmp3.i.i77.i179 = icmp slt i32 %call.i.i76.i178, 0
  br i1 %cmp3.i.i77.i179, label %lor.lhs.false.i.i79.i180.cleanup30.thread.i185_crit_edge, label %lor.lhs.false.i.i79.i180.cleanup30.i187_crit_edge

lor.lhs.false.i.i79.i180.cleanup30.i187_crit_edge: ; preds = %lor.lhs.false.i.i79.i180
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup30.i187

lor.lhs.false.i.i79.i180.cleanup30.thread.i185_crit_edge: ; preds = %lor.lhs.false.i.i79.i180
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup30.thread.i185

skb_header_pointer.exit81.i184:                   ; preds = %if.end24.i175
  %data.i71.i181 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %111 = ptrtoint ptr %data.i71.i181 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %data.i71.i181, align 4
  %add.ptr.i.i72.i182 = getelementptr i8, ptr %112, i32 24
  %cmp26.i183 = icmp eq ptr %add.ptr.i.i72.i182, null
  br i1 %cmp26.i183, label %skb_header_pointer.exit81.i184.cleanup30.thread.i185_crit_edge, label %skb_header_pointer.exit81.i184.cleanup30.i187_crit_edge

skb_header_pointer.exit81.i184.cleanup30.i187_crit_edge: ; preds = %skb_header_pointer.exit81.i184
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup30.i187

skb_header_pointer.exit81.i184.cleanup30.thread.i185_crit_edge: ; preds = %skb_header_pointer.exit81.i184
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup30.thread.i185

cleanup30.thread.i185:                            ; preds = %skb_header_pointer.exit81.i184.cleanup30.thread.i185_crit_edge, %lor.lhs.false.i.i79.i180.cleanup30.thread.i185_crit_edge, %if.end.i.i75.i177.cleanup30.thread.i185_crit_edge, %lor.lhs.false19.i171.cleanup30.thread.i185_crit_edge, %lor.lhs.false.i168.cleanup30.thread.i185_crit_edge, %skb_header_pointer.exit66.i164.cleanup30.thread.i185_crit_edge, %lor.lhs.false.i.i64.i160.cleanup30.thread.i185_crit_edge, %if.end.i.i60.i157.cleanup30.thread.i185_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i128) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_arph.i126) #6
  br label %cleanup

cleanup30.i187:                                   ; preds = %skb_header_pointer.exit81.i184.cleanup30.i187_crit_edge, %lor.lhs.false.i.i79.i180.cleanup30.i187_crit_edge
  %retval.0.i.i80105.i186 = phi ptr [ %add.ptr.i.i72.i182, %skb_header_pointer.exit81.i184.cleanup30.i187_crit_edge ], [ %buf.i128, %lor.lhs.false.i.i79.i180.cleanup30.i187_crit_edge ]
  %113 = ptrtoint ptr %retval.0.i.i80105.i186 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %retval.0.i.i80105.i186, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i128) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_arph.i126) #6
  br label %if.end30

if.end30:                                         ; preds = %cleanup30.i187, %cleanup.i150, %if.then24.if.end30_crit_edge
  %dip.0.ph = phi i32 [ %94, %cleanup.i150 ], [ %114, %cleanup30.i187 ], [ 0, %if.then24.if.end30_crit_edge ]
  %bitmask31 = getelementptr inbounds %struct.ebt_among_info, ptr %2, i32 0, i32 2
  %115 = ptrtoint ptr %bitmask31 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %bitmask31, align 4
  %and32 = and i32 %116, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  %arrayidx.i189 = getelementptr i8, ptr %add.ptr.i.i123, i32 5
  %117 = ptrtoint ptr %arrayidx.i189 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx.i189, align 1
  %conv.i190 = zext i8 %118 to i32
  %119 = ptrtoint ptr %add.ptr.i.i123 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %add.ptr.i.i123, align 4
  %cmp.sroa.0.2.insert.ext.i191 = zext i32 %120 to i64
  %cmp.sroa.0.2.insert.shift.i192 = shl nuw nsw i64 %cmp.sroa.0.2.insert.ext.i191, 16
  %add.ptr.i.i193 = getelementptr i8, ptr %add.ptr.i.i123, i32 4
  %121 = ptrtoint ptr %add.ptr.i.i193 to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %add.ptr.i.i193, align 2
  %cmp.sroa.0.6.insert.ext.i194 = zext i16 %122 to i64
  %cmp.sroa.0.6.insert.insert.i195 = or i64 %cmp.sroa.0.2.insert.shift.i192, %cmp.sroa.0.6.insert.ext.i194
  %arrayidx1.i196 = getelementptr [257 x i32], ptr %spec.select, i32 0, i32 %conv.i190
  %123 = ptrtoint ptr %arrayidx1.i196 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx1.i196, align 4
  %add.i197 = add nuw nsw i32 %conv.i190, 1
  %arrayidx3.i198 = getelementptr [257 x i32], ptr %spec.select, i32 0, i32 %add.i197
  %125 = ptrtoint ptr %arrayidx3.i198 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx3.i198, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dip.0.ph)
  %tobool.not.i199 = icmp eq i32 %dip.0.ph, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %124, i32 %126)
  %cmp2789.i200 = icmp slt i32 %124, %126
  br i1 %tobool33.not, label %if.then34, label %if.else38

if.then34:                                        ; preds = %if.end30
  br i1 %tobool.not.i199, label %for.cond26.preheader.i205, label %for.cond.preheader.i201

for.cond.preheader.i201:                          ; preds = %if.then34
  br i1 %cmp2789.i200, label %for.body.lr.ph.i204, label %for.cond.preheader.i201.cleanup_crit_edge

for.cond.preheader.i201.cleanup_crit_edge:        ; preds = %for.cond.preheader.i201
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph.i204:                              ; preds = %for.cond.preheader.i201
  %cmp.sroa.0.4.extract.trunc82.i202 = trunc i64 %cmp.sroa.0.6.insert.insert.i195 to i32
  %cmp.sroa.0.0.extract.shift.i203 = lshr i32 %120, 16
  br label %for.body.i213

for.cond26.preheader.i205:                        ; preds = %if.then34
  br i1 %cmp2789.i200, label %for.body29.lr.ph.i208, label %for.cond26.preheader.i205.cleanup_crit_edge

for.cond26.preheader.i205.cleanup_crit_edge:      ; preds = %for.cond26.preheader.i205
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body29.lr.ph.i208:                            ; preds = %for.cond26.preheader.i205
  %cmp.sroa.0.4.extract.trunc.i206 = trunc i64 %cmp.sroa.0.6.insert.insert.i195 to i32
  %cmp.sroa.0.0.extract.shift79.i207 = lshr i32 %120, 16
  br label %for.body29.i228

for.body.i213:                                    ; preds = %for.inc.i223.for.body.i213_crit_edge, %for.body.lr.ph.i204
  %i.086.i209 = phi i32 [ %124, %for.body.lr.ph.i204 ], [ %inc.i221, %for.inc.i223.for.body.i213_crit_edge ]
  %arrayidx6.i210 = getelementptr %struct.ebt_mac_wormhash, ptr %spec.select, i32 0, i32 2, i32 %i.086.i209
  %arrayidx9.i211 = getelementptr [2 x i32], ptr %arrayidx6.i210, i32 0, i32 1
  %127 = ptrtoint ptr %arrayidx9.i211 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx9.i211, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %128, i32 %cmp.sroa.0.4.extract.trunc82.i202)
  %cmp10.i212 = icmp eq i32 %128, %cmp.sroa.0.4.extract.trunc82.i202
  br i1 %cmp10.i212, label %land.lhs.true.i215, label %for.body.i213.for.inc.i223_crit_edge

for.body.i213.for.inc.i223_crit_edge:             ; preds = %for.body.i213
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i223

land.lhs.true.i215:                               ; preds = %for.body.i213
  %129 = ptrtoint ptr %arrayidx6.i210 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx6.i210, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cmp.sroa.0.0.extract.shift.i203, i32 %130)
  %cmp15.i214 = icmp eq i32 %cmp.sroa.0.0.extract.shift.i203, %130
  br i1 %cmp15.i214, label %if.then17.i220, label %land.lhs.true.i215.for.inc.i223_crit_edge

land.lhs.true.i215.for.inc.i223_crit_edge:        ; preds = %land.lhs.true.i215
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i223

if.then17.i220:                                   ; preds = %land.lhs.true.i215
  %ip18.i216 = getelementptr %struct.ebt_mac_wormhash, ptr %spec.select, i32 0, i32 2, i32 %i.086.i209, i32 1
  %131 = ptrtoint ptr %ip18.i216 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %ip18.i216, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %cmp19.i217 = icmp eq i32 %132, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %132, i32 %dip.0.ph)
  %cmp22.i218 = icmp eq i32 %132, %dip.0.ph
  %or.cond.i219 = or i1 %cmp19.i217, %cmp22.i218
  br i1 %or.cond.i219, label %if.then17.i220.cleanup_crit_edge, label %if.then17.i220.for.inc.i223_crit_edge

if.then17.i220.for.inc.i223_crit_edge:            ; preds = %if.then17.i220
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i223

if.then17.i220.cleanup_crit_edge:                 ; preds = %if.then17.i220
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.i223:                                     ; preds = %if.then17.i220.for.inc.i223_crit_edge, %land.lhs.true.i215.for.inc.i223_crit_edge, %for.body.i213.for.inc.i223_crit_edge
  %inc.i221 = add i32 %i.086.i209, 1
  %exitcond.not.i222 = icmp eq i32 %inc.i221, %126
  br i1 %exitcond.not.i222, label %for.inc.i223.cleanup_crit_edge, label %for.inc.i223.for.body.i213_crit_edge

for.inc.i223.for.body.i213_crit_edge:             ; preds = %for.inc.i223
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i213

for.inc.i223.cleanup_crit_edge:                   ; preds = %for.inc.i223
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body29.i228:                                  ; preds = %for.inc50.i236.for.body29.i228_crit_edge, %for.body29.lr.ph.i208
  %i.190.i224 = phi i32 [ %124, %for.body29.lr.ph.i208 ], [ %inc51.i234, %for.inc50.i236.for.body29.i228_crit_edge ]
  %arrayidx31.i225 = getelementptr %struct.ebt_mac_wormhash, ptr %spec.select, i32 0, i32 2, i32 %i.190.i224
  %arrayidx34.i226 = getelementptr [2 x i32], ptr %arrayidx31.i225, i32 0, i32 1
  %133 = ptrtoint ptr %arrayidx34.i226 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %arrayidx34.i226, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %134, i32 %cmp.sroa.0.4.extract.trunc.i206)
  %cmp35.i227 = icmp eq i32 %134, %cmp.sroa.0.4.extract.trunc.i206
  br i1 %cmp35.i227, label %land.lhs.true37.i230, label %for.body29.i228.for.inc50.i236_crit_edge

for.body29.i228.for.inc50.i236_crit_edge:         ; preds = %for.body29.i228
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc50.i236

land.lhs.true37.i230:                             ; preds = %for.body29.i228
  %135 = ptrtoint ptr %arrayidx31.i225 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %arrayidx31.i225, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cmp.sroa.0.0.extract.shift79.i207, i32 %136)
  %cmp41.i229 = icmp eq i32 %cmp.sroa.0.0.extract.shift79.i207, %136
  br i1 %cmp41.i229, label %if.then43.i233, label %land.lhs.true37.i230.for.inc50.i236_crit_edge

land.lhs.true37.i230.for.inc50.i236_crit_edge:    ; preds = %land.lhs.true37.i230
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc50.i236

if.then43.i233:                                   ; preds = %land.lhs.true37.i230
  %ip44.i231 = getelementptr %struct.ebt_mac_wormhash, ptr %spec.select, i32 0, i32 2, i32 %i.190.i224, i32 1
  %137 = ptrtoint ptr %ip44.i231 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %ip44.i231, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %cmp45.i232 = icmp eq i32 %138, 0
  br i1 %cmp45.i232, label %if.then43.i233.cleanup_crit_edge, label %if.then43.i233.for.inc50.i236_crit_edge

if.then43.i233.for.inc50.i236_crit_edge:          ; preds = %if.then43.i233
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc50.i236

if.then43.i233.cleanup_crit_edge:                 ; preds = %if.then43.i233
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc50.i236:                                   ; preds = %if.then43.i233.for.inc50.i236_crit_edge, %land.lhs.true37.i230.for.inc50.i236_crit_edge, %for.body29.i228.for.inc50.i236_crit_edge
  %inc51.i234 = add i32 %i.190.i224, 1
  %exitcond96.not.i235 = icmp eq i32 %inc51.i234, %126
  br i1 %exitcond96.not.i235, label %for.inc50.i236.cleanup_crit_edge, label %for.inc50.i236.for.body29.i228_crit_edge

for.inc50.i236.for.body29.i228_crit_edge:         ; preds = %for.inc50.i236
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body29.i228

for.inc50.i236.cleanup_crit_edge:                 ; preds = %for.inc50.i236
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else38:                                        ; preds = %if.end30
  br i1 %tobool.not.i199, label %for.cond26.preheader.i256, label %for.cond.preheader.i252

for.cond.preheader.i252:                          ; preds = %if.else38
  br i1 %cmp2789.i200, label %for.body.lr.ph.i255, label %for.cond.preheader.i252.cleanup_crit_edge

for.cond.preheader.i252.cleanup_crit_edge:        ; preds = %for.cond.preheader.i252
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph.i255:                              ; preds = %for.cond.preheader.i252
  %cmp.sroa.0.4.extract.trunc82.i253 = trunc i64 %cmp.sroa.0.6.insert.insert.i195 to i32
  %cmp.sroa.0.0.extract.shift.i254 = lshr i32 %120, 16
  br label %for.body.i264

for.cond26.preheader.i256:                        ; preds = %if.else38
  br i1 %cmp2789.i200, label %for.body29.lr.ph.i259, label %for.cond26.preheader.i256.cleanup_crit_edge

for.cond26.preheader.i256.cleanup_crit_edge:      ; preds = %for.cond26.preheader.i256
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body29.lr.ph.i259:                            ; preds = %for.cond26.preheader.i256
  %cmp.sroa.0.4.extract.trunc.i257 = trunc i64 %cmp.sroa.0.6.insert.insert.i195 to i32
  %cmp.sroa.0.0.extract.shift79.i258 = lshr i32 %120, 16
  br label %for.body29.i279

for.body.i264:                                    ; preds = %for.inc.i274.for.body.i264_crit_edge, %for.body.lr.ph.i255
  %i.086.i260 = phi i32 [ %124, %for.body.lr.ph.i255 ], [ %inc.i272, %for.inc.i274.for.body.i264_crit_edge ]
  %arrayidx6.i261 = getelementptr %struct.ebt_mac_wormhash, ptr %spec.select, i32 0, i32 2, i32 %i.086.i260
  %arrayidx9.i262 = getelementptr [2 x i32], ptr %arrayidx6.i261, i32 0, i32 1
  %139 = ptrtoint ptr %arrayidx9.i262 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx9.i262, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %140, i32 %cmp.sroa.0.4.extract.trunc82.i253)
  %cmp10.i263 = icmp eq i32 %140, %cmp.sroa.0.4.extract.trunc82.i253
  br i1 %cmp10.i263, label %land.lhs.true.i266, label %for.body.i264.for.inc.i274_crit_edge

for.body.i264.for.inc.i274_crit_edge:             ; preds = %for.body.i264
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i274

land.lhs.true.i266:                               ; preds = %for.body.i264
  %141 = ptrtoint ptr %arrayidx6.i261 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %arrayidx6.i261, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cmp.sroa.0.0.extract.shift.i254, i32 %142)
  %cmp15.i265 = icmp eq i32 %cmp.sroa.0.0.extract.shift.i254, %142
  br i1 %cmp15.i265, label %if.then17.i271, label %land.lhs.true.i266.for.inc.i274_crit_edge

land.lhs.true.i266.for.inc.i274_crit_edge:        ; preds = %land.lhs.true.i266
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i274

if.then17.i271:                                   ; preds = %land.lhs.true.i266
  %ip18.i267 = getelementptr %struct.ebt_mac_wormhash, ptr %spec.select, i32 0, i32 2, i32 %i.086.i260, i32 1
  %143 = ptrtoint ptr %ip18.i267 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %ip18.i267, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %cmp19.i268 = icmp eq i32 %144, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %144, i32 %dip.0.ph)
  %cmp22.i269 = icmp eq i32 %144, %dip.0.ph
  %or.cond.i270 = or i1 %cmp19.i268, %cmp22.i269
  br i1 %or.cond.i270, label %if.then17.i271.cleanup_crit_edge, label %if.then17.i271.for.inc.i274_crit_edge

if.then17.i271.for.inc.i274_crit_edge:            ; preds = %if.then17.i271
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i274

if.then17.i271.cleanup_crit_edge:                 ; preds = %if.then17.i271
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.i274:                                     ; preds = %if.then17.i271.for.inc.i274_crit_edge, %land.lhs.true.i266.for.inc.i274_crit_edge, %for.body.i264.for.inc.i274_crit_edge
  %inc.i272 = add i32 %i.086.i260, 1
  %exitcond.not.i273 = icmp eq i32 %inc.i272, %126
  br i1 %exitcond.not.i273, label %for.inc.i274.cleanup_crit_edge, label %for.inc.i274.for.body.i264_crit_edge

for.inc.i274.for.body.i264_crit_edge:             ; preds = %for.inc.i274
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i264

for.inc.i274.cleanup_crit_edge:                   ; preds = %for.inc.i274
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body29.i279:                                  ; preds = %for.inc50.i287.for.body29.i279_crit_edge, %for.body29.lr.ph.i259
  %i.190.i275 = phi i32 [ %124, %for.body29.lr.ph.i259 ], [ %inc51.i285, %for.inc50.i287.for.body29.i279_crit_edge ]
  %arrayidx31.i276 = getelementptr %struct.ebt_mac_wormhash, ptr %spec.select, i32 0, i32 2, i32 %i.190.i275
  %arrayidx34.i277 = getelementptr [2 x i32], ptr %arrayidx31.i276, i32 0, i32 1
  %145 = ptrtoint ptr %arrayidx34.i277 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %arrayidx34.i277, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %146, i32 %cmp.sroa.0.4.extract.trunc.i257)
  %cmp35.i278 = icmp eq i32 %146, %cmp.sroa.0.4.extract.trunc.i257
  br i1 %cmp35.i278, label %land.lhs.true37.i281, label %for.body29.i279.for.inc50.i287_crit_edge

for.body29.i279.for.inc50.i287_crit_edge:         ; preds = %for.body29.i279
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc50.i287

land.lhs.true37.i281:                             ; preds = %for.body29.i279
  %147 = ptrtoint ptr %arrayidx31.i276 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %arrayidx31.i276, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cmp.sroa.0.0.extract.shift79.i258, i32 %148)
  %cmp41.i280 = icmp eq i32 %cmp.sroa.0.0.extract.shift79.i258, %148
  br i1 %cmp41.i280, label %if.then43.i284, label %land.lhs.true37.i281.for.inc50.i287_crit_edge

land.lhs.true37.i281.for.inc50.i287_crit_edge:    ; preds = %land.lhs.true37.i281
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc50.i287

if.then43.i284:                                   ; preds = %land.lhs.true37.i281
  %ip44.i282 = getelementptr %struct.ebt_mac_wormhash, ptr %spec.select, i32 0, i32 2, i32 %i.190.i275, i32 1
  %149 = ptrtoint ptr %ip44.i282 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %ip44.i282, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %cmp45.i283 = icmp eq i32 %150, 0
  br i1 %cmp45.i283, label %if.then43.i284.cleanup_crit_edge, label %if.then43.i284.for.inc50.i287_crit_edge

if.then43.i284.for.inc50.i287_crit_edge:          ; preds = %if.then43.i284
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc50.i287

if.then43.i284.cleanup_crit_edge:                 ; preds = %if.then43.i284
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc50.i287:                                   ; preds = %if.then43.i284.for.inc50.i287_crit_edge, %land.lhs.true37.i281.for.inc50.i287_crit_edge, %for.body29.i279.for.inc50.i287_crit_edge
  %inc51.i285 = add i32 %i.190.i275, 1
  %exitcond96.not.i286 = icmp eq i32 %inc51.i285, %126
  br i1 %exitcond96.not.i286, label %for.inc50.i287.cleanup_crit_edge, label %for.inc50.i287.for.body29.i279_crit_edge

for.inc50.i287.for.body29.i279_crit_edge:         ; preds = %for.inc50.i287
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body29.i279

for.inc50.i287.cleanup_crit_edge:                 ; preds = %for.inc50.i287
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc50.i287.cleanup_crit_edge, %if.then43.i284.cleanup_crit_edge, %for.inc.i274.cleanup_crit_edge, %if.then17.i271.cleanup_crit_edge, %for.cond26.preheader.i256.cleanup_crit_edge, %for.cond.preheader.i252.cleanup_crit_edge, %for.inc50.i236.cleanup_crit_edge, %if.then43.i233.cleanup_crit_edge, %for.inc.i223.cleanup_crit_edge, %if.then17.i220.cleanup_crit_edge, %for.cond26.preheader.i205.cleanup_crit_edge, %for.cond.preheader.i201.cleanup_crit_edge, %cleanup30.thread.i185, %cleanup.thread.i148, %if.end22.cleanup_crit_edge, %if.then43.i113.cleanup_crit_edge, %if.then17.i100.cleanup_crit_edge, %for.inc50.i.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %for.cond26.preheader.i.cleanup_crit_edge, %for.cond.preheader.i.cleanup_crit_edge, %cleanup30.thread.i, %cleanup.thread.i
  %retval.0 = phi i1 [ false, %cleanup.thread.i ], [ false, %cleanup30.thread.i ], [ false, %cleanup.thread.i148 ], [ false, %cleanup30.thread.i185 ], [ true, %if.end22.cleanup_crit_edge ], [ false, %for.cond26.preheader.i.cleanup_crit_edge ], [ false, %for.cond.preheader.i.cleanup_crit_edge ], [ false, %for.cond26.preheader.i205.cleanup_crit_edge ], [ false, %for.cond.preheader.i201.cleanup_crit_edge ], [ true, %for.cond26.preheader.i256.cleanup_crit_edge ], [ true, %for.cond.preheader.i252.cleanup_crit_edge ], [ false, %for.inc50.i236.cleanup_crit_edge ], [ true, %if.then43.i233.cleanup_crit_edge ], [ false, %for.inc.i223.cleanup_crit_edge ], [ true, %if.then17.i220.cleanup_crit_edge ], [ true, %for.inc50.i287.cleanup_crit_edge ], [ false, %if.then43.i284.cleanup_crit_edge ], [ true, %for.inc.i274.cleanup_crit_edge ], [ false, %if.then17.i271.cleanup_crit_edge ], [ false, %for.inc50.i.cleanup_crit_edge ], [ false, %for.inc.i.cleanup_crit_edge ], [ false, %if.then43.i113.cleanup_crit_edge ], [ false, %if.then17.i100.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ebt_among_mt_check(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %match_size = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %match_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %match_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %3)
  %cmp = icmp ult i32 %3, 12
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %if.end.lor.lhs.false_crit_edge, label %if.end.i

if.end.lor.lhs.false_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %5)
  %cmp1.i = icmp slt i32 %5, 12
  %rem.i = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp ne i32 %rem.i, 0
  %or.cond.i.not = or i1 %cmp1.i, %tobool.not.i
  %add.i = add nuw i32 %5, 1032
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %3)
  %cmp4.i = icmp ugt i32 %add.i, %3
  %or.cond = select i1 %or.cond.i.not, i1 true, i1 %cmp4.i
  br i1 %or.cond, label %if.end.i.cleanup_crit_edge, label %if.end.i.lor.lhs.false_crit_edge

if.end.i.lor.lhs.false_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end.i.lor.lhs.false_crit_edge, %if.end.lor.lhs.false_crit_edge
  %wh_src_ofs = getelementptr inbounds %struct.ebt_among_info, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %wh_src_ofs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wh_src_ofs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i149 = icmp eq i32 %7, 0
  br i1 %cmp.i149, label %lor.lhs.false.if.end6_crit_edge, label %if.end.i154

lor.lhs.false.if.end6_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.end.i154:                                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %7)
  %cmp1.i150 = icmp slt i32 %7, 12
  %rem.i151 = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i151)
  %tobool.not.i152 = icmp ne i32 %rem.i151, 0
  %or.cond.i153.not = or i1 %cmp1.i150, %tobool.not.i152
  %add.i155 = add nuw i32 %7, 1032
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i155, i32 %3)
  %cmp4.i156 = icmp ugt i32 %add.i155, %3
  %or.cond189 = select i1 %or.cond.i153.not, i1 true, i1 %cmp4.i156
  br i1 %or.cond189, label %if.end.i154.cleanup_crit_edge, label %if.end.i154.if.end6_crit_edge

if.end.i154.if.end6_crit_edge:                    ; preds = %if.end.i154
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.end.i154.cleanup_crit_edge:                    ; preds = %if.end.i154
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end.i154.if.end6_crit_edge, %lor.lhs.false.if.end6_crit_edge
  %add.ptr9 = getelementptr i8, ptr %1, i32 %5
  %spec.select = select i1 %cmp.i, ptr null, ptr %add.ptr9
  %tobool.not.i160 = icmp eq ptr %spec.select, null
  br i1 %tobool.not.i160, label %if.end6.cond.end16_crit_edge, label %poolsize_invalid.exit

if.end6.cond.end16_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end16

poolsize_invalid.exit:                            ; preds = %if.end6
  %poolsize.i = getelementptr inbounds %struct.ebt_mac_wormhash, ptr %spec.select, i32 0, i32 1
  %8 = ptrtoint ptr %poolsize.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %poolsize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 178956969, i32 %9)
  %cmp.i161 = icmp ugt i32 %9, 178956969
  br i1 %cmp.i161, label %poolsize_invalid.exit.cleanup_crit_edge, label %cond.true14

poolsize_invalid.exit.cleanup_crit_edge:          ; preds = %poolsize_invalid.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.true14:                                      ; preds = %poolsize_invalid.exit
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %poolsize.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %poolsize.i, align 4
  %mul = mul i32 %11, 12
  %phi.bo = add i32 %mul, 1044
  br label %cond.end16

cond.end16:                                       ; preds = %cond.true14, %if.end6.cond.end16_crit_edge
  %cond17 = phi i32 [ %phi.bo, %cond.true14 ], [ 12, %if.end6.cond.end16_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond17, i32 %3)
  %cmp20 = icmp ugt i32 %cond17, %3
  br i1 %cmp20, label %cond.end16.cleanup_crit_edge, label %if.end22

cond.end16.cleanup_crit_edge:                     ; preds = %cond.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22:                                         ; preds = %cond.end16
  %add.ptr27 = getelementptr i8, ptr %1, i32 %7
  %spec.select148 = select i1 %cmp.i149, ptr null, ptr %add.ptr27
  %tobool.not.i162 = icmp eq ptr %spec.select148, null
  br i1 %tobool.not.i162, label %if.end33, label %poolsize_invalid.exit166

poolsize_invalid.exit166:                         ; preds = %if.end22
  %poolsize.i163 = getelementptr inbounds %struct.ebt_mac_wormhash, ptr %spec.select148, i32 0, i32 1
  %12 = ptrtoint ptr %poolsize.i163 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %poolsize.i163, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 178956969, i32 %13)
  %cmp.i164 = icmp ugt i32 %13, 178956969
  br i1 %cmp.i164, label %poolsize_invalid.exit166.cleanup_crit_edge, label %if.end33.thread

poolsize_invalid.exit166.cleanup_crit_edge:       ; preds = %poolsize_invalid.exit166
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end33:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp36 = icmp ult i32 %7, %5
  br i1 %cmp36, label %if.end33.wormhash_sizes_valid.exit_crit_edge, label %if.end33.if.else_crit_edge

if.end33.if.else_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.end33.wormhash_sizes_valid.exit_crit_edge:     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %wormhash_sizes_valid.exit

if.end33.thread:                                  ; preds = %poolsize_invalid.exit166
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp36188 = icmp ult i32 %7, %5
  br i1 %cmp36188, label %cond.true.i, label %if.end33.thread.if.else_crit_edge

if.end33.thread.if.else_crit_edge:                ; preds = %if.end33.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

cond.true.i:                                      ; preds = %if.end33.thread
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %poolsize.i163 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %poolsize.i163, align 4
  %mul.i = mul i32 %15, 12
  %add.i169 = add i32 %mul.i, 1032
  br label %wormhash_sizes_valid.exit

wormhash_sizes_valid.exit:                        ; preds = %cond.true.i, %if.end33.wormhash_sizes_valid.exit_crit_edge
  %cond.i = phi i32 [ %add.i169, %cond.true.i ], [ 0, %if.end33.wormhash_sizes_valid.exit_crit_edge ]
  %spec.store.select.i = select i1 %cmp.i149, i32 12, i32 %7
  %add1.i = add i32 %cond.i, %spec.store.select.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i, i32 %5)
  %cmp2.i = icmp eq i32 %add1.i, %5
  br i1 %cmp2.i, label %wormhash_sizes_valid.exit.if.end48_crit_edge, label %wormhash_sizes_valid.exit.cleanup_crit_edge

wormhash_sizes_valid.exit.cleanup_crit_edge:      ; preds = %wormhash_sizes_valid.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

wormhash_sizes_valid.exit.if.end48_crit_edge:     ; preds = %wormhash_sizes_valid.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.else:                                          ; preds = %if.end33.thread.if.else_crit_edge, %if.end33.if.else_crit_edge
  br i1 %tobool.not.i160, label %if.else.wormhash_sizes_valid.exit181_crit_edge, label %cond.true.i175

if.else.wormhash_sizes_valid.exit181_crit_edge:   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %wormhash_sizes_valid.exit181

cond.true.i175:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %poolsize.i172 = getelementptr inbounds %struct.ebt_mac_wormhash, ptr %spec.select, i32 0, i32 1
  %16 = ptrtoint ptr %poolsize.i172 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %poolsize.i172, align 4
  %mul.i173 = mul i32 %17, 12
  %add.i174 = add i32 %mul.i173, 1032
  br label %wormhash_sizes_valid.exit181

wormhash_sizes_valid.exit181:                     ; preds = %cond.true.i175, %if.else.wormhash_sizes_valid.exit181_crit_edge
  %cond.i176 = phi i32 [ %add.i174, %cond.true.i175 ], [ 0, %if.else.wormhash_sizes_valid.exit181_crit_edge ]
  %spec.store.select.i178 = select i1 %cmp.i, i32 12, i32 %5
  %add1.i179 = add i32 %cond.i176, %spec.store.select.i178
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i179, i32 %7)
  %cmp2.i180 = icmp eq i32 %add1.i179, %7
  br i1 %cmp2.i180, label %wormhash_sizes_valid.exit181.if.end48_crit_edge, label %wormhash_sizes_valid.exit181.cleanup_crit_edge

wormhash_sizes_valid.exit181.cleanup_crit_edge:   ; preds = %wormhash_sizes_valid.exit181
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

wormhash_sizes_valid.exit181.if.end48_crit_edge:  ; preds = %wormhash_sizes_valid.exit181
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.end48:                                         ; preds = %wormhash_sizes_valid.exit181.if.end48_crit_edge, %wormhash_sizes_valid.exit.if.end48_crit_edge
  br i1 %tobool.not.i162, label %if.end48.cond.end55_crit_edge, label %cond.true50

if.end48.cond.end55_crit_edge:                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end55

cond.true50:                                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  %poolsize51 = getelementptr inbounds %struct.ebt_mac_wormhash, ptr %spec.select148, i32 0, i32 1
  %18 = ptrtoint ptr %poolsize51 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %poolsize51, align 4
  %mul52 = mul i32 %19, 12
  %add53 = add i32 %mul52, 1032
  br label %cond.end55

cond.end55:                                       ; preds = %cond.true50, %if.end48.cond.end55_crit_edge
  %cond56 = phi i32 [ %add53, %cond.true50 ], [ 0, %if.end48.cond.end55_crit_edge ]
  %add57 = add i32 %cond56, %cond17
  %add59 = add i32 %add57, 7
  %and = and i32 %add59, -8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %and)
  %cmp60.not = icmp eq i32 %3, %and
  br i1 %cmp60.not, label %if.end71, label %if.then61

if.then61:                                        ; preds = %cond.end55
  %call62 = tail call i32 @___ratelimit(ptr noundef nonnull @ebt_among_mt_check._rs, ptr noundef nonnull @__func__.ebt_among_mt_check) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.then61.cleanup_crit_edge, label %do.end

if.then61.cleanup_crit_edge:                      ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %match_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %match_size, align 4
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %21, i32 noundef %add57, i32 noundef %and) #9
  br label %cleanup

if.end71:                                         ; preds = %cond.end55
  br i1 %tobool.not.i160, label %if.end71.if.end85_crit_edge, label %land.lhs.true

if.end71.if.end85_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

land.lhs.true:                                    ; preds = %if.end71
  %call73 = tail call fastcc i32 @ebt_mac_wormhash_check_integrity(ptr noundef nonnull %spec.select)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %land.lhs.true.if.end85_crit_edge, label %if.then75

land.lhs.true.if.end85_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

if.then75:                                        ; preds = %land.lhs.true
  %call76 = tail call i32 @___ratelimit(ptr noundef nonnull @ebt_among_mt_check._rs.3, ptr noundef nonnull @__func__.ebt_among_mt_check) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.then75.cleanup_crit_edge, label %do.end81

if.then75.cleanup_crit_edge:                      ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end81:                                         ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #8
  %sub = sub i32 0, %call73
  %call83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %sub) #9
  br label %cleanup

if.end85:                                         ; preds = %land.lhs.true.if.end85_crit_edge, %if.end71.if.end85_crit_edge
  br i1 %tobool.not.i162, label %if.end85.cleanup_crit_edge, label %land.lhs.true87

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true87:                                  ; preds = %if.end85
  %call88 = tail call fastcc i32 @ebt_mac_wormhash_check_integrity(ptr noundef nonnull %spec.select148)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %land.lhs.true87.cleanup_crit_edge, label %if.then90

land.lhs.true87.cleanup_crit_edge:                ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then90:                                        ; preds = %land.lhs.true87
  %call91 = tail call i32 @___ratelimit(ptr noundef nonnull @ebt_among_mt_check._rs.7, ptr noundef nonnull @__func__.ebt_among_mt_check) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.then90.cleanup_crit_edge, label %do.end96

if.then90.cleanup_crit_edge:                      ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end96:                                         ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #8
  %sub98 = sub i32 0, %call88
  %call99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %sub98) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end96, %if.then90.cleanup_crit_edge, %land.lhs.true87.cleanup_crit_edge, %if.end85.cleanup_crit_edge, %do.end81, %if.then75.cleanup_crit_edge, %do.end, %if.then61.cleanup_crit_edge, %wormhash_sizes_valid.exit181.cleanup_crit_edge, %wormhash_sizes_valid.exit.cleanup_crit_edge, %poolsize_invalid.exit166.cleanup_crit_edge, %cond.end16.cleanup_crit_edge, %poolsize_invalid.exit.cleanup_crit_edge, %if.end.i154.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %poolsize_invalid.exit.cleanup_crit_edge ], [ -22, %cond.end16.cleanup_crit_edge ], [ -22, %poolsize_invalid.exit166.cleanup_crit_edge ], [ -22, %wormhash_sizes_valid.exit.cleanup_crit_edge ], [ -22, %wormhash_sizes_valid.exit181.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %if.then61.cleanup_crit_edge ], [ -22, %do.end81 ], [ -22, %if.then75.cleanup_crit_edge ], [ -22, %do.end96 ], [ -22, %if.then90.cleanup_crit_edge ], [ 0, %land.lhs.true87.cleanup_crit_edge ], [ 0, %if.end85.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %if.end.i154.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ebt_mac_wormhash_check_integrity(ptr nocapture noundef readonly %wh) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %poolsize = getelementptr inbounds %struct.ebt_mac_wormhash, ptr %wh, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %if.end9.for.cond_crit_edge, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add, %if.end9.for.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %i.0)
  %exitcond.not = icmp eq i32 %i.0, 256
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr [257 x i32], ptr %wh, i32 0, i32 %i.0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add nuw nsw i32 %i.0, 1
  %arrayidx2 = getelementptr [257 x i32], ptr %wh, i32 0, i32 %add
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp3 = icmp sgt i32 %1, %3
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %sub = sub nuw nsw i32 -256, %i.0
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp6 = icmp slt i32 %1, 0
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %sub8 = sub nuw nsw i32 -512, %i.0
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %4 = ptrtoint ptr %poolsize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %poolsize, align 4
  %cmp12 = icmp sgt i32 %1, %5
  br i1 %cmp12, label %if.then13, label %if.end9.for.cond_crit_edge

if.end9.for.cond_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %sub14 = sub nuw nsw i32 -768, %i.0
  br label %cleanup

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx17 = getelementptr [257 x i32], ptr %wh, i32 0, i32 256
  %6 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx17, align 4
  %8 = ptrtoint ptr %poolsize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %poolsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp19 = icmp sgt i32 %7, %9
  %. = select i1 %cmp19, i32 -3072, i32 0
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then13, %if.then7, %if.then
  %retval.0 = phi i32 [ %sub, %if.then ], [ %sub8, %if.then7 ], [ %sub14, %if.then13 ], [ %., %for.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !14, !15, !16, !17, !18, !19, !21, !22, !23, !24, !26, !27, !28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @__initcall__kmod_ebt_among__476_278_ebt_among_init6, !1, !"__initcall__kmod_ebt_among__476_278_ebt_among_init6", i1 false, i1 false}
!1 = !{!"../net/bridge/netfilter/ebt_among.c", i32 278, i32 1}
!2 = !{ptr @__exitcall_ebt_among_fini, !3, !"__exitcall_ebt_among_fini", i1 false, i1 false}
!3 = !{!"../net/bridge/netfilter/ebt_among.c", i32 279, i32 1}
!4 = !{ptr @__UNIQUE_ID_description477, !5, !"__UNIQUE_ID_description477", i1 false, i1 false}
!5 = !{!"../net/bridge/netfilter/ebt_among.c", i32 280, i32 1}
!6 = !{ptr @__UNIQUE_ID_file478, !7, !"__UNIQUE_ID_file478", i1 false, i1 false}
!7 = !{!"../net/bridge/netfilter/ebt_among.c", i32 281, i32 1}
!8 = !{ptr @__UNIQUE_ID_license479, !7, !"__UNIQUE_ID_license479", i1 false, i1 false}
!9 = !{ptr @ebt_among_mt_reg, !10, !"ebt_among_mt_reg", i1 false, i1 false}
!10 = !{!"../net/bridge/netfilter/ebt_among.c", i32 258, i32 24}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/bridge/netfilter/ebt_among.c", i32 242, i32 3}
!13 = !{ptr @ebt_among_mt_check._rs, !12, !"_rs", i1 false, i1 false}
!14 = !{ptr @__func__.ebt_among_mt_check, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @ebt_among_mt_check._entry, !12, !"_entry", i1 false, i1 false}
!18 = !{ptr @ebt_among_mt_check._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @ebt_among_mt_check._rs.3, !20, !"_rs", i1 false, i1 false}
!20 = !{!"../net/bridge/netfilter/ebt_among.c", i32 248, i32 3}
!21 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ebt_among_mt_check._entry.4, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @ebt_among_mt_check._entry_ptr.6, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @ebt_among_mt_check._rs.7, !25, !"_rs", i1 false, i1 false}
!25 = !{!"../net/bridge/netfilter/ebt_among.c", i32 252, i32 3}
!26 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @ebt_among_mt_check._entry.8, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @ebt_among_mt_check._entry_ptr.10, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{!"branch_weights", i32 1, i32 2000}
!39 = !{!"auto-init"}
