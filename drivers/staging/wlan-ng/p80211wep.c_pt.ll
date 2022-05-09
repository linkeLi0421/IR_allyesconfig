; ModuleID = '/llk/IR_all_yes/drivers/staging/wlan-ng/p80211wep.c_pt.bc'
source_filename = "../drivers/staging/wlan-ng/p80211wep.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.wlandevice = type { ptr, [16 x i8], ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [6 x i8], %struct.p80211pstr32, i32, i32, [4 x [32 x i8]], [4 x i8], i32, i32, ptr, %struct.tasklet_struct, %struct.sk_buff_head, %struct.p80211_frmrx, %struct.iw_statistics, i8, [8 x [6 x i8]], [8 x %struct.iw_quality] }
%struct.p80211pstr32 = type { i8, [32 x i8] }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.114, i32 }
%struct.atomic_t = type { i32 }
%union.anon.114 = type { ptr }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.p80211_frmrx = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iw_statistics = type { i16, %struct.iw_quality, %struct.iw_discarded, %struct.iw_missed }
%struct.iw_quality = type { i8, i8, i8, i8 }
%struct.iw_discarded = type { i32, i32, i32, i32, i32 }
%struct.iw_missed = type { i32 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @wep_change_key(ptr nocapture noundef writeonly %wlandev, i32 noundef %keynum, ptr noundef readonly %key, i32 noundef %keylen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %keylen)
  %0 = icmp ugt i32 %keylen, 31
  %tobool.not = icmp eq ptr %key, null
  %or.cond21 = or i1 %tobool.not, %0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %keynum)
  %1 = icmp ugt i32 %keynum, 3
  %2 = or i1 %1, %or.cond21
  br i1 %2, label %entry.return_crit_edge, label %if.end11

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = trunc i32 %keylen to i8
  %arrayidx = getelementptr %struct.wlandevice, ptr %wlandev, i32 0, i32 23, i32 %keynum
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %arrayidx, align 1
  %arrayidx12 = getelementptr %struct.wlandevice, ptr %wlandev, i32 0, i32 22, i32 %keynum
  %4 = call ptr @memcpy(ptr %arrayidx12, ptr %key, i32 %keylen)
  br label %return

return:                                           ; preds = %if.end11, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wep_decrypt(ptr nocapture noundef readonly %wlandev, ptr noundef %buf, i32 noundef %len, i32 noundef %key_override, ptr nocapture noundef readonly %iv, ptr nocapture noundef readonly %icv) local_unnamed_addr #1 align 64 {
entry:
  %s = alloca [256 x i8], align 1
  %key = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %s) #7
  %0 = call ptr @memset(ptr %s, i32 255, i32 256)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %key) #7
  %1 = getelementptr inbounds i8, ptr %key, i32 3
  %2 = call ptr @memset(ptr %1, i32 255, i32 61)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp = icmp eq i32 %len, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %iv to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %iv, align 1
  %5 = ptrtoint ptr %key to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %key, align 1
  %arrayidx2 = getelementptr i8, ptr %iv, i32 1
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx2, align 1
  %arrayidx3 = getelementptr inbounds [64 x i8], ptr %key, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %arrayidx3, align 1
  %arrayidx4 = getelementptr i8, ptr %iv, i32 2
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx4, align 1
  %arrayidx5 = getelementptr inbounds [64 x i8], ptr %key, i32 0, i32 2
  %11 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %arrayidx5, align 1
  %arrayidx6 = getelementptr i8, ptr %iv, i32 3
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx6, align 1
  %14 = lshr i8 %13, 6
  %conv11 = trunc i32 %key_override to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %key_override)
  %cmp8174 = icmp slt i32 %key_override, 0
  %spec.select = select i1 %cmp8174, i8 %14, i8 %conv11
  %conv13 = zext i8 %spec.select to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %spec.select)
  %cmp14 = icmp ugt i8 %spec.select, 3
  br i1 %cmp14, label %if.end.cleanup_crit_edge, label %if.end17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %arrayidx18 = getelementptr %struct.wlandevice, ptr %wlandev, i32 0, i32 23, i32 %conv13
  %15 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp20 = icmp eq i8 %16, 0
  br i1 %cmp20, label %if.end17.cleanup_crit_edge, label %if.end23

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %if.end17
  %conv19 = zext i8 %16 to i32
  %add.ptr = getelementptr inbounds i8, ptr %key, i32 3
  %arrayidx25 = getelementptr %struct.wlandevice, ptr %wlandev, i32 0, i32 22, i32 %conv13
  %17 = call ptr @memcpy(ptr %add.ptr, ptr %arrayidx25, i32 %conv19)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end23
  %i.0176 = phi i32 [ 0, %if.end23 ], [ %inc, %for.body.for.body_crit_edge ]
  %conv29 = trunc i32 %i.0176 to i8
  %arrayidx30 = getelementptr [256 x i8], ptr %s, i32 0, i32 %i.0176
  %18 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv29, ptr %arrayidx30, align 1
  %inc = add nuw nsw i32 %i.0176, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.body34.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body34.preheader:                             ; preds = %for.body
  %add = add nuw nsw i32 %conv19, 3
  br label %for.body34

for.body34:                                       ; preds = %for.body34.for.body34_crit_edge, %for.body34.preheader
  %i.1178 = phi i32 [ %inc43, %for.body34.for.body34_crit_edge ], [ 0, %for.body34.preheader ]
  %j.0177 = phi i32 [ %i.1178, %for.body34.for.body34_crit_edge ], [ 0, %for.body34.preheader ]
  %arrayidx35 = getelementptr [256 x i8], ptr %s, i32 0, i32 %i.1178
  %19 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx35, align 1
  %conv36 = zext i8 %20 to i32
  %add37 = add nuw nsw i32 %j.0177, %conv36
  %rem = urem i32 %i.1178, %add
  %arrayidx38 = getelementptr [64 x i8], ptr %key, i32 0, i32 %rem
  %21 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx38, align 1
  %conv39 = zext i8 %22 to i32
  %add40 = add nuw nsw i32 %add37, %conv39
  %and41 = and i32 %add40, 255
  %inc43 = add nuw nsw i32 %and41, 1
  %cmp32.not = icmp eq i32 %and41, 255
  br i1 %cmp32.not, label %for.body34.for.body48_crit_edge, label %for.body34.for.body34_crit_edge

for.body34.for.body34_crit_edge:                  ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body34

for.body34.for.body48_crit_edge:                  ; preds = %for.body34
  br label %for.body48

for.body48:                                       ; preds = %for.body48.for.body48_crit_edge, %for.body34.for.body48_crit_edge
  %i.2182 = phi i32 [ %and54, %for.body48.for.body48_crit_edge ], [ 0, %for.body34.for.body48_crit_edge ]
  %j.1181 = phi i32 [ %and50, %for.body48.for.body48_crit_edge ], [ 0, %for.body34.for.body48_crit_edge ]
  %k.0180 = phi i32 [ %inc71, %for.body48.for.body48_crit_edge ], [ 0, %for.body34.for.body48_crit_edge ]
  %add49 = add nuw nsw i32 %i.2182, 1
  %and50 = and i32 %add49, 255
  %arrayidx51 = getelementptr [256 x i8], ptr %s, i32 0, i32 %and50
  %23 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx51, align 1
  %conv52 = zext i8 %24 to i32
  %add53 = add nuw nsw i32 %j.1181, %conv52
  %and54 = and i32 %add53, 255
  %arrayidx59 = getelementptr [256 x i8], ptr %s, i32 0, i32 %and54
  %25 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx59, align 1
  %conv60 = zext i8 %26 to i32
  %add63 = add nuw nsw i32 %conv60, %conv52
  %and64 = and i32 %add63, 255
  %arrayidx65 = getelementptr [256 x i8], ptr %s, i32 0, i32 %and64
  %27 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx65, align 1
  %arrayidx67 = getelementptr i8, ptr %buf, i32 %k.0180
  %29 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx67, align 1
  %xor173 = xor i8 %30, %28
  store i8 %xor173, ptr %arrayidx67, align 1
  %inc71 = add nuw i32 %k.0180, 1
  %exitcond188.not = icmp eq i32 %inc71, %len
  br i1 %exitcond188.not, label %for.end72, label %for.body48.for.body48_crit_edge

for.body48.for.body48_crit_edge:                  ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body48

for.end72:                                        ; preds = %for.body48
  %phi.bo = add nuw nsw i32 %add53, 1
  %phi.bo190 = and i32 %phi.bo, 255
  %call = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %buf, i32 noundef %len) #10
  %neg = xor i32 %call, -1
  %conv73 = trunc i32 %neg to i8
  %shr78 = lshr i32 %neg, 16
  %conv79 = trunc i32 %shr78 to i8
  %shr81 = lshr i32 %neg, 24
  %conv82 = trunc i32 %shr81 to i8
  %arrayidx90 = getelementptr [256 x i8], ptr %s, i32 0, i32 %phi.bo190
  %31 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx90, align 1
  %conv91 = zext i8 %32 to i32
  %add92 = add nuw nsw i32 %and50, %conv91
  %and93 = and i32 %add92, 255
  %arrayidx100 = getelementptr [256 x i8], ptr %s, i32 0, i32 %and93
  %33 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx100, align 1
  %conv101 = zext i8 %34 to i32
  %add104 = add nuw nsw i32 %conv101, %conv91
  %and105 = and i32 %add104, 255
  %arrayidx106 = getelementptr [256 x i8], ptr %s, i32 0, i32 %and105
  %35 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx106, align 1
  %xor108172 = xor i8 %36, %conv73
  %37 = ptrtoint ptr %icv to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %icv, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %xor108172, i8 %38)
  %cmp111.not = icmp eq i8 %xor108172, %38
  br i1 %cmp111.not, label %for.inc115, label %for.end72.cleanup_crit_edge

for.end72.cleanup_crit_edge:                      ; preds = %for.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc115:                                       ; preds = %for.end72
  %shr75 = lshr i32 %neg, 8
  %conv76 = trunc i32 %shr75 to i8
  %add88.1 = add nuw nsw i32 %add92, 1
  %and89.1 = and i32 %add88.1, 255
  %arrayidx90.1 = getelementptr [256 x i8], ptr %s, i32 0, i32 %and89.1
  %39 = ptrtoint ptr %arrayidx90.1 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx90.1, align 1
  %conv91.1 = zext i8 %40 to i32
  %add92.1 = add nuw nsw i32 %phi.bo190, %conv91.1
  %and93.1 = and i32 %add92.1, 255
  %arrayidx100.1 = getelementptr [256 x i8], ptr %s, i32 0, i32 %and93.1
  %41 = ptrtoint ptr %arrayidx100.1 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx100.1, align 1
  %conv101.1 = zext i8 %42 to i32
  %add104.1 = add nuw nsw i32 %conv101.1, %conv91.1
  %and105.1 = and i32 %add104.1, 255
  %arrayidx106.1 = getelementptr [256 x i8], ptr %s, i32 0, i32 %and105.1
  %43 = ptrtoint ptr %arrayidx106.1 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx106.1, align 1
  %xor108172.1 = xor i8 %44, %conv76
  %arrayidx109.1 = getelementptr i8, ptr %icv, i32 1
  %45 = ptrtoint ptr %arrayidx109.1 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx109.1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %xor108172.1, i8 %46)
  %cmp111.not.1 = icmp eq i8 %xor108172.1, %46
  br i1 %cmp111.not.1, label %for.inc115.1, label %for.inc115.cleanup_crit_edge

for.inc115.cleanup_crit_edge:                     ; preds = %for.inc115
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc115.1:                                     ; preds = %for.inc115
  %add88.2 = add nuw nsw i32 %add92.1, 1
  %and89.2 = and i32 %add88.2, 255
  %arrayidx90.2 = getelementptr [256 x i8], ptr %s, i32 0, i32 %and89.2
  %47 = ptrtoint ptr %arrayidx90.2 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx90.2, align 1
  %conv91.2 = zext i8 %48 to i32
  %add92.2 = add nuw nsw i32 %add88.1, %conv91.2
  %and93.2 = and i32 %add92.2, 255
  %arrayidx100.2 = getelementptr [256 x i8], ptr %s, i32 0, i32 %and93.2
  %49 = ptrtoint ptr %arrayidx100.2 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx100.2, align 1
  %conv101.2 = zext i8 %50 to i32
  %add104.2 = add nuw nsw i32 %conv101.2, %conv91.2
  %and105.2 = and i32 %add104.2, 255
  %arrayidx106.2 = getelementptr [256 x i8], ptr %s, i32 0, i32 %and105.2
  %51 = ptrtoint ptr %arrayidx106.2 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx106.2, align 1
  %xor108172.2 = xor i8 %52, %conv79
  %arrayidx109.2 = getelementptr i8, ptr %icv, i32 2
  %53 = ptrtoint ptr %arrayidx109.2 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx109.2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %xor108172.2, i8 %54)
  %cmp111.not.2 = icmp eq i8 %xor108172.2, %54
  br i1 %cmp111.not.2, label %for.inc115.2, label %for.inc115.1.cleanup_crit_edge

for.inc115.1.cleanup_crit_edge:                   ; preds = %for.inc115.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc115.2:                                     ; preds = %for.inc115.1
  call void @__sanitizer_cov_trace_pc() #9
  %add88.3 = add nuw nsw i32 %add92.2, 1
  %and89.3 = and i32 %add88.3, 255
  %arrayidx90.3 = getelementptr [256 x i8], ptr %s, i32 0, i32 %and89.3
  %55 = ptrtoint ptr %arrayidx90.3 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx90.3, align 1
  %conv91.3 = zext i8 %56 to i32
  %add92.3 = add nuw nsw i32 %add88.2, %conv91.3
  %and93.3 = and i32 %add92.3, 255
  %arrayidx100.3 = getelementptr [256 x i8], ptr %s, i32 0, i32 %and93.3
  %57 = ptrtoint ptr %arrayidx100.3 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx100.3, align 1
  %conv101.3 = zext i8 %58 to i32
  %add104.3 = add nuw nsw i32 %conv101.3, %conv91.3
  %and105.3 = and i32 %add104.3, 255
  %arrayidx106.3 = getelementptr [256 x i8], ptr %s, i32 0, i32 %and105.3
  %59 = ptrtoint ptr %arrayidx106.3 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx106.3, align 1
  %xor108172.3 = xor i8 %60, %conv82
  %arrayidx109.3 = getelementptr i8, ptr %icv, i32 3
  %61 = ptrtoint ptr %arrayidx109.3 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx109.3, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %xor108172.3, i8 %62)
  %cmp111.not.3 = icmp eq i8 %xor108172.3, %62
  %spec.select191 = select i1 %cmp111.not.3, i32 0, i32 -52
  br label %cleanup

cleanup:                                          ; preds = %for.inc115.2, %for.inc115.1.cleanup_crit_edge, %for.inc115.cleanup_crit_edge, %for.end72.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ], [ -3, %if.end17.cleanup_crit_edge ], [ -4, %for.end72.cleanup_crit_edge ], [ -20, %for.inc115.cleanup_crit_edge ], [ -36, %for.inc115.1.cleanup_crit_edge ], [ %spec.select191, %for.inc115.2 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %key) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %s) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wep_encrypt(ptr nocapture noundef readonly %wlandev, ptr noundef %buf, ptr nocapture noundef writeonly %dst, i32 noundef %len, i32 noundef %keynum, ptr noundef %iv, ptr nocapture noundef %icv) local_unnamed_addr #4 align 64 {
entry:
  %s = alloca [256 x i8], align 1
  %key = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %s) #7
  %0 = call ptr @memset(ptr %s, i32 255, i32 256)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %key) #7
  %1 = getelementptr inbounds i8, ptr %key, i32 3
  %2 = call ptr @memset(ptr %1, i32 255, i32 61)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp = icmp eq i32 %len, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %keynum)
  %cmp1 = icmp sgt i32 %keynum, 3
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %arrayidx = getelementptr %struct.wlandevice, ptr %wlandev, i32 0, i32 23, i32 %keynum
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %4 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp4 = icmp eq i8 %4, 0
  br i1 %cmp4, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  tail call void @get_random_bytes(ptr noundef %iv, i32 noundef 3) #7
  %arrayidx8 = getelementptr i8, ptr %iv, i32 1
  %5 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %cmp10180 = icmp eq i8 %6, -1
  br i1 %cmp10180, label %if.end7.land.lhs.true_crit_edge, label %if.end7.while.end_crit_edge

if.end7.while.end_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end7.land.lhs.true_crit_edge:                  ; preds = %if.end7
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body.land.lhs.true_crit_edge, %if.end7.land.lhs.true_crit_edge
  %7 = ptrtoint ptr %iv to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %iv, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %cmp14 = icmp ugt i8 %8, 2
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %4)
  %cmp18 = icmp ult i8 %8, %4
  %or.cond = select i1 %cmp14, i1 %cmp18, i1 false
  br i1 %or.cond, label %while.body, label %land.lhs.true.while.end_crit_edge

land.lhs.true.while.end_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %land.lhs.true
  tail call void @get_random_bytes(ptr noundef %iv, i32 noundef 3) #7
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx8, align 1
  %cmp10 = icmp eq i8 %10, -1
  br i1 %cmp10, label %while.body.land.lhs.true_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.land.lhs.true_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.lhs.true.while.end_crit_edge, %if.end7.while.end_crit_edge
  %.lcssa = phi i8 [ %6, %if.end7.while.end_crit_edge ], [ %10, %while.body.while.end_crit_edge ], [ -1, %land.lhs.true.while.end_crit_edge ]
  %keynum.tr = trunc i32 %keynum to i8
  %conv20 = shl i8 %keynum.tr, 6
  %arrayidx21 = getelementptr i8, ptr %iv, i32 3
  %11 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv20, ptr %arrayidx21, align 1
  %12 = ptrtoint ptr %iv to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %iv, align 1
  %14 = ptrtoint ptr %key to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %key, align 1
  %arrayidx25 = getelementptr inbounds [64 x i8], ptr %key, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %.lcssa, ptr %arrayidx25, align 1
  %arrayidx26 = getelementptr i8, ptr %iv, i32 2
  %16 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx26, align 1
  %arrayidx27 = getelementptr inbounds [64 x i8], ptr %key, i32 0, i32 2
  %18 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %arrayidx27, align 1
  %add.ptr = getelementptr inbounds i8, ptr %key, i32 3
  %arrayidx28 = getelementptr %struct.wlandevice, ptr %wlandev, i32 0, i32 22, i32 %keynum
  %19 = call ptr @memcpy(ptr %add.ptr, ptr %arrayidx28, i32 %conv)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %while.end
  %i.0182 = phi i32 [ 0, %while.end ], [ %inc, %for.body.for.body_crit_edge ]
  %conv32 = trunc i32 %i.0182 to i8
  %arrayidx33 = getelementptr [256 x i8], ptr %s, i32 0, i32 %i.0182
  %20 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv32, ptr %arrayidx33, align 1
  %inc = add nuw nsw i32 %i.0182, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.body37.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body37.preheader:                             ; preds = %for.body
  %add = add nuw nsw i32 %conv, 3
  br label %for.body37

for.body51.preheader:                             ; preds = %for.body37
  %umax = call i32 @llvm.umax.i32(i32 %len, i32 1)
  br label %for.body51

for.body37:                                       ; preds = %for.body37.for.body37_crit_edge, %for.body37.preheader
  %i.1184 = phi i32 [ %inc46, %for.body37.for.body37_crit_edge ], [ 0, %for.body37.preheader ]
  %j.0183 = phi i32 [ %i.1184, %for.body37.for.body37_crit_edge ], [ 0, %for.body37.preheader ]
  %arrayidx38 = getelementptr [256 x i8], ptr %s, i32 0, i32 %i.1184
  %21 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx38, align 1
  %conv39 = zext i8 %22 to i32
  %add40 = add nuw nsw i32 %j.0183, %conv39
  %rem = urem i32 %i.1184, %add
  %arrayidx41 = getelementptr [64 x i8], ptr %key, i32 0, i32 %rem
  %23 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx41, align 1
  %conv42 = zext i8 %24 to i32
  %add43 = add nuw nsw i32 %add40, %conv42
  %and44 = and i32 %add43, 255
  %inc46 = add nuw nsw i32 %and44, 1
  %cmp35.not = icmp eq i32 %and44, 255
  br i1 %cmp35.not, label %for.body51.preheader, label %for.body37.for.body37_crit_edge

for.body37.for.body37_crit_edge:                  ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body37

for.body51:                                       ; preds = %for.body51.for.body51_crit_edge, %for.body51.preheader
  %i.2188 = phi i32 [ %and57, %for.body51.for.body51_crit_edge ], [ 0, %for.body51.preheader ]
  %j.1187 = phi i32 [ %and53, %for.body51.for.body51_crit_edge ], [ 0, %for.body51.preheader ]
  %k.0186 = phi i32 [ %inc75, %for.body51.for.body51_crit_edge ], [ 0, %for.body51.preheader ]
  %add52 = add nuw nsw i32 %i.2188, 1
  %and53 = and i32 %add52, 255
  %arrayidx54 = getelementptr [256 x i8], ptr %s, i32 0, i32 %and53
  %25 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx54, align 1
  %conv55 = zext i8 %26 to i32
  %add56 = add nuw nsw i32 %j.1187, %conv55
  %and57 = and i32 %add56, 255
  %arrayidx62 = getelementptr i8, ptr %buf, i32 %k.0186
  %27 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx62, align 1
  %arrayidx64 = getelementptr [256 x i8], ptr %s, i32 0, i32 %and57
  %29 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx64, align 1
  %conv65 = zext i8 %30 to i32
  %add68 = add nuw nsw i32 %conv65, %conv55
  %and69 = and i32 %add68, 255
  %arrayidx70 = getelementptr [256 x i8], ptr %s, i32 0, i32 %and69
  %31 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx70, align 1
  %xor179 = xor i8 %32, %28
  %arrayidx73 = getelementptr i8, ptr %dst, i32 %k.0186
  %33 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %xor179, ptr %arrayidx73, align 1
  %inc75 = add nuw i32 %k.0186, 1
  %exitcond194.not = icmp eq i32 %inc75, %umax
  br i1 %exitcond194.not, label %for.end76, label %for.body51.for.body51_crit_edge

for.body51.for.body51_crit_edge:                  ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body51

for.end76:                                        ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #9
  %phi.bo = add nuw nsw i32 %add56, 1
  %phi.bo196 = and i32 %phi.bo, 255
  %call = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %buf, i32 noundef %len) #10
  %neg = xor i32 %call, -1
  %conv77 = trunc i32 %neg to i8
  %shr = lshr i32 %neg, 8
  %conv79 = trunc i32 %shr to i8
  %arrayidx80 = getelementptr i8, ptr %icv, i32 1
  %shr81 = lshr i32 %neg, 16
  %conv82 = trunc i32 %shr81 to i8
  %arrayidx83 = getelementptr i8, ptr %icv, i32 2
  %shr84 = lshr i32 %neg, 24
  %conv85 = trunc i32 %shr84 to i8
  %arrayidx86 = getelementptr i8, ptr %icv, i32 3
  %arrayidx93 = getelementptr [256 x i8], ptr %s, i32 0, i32 %phi.bo196
  %34 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx93, align 1
  %conv94 = zext i8 %35 to i32
  %add95 = add nuw nsw i32 %and53, %conv94
  %and96 = and i32 %add95, 255
  %arrayidx101 = getelementptr [256 x i8], ptr %s, i32 0, i32 %and96
  %36 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx101, align 1
  %conv102 = zext i8 %37 to i32
  %add105 = add nuw nsw i32 %conv102, %conv94
  %and106 = and i32 %add105, 255
  %arrayidx107 = getelementptr [256 x i8], ptr %s, i32 0, i32 %and106
  %38 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx107, align 1
  %xor111178 = xor i8 %39, %conv77
  %40 = ptrtoint ptr %icv to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %xor111178, ptr %icv, align 1
  %add91.1 = add nuw nsw i32 %add95, 1
  %and92.1 = and i32 %add91.1, 255
  %arrayidx93.1 = getelementptr [256 x i8], ptr %s, i32 0, i32 %and92.1
  %41 = ptrtoint ptr %arrayidx93.1 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx93.1, align 1
  %conv94.1 = zext i8 %42 to i32
  %add95.1 = add nuw nsw i32 %phi.bo196, %conv94.1
  %and96.1 = and i32 %add95.1, 255
  %arrayidx101.1 = getelementptr [256 x i8], ptr %s, i32 0, i32 %and96.1
  %43 = ptrtoint ptr %arrayidx101.1 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx101.1, align 1
  %conv102.1 = zext i8 %44 to i32
  %add105.1 = add nuw nsw i32 %conv102.1, %conv94.1
  %and106.1 = and i32 %add105.1, 255
  %arrayidx107.1 = getelementptr [256 x i8], ptr %s, i32 0, i32 %and106.1
  %45 = ptrtoint ptr %arrayidx107.1 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx107.1, align 1
  %xor111178.1 = xor i8 %46, %conv79
  %47 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %xor111178.1, ptr %arrayidx80, align 1
  %add91.2 = add nuw nsw i32 %add95.1, 1
  %and92.2 = and i32 %add91.2, 255
  %arrayidx93.2 = getelementptr [256 x i8], ptr %s, i32 0, i32 %and92.2
  %48 = ptrtoint ptr %arrayidx93.2 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx93.2, align 1
  %conv94.2 = zext i8 %49 to i32
  %add95.2 = add nuw nsw i32 %add91.1, %conv94.2
  %and96.2 = and i32 %add95.2, 255
  %arrayidx101.2 = getelementptr [256 x i8], ptr %s, i32 0, i32 %and96.2
  %50 = ptrtoint ptr %arrayidx101.2 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx101.2, align 1
  %conv102.2 = zext i8 %51 to i32
  %add105.2 = add nuw nsw i32 %conv102.2, %conv94.2
  %and106.2 = and i32 %add105.2, 255
  %arrayidx107.2 = getelementptr [256 x i8], ptr %s, i32 0, i32 %and106.2
  %52 = ptrtoint ptr %arrayidx107.2 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx107.2, align 1
  %xor111178.2 = xor i8 %53, %conv82
  %54 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %xor111178.2, ptr %arrayidx83, align 1
  %add91.3 = add nuw nsw i32 %add95.2, 1
  %and92.3 = and i32 %add91.3, 255
  %arrayidx93.3 = getelementptr [256 x i8], ptr %s, i32 0, i32 %and92.3
  %55 = ptrtoint ptr %arrayidx93.3 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx93.3, align 1
  %conv94.3 = zext i8 %56 to i32
  %add95.3 = add nuw nsw i32 %add91.2, %conv94.3
  %and96.3 = and i32 %add95.3, 255
  %arrayidx101.3 = getelementptr [256 x i8], ptr %s, i32 0, i32 %and96.3
  %57 = ptrtoint ptr %arrayidx101.3 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx101.3, align 1
  %conv102.3 = zext i8 %58 to i32
  %add105.3 = add nuw nsw i32 %conv102.3, %conv94.3
  %and106.3 = and i32 %add105.3, 255
  %arrayidx107.3 = getelementptr [256 x i8], ptr %s, i32 0, i32 %and106.3
  %59 = ptrtoint ptr %arrayidx107.3 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx107.3, align 1
  %xor111178.3 = xor i8 %60, %conv85
  %61 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %xor111178.3, ptr %arrayidx86, align 1
  br label %cleanup

cleanup:                                          ; preds = %for.end76, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ], [ -3, %if.end3.cleanup_crit_edge ], [ 0, %for.end76 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %key) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %s) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  ret void
}

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
