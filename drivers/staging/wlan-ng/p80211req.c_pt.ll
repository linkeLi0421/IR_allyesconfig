; ModuleID = '/llk/IR_all_yes/drivers/staging/wlan-ng/p80211req.c_pt.bc'
source_filename = "../drivers/staging/wlan-ng/p80211req.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.wlandevice = type { ptr, [16 x i8], ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [6 x i8], %struct.p80211pstr32, i32, i32, [4 x [32 x i8]], [4 x i8], i32, i32, ptr, %struct.tasklet_struct, %struct.sk_buff_head, %struct.p80211_frmrx, %struct.iw_statistics, i8, [8 x [6 x i8]], [8 x %struct.iw_quality] }
%struct.p80211pstr32 = type { i8, [32 x i8] }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.141, i32 }
%struct.atomic_t = type { i32 }
%union.anon.141 = type { ptr }
%struct.sk_buff_head = type { %union.anon.94, i32, %struct.spinlock }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.p80211_frmrx = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iw_statistics = type { i16, %struct.iw_quality, %struct.iw_discarded, %struct.iw_missed }
%struct.iw_quality = type { i8, i8, i8, i8 }
%struct.iw_discarded = type { i32, i32, i32, i32, i32 }
%struct.iw_missed = type { i32 }
%struct.p80211msg_lnxreq_hostwep = type { i32, i32, [16 x i8], %struct.p80211item_uint32, %struct.p80211item_uint32, %struct.p80211item_uint32 }
%struct.p80211item_uint32 = type { i32, i16, i16, i32 }
%struct.p80211msg_dot11req_mibget = type { i32, i32, [16 x i8], %struct.p80211item_unk392, %struct.p80211item_uint32 }
%struct.p80211item_unk392 = type { i32, i16, i16, [392 x i8] }

@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: only dot11req_mibget allowed for non-root.\0A\00", [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 5, i64 7]
@__sancov_gen_cov_switch_values.1 = internal global [5 x i64] [i64 3, i64 32, i64 65, i64 129, i64 195]
@__sancov_gen_cov_switch_values.2 = internal global [9 x i64] [i64 7, i64 32, i64 201330945, i64 201335041, i64 201339137, i64 201343233, i64 402657665, i64 402661761, i64 402669953]
@___asan_gen_.3 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.4 = private constant [39 x i8] c"../drivers/staging/wlan-ng/p80211req.c\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.4, i32 130, i32 7 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @p80211req_dorequest(ptr noundef %wlandev, ptr noundef %msgbuf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %msdstate = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 4
  %0 = ptrtoint ptr %msdstate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msdstate, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 3, label %land.lhs.true
    i32 7, label %entry.if.end_crit_edge
    i32 5, label %entry.if.end_crit_edge35
  ]

entry.if.end_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %3 = ptrtoint ptr %msgbuf to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %msgbuf, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 67, i32 %4)
  %cmp1 = icmp eq i32 %4, 67
  br i1 %cmp1, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge, %entry.if.end_crit_edge35
  %call = tail call zeroext i1 @capable(i32 noundef 12) #3
  br i1 %call, label %if.end.if.end11_crit_edge, label %land.lhs.true7

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11

land.lhs.true7:                                   ; preds = %if.end
  %5 = ptrtoint ptr %msgbuf to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %msgbuf, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %6)
  %cmp9.not = icmp eq i32 %6, 65
  br i1 %cmp9.not, label %land.lhs.true7.if.end11_crit_edge, label %if.then10

land.lhs.true7.if.end11_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11

if.then10:                                        ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #5
  %netdev = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 26
  %7 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %netdev, align 4
  %name = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 1
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %8, ptr noundef nonnull @.str, ptr noundef %name) #6
  br label %cleanup

if.end11:                                         ; preds = %land.lhs.true7.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %request_pending = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 25
  %call12 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %request_pending) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.end14, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  %9 = ptrtoint ptr %msgbuf to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %msgbuf, align 1
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %10, label %if.end14.p80211req_handlemsg.exit_crit_edge [
    i32 195, label %sw.bb.i
    i32 65, label %if.end14.sw.bb8.i_crit_edge
    i32 129, label %if.end14.sw.bb8.i_crit_edge36
  ]

if.end14.sw.bb8.i_crit_edge36:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb8.i

if.end14.sw.bb8.i_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb8.i

if.end14.p80211req_handlemsg.exit_crit_edge:      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  br label %p80211req_handlemsg.exit

sw.bb.i:                                          ; preds = %if.end14
  %hostwep.i = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 24
  %12 = ptrtoint ptr %hostwep.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hostwep.i, align 4
  %and.i = and i32 %13, -49
  store i32 %and.i, ptr %hostwep.i, align 4
  %data.i = getelementptr inbounds %struct.p80211msg_lnxreq_hostwep, ptr %msgbuf, i32 0, i32 4, i32 3
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %data.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp.i = icmp eq i32 %15, 1
  br i1 %cmp.i, label %if.then.i, label %sw.bb.i.if.end.i_crit_edge

sw.bb.i.if.end.i_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #5
  %or.i = or i32 %and.i, 16
  %16 = ptrtoint ptr %hostwep.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or.i, ptr %hostwep.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.bb.i.if.end.i_crit_edge
  %data2.i = getelementptr inbounds %struct.p80211msg_lnxreq_hostwep, ptr %msgbuf, i32 0, i32 5, i32 3
  %17 = ptrtoint ptr %data2.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %data2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp3.i = icmp eq i32 %18, 1
  br i1 %cmp3.i, label %if.then4.i, label %if.end.i.p80211req_handlemsg.exit_crit_edge

if.end.i.p80211req_handlemsg.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %p80211req_handlemsg.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %19 = ptrtoint ptr %hostwep.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hostwep.i, align 4
  %or6.i = or i32 %20, 32
  store i32 %or6.i, ptr %hostwep.i, align 4
  br label %p80211req_handlemsg.exit

sw.bb8.i:                                         ; preds = %if.end14.sw.bb8.i_crit_edge, %if.end14.sw.bb8.i_crit_edge36
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %10)
  %cmp10.i = icmp eq i32 %10, 65
  %data.i.i = getelementptr inbounds %struct.p80211msg_dot11req_mibget, ptr %msgbuf, i32 0, i32 3, i32 3
  %data1.i.i = getelementptr inbounds %struct.p80211msg_dot11req_mibget, ptr %msgbuf, i32 0, i32 3, i32 3, i32 8
  %add.ptr.i.i = getelementptr %struct.p80211msg_dot11req_mibget, ptr %msgbuf, i32 0, i32 3, i32 3, i32 9
  %21 = ptrtoint ptr %data.i.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %data.i.i, align 1
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %22, label %sw.bb8.i.p80211req_handlemsg.exit_crit_edge [
    i32 201330945, label %sw.bb8.i.sw.bb.i.i_crit_edge
    i32 201335041, label %sw.bb8.i.sw.bb.i.i_crit_edge37
    i32 201339137, label %sw.bb8.i.sw.bb.i.i_crit_edge38
    i32 201343233, label %sw.bb8.i.sw.bb.i.i_crit_edge39
    i32 402661761, label %sw.bb6.i.i
    i32 402657665, label %sw.bb18.i.i
    i32 402669953, label %sw.bb22.i.i
  ]

sw.bb8.i.sw.bb.i.i_crit_edge39:                   ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb.i.i

sw.bb8.i.sw.bb.i.i_crit_edge38:                   ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb.i.i

sw.bb8.i.sw.bb.i.i_crit_edge37:                   ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb.i.i

sw.bb8.i.sw.bb.i.i_crit_edge:                     ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb.i.i

sw.bb8.i.p80211req_handlemsg.exit_crit_edge:      ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %p80211req_handlemsg.exit

sw.bb.i.i:                                        ; preds = %sw.bb8.i.sw.bb.i.i_crit_edge, %sw.bb8.i.sw.bb.i.i_crit_edge37, %sw.bb8.i.sw.bb.i.i_crit_edge38, %sw.bb8.i.sw.bb.i.i_crit_edge39
  br i1 %cmp10.i, label %sw.bb.i.i.p80211req_handlemsg.exit_crit_edge, label %if.then.i.i

sw.bb.i.i.p80211req_handlemsg.exit_crit_edge:     ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %p80211req_handlemsg.exit

if.then.i.i:                                      ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %shr.i.i = lshr i32 %22, 12
  %and.i.i = and i32 %shr.i.i, 63
  %sub.i.i = add nsw i32 %and.i.i, -1
  %24 = ptrtoint ptr %data1.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %data1.i.i, align 1
  %conv.i.i = zext i8 %25 to i32
  %call.i.i = tail call i32 @wep_change_key(ptr noundef %wlandev, i32 noundef %sub.i.i, ptr noundef %add.ptr.i.i, i32 noundef %conv.i.i) #3
  br label %p80211req_handlemsg.exit

sw.bb6.i.i:                                       ; preds = %sw.bb8.i
  %hostwep13.i.i = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 24
  %26 = ptrtoint ptr %hostwep13.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hostwep13.i.i, align 4
  br i1 %cmp10.i, label %if.then11.i.i, label %if.else.i.i

if.then11.i.i:                                    ; preds = %sw.bb6.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %and12.i.i = and i32 %27, 3
  %28 = ptrtoint ptr %data1.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %and12.i.i, ptr %data1.i.i, align 4
  br label %p80211req_handlemsg.exit

if.else.i.i:                                      ; preds = %sw.bb6.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %and14.i.i = and i32 %27, -4
  %29 = ptrtoint ptr %hostwep13.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %and14.i.i, ptr %hostwep13.i.i, align 4
  %30 = ptrtoint ptr %data1.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %data1.i.i, align 4
  %and15.i.i = and i32 %31, 3
  %or.i.i = or i32 %and15.i.i, %and14.i.i
  store i32 %or.i.i, ptr %hostwep13.i.i, align 4
  br label %p80211req_handlemsg.exit

sw.bb18.i.i:                                      ; preds = %sw.bb8.i
  %hostwep4.i.i.i = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 24
  %32 = ptrtoint ptr %hostwep4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %hostwep4.i.i.i, align 4
  br i1 %cmp10.i, label %if.then.i.i.i, label %if.else3.i.i.i

if.then.i.i.i:                                    ; preds = %sw.bb18.i.i
  %and.i.i.i = and i32 %33, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.else.i.i.i, label %if.then2.i.i.i

if.then2.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %34 = ptrtoint ptr %data1.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %data1.i.i, align 4
  br label %p80211req_handlemsg.exit

if.else.i.i.i:                                    ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %35 = ptrtoint ptr %data1.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %data1.i.i, align 4
  br label %p80211req_handlemsg.exit

if.else3.i.i.i:                                   ; preds = %sw.bb18.i.i
  %and5.i.i.i = and i32 %33, -65
  %36 = ptrtoint ptr %hostwep4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %and5.i.i.i, ptr %hostwep4.i.i.i, align 4
  %37 = ptrtoint ptr %data1.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %data1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp.i.i.i = icmp eq i32 %38, 1
  br i1 %cmp.i.i.i, label %if.then6.i.i.i, label %if.else3.i.i.i.p80211req_handlemsg.exit_crit_edge

if.else3.i.i.i.p80211req_handlemsg.exit_crit_edge: ; preds = %if.else3.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %p80211req_handlemsg.exit

if.then6.i.i.i:                                   ; preds = %if.else3.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %or.i.i.i = or i32 %33, 64
  %39 = ptrtoint ptr %hostwep4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or.i.i.i, ptr %hostwep4.i.i.i, align 4
  br label %p80211req_handlemsg.exit

sw.bb22.i.i:                                      ; preds = %sw.bb8.i
  %hostwep4.i48.i.i = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 24
  %40 = ptrtoint ptr %hostwep4.i48.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %hostwep4.i48.i.i, align 4
  br i1 %cmp10.i, label %if.then.i45.i.i, label %if.else3.i51.i.i

if.then.i45.i.i:                                  ; preds = %sw.bb22.i.i
  %and.i43.i.i = and i32 %41, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i43.i.i)
  %tobool1.not.i44.i.i = icmp eq i32 %and.i43.i.i, 0
  br i1 %tobool1.not.i44.i.i, label %if.else.i47.i.i, label %if.then2.i46.i.i

if.then2.i46.i.i:                                 ; preds = %if.then.i45.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %42 = ptrtoint ptr %data1.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %data1.i.i, align 4
  br label %p80211req_handlemsg.exit

if.else.i47.i.i:                                  ; preds = %if.then.i45.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %43 = ptrtoint ptr %data1.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %data1.i.i, align 4
  br label %p80211req_handlemsg.exit

if.else3.i51.i.i:                                 ; preds = %sw.bb22.i.i
  %and5.i49.i.i = and i32 %41, -129
  %44 = ptrtoint ptr %hostwep4.i48.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %and5.i49.i.i, ptr %hostwep4.i48.i.i, align 4
  %45 = ptrtoint ptr %data1.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %data1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp.i50.i.i = icmp eq i32 %46, 1
  br i1 %cmp.i50.i.i, label %if.then6.i53.i.i, label %if.else3.i51.i.i.p80211req_handlemsg.exit_crit_edge

if.else3.i51.i.i.p80211req_handlemsg.exit_crit_edge: ; preds = %if.else3.i51.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %p80211req_handlemsg.exit

if.then6.i53.i.i:                                 ; preds = %if.else3.i51.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %or.i52.i.i = or i32 %41, 128
  %47 = ptrtoint ptr %hostwep4.i48.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or.i52.i.i, ptr %hostwep4.i48.i.i, align 4
  br label %p80211req_handlemsg.exit

p80211req_handlemsg.exit:                         ; preds = %if.then6.i53.i.i, %if.else3.i51.i.i.p80211req_handlemsg.exit_crit_edge, %if.else.i47.i.i, %if.then2.i46.i.i, %if.then6.i.i.i, %if.else3.i.i.i.p80211req_handlemsg.exit_crit_edge, %if.else.i.i.i, %if.then2.i.i.i, %if.else.i.i, %if.then11.i.i, %if.then.i.i, %sw.bb.i.i.p80211req_handlemsg.exit_crit_edge, %sw.bb8.i.p80211req_handlemsg.exit_crit_edge, %if.then4.i, %if.end.i.p80211req_handlemsg.exit_crit_edge, %if.end14.p80211req_handlemsg.exit_crit_edge
  %mlmerequest = getelementptr inbounds %struct.wlandevice, ptr %wlandev, i32 0, i32 15
  %48 = ptrtoint ptr %mlmerequest to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mlmerequest, align 4
  %tobool15.not = icmp eq ptr %49, null
  br i1 %tobool15.not, label %p80211req_handlemsg.exit.if.end19_crit_edge, label %if.then16

p80211req_handlemsg.exit.if.end19_crit_edge:      ; preds = %p80211req_handlemsg.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end19

if.then16:                                        ; preds = %p80211req_handlemsg.exit
  call void @__sanitizer_cov_trace_pc() #5
  %call18 = tail call i32 %49(ptr noundef %wlandev, ptr noundef %msgbuf) #3
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %p80211req_handlemsg.exit.if.end19_crit_edge
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %request_pending) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end11.cleanup_crit_edge, %if.then10, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end19 ], [ -1, %if.then10 ], [ -16, %if.end11.cleanup_crit_edge ], [ -19, %land.lhs.true.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wep_change_key(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/wlan-ng/p80211req.c", i32 130, i32 7}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
