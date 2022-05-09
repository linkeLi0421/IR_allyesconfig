; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mediatek/mtk_ppe.c_pt.bc'
source_filename = "../drivers/net/ethernet/mediatek/mtk_ppe.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mtk_foe_entry = type { i32, %union.anon }
%union.anon = type { %struct.mtk_foe_ipv4_dslite }
%struct.mtk_foe_ipv4_dslite = type { %struct.mtk_ipv4_tuple, [4 x i32], [4 x i32], [3 x i8], i8, i32, i32, %struct.mtk_foe_mac_info }
%struct.mtk_ipv4_tuple = type { i32, i32, %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mtk_foe_mac_info = type { i16, i16, i32, i16, i16, i32, i16, i16 }
%struct.anon = type { i16, i16 }
%struct.anon.4 = type { i16, i16 }
%struct.mtk_foe_bridge = type { i32, i16, i16, i32, i32, [5 x i32], i32, %struct.mtk_foe_mac_info }
%struct.mtk_ppe = type { ptr, ptr, i32, ptr, i32, ptr }

@mtk_foe_entry_set_ipv4_tuple.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/ethernet/mediatek/mtk_ppe.c\00", [56 x i8] zeroinitializer }, align 32
@mtk_foe_entry_set_ipv6_tuple.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mtk_ppe_hash_entry.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mtk_ppe_wait_busy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 54, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PPE table busy\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mtk_ppe_wait_busy\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mtk_ppe_wait_busy._entry_ptr = internal global ptr @mtk_ppe_wait_busy._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.5 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 7]
@__sancov_gen_cov_switch_values.6 = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 4, i64 5, i64 7]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.8 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 4, i64 5]
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 227, i32 3 }
@___asan_gen_.12 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private constant [43 x i8] c"../drivers/net/ethernet/mediatek/mtk_ppe.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 54, i32 3 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @mtk_ppe_wait_busy._entry, ptr @mtk_ppe_wait_busy._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_ppe_wait_busy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_foe_entry_prepare(ptr nocapture noundef writeonly %entry1, i32 noundef %type, i32 noundef %l4proto, i8 noundef zeroext %pse_port, ptr nocapture noundef readonly %src_mac, ptr nocapture noundef readonly %dest_mac) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %entry1, i32 0, i32 80)
  %shl = shl i32 %type, 25
  %and30 = and i32 %shl, 234881024
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %l4proto)
  %cmp = icmp eq i32 %l4proto, 17
  %shl57 = select i1 %cmp, i32 1073741824, i32 0
  %or = or i32 %and30, %shl57
  %or61 = or i32 %or, 557842432
  %1 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %or61, ptr %entry1, align 4
  %conv118 = zext i8 %pse_port to i32
  %shl119 = shl nuw nsw i32 %conv118, 5
  %and120 = and i32 %shl119, 224
  %2 = ptrtoint ptr %dest_mac to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dest_mac, align 4
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  %spec.select.v = select i1 %tobool.i.not, i32 8384512, i32 8384768
  %spec.select = or i32 %spec.select.v, %and120
  %and125 = and i32 %l4proto, 255
  %or126 = or i32 %and125, -1515870976
  %5 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %if.end134 [
    i32 1, label %if.end134.thread186
    i32 4, label %if.end134.thread
  ]

if.end134.thread186:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = getelementptr inbounds %struct.mtk_foe_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or126, ptr %6, align 4
  br label %if.else

if.end134.thread:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %8 = getelementptr inbounds %struct.mtk_foe_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or126, ptr %8, align 4
  br label %if.then137

if.end134:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cmp135 = icmp sgt i32 %type, 2
  br i1 %cmp135, label %if.end134.if.then137_crit_edge, label %if.end134.if.else_crit_edge

if.end134.if.else_crit_edge:                      ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.end134.if.then137_crit_edge:                   ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then137

if.then137:                                       ; preds = %if.end134.if.then137_crit_edge, %if.end134.thread
  %ib2 = getelementptr inbounds %struct.mtk_foe_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 6
  %10 = ptrtoint ptr %ib2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %spec.select, ptr %ib2, align 4
  %l2138 = getelementptr inbounds %struct.mtk_foe_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 7
  br label %if.end141

if.else:                                          ; preds = %if.end134.if.else_crit_edge, %if.end134.thread186
  %ib2139 = getelementptr inbounds %struct.mtk_foe_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %ib2139 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.select, ptr %ib2139, align 4
  %l2140 = getelementptr inbounds %struct.mtk_foe_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 2, i32 3
  br label %if.end141

if.end141:                                        ; preds = %if.else, %if.then137
  %l2.0 = phi ptr [ %l2138, %if.then137 ], [ %l2140, %if.else ]
  %12 = ptrtoint ptr %dest_mac to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %dest_mac, align 1
  %dest_mac_hi = getelementptr inbounds %struct.mtk_foe_mac_info, ptr %l2.0, i32 0, i32 2
  %14 = ptrtoint ptr %dest_mac_hi to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %dest_mac_hi, align 4
  %add.ptr = getelementptr i8, ptr %dest_mac, i32 4
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %add.ptr, align 1
  %dest_mac_lo = getelementptr inbounds %struct.mtk_foe_mac_info, ptr %l2.0, i32 0, i32 4
  %17 = ptrtoint ptr %dest_mac_lo to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %dest_mac_lo, align 2
  %18 = ptrtoint ptr %src_mac to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %src_mac, align 1
  %src_mac_hi = getelementptr inbounds %struct.mtk_foe_mac_info, ptr %l2.0, i32 0, i32 5
  %20 = ptrtoint ptr %src_mac_hi to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %src_mac_hi, align 4
  %add.ptr145 = getelementptr i8, ptr %src_mac, i32 4
  %21 = ptrtoint ptr %add.ptr145 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %add.ptr145, align 1
  %src_mac_lo = getelementptr inbounds %struct.mtk_foe_mac_info, ptr %l2.0, i32 0, i32 7
  %23 = ptrtoint ptr %src_mac_lo to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %src_mac_lo, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %type)
  %cmp147 = icmp sgt i32 %type, 3
  %spec.select188 = select i1 %cmp147, i16 -31011, i16 2048
  %24 = getelementptr inbounds %struct.mtk_foe_mac_info, ptr %l2.0, i32 0, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %spec.select188, ptr %24, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_foe_entry_set_pse_port(ptr nocapture noundef %entry1, i8 noundef zeroext %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %entry1, align 4
  %2 = and i32 %1, 234881024
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %2)
  %cmp.i = icmp ugt i32 %2, 67108864
  %ib2.i = getelementptr inbounds %struct.mtk_foe_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 6
  %ib214.i = getelementptr inbounds %struct.mtk_foe_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 1
  %retval.0.i = select i1 %cmp.i, ptr %ib2.i, ptr %ib214.i
  %3 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %retval.0.i, align 4
  %and = and i32 %4, -225
  %conv15 = zext i8 %port to i32
  %shl = shl nuw nsw i32 %conv15, 5
  %and16 = and i32 %shl, 224
  %or = or i32 %and, %and16
  store i32 %or, ptr %retval.0.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_foe_entry_set_ipv4_tuple(ptr nocapture noundef %entry1, i1 noundef zeroext %egress, i32 noundef %src_addr, i16 noundef zeroext %src_port, i32 noundef %dest_addr, i16 noundef zeroext %dest_port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %entry1, align 4
  %and = lshr i32 %1, 25
  %shr = and i32 %and, 7
  %2 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %shr, label %land.end [
    i32 0, label %sw.bb
    i32 3, label %entry.sw.epilog_crit_edge
    i32 1, label %entry.sw.epilog_crit_edge80
    i32 7, label %sw.bb15
  ]

entry.sw.epilog_crit_edge80:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  br i1 %egress, label %sw.epilog.thread, label %sw.epilog.thread77

sw.epilog.thread77:                               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %3 = getelementptr inbounds %struct.mtk_foe_entry, ptr %entry1, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %src_addr, ptr %3, align 4
  %dest_ip78 = getelementptr inbounds %struct.mtk_foe_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 0, i32 1
  br label %if.end56.sink.split

sw.epilog.thread:                                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %new = getelementptr inbounds %struct.mtk_foe_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %src_addr, ptr %new, align 4
  %dest_ip74 = getelementptr inbounds %struct.mtk_foe_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 1, i32 2
  br label %if.end56.sink.split

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %tunnel_src_ip = getelementptr inbounds %struct.mtk_foe_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %tunnel_src_ip to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %src_addr, ptr %tunnel_src_ip, align 4
  %tunnel_dest_ip = getelementptr inbounds %struct.mtk_foe_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 2, i32 3
  %7 = ptrtoint ptr %tunnel_dest_ip to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %dest_addr, ptr %tunnel_dest_ip, align 4
  br label %cleanup

land.end:                                         ; preds = %entry
  %.b72 = load i1, ptr @mtk_foe_entry_set_ipv4_tuple.__already_done, align 1
  br i1 %.b72, label %land.end.cleanup_crit_edge, label %if.then21, !prof !25

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then21:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mtk_foe_entry_set_ipv4_tuple.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 227, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

sw.epilog:                                        ; preds = %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge80
  %8 = getelementptr inbounds %struct.mtk_foe_entry, ptr %entry1, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %src_addr, ptr %8, align 4
  %dest_ip = getelementptr inbounds %struct.mtk_foe_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %dest_ip to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %dest_addr, ptr %dest_ip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr)
  %cmp = icmp eq i32 %shr, 1
  br i1 %cmp, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.if.end56_crit_edge

sw.epilog.if.end56_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end56.sink.split:                              ; preds = %sw.epilog.thread, %sw.epilog.thread77
  %dest_ip78.sink = phi ptr [ %dest_ip78, %sw.epilog.thread77 ], [ %dest_ip74, %sw.epilog.thread ]
  %t.076.ph = phi ptr [ %3, %sw.epilog.thread77 ], [ %new, %sw.epilog.thread ]
  %11 = ptrtoint ptr %dest_ip78.sink to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %dest_addr, ptr %dest_ip78.sink, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.end56.sink.split, %sw.epilog.if.end56_crit_edge
  %t.076 = phi ptr [ %8, %sw.epilog.if.end56_crit_edge ], [ %t.076.ph, %if.end56.sink.split ]
  %12 = getelementptr inbounds %struct.mtk_ipv4_tuple, ptr %t.076, i32 0, i32 2
  %src_port57 = getelementptr inbounds %struct.anon, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %src_port57 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %src_port, ptr %src_port57, align 2
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %dest_port, ptr %12, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %sw.epilog.cleanup_crit_edge, %if.then21, %land.end.cleanup_crit_edge, %sw.bb15
  %retval.0 = phi i32 [ 0, %sw.bb15 ], [ 0, %if.end56 ], [ -22, %if.then21 ], [ -22, %land.end.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_foe_entry_set_ipv6_tuple(ptr nocapture noundef %entry1, ptr nocapture noundef readonly %src_addr, i16 noundef zeroext %src_port, ptr nocapture noundef readonly %dest_addr, i16 noundef zeroext %dest_port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %entry1, align 4
  %and = lshr i32 %1, 25
  %shr = and i32 %and, 7
  %2 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %shr, label %land.end [
    i32 3, label %sw.bb
    i32 5, label %entry.sw.bb15_crit_edge
    i32 7, label %entry.sw.bb15_crit_edge87
    i32 4, label %entry.sw.bb18_crit_edge
  ]

entry.sw.bb18_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb18

entry.sw.bb15_crit_edge87:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb15

entry.sw.bb15_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb15

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %tunnel_src_ip = getelementptr inbounds %struct.mtk_foe_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 1
  %tunnel_dest_ip = getelementptr inbounds %struct.mtk_foe_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 2
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry.sw.bb15_crit_edge, %entry.sw.bb15_crit_edge87
  %3 = getelementptr inbounds %struct.mtk_foe_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 2, i32 1
  %src_port16 = getelementptr inbounds %struct.anon.4, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %src_port16 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %src_port, ptr %src_port16, align 2
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %dest_port, ptr %3, align 4
  br label %sw.bb18

sw.bb18:                                          ; preds = %sw.bb15, %entry.sw.bb18_crit_edge
  %6 = getelementptr inbounds %struct.mtk_foe_entry, ptr %entry1, i32 0, i32 1
  %dest_ip = getelementptr inbounds %struct.mtk_foe_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 1, i32 1
  br label %sw.epilog

land.end:                                         ; preds = %entry
  %.b84 = load i1, ptr @mtk_foe_entry_set_ipv6_tuple.__already_done, align 1
  br i1 %.b84, label %land.end.cleanup_crit_edge, label %if.then, !prof !25

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mtk_foe_entry_set_ipv6_tuple.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 266, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb18, %sw.bb
  %dest.0 = phi ptr [ %dest_ip, %sw.bb18 ], [ %tunnel_dest_ip, %sw.bb ]
  %src.0 = phi ptr [ %6, %sw.bb18 ], [ %tunnel_src_ip, %sw.bb ]
  %7 = ptrtoint ptr %src_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %src_addr, align 4
  %9 = ptrtoint ptr %src.0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %src.0, align 4
  %arrayidx.1 = getelementptr i32, ptr %src_addr, i32 1
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.1, align 4
  %arrayidx57.1 = getelementptr i32, ptr %src.0, i32 1
  %12 = ptrtoint ptr %arrayidx57.1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %arrayidx57.1, align 4
  %arrayidx.2 = getelementptr i32, ptr %src_addr, i32 2
  %13 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.2, align 4
  %arrayidx57.2 = getelementptr i32, ptr %src.0, i32 2
  %15 = ptrtoint ptr %arrayidx57.2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx57.2, align 4
  %arrayidx.3 = getelementptr i32, ptr %src_addr, i32 3
  %16 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.3, align 4
  %arrayidx57.3 = getelementptr i32, ptr %src.0, i32 3
  %18 = ptrtoint ptr %arrayidx57.3 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %arrayidx57.3, align 4
  %19 = ptrtoint ptr %dest_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dest_addr, align 4
  %21 = ptrtoint ptr %dest.0 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %dest.0, align 4
  %arrayidx61.1 = getelementptr i32, ptr %dest_addr, i32 1
  %22 = ptrtoint ptr %arrayidx61.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx61.1, align 4
  %arrayidx62.1 = getelementptr i32, ptr %dest.0, i32 1
  %24 = ptrtoint ptr %arrayidx62.1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx62.1, align 4
  %arrayidx61.2 = getelementptr i32, ptr %dest_addr, i32 2
  %25 = ptrtoint ptr %arrayidx61.2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx61.2, align 4
  %arrayidx62.2 = getelementptr i32, ptr %dest.0, i32 2
  %27 = ptrtoint ptr %arrayidx62.2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx62.2, align 4
  %arrayidx61.3 = getelementptr i32, ptr %dest_addr, i32 3
  %28 = ptrtoint ptr %arrayidx61.3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx61.3, align 4
  %arrayidx62.3 = getelementptr i32, ptr %dest.0, i32 3
  %30 = ptrtoint ptr %arrayidx62.3 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %arrayidx62.3, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then, %land.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %land.end.cleanup_crit_edge ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mtk_foe_entry_set_dsa(ptr nocapture noundef %entry1, i32 noundef %port) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %entry1, align 4
  %2 = and i32 %1, 234881024
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %2)
  %cmp.i = icmp ugt i32 %2, 67108864
  %l2.i = getelementptr inbounds %struct.mtk_foe_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 7
  %l214.i = getelementptr inbounds %struct.mtk_foe_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 2, i32 3
  %retval.0.i = select i1 %cmp.i, ptr %l2.i, ptr %l214.i
  %shl = shl nuw i32 1, %port
  %conv = trunc i32 %shl to i16
  %etype = getelementptr inbounds %struct.mtk_foe_mac_info, ptr %retval.0.i, i32 0, i32 1
  %3 = ptrtoint ptr %etype to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv, ptr %etype, align 2
  %4 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %entry1, align 4
  %and = and i32 %5, 458752
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end13, label %if.else

do.end13:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %or = or i32 %5, 65536
  %6 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or, ptr %entry1, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv18 = or i16 %conv, 256
  %7 = ptrtoint ptr %etype to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv18, ptr %etype, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end13
  %8 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %entry1, align 4
  %and20 = and i32 %9, -1048577
  store i32 %and20, ptr %entry1, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mtk_foe_entry_set_vlan(ptr nocapture noundef %entry1, i32 noundef %vid) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %entry1, align 4
  %2 = and i32 %1, 234881024
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %2)
  %cmp.i = icmp ugt i32 %2, 67108864
  %l2.i = getelementptr inbounds %struct.mtk_foe_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 7
  %l214.i = getelementptr inbounds %struct.mtk_foe_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 2, i32 3
  %retval.0.i = select i1 %cmp.i, ptr %l2.i, ptr %l214.i
  %and = lshr i32 %1, 16
  %shr = and i32 %and, 7
  %3 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %shr, label %entry.cleanup_crit_edge [
    i32 0, label %do.end28
    i32 1, label %sw.bb32
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end28:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %or31 = or i32 %1, 1114112
  %4 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or31, ptr %entry1, align 4
  %conv = trunc i32 %vid to i16
  %5 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %retval.0.i, align 4
  br label %cleanup

sw.bb32:                                          ; preds = %entry
  %and34 = and i32 %1, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool.not = icmp eq i32 %and34, 0
  %conv35 = trunc i32 %vid to i16
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv35, ptr %retval.0.i, align 4
  %etype = getelementptr inbounds %struct.mtk_foe_mac_info, ptr %retval.0.i, i32 0, i32 1
  %7 = ptrtoint ptr %etype to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %etype, align 2
  %9 = or i16 %8, 256
  store i16 %9, ptr %etype, align 2
  br label %cleanup

if.else:                                          ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #7
  %vlan2 = getelementptr inbounds %struct.mtk_foe_mac_info, ptr %retval.0.i, i32 0, i32 3
  %10 = ptrtoint ptr %vlan2 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv35, ptr %vlan2, align 4
  %11 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %entry1, align 4
  %add = add i32 %12, 65536
  store i32 %add, ptr %entry1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then, %do.end28, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end28 ], [ 0, %if.else ], [ 0, %if.then ], [ -28, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mtk_foe_entry_set_pppoe(ptr nocapture noundef %entry1, i32 noundef %sid) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %entry1, align 4
  %2 = and i32 %1, 234881024
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %2)
  %cmp.i = icmp ugt i32 %2, 67108864
  %l2.i = getelementptr inbounds %struct.mtk_foe_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 7
  %l214.i = getelementptr inbounds %struct.mtk_foe_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 2, i32 3
  %retval.0.i = select i1 %cmp.i, ptr %l2.i, ptr %l214.i
  %and = and i32 %1, 458752
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %and3 = and i32 %1, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %or.cond = and i1 %tobool.not, %tobool4.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %etype = getelementptr inbounds %struct.mtk_foe_mac_info, ptr %retval.0.i, i32 0, i32 1
  %3 = ptrtoint ptr %etype to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -30620, ptr %etype, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %entry1, align 4
  %or = or i32 %5, 524288
  store i32 %or, ptr %entry1, align 4
  %conv = trunc i32 %sid to i16
  %pppoe_id = getelementptr inbounds %struct.mtk_foe_mac_info, ptr %retval.0.i, i32 0, i32 6
  %6 = ptrtoint ptr %pppoe_id to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %pppoe_id, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_foe_entry_commit(ptr nocapture noundef readonly %ppe, ptr noundef %entry1, i16 noundef zeroext %timestamp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i16 %timestamp, 32767
  %1 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %entry1, align 4
  %and3 = and i32 %2, -32768
  %and19 = zext i16 %0 to i32
  %or = or i32 %and3, %and19
  store i32 %or, ptr %entry1, align 4
  %and.i = lshr i32 %2, 25
  %shr.i = and i32 %and.i, 7
  %3 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %shr.i, label %land.end.i [
    i32 2, label %sw.bb.i
    i32 1, label %entry.sw.bb18.i_crit_edge
    i32 0, label %entry.sw.bb18.i_crit_edge49
    i32 4, label %entry.sw.bb21.i_crit_edge
    i32 5, label %entry.sw.bb21.i_crit_edge50
  ]

entry.sw.bb21.i_crit_edge50:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb21.i

entry.sw.bb21.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb21.i

entry.sw.bb18.i_crit_edge49:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb18.i

entry.sw.bb18.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb18.i

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = getelementptr inbounds %struct.mtk_foe_entry, ptr %entry1, i32 0, i32 1
  %src_mac_lo.i = getelementptr inbounds %struct.mtk_foe_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %src_mac_lo.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %src_mac_lo.i, align 4
  %conv.i = zext i16 %6 to i32
  %src_mac_hi.i = getelementptr inbounds %struct.mtk_foe_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 0, i32 2
  %7 = ptrtoint ptr %src_mac_hi.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %src_mac_hi.i, align 4
  %shl.i = shl i32 %8, 16
  %xor132.i = or i32 %shl.i, %conv.i
  %shr15.i = lshr i32 %8, 16
  %dest_mac_lo.i = getelementptr inbounds %struct.mtk_foe_bridge, ptr %4, i32 0, i32 2
  %9 = ptrtoint ptr %dest_mac_lo.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %dest_mac_lo.i, align 2
  %conv16.i = zext i16 %10 to i32
  %xor17.i = xor i32 %shr15.i, %conv16.i
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %4, align 4
  br label %sw.epilog.i

sw.bb18.i:                                        ; preds = %entry.sw.bb18.i_crit_edge, %entry.sw.bb18.i_crit_edge49
  %13 = getelementptr inbounds %struct.mtk_foe_entry, ptr %entry1, i32 0, i32 1
  %14 = getelementptr inbounds %struct.mtk_foe_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 0, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %dest_ip.i = getelementptr inbounds %struct.mtk_foe_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 0, i32 1
  %17 = ptrtoint ptr %dest_ip.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dest_ip.i, align 4
  %19 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %13, align 4
  br label %sw.epilog.i

sw.bb21.i:                                        ; preds = %entry.sw.bb21.i_crit_edge, %entry.sw.bb21.i_crit_edge50
  %21 = getelementptr inbounds %struct.mtk_foe_entry, ptr %entry1, i32 0, i32 1
  %arrayidx.i = getelementptr %struct.mtk_foe_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i, align 4
  %dest_ip23.i = getelementptr inbounds %struct.mtk_foe_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 1, i32 1
  %arrayidx24.i = getelementptr %struct.mtk_foe_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 2
  %24 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx24.i, align 4
  %xor25.i = xor i32 %25, %23
  %26 = getelementptr inbounds %struct.mtk_foe_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %xor26.i = xor i32 %xor25.i, %28
  %arrayidx28.i = getelementptr %struct.mtk_foe_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 0, i32 2
  %29 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx28.i, align 4
  %arrayidx30.i = getelementptr %struct.mtk_foe_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 1, i32 3
  %31 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx30.i, align 4
  %xor31.i = xor i32 %32, %30
  %33 = ptrtoint ptr %dest_ip23.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dest_ip23.i, align 4
  %xor34.i = xor i32 %xor31.i, %34
  %arrayidx36.i = getelementptr %struct.mtk_foe_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 0, i32 1
  %35 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx36.i, align 4
  %arrayidx38.i = getelementptr %struct.mtk_foe_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 1, i32 2
  %37 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx38.i, align 4
  %xor39.i = xor i32 %38, %36
  %39 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %21, align 4
  %xor42.i = xor i32 %xor39.i, %40
  br label %sw.epilog.i

land.end.i:                                       ; preds = %entry
  %.b133.i = load i1, ptr @mtk_ppe_hash_entry.__already_done, align 1
  br i1 %.b133.i, label %land.end.i.mtk_ppe_hash_entry.exit_crit_edge, label %if.then.i, !prof !25

land.end.i.mtk_ppe_hash_entry.exit_crit_edge:     ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mtk_ppe_hash_entry.exit

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mtk_ppe_hash_entry.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 106, i32 noundef 9, ptr noundef null) #5
  br label %mtk_ppe_hash_entry.exit

sw.epilog.i:                                      ; preds = %sw.bb21.i, %sw.bb18.i, %sw.bb.i
  %hv3.0.i = phi i32 [ %xor42.i, %sw.bb21.i ], [ %20, %sw.bb18.i ], [ %12, %sw.bb.i ]
  %hv2.0.i = phi i32 [ %xor34.i, %sw.bb21.i ], [ %18, %sw.bb18.i ], [ %xor17.i, %sw.bb.i ]
  %hv1.0.i = phi i32 [ %xor26.i, %sw.bb21.i ], [ %16, %sw.bb18.i ], [ %xor132.i, %sw.bb.i ]
  %and81.i = and i32 %hv1.0.i, %hv2.0.i
  %neg.i = xor i32 %hv1.0.i, -1
  %and82.i = and i32 %hv3.0.i, %neg.i
  %or.i = or i32 %and81.i, %and82.i
  %or86.i = tail call i32 @llvm.fshl.i32(i32 %or.i, i32 %or.i, i32 8) #5
  %xor87.i = xor i32 %hv2.0.i, %hv3.0.i
  %xor88.i = xor i32 %xor87.i, %hv1.0.i
  %xor89.i = xor i32 %xor88.i, %or86.i
  %shr90.i = lshr i32 %xor89.i, 16
  %xor91.i = xor i32 %shr90.i, %xor89.i
  %shl92.i = shl i32 %xor91.i, 1
  %and93.i = and i32 %shl92.i, 8190
  br label %mtk_ppe_hash_entry.exit

mtk_ppe_hash_entry.exit:                          ; preds = %sw.epilog.i, %if.then.i, %land.end.i.mtk_ppe_hash_entry.exit_crit_edge
  %retval.0.i = phi i32 [ %and93.i, %sw.epilog.i ], [ 8191, %if.then.i ], [ 8191, %land.end.i.mtk_ppe_hash_entry.exit_crit_edge ]
  %foe_table = getelementptr inbounds %struct.mtk_ppe, ptr %ppe, i32 0, i32 3
  %41 = ptrtoint ptr %foe_table to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %foe_table, align 4
  %arrayidx = getelementptr %struct.mtk_foe_entry, ptr %42, i32 %retval.0.i
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %44)
  %tobool.not.i = icmp sgt i32 %44, -1
  %45 = and i32 %44, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %45)
  %cmp.i = icmp ne i32 %45, 536870912
  %46 = and i1 %tobool.not.i, %cmp.i
  br i1 %46, label %mtk_ppe_hash_entry.exit.if.end26_crit_edge, label %if.then22

mtk_ppe_hash_entry.exit.if.end26_crit_edge:       ; preds = %mtk_ppe_hash_entry.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.then22:                                        ; preds = %mtk_ppe_hash_entry.exit
  %incdec.ptr = getelementptr %struct.mtk_foe_entry, ptr %arrayidx, i32 1
  %inc = add nuw nsw i32 %retval.0.i, 1
  %47 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %incdec.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %48)
  %tobool.not.i47 = icmp sgt i32 %48, -1
  %49 = and i32 %48, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %49)
  %cmp.i48 = icmp ne i32 %49, 536870912
  %50 = and i1 %tobool.not.i47, %cmp.i48
  br i1 %50, label %if.then22.if.end26_crit_edge, label %if.then22.cleanup_crit_edge

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then22.if.end26_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.end26:                                         ; preds = %if.then22.if.end26_crit_edge, %mtk_ppe_hash_entry.exit.if.end26_crit_edge
  %hwe.0 = phi ptr [ %arrayidx, %mtk_ppe_hash_entry.exit.if.end26_crit_edge ], [ %incdec.ptr, %if.then22.if.end26_crit_edge ]
  %hash.0 = phi i32 [ %retval.0.i, %mtk_ppe_hash_entry.exit.if.end26_crit_edge ], [ %inc, %if.then22.if.end26_crit_edge ]
  %51 = getelementptr inbounds %struct.mtk_foe_entry, ptr %hwe.0, i32 0, i32 1
  %52 = getelementptr inbounds %struct.mtk_foe_entry, ptr %entry1, i32 0, i32 1
  %53 = call ptr @memcpy(ptr %51, ptr %52, i32 76)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %54 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %entry1, align 4
  %56 = ptrtoint ptr %hwe.0 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %hwe.0, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !27
  %base.i.i.i.i = getelementptr inbounds %struct.mtk_ppe, ptr %ppe, i32 0, i32 1
  %57 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %58, i32 800
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %60 = or i32 %59, 131072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %61 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i2.i.i.i = getelementptr i8, ptr %62, i32 800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i.i, i32 %60) #5, !srcloc !31
  %63 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i4.i = getelementptr i8, ptr %64, i32 800
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i4.i) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %66 = and i32 %65, -131073
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %67 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i2.i.i5.i = getelementptr i8, ptr %68, i32 800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i5.i, i32 %66) #5, !srcloc !31
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then22.cleanup_crit_edge
  %retval.0 = phi i32 [ %hash.0, %if.end26 ], [ -28, %if.then22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_ppe_init(ptr noundef %ppe, ptr noundef %dev, ptr noundef %base, i32 noundef %version) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %base1 = getelementptr inbounds %struct.mtk_ppe, ptr %ppe, i32 0, i32 1
  %0 = ptrtoint ptr %base1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %base, ptr %base1, align 4
  %1 = ptrtoint ptr %ppe to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %ppe, align 4
  %version3 = getelementptr inbounds %struct.mtk_ppe, ptr %ppe, i32 0, i32 2
  %2 = ptrtoint ptr %version3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %version, ptr %version3, align 4
  %foe_phys = getelementptr inbounds %struct.mtk_ppe, ptr %ppe, i32 0, i32 4
  %call.i = tail call ptr @dmam_alloc_attrs(ptr noundef %dev, i32 noundef 655360, ptr noundef %foe_phys, i32 noundef 3264, i32 noundef 0) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %foe_table = getelementptr inbounds %struct.mtk_ppe, ptr %ppe, i32 0, i32 3
  %3 = ptrtoint ptr %foe_table to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %foe_table, align 4
  %call5 = tail call i32 @mtk_ppe_debugfs_init(ptr noundef %ppe) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_ppe_debugfs_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_ppe_start(ptr nocapture noundef readonly %ppe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %foe_table.i = getelementptr inbounds %struct.mtk_ppe, ptr %ppe, i32 0, i32 3
  %0 = ptrtoint ptr %foe_table.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %foe_table.i, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 32768)
  %foe_phys = getelementptr inbounds %struct.mtk_ppe, ptr %ppe, i32 0, i32 4
  %3 = ptrtoint ptr %foe_phys to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %foe_phys, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  %base.i = getelementptr inbounds %struct.mtk_ppe, ptr %ppe, i32 0, i32 1
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #5, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr.i253 = getelementptr i8, ptr %9, i32 540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i253, i32 -1152450048) #5, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr.i255 = getelementptr i8, ptr %11, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i255, i32 -1) #5, !srcloc !31
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %13, i32 800
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i.i) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %15 = or i32 %14, 131072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %add.ptr.i2.i.i.i.i = getelementptr i8, ptr %17, i32 800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i.i.i, i32 %15) #5, !srcloc !31
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i.i4.i.i = getelementptr i8, ptr %19, i32 800
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i4.i.i) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %21 = and i32 %20, -131073
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 4
  %add.ptr.i2.i.i5.i.i = getelementptr i8, ptr %23, i32 800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i5.i.i, i32 %21) #5, !srcloc !31
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %25, i32 800
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %27 = or i32 %26, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %28 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %29, i32 800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %27) #5, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %30 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i, align 4
  %add.ptr.i257 = getelementptr i8, ptr %31, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i257, i32 -1057553920) #5, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %32 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i, align 4
  %add.ptr.i259 = getelementptr i8, ptr %33, i32 568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i259, i32 50391043) #5, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %34 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i, align 4
  %add.ptr.i261 = getelementptr i8, ptr %35, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i261, i32 201326848) #5, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %36 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i, align 4
  %add.ptr.i263 = getelementptr i8, ptr %37, i32 576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i263, i32 117440768) #5, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %38 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i, align 4
  %add.ptr.i265 = getelementptr i8, ptr %39, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i265, i32 -12583105) #5, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %40 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i, align 4
  %add.ptr.i267 = getelementptr i8, ptr %41, i32 560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i267, i32 -12648192) #5, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %42 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i, align 4
  %add.ptr.i269 = getelementptr i8, ptr %43, i32 552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i269, i32 503316736) #5, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %44 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i, align 4
  %add.ptr.i271 = getelementptr i8, ptr %45, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i271, i32 218234880) #5, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %46 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i, align 4
  %add.ptr.i273 = getelementptr i8, ptr %47, i32 584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i273, i32 0) #5, !srcloc !31
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_ppe_stop(ptr nocapture noundef readonly %ppe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %foe_table = getelementptr inbounds %struct.mtk_ppe, ptr %ppe, i32 0, i32 3
  br label %do.end12

do.end12:                                         ; preds = %do.end12.do.end12_crit_edge, %entry
  %i.030 = phi i32 [ 0, %entry ], [ %inc, %do.end12.do.end12_crit_edge ]
  %0 = ptrtoint ptr %foe_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %foe_table, align 4
  %arrayidx = getelementptr %struct.mtk_foe_entry, ptr %1, i32 %i.030
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.030, 1
  %exitcond.not = icmp eq i32 %inc, 8192
  br i1 %exitcond.not, label %for.end, label %do.end12.do.end12_crit_edge

do.end12.do.end12_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end12

for.end:                                          ; preds = %do.end12
  %base.i.i.i.i.i = getelementptr inbounds %struct.mtk_ppe, ptr %ppe, i32 0, i32 1
  %3 = ptrtoint ptr %base.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %4, i32 800
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i.i) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %6 = or i32 %5, 131072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %7 = ptrtoint ptr %base.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i.i.i.i.i, align 4
  %add.ptr.i2.i.i.i.i = getelementptr i8, ptr %8, i32 800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i.i.i, i32 %6) #5, !srcloc !31
  %9 = ptrtoint ptr %base.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i.i.i.i.i, align 4
  %add.ptr.i.i.i4.i.i = getelementptr i8, ptr %10, i32 800
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i4.i.i) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %12 = and i32 %11, -131073
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %13 = ptrtoint ptr %base.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i.i.i.i.i, align 4
  %add.ptr.i2.i.i5.i.i = getelementptr i8, ptr %14, i32 800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i5.i.i, i32 %12) #5, !srcloc !31
  %15 = ptrtoint ptr %base.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i.i.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %16, i32 800
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %18 = and i32 %17, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %19 = ptrtoint ptr %base.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i.i.i.i.i, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %20, i32 800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %18) #5, !srcloc !31
  %21 = ptrtoint ptr %base.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i.i.i.i.i, align 4
  %add.ptr.i.i.i22 = getelementptr i8, ptr %22, i32 512
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i22) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %24 = and i32 %23, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %25 = ptrtoint ptr %base.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i.i.i.i.i, align 4
  %add.ptr.i2.i.i23 = getelementptr i8, ptr %26, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i23, i32 %24) #5, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %27 = ptrtoint ptr %base.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i.i.i.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %28, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #5, !srcloc !31
  %29 = ptrtoint ptr %base.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i.i.i.i.i, align 4
  %add.ptr.i.i.i25 = getelementptr i8, ptr %30, i32 540
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i25) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %32 = and i32 %31, 2146500607
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %33 = ptrtoint ptr %base.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i.i.i.i.i, align 4
  %add.ptr.i2.i.i27 = getelementptr i8, ptr %34, i32 540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i27, i32 %32) #5, !srcloc !31
  %call.i = tail call i64 @ktime_get() #5
  %add.i.i = add i64 %call.i, 1000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 51) #5
  %35 = ptrtoint ptr %base.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i.i.i.i.i, align 4
  %add.ptr49.i = getelementptr i8, ptr %36, i32 512
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49.i) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  %.mask50.i = and i32 %37, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask50.i)
  %tobool.not51.i = icmp eq i32 %.mask50.i, 0
  br i1 %tobool.not51.i, label %for.end.mtk_ppe_wait_busy.exit_crit_edge, label %for.end.land.lhs.true.i_crit_edge

for.end.land.lhs.true.i_crit_edge:                ; preds = %for.end
  br label %land.lhs.true.i

for.end.mtk_ppe_wait_busy.exit_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %mtk_ppe_wait_busy.exit

land.lhs.true.i:                                  ; preds = %if.then26.i.land.lhs.true.i_crit_edge, %for.end.land.lhs.true.i_crit_edge
  %call13.i = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call13.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call13.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %if.then26.i

if.then26.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 6, i32 noundef 20, i32 noundef 2) #5
  %38 = ptrtoint ptr %base.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i.i.i.i.i, align 4
  %add.ptr.i29 = getelementptr i8, ptr %39, i32 512
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  %.mask.i = and i32 %40, 128
  %tobool.not.i = icmp eq i32 %.mask.i, 0
  br i1 %tobool.not.i, label %if.then26.i.mtk_ppe_wait_busy.exit_crit_edge, label %if.then26.i.land.lhs.true.i_crit_edge

if.then26.i.land.lhs.true.i_crit_edge:            ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i

if.then26.i.mtk_ppe_wait_busy.exit_crit_edge:     ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mtk_ppe_wait_busy.exit

for.end.i:                                        ; preds = %land.lhs.true.i
  %41 = ptrtoint ptr %base.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i.i.i.i.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %42, i32 512
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  %.mask47.i = and i32 %43, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask47.i)
  %tobool30.not.i = icmp eq i32 %.mask47.i, 0
  br i1 %tobool30.not.i, label %for.end.i.mtk_ppe_wait_busy.exit_crit_edge, label %do.end35.i

for.end.i.mtk_ppe_wait_busy.exit_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mtk_ppe_wait_busy.exit

do.end35.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %ppe to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ppe, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.1) #8
  br label %mtk_ppe_wait_busy.exit

mtk_ppe_wait_busy.exit:                           ; preds = %do.end35.i, %for.end.i.mtk_ppe_wait_busy.exit_crit_edge, %if.then26.i.mtk_ppe_wait_busy.exit_crit_edge, %for.end.mtk_ppe_wait_busy.exit_crit_edge
  %cond.i = phi i32 [ -110, %do.end35.i ], [ 0, %for.end.i.mtk_ppe_wait_busy.exit_crit_edge ], [ 0, %for.end.mtk_ppe_wait_busy.exit_crit_edge ], [ 0, %if.then26.i.mtk_ppe_wait_busy.exit_crit_edge ]
  ret i32 %cond.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !13, !14, !15}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mediatek/mtk_ppe.c", i32 227, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"__already_done", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/mediatek/mtk_ppe.c", i32 266, i32 3}
!5 = distinct !{null, !6, !"__already_done", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/mediatek/mtk_ppe.c", i32 106, i32 4}
!7 = distinct !{null, !8, !"skip", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/mediatek/mtk_ppe.c", i32 395, i32 18}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/mediatek/mtk_ppe.c", i32 54, i32 3}
!11 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @mtk_ppe_wait_busy._entry, !10, !"_entry", i1 false, i1 false}
!15 = !{ptr @mtk_ppe_wait_busy._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{!"branch_weights", i32 2000, i32 1}
!26 = !{i64 2156847759}
!27 = !{i64 2156847855}
!28 = !{i64 1256801}
!29 = !{i64 2156112856}
!30 = !{i64 2156112205}
!31 = !{i64 1256383}
!32 = !{i64 2156114635}
!33 = !{i64 2156115121}
