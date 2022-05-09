; ModuleID = '/llk/IR_all_yes/net/ethtool/tsinfo.c_pt.bc'
source_filename = "../net/ethtool/tsinfo.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nla_policy = type { i8, i8, i16, %union.anon }
%union.anon = type { i32 }
%struct.ethnl_request_ops = type { i8, i8, i16, i32, i32, i8, ptr, ptr, ptr, ptr, ptr }
%struct.tsinfo_reply_data = type { %struct.ethnl_reply_data, %struct.ethtool_ts_info }
%struct.ethnl_reply_data = type { ptr }
%struct.ethtool_ts_info = type { i32, i32, i32, i32, [3 x i32], i32, [3 x i32] }
%struct.ethnl_req_info = type { ptr, ptr, i32 }

@ethnl_header_policy = external dso_local constant [4 x %struct.nla_policy], align 4
@ethnl_tsinfo_get_policy = dso_local constant { <{ %struct.nla_policy, { i8, i8, i16, { ptr } } }>, [16 x i8] } { <{ %struct.nla_policy, { i8, i8, i16, { ptr } } }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 3, { ptr } { ptr @ethnl_header_policy } } }>, [16 x i8] zeroinitializer }, align 32
@ethnl_tsinfo_request_ops = dso_local constant { %struct.ethnl_request_ops, [60 x i8] } { %struct.ethnl_request_ops { i8 25, i8 26, i16 1, i32 12, i32 48, i8 0, ptr null, ptr @tsinfo_prepare_data, ptr @tsinfo_reply_size, ptr @tsinfo_fill_reply, ptr null }, [60 x i8] zeroinitializer }, align 32
@sof_timestamping_names = external dso_local constant [0 x [32 x i8]], align 1
@ts_tx_type_names = external dso_local constant [0 x [32 x i8]], align 1
@ts_rx_filter_names = external dso_local constant [0 x [32 x i8]], align 1
@___asan_gen_.1 = private unnamed_addr constant [24 x i8] c"ethnl_tsinfo_get_policy\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 21, i32 25 }
@___asan_gen_.4 = private unnamed_addr constant [25 x i8] c"ethnl_tsinfo_request_ops\00", align 1
@___asan_gen_.5 = private constant [24 x i8] c"../net/ethtool/tsinfo.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 126, i32 32 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @ethnl_tsinfo_get_policy, ptr @ethnl_tsinfo_request_ops], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_tsinfo_get_policy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_tsinfo_request_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsinfo_prepare_data(ptr nocapture noundef readnone %req_base, ptr noundef %reply_base, ptr nocapture noundef readnone %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reply_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reply_base, align 4
  %call = tail call i32 @ethnl_ops_begin(ptr noundef %1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %ts_info = getelementptr inbounds %struct.tsinfo_reply_data, ptr %reply_base, i32 0, i32 1
  %call2 = tail call i32 @__ethtool_get_ts_info(ptr noundef %1, ptr noundef %ts_info) #3
  tail call void @ethnl_ops_complete(ptr noundef %1) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsinfo_reply_size(ptr nocapture noundef readonly %req_base, ptr noundef %reply_base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ethnl_req_info, ptr %req_base, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %so_timestamping = getelementptr inbounds %struct.tsinfo_reply_data, ptr %reply_base, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %so_timestamping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %so_timestamping, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool8.not = icmp eq i32 %3, 0
  br i1 %tobool8.not, label %entry.if.end12_crit_edge, label %if.then

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end12

if.then:                                          ; preds = %entry
  %call = tail call i32 @ethnl_bitset32_size(ptr noundef %so_timestamping, ptr noundef null, i32 noundef 16, ptr noundef nonnull @sof_timestamping_names, i1 noundef zeroext %tobool) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.then.if.end12_crit_edge

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end12

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end12:                                         ; preds = %if.then.if.end12_crit_edge, %entry.if.end12_crit_edge
  %len.0 = phi i32 [ 0, %entry.if.end12_crit_edge ], [ %call, %if.then.if.end12_crit_edge ]
  %tx_types = getelementptr inbounds %struct.tsinfo_reply_data, ptr %reply_base, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %tx_types to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_types, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool13.not = icmp eq i32 %5, 0
  br i1 %tobool13.not, label %if.end12.if.end22_crit_edge, label %if.then14

if.end12.if.end22_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end22

if.then14:                                        ; preds = %if.end12
  %call17 = tail call i32 @ethnl_bitset32_size(ptr noundef %tx_types, ptr noundef null, i32 noundef 4, ptr noundef nonnull @ts_tx_type_names, i1 noundef zeroext %tobool) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then14.cleanup_crit_edge, label %if.end20

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end20:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #5
  %add21 = add nuw i32 %call17, %len.0
  br label %if.end22

if.end22:                                         ; preds = %if.end20, %if.end12.if.end22_crit_edge
  %len.1 = phi i32 [ %add21, %if.end20 ], [ %len.0, %if.end12.if.end22_crit_edge ]
  %rx_filters = getelementptr inbounds %struct.tsinfo_reply_data, ptr %reply_base, i32 0, i32 1, i32 5
  %6 = ptrtoint ptr %rx_filters to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_filters, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool23.not = icmp eq i32 %7, 0
  br i1 %tobool23.not, label %if.end22.if.end32_crit_edge, label %if.then24

if.end22.if.end32_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end32

if.then24:                                        ; preds = %if.end22
  %call27 = tail call i32 @ethnl_bitset32_size(ptr noundef %rx_filters, ptr noundef null, i32 noundef 16, ptr noundef nonnull @ts_rx_filter_names, i1 noundef zeroext %tobool) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.then24.cleanup_crit_edge, label %if.end30

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end30:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #5
  %add31 = add i32 %call27, %len.1
  br label %if.end32

if.end32:                                         ; preds = %if.end30, %if.end22.if.end32_crit_edge
  %len.2 = phi i32 [ %add31, %if.end30 ], [ %len.1, %if.end22.if.end32_crit_edge ]
  %phc_index = getelementptr inbounds %struct.tsinfo_reply_data, ptr %reply_base, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %phc_index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %phc_index, align 4
  %add36 = add i32 %len.2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp3362 = icmp slt i32 %9, 0
  %spec.select = select i1 %cmp3362, i32 %len.2, i32 %add36
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.then24.cleanup_crit_edge, %if.then14.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup_crit_edge ], [ %call17, %if.then14.cleanup_crit_edge ], [ %call27, %if.then24.cleanup_crit_edge ], [ %spec.select, %if.end32 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsinfo_fill_reply(ptr noundef %skb, ptr nocapture noundef readonly %req_base, ptr noundef %reply_base) #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ethnl_req_info, ptr %req_base, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %so_timestamping = getelementptr inbounds %struct.tsinfo_reply_data, ptr %reply_base, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %so_timestamping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %so_timestamping, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6

if.then:                                          ; preds = %entry
  %call = tail call i32 @ethnl_put_bitset32(ptr noundef %skb, i32 noundef 2, ptr noundef %so_timestamping, ptr noundef null, i32 noundef 16, ptr noundef nonnull @sof_timestamping_names, i1 noundef zeroext %tobool) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %tx_types = getelementptr inbounds %struct.tsinfo_reply_data, ptr %reply_base, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %tx_types to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_types, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool7.not = icmp eq i32 %5, 0
  br i1 %tobool7.not, label %if.end6.if.end15_crit_edge, label %if.then8

if.end6.if.end15_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end15

if.then8:                                         ; preds = %if.end6
  %call11 = tail call i32 @ethnl_put_bitset32(ptr noundef %skb, i32 noundef 3, ptr noundef %tx_types, ptr noundef null, i32 noundef 4, ptr noundef nonnull @ts_tx_type_names, i1 noundef zeroext %tobool) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then8.cleanup_crit_edge, label %if.then8.if.end15_crit_edge

if.then8.if.end15_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end15

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end15:                                         ; preds = %if.then8.if.end15_crit_edge, %if.end6.if.end15_crit_edge
  %rx_filters = getelementptr inbounds %struct.tsinfo_reply_data, ptr %reply_base, i32 0, i32 1, i32 5
  %6 = ptrtoint ptr %rx_filters to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_filters, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool16.not = icmp eq i32 %7, 0
  br i1 %tobool16.not, label %if.end15.if.end24_crit_edge, label %if.then17

if.end15.if.end24_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end24

if.then17:                                        ; preds = %if.end15
  %call20 = tail call i32 @ethnl_put_bitset32(ptr noundef %skb, i32 noundef 4, ptr noundef %rx_filters, ptr noundef null, i32 noundef 16, ptr noundef nonnull @ts_rx_filter_names, i1 noundef zeroext %tobool) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then17.cleanup_crit_edge, label %if.then17.if.end24_crit_edge

if.then17.if.end24_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end24

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end24:                                         ; preds = %if.then17.if.end24_crit_edge, %if.end15.if.end24_crit_edge
  %phc_index = getelementptr inbounds %struct.tsinfo_reply_data, ptr %reply_base, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %phc_index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %phc_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp25 = icmp sgt i32 %9, -1
  br i1 %cmp25, label %land.lhs.true, label %if.end24.if.end30_crit_edge

if.end24.if.end30_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end30

land.lhs.true:                                    ; preds = %if.end24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #3
  %10 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool28.not = icmp eq i32 %call.i, 0
  br i1 %tobool28.not, label %land.lhs.true.if.end30_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end30

if.end30:                                         ; preds = %land.lhs.true.if.end30_crit_edge, %if.end24.if.end30_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %land.lhs.true.cleanup_crit_edge, %if.then17.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end30 ], [ %call, %if.then.cleanup_crit_edge ], [ %call11, %if.then8.cleanup_crit_edge ], [ %call20, %if.then17.cleanup_crit_edge ], [ -90, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_ops_begin(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ethtool_get_ts_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethnl_ops_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_bitset32_size(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_put_bitset32(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @ethnl_tsinfo_get_policy, !1, !"ethnl_tsinfo_get_policy", i1 false, i1 false}
!1 = !{!"../net/ethtool/tsinfo.c", i32 21, i32 25}
!2 = !{ptr @ethnl_tsinfo_request_ops, !3, !"ethnl_tsinfo_request_ops", i1 false, i1 false}
!3 = !{!"../net/ethtool/tsinfo.c", i32 126, i32 32}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
