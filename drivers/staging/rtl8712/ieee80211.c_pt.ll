; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8712/ieee80211.c_pt.bc'
source_filename = "../drivers/staging/rtl8712/ieee80211.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.registry_priv = type { i8, i8, i8, i8, i8, %struct.ndis_802_11_ssid, i8, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.wlan_bssid_ex, i8, i8, i8, i8, i8, i8 }
%struct.ndis_802_11_ssid = type { i32, [32 x i8] }
%struct.wlan_bssid_ex = type { i32, [6 x i8], [2 x i8], %struct.ndis_802_11_ssid, i32, i32, i32, %struct.NDIS_802_11_CONFIGURATION, i32, [16 x i8], i32, [768 x i8] }
%struct.NDIS_802_11_CONFIGURATION = type { i32, i32, i32, i32, %struct.NDIS_802_11_CONFIGURATION_FH }
%struct.NDIS_802_11_CONFIGURATION_FH = type { i32, i32, i32, i32 }

@WPA_OUI_TYPE = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00P\F2\01", [28 x i8] zeroinitializer }, align 32
@__const.r8712_get_sec_ie.wpa_oui = private unnamed_addr constant [4 x i8] c"\00P\F2\01", align 1
@__const.r8712_get_wps_ie.wps_oui = private unnamed_addr constant [4 x i8] c"\00P\F2\04", align 1
@WPA_CIPHER_SUITE_NONE = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00P\F2\00", [28 x i8] zeroinitializer }, align 32
@WPA_CIPHER_SUITE_WEP40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00P\F2\01", [28 x i8] zeroinitializer }, align 32
@WPA_CIPHER_SUITE_TKIP = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00P\F2\02", [28 x i8] zeroinitializer }, align 32
@WPA_CIPHER_SUITE_CCMP = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00P\F2\04", [28 x i8] zeroinitializer }, align 32
@WPA_CIPHER_SUITE_WEP104 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00P\F2\05", [28 x i8] zeroinitializer }, align 32
@RSN_CIPHER_SUITE_NONE = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00\0F\AC\00", [28 x i8] zeroinitializer }, align 32
@RSN_CIPHER_SUITE_WEP40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00\0F\AC\01", [28 x i8] zeroinitializer }, align 32
@RSN_CIPHER_SUITE_TKIP = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00\0F\AC\02", [28 x i8] zeroinitializer }, align 32
@RSN_CIPHER_SUITE_CCMP = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00\0F\AC\04", [28 x i8] zeroinitializer }, align 32
@RSN_CIPHER_SUITE_WEP104 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00\0F\AC\05", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 7, i64 2, i64 4, i64 11, i64 22]
@__sancov_gen_cov_switch_values.1 = internal global [6 x i64] [i64 4, i64 7, i64 2, i64 4, i64 11, i64 22]
@__sancov_gen_cov_switch_values.2 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 8, i64 48, i64 221]
@___asan_gen_.4 = private unnamed_addr constant [13 x i8] c"WPA_OUI_TYPE\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 25, i32 17 }
@___asan_gen_.7 = private unnamed_addr constant [22 x i8] c"WPA_CIPHER_SUITE_NONE\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 26, i32 17 }
@___asan_gen_.10 = private unnamed_addr constant [23 x i8] c"WPA_CIPHER_SUITE_WEP40\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 27, i32 17 }
@___asan_gen_.13 = private unnamed_addr constant [22 x i8] c"WPA_CIPHER_SUITE_TKIP\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 28, i32 17 }
@___asan_gen_.16 = private unnamed_addr constant [22 x i8] c"WPA_CIPHER_SUITE_CCMP\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 29, i32 17 }
@___asan_gen_.19 = private unnamed_addr constant [24 x i8] c"WPA_CIPHER_SUITE_WEP104\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 30, i32 17 }
@___asan_gen_.22 = private unnamed_addr constant [22 x i8] c"RSN_CIPHER_SUITE_NONE\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 32, i32 17 }
@___asan_gen_.25 = private unnamed_addr constant [23 x i8] c"RSN_CIPHER_SUITE_WEP40\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 33, i32 17 }
@___asan_gen_.28 = private unnamed_addr constant [22 x i8] c"RSN_CIPHER_SUITE_TKIP\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 34, i32 17 }
@___asan_gen_.31 = private unnamed_addr constant [22 x i8] c"RSN_CIPHER_SUITE_CCMP\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 35, i32 17 }
@___asan_gen_.34 = private unnamed_addr constant [24 x i8] c"RSN_CIPHER_SUITE_WEP104\00", align 1
@___asan_gen_.35 = private constant [39 x i8] c"../drivers/staging/rtl8712/ieee80211.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 36, i32 17 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @WPA_OUI_TYPE, ptr @WPA_CIPHER_SUITE_NONE, ptr @WPA_CIPHER_SUITE_WEP40, ptr @WPA_CIPHER_SUITE_TKIP, ptr @WPA_CIPHER_SUITE_CCMP, ptr @WPA_CIPHER_SUITE_WEP104, ptr @RSN_CIPHER_SUITE_NONE, ptr @RSN_CIPHER_SUITE_WEP40, ptr @RSN_CIPHER_SUITE_TKIP, ptr @RSN_CIPHER_SUITE_CCMP, ptr @RSN_CIPHER_SUITE_WEP104], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @WPA_OUI_TYPE to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @WPA_CIPHER_SUITE_NONE to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @WPA_CIPHER_SUITE_WEP40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @WPA_CIPHER_SUITE_TKIP to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @WPA_CIPHER_SUITE_CCMP to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @WPA_CIPHER_SUITE_WEP104 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RSN_CIPHER_SUITE_NONE to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RSN_CIPHER_SUITE_WEP40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RSN_CIPHER_SUITE_TKIP to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RSN_CIPHER_SUITE_CCMP to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RSN_CIPHER_SUITE_WEP104 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r8712_is_cckrates_included(ptr nocapture noundef readonly %rate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rate to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rate, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not32 = icmp eq i8 %1, 0
  br i1 %cmp.not32, label %entry.cleanup_crit_edge, label %while.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.preheader:                             ; preds = %entry
  %extract.t41 = trunc i8 %1 to i7
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.preheader
  %.off0 = phi i7 [ %extract.t, %if.end.while.body_crit_edge ], [ %extract.t41, %while.body.preheader ]
  %i.033 = phi i32 [ %inc, %if.end.while.body_crit_edge ], [ 0, %while.body.preheader ]
  %2 = zext i7 %.off0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i7 %.off0, label %if.end [
    i7 2, label %while.body.cleanup_crit_edge
    i7 4, label %while.body.cleanup_crit_edge42
    i7 11, label %while.body.cleanup_crit_edge43
    i7 22, label %while.body.cleanup_crit_edge44
  ]

while.body.cleanup_crit_edge44:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.cleanup_crit_edge43:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.cleanup_crit_edge42:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %while.body
  %inc = add i32 %i.033, 1
  %arrayidx = getelementptr i8, ptr %rate, i32 %inc
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %cmp.not = icmp eq i8 %4, 0
  %extract.t = trunc i8 %4 to i7
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %while.body.cleanup_crit_edge, %while.body.cleanup_crit_edge42, %while.body.cleanup_crit_edge43, %while.body.cleanup_crit_edge44, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %while.body.cleanup_crit_edge ], [ 1, %while.body.cleanup_crit_edge42 ], [ 1, %while.body.cleanup_crit_edge43 ], [ 1, %while.body.cleanup_crit_edge44 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r8712_is_cckratesonly_included(ptr nocapture noundef readonly %rate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rate to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rate, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not32 = icmp eq i8 %1, 0
  br i1 %cmp.not32, label %entry.cleanup_crit_edge, label %while.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.preheader:                             ; preds = %entry
  %extract.t35 = trunc i8 %1 to i7
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.preheader
  %.off0 = phi i7 [ %extract.t, %if.end.while.body_crit_edge ], [ %extract.t35, %while.body.preheader ]
  %i.033 = phi i32 [ %inc, %if.end.while.body_crit_edge ], [ 0, %while.body.preheader ]
  %2 = zext i7 %.off0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.1)
  switch i7 %.off0, label %while.body.cleanup_crit_edge [
    i7 2, label %while.body.if.end_crit_edge
    i7 4, label %while.body.if.end_crit_edge36
    i7 11, label %while.body.if.end_crit_edge37
    i7 22, label %while.body.if.end_crit_edge38
  ]

while.body.if.end_crit_edge38:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

while.body.if.end_crit_edge37:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

while.body.if.end_crit_edge36:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %while.body.if.end_crit_edge, %while.body.if.end_crit_edge36, %while.body.if.end_crit_edge37, %while.body.if.end_crit_edge38
  %inc = add i32 %i.033, 1
  %arrayidx = getelementptr i8, ptr %rate, i32 %inc
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %cmp.not = icmp eq i8 %4, 0
  %extract.t = trunc i8 %4 to i7
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 0, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @r8712_set_ie(ptr noundef writeonly %pbuf, i32 noundef %index, i32 noundef %len, ptr nocapture noundef readonly %source, ptr nocapture noundef %frlen) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %index to i8
  %0 = ptrtoint ptr %pbuf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %pbuf, align 1
  %conv1 = trunc i32 %len to i8
  %add.ptr = getelementptr i8, ptr %pbuf, i32 1
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv1, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp.not = icmp eq i32 %len, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr3 = getelementptr i8, ptr %pbuf, i32 2
  %2 = call ptr @memcpy(ptr %add.ptr3, ptr %source, i32 %len)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %frlen to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %frlen, align 4
  %add = add i32 %len, 2
  %add4 = add i32 %add, %4
  store i32 %add4, ptr %frlen, align 4
  %add.ptr5 = getelementptr i8, ptr %pbuf, i32 %len
  %add.ptr6 = getelementptr i8, ptr %add.ptr5, i32 2
  ret ptr %add.ptr6
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @r8712_get_ie(ptr noundef readonly %pbuf, i32 noundef %index, ptr nocapture noundef writeonly %len, i32 noundef %limit) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %limit)
  %cmp = icmp slt i32 %limit, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %len, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end5.while.cond_crit_edge, %if.end
  %i.0 = phi i32 [ 0, %if.end ], [ %add10, %if.end5.while.cond_crit_edge ]
  %p.0 = phi ptr [ %pbuf, %if.end ], [ %add.ptr8, %if.end5.while.cond_crit_edge ]
  %1 = ptrtoint ptr %p.0 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %p.0, align 1
  %conv = zext i8 %2 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %index)
  %cmp1 = icmp eq i32 %conv, %index
  %add.ptr = getelementptr i8, ptr %p.0, i32 1
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %add.ptr, align 1
  %conv4 = zext i8 %4 to i32
  br i1 %cmp1, label %if.then3, label %if.end5

if.then3:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  %conv4.le = zext i8 %4 to i32
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv4.le, ptr %len, align 4
  br label %cleanup

if.end5:                                          ; preds = %while.cond
  %add = add nuw nsw i32 %conv4, 2
  %add.ptr8 = getelementptr i8, ptr %p.0, i32 %add
  %add10 = add i32 %add, %i.0
  %cmp11.not = icmp slt i32 %add10, %limit
  br i1 %cmp11.not, label %if.end5.while.cond_crit_edge, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5.while.cond_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

cleanup:                                          ; preds = %if.end5.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %p.0, %if.then3 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end5.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r8712_generate_ie(ptr nocapture noundef %registrypriv) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %BeaconPeriod = getelementptr inbounds %struct.registry_priv, ptr %registrypriv, i32 0, i32 33, i32 7, i32 1
  %0 = ptrtoint ptr %BeaconPeriod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %BeaconPeriod, align 4
  %conv = trunc i32 %1 to i16
  %add.ptr = getelementptr %struct.registry_priv, ptr %registrypriv, i32 0, i32 33, i32 11, i32 8
  %2 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %add.ptr, align 2
  %add.ptr3 = getelementptr %struct.registry_priv, ptr %registrypriv, i32 0, i32 33, i32 11, i32 10
  %preamble = getelementptr inbounds %struct.registry_priv, ptr %registrypriv, i32 0, i32 12
  %4 = ptrtoint ptr %preamble to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %preamble, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp = icmp eq i8 %5, 3
  %spec.store.select = select i1 %cmp, i16 8704, i16 512
  %6 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %spec.store.select, ptr %add.ptr3, align 2
  %Privacy = getelementptr inbounds %struct.registry_priv, ptr %registrypriv, i32 0, i32 33, i32 4
  %7 = ptrtoint ptr %Privacy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %Privacy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %if.then11

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %9 = or i16 %spec.store.select, 4096
  %10 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %add.ptr3, align 2
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %entry.if.end15_crit_edge
  %add.ptr17 = getelementptr %struct.registry_priv, ptr %registrypriv, i32 0, i32 33, i32 11, i32 12
  %Ssid = getelementptr inbounds %struct.registry_priv, ptr %registrypriv, i32 0, i32 33, i32 3
  %11 = ptrtoint ptr %Ssid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %Ssid, align 4
  %13 = ptrtoint ptr %add.ptr17 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %add.ptr17, align 1
  %conv1.i = trunc i32 %12 to i8
  %add.ptr.i = getelementptr %struct.registry_priv, ptr %registrypriv, i32 0, i32 33, i32 11, i32 13
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv1.i, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.not.i = icmp eq i32 %12, 0
  br i1 %cmp.not.i, label %if.end15.r8712_set_ie.exit_crit_edge, label %if.then.i

if.end15.r8712_set_ie.exit_crit_edge:             ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %r8712_set_ie.exit

if.then.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %Ssid19 = getelementptr inbounds %struct.registry_priv, ptr %registrypriv, i32 0, i32 33, i32 3, i32 1
  %add.ptr3.i = getelementptr %struct.registry_priv, ptr %registrypriv, i32 0, i32 33, i32 11, i32 14
  %15 = call ptr @memcpy(ptr %add.ptr3.i, ptr %Ssid19, i32 %12)
  br label %r8712_set_ie.exit

r8712_set_ie.exit:                                ; preds = %if.then.i, %if.end15.r8712_set_ie.exit_crit_edge
  %add.ptr5.i = getelementptr i8, ptr %add.ptr17, i32 %12
  %add.ptr6.i = getelementptr i8, ptr %add.ptr5.i, i32 2
  %rates = getelementptr inbounds %struct.registry_priv, ptr %registrypriv, i32 0, i32 33, i32 9
  %wireless_mode = getelementptr inbounds %struct.registry_priv, ptr %registrypriv, i32 0, i32 7
  %16 = ptrtoint ptr %wireless_mode to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %wireless_mode, align 1
  %18 = call ptr @memset(ptr %rates, i32 0, i32 16)
  %19 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %17, label %r8712_set_ie.exit.while.cond.i.preheader_crit_edge [
    i8 1, label %sw.bb.i
    i8 2, label %r8712_set_ie.exit.sw.bb1.i_crit_edge
    i8 4, label %r8712_set_ie.exit.sw.bb1.i_crit_edge118
    i8 3, label %sw.bb2.i
  ]

r8712_set_ie.exit.sw.bb1.i_crit_edge118:          ; preds = %r8712_set_ie.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1.i

r8712_set_ie.exit.sw.bb1.i_crit_edge:             ; preds = %r8712_set_ie.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1.i

r8712_set_ie.exit.while.cond.i.preheader_crit_edge: ; preds = %r8712_set_ie.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.preheader

sw.bb.i:                                          ; preds = %r8712_set_ie.exit
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %rates to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 -2105242730, ptr %rates, align 1
  br label %while.cond.i.preheader

sw.bb1.i:                                         ; preds = %r8712_set_ie.exit.sw.bb1.i_crit_edge, %r8712_set_ie.exit.sw.bb1.i_crit_edge118
  %21 = ptrtoint ptr %rates to i32
  call void @__asan_storeN_noabort(i32 %21, i32 8)
  store i64 869784221743865964, ptr %rates, align 1
  br label %while.cond.i.preheader

sw.bb2.i:                                         ; preds = %r8712_set_ie.exit
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %rates to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 -2105242730, ptr %rates, align 1
  %add.ptr.i72 = getelementptr %struct.registry_priv, ptr %registrypriv, i32 0, i32 33, i32 9, i32 4
  %23 = ptrtoint ptr %add.ptr.i72 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 8)
  store i64 869784221743865964, ptr %add.ptr.i72, align 1
  br label %while.cond.i.preheader

while.cond.i.preheader:                           ; preds = %sw.bb2.i, %sw.bb1.i, %sw.bb.i, %r8712_set_ie.exit.while.cond.i.preheader_crit_edge
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %while.cond.i.preheader
  %i.0.i = phi i32 [ %inc.i, %while.cond.i.while.cond.i_crit_edge ], [ 0, %while.cond.i.preheader ]
  %arrayidx.i = getelementptr i8, ptr %rates, i32 %i.0.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp.i = icmp eq i8 %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %i.0.i)
  %cmp2.i = icmp ugt i32 %i.0.i, 12
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp2.i
  %inc.i = add nuw nsw i32 %i.0.i, 1
  br i1 %or.cond.i, label %r8712_get_rateset_len.exit, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

r8712_get_rateset_len.exit:                       ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %i.0.i)
  %cmp26 = icmp ugt i32 %i.0.i, 8
  %26 = ptrtoint ptr %add.ptr6.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %add.ptr6.i, align 1
  br i1 %cmp26, label %r8712_set_ie.exit88, label %if.else

r8712_set_ie.exit88:                              ; preds = %r8712_get_rateset_len.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i73 = getelementptr i8, ptr %add.ptr6.i, i32 1
  %27 = ptrtoint ptr %add.ptr.i73 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 8, ptr %add.ptr.i73, align 1
  %add.ptr3.i74 = getelementptr i8, ptr %add.ptr6.i, i32 2
  %28 = ptrtoint ptr %rates to i32
  call void @__asan_loadN_noabort(i32 %28, i32 8)
  %29 = load i64, ptr %rates, align 1
  %30 = ptrtoint ptr %add.ptr3.i74 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 8)
  store i64 %29, ptr %add.ptr3.i74, align 1
  %add.ptr5.i77 = getelementptr i8, ptr %add.ptr6.i, i32 8
  %add.ptr6.i78 = getelementptr i8, ptr %add.ptr5.i77, i32 2
  %sub = add nsw i32 %i.0.i, -8
  %add.ptr34 = getelementptr %struct.registry_priv, ptr %registrypriv, i32 0, i32 33, i32 9, i32 8
  %31 = ptrtoint ptr %add.ptr6.i78 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 50, ptr %add.ptr6.i78, align 1
  %conv1.i79 = trunc i32 %sub to i8
  %add.ptr.i80 = getelementptr i8, ptr %add.ptr6.i78, i32 1
  %32 = ptrtoint ptr %add.ptr.i80 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv1.i79, ptr %add.ptr.i80, align 1
  %add.ptr3.i82 = getelementptr i8, ptr %add.ptr6.i78, i32 2
  %33 = call ptr @memcpy(ptr %add.ptr3.i82, ptr %add.ptr34, i32 %sub)
  %add4.i76 = add i32 %i.0.i, %12
  %add4.i85 = add i32 %add4.i76, 18
  %add.ptr5.i86 = getelementptr i8, ptr %add.ptr6.i78, i32 %sub
  br label %if.end39

if.else:                                          ; preds = %r8712_get_rateset_len.exit
  %conv1.i89 = trunc i32 %i.0.i to i8
  %add.ptr.i90 = getelementptr i8, ptr %add.ptr6.i, i32 1
  %34 = ptrtoint ptr %add.ptr.i90 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv1.i89, ptr %add.ptr.i90, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i)
  %cmp.not.i91 = icmp eq i32 %i.0.i, 0
  br i1 %cmp.not.i91, label %if.else.r8712_set_ie.exit98_crit_edge, label %if.then.i93

if.else.r8712_set_ie.exit98_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %r8712_set_ie.exit98

if.then.i93:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr3.i92 = getelementptr i8, ptr %add.ptr6.i, i32 2
  %35 = call ptr @memcpy(ptr %add.ptr3.i92, ptr %rates, i32 %i.0.i)
  br label %r8712_set_ie.exit98

r8712_set_ie.exit98:                              ; preds = %if.then.i93, %if.else.r8712_set_ie.exit98_crit_edge
  %add4.i = add i32 %i.0.i, %12
  %add4.i95 = add i32 %add4.i, 16
  %add.ptr5.i96 = getelementptr i8, ptr %add.ptr6.i, i32 %i.0.i
  br label %if.end39

if.end39:                                         ; preds = %r8712_set_ie.exit98, %r8712_set_ie.exit88
  %sz.0 = phi i32 [ %add4.i85, %r8712_set_ie.exit88 ], [ %add4.i95, %r8712_set_ie.exit98 ]
  %add.ptr5.i86.pn = phi ptr [ %add.ptr5.i86, %r8712_set_ie.exit88 ], [ %add.ptr5.i96, %r8712_set_ie.exit98 ]
  %ie.0 = getelementptr i8, ptr %add.ptr5.i86.pn, i32 2
  %DSConfig = getelementptr inbounds %struct.registry_priv, ptr %registrypriv, i32 0, i32 33, i32 7, i32 3
  %36 = ptrtoint ptr %ie.0 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 3, ptr %ie.0, align 1
  %add.ptr.i99 = getelementptr i8, ptr %add.ptr5.i86.pn, i32 3
  %37 = ptrtoint ptr %add.ptr.i99 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %add.ptr.i99, align 1
  %add.ptr3.i100 = getelementptr i8, ptr %add.ptr5.i86.pn, i32 4
  %38 = ptrtoint ptr %DSConfig to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %DSConfig, align 1
  %40 = ptrtoint ptr %add.ptr3.i100 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %add.ptr3.i100, align 1
  %add.ptr6.i104 = getelementptr i8, ptr %add.ptr5.i86.pn, i32 5
  %ATIMWindow = getelementptr inbounds %struct.registry_priv, ptr %registrypriv, i32 0, i32 33, i32 7, i32 2
  %41 = ptrtoint ptr %add.ptr6.i104 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 6, ptr %add.ptr6.i104, align 1
  %add.ptr.i105 = getelementptr i8, ptr %add.ptr5.i86.pn, i32 6
  %42 = ptrtoint ptr %add.ptr.i105 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 2, ptr %add.ptr.i105, align 1
  %add.ptr3.i106 = getelementptr i8, ptr %add.ptr5.i86.pn, i32 7
  %43 = ptrtoint ptr %ATIMWindow to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %44 = load i16, ptr %ATIMWindow, align 1
  %45 = ptrtoint ptr %add.ptr3.i106 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 2)
  store i16 %44, ptr %add.ptr3.i106, align 1
  %add4.i108 = add i32 %sz.0, 7
  ret i32 %add4.i108
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @r8712_get_wpa_ie(ptr noundef %ie, ptr nocapture noundef writeonly %wpa_ie_len, i32 noundef %limit) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %limit)
  %cmp.i40 = icmp slt i32 %limit, 1
  br i1 %cmp.i40, label %entry.cleanup_crit_edge, label %while.cond.i.preheader.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.cond.i.preheader.lr.ph:                     ; preds = %entry
  %sub.ptr.rhs.cast = ptrtoint ptr %ie to i32
  %sub.ptr.sub.neg = add i32 %sub.ptr.rhs.cast, -2
  br label %while.cond.i.preheader

while.cond.i.preheader:                           ; preds = %if.end16, %while.cond.i.preheader.lr.ph
  %buf.042 = phi ptr [ %ie, %while.cond.i.preheader.lr.ph ], [ %add.ptr17, %if.end16 ]
  %limit.addr.041 = phi i32 [ %limit, %while.cond.i.preheader.lr.ph ], [ %sub12, %if.end16 ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end5.i.while.cond.i_crit_edge, %while.cond.i.preheader
  %i.0.i = phi i32 [ %add10.i, %if.end5.i.while.cond.i_crit_edge ], [ 0, %while.cond.i.preheader ]
  %p.0.i = phi ptr [ %add.ptr8.i, %if.end5.i.while.cond.i_crit_edge ], [ %buf.042, %while.cond.i.preheader ]
  %0 = ptrtoint ptr %p.0.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %p.0.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -35, i8 %1)
  %cmp1.i = icmp eq i8 %1, -35
  %add.ptr.i = getelementptr i8, ptr %p.0.i, i32 1
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %add.ptr.i, align 1
  %conv4.i = zext i8 %3 to i32
  br i1 %cmp1.i, label %r8712_get_ie.exit, label %if.end5.i

if.end5.i:                                        ; preds = %while.cond.i
  %add.i = add nuw nsw i32 %conv4.i, 2
  %add.ptr8.i = getelementptr i8, ptr %p.0.i, i32 %add.i
  %add10.i = add i32 %add.i, %i.0.i
  %cmp11.not.i = icmp slt i32 %add10.i, %limit.addr.041
  br i1 %cmp11.not.i, label %if.end5.i.while.cond.i_crit_edge, label %if.end5.i.cleanup_crit_edge

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5.i.while.cond.i_crit_edge:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

r8712_get_ie.exit:                                ; preds = %while.cond.i
  %conv4.i.le = zext i8 %3 to i32
  %tobool.not = icmp eq ptr %p.0.i, null
  br i1 %tobool.not, label %r8712_get_ie.exit.cleanup_crit_edge, label %if.then

r8712_get_ie.exit.cleanup_crit_edge:              ; preds = %r8712_get_ie.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %r8712_get_ie.exit
  %add.ptr = getelementptr i8, ptr %p.0.i, i32 2
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %add.ptr, ptr noundef nonnull dereferenceable(4) @__const.r8712_get_sec_ie.wpa_oui, i32 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool2.not = icmp eq i32 %bcmp, 0
  br i1 %tobool2.not, label %if.end, label %if.then.check_next_ie_crit_edge

if.then.check_next_ie_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %check_next_ie

if.end:                                           ; preds = %if.then
  %add.ptr4 = getelementptr i8, ptr %p.0.i, i32 6
  %4 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %add.ptr4, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %5)
  %cmp.not = icmp eq i16 %5, 256
  br i1 %cmp.not, label %if.end7, label %if.end.check_next_ie_crit_edge

if.end.check_next_ie_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %check_next_ie

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.le = getelementptr i8, ptr %p.0.i, i32 1
  %6 = ptrtoint ptr %add.ptr.i.le to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %add.ptr.i.le, align 1
  %conv9 = zext i8 %7 to i32
  br label %cleanup

check_next_ie:                                    ; preds = %if.end.check_next_ie_crit_edge, %if.then.check_next_ie_crit_edge
  %sub.ptr.lhs.cast = ptrtoint ptr %p.0.i to i32
  %sub = add i32 %sub.ptr.sub.neg, %limit.addr.041
  %8 = add i32 %sub.ptr.lhs.cast, %conv4.i.le
  %sub12 = sub i32 %sub, %8
  %cmp13 = icmp slt i32 %sub12, 1
  br i1 %cmp13, label %check_next_ie.cleanup_crit_edge, label %if.end16

check_next_ie.cleanup_crit_edge:                  ; preds = %check_next_ie
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %check_next_ie
  call void @__sanitizer_cov_trace_pc() #11
  %add = add nuw nsw i32 %conv4.i.le, 2
  %add.ptr17 = getelementptr i8, ptr %p.0.i, i32 %add
  br label %while.cond.i.preheader

cleanup:                                          ; preds = %check_next_ie.cleanup_crit_edge, %if.end7, %r8712_get_ie.exit.cleanup_crit_edge, %if.end5.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %.sink = phi i32 [ %conv9, %if.end7 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end5.i.cleanup_crit_edge ], [ 0, %r8712_get_ie.exit.cleanup_crit_edge ], [ 0, %check_next_ie.cleanup_crit_edge ]
  %retval.0 = phi ptr [ %p.0.i, %if.end7 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end5.i.cleanup_crit_edge ], [ null, %r8712_get_ie.exit.cleanup_crit_edge ], [ null, %check_next_ie.cleanup_crit_edge ]
  %9 = ptrtoint ptr %wpa_ie_len to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.sink, ptr %wpa_ie_len, align 4
  ret ptr %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @r8712_get_wpa2_ie(ptr noundef readonly %pie, ptr nocapture noundef writeonly %rsn_ie_len, i32 noundef %limit) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %limit)
  %cmp.i = icmp slt i32 %limit, 1
  br i1 %cmp.i, label %entry.r8712_get_ie.exit_crit_edge, label %if.end.i

entry.r8712_get_ie.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %r8712_get_ie.exit

if.end.i:                                         ; preds = %entry
  %0 = ptrtoint ptr %rsn_ie_len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %rsn_ie_len, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end5.i.while.cond.i_crit_edge, %if.end.i
  %i.0.i = phi i32 [ 0, %if.end.i ], [ %add10.i, %if.end5.i.while.cond.i_crit_edge ]
  %p.0.i = phi ptr [ %pie, %if.end.i ], [ %add.ptr8.i, %if.end5.i.while.cond.i_crit_edge ]
  %1 = ptrtoint ptr %p.0.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %p.0.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %2)
  %cmp1.i = icmp eq i8 %2, 48
  %add.ptr.i = getelementptr i8, ptr %p.0.i, i32 1
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %add.ptr.i, align 1
  %conv4.i = zext i8 %4 to i32
  br i1 %cmp1.i, label %if.then3.i, label %if.end5.i

if.then3.i:                                       ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv4.i.le = zext i8 %4 to i32
  %5 = ptrtoint ptr %rsn_ie_len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv4.i.le, ptr %rsn_ie_len, align 4
  br label %r8712_get_ie.exit

if.end5.i:                                        ; preds = %while.cond.i
  %add.i = add nuw nsw i32 %conv4.i, 2
  %add.ptr8.i = getelementptr i8, ptr %p.0.i, i32 %add.i
  %add10.i = add i32 %add.i, %i.0.i
  %cmp11.not.i = icmp slt i32 %add10.i, %limit
  br i1 %cmp11.not.i, label %if.end5.i.while.cond.i_crit_edge, label %if.end5.i.r8712_get_ie.exit_crit_edge

if.end5.i.r8712_get_ie.exit_crit_edge:            ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %r8712_get_ie.exit

if.end5.i.while.cond.i_crit_edge:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

r8712_get_ie.exit:                                ; preds = %if.end5.i.r8712_get_ie.exit_crit_edge, %if.then3.i, %entry.r8712_get_ie.exit_crit_edge
  %retval.0.i = phi ptr [ %p.0.i, %if.then3.i ], [ null, %entry.r8712_get_ie.exit_crit_edge ], [ null, %if.end5.i.r8712_get_ie.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r8712_parse_wpa_ie(ptr nocapture noundef readonly %wpa_ie, i32 noundef %wpa_ie_len, ptr nocapture noundef writeonly %group_cipher, ptr nocapture noundef %pairwise_cipher) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %wpa_ie_len)
  %cmp = icmp slt i32 %wpa_ie_len, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %wpa_ie to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %wpa_ie, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -35, i8 %1)
  %cmp1.not = icmp eq i8 %1, -35
  br i1 %cmp1.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %wpa_ie, i32 1
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %add.ptr, align 1
  %4 = trunc i32 %wpa_ie_len to i8
  %5 = add i8 %4, -2
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %5)
  %cmp6.not = icmp eq i8 %3, %5
  br i1 %cmp6.not, label %lor.lhs.false8, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %add.ptr9 = getelementptr i8, ptr %wpa_ie, i32 2
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %add.ptr9, ptr noundef nonnull dereferenceable(4) @WPA_OUI_TYPE, i32 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.end11, label %lor.lhs.false8.cleanup_crit_edge

lor.lhs.false8.cleanup_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %wpa_ie_len)
  %cmp14 = icmp ugt i32 %wpa_ie_len, 11
  br i1 %cmp14, label %if.end24, label %if.else

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %wpa_ie_len)
  %cmp20 = icmp ugt i32 %wpa_ie_len, 8
  br i1 %cmp20, label %if.else.cleanup_crit_edge, label %if.else.if.end48_crit_edge

if.else.if.end48_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end24:                                         ; preds = %if.end11
  %add.ptr12 = getelementptr i8, ptr %wpa_ie, i32 8
  %call17 = tail call fastcc i32 @r8712_get_wpa_cipher_suite(ptr noundef %add.ptr12)
  %6 = ptrtoint ptr %group_cipher to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call17, ptr %group_cipher, align 4
  %sub19 = add nsw i32 %wpa_ie_len, -12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub19)
  %cmp25 = icmp ugt i32 %sub19, 1
  br i1 %cmp25, label %if.then27, label %if.else43

if.then27:                                        ; preds = %if.end24
  %add.ptr18 = getelementptr i8, ptr %wpa_ie, i32 12
  %7 = ptrtoint ptr %add.ptr18 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr18, align 2
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %conv28 = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp31 = icmp eq i16 %8, 0
  %sub30 = add nsw i32 %wpa_ie_len, -14
  %mul = shl nuw nsw i32 %conv28, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub30, i32 %mul)
  %cmp34 = icmp ult i32 %sub30, %mul
  %or.cond = select i1 %cmp31, i1 true, i1 %cmp34
  br i1 %or.cond, label %if.then27.cleanup_crit_edge, label %for.body.preheader

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.preheader:                               ; preds = %if.then27
  %add.ptr29 = getelementptr i8, ptr %wpa_ie, i32 14
  %umax = call i32 @llvm.umax.i32(i32 %conv28, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %pos.181 = phi ptr [ %add.ptr41, %for.body.for.body_crit_edge ], [ %add.ptr29, %for.body.preheader ]
  %i.080 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %call40 = tail call fastcc i32 @r8712_get_wpa_cipher_suite(ptr noundef %pos.181)
  %10 = ptrtoint ptr %pairwise_cipher to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pairwise_cipher, align 4
  %or = or i32 %11, %call40
  store i32 %or, ptr %pairwise_cipher, align 4
  %add.ptr41 = getelementptr i8, ptr %pos.181, i32 4
  %inc = add nuw nsw i32 %i.080, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.body.if.end48_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.if.end48_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.else43:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub19)
  %cmp44 = icmp eq i32 %sub19, 1
  br i1 %cmp44, label %if.else43.cleanup_crit_edge, label %if.else43.if.end48_crit_edge

if.else43.if.end48_crit_edge:                     ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.else43.cleanup_crit_edge:                      ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end48:                                         ; preds = %if.else43.if.end48_crit_edge, %for.body.if.end48_crit_edge, %if.else.if.end48_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.else43.cleanup_crit_edge, %if.then27.cleanup_crit_edge, %if.else.cleanup_crit_edge, %lor.lhs.false8.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end48 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false8.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ -22, %if.then27.cleanup_crit_edge ], [ -22, %if.else43.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @r8712_get_wpa_cipher_suite(ptr nocapture noundef readonly %s) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %s, ptr noundef nonnull dereferenceable(4) @WPA_CIPHER_SUITE_NONE, i32 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %bcmp21 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %s, ptr noundef nonnull dereferenceable(4) @WPA_CIPHER_SUITE_WEP40, i32 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp21)
  %tobool2.not = icmp eq i32 %bcmp21, 0
  br i1 %tobool2.not, label %if.end.return_crit_edge, label %if.end4

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end4:                                          ; preds = %if.end
  %bcmp22 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %s, ptr noundef nonnull dereferenceable(4) @WPA_CIPHER_SUITE_TKIP, i32 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp22)
  %tobool6.not = icmp eq i32 %bcmp22, 0
  br i1 %tobool6.not, label %if.end4.return_crit_edge, label %if.end8

if.end4.return_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end8:                                          ; preds = %if.end4
  %bcmp23 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %s, ptr noundef nonnull dereferenceable(4) @WPA_CIPHER_SUITE_CCMP, i32 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp23)
  %tobool10.not = icmp eq i32 %bcmp23, 0
  br i1 %tobool10.not, label %if.end8.return_crit_edge, label %if.end12

if.end8.return_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %bcmp24 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %s, ptr noundef nonnull dereferenceable(4) @WPA_CIPHER_SUITE_WEP104, i32 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp24)
  %tobool14.not = icmp eq i32 %bcmp24, 0
  %. = select i1 %tobool14.not, i32 4, i32 0
  br label %return

return:                                           ; preds = %if.end12, %if.end8.return_crit_edge, %if.end4.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %entry.return_crit_edge ], [ 2, %if.end.return_crit_edge ], [ 8, %if.end4.return_crit_edge ], [ 16, %if.end8.return_crit_edge ], [ %., %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r8712_parse_wpa2_ie(ptr nocapture noundef readonly %rsn_ie, i32 noundef %rsn_ie_len, ptr nocapture noundef writeonly %group_cipher, ptr nocapture noundef %pairwise_cipher) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rsn_ie_len)
  %cmp = icmp slt i32 %rsn_ie_len, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %rsn_ie to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rsn_ie, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %1)
  %cmp1.not = icmp eq i8 %1, 48
  br i1 %cmp1.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %rsn_ie, i32 1
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %add.ptr, align 1
  %4 = trunc i32 %rsn_ie_len to i8
  %5 = add i8 %4, -2
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %5)
  %cmp6.not = icmp eq i8 %3, %5
  br i1 %cmp6.not, label %if.end9, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %rsn_ie_len)
  %cmp12 = icmp ugt i32 %rsn_ie_len, 7
  br i1 %cmp12, label %if.end21, label %if.else

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %rsn_ie_len)
  %cmp17 = icmp ugt i32 %rsn_ie_len, 4
  br i1 %cmp17, label %if.else.cleanup_crit_edge, label %if.else.if.end45_crit_edge

if.else.if.end45_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end21:                                         ; preds = %if.end9
  %add.ptr10 = getelementptr i8, ptr %rsn_ie, i32 4
  %call = tail call fastcc i32 @r8712_get_wpa2_cipher_suite(ptr noundef %add.ptr10)
  %6 = ptrtoint ptr %group_cipher to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call, ptr %group_cipher, align 4
  %sub16 = add nsw i32 %rsn_ie_len, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub16)
  %cmp22 = icmp ugt i32 %sub16, 1
  br i1 %cmp22, label %if.then24, label %if.else40

if.then24:                                        ; preds = %if.end21
  %add.ptr15 = getelementptr i8, ptr %rsn_ie, i32 8
  %7 = ptrtoint ptr %add.ptr15 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr15, align 2
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %conv25 = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp28 = icmp eq i16 %8, 0
  %sub27 = add nsw i32 %rsn_ie_len, -10
  %mul = shl nuw nsw i32 %conv25, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub27, i32 %mul)
  %cmp31 = icmp ult i32 %sub27, %mul
  %or.cond = select i1 %cmp28, i1 true, i1 %cmp31
  br i1 %or.cond, label %if.then24.cleanup_crit_edge, label %for.body.preheader

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.preheader:                               ; preds = %if.then24
  %add.ptr26 = getelementptr i8, ptr %rsn_ie, i32 10
  %umax = call i32 @llvm.umax.i32(i32 %conv25, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %pos.177 = phi ptr [ %add.ptr38, %for.body.for.body_crit_edge ], [ %add.ptr26, %for.body.preheader ]
  %i.076 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %call37 = tail call fastcc i32 @r8712_get_wpa2_cipher_suite(ptr noundef %pos.177)
  %10 = ptrtoint ptr %pairwise_cipher to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pairwise_cipher, align 4
  %or = or i32 %11, %call37
  store i32 %or, ptr %pairwise_cipher, align 4
  %add.ptr38 = getelementptr i8, ptr %pos.177, i32 4
  %inc = add nuw nsw i32 %i.076, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.body.if.end45_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.if.end45_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.else40:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub16)
  %cmp41 = icmp eq i32 %sub16, 1
  br i1 %cmp41, label %if.else40.cleanup_crit_edge, label %if.else40.if.end45_crit_edge

if.else40.if.end45_crit_edge:                     ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.else40.cleanup_crit_edge:                      ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end45:                                         ; preds = %if.else40.if.end45_crit_edge, %for.body.if.end45_crit_edge, %if.else.if.end45_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.else40.cleanup_crit_edge, %if.then24.cleanup_crit_edge, %if.else.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end45 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ -22, %if.then24.cleanup_crit_edge ], [ -22, %if.else40.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @r8712_get_wpa2_cipher_suite(ptr nocapture noundef readonly %s) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %s, ptr noundef nonnull dereferenceable(4) @RSN_CIPHER_SUITE_NONE, i32 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %bcmp21 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %s, ptr noundef nonnull dereferenceable(4) @RSN_CIPHER_SUITE_WEP40, i32 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp21)
  %tobool2.not = icmp eq i32 %bcmp21, 0
  br i1 %tobool2.not, label %if.end.return_crit_edge, label %if.end4

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end4:                                          ; preds = %if.end
  %bcmp22 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %s, ptr noundef nonnull dereferenceable(4) @RSN_CIPHER_SUITE_TKIP, i32 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp22)
  %tobool6.not = icmp eq i32 %bcmp22, 0
  br i1 %tobool6.not, label %if.end4.return_crit_edge, label %if.end8

if.end4.return_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end8:                                          ; preds = %if.end4
  %bcmp23 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %s, ptr noundef nonnull dereferenceable(4) @RSN_CIPHER_SUITE_CCMP, i32 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp23)
  %tobool10.not = icmp eq i32 %bcmp23, 0
  br i1 %tobool10.not, label %if.end8.return_crit_edge, label %if.end12

if.end8.return_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %bcmp24 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %s, ptr noundef nonnull dereferenceable(4) @RSN_CIPHER_SUITE_WEP104, i32 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp24)
  %tobool14.not = icmp eq i32 %bcmp24, 0
  %. = select i1 %tobool14.not, i32 4, i32 0
  br label %return

return:                                           ; preds = %if.end12, %if.end8.return_crit_edge, %if.end4.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %entry.return_crit_edge ], [ 2, %if.end.return_crit_edge ], [ 8, %if.end4.return_crit_edge ], [ 16, %if.end8.return_crit_edge ], [ %., %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r8712_get_sec_ie(ptr nocapture noundef readonly %in_ie, i32 noundef %in_len, ptr nocapture noundef writeonly %rsn_ie, ptr nocapture noundef %rsn_len, ptr nocapture noundef writeonly %wpa_ie, ptr nocapture noundef %wpa_len) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %in_len)
  %cmp76 = icmp ugt i32 %in_len, 12
  br i1 %cmp76, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end45.while.body_crit_edge, %entry.while.body_crit_edge
  %cnt.077 = phi i32 [ %cnt.1, %if.end45.while.body_crit_edge ], [ 12, %entry.while.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %in_ie, i32 %cnt.077
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.3)
  switch i8 %1, label %while.body.if.else39_crit_edge [
    i8 -35, label %land.lhs.true
    i8 48, label %if.then23
  ]

while.body.if.else39_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else39

land.lhs.true:                                    ; preds = %while.body
  %add = add i32 %cnt.077, 2
  %arrayidx3 = getelementptr i8, ptr %in_ie, i32 %add
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %arrayidx3, ptr noundef nonnull dereferenceable(4) @__const.r8712_get_sec_ie.wpa_oui, i32 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.else39_crit_edge

land.lhs.true.if.else39_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else39

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %add6 = add nuw i32 %cnt.077, 1
  %arrayidx7 = getelementptr i8, ptr %in_ie, i32 %add6
  %3 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %4 to i32
  %add9 = add nuw nsw i32 %conv8, 2
  %5 = call ptr @memcpy(ptr %wpa_ie, ptr %arrayidx, i32 %add9)
  %6 = load i8, ptr %arrayidx7, align 1
  %conv12 = zext i8 %6 to i16
  %add13 = add nuw nsw i16 %conv12, 2
  %7 = ptrtoint ptr %wpa_len to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %add13, ptr %wpa_len, align 2
  br label %if.end45

if.then23:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %add25 = add nuw i32 %cnt.077, 1
  %arrayidx26 = getelementptr i8, ptr %in_ie, i32 %add25
  %8 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %9 to i32
  %add28 = add nuw nsw i32 %conv27, 2
  %10 = call ptr @memcpy(ptr %rsn_ie, ptr %arrayidx, i32 %add28)
  %11 = load i8, ptr %arrayidx26, align 1
  %conv31 = zext i8 %11 to i16
  %add32 = add nuw nsw i16 %conv31, 2
  %12 = ptrtoint ptr %rsn_len to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %add32, ptr %rsn_len, align 2
  br label %if.end45

if.else39:                                        ; preds = %land.lhs.true.if.else39_crit_edge, %while.body.if.else39_crit_edge
  %add40 = add nuw i32 %cnt.077, 1
  %arrayidx41 = getelementptr i8, ptr %in_ie, i32 %add40
  br label %if.end45

if.end45:                                         ; preds = %if.else39, %if.then23, %if.then
  %add37.pn.in.in.in = phi ptr [ %arrayidx26, %if.then23 ], [ %arrayidx41, %if.else39 ], [ %arrayidx7, %if.then ]
  %13 = ptrtoint ptr %add37.pn.in.in.in to i32
  call void @__asan_load1_noabort(i32 %13)
  %add37.pn.in.in = load i8, ptr %add37.pn.in.in.in, align 1
  %add37.pn.in = zext i8 %add37.pn.in.in to i32
  %add37.pn = add i32 %cnt.077, 2
  %cnt.1 = add i32 %add37.pn, %add37.pn.in
  %cmp = icmp ult i32 %cnt.1, %in_len
  br i1 %cmp, label %if.end45.while.body_crit_edge, label %if.end45.while.end_crit_edge

if.end45.while.end_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end45.while.body_crit_edge:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %if.end45.while.end_crit_edge, %entry.while.end_crit_edge
  %14 = ptrtoint ptr %rsn_len to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %rsn_len, align 2
  %conv46 = zext i16 %15 to i32
  %16 = ptrtoint ptr %wpa_len to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %wpa_len, align 2
  %conv47 = zext i16 %17 to i32
  %add48 = add nuw nsw i32 %conv47, %conv46
  ret i32 %add48
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r8712_get_wps_ie(ptr nocapture noundef readonly %in_ie, i32 noundef %in_len, ptr nocapture noundef writeonly %wps_ie, ptr nocapture noundef writeonly %wps_ielen) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %in_len)
  %cmp39 = icmp ugt i32 %in_len, 12
  br i1 %cmp39, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %cnt.040 = phi i32 [ %add22, %if.end.while.body_crit_edge ], [ 12, %entry.while.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %in_ie, i32 %cnt.040
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -35, i8 %1)
  %cmp1 = icmp eq i8 %1, -35
  %add = add i32 %cnt.040, 2
  br i1 %cmp1, label %land.lhs.true, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %while.body
  %arrayidx3 = getelementptr i8, ptr %in_ie, i32 %add
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %arrayidx3, ptr noundef nonnull dereferenceable(4) @__const.r8712_get_wps_ie.wps_oui, i32 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.le = getelementptr i8, ptr %in_ie, i32 %cnt.040
  %add5 = add nuw i32 %cnt.040, 1
  %arrayidx6 = getelementptr i8, ptr %in_ie, i32 %add5
  %2 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %3 to i32
  %add8 = add nuw nsw i32 %conv7, 2
  %4 = call ptr @memcpy(ptr %wps_ie, ptr %arrayidx.le, i32 %add8)
  %5 = load i8, ptr %arrayidx6, align 1
  %conv11 = zext i8 %5 to i32
  %add12 = add nuw nsw i32 %conv11, 2
  %6 = ptrtoint ptr %wps_ielen to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add12, ptr %wps_ielen, align 4
  br label %while.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %while.body.if.end_crit_edge
  %add18 = add nuw i32 %cnt.040, 1
  %arrayidx19 = getelementptr i8, ptr %in_ie, i32 %add18
  %7 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %8 to i32
  %add22 = add i32 %add, %conv20
  %cmp = icmp ult i32 %add22, %in_len
  br i1 %cmp, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %if.end.while.end_crit_edge, %if.then, %entry.while.end_crit_edge
  %match.0 = phi i32 [ 1, %if.then ], [ 0, %entry.while.end_crit_edge ], [ 0, %if.end.while.end_crit_edge ]
  ret i32 %match.0
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = distinct !{null, !1, !"WIFI_CCKRATES", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8712/ieee80211.c", i32 43, i32 11}
!2 = distinct !{null, !3, !"WIFI_OFDMRATES", i1 false, i1 false}
!3 = !{!"../drivers/staging/rtl8712/ieee80211.c", i32 50, i32 11}
!4 = !{ptr @WPA_OUI_TYPE, !5, !"WPA_OUI_TYPE", i1 false, i1 false}
!5 = !{!"../drivers/staging/rtl8712/ieee80211.c", i32 25, i32 17}
!6 = !{ptr @WPA_CIPHER_SUITE_NONE, !7, !"WPA_CIPHER_SUITE_NONE", i1 false, i1 false}
!7 = !{!"../drivers/staging/rtl8712/ieee80211.c", i32 26, i32 17}
!8 = !{ptr @WPA_CIPHER_SUITE_WEP40, !9, !"WPA_CIPHER_SUITE_WEP40", i1 false, i1 false}
!9 = !{!"../drivers/staging/rtl8712/ieee80211.c", i32 27, i32 17}
!10 = !{ptr @WPA_CIPHER_SUITE_TKIP, !11, !"WPA_CIPHER_SUITE_TKIP", i1 false, i1 false}
!11 = !{!"../drivers/staging/rtl8712/ieee80211.c", i32 28, i32 17}
!12 = !{ptr @WPA_CIPHER_SUITE_CCMP, !13, !"WPA_CIPHER_SUITE_CCMP", i1 false, i1 false}
!13 = !{!"../drivers/staging/rtl8712/ieee80211.c", i32 29, i32 17}
!14 = !{ptr @WPA_CIPHER_SUITE_WEP104, !15, !"WPA_CIPHER_SUITE_WEP104", i1 false, i1 false}
!15 = !{!"../drivers/staging/rtl8712/ieee80211.c", i32 30, i32 17}
!16 = !{ptr @RSN_CIPHER_SUITE_NONE, !17, !"RSN_CIPHER_SUITE_NONE", i1 false, i1 false}
!17 = !{!"../drivers/staging/rtl8712/ieee80211.c", i32 32, i32 17}
!18 = !{ptr @RSN_CIPHER_SUITE_WEP40, !19, !"RSN_CIPHER_SUITE_WEP40", i1 false, i1 false}
!19 = !{!"../drivers/staging/rtl8712/ieee80211.c", i32 33, i32 17}
!20 = !{ptr @RSN_CIPHER_SUITE_TKIP, !21, !"RSN_CIPHER_SUITE_TKIP", i1 false, i1 false}
!21 = !{!"../drivers/staging/rtl8712/ieee80211.c", i32 34, i32 17}
!22 = !{ptr @RSN_CIPHER_SUITE_CCMP, !23, !"RSN_CIPHER_SUITE_CCMP", i1 false, i1 false}
!23 = !{!"../drivers/staging/rtl8712/ieee80211.c", i32 35, i32 17}
!24 = !{ptr @RSN_CIPHER_SUITE_WEP104, !25, !"RSN_CIPHER_SUITE_WEP104", i1 false, i1 false}
!25 = !{!"../drivers/staging/rtl8712/ieee80211.c", i32 36, i32 17}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
