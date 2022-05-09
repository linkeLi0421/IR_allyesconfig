; ModuleID = '/llk/IR_all_yes/net/nsh/nsh.c_pt.bc'
source_filename = "../net/nsh/nsh.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nsh_push\22, \22a\22\09"
module asm "\09.weak\09__crc_nsh_push\09\09\09\09"
module asm "\09.long\09__crc_nsh_push\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nsh_push:\09\09\09\09\09"
module asm "\09.asciz \09\22nsh_push\22\09\09\09\09\09"
module asm "__kstrtabns_nsh_push:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nsh_pop\22, \22a\22\09"
module asm "\09.weak\09__crc_nsh_pop\09\09\09\09"
module asm "\09.long\09__crc_nsh_pop\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nsh_pop:\09\09\09\09\09"
module asm "\09.asciz \09\22nsh_pop\22\09\09\09\09\09"
module asm "__kstrtabns_nsh_pop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.packet_offload = type { i16, i16, %struct.offload_callbacks, %struct.list_head }
%struct.offload_callbacks = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.97, %union.anon.98, [48 x i8], %union.anon.99, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.101, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.97 = type { ptr }
%union.anon.98 = type { i64 }
%union.anon.99 = type { %struct.anon.100 }
%struct.anon.100 = type { i32, ptr }
%union.anon.101 = type { %struct.anon.102 }
%struct.anon.102 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.103, i32, i32, i32, i16, i16, %union.anon.105, i32, %union.anon.106, %union.anon.107, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.103 = type { i32 }
%union.anon.105 = type { i32 }
%union.anon.106 = type { i32 }
%union.anon.107 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.nshhdr = type { i16, i8, i8, i32, %union.anon.118 }
%union.anon.118 = type { %struct.nsh_md1_ctx }
%struct.nsh_md1_ctx = type { [4 x i32] }

@__kstrtab_nsh_push = external dso_local constant [0 x i8], align 1
@__kstrtabns_nsh_push = external dso_local constant [0 x i8], align 1
@__ksymtab_nsh_push = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nsh_push to i32), ptr @__kstrtab_nsh_push, ptr @__kstrtabns_nsh_push }, section "___ksymtab_gpl+nsh_push", align 4
@__kstrtab_nsh_pop = external dso_local constant [0 x i8], align 1
@__kstrtabns_nsh_pop = external dso_local constant [0 x i8], align 1
@__ksymtab_nsh_pop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nsh_pop to i32), ptr @__kstrtab_nsh_pop, ptr @__kstrtabns_nsh_pop }, section "___ksymtab_gpl+nsh_pop", align 4
@nsh_packet_offload = internal global %struct.packet_offload { i16 -30385, i16 15, %struct.offload_callbacks { ptr @nsh_gso_segment, ptr null, ptr null }, %struct.list_head zeroinitializer }, section ".data..read_mostly", align 4
@__initcall__kmod_nsh__337_147_nsh_init_module6 = internal global ptr @nsh_init_module, section ".initcall6.init", align 4
@__exitcall_nsh_cleanup_module = internal global ptr @nsh_cleanup_module, section ".exitcall.exit", align 4
@__UNIQUE_ID_author338 = internal constant [40 x i8] c"nsh.author=Jiri Benc <jbenc@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description339 = internal constant [29 x i8] c"nsh.description=NSH protocol\00", section ".modinfo", align 1
@__UNIQUE_ID_file340 = internal constant [21 x i8] c"nsh.file=net/nsh/nsh\00", section ".modinfo", align 1
@__UNIQUE_ID_license341 = internal constant [19 x i8] c"nsh.license=GPL v2\00", section ".modinfo", align 1
@switch.table.nsh_pop = internal constant { [5 x i16], [22 x i8] } { [5 x i16] [i16 2048, i16 -31011, i16 25944, i16 -30385, i16 -30649], [22 x i8] zeroinitializer }, align 32
@switch.table.nsh_gso_segment = internal constant { [5 x i16], [22 x i8] } { [5 x i16] [i16 0, i16 0, i16 14, i16 0, i16 0], [22 x i8] zeroinitializer }, align 32
@switch.table.nsh_gso_segment.1 = internal constant { [5 x i16], [22 x i8] } { [5 x i16] [i16 2048, i16 -31011, i16 25944, i16 -30385, i16 -30649], [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 16, i64 2048, i64 25944, i64 34525, i64 34887, i64 35151]
@___asan_gen_ = private constant [17 x i8] c"../net/nsh/nsh.c\00", align 1
@___asan_gen_.2 = private unnamed_addr constant [21 x i8] c"switch.table.nsh_pop\00", align 1
@___asan_gen_.3 = private unnamed_addr constant [29 x i8] c"switch.table.nsh_gso_segment\00", align 1
@___asan_gen_.4 = private unnamed_addr constant [31 x i8] c"switch.table.nsh_gso_segment.1\00", align 1
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_author338, ptr @__UNIQUE_ID_description339, ptr @__UNIQUE_ID_file340, ptr @__UNIQUE_ID_license341, ptr @__exitcall_nsh_cleanup_module, ptr @__initcall__kmod_nsh__337_147_nsh_init_module6, ptr @__ksymtab_nsh_pop, ptr @__ksymtab_nsh_push, ptr @nsh_cleanup_module, ptr @switch.table.nsh_pop, ptr @switch.table.nsh_gso_segment, ptr @switch.table.nsh_gso_segment.1], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nsh_pop to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nsh_gso_segment to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nsh_gso_segment.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nsh_push(ptr noundef %skb, ptr nocapture noundef readonly %pushed_nh) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pushed_nh to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %pushed_nh, align 4
  %2 = shl i16 %1, 2
  %3 = and i16 %2, 252
  %conv = zext i16 %3 to i32
  %mac_len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %4 = ptrtoint ptr %mac_len to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mac_len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.else:                                          ; preds = %entry
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %6 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %protocol, align 8
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i16 %7, label %if.else.cleanup_crit_edge [
    i16 2048, label %if.else.if.end4_crit_edge
    i16 -31011, label %sw.bb1.i
    i16 25944, label %sw.bb2.i
    i16 -30385, label %sw.bb3.i
    i16 -30649, label %sw.bb4.i
  ]

if.else.if.end4_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb1.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

sw.bb2.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

sw.bb3.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

sw.bb4.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.end4:                                          ; preds = %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.else.if.end4_crit_edge, %entry.if.end4_crit_edge
  %next_proto.0 = phi i8 [ 3, %entry.if.end4_crit_edge ], [ 1, %if.else.if.end4_crit_edge ], [ 2, %sw.bb1.i ], [ 3, %sw.bb2.i ], [ 4, %sw.bb3.i ], [ 5, %sw.bb4.i ]
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %9 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.end4.skb_header_cloned.exit.i_crit_edge, label %if.end.i.i

if.end4.skb_header_cloned.exit.i_crit_edge:       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %skb_header_cloned.exit.i

if.end.i.i:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %10 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %end.i.i.i, align 4
  %dataref1.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %11, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i, i32 noundef 4) #4
  %12 = ptrtoint ptr %dataref1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %dataref1.i.i, align 4
  %and.i.i = and i32 %13, 65535
  %shr.i.i = ashr i32 %13, 16
  %sub.i.i = sub nsw i32 %and.i.i, %shr.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.i.not.i = icmp eq i32 %sub.i.i, 1
  br label %skb_header_cloned.exit.i

skb_header_cloned.exit.i:                         ; preds = %if.end.i.i, %if.end4.skb_header_cloned.exit.i_crit_edge
  %retval.0.i.i = phi i1 [ %cmp.i.not.i, %if.end.i.i ], [ true, %if.end4.skb_header_cloned.exit.i_crit_edge ]
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %14 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %16 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %15 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %17 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i, i32 %conv)
  %tobool.not.i3.i = icmp uge i32 %sub.ptr.sub.i.i.i, %conv
  %or.cond.i.i = and i1 %retval.0.i.i, %tobool.not.i3.i
  br i1 %or.cond.i.i, label %skb_header_cloned.exit.i.if.end8_crit_edge, label %skb_cow_head.exit

skb_header_cloned.exit.i.if.end8_crit_edge:       ; preds = %skb_header_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

skb_cow_head.exit:                                ; preds = %skb_header_cloned.exit.i
  %18 = tail call i32 @llvm.usub.sat.i32(i32 %conv, i32 %sub.ptr.sub.i.i.i) #4
  %add.i.i = add nuw nsw i32 %18, 127
  %and.i4.i = and i32 %add.i.i, 384
  %call4.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4.i, i32 noundef 0, i32 noundef 2592) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp = icmp slt i32 %call4.i.i, 0
  br i1 %cmp, label %skb_cow_head.exit.cleanup_crit_edge, label %skb_cow_head.exit.if.end8_crit_edge

skb_cow_head.exit.if.end8_crit_edge:              ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

skb_cow_head.exit.cleanup_crit_edge:              ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %skb_cow_head.exit.if.end8_crit_edge, %skb_header_cloned.exit.i.if.end8_crit_edge
  %call9 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %conv) #4
  %19 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i.i.i, align 4
  %21 = call ptr @memcpy(ptr %20, ptr %pushed_nh, i32 %conv)
  %np = getelementptr inbounds %struct.nshhdr, ptr %20, i32 0, i32 2
  %22 = ptrtoint ptr %np to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %next_proto.0, ptr %np, align 1
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %23 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load.i.i29 = load i16, ptr %ip_summed.i.i, align 8
  %24 = and i16 %bf.load.i.i29, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %24)
  %cmp.i.i = icmp eq i16 %24, 1024
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end8.skb_postpush_rcsum.exit_crit_edge

if.end8.skb_postpush_rcsum.exit_crit_edge:        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %skb_postpush_rcsum.exit

if.then.i.i:                                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %25 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 8
  %call.i.i = tail call i32 @csum_partial(ptr noundef %20, i32 noundef %conv, i32 noundef 0) #4
  %add.i.i.i.i = add i32 %call.i.i, %27
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i, i32 %call.i.i)
  %cmp.i.i.i.i = icmp ult i32 %add.i.i.i.i, %call.i.i
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i to i32
  %add1.i.i.i.i = add i32 %add.i.i.i.i, %conv.i.i.i.i
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add1.i.i.i.i, ptr %25, align 8
  br label %skb_postpush_rcsum.exit

skb_postpush_rcsum.exit:                          ; preds = %if.then.i.i, %if.end8.skb_postpush_rcsum.exit_crit_edge
  %protocol10 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %29 = ptrtoint ptr %protocol10 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 -30385, ptr %protocol10, align 8
  %30 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i.i.i, align 4
  %32 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %31 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %33 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %34 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv.i, ptr %mac_header.i, align 2
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %35 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.i, ptr %network_header.i, align 4
  %36 = ptrtoint ptr %mac_len to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %mac_len, align 4
  br label %cleanup

cleanup:                                          ; preds = %skb_postpush_rcsum.exit, %skb_cow_head.exit.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %skb_postpush_rcsum.exit ], [ -12, %skb_cow_head.exit.cleanup_crit_edge ], [ -97, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nsh_pop(ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %1, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 8
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end_crit_edge, !prof !26

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cmp3.i = icmp ult i32 %1, 8
  br i1 %cmp3.i, label %if.end.i.cleanup_crit_edge, label %pskb_may_pull.exit, !prof !26

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 8, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #4
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.cleanup_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge

pskb_may_pull.exit.if.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

pskb_may_pull.exit.cleanup_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %pskb_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %5, align 4
  %8 = shl i16 %7, 2
  %9 = and i16 %8, 252
  %conv = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %9)
  %cmp = icmp ult i16 %9, 8
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %np = getelementptr inbounds %struct.nshhdr, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %np to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %np, align 1
  %switch.tableidx = add i8 %11, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %switch.tableidx)
  %12 = icmp ult i8 %switch.tableidx, 5
  br i1 %12, label %switch.lookup, label %tun_p_to_eth_p.exit.thread

switch.lookup:                                    ; preds = %if.end4
  %13 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [5 x i16], ptr @switch.table.nsh_pop, i32 0, i32 %13
  %14 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %14)
  %switch.load = load i16, ptr %switch.gep, align 2
  %15 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len.i.i, align 4
  %17 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i28 = sub i32 %16, %18
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i28, i32 %conv)
  %cmp.not.i29 = icmp ult i32 %sub.i.i28, %conv
  br i1 %cmp.not.i29, label %switch.lookup.if.end.i31_crit_edge, label %switch.lookup.if.end10_crit_edge, !prof !26

switch.lookup.if.end10_crit_edge:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

switch.lookup.if.end.i31_crit_edge:               ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i31

tun_p_to_eth_p.exit.thread:                       ; preds = %if.end4
  %19 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len.i.i, align 4
  %21 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i2855 = sub i32 %20, %22
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i2855, i32 %conv)
  %cmp.not.i2956 = icmp ult i32 %sub.i.i2855, %conv
  br i1 %cmp.not.i2956, label %tun_p_to_eth_p.exit.thread.if.end.i31_crit_edge, label %tun_p_to_eth_p.exit.thread.cleanup_crit_edge, !prof !26

tun_p_to_eth_p.exit.thread.cleanup_crit_edge:     ; preds = %tun_p_to_eth_p.exit.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

tun_p_to_eth_p.exit.thread.if.end.i31_crit_edge:  ; preds = %tun_p_to_eth_p.exit.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i31

if.end.i31:                                       ; preds = %tun_p_to_eth_p.exit.thread.if.end.i31_crit_edge, %switch.lookup.if.end.i31_crit_edge
  %sub.i.i2862 = phi i32 [ %sub.i.i2855, %tun_p_to_eth_p.exit.thread.if.end.i31_crit_edge ], [ %sub.i.i28, %switch.lookup.if.end.i31_crit_edge ]
  %23 = phi i32 [ %20, %tun_p_to_eth_p.exit.thread.if.end.i31_crit_edge ], [ %16, %switch.lookup.if.end.i31_crit_edge ]
  %retval.0.i2561 = phi i16 [ 0, %tun_p_to_eth_p.exit.thread.if.end.i31_crit_edge ], [ %switch.load, %switch.lookup.if.end.i31_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %conv)
  %cmp3.i30 = icmp ult i32 %23, %conv
  br i1 %cmp3.i30, label %if.end.i31.cleanup_crit_edge, label %pskb_may_pull.exit37, !prof !26

if.end.i31.cleanup_crit_edge:                     ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

pskb_may_pull.exit37:                             ; preds = %if.end.i31
  %24 = xor i1 %12, true
  %sub.i32 = sub i32 %conv, %sub.i.i2862
  %call13.i33 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i32) #4
  %cmp14.i34.not = icmp eq ptr %call13.i33, null
  %brmerge = or i1 %cmp14.i34.not, %24
  %.mux = select i1 %cmp14.i34.not, i32 -12, i32 -97
  br i1 %brmerge, label %pskb_may_pull.exit37.cleanup_crit_edge, label %pskb_may_pull.exit37.if.end10_crit_edge

pskb_may_pull.exit37.if.end10_crit_edge:          ; preds = %pskb_may_pull.exit37
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

pskb_may_pull.exit37.cleanup_crit_edge:           ; preds = %pskb_may_pull.exit37
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end10:                                         ; preds = %pskb_may_pull.exit37.if.end10_crit_edge, %switch.lookup.if.end10_crit_edge
  %retval.0.i2559 = phi i16 [ %retval.0.i2561, %pskb_may_pull.exit37.if.end10_crit_edge ], [ %switch.load, %switch.lookup.if.end10_crit_edge ]
  %call11 = tail call ptr @skb_pull_rcsum(ptr noundef %skb, i32 noundef %conv) #4
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %27 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %26 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %28 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %29 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv.i, ptr %mac_header.i, align 2
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %30 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv.i, ptr %network_header.i, align 4
  %mac_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %31 = ptrtoint ptr %mac_len.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %mac_len.i, align 4
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %32 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %retval.0.i2559, ptr %protocol, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %pskb_may_pull.exit37.cleanup_crit_edge, %if.end.i31.cleanup_crit_edge, %tun_p_to_eth_p.exit.thread.cleanup_crit_edge, %if.end.cleanup_crit_edge, %pskb_may_pull.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -12, %pskb_may_pull.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %.mux, %pskb_may_pull.exit37.cleanup_crit_edge ], [ -12, %if.end.i.cleanup_crit_edge ], [ -12, %if.end.i31.cleanup_crit_edge ], [ -97, %tun_p_to_eth_p.exit.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull_rcsum(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nsh_cleanup_module() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @dev_remove_offload(ptr noundef nonnull @nsh_packet_offload) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_remove_offload(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nsh_init_module() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dev_add_offload(ptr noundef nonnull @nsh_packet_offload) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nsh_gso_segment(ptr noundef %skb, i64 noundef %features) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %4 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv.i, ptr %network_header.i, align 4
  %conv = and i32 %sub.ptr.sub.i, 65535
  %mac_header = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %5 = ptrtoint ptr %mac_header to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %mac_header, align 2
  %conv1 = zext i16 %6 to i32
  %sub = sub nsw i32 %conv, %conv1
  %mac_len2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %7 = ptrtoint ptr %mac_len2 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %mac_len2, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %11 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %10, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 8
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end_crit_edge, !prof !26

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %10)
  %cmp3.i = icmp ult i32 %10, 8
  br i1 %cmp3.i, label %if.end.i.out_crit_edge, label %pskb_may_pull.exit, !prof !26

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 8, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #4
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.out_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge, !prof !26

pskb_may_pull.exit.if.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

pskb_may_pull.exit.out_crit_edge:                 ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %pskb_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %13 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %head.i, align 8
  %15 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %network_header.i, align 4
  %conv.i.i = zext i16 %16 to i32
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 %conv.i.i
  %17 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr.i.i, align 4
  %19 = shl i16 %18, 2
  %20 = and i16 %19, 252
  %conv9 = zext i16 %20 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %20)
  %cmp = icmp ult i16 %20, 8
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end12

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end12:                                         ; preds = %if.end
  %21 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len.i.i, align 4
  %23 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i89 = sub i32 %22, %24
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i89, i32 %conv9)
  %cmp.not.i90 = icmp ult i32 %sub.i.i89, %conv9
  br i1 %cmp.not.i90, label %if.end.i92, label %if.end12.if.end23_crit_edge, !prof !26

if.end12.if.end23_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

if.end.i92:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %conv9)
  %cmp3.i91 = icmp ult i32 %22, %conv9
  br i1 %cmp3.i91, label %if.end.i92.out_crit_edge, label %pskb_may_pull.exit98, !prof !26

if.end.i92.out_crit_edge:                         ; preds = %if.end.i92
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

pskb_may_pull.exit98:                             ; preds = %if.end.i92
  %sub.i93 = sub i32 %conv9, %sub.i.i89
  %call13.i94 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i93) #4
  %cmp14.i95.not = icmp eq ptr %call13.i94, null
  br i1 %cmp14.i95.not, label %pskb_may_pull.exit98.out_crit_edge, label %pskb_may_pull.exit98.if.end23_crit_edge, !prof !26

pskb_may_pull.exit98.if.end23_crit_edge:          ; preds = %pskb_may_pull.exit98
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

pskb_may_pull.exit98.out_crit_edge:               ; preds = %pskb_may_pull.exit98
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end23:                                         ; preds = %pskb_may_pull.exit98.if.end23_crit_edge, %if.end12.if.end23_crit_edge
  %25 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %head.i, align 8
  %27 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %network_header.i, align 4
  %conv.i.i101 = zext i16 %28 to i32
  %add.ptr.i.i102 = getelementptr i8, ptr %26, i32 %conv.i.i101
  %np = getelementptr inbounds %struct.nshhdr, ptr %add.ptr.i.i102, i32 0, i32 2
  %29 = ptrtoint ptr %np to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %np, align 1
  %switch.tableidx = add i8 %30, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %switch.tableidx)
  %31 = icmp ult i8 %switch.tableidx, 5
  br i1 %31, label %switch.lookup, label %if.end23.out_crit_edge

if.end23.out_crit_edge:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

switch.lookup:                                    ; preds = %if.end23
  %32 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [5 x i16], ptr @switch.table.nsh_gso_segment, i32 0, i32 %32
  %33 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %33)
  %switch.load = load i16, ptr %switch.gep, align 2
  %34 = sext i8 %switch.tableidx to i32
  %switch.gep137 = getelementptr inbounds [5 x i16], ptr @switch.table.nsh_gso_segment.1, i32 0, i32 %34
  %35 = ptrtoint ptr %switch.gep137 to i32
  call void @__asan_load2_noabort(i32 %35)
  %switch.load138 = load i16, ptr %switch.gep137, align 2
  %36 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len.i.i, align 4
  %sub.i104 = sub i32 %37, %conv9
  store i32 %sub.i104, ptr %len.i.i, align 4
  %38 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i104, i32 %39)
  %cmp.i = icmp ult i32 %sub.i104, %39
  br i1 %cmp.i, label %do.body4.i, label %__skb_pull.exit, !prof !26

do.body4.i:                                       ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #4, !srcloc !27
  unreachable

__skb_pull.exit:                                  ; preds = %switch.lookup
  %40 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %41, i32 %conv9
  store ptr %add.ptr.i, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i108 = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast.i109 = ptrtoint ptr %26 to i32
  %sub.ptr.sub.i110 = sub i32 %sub.ptr.lhs.cast.i108, %sub.ptr.rhs.cast.i109
  %conv.i111 = trunc i32 %sub.ptr.sub.i110 to i16
  %42 = ptrtoint ptr %mac_header to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv.i111, ptr %mac_header, align 2
  %43 = ptrtoint ptr %mac_len2 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %switch.load, ptr %mac_len2, align 4
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %44 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %switch.load138, ptr %protocol, align 8
  %and = and i64 %features, 1
  %call35 = tail call ptr @skb_mac_gso_segment(ptr noundef %skb, i64 noundef %and) #4
  %tobool.not.i = icmp eq ptr %call35, null
  %cmp.i112 = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i112
  br i1 %spec.select.i, label %if.then37, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %__skb_pull.exit
  %idx.neg.i = sub nsw i32 0, %conv9
  %45 = trunc i32 %sub to i16
  br label %for.body

if.then37:                                        ; preds = %__skb_pull.exit
  call void @__sanitizer_cov_trace_pc() #6
  %46 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %network_header.i, align 4
  %48 = trunc i32 %sub to i16
  %conv41 = sub i16 %47, %48
  %49 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 -30385, ptr %protocol, align 8
  %encapsulation.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %50 = ptrtoint ptr %encapsulation.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %bf.load.i = load i16, ptr %encapsulation.i, align 8
  %bf.set.i = or i16 %bf.load.i, 4
  store i16 %bf.set.i, ptr %encapsulation.i, align 8
  %call.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %conv9) #4
  %51 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data.i, align 4
  %53 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %52 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %54 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i114 = trunc i32 %sub.ptr.sub.i.i to i16
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %55 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv.i.i114, ptr %transport_header.i.i, align 2
  %56 = ptrtoint ptr %mac_header to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv41, ptr %mac_header, align 2
  %conv3.i = add i16 %conv41, %8
  %57 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv3.i, ptr %network_header.i, align 4
  %58 = ptrtoint ptr %mac_len2 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %8, ptr %mac_len2, align 4
  br label %out

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %skb.addr.0136 = phi ptr [ %call35, %for.body.lr.ph ], [ %70, %for.body.for.body_crit_edge ]
  %protocol44 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0136, i32 0, i32 15, i32 0, i32 18
  %59 = ptrtoint ptr %protocol44 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 -30385, ptr %protocol44, align 8
  %data.i117 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0136, i32 0, i32 19
  %60 = ptrtoint ptr %data.i117 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data.i117, align 4
  %add.ptr.i118 = getelementptr i8, ptr %61, i32 %idx.neg.i
  store ptr %add.ptr.i118, ptr %data.i117, align 4
  %len1.i119 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0136, i32 0, i32 6
  %62 = ptrtoint ptr %len1.i119 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %len1.i119, align 4
  %add.i = add i32 %63, %conv9
  store i32 %add.i, ptr %len1.i119, align 4
  %head.i.i121 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0136, i32 0, i32 18
  %64 = ptrtoint ptr %head.i.i121 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %head.i.i121, align 8
  %sub.ptr.lhs.cast.i.i122 = ptrtoint ptr %add.ptr.i118 to i32
  %sub.ptr.rhs.cast.i.i123 = ptrtoint ptr %65 to i32
  %sub.ptr.sub.i.i124 = sub i32 %sub.ptr.lhs.cast.i.i122, %sub.ptr.rhs.cast.i.i123
  %conv.i.i125 = trunc i32 %sub.ptr.sub.i.i124 to i16
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0136, i32 0, i32 15, i32 0, i32 21
  %conv1.i = sub i16 %conv.i.i125, %45
  %66 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv1.i, ptr %mac_header.i.i, align 2
  %add = add i16 %conv1.i, %8
  %network_header50 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0136, i32 0, i32 15, i32 0, i32 20
  %67 = ptrtoint ptr %network_header50 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %add, ptr %network_header50, align 4
  %mac_len52 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0136, i32 0, i32 8
  %68 = ptrtoint ptr %mac_len52 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %8, ptr %mac_len52, align 4
  %69 = ptrtoint ptr %skb.addr.0136 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %skb.addr.0136, align 8
  %tobool43.not = icmp eq ptr %70, null
  br i1 %tobool43.not, label %for.body.out_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

out:                                              ; preds = %for.body.out_crit_edge, %if.then37, %if.end23.out_crit_edge, %pskb_may_pull.exit98.out_crit_edge, %if.end.i92.out_crit_edge, %if.end.out_crit_edge, %pskb_may_pull.exit.out_crit_edge, %if.end.i.out_crit_edge
  %segs.0 = phi ptr [ inttoptr (i32 -22 to ptr), %pskb_may_pull.exit.out_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.out_crit_edge ], [ inttoptr (i32 -22 to ptr), %pskb_may_pull.exit98.out_crit_edge ], [ %call35, %if.then37 ], [ inttoptr (i32 -22 to ptr), %if.end23.out_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.i.out_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.i92.out_crit_edge ], [ %call35, %for.body.out_crit_edge ]
  ret ptr %segs.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_mac_gso_segment(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_add_offload(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @__ksymtab_nsh_push, !1, !"__ksymtab_nsh_push", i1 false, i1 false}
!1 = !{!"../net/nsh/nsh.c", i32 45, i32 1}
!2 = !{ptr @__ksymtab_nsh_pop, !3, !"__ksymtab_nsh_pop", i1 false, i1 false}
!3 = !{!"../net/nsh/nsh.c", i32 74, i32 1}
!4 = !{ptr @__initcall__kmod_nsh__337_147_nsh_init_module6, !5, !"__initcall__kmod_nsh__337_147_nsh_init_module6", i1 false, i1 false}
!5 = !{!"../net/nsh/nsh.c", i32 147, i32 1}
!6 = !{ptr @__exitcall_nsh_cleanup_module, !7, !"__exitcall_nsh_cleanup_module", i1 false, i1 false}
!7 = !{!"../net/nsh/nsh.c", i32 148, i32 1}
!8 = !{ptr @__UNIQUE_ID_author338, !9, !"__UNIQUE_ID_author338", i1 false, i1 false}
!9 = !{!"../net/nsh/nsh.c", i32 150, i32 1}
!10 = !{ptr @__UNIQUE_ID_description339, !11, !"__UNIQUE_ID_description339", i1 false, i1 false}
!11 = !{!"../net/nsh/nsh.c", i32 151, i32 1}
!12 = !{ptr @__UNIQUE_ID_file340, !13, !"__UNIQUE_ID_file340", i1 false, i1 false}
!13 = !{!"../net/nsh/nsh.c", i32 152, i32 1}
!14 = !{ptr @__UNIQUE_ID_license341, !13, !"__UNIQUE_ID_license341", i1 false, i1 false}
!15 = !{ptr @nsh_packet_offload, !16, !"nsh_packet_offload", i1 false, i1 false}
!16 = !{!"../net/nsh/nsh.c", i32 128, i32 30}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{!"branch_weights", i32 1, i32 2000}
!27 = !{i64 2154941358, i64 2154941846, i64 2154941395, i64 2154941451, i64 2154941485, i64 2154941509, i64 2154941550, i64 2154941571, i64 2154941599, i64 2154941633}
