; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/mt76x2/mcu.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/mt76x2/mcu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mt76x2_mcu_set_channel\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76x2_mcu_set_channel\09\09\09\09"
module asm "\09.long\09__crc_mt76x2_mcu_set_channel\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76x2_mcu_set_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76x2_mcu_set_channel\22\09\09\09\09\09"
module asm "__kstrtabns_mt76x2_mcu_set_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt76x2_mcu_load_cr\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76x2_mcu_load_cr\09\09\09\09"
module asm "\09.long\09__crc_mt76x2_mcu_load_cr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76x2_mcu_load_cr:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76x2_mcu_load_cr\22\09\09\09\09\09"
module asm "__kstrtabns_mt76x2_mcu_load_cr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt76x2_mcu_init_gain\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76x2_mcu_init_gain\09\09\09\09"
module asm "\09.long\09__crc_mt76x2_mcu_init_gain\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76x2_mcu_init_gain:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76x2_mcu_init_gain\22\09\09\09\09\09"
module asm "__kstrtabns_mt76x2_mcu_init_gain:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mt76x2_mcu_tssi_comp\22, \22a\22\09"
module asm "\09.weak\09__crc_mt76x2_mcu_tssi_comp\09\09\09\09"
module asm "\09.long\09__crc_mt76x2_mcu_tssi_comp\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt76x2_mcu_tssi_comp:\09\09\09\09\09"
module asm "\09.asciz \09\22mt76x2_mcu_tssi_comp\22\09\09\09\09\09"
module asm "__kstrtabns_mt76x2_mcu_tssi_comp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.anon.148 = type { i8, i8, i8, i8, i16, i8, i8 }
%struct.mt76_phy = type { ptr, ptr, ptr, i32, [7 x ptr], %struct.cfg80211_chan_def, ptr, ptr, i64, %struct.mt76_hw_cap, %struct.mt76_sband, %struct.mt76_sband, %struct.mt76_sband, [6 x i8], i32, i8, i16, %struct.mt76_testmode_data, %struct.delayed_work, i8, [5 x %struct.anon.135], ptr }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.mt76_hw_cap = type { i8, i8, i8 }
%struct.mt76_sband = type { %struct.ieee80211_supported_band, ptr }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.mt76_testmode_data = type { i32, [1 x i32], ptr, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, [4 x i8], i8, [3 x [6 x i8]], i32, i32, i16, i32, %struct.anon.134 }
%struct.anon.134 = type { [5 x i64], [5 x i64] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.135 = type { ptr, ptr, i16 }
%struct.anon.149 = type { i8, i8, i8, i8, i32 }
%struct.mt76_dev = type { %struct.mt76_phy, ptr, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.mt76_rx_status, i32, i32, %struct.mutex, ptr, ptr, ptr, ptr, %struct.mt76_mcu, [84 x i8], %struct.net_device, %struct.net_device, %struct.spinlock, [5 x %struct.napi_struct], [5 x %struct.sk_buff_head], %struct.list_head, [3 x ptr], [5 x %struct.mt76_queue], ptr, [4 x i32], %struct.mt76_worker, %struct.napi_struct, %struct.spinlock, %struct.idr, i32, %struct.wait_queue_head, %struct.spinlock, [9 x i32], [9 x i32], i32, %struct.mt76_wcid, [288 x ptr], %struct.list_head, i32, [32 x i32], %struct.tasklet_struct, i32, i8, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mt76_rate_power, [3 x i8], i32, i32, %struct.led_classdev, [32 x i8], i8, i8, i8, i32, ptr, %struct.anon.143, ptr, %union.anon.144, [20 x i8] }
%struct.mt76_rx_status = type <{ %union.anon.136, i32, i32, i32, [6 x i8], i8, i8, i16, i16, i32, i8, i16, i8, i8, i8, i8, i8, [4 x i8] }>
%union.anon.136 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mt76_mcu = type { %struct.mutex, i32, i32, %struct.sk_buff_head, %struct.wait_queue_head }
%struct.sk_buff_head = type { %union.anon.62, i32, %struct.spinlock }
%union.anon.62 = type { %struct.anon.63 }
%struct.anon.63 = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.106, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.127, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.106 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.127 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.mt76_queue = type { ptr, %struct.spinlock, %struct.spinlock, ptr, ptr, i16, i16, i16, i32, i32, i32, i8, i8, i8, i8, i8, i32, ptr, %struct.page_frag_cache }
%struct.page_frag_cache = type { ptr, i16, i16, i32, i8 }
%struct.mt76_worker = type { ptr, ptr, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.mt76_wcid = type { [16 x ptr], %struct.atomic_t, i32, %struct.ewma_signal, i32, %struct.rate_info, i16, i8, i8, i8, i8, [17 x [6 x i8]], i16, i32, i8, %struct.list_head, %struct.idr }
%struct.ewma_signal = type { i32 }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.140, i32 }
%union.anon.140 = type { ptr }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.mt76_rate_power = type { %union.anon.141 }
%union.anon.141 = type { %struct.anon.142 }
%struct.anon.142 = type { [4 x i8], [8 x i8], [10 x i8], [16 x i8], [10 x i8] }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.143 = type { ptr, i32 }
%union.anon.144 = type { %struct.mt76_usb }
%struct.mt76_usb = type { %struct.mutex, ptr, i16, %struct.mt76_worker, %struct.mt76_worker, %struct.work_struct, [6 x i8], [2 x i8], i8, %struct.mt76u_mcu }
%struct.mt76u_mcu = type { ptr, ptr, i32, i32, i8 }
%struct.anon.150 = type { i32, i32 }
%struct.anon.151 = type { i32, %struct.mt76x2_tssi_comp }
%struct.mt76x2_tssi_comp = type { i8, i8, i16, i8, i8, i8, i8 }

@__kstrtab_mt76x2_mcu_set_channel = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76x2_mcu_set_channel = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76x2_mcu_set_channel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76x2_mcu_set_channel to i32), ptr @__kstrtab_mt76x2_mcu_set_channel, ptr @__kstrtabns_mt76x2_mcu_set_channel }, section "___ksymtab_gpl+mt76x2_mcu_set_channel", align 4
@__kstrtab_mt76x2_mcu_load_cr = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76x2_mcu_load_cr = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76x2_mcu_load_cr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76x2_mcu_load_cr to i32), ptr @__kstrtab_mt76x2_mcu_load_cr, ptr @__kstrtabns_mt76x2_mcu_load_cr }, section "___ksymtab_gpl+mt76x2_mcu_load_cr", align 4
@__kstrtab_mt76x2_mcu_init_gain = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76x2_mcu_init_gain = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76x2_mcu_init_gain = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76x2_mcu_init_gain to i32), ptr @__kstrtab_mt76x2_mcu_init_gain, ptr @__kstrtabns_mt76x2_mcu_init_gain }, section "___ksymtab_gpl+mt76x2_mcu_init_gain", align 4
@__kstrtab_mt76x2_mcu_tssi_comp = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt76x2_mcu_tssi_comp = external dso_local constant [0 x i8], align 1
@__ksymtab_mt76x2_mcu_tssi_comp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt76x2_mcu_tssi_comp to i32), ptr @__kstrtab_mt76x2_mcu_tssi_comp, ptr @__kstrtabns_mt76x2_mcu_tssi_comp }, section "___ksymtab_gpl+mt76x2_mcu_tssi_comp", align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_mt76x2_mcu_init_gain, ptr @__ksymtab_mt76x2_mcu_load_cr, ptr @__ksymtab_mt76x2_mcu_set_channel, ptr @__ksymtab_mt76x2_mcu_tssi_comp], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt76x2_mcu_set_channel(ptr noundef %dev, i8 noundef zeroext %channel, i8 noundef zeroext %bw, i8 noundef zeroext %bw_index, i1 noundef zeroext %scan) #0 align 64 {
entry:
  %msg = alloca %struct.anon.148, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %scan to i8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %msg) #4
  %0 = getelementptr inbounds %struct.anon.148, ptr %msg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.anon.148, ptr %msg, i32 0, i32 2
  %2 = getelementptr inbounds %struct.anon.148, ptr %msg, i32 0, i32 3
  %3 = getelementptr inbounds %struct.anon.148, ptr %msg, i32 0, i32 4
  %4 = getelementptr inbounds %struct.anon.148, ptr %msg, i32 0, i32 5
  %5 = getelementptr inbounds %struct.anon.148, ptr %msg, i32 0, i32 6
  %6 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %channel, ptr %msg, align 4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool, ptr %0, align 1
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %bw, ptr %1, align 2
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %2, align 1
  %chainmask3 = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 16
  %10 = ptrtoint ptr %chainmask3 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %chainmask3, align 2
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %3, align 4
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %4, align 2
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %5, align 1
  %call.i = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %dev, i32 noundef 30, ptr noundef nonnull %msg, i32 noundef 8, i1 noundef zeroext true, ptr noundef null) #4
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #4
  %add = add i8 %bw_index, -32
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %add, ptr %4, align 2
  %call.i10 = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %dev, i32 noundef 30, ptr noundef nonnull %msg, i32 noundef 8, i1 noundef zeroext true, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %msg) #4
  ret i32 %call.i10
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt76x2_mcu_load_cr(ptr noundef %dev, i8 noundef zeroext %type, i8 noundef zeroext %temp_level, i8 noundef zeroext %channel) #0 align 64 {
entry:
  %msg = alloca %struct.anon.149, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %msg) #4
  %0 = getelementptr inbounds %struct.anon.149, ptr %msg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.anon.149, ptr %msg, i32 0, i32 2
  %2 = getelementptr inbounds %struct.anon.149, ptr %msg, i32 0, i32 3
  %3 = getelementptr inbounds %struct.anon.149, ptr %msg, i32 0, i32 4
  %4 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %type, ptr %msg, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %temp_level, ptr %0, align 1
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %channel, ptr %1, align 2
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %2, align 1
  %eeprom.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 44
  %8 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %eeprom.i, align 16
  %add.ptr.i = getelementptr i8, ptr %9, i32 52
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %add.ptr.i, align 1
  %12 = and i16 %11, 255
  %add.ptr.i11 = getelementptr i8, ptr %9, i32 54
  %13 = ptrtoint ptr %add.ptr.i11 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %add.ptr.i11, align 1
  %15 = and i16 %14, -256
  %or13 = or i16 %15, %12
  %or = zext i16 %or13 to i32
  %or3 = or i32 %or, -2147483648
  %16 = tail call i32 @llvm.bswap.i32(i32 %or3)
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %3, align 4
  %call.i = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %dev, i32 noundef 2, ptr noundef nonnull %msg, i32 noundef 8, i1 noundef zeroext true, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %msg) #4
  ret i32 %call.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt76x2_mcu_init_gain(ptr noundef %dev, i8 noundef zeroext %channel, i32 noundef %gain, i1 noundef zeroext %force) #0 align 64 {
entry:
  %msg = alloca %struct.anon.150, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %msg) #4
  %0 = getelementptr inbounds %struct.anon.150, ptr %msg, i32 0, i32 1
  %conv = zext i8 %channel to i32
  %1 = shl nuw i32 %conv, 24
  %2 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %msg, align 4
  %3 = tail call i32 @llvm.bswap.i32(i32 %gain)
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %0, align 4
  br i1 %force, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %or = or i32 %1, 128
  %5 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or, ptr %msg, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call.i = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %dev, i32 noundef 3, ptr noundef nonnull %msg, i32 noundef 8, i1 noundef zeroext true, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %msg) #4
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt76x2_mcu_tssi_comp(ptr noundef %dev, ptr nocapture noundef readonly %tssi_data) #0 align 64 {
entry:
  %msg = alloca %struct.anon.151, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #4
  %0 = getelementptr inbounds %struct.anon.151, ptr %msg, i32 0, i32 1
  %1 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 167772160, ptr %msg, align 4
  %2 = ptrtoint ptr %tssi_data to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %tssi_data, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 %3, ptr %0, align 4
  %call.i = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %dev, i32 noundef 31, ptr noundef nonnull %msg, i32 noundef 12, i1 noundef zeroext true, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #4
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_mcu_send_and_get_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @__ksymtab_mt76x2_mcu_set_channel, !1, !"__ksymtab_mt76x2_mcu_set_channel", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x2/mcu.c", i32 45, i32 1}
!2 = !{ptr @__ksymtab_mt76x2_mcu_load_cr, !3, !"__ksymtab_mt76x2_mcu_load_cr", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x2/mcu.c", i32 73, i32 1}
!4 = !{ptr @__ksymtab_mt76x2_mcu_init_gain, !5, !"__ksymtab_mt76x2_mcu_init_gain", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x2/mcu.c", i32 92, i32 1}
!6 = !{ptr @__ksymtab_mt76x2_mcu_tssi_comp, !7, !"__ksymtab_mt76x2_mcu_tssi_comp", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/mediatek/mt76/mt76x2/mcu.c", i32 108, i32 1}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
