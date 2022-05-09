; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ralink/rt2x00/rt2x00crypto.c_pt.bc'
source_filename = "../drivers/net/wireless/ralink/rt2x00/rt2x00crypto.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.rt2x00_dev = type { ptr, ptr, ptr, ptr, [6 x %struct.ieee80211_supported_band], ptr, i32, i32, ptr, %struct.rt2x00_led, %struct.rt2x00_led, %struct.rt2x00_led, i16, i32, i32, i32, ptr, %struct.rt2x00_chip, %struct.hw_mode_spec, %struct.antenna_setup, %union.csr, %struct.mutex, %struct.mutex, i32, i32, i32, i32, i32, %struct.ieee80211_iface_limit, [1 x %struct.ieee80211_iface_combination], %struct.link, ptr, ptr, i16, i16, i8, i8, i8, i8, i16, i16, i32, %struct.ieee80211_low_level_stats, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.work_struct, i32, ptr, ptr, ptr, ptr, ptr, %struct.anon.140, %struct.hrtimer, %struct.tasklet_struct, %struct.tasklet_struct, %struct.tasklet_struct, %struct.tasklet_struct, %struct.tasklet_struct, i32, %struct.spinlock, %struct.list_head, %struct.spinlock, i32, ptr, i32, ptr }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.rt2x00_led = type { ptr, %struct.led_classdev, i32, i32 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rt2x00_chip = type { i16, i16, i16, i32 }
%struct.hw_mode_spec = type { i32, i32, i32, ptr, ptr, %struct.ieee80211_sta_ht_cap }
%struct.antenna_setup = type { i32, i32, i8, i8 }
%union.csr = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ieee80211_iface_limit = type { i16, i16 }
%struct.ieee80211_iface_combination = type { ptr, i32, i16, i8, i8, i8, i8, i32 }
%struct.link = type { i32, %struct.link_qual, %struct.link_ant, %struct.ewma_rssi, %struct.delayed_work, %struct.delayed_work, i32, i8, %struct.delayed_work, %struct.delayed_work }
%struct.link_qual = type { i32, i32, i8, i8, i32, i32, i32, i32 }
%struct.link_ant = type { i32, %struct.antenna_setup, i32, %struct.ewma_rssi }
%struct.ewma_rssi = type { i32 }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.140 = type { %union.anon.141, [0 x i32] }
%union.anon.141 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.99, i32 }
%union.anon.99 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.txentry_desc = type { i32, i16, i16, %union.anon.100, i32, i16, i32, i16, i16, i16 }
%union.anon.100 = type { %struct.anon.102 }
%struct.anon.102 = type { i16, i8, i8, i8, i32, i32 }
%struct.rxdone_entry_desc = type { i64, i32, i32, i32, i32, i32, i16, i16, i32, i32, i8, i8, [2 x i32], i32 }

@switch.table.rt2x00crypto_key_to_cipher = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 3, i32 0, i32 4, i32 2], [44 x i8] zeroinitializer }, align 32
@switch.table.rt2x00crypto_create_tx_descriptor = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 3, i32 0, i32 4, i32 2], [44 x i8] zeroinitializer }, align 32
@switch.table.rt2x00crypto_rx_insert_iv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4, i32 4, i32 8, i32 8], [16 x i8] zeroinitializer }, align 32
@switch.table.rt2x00crypto_rx_insert_iv.1 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4, i32 4, i32 4, i32 8], [16 x i8] zeroinitializer }, align 32
@___asan_gen_ = private constant [53 x i8] c"../drivers/net/wireless/ralink/rt2x00/rt2x00crypto.c\00", align 1
@___asan_gen_.2 = private unnamed_addr constant [40 x i8] c"switch.table.rt2x00crypto_key_to_cipher\00", align 1
@___asan_gen_.3 = private unnamed_addr constant [47 x i8] c"switch.table.rt2x00crypto_create_tx_descriptor\00", align 1
@___asan_gen_.4 = private unnamed_addr constant [39 x i8] c"switch.table.rt2x00crypto_rx_insert_iv\00", align 1
@___asan_gen_.5 = private unnamed_addr constant [41 x i8] c"switch.table.rt2x00crypto_rx_insert_iv.1\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @switch.table.rt2x00crypto_key_to_cipher, ptr @switch.table.rt2x00crypto_create_tx_descriptor, ptr @switch.table.rt2x00crypto_rx_insert_iv, ptr @switch.table.rt2x00crypto_rx_insert_iv.1], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rt2x00crypto_key_to_cipher to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rt2x00crypto_create_tx_descriptor to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rt2x00crypto_rx_insert_iv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rt2x00crypto_rx_insert_iv.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rt2x00crypto_key_to_cipher(ptr nocapture noundef readonly %key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cipher = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 1
  %0 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cipher, align 8
  %switch.tableidx = add i32 %1, -1027073
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 5
  br i1 %2, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.rt2x00crypto_key_to_cipher, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi i32 [ %switch.load, %switch.lookup ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rt2x00crypto_create_tx_descriptor(ptr noundef %rt2x00dev, ptr nocapture noundef readonly %skb, ptr nocapture noundef %txdesc) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_key1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %0 = ptrtoint ptr %hw_key1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_key1, align 4
  %cap_flags.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 14
  %2 = ptrtoint ptr %cap_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %cap_flags.i.i, align 4
  %4 = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.i.not = icmp eq i32 %4, 0
  %tobool.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.i.i.not, i1 true, i1 %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %txdesc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %txdesc, align 4
  %or.i = or i32 %6, 512
  store i32 %or.i, ptr %txdesc, align 4
  %cipher.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %cipher.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cipher.i, align 8
  %switch.tableidx = add i32 %8, -1027073
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %9 = icmp ult i32 %switch.tableidx, 5
  br i1 %9, label %switch.lookup, label %if.end.rt2x00crypto_key_to_cipher.exit_crit_edge

if.end.rt2x00crypto_key_to_cipher.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %rt2x00crypto_key_to_cipher.exit

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.rt2x00crypto_create_tx_descriptor, i32 0, i32 %switch.tableidx
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %rt2x00crypto_key_to_cipher.exit

rt2x00crypto_key_to_cipher.exit:                  ; preds = %switch.lookup, %if.end.rt2x00crypto_key_to_cipher.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.end.rt2x00crypto_key_to_cipher.exit_crit_edge ]
  %cipher = getelementptr inbounds %struct.txentry_desc, ptr %txdesc, i32 0, i32 6
  %11 = ptrtoint ptr %cipher to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %retval.0.i, ptr %cipher, align 4
  %flags4 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %flags4 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %flags4, align 8
  %14 = and i16 %13, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool5.not = icmp eq i16 %14, 0
  br i1 %tobool5.not, label %rt2x00crypto_key_to_cipher.exit.if.end8_crit_edge, label %if.then6

rt2x00crypto_key_to_cipher.exit.if.end8_crit_edge: ; preds = %rt2x00crypto_key_to_cipher.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then6:                                         ; preds = %rt2x00crypto_key_to_cipher.exit
  call void @__sanitizer_cov_trace_pc() #7
  %or.i41 = or i32 %6, 1536
  %15 = ptrtoint ptr %txdesc to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or.i41, ptr %txdesc, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %rt2x00crypto_key_to_cipher.exit.if.end8_crit_edge
  %hw_key_idx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %hw_key_idx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %hw_key_idx, align 2
  %conv9 = zext i8 %17 to i16
  %key_idx = getelementptr inbounds %struct.txentry_desc, ptr %txdesc, i32 0, i32 7
  %18 = ptrtoint ptr %key_idx to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv9, ptr %key_idx, align 4
  %header_length = getelementptr inbounds %struct.txentry_desc, ptr %txdesc, i32 0, i32 2
  %19 = ptrtoint ptr %header_length to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %header_length, align 2
  %iv_offset = getelementptr inbounds %struct.txentry_desc, ptr %txdesc, i32 0, i32 8
  %21 = ptrtoint ptr %iv_offset to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %iv_offset, align 2
  %iv_len = getelementptr inbounds %struct.ieee80211_key_conf, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %iv_len to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %iv_len, align 1
  %conv10 = zext i8 %23 to i16
  %iv_len11 = getelementptr inbounds %struct.txentry_desc, ptr %txdesc, i32 0, i32 9
  %24 = ptrtoint ptr %iv_len11 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv10, ptr %iv_len11, align 4
  %25 = ptrtoint ptr %flags4 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %flags4, align 8
  %27 = and i16 %26, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool15.not = icmp eq i16 %27, 0
  br i1 %tobool15.not, label %if.then16, label %if.end8.if.end18_crit_edge

if.end8.if.end18_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then16:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %txdesc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %txdesc, align 4
  %or.i42 = or i32 %29, 2048
  store i32 %or.i42, ptr %txdesc, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end8.if.end18_crit_edge
  %30 = ptrtoint ptr %flags4 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %flags4, align 8
  %32 = and i16 %31, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool22.not = icmp eq i16 %32, 0
  br i1 %tobool22.not, label %if.then23, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %txdesc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %txdesc, align 4
  %or.i43 = or i32 %34, 4096
  store i32 %or.i43, ptr %txdesc, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %if.end18.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rt2x00crypto_tx_overhead(ptr noundef %rt2x00dev, ptr nocapture noundef readonly %skb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_key = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %0 = ptrtoint ptr %hw_key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_key, align 4
  %cap_flags.i.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 14
  %2 = ptrtoint ptr %cap_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %cap_flags.i.i, align 4
  %4 = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.i.not = icmp eq i32 %4, 0
  %tobool.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.i.i.not, i1 true, i1 %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %icv_len = getelementptr inbounds %struct.ieee80211_key_conf, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %icv_len to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %icv_len, align 4
  %conv = zext i8 %6 to i32
  %flags = getelementptr inbounds %struct.ieee80211_key_conf, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %flags, align 8
  %9 = and i16 %8, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool3.not = icmp eq i16 %9, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %iv_len = getelementptr inbounds %struct.ieee80211_key_conf, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %iv_len to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %iv_len, align 1
  %conv5 = zext i8 %11 to i32
  %add6 = add nuw nsw i32 %conv5, %conv
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %overhead.0 = phi i32 [ %conv, %if.end.if.end7_crit_edge ], [ %add6, %if.then4 ]
  %12 = and i16 %8, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool11.not = icmp eq i16 %12, 0
  br i1 %tobool11.not, label %if.then12, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %cipher = getelementptr inbounds %struct.ieee80211_key_conf, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cipher, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1027074, i32 %14)
  %cmp = icmp eq i32 %14, 1027074
  %add15 = add nuw nsw i32 %overhead.0, 8
  %spec.select = select i1 %cmp, i32 %add15, i32 %overhead.0
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %overhead.0, %if.end7.cleanup_crit_edge ], [ %spec.select, %if.then12 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rt2x00crypto_tx_copy_iv(ptr nocapture noundef %skb, ptr nocapture noundef readonly %txdesc) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %iv_len = getelementptr inbounds %struct.txentry_desc, ptr %txdesc, i32 0, i32 9
  %0 = ptrtoint ptr %iv_len to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %iv_len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !9

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %iv = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %iv_offset = getelementptr inbounds %struct.txentry_desc, ptr %txdesc, i32 0, i32 8
  %4 = ptrtoint ptr %iv_offset to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %iv_offset, align 2
  %conv = zext i16 %5 to i32
  %add.ptr = getelementptr i8, ptr %3, i32 %conv
  %conv5 = zext i16 %1 to i32
  %6 = call ptr @memcpy(ptr %iv, ptr %add.ptr, i32 %conv5)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rt2x00crypto_tx_remove_iv(ptr noundef %skb, ptr nocapture noundef %txdesc) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %iv_len = getelementptr inbounds %struct.txentry_desc, ptr %txdesc, i32 0, i32 9
  %0 = ptrtoint ptr %iv_len to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %iv_len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !9

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %iv = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %iv_offset = getelementptr inbounds %struct.txentry_desc, ptr %txdesc, i32 0, i32 8
  %5 = ptrtoint ptr %iv_offset to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %iv_offset, align 2
  %conv = zext i16 %6 to i32
  %add.ptr = getelementptr i8, ptr %4, i32 %conv
  %conv5 = zext i16 %1 to i32
  %7 = call ptr @memcpy(ptr %iv, ptr %add.ptr, i32 %conv5)
  %8 = load ptr, ptr %data, align 4
  %9 = ptrtoint ptr %iv_len to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %iv_len, align 4
  %conv8 = zext i16 %10 to i32
  %add.ptr9 = getelementptr i8, ptr %8, i32 %conv8
  %11 = load i16, ptr %iv_offset, align 2
  %conv12 = zext i16 %11 to i32
  %12 = call ptr @memmove(ptr %add.ptr9, ptr %8, i32 %conv12)
  %13 = load i16, ptr %iv_len, align 4
  %conv14 = zext i16 %13 to i32
  %call15 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %conv14) #5
  %14 = ptrtoint ptr %iv_len to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %iv_len, align 4
  %length = getelementptr inbounds %struct.txentry_desc, ptr %txdesc, i32 0, i32 1
  %16 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %length, align 4
  %sub = sub i16 %17, %15
  store i16 %sub, ptr %length, align 4
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %2, align 4
  %20 = or i8 %19, 4
  store i8 %20, ptr %2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rt2x00crypto_tx_insert_iv(ptr noundef %skb, i32 noundef %header_length) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %0, align 4
  %3 = and i8 %2, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool10.not = icmp eq i8 %3, 0
  br i1 %tobool10.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %iv = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %4 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %mul = select i1 %tobool.not, i32 0, i32 4
  %arrayidx3 = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  %mul9 = select i1 %tobool4.not, i32 0, i32 4
  %add = add nuw nsw i32 %mul9, %mul
  %call11 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %add) #5
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 %add
  %10 = call ptr @memmove(ptr %9, ptr %add.ptr, i32 %header_length)
  %11 = load ptr, ptr %data, align 4
  %add.ptr14 = getelementptr i8, ptr %11, i32 %header_length
  %12 = call ptr @memcpy(ptr %add.ptr14, ptr %iv, i32 %add)
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %0, align 4
  %15 = and i8 %14, -5
  store i8 %15, ptr %0, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rt2x00crypto_rx_insert_iv(ptr noundef %skb, i32 noundef %header_length, ptr nocapture noundef %rxdesc) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 3
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 8
  %sub = sub i32 %1, %header_length
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %header_length
  %4 = ptrtoint ptr %add.ptr to i32
  %and = and i32 %4, 3
  %cipher = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 10
  %5 = ptrtoint ptr %cipher to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %cipher, align 8
  %switch.tableidx = add i8 %6, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx)
  %7 = icmp ult i8 %switch.tableidx, 4
  br i1 %7, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %8 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.rt2x00crypto_rx_insert_iv, i32 0, i32 %8
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load i32, ptr %switch.gep, align 4
  %10 = sext i8 %switch.tableidx to i32
  %switch.gep115 = getelementptr inbounds [4 x i32], ptr @switch.table.rt2x00crypto_rx_insert_iv.1, i32 0, i32 %10
  %11 = ptrtoint ptr %switch.gep115 to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load116 = load i32, ptr %switch.gep115, align 4
  %dev_flags = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 5
  %12 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dev_flags, align 8
  %and3 = and i32 %13, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  %sub4 = sub nuw nsw i32 %switch.load, %and
  %call = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %sub4) #5
  %call5 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef %switch.load116) #5
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %add.ptr11 = getelementptr i8, ptr %15, i32 %sub4
  %16 = call ptr @memmove(ptr %15, ptr %add.ptr11, i32 %header_length)
  br label %if.end33

if.else:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  %add12 = or i32 %switch.load, %and
  %call13 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %add12) #5
  %sub16 = sub nuw nsw i32 %switch.load116, %and
  %call17 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef %sub16) #5
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %add.ptr30 = getelementptr i8, ptr %18, i32 %switch.load
  %add.ptr31 = getelementptr i8, ptr %add.ptr30, i32 %and
  %19 = call ptr @memmove(ptr %18, ptr %add.ptr31, i32 %header_length)
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  %add.ptr35 = getelementptr i8, ptr %21, i32 %header_length
  %iv = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 12
  %22 = call ptr @memcpy(ptr %add.ptr35, ptr %iv, i32 %switch.load)
  %23 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dev_flags, align 8
  %and38 = and i32 %24, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.then40, label %if.end33.if.end46_crit_edge

if.end33.if.end46_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

if.then40:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  %add36 = add i32 %switch.load, %header_length
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data, align 4
  %add.ptr42 = getelementptr i8, ptr %26, i32 %add36
  %add.ptr45 = getelementptr i8, ptr %add.ptr42, i32 %and
  %27 = call ptr @memmove(ptr %add.ptr42, ptr %add.ptr45, i32 %sub)
  br label %if.end46

if.end46:                                         ; preds = %if.then40, %if.end33.if.end46_crit_edge
  %add47 = add i32 %switch.load, %1
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data, align 4
  %add.ptr49 = getelementptr i8, ptr %29, i32 %add47
  %icv = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 13
  %30 = ptrtoint ptr %icv to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %icv, align 4
  %32 = ptrtoint ptr %add.ptr49 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %31, ptr %add.ptr49, align 1
  %add50 = add i32 %add47, %switch.load116
  %33 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add50, ptr %size, align 8
  %flags = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 4
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags, align 4
  %and52 = and i32 %35, -17
  store i32 %and52, ptr %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
