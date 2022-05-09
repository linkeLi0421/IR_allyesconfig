; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/brcm80211/brcmfmac/vendor.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/brcm80211/brcmfmac/vendor.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.wiphy_vendor_command = type { %struct.nl80211_vendor_cmd_info, i32, ptr, ptr, ptr, i32 }
%struct.nl80211_vendor_cmd_info = type { i32, i32 }
%struct.brcmf_if = type { ptr, ptr, ptr, %struct.work_struct, %struct.work_struct, ptr, i32, i32, [6 x i8], i8, %struct.spinlock, %struct.atomic_t, %struct.wait_queue_head, [8 x %struct.in6_addr], i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.in6_addr = type { %union.anon.39 }
%union.anon.39 = type { [4 x i32] }
%struct.brcmf_vndr_dcmd_hdr = type { i32, i32, i32, i32, i32 }

@brcmf_vendor_cmds = dso_local constant { [1 x %struct.wiphy_vendor_command], [36 x i8] } { [1 x %struct.wiphy_vendor_command] [%struct.wiphy_vendor_command { %struct.nl80211_vendor_cmd_info { i32 4120, i32 1 }, i32 3, ptr @brcmf_cfg80211_vndr_cmds_dcmd_handler, ptr null, ptr inttoptr (i32 -61 to ptr), i32 0 }], [36 x i8] zeroinitializer }, align 32
@__func__.brcmf_cfg80211_vndr_cmds_dcmd_handler = private unnamed_addr constant [38 x i8] c"brcmf_cfg80211_vndr_cmds_dcmd_handler\00", align 1
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"vendor command too short: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ifidx=%d, cmd=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bad buffer offset %d > %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"oversize input buffer %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"oversize return buffer %d\0A\00", [37 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [18 x i8] c"brcmf_vendor_cmds\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 107, i32 35 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 33, i32 3 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 40, i32 2 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 43, i32 3 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 51, i32 4 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private constant [61 x i8] c"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/vendor.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 55, i32 4 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @brcmf_vendor_cmds, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_vendor_cmds to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_cfg80211_vndr_cmds_dcmd_handler(ptr noundef %wiphy, ptr nocapture noundef readonly %wdev, ptr nocapture noundef readonly %data, i32 noundef %len) #0 align 64 {
entry:
  %tmp.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %len)
  %cmp = icmp ult i32 %len, 20
  br i1 %cmp, label %do.body, label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_cfg80211_vndr_cmds_dcmd_handler, ptr noundef nonnull @.str, i32 noundef %len) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %wdev, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %ifidx = getelementptr inbounds %struct.brcmf_if, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %ifidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ifidx, align 4
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_cfg80211_vndr_cmds_dcmd_handler, ptr noundef nonnull @.str.1, i32 noundef %3, i32 noundef %5) #5
  %offset = getelementptr inbounds %struct.brcmf_vndr_dcmd_hdr, ptr %data, i32 0, i32 2
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %len)
  %cmp5 = icmp ugt i32 %7, %len
  br i1 %cmp5, label %do.body7, label %if.end11

do.body7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_cfg80211_vndr_cmds_dcmd_handler, ptr noundef nonnull @.str.2, i32 noundef %7, i32 noundef %len) #5
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %sub = sub i32 %len, %7
  %len13 = getelementptr inbounds %struct.brcmf_vndr_dcmd_hdr, ptr %data, i32 0, i32 1
  %8 = ptrtoint ptr %len13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp14.not = icmp ne i32 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp15 = icmp sgt i32 %sub, 0
  %or.cond = select i1 %cmp14.not, i1 true, i1 %cmp15
  br i1 %or.cond, label %if.then16, label %if.end11.if.end37_crit_edge

if.end11.if.end37_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %sub)
  %cmp17 = icmp sgt i32 %sub, 8192
  br i1 %cmp17, label %do.body19, label %if.then16.if.end22_crit_edge

if.then16.if.end22_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

do.body19:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_cfg80211_vndr_cmds_dcmd_handler, ptr noundef nonnull @.str.3, i32 noundef %sub) #5
  br label %if.end22

if.end22:                                         ; preds = %do.body19, %if.then16.if.end22_crit_edge
  %len.addr.0 = phi i32 [ 8192, %do.body19 ], [ %sub, %if.then16.if.end22_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %9)
  %cmp23 = icmp ugt i32 %9, 8192
  br i1 %cmp23, label %do.body25, label %if.end22.if.end28_crit_edge

if.end22.if.end28_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

do.body25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_cfg80211_vndr_cmds_dcmd_handler, ptr noundef nonnull @.str.4, i32 noundef %9) #5
  br label %if.end28

if.end28:                                         ; preds = %do.body25, %if.end22.if.end28_crit_edge
  %ret_len.0 = phi i32 [ 8192, %do.body25 ], [ %9, %if.end22.if.end28_crit_edge ]
  %10 = tail call i32 @llvm.umax.i32(i32 %ret_len.0, i32 %len.addr.0)
  %add = add nsw i32 %10, 1
  %call = tail call noalias ptr @vzalloc(i32 noundef %add) #8
  %cmp31 = icmp eq ptr %call, null
  br i1 %cmp31, label %if.end28.cleanup_crit_edge, label %if.end33

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end33:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %offset, align 4
  %add.ptr35 = getelementptr i8, ptr %data, i32 %12
  %13 = call ptr @memcpy(ptr %call, ptr %add.ptr35, i32 %len.addr.0)
  %add.ptr36 = getelementptr i8, ptr %call, i32 %len.addr.0
  %14 = ptrtoint ptr %add.ptr36 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %add.ptr36, align 1
  br label %if.end37

if.end37:                                         ; preds = %if.end33, %if.end11.if.end37_crit_edge
  %ret_len.1 = phi i32 [ %ret_len.0, %if.end33 ], [ 0, %if.end11.if.end37_crit_edge ]
  %dcmd_buf.0 = phi ptr [ %call, %if.end33 ], [ null, %if.end11.if.end37_crit_edge ]
  %set = getelementptr inbounds %struct.brcmf_vndr_dcmd_hdr, ptr %data, i32 0, i32 3
  %15 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %set, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data, align 4
  br i1 %tobool.not, label %if.else, label %if.then38

if.then38:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  %call40 = tail call i32 @brcmf_fil_cmd_data_set(ptr noundef %1, i32 noundef %18, ptr noundef %dcmd_buf.0, i32 noundef %ret_len.1) #5
  br label %if.end43

if.else:                                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  %call42 = tail call i32 @brcmf_fil_cmd_data_get(ptr noundef %1, i32 noundef %18, ptr noundef %dcmd_buf.0, i32 noundef %ret_len.1) #5
  br label %if.end43

if.end43:                                         ; preds = %if.else, %if.then38
  %ret.0 = phi i32 [ %call40, %if.then38 ], [ %call42, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp44.not = icmp eq i32 %ret.0, 0
  br i1 %cmp44.not, label %while.cond.preheader, label %if.end43.exit_crit_edge

if.end43.exit_crit_edge:                          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

while.cond.preheader:                             ; preds = %if.end43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret_len.1)
  %cmp47.not143 = icmp eq i32 %ret_len.1, 0
  br i1 %cmp47.not143, label %while.cond.preheader.exit_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.exit_crit_edge:              ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

while.body:                                       ; preds = %if.end76.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %wr_pointer.0145 = phi ptr [ %add.ptr78, %if.end76.while.body_crit_edge ], [ %dcmd_buf.0, %while.cond.preheader.while.body_crit_edge ]
  %ret_len.2144 = phi i32 [ %sub57, %if.end76.while.body_crit_edge ], [ %ret_len.1, %while.cond.preheader.while.body_crit_edge ]
  %19 = call i32 @llvm.umin.i32(i32 %ret_len.2144, i32 3840)
  %conv55 = trunc i32 %19 to i16
  %sub57 = sub i32 %ret_len.2144, %19
  %add59 = add nuw nsw i32 %19, 2
  %call.i = call ptr @__cfg80211_alloc_reply_skb(ptr noundef %wiphy, i32 noundef 103, i32 noundef 197, i32 noundef %add59) #5
  %cmp61 = icmp eq ptr %call.i, null
  br i1 %cmp61, label %while.body.exit_crit_edge, label %if.end64

while.body.exit_crit_edge:                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end64:                                         ; preds = %while.body
  %call66 = call i32 @nla_put(ptr noundef nonnull %call.i, i32 noundef 2, i32 noundef %19, ptr noundef %wr_pointer.0145) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %lor.lhs.false68, label %if.end64.if.then71_crit_edge

if.end64.if.then71_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then71

lor.lhs.false68:                                  ; preds = %if.end64
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #5
  %20 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv55, ptr %tmp.i, align 2
  %call.i142 = call i32 @nla_put(ptr noundef nonnull %call.i, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %tmp.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i142)
  %tobool70.not = icmp eq i32 %call.i142, 0
  br i1 %tobool70.not, label %if.end72, label %lor.lhs.false68.if.then71_crit_edge

lor.lhs.false68.if.then71_crit_edge:              ; preds = %lor.lhs.false68
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then71

if.then71:                                        ; preds = %lor.lhs.false68.if.then71_crit_edge, %if.end64.if.then71_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #5
  br label %exit

if.end72:                                         ; preds = %lor.lhs.false68
  %call73 = call i32 @cfg80211_vendor_cmd_reply(ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end76, label %if.end72.exit_crit_edge

if.end72.exit_crit_edge:                          ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end76:                                         ; preds = %if.end72
  %add.ptr78 = getelementptr i8, ptr %wr_pointer.0145, i32 %19
  %cmp47.not = icmp eq i32 %sub57, 0
  br i1 %cmp47.not, label %if.end76.exit_crit_edge, label %if.end76.while.body_crit_edge

if.end76.while.body_crit_edge:                    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end76.exit_crit_edge:                          ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

exit:                                             ; preds = %if.end76.exit_crit_edge, %if.end72.exit_crit_edge, %if.then71, %while.body.exit_crit_edge, %while.cond.preheader.exit_crit_edge, %if.end43.exit_crit_edge
  %ret.2 = phi i32 [ %ret.0, %if.end43.exit_crit_edge ], [ -105, %if.then71 ], [ 0, %while.cond.preheader.exit_crit_edge ], [ %call73, %if.end72.exit_crit_edge ], [ 0, %if.end76.exit_crit_edge ], [ -12, %while.body.exit_crit_edge ]
  call void @vfree(ptr noundef %dcmd_buf.0) #5
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.end28.cleanup_crit_edge, %do.body7, %do.body
  %retval.0 = phi i32 [ -22, %do.body ], [ -22, %do.body7 ], [ %ret.2, %exit ], [ -12, %if.end28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brcmf_err(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brcmf_dbg(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_cmd_data_set(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_cmd_data_get(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_vendor_cmd_reply(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__cfg80211_alloc_reply_skb(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

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
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @brcmf_vendor_cmds, !1, !"brcmf_vendor_cmds", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/vendor.c", i32 107, i32 35}
!2 = !{ptr @__func__.brcmf_cfg80211_vndr_cmds_dcmd_handler, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/vendor.c", i32 33, i32 3}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/vendor.c", i32 40, i32 2}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/vendor.c", i32 43, i32 3}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/vendor.c", i32 51, i32 4}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/vendor.c", i32 55, i32 4}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
