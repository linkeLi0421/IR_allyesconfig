; ModuleID = '/llk/IR_all_yes/net/sched/em_text.c_pt.bc'
source_filename = "../net/sched/em_text.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tcf_ematch_ops = type { i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.tcf_em_text = type { [16 x i8], i16, i16, i16, i8, i8 }
%struct.text_match = type { i16, i16, i8, i8, ptr }
%struct.tcf_ematch = type { ptr, i32, i32, i16, i16, ptr }
%struct.sk_buff = type { %union.anon.15, %union.anon.18, %union.anon.19, [48 x i8], %union.anon.20, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.22, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { ptr, ptr, %union.anon.17 }
%union.anon.17 = type { ptr }
%union.anon.18 = type { ptr }
%union.anon.19 = type { i64 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { i32, ptr }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.24, i32, i32, i32, i16, i16, %union.anon.26, i32, %union.anon.27, %union.anon.28, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.24 = type { i32 }
%union.anon.26 = type { i32 }
%union.anon.27 = type { i32 }
%union.anon.28 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ts_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }

@em_text_ops = internal global { %struct.tcf_ematch_ops, [60 x i8] } { %struct.tcf_ematch_ops { i32 5, i32 0, ptr @em_text_change, ptr @em_text_match, ptr @em_text_destroy, ptr @em_text_dump, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @em_text_ops, i64 28), ptr getelementptr (i8, ptr @em_text_ops, i64 28) } }, [60 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_file366 = internal constant [31 x i8] c"em_text.file=net/sched/em_text\00", section ".modinfo", align 1
@__UNIQUE_ID_license367 = internal constant [20 x i8] c"em_text.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_em_text__368_150_init_em_text6 = internal global ptr @init_em_text, section ".initcall6.init", align 4
@__exitcall_exit_em_text = internal global ptr @exit_em_text, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias369 = internal constant [28 x i8] c"em_text.alias=ematch-kind-5\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.1 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@___asan_gen_.2 = private unnamed_addr constant [12 x i8] c"em_text_ops\00", align 1
@___asan_gen_.3 = private constant [23 x i8] c"../net/sched/em_text.c\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 128, i32 30 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_alias369, ptr @__UNIQUE_ID_file366, ptr @__UNIQUE_ID_license367, ptr @__exitcall_exit_em_text, ptr @__initcall__kmod_em_text__368_150_init_em_text6, ptr @exit_em_text, ptr @em_text_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em_text_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_em_text() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @tcf_em_unregister(ptr noundef nonnull @em_text_ops) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_em_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_em_text() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tcf_em_register(ptr noundef nonnull @em_text_ops) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em_text_change(ptr nocapture noundef readnone %net, ptr noundef %data, i32 noundef %len, ptr nocapture noundef writeonly %m) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %len)
  %cmp = icmp ult i32 %len, 24
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pattern_len = getelementptr inbounds %struct.tcf_em_text, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %pattern_len to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %pattern_len, align 2
  %conv = zext i16 %1 to i32
  %add = add nuw nsw i32 %conv, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %len)
  %cmp1 = icmp ugt i32 %add, %len
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %from_layer = getelementptr inbounds %struct.tcf_em_text, ptr %data, i32 0, i32 4
  %2 = ptrtoint ptr %from_layer to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %from_layer, align 2
  %bf.lshr = lshr i8 %bf.load, 4
  %bf.clear = and i8 %bf.load, 15
  call void @__sanitizer_cov_trace_cmp1(i8 %bf.lshr, i8 %bf.clear)
  %cmp6 = icmp ugt i8 %bf.lshr, %bf.clear
  br i1 %cmp6, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp1(i8 %bf.lshr, i8 %bf.clear)
  %cmp18 = icmp eq i8 %bf.lshr, %bf.clear
  br i1 %cmp18, label %land.lhs.true, label %if.end9.if.end25_crit_edge

if.end9.if.end25_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end9
  %from_offset = getelementptr inbounds %struct.tcf_em_text, ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %from_offset to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %from_offset, align 2
  %to_offset = getelementptr inbounds %struct.tcf_em_text, ptr %data, i32 0, i32 2
  %5 = ptrtoint ptr %to_offset to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %to_offset, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %6)
  %cmp22 = icmp ugt i16 %4, %6
  br i1 %cmp22, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end25_crit_edge

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25:                                         ; preds = %land.lhs.true.if.end25_crit_edge, %if.end9.if.end25_crit_edge
  %add.ptr = getelementptr i8, ptr %data, i32 24
  %7 = ptrtoint ptr %pattern_len to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %pattern_len, align 2
  %conv27105 = zext i16 %8 to i32
  %call106 = tail call ptr @textsearch_prepare(ptr noundef %data, ptr noundef %add.ptr, i32 noundef %conv27105, i32 noundef 3264, i32 noundef 0) #6
  %cmp.i = icmp ugt ptr %call106, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then31, label %if.end45

if.then31.thread:                                 ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %call to i32
  br label %cleanup

if.then31:                                        ; preds = %if.end25
  %cmp33 = icmp eq ptr %call106, inttoptr (i32 -2 to ptr)
  br i1 %cmp33, label %if.then38, label %cleanup.loopexit

if.then38:                                        ; preds = %if.then31
  tail call void @rtnl_unlock() #6
  %10 = ptrtoint ptr %pattern_len to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %pattern_len, align 2
  %conv27 = zext i16 %11 to i32
  %call = tail call ptr @textsearch_prepare(ptr noundef %data, ptr noundef %add.ptr, i32 noundef %conv27, i32 noundef 3264, i32 noundef 1) #6
  tail call void @rtnl_lock() #6
  %cmp.i97 = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i97, label %if.then31.thread, label %if.then43

if.then43:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @textsearch_destroy(ptr noundef %call) #6
  br label %cleanup

if.end45:                                         ; preds = %if.end25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3264, i32 noundef 12) #9
  %cmp47 = icmp eq ptr %call7.i, null
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @textsearch_destroy(ptr noundef %call106) #6
  br label %cleanup

if.end50:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  %from_offset51 = getelementptr inbounds %struct.tcf_em_text, ptr %data, i32 0, i32 1
  %13 = ptrtoint ptr %from_offset51 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %from_offset51, align 2
  %15 = ptrtoint ptr %call7.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %call7.i, align 8
  %to_offset53 = getelementptr inbounds %struct.tcf_em_text, ptr %data, i32 0, i32 2
  %16 = ptrtoint ptr %to_offset53 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %to_offset53, align 2
  %to_offset54 = getelementptr inbounds %struct.text_match, ptr %call7.i, i32 0, i32 1
  %18 = ptrtoint ptr %to_offset54 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %to_offset54, align 2
  %19 = ptrtoint ptr %from_layer to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load56 = load i8, ptr %from_layer, align 2
  %bf.lshr57 = lshr i8 %bf.load56, 4
  %from_layer58 = getelementptr inbounds %struct.text_match, ptr %call7.i, i32 0, i32 2
  %20 = ptrtoint ptr %from_layer58 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %bf.lshr57, ptr %from_layer58, align 4
  %bf.clear61 = and i8 %bf.load56, 15
  %to_layer62 = getelementptr inbounds %struct.text_match, ptr %call7.i, i32 0, i32 3
  %21 = ptrtoint ptr %to_layer62 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %bf.clear61, ptr %to_layer62, align 1
  %config = getelementptr inbounds %struct.text_match, ptr %call7.i, i32 0, i32 4
  %22 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call106, ptr %config, align 8
  %datalen = getelementptr inbounds %struct.tcf_ematch, ptr %m, i32 0, i32 2
  %23 = ptrtoint ptr %datalen to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 12, ptr %datalen, align 4
  %24 = ptrtoint ptr %call7.i to i32
  %data63 = getelementptr inbounds %struct.tcf_ematch, ptr %m, i32 0, i32 1
  %25 = ptrtoint ptr %data63 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %data63, align 4
  br label %cleanup

cleanup.loopexit:                                 ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %call106 to i32
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %if.end50, %if.then49, %if.then43, %if.then31.thread, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %if.then43 ], [ -105, %if.then49 ], [ 0, %if.end50 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ %9, %if.then31.thread ], [ %26, %cleanup.loopexit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em_text_match(ptr noundef %skb, ptr nocapture noundef readonly %m, ptr nocapture noundef readnone %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.tcf_ematch, ptr %m, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %2 = inttoptr i32 %1 to ptr
  %from_layer = getelementptr inbounds %struct.text_match, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %from_layer to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %from_layer, align 4
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i8 %4, label %entry.tcf_get_base_ptr.exit_crit_edge [
    i8 0, label %sw.bb.i
    i8 1, label %sw.bb1.i
    i8 2, label %sw.bb3.i
  ]

entry.tcf_get_base_ptr.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %tcf_get_base_ptr.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %6 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head.i.i, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %8 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i = zext i16 %9 to i32
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %conv.i.i
  br label %tcf_get_base_ptr.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %head.i7.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %10 = ptrtoint ptr %head.i7.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i7.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %12 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %network_header.i.i, align 4
  %conv.i8.i = zext i16 %13 to i32
  %add.ptr.i9.i = getelementptr i8, ptr %11, i32 %conv.i8.i
  br label %tcf_get_base_ptr.exit

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %head.i10.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %14 = ptrtoint ptr %head.i10.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %head.i10.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %16 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %transport_header.i.i, align 2
  %conv.i11.i = zext i16 %17 to i32
  %add.ptr.i12.i = getelementptr i8, ptr %15, i32 %conv.i11.i
  br label %tcf_get_base_ptr.exit

tcf_get_base_ptr.exit:                            ; preds = %sw.bb3.i, %sw.bb1.i, %sw.bb.i, %entry.tcf_get_base_ptr.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i12.i, %sw.bb3.i ], [ %add.ptr.i9.i, %sw.bb1.i ], [ %add.ptr.i.i, %sw.bb.i ], [ null, %entry.tcf_get_base_ptr.exit_crit_edge ]
  %data1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %18 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data1, align 4
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %2, align 4
  %to_layer = getelementptr inbounds %struct.text_match, ptr %2, i32 0, i32 3
  %22 = ptrtoint ptr %to_layer to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %to_layer, align 1
  %24 = zext i8 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %23, label %tcf_get_base_ptr.exit.tcf_get_base_ptr.exit39_crit_edge [
    i8 0, label %sw.bb.i27
    i8 1, label %sw.bb1.i32
    i8 2, label %sw.bb3.i37
  ]

tcf_get_base_ptr.exit.tcf_get_base_ptr.exit39_crit_edge: ; preds = %tcf_get_base_ptr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %tcf_get_base_ptr.exit39

sw.bb.i27:                                        ; preds = %tcf_get_base_ptr.exit
  call void @__sanitizer_cov_trace_pc() #8
  %head.i.i23 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %25 = ptrtoint ptr %head.i.i23 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %head.i.i23, align 8
  %mac_header.i.i24 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %27 = ptrtoint ptr %mac_header.i.i24 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %mac_header.i.i24, align 2
  %conv.i.i25 = zext i16 %28 to i32
  %add.ptr.i.i26 = getelementptr i8, ptr %26, i32 %conv.i.i25
  br label %tcf_get_base_ptr.exit39

sw.bb1.i32:                                       ; preds = %tcf_get_base_ptr.exit
  call void @__sanitizer_cov_trace_pc() #8
  %head.i7.i28 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %29 = ptrtoint ptr %head.i7.i28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %head.i7.i28, align 8
  %network_header.i.i29 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %31 = ptrtoint ptr %network_header.i.i29 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %network_header.i.i29, align 4
  %conv.i8.i30 = zext i16 %32 to i32
  %add.ptr.i9.i31 = getelementptr i8, ptr %30, i32 %conv.i8.i30
  br label %tcf_get_base_ptr.exit39

sw.bb3.i37:                                       ; preds = %tcf_get_base_ptr.exit
  call void @__sanitizer_cov_trace_pc() #8
  %head.i10.i33 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %33 = ptrtoint ptr %head.i10.i33 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %head.i10.i33, align 8
  %transport_header.i.i34 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %35 = ptrtoint ptr %transport_header.i.i34 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %transport_header.i.i34, align 2
  %conv.i11.i35 = zext i16 %36 to i32
  %add.ptr.i12.i36 = getelementptr i8, ptr %34, i32 %conv.i11.i35
  br label %tcf_get_base_ptr.exit39

tcf_get_base_ptr.exit39:                          ; preds = %sw.bb3.i37, %sw.bb1.i32, %sw.bb.i27, %tcf_get_base_ptr.exit.tcf_get_base_ptr.exit39_crit_edge
  %retval.0.i38 = phi ptr [ %add.ptr.i12.i36, %sw.bb3.i37 ], [ %add.ptr.i9.i31, %sw.bb1.i32 ], [ %add.ptr.i.i26, %sw.bb.i27 ], [ null, %tcf_get_base_ptr.exit.tcf_get_base_ptr.exit39_crit_edge ]
  %sub.ptr.lhs.cast = ptrtoint ptr %retval.0.i to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %19 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv2 = zext i16 %21 to i32
  %add = add i32 %sub.ptr.sub, %conv2
  %sub.ptr.lhs.cast6 = ptrtoint ptr %retval.0.i38 to i32
  %sub.ptr.sub8 = sub i32 %sub.ptr.lhs.cast6, %sub.ptr.rhs.cast
  %to_offset = getelementptr inbounds %struct.text_match, ptr %2, i32 0, i32 1
  %37 = ptrtoint ptr %to_offset to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %to_offset, align 2
  %conv9 = zext i16 %38 to i32
  %add10 = add i32 %sub.ptr.sub8, %conv9
  %config = getelementptr inbounds %struct.text_match, ptr %2, i32 0, i32 4
  %39 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %config, align 4
  %call11 = tail call i32 @skb_find_text(ptr noundef %skb, i32 noundef %add, i32 noundef %add10, ptr noundef %40) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call11)
  %cmp = icmp ne i32 %call11, -1
  %conv12 = zext i1 %cmp to i32
  ret i32 %conv12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @em_text_destroy(ptr nocapture noundef readonly %m) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.tcf_ematch, ptr %m, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = inttoptr i32 %1 to ptr
  %config = getelementptr inbounds %struct.text_match, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %config, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @textsearch_destroy(ptr noundef nonnull %4) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em_text_dump(ptr noundef %skb, ptr nocapture noundef readonly %m) #2 align 64 {
entry:
  %conf = alloca %struct.tcf_em_text, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.tcf_ematch, ptr %m, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %2 = inttoptr i32 %1 to ptr
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %conf) #6
  %3 = getelementptr inbounds %struct.tcf_em_text, ptr %conf, i32 0, i32 1
  %4 = getelementptr inbounds %struct.tcf_em_text, ptr %conf, i32 0, i32 2
  %5 = getelementptr inbounds %struct.tcf_em_text, ptr %conf, i32 0, i32 3
  %6 = getelementptr inbounds %struct.tcf_em_text, ptr %conf, i32 0, i32 4
  %7 = getelementptr inbounds %struct.tcf_em_text, ptr %conf, i32 0, i32 5
  %config = getelementptr inbounds %struct.text_match, ptr %2, i32 0, i32 4
  %8 = call ptr @memset(ptr %conf, i32 255, i32 24)
  %9 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %config, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %call = call ptr @strncpy(ptr noundef nonnull %conf, ptr noundef %14, i32 noundef 15)
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %2, align 4
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %3, align 2
  %to_offset = getelementptr inbounds %struct.text_match, ptr %2, i32 0, i32 1
  %18 = ptrtoint ptr %to_offset to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %to_offset, align 2
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %4, align 2
  %from_layer = getelementptr inbounds %struct.text_match, ptr %2, i32 0, i32 2
  %21 = ptrtoint ptr %from_layer to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %from_layer, align 4
  %bf.shl = shl i8 %22, 4
  %bf.set = or i8 %bf.shl, 15
  %23 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %bf.set, ptr %6, align 2
  %to_layer = getelementptr inbounds %struct.text_match, ptr %2, i32 0, i32 3
  %24 = ptrtoint ptr %to_layer to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %to_layer, align 1
  %bf.value6 = and i8 %25, 15
  %bf.set8 = or i8 %bf.value6, %bf.shl
  store i8 %bf.set8, ptr %6, align 2
  %26 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %config, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %get_pattern_len.i = getelementptr inbounds %struct.ts_ops, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %get_pattern_len.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %get_pattern_len.i, align 4
  %call.i = call i32 %31(ptr noundef %27) #6
  %conv = trunc i32 %call.i to i16
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv, ptr %5, align 2
  %33 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %7, align 1
  %call11 = call i32 @nla_put_nohdr(ptr noundef %skb, i32 noundef 24, ptr noundef nonnull %conf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %entry.nla_put_failure_crit_edge, label %if.end

entry.nla_put_failure_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_put_failure

if.end:                                           ; preds = %entry
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %5, align 2
  %conv14 = zext i16 %35 to i32
  %36 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %config, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %get_pattern.i = getelementptr inbounds %struct.ts_ops, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %get_pattern.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %get_pattern.i, align 4
  %call.i30 = call ptr %41(ptr noundef %37) #6
  %call17 = call i32 @nla_append(ptr noundef %skb, i32 noundef %conv14, ptr noundef %call.i30) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.end.nla_put_failure_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.nla_put_failure_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_put_failure

nla_put_failure:                                  ; preds = %if.end.nla_put_failure_crit_edge, %entry.nla_put_failure_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %nla_put_failure, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %nla_put_failure ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %conf) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @textsearch_prepare(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @textsearch_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_find_text(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_nohdr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_append(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_em_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @__UNIQUE_ID_file366, !1, !"__UNIQUE_ID_file366", i1 false, i1 false}
!1 = !{!"../net/sched/em_text.c", i32 148, i32 1}
!2 = !{ptr @__UNIQUE_ID_license367, !1, !"__UNIQUE_ID_license367", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_em_text__368_150_init_em_text6, !4, !"__initcall__kmod_em_text__368_150_init_em_text6", i1 false, i1 false}
!4 = !{!"../net/sched/em_text.c", i32 150, i32 1}
!5 = !{ptr @__exitcall_exit_em_text, !6, !"__exitcall_exit_em_text", i1 false, i1 false}
!6 = !{!"../net/sched/em_text.c", i32 151, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias369, !8, !"__UNIQUE_ID_alias369", i1 false, i1 false}
!8 = !{!"../net/sched/em_text.c", i32 153, i32 1}
!9 = !{ptr @em_text_ops, !10, !"em_text_ops", i1 false, i1 false}
!10 = !{!"../net/sched/em_text.c", i32 128, i32 30}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
