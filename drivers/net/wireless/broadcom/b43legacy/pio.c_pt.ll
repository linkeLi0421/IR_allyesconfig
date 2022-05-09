; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/b43legacy/pio.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/b43legacy/pio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.b43legacy_wldev = type { ptr, ptr, %struct.atomic_t, i32, i8, i8, i8, i8, i8, %struct.b43legacy_phy, %union.anon.131, %struct.b43legacy_stats, %struct.b43legacy_led, %struct.b43legacy_led, %struct.b43legacy_led, %struct.b43legacy_led, i32, [6 x i32], i32, %struct.b43legacy_noise_calculation, i32, %struct.tasklet_struct, %struct.delayed_work, i32, %struct.work_struct, i16, i8, [58 x %struct.b43legacy_key], %struct.b43legacy_firmware, ptr, %struct.completion, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.b43legacy_phy = type { i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, %struct.anon.128, [2 x i16], [2 x i16], ptr, ptr, i8, i32, i32, ptr, i16, i16, i16, i16, i16, i8, [2 x i16], %struct.anon.129, %struct.anon.130, i32, [26 x i32], [2 x i16], i32, [64 x i8], i8, i16, i16, %struct.atomic_t, i8, i8 }
%struct.anon.128 = type { i8, i16, i16 }
%struct.anon.129 = type { i16, i16, i16, i16 }
%struct.anon.130 = type { i16 }
%union.anon.131 = type { %struct.b43legacy_dma }
%struct.b43legacy_dma = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.b43legacy_stats = type { i8, i32, i32 }
%struct.b43legacy_led = type { ptr, %struct.led_classdev, i8, i8, [32 x i8] }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.b43legacy_noise_calculation = type { i8, i8, i8, [8 x [4 x i8]] }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.132, i32 }
%union.anon.132 = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.b43legacy_key = type { ptr, i8, i8 }
%struct.b43legacy_firmware = type { ptr, ptr, ptr, ptr, i16, i16 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.b43legacy_pioqueue = type { ptr, i16, i8, i8, i8, i16, i16, i8, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.tasklet_struct, [256 x %struct.b43legacy_pio_txpacket] }
%struct.b43legacy_pio_txpacket = type { ptr, ptr, %struct.list_head }
%struct.ssb_device = type { ptr, ptr, ptr, ptr, %struct.ssb_device_id, i8, i32, ptr, ptr }
%struct.ssb_device_id = type { i16, i16, i8, i8 }
%struct.ssb_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.b43legacy_txstatus = type { i16, i16, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.b43legacy_wl = type { ptr, ptr, %struct.spinlock, %struct.mutex, %struct.spinlock, %struct.work_struct, ptr, [6 x i8], [6 x i8], i32, i8, i32, %struct.ieee80211_low_level_stats, %struct.hwrng, i8, [31 x i8], %struct.list_head, i8, i8, i8, ptr, i8, i8, i8, %struct.work_struct, [4 x %struct.b43legacy_qos_params], %struct.work_struct, [4 x %struct.sk_buff_head], [4 x i8] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.kref = type { %struct.refcount_struct }
%struct.b43legacy_qos_params = type { %struct.ieee80211_tx_queue_params }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.b43legacy_rxhdr_fw3 = type { i16, [2 x i8], i16, i8, i8, [2 x i8], i16, i16, i16, i16 }
%union.txhdr_union = type { %struct.b43legacy_txhdr_fw3 }
%struct.b43legacy_txhdr_fw3 = type <{ i32, i16, i16, i16, [16 x i8], [6 x i8], i16, %struct.b43legacy_plcp_hdr4, i16, %struct.b43legacy_plcp_hdr4, i16, [2 x i8], i16, i16, %struct.b43legacy_plcp_hdr6, [18 x i8], %struct.b43legacy_plcp_hdr6 }>
%struct.b43legacy_plcp_hdr4 = type { %union.anon.152 }
%union.anon.152 = type { i32 }
%struct.b43legacy_plcp_hdr6 = type { %union.anon.153 }
%union.anon.153 = type <{ i32, [2 x i8] }>
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }

@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PIO initialized\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/wireless/broadcom/b43legacy/pio.c\00", [50 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"PIO RX timed out\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"len > 0x700\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"len == 0\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Frame FCS error\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OOM\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"This card does not support PIO operation mode. Please use DMA mode (module parameter pio=0).\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"PIO tx device-queue too small (%u)\0A\00", [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"PIO queue too small. Dropping packet.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"PIO RX error: %s\0A\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 435, i32 24 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 458, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 576, i32 31 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 582, i32 26 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 587, i32 26 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 604, i32 9 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 619, i32 26 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 343, i32 25 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 349, i32 25 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 226, i32 33 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.42 = private constant [49 x i8] c"../drivers/net/wireless/broadcom/b43legacy/pio.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 541, i32 31 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43legacy_pio_free(ptr nocapture noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %__using_pio.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %__using_pio.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %__using_pio.i, align 4, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 10
  %queue3 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 10, i32 0, i32 3
  %3 = ptrtoint ptr %queue3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %queue3, align 4
  tail call fastcc void @b43legacy_destroy_pioqueue(ptr noundef %4)
  %5 = ptrtoint ptr %queue3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %queue3, align 4
  %queue2 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 10, i32 0, i32 2
  %6 = ptrtoint ptr %queue2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %queue2, align 4
  tail call fastcc void @b43legacy_destroy_pioqueue(ptr noundef %7)
  %8 = ptrtoint ptr %queue2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %queue2, align 4
  %queue1 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 10, i32 0, i32 1
  %9 = ptrtoint ptr %queue1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %queue1, align 4
  tail call fastcc void @b43legacy_destroy_pioqueue(ptr noundef %10)
  %11 = ptrtoint ptr %queue1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %queue1, align 4
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %2, align 4
  tail call fastcc void @b43legacy_destroy_pioqueue(ptr noundef %13)
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @b43legacy_destroy_pioqueue(ptr noundef %queue) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %queue, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  %txtask.i = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %queue, i32 0, i32 12
  tail call void @tasklet_kill(ptr noundef %txtask.i) #5
  %txrunning.i = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %queue, i32 0, i32 11
  %0 = ptrtoint ptr %txrunning.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %txrunning.i, align 4
  %cmp.not67.i = icmp eq ptr %1, %txrunning.i
  br i1 %cmp.not67.i, label %if.end.for.end.i_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.for.end.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.i:                                       ; preds = %free_txpacket.exit.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %.pn.in68.i = phi ptr [ %.pn.i, %free_txpacket.exit.i.for.body.i_crit_edge ], [ %1, %if.end.for.body.i_crit_edge ]
  %packet.0.i = getelementptr i8, ptr %.pn.in68.i, i32 -8
  %2 = ptrtoint ptr %.pn.in68.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %.pn.in68.i, align 4
  %3 = ptrtoint ptr %packet.0.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %packet.0.i, align 4
  %skb.i.i = getelementptr i8, ptr %.pn.in68.i, i32 -4
  %5 = ptrtoint ptr %skb.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %skb.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %for.body.i.if.end6.i.i_crit_edge, label %if.then.i.i

for.body.i.if.end6.i.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @consume_skb(ptr noundef nonnull %6) #5
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.then.i.i, %for.body.i.if.end6.i.i_crit_edge
  %txfree.i.i = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %4, i32 0, i32 8
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in68.i) #5
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end6.i.i.__list_del_entry.exit.i.i.i_crit_edge

if.end6.i.i.__list_del_entry.exit.i.i.i_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__list_del_entry.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i.i = getelementptr i8, ptr %.pn.in68.i, i32 4
  %7 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i.i.i, align 4
  %9 = ptrtoint ptr %.pn.in68.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %.pn.in68.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %__list_del_entry.exit.i.i.i

__list_del_entry.exit.i.i.i:                      ; preds = %if.end.i.i.i.i, %if.end6.i.i.__list_del_entry.exit.i.i.i_crit_edge
  %13 = ptrtoint ptr %txfree.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %txfree.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn.in68.i, ptr noundef %txfree.i.i, ptr noundef %14) #5
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %__list_del_entry.exit.i.i.i.free_txpacket.exit.i_crit_edge

__list_del_entry.exit.i.i.i.free_txpacket.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_txpacket.exit.i

if.end.i.i.i.i.i:                                 ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i2.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %.pn.in68.i, ptr %prev1.i.i2.i.i.i, align 4
  %16 = ptrtoint ptr %.pn.in68.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %14, ptr %.pn.in68.i, align 4
  %prev3.i.i.i.i.i = getelementptr i8, ptr %.pn.in68.i, i32 4
  %17 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %txfree.i.i, ptr %prev3.i.i.i.i.i, align 4
  %18 = ptrtoint ptr %txfree.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %.pn.in68.i, ptr %txfree.i.i, align 4
  br label %free_txpacket.exit.i

free_txpacket.exit.i:                             ; preds = %if.end.i.i.i.i.i, %__list_del_entry.exit.i.i.i.free_txpacket.exit.i_crit_edge
  %nr_txfree.i.i = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %4, i32 0, i32 9
  %19 = ptrtoint ptr %nr_txfree.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nr_txfree.i.i, align 4
  %inc.i.i = add i32 %20, 1
  store i32 %inc.i.i, ptr %nr_txfree.i.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %txrunning.i
  br i1 %cmp.not.i, label %free_txpacket.exit.i.for.end.i_crit_edge, label %free_txpacket.exit.i.for.body.i_crit_edge

free_txpacket.exit.i.for.body.i_crit_edge:        ; preds = %free_txpacket.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

free_txpacket.exit.i.for.end.i_crit_edge:         ; preds = %free_txpacket.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.end.i:                                        ; preds = %free_txpacket.exit.i.for.end.i_crit_edge, %if.end.for.end.i_crit_edge
  %txqueue.i = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %queue, i32 0, i32 10
  %21 = ptrtoint ptr %txqueue.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %txqueue.i, align 4
  %cmp24.not70.i = icmp eq ptr %22, %txqueue.i
  br i1 %cmp24.not70.i, label %for.end.i.cancel_transfers.exit_crit_edge, label %for.end.i.for.body26.i_crit_edge

for.end.i.for.body26.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body26.i

for.end.i.cancel_transfers.exit_crit_edge:        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cancel_transfers.exit

for.body26.i:                                     ; preds = %free_txpacket.exit66.i.for.body26.i_crit_edge, %for.end.i.for.body26.i_crit_edge
  %.pn46.in71.i = phi ptr [ %.pn46.i, %free_txpacket.exit66.i.for.body26.i_crit_edge ], [ %22, %for.end.i.for.body26.i_crit_edge ]
  %packet.1.i = getelementptr i8, ptr %.pn46.in71.i, i32 -8
  %23 = ptrtoint ptr %.pn46.in71.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn46.i = load ptr, ptr %.pn46.in71.i, align 4
  %24 = ptrtoint ptr %packet.1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %packet.1.i, align 4
  %skb.i49.i = getelementptr i8, ptr %.pn46.in71.i, i32 -4
  %26 = ptrtoint ptr %skb.i49.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %skb.i49.i, align 4
  %tobool.not.i50.i = icmp eq ptr %27, null
  br i1 %tobool.not.i50.i, label %for.body26.i.if.end6.i55.i_crit_edge, label %if.then.i51.i

for.body26.i.if.end6.i55.i_crit_edge:             ; preds = %for.body26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i55.i

if.then.i51.i:                                    ; preds = %for.body26.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @consume_skb(ptr noundef nonnull %27) #5
  br label %if.end6.i55.i

if.end6.i55.i:                                    ; preds = %if.then.i51.i, %for.body26.i.if.end6.i55.i_crit_edge
  %txfree.i53.i = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %25, i32 0, i32 8
  %call.i.i.i54.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn46.in71.i) #5
  br i1 %call.i.i.i54.i, label %if.end.i.i.i58.i, label %if.end6.i55.i.__list_del_entry.exit.i.i60.i_crit_edge

if.end6.i55.i.__list_del_entry.exit.i.i60.i_crit_edge: ; preds = %if.end6.i55.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__list_del_entry.exit.i.i60.i

if.end.i.i.i58.i:                                 ; preds = %if.end6.i55.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i56.i = getelementptr i8, ptr %.pn46.in71.i, i32 4
  %28 = ptrtoint ptr %prev.i.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i.i56.i, align 4
  %30 = ptrtoint ptr %.pn46.in71.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %.pn46.in71.i, align 4
  %prev1.i.i.i.i57.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i.i57.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev1.i.i.i.i57.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %31, ptr %29, align 4
  br label %__list_del_entry.exit.i.i60.i

__list_del_entry.exit.i.i60.i:                    ; preds = %if.end.i.i.i58.i, %if.end6.i55.i.__list_del_entry.exit.i.i60.i_crit_edge
  %34 = ptrtoint ptr %txfree.i53.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %txfree.i53.i, align 4
  %call.i.i.i.i59.i = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn46.in71.i, ptr noundef %txfree.i53.i, ptr noundef %35) #5
  br i1 %call.i.i.i.i59.i, label %if.end.i.i.i.i63.i, label %__list_del_entry.exit.i.i60.i.free_txpacket.exit66.i_crit_edge

__list_del_entry.exit.i.i60.i.free_txpacket.exit66.i_crit_edge: ; preds = %__list_del_entry.exit.i.i60.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_txpacket.exit66.i

if.end.i.i.i.i63.i:                               ; preds = %__list_del_entry.exit.i.i60.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i2.i.i61.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i2.i.i61.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %.pn46.in71.i, ptr %prev1.i.i2.i.i61.i, align 4
  %37 = ptrtoint ptr %.pn46.in71.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %35, ptr %.pn46.in71.i, align 4
  %prev3.i.i.i.i62.i = getelementptr i8, ptr %.pn46.in71.i, i32 4
  %38 = ptrtoint ptr %prev3.i.i.i.i62.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %txfree.i53.i, ptr %prev3.i.i.i.i62.i, align 4
  %39 = ptrtoint ptr %txfree.i53.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %.pn46.in71.i, ptr %txfree.i53.i, align 4
  br label %free_txpacket.exit66.i

free_txpacket.exit66.i:                           ; preds = %if.end.i.i.i.i63.i, %__list_del_entry.exit.i.i60.i.free_txpacket.exit66.i_crit_edge
  %nr_txfree.i64.i = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %25, i32 0, i32 9
  %40 = ptrtoint ptr %nr_txfree.i64.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nr_txfree.i64.i, align 4
  %inc.i65.i = add i32 %41, 1
  store i32 %inc.i65.i, ptr %nr_txfree.i64.i, align 4
  %cmp24.not.i = icmp eq ptr %.pn46.i, %txqueue.i
  br i1 %cmp24.not.i, label %free_txpacket.exit66.i.cancel_transfers.exit_crit_edge, label %free_txpacket.exit66.i.for.body26.i_crit_edge

free_txpacket.exit66.i.for.body26.i_crit_edge:    ; preds = %free_txpacket.exit66.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body26.i

free_txpacket.exit66.i.cancel_transfers.exit_crit_edge: ; preds = %free_txpacket.exit66.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cancel_transfers.exit

cancel_transfers.exit:                            ; preds = %free_txpacket.exit66.i.cancel_transfers.exit_crit_edge, %for.end.i.cancel_transfers.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %queue) #5
  br label %return

return:                                           ; preds = %cancel_transfers.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @b43legacy_pio_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 10
  %call = tail call fastcc ptr @b43legacy_setup_pioqueue(ptr noundef %dev, i16 noundef zeroext 768)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %0, align 4
  %call1 = tail call fastcc ptr @b43legacy_setup_pioqueue(ptr noundef %dev, i16 noundef zeroext 784)
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.err_destroy0_crit_edge, label %if.end4

if.end.err_destroy0_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_destroy0

if.end4:                                          ; preds = %if.end
  %queue1 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 10, i32 0, i32 1
  %2 = ptrtoint ptr %queue1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %queue1, align 4
  %call5 = tail call fastcc ptr @b43legacy_setup_pioqueue(ptr noundef %dev, i16 noundef zeroext 800)
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.err_destroy1_crit_edge, label %if.end8

if.end4.err_destroy1_crit_edge:                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_destroy1

if.end8:                                          ; preds = %if.end4
  %queue2 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 10, i32 0, i32 2
  %3 = ptrtoint ptr %queue2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call5, ptr %queue2, align 4
  %call9 = tail call fastcc ptr @b43legacy_setup_pioqueue(ptr noundef %dev, i16 noundef zeroext 816)
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %err_destroy2, label %if.end12

if.end12:                                         ; preds = %if.end8
  %queue3 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 10, i32 0, i32 3
  %4 = ptrtoint ptr %queue3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call9, ptr %queue3, align 4
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %revision = getelementptr inbounds %struct.ssb_device, ptr %6, i32 0, i32 4, i32 2
  %7 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %8)
  %cmp = icmp ult i8 %8, 3
  br i1 %cmp, label %if.then15, label %if.end12.if.end16_crit_edge

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %irq_mask = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 18
  %9 = ptrtoint ptr %irq_mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq_mask, align 4
  %or = or i32 %10, 256
  store i32 %or, ptr %irq_mask, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end12.if.end16_crit_edge
  %wl = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 1
  %11 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wl, align 4
  tail call void (ptr, ptr, ...) @b43legacydbg(ptr noundef %12, ptr noundef nonnull @.str) #5
  br label %out

out:                                              ; preds = %err_destroy0, %if.end16, %entry.out_crit_edge
  %err.0 = phi i32 [ 0, %if.end16 ], [ -12, %err_destroy0 ], [ -12, %entry.out_crit_edge ]
  ret i32 %err.0

err_destroy2:                                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %queue2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %queue2, align 4
  tail call fastcc void @b43legacy_destroy_pioqueue(ptr noundef %14)
  %15 = ptrtoint ptr %queue2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %queue2, align 4
  br label %err_destroy1

err_destroy1:                                     ; preds = %err_destroy2, %if.end4.err_destroy1_crit_edge
  %16 = ptrtoint ptr %queue1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %queue1, align 4
  tail call fastcc void @b43legacy_destroy_pioqueue(ptr noundef %17)
  %18 = ptrtoint ptr %queue1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %queue1, align 4
  br label %err_destroy0

err_destroy0:                                     ; preds = %err_destroy1, %if.end.err_destroy0_crit_edge
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %0, align 4
  tail call fastcc void @b43legacy_destroy_pioqueue(ptr noundef %20)
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %0, align 4
  br label %out
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @b43legacy_setup_pioqueue(ptr noundef %dev, i16 noundef zeroext %pio_mmio_base) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4164) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %call7.i.i, align 8
  %mmio_base = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %mmio_base to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %pio_mmio_base, ptr %mmio_base, align 4
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %revision = getelementptr inbounds %struct.ssb_device, ptr %4, i32 0, i32 4, i32 2
  %5 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %6)
  %cmp = icmp ult i8 %6, 3
  %need_workarounds = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %call7.i.i, i32 0, i32 4
  %frombool = zext i1 %cmp to i8
  %7 = ptrtoint ptr %need_workarounds to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool, ptr %need_workarounds, align 8
  %txfree = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %call7.i.i, i32 0, i32 8
  %8 = ptrtoint ptr %txfree to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %txfree, ptr %txfree, align 8
  %prev.i = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %call7.i.i, i32 0, i32 8, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %txfree, ptr %prev.i, align 4
  %txqueue = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %call7.i.i, i32 0, i32 10
  %10 = ptrtoint ptr %txqueue to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %txqueue, ptr %txqueue, align 4
  %prev.i46 = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %call7.i.i, i32 0, i32 10, i32 1
  %11 = ptrtoint ptr %prev.i46 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %txqueue, ptr %prev.i46, align 8
  %txrunning = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %call7.i.i, i32 0, i32 11
  %12 = ptrtoint ptr %txrunning to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %txrunning, ptr %txrunning, align 4
  %prev.i47 = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %call7.i.i, i32 0, i32 11, i32 1
  %13 = ptrtoint ptr %prev.i47 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %txrunning, ptr %prev.i47, align 8
  %txtask = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %call7.i.i, i32 0, i32 12
  tail call void @tasklet_setup(ptr noundef %txtask, ptr noundef nonnull @tx_tasklet) #5
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %read32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %19(ptr noundef %15, i16 noundef zeroext 288) #5
  %and = and i32 %call.i.i, -65537
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %write32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write32.i.i, align 4
  tail call void %25(ptr noundef %21, i16 noundef zeroext 288, i32 noundef %and) #5
  %26 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %mmio_base, align 4
  %add = add i16 %27, 4
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %read16.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %read16.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read16.i.i, align 4
  %call.i.i48 = tail call zeroext i16 %33(ptr noundef %29, i16 noundef zeroext %add) #5
  %conv9 = zext i16 %call.i.i48 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i.i48)
  %cmp10 = icmp eq i16 %call.i.i48, 0
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %wl = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 1
  %34 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %wl, align 4
  tail call void (ptr, ptr, ...) @b43legacyerr(ptr noundef %35, ptr noundef nonnull @.str.7) #5
  br label %err_freequeue

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 81, i16 %call.i.i48)
  %cmp15 = icmp ult i16 %call.i.i48, 81
  br i1 %cmp15, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %wl18 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 1
  %36 = ptrtoint ptr %wl18 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %wl18, align 4
  tail call void (ptr, ptr, ...) @b43legacyerr(ptr noundef %37, ptr noundef nonnull @.str.8, i32 noundef %conv9) #5
  br label %err_freequeue

if.end20:                                         ; preds = %if.end13
  %sub = add i16 %call.i.i48, -80
  %tx_devq_size = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %call7.i.i, i32 0, i32 5
  %38 = ptrtoint ptr %tx_devq_size to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %sub, ptr %tx_devq_size, align 2
  %nr_txfree.i = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %call7.i.i, i32 0, i32 9
  %39 = ptrtoint ptr %nr_txfree.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 256, ptr %nr_txfree.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %list_add.exit.i.for.body.i_crit_edge, %if.end20
  %i.010.i = phi i32 [ 0, %if.end20 ], [ %inc.i, %list_add.exit.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.b43legacy_pioqueue, ptr %call7.i.i, i32 0, i32 13, i32 %i.010.i
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call7.i.i, ptr %arrayidx.i, align 4
  %list.i = getelementptr %struct.b43legacy_pioqueue, ptr %call7.i.i, i32 0, i32 13, i32 %i.010.i, i32 2
  %41 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %list.i, ptr %list.i, align 4
  %prev.i.i = getelementptr %struct.b43legacy_pioqueue, ptr %call7.i.i, i32 0, i32 13, i32 %i.010.i, i32 2, i32 1
  %42 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %list.i, ptr %prev.i.i, align 8
  %43 = ptrtoint ptr %txfree to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %txfree, align 8
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %txfree, ptr noundef %44) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_add.exit.i_crit_edge

for.body.i.list_add.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %list.i, ptr %prev1.i.i.i, align 4
  %46 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %44, ptr %list.i, align 4
  %47 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %txfree, ptr %prev.i.i, align 8
  %48 = ptrtoint ptr %txfree to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %list.i, ptr %txfree, align 8
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_add.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %list_add.exit.i.out_crit_edge, label %list_add.exit.i.for.body.i_crit_edge

list_add.exit.i.for.body.i_crit_edge:             ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

list_add.exit.i.out_crit_edge:                    ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

out:                                              ; preds = %err_freequeue, %list_add.exit.i.out_crit_edge, %entry.out_crit_edge
  %queue.0 = phi ptr [ null, %err_freequeue ], [ null, %entry.out_crit_edge ], [ %call7.i.i, %list_add.exit.i.out_crit_edge ]
  ret ptr %queue.0

err_freequeue:                                    ; preds = %if.then17, %if.then12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %out
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacydbg(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @b43legacy_pio_tx(ptr nocapture noundef readonly %dev, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %queue1 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 10, i32 0, i32 1
  %0 = ptrtoint ptr %queue1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue1, align 4
  %tx_suspended = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %tx_suspended to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tx_suspended, align 2, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !32

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 458, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %txfree = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %txfree to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %txfree, align 4
  %cmp.i.not = icmp eq ptr %5, %txfree
  br i1 %cmp.i.not, label %do.end37, label %if.end.if.end43_crit_edge, !prof !33

if.end.if.end43_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

do.end37:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 459, i32 noundef 9, ptr noundef null) #5
  br label %if.end43

if.end43:                                         ; preds = %do.end37, %if.end.if.end43_crit_edge
  %6 = ptrtoint ptr %txfree to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %txfree, align 4
  %skb53 = getelementptr i8, ptr %7, i32 -4
  %8 = ptrtoint ptr %skb53 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %skb, ptr %skb53, align 4
  %txqueue = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %1, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %7) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.end43.__list_del_entry.exit.i_crit_edge

if.end43.__list_del_entry.exit.i_crit_edge:       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %7, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end43.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %1, i32 0, i32 10, i32 1
  %15 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %7, ptr noundef %16, ptr noundef %txqueue) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %7, ptr %prev.i2.i, align 4
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %txqueue, ptr %7, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %7, ptr %16, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %nr_txfree = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %1, i32 0, i32 9
  %21 = ptrtoint ptr %nr_txfree to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nr_txfree, align 4
  %dec = add i32 %22, -1
  store i32 %dec, ptr %nr_txfree, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %dec)
  %cmp = icmp ugt i32 %dec, 255
  br i1 %cmp, label %do.end71, label %list_move_tail.exit.if.end77_crit_edge, !prof !33

list_move_tail.exit.if.end77_crit_edge:           ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end77

do.end71:                                         ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 467, i32 noundef 9, ptr noundef null) #5
  br label %if.end77

if.end77:                                         ; preds = %do.end71, %list_move_tail.exit.if.end77_crit_edge
  %state.i = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %1, i32 0, i32 12, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end77.tasklet_schedule.exit_crit_edge

if.end77.tasklet_schedule.exit_crit_edge:         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  %txtask = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %1, i32 0, i32 12
  tail call void @__tasklet_schedule(ptr noundef %txtask) #5
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %if.end77.tasklet_schedule.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43legacy_pio_handle_txstatus(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %status, align 2
  %conv.i = zext i16 %1 to i32
  %2 = lshr i32 %conv.i, 12
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %2, label %do.end.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb2.i
    i32 3, label %sw.bb3.i
  ]

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 10
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %queue1.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 10, i32 0, i32 1
  %7 = ptrtoint ptr %queue1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %queue1.i, align 4
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %queue2.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 10, i32 0, i32 2
  %9 = ptrtoint ptr %queue2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %queue2.i, align 4
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %queue3.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 10, i32 0, i32 3
  %11 = ptrtoint ptr %queue3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %queue3.i, align 4
  br label %sw.epilog.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 158, i32 noundef 9, ptr noundef null) #5
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %do.end.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %sw.bb.i
  %queue.0.i = phi ptr [ null, %do.end.i ], [ %12, %sw.bb3.i ], [ %10, %sw.bb2.i ], [ %8, %sw.bb1.i ], [ %6, %sw.bb.i ]
  %and19.i = and i32 %conv.i, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %and19.i)
  %cmp22.i = icmp ugt i32 %and19.i, 255
  br i1 %cmp22.i, label %do.end41.i, label %sw.epilog.i.parse_cookie.exit_crit_edge, !prof !33

sw.epilog.i.parse_cookie.exit_crit_edge:          ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %parse_cookie.exit

do.end41.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 162, i32 noundef 9, ptr noundef null) #5
  br label %parse_cookie.exit

parse_cookie.exit:                                ; preds = %do.end41.i, %sw.epilog.i.parse_cookie.exit_crit_edge
  %arrayidx.i = getelementptr %struct.b43legacy_pioqueue, ptr %queue.0.i, i32 0, i32 13, i32 %and19.i
  %tobool.not = icmp eq ptr %queue.0.i, null
  br i1 %tobool.not, label %do.end, label %parse_cookie.exit.if.end_crit_edge, !prof !33

parse_cookie.exit.if.end_crit_edge:               ; preds = %parse_cookie.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %parse_cookie.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 483, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %parse_cookie.exit.if.end_crit_edge
  %skb = getelementptr %struct.b43legacy_pioqueue, ptr %queue.0.i, i32 0, i32 13, i32 %and19.i, i32 1
  %13 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %skb, align 4
  %tobool21.not = icmp eq ptr %14, null
  br i1 %tobool21.not, label %if.end.cleanup_crit_edge, label %if.end23

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end23:                                         ; preds = %if.end
  %tx_devq_packets = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %queue.0.i, i32 0, i32 7
  %15 = ptrtoint ptr %tx_devq_packets to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %tx_devq_packets, align 2
  %dec = add i8 %16, -1
  store i8 %dec, ptr %tx_devq_packets, align 2
  %len = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 6
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 4
  %tx_devq_used = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %queue.0.i, i32 0, i32 6
  %19 = ptrtoint ptr %tx_devq_used to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %tx_devq_used, align 4
  %21 = trunc i32 %18 to i16
  %.neg129 = sub i16 -82, %21
  %conv25 = add i16 %.neg129, %20
  store i16 %conv25, ptr %tx_devq_used, align 4
  %count = getelementptr %struct.sk_buff, ptr %14, i32 0, i32 3, i32 9
  %22 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %bf.load = load i16, ptr %count, align 1
  %bf.lshr = lshr i16 %bf.load, 11
  %bf.clear.i = and i16 %bf.load, 2047
  store i16 %bf.clear.i, ptr %count, align 1
  %count.1.i = getelementptr %struct.sk_buff, ptr %14, i32 0, i32 3, i32 12
  %23 = ptrtoint ptr %count.1.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %bf.load.1.i = load i16, ptr %count.1.i, align 1
  %bf.clear.1.i = and i16 %bf.load.1.i, 2047
  store i16 %bf.clear.1.i, ptr %count.1.i, align 1
  %count.2.i = getelementptr %struct.sk_buff, ptr %14, i32 0, i32 3, i32 15
  %24 = ptrtoint ptr %count.2.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %bf.load.2.i = load i16, ptr %count.2.i, align 1
  %bf.clear.2.i = and i16 %bf.load.2.i, 2047
  store i16 %bf.clear.2.i, ptr %count.2.i, align 1
  %count.3.i = getelementptr %struct.sk_buff, ptr %14, i32 0, i32 3, i32 18
  %25 = ptrtoint ptr %count.3.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %bf.load.3.i = load i16, ptr %count.3.i, align 1
  %bf.clear.3.i = and i16 %bf.load.3.i, 2047
  store i16 %bf.clear.3.i, ptr %count.3.i, align 1
  %add.ptr.i = getelementptr %struct.sk_buff, ptr %14, i32 0, i32 3, i32 20
  %26 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 28)
  %acked = getelementptr inbounds %struct.b43legacy_txstatus, ptr %status, i32 0, i32 9
  %27 = ptrtoint ptr %acked to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %acked, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool29.not = icmp eq i8 %28, 0
  br i1 %tobool29.not, label %if.end23.if.end31_crit_edge, label %if.then30

if.end23.if.end31_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

if.then30:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 3
  %29 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cb.i, align 8
  %or = or i32 %30, 512
  store i32 %or, ptr %cb.i, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end23.if.end31_crit_edge
  %rts_count = getelementptr inbounds %struct.b43legacy_txstatus, ptr %status, i32 0, i32 4
  %31 = ptrtoint ptr %rts_count to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %rts_count, align 2
  %wl = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 1
  %33 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %wl, align 4
  %hw = getelementptr inbounds %struct.b43legacy_wl, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw, align 4
  %short_frame_max_tx_count = getelementptr inbounds %struct.ieee80211_conf, ptr %36, i32 0, i32 6
  %37 = ptrtoint ptr %short_frame_max_tx_count to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %short_frame_max_tx_count, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %32, i8 %38)
  %cmp = icmp ugt i8 %32, %38
  br i1 %cmp, label %if.then35, label %if.else

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %bf.load39 = load i16, ptr %count, align 1
  %bf.clear = and i16 %bf.load39, 2047
  store i16 %bf.clear, ptr %count, align 1
  %frame_count = getelementptr inbounds %struct.b43legacy_txstatus, ptr %status, i32 0, i32 3
  %40 = ptrtoint ptr %frame_count to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %frame_count, align 1
  %42 = ptrtoint ptr %count.1.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %bf.load44 = load i16, ptr %count.1.i, align 1
  %bf.value = zext i8 %41 to i16
  %bf.shl = shl i16 %bf.value, 11
  %bf.clear45 = and i16 %bf.load44, 2047
  %bf.set46 = or i16 %bf.clear45, %bf.shl
  store i16 %bf.set46, ptr %count.1.i, align 1
  br label %if.end6.i

if.else:                                          ; preds = %if.end31
  %frame_count47 = getelementptr inbounds %struct.b43legacy_txstatus, ptr %status, i32 0, i32 3
  %43 = ptrtoint ptr %frame_count47 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %frame_count47, align 1
  %45 = zext i8 %44 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %bf.lshr, i16 %45)
  %cmp49 = icmp ult i16 %bf.lshr, %45
  %46 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %bf.load56 = load i16, ptr %count, align 1
  br i1 %cmp49, label %if.then51, label %if.else73

if.then51:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %bf.shl58 = and i16 %bf.load, -2048
  %bf.clear59 = and i16 %bf.load56, 2047
  %bf.set60 = or i16 %bf.clear59, %bf.shl58
  %47 = ptrtoint ptr %count to i32
  call void @__asan_storeN_noabort(i32 %47, i32 2)
  store i16 %bf.set60, ptr %count, align 1
  %48 = ptrtoint ptr %frame_count47 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %frame_count47, align 1
  %conv62 = zext i8 %49 to i16
  %sub63 = sub nsw i16 %conv62, %bf.lshr
  %50 = ptrtoint ptr %count.1.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 2)
  %bf.load68 = load i16, ptr %count.1.i, align 1
  %bf.shl70 = shl i16 %sub63, 11
  %bf.clear71 = and i16 %bf.load68, 2047
  %bf.set72 = or i16 %bf.shl70, %bf.clear71
  store i16 %bf.set72, ptr %count.1.i, align 1
  br label %if.end6.i

if.else73:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %bf.shl81 = shl i16 %45, 11
  %bf.clear82 = and i16 %bf.load56, 2047
  %bf.set83 = or i16 %bf.clear82, %bf.shl81
  %51 = ptrtoint ptr %count to i32
  call void @__asan_storeN_noabort(i32 %51, i32 2)
  store i16 %bf.set83, ptr %count, align 1
  %arrayidx85 = getelementptr %struct.sk_buff, ptr %14, i32 0, i32 3, i32 11
  %52 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 -1, ptr %arrayidx85, align 1
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.else73, %if.then51, %if.then35
  %53 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %wl, align 4
  %hw89 = getelementptr inbounds %struct.b43legacy_wl, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %hw89 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hw89, align 4
  %57 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %skb, align 4
  tail call void @ieee80211_tx_status_irqsafe(ptr noundef %56, ptr noundef %58) #5
  %59 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %skb, align 4
  %60 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.i, align 4
  %list.i = getelementptr %struct.b43legacy_pioqueue, ptr %queue.0.i, i32 0, i32 13, i32 %and19.i, i32 2
  %txfree.i = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %61, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end6.i.__list_del_entry.exit.i.i_crit_edge

if.end6.i.__list_del_entry.exit.i.i_crit_edge:    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i = getelementptr %struct.b43legacy_pioqueue, ptr %queue.0.i, i32 0, i32 13, i32 %and19.i, i32 2, i32 1
  %62 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %prev.i.i.i, align 4
  %64 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %63, ptr %prev1.i.i.i.i, align 4
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %65, ptr %63, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.end6.i.__list_del_entry.exit.i.i_crit_edge
  %68 = ptrtoint ptr %txfree.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %txfree.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %txfree.i, ptr noundef %69) #5
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.free_txpacket.exit_crit_edge

__list_del_entry.exit.i.i.free_txpacket.exit_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_txpacket.exit

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i2.i.i = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %prev1.i.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %list.i, ptr %prev1.i.i2.i.i, align 4
  %71 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %69, ptr %list.i, align 4
  %prev3.i.i.i.i = getelementptr %struct.b43legacy_pioqueue, ptr %queue.0.i, i32 0, i32 13, i32 %and19.i, i32 2, i32 1
  %72 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %txfree.i, ptr %prev3.i.i.i.i, align 4
  %73 = ptrtoint ptr %txfree.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %list.i, ptr %txfree.i, align 4
  br label %free_txpacket.exit

free_txpacket.exit:                               ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.free_txpacket.exit_crit_edge
  %nr_txfree.i = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %61, i32 0, i32 9
  %74 = ptrtoint ptr %nr_txfree.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %nr_txfree.i, align 4
  %inc.i = add i32 %75, 1
  store i32 %inc.i, ptr %nr_txfree.i, align 4
  %txqueue = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %queue.0.i, i32 0, i32 10
  %76 = ptrtoint ptr %txqueue to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile ptr, ptr %txqueue, align 4
  %cmp.i.not = icmp eq ptr %77, %txqueue
  br i1 %cmp.i.not, label %free_txpacket.exit.cleanup_crit_edge, label %if.then94

free_txpacket.exit.cleanup_crit_edge:             ; preds = %free_txpacket.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then94:                                        ; preds = %free_txpacket.exit
  %state.i = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %queue.0.i, i32 0, i32 12, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i123 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i123, label %if.then.i124, label %if.then94.cleanup_crit_edge

if.then94.cleanup_crit_edge:                      ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i124:                                     ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #7
  %txtask = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %queue.0.i, i32 0, i32 12
  tail call void @__tasklet_schedule(ptr noundef %txtask) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then.i124, %if.then94.cleanup_crit_edge, %free_txpacket.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_tx_status_irqsafe(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43legacy_pio_rx(ptr noundef readonly %queue) local_unnamed_addr #0 align 64 {
entry:
  %preamble = alloca [21 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 42, ptr nonnull %preamble) #5
  %0 = getelementptr inbounds i8, ptr %preamble, i32 2
  %1 = call ptr @memset(ptr %0, i32 0, i32 40)
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue, align 4
  %mmio_base.i = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %queue, i32 0, i32 1
  %4 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mmio_base.i, align 4
  %add.i = add i16 %5, 8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %read16.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %read16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read16.i.i.i, align 4
  %call.i.i.i = tail call zeroext i16 %11(ptr noundef %7, i16 noundef zeroext %add.i) #5
  %12 = and i16 %call.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not = icmp eq i16 %12, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %queue, align 4
  %15 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %mmio_base.i, align 4
  %add.i148 = add i16 %16, 8
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %14, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %write16.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %write16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write16.i.i.i, align 4
  tail call void %22(ptr noundef %18, i16 noundef zeroext %add.i148, i16 noundef zeroext 1) #5
  br label %for.body

for.body:                                         ; preds = %if.end7.for.body_crit_edge, %if.end
  %i.0169 = phi i32 [ 0, %if.end ], [ %inc, %if.end7.for.body_crit_edge ]
  %23 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %queue, align 4
  %25 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %mmio_base.i, align 4
  %add.i150 = add i16 %26, 8
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %24, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %read16.i.i.i151 = getelementptr inbounds %struct.ssb_bus_ops, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %read16.i.i.i151 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %read16.i.i.i151, align 4
  %call.i.i.i152 = tail call zeroext i16 %32(ptr noundef %28, i16 noundef zeroext %add.i150) #5
  %33 = and i16 %call.i.i.i152, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool5.not = icmp eq i16 %33, 0
  br i1 %tobool5.not, label %if.end7, label %data_ready

if.end7:                                          ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 2147480) #5
  %inc = add nuw nsw i32 %i.0169, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %for.end, label %if.end7.for.body_crit_edge

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %queue, align 4
  %wl = getelementptr inbounds %struct.b43legacy_wldev, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %wl, align 4
  tail call void (ptr, ptr, ...) @b43legacydbg(ptr noundef %38, ptr noundef nonnull @.str.2) #5
  br label %cleanup

data_ready:                                       ; preds = %for.body
  %39 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %queue, align 4
  %41 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %mmio_base.i, align 4
  %add.i154 = add i16 %42, 10
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %40, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %read16.i.i.i155 = getelementptr inbounds %struct.ssb_bus_ops, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %read16.i.i.i155 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %read16.i.i.i155, align 4
  %call.i.i.i156 = tail call zeroext i16 %48(ptr noundef %44, i16 noundef zeroext %add.i154) #5
  %conv9 = zext i16 %call.i.i.i156 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1792, i16 %call.i.i.i156)
  %cmp10 = icmp ugt i16 %call.i.i.i156, 1792
  br i1 %cmp10, label %if.then14, label %if.end15, !prof !33

if.then14:                                        ; preds = %data_ready
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @pio_rx_error(ptr noundef %queue, i32 noundef 0, ptr noundef nonnull @.str.3)
  br label %cleanup

if.end15:                                         ; preds = %data_ready
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i.i.i156)
  %cmp17 = icmp eq i16 %call.i.i.i156, 0
  br i1 %cmp17, label %land.rhs, label %if.end15.if.end29_crit_edge

if.end15.if.end29_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

land.rhs:                                         ; preds = %if.end15
  %49 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %mmio_base.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 816, i16 %50)
  %cmp20.not = icmp eq i16 %50, 816
  br i1 %cmp20.not, label %land.rhs.if.end29_crit_edge, label %if.then28, !prof !32

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then28:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @pio_rx_error(ptr noundef %queue, i32 noundef 0, ptr noundef nonnull @.str.4)
  br label %cleanup

if.end29:                                         ; preds = %land.rhs.if.end29_crit_edge, %if.end15.if.end29_crit_edge
  %51 = tail call i16 @llvm.bswap.i16(i16 %call.i.i.i156)
  %52 = ptrtoint ptr %preamble to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %preamble, align 2
  %53 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %mmio_base.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 816, i16 %54)
  %cmp32 = icmp eq i16 %54, 816
  %. = select i1 %cmp32, i32 7, i32 9
  br label %for.body39

for.body39:                                       ; preds = %for.body39.for.body39_crit_edge, %if.end29
  %i.1170 = phi i32 [ 0, %if.end29 ], [ %add, %for.body39.for.body39_crit_edge ]
  %55 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %queue, align 4
  %57 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %mmio_base.i, align 4
  %add.i158 = add i16 %58, 10
  %59 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %56, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %read16.i.i.i159 = getelementptr inbounds %struct.ssb_bus_ops, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %read16.i.i.i159 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %read16.i.i.i159, align 4
  %call.i.i.i160 = tail call zeroext i16 %64(ptr noundef %60, i16 noundef zeroext %add.i158) #5
  %65 = tail call i16 @llvm.bswap.i16(i16 %call.i.i.i160)
  %add = add nuw nsw i32 %i.1170, 1
  %arrayidx41 = getelementptr [21 x i16], ptr %preamble, i32 0, i32 %add
  %66 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %arrayidx41, align 2
  %exitcond173.not = icmp eq i32 %add, %.
  br i1 %exitcond173.not, label %for.end44, label %for.body39.for.body39_crit_edge

for.body39.for.body39_crit_edge:                  ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body39

for.end44:                                        ; preds = %for.body39
  %mac_status = getelementptr inbounds %struct.b43legacy_rxhdr_fw3, ptr %preamble, i32 0, i32 7
  %67 = ptrtoint ptr %mac_status to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %mac_status, align 2
  %69 = and i16 %68, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %tobool47.not = icmp eq i16 %69, 0
  %70 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %mmio_base.i, align 4
  br i1 %tobool47.not, label %if.end53, label %if.then48

if.then48:                                        ; preds = %for.end44
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %71)
  %cmp51.not = icmp eq i16 %71, 768
  %72 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %queue, align 4
  %wl.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %wl.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %wl.i, align 4
  tail call void (ptr, ptr, ...) @b43legacyerr(ptr noundef %75, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.5) #5
  %76 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %queue, align 4
  %78 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %mmio_base.i, align 4
  %add.i.i = add i16 %79, 8
  %80 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %77, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 4
  %write16.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %83, i32 0, i32 4
  %84 = ptrtoint ptr %write16.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %write16.i.i.i.i, align 4
  tail call void %85(ptr noundef %81, i16 noundef zeroext %add.i.i, i16 noundef zeroext 2) #5
  br i1 %cmp51.not, label %if.then.i, label %if.then48.cleanup_crit_edge

if.then48.cleanup_crit_edge:                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i:                                        ; preds = %if.then48
  %86 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %mmio_base.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %87)
  %cmp.not.i = icmp eq i16 %87, 768
  br i1 %cmp.not.i, label %if.then.i.for.body.i.preheader_crit_edge, label %do.end.i, !prof !32

if.then.i.for.body.i.preheader_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.preheader

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 545, i32 noundef 9, ptr noundef null) #5
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %do.end.i, %if.then.i.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.032.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %88 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %queue, align 4
  %90 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %mmio_base.i, align 4
  %add.i31.i = add i16 %91, 10
  %92 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %89, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %93, align 4
  %read16.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %read16.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %read16.i.i.i.i, align 4
  %call.i.i.i.i = tail call zeroext i16 %97(ptr noundef %93, i16 noundef zeroext %add.i31.i) #5
  %inc.i = add nuw nsw i32 %i.032.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 15
  br i1 %exitcond.not.i, label %for.body.i.cleanup_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end53:                                         ; preds = %for.end44
  call void @__sanitizer_cov_trace_const_cmp2(i16 816, i16 %71)
  %cmp56 = icmp eq i16 %71, 816
  br i1 %cmp56, label %if.then58, label %if.end61

if.then58:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr = getelementptr inbounds i16, ptr %preamble, i32 1
  %98 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %queue, align 4
  call void @b43legacy_handle_hwtxstatus(ptr noundef %99, ptr noundef %add.ptr) #5
  br label %cleanup

if.end61:                                         ; preds = %if.end53
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %conv9, i32 noundef 2592) #5
  %tobool64.not = icmp eq ptr %call.i.i, null
  br i1 %tobool64.not, label %if.then73, label %if.end74, !prof !33

if.then73:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @pio_rx_error(ptr noundef %queue, i32 noundef 1, ptr noundef nonnull @.str.6)
  br label %cleanup

if.end74:                                         ; preds = %if.end61
  %call76 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %conv9) #5
  %sub = add nsw i32 %conv9, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %call.i.i.i156)
  %cmp79171 = icmp ugt i16 %call.i.i.i156, 1
  br i1 %cmp79171, label %for.body81.lr.ph, label %if.end74.for.end86_crit_edge

if.end74.for.end86_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end86

for.body81.lr.ph:                                 ; preds = %if.end74
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  br label %for.body81

for.body81:                                       ; preds = %for.body81.for.body81_crit_edge, %for.body81.lr.ph
  %i.2172 = phi i32 [ 0, %for.body81.lr.ph ], [ %add85, %for.body81.for.body81_crit_edge ]
  %100 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %queue, align 4
  %102 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %mmio_base.i, align 4
  %add.i162 = add i16 %103, 10
  %104 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %101, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %105, align 4
  %read16.i.i.i163 = getelementptr inbounds %struct.ssb_bus_ops, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %read16.i.i.i163 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %read16.i.i.i163, align 4
  %call.i.i.i164 = tail call zeroext i16 %109(ptr noundef %105, i16 noundef zeroext %add.i162) #5
  %110 = tail call i16 @llvm.bswap.i16(i16 %call.i.i.i164)
  %111 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %data, align 4
  %add.ptr83 = getelementptr i8, ptr %112, i32 %i.2172
  %113 = ptrtoint ptr %add.ptr83 to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %110, ptr %add.ptr83, align 2
  %add85 = add nuw nsw i32 %i.2172, 2
  %cmp79 = icmp slt i32 %add85, %sub
  br i1 %cmp79, label %for.body81.for.body81_crit_edge, label %for.body81.for.end86_crit_edge

for.body81.for.end86_crit_edge:                   ; preds = %for.body81
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end86

for.body81.for.body81_crit_edge:                  ; preds = %for.body81
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body81

for.end86:                                        ; preds = %for.body81.for.end86_crit_edge, %if.end74.for.end86_crit_edge
  %rem = and i32 %conv9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool88.not = icmp eq i32 %rem, 0
  br i1 %tobool88.not, label %for.end86.if.end98_crit_edge, label %if.then89

for.end86.if.end98_crit_edge:                     ; preds = %for.end86
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end98

if.then89:                                        ; preds = %for.end86
  call void @__sanitizer_cov_trace_pc() #7
  %114 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %queue, align 4
  %116 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %mmio_base.i, align 4
  %add.i166 = add i16 %117, 10
  %118 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %115, align 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %119, align 4
  %read16.i.i.i167 = getelementptr inbounds %struct.ssb_bus_ops, ptr %121, i32 0, i32 1
  %122 = ptrtoint ptr %read16.i.i.i167 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %read16.i.i.i167, align 4
  %call.i.i.i168 = tail call zeroext i16 %123(ptr noundef %119, i16 noundef zeroext %add.i166) #5
  %conv93 = trunc i16 %call.i.i.i168 to i8
  %data94 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %124 = ptrtoint ptr %data94 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %data94, align 4
  %arrayidx97 = getelementptr i8, ptr %125, i32 %sub
  %126 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %conv93, ptr %arrayidx97, align 1
  br label %if.end98

if.end98:                                         ; preds = %if.then89, %for.end86.if.end98_crit_edge
  %127 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %queue, align 4
  call void @b43legacy_rx(ptr noundef %128, ptr noundef nonnull %call.i.i, ptr noundef nonnull %preamble) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end98, %if.then73, %if.then58, %for.body.i.cleanup_crit_edge, %if.then48.cleanup_crit_edge, %if.then28, %if.then14, %for.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 42, ptr nonnull %preamble) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pio_rx_error(ptr nocapture noundef readonly %queue, i32 noundef %clear_buffers, ptr noundef %error) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %wl = getelementptr inbounds %struct.b43legacy_wldev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wl, align 4
  tail call void (ptr, ptr, ...) @b43legacyerr(ptr noundef %3, ptr noundef nonnull @.str.10, ptr noundef %error) #5
  %4 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %queue, align 4
  %mmio_base.i = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %queue, i32 0, i32 1
  %6 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mmio_base.i, align 4
  %add.i = add i16 %7, 8
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %write16.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %write16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write16.i.i.i, align 4
  tail call void %13(ptr noundef %9, i16 noundef zeroext %add.i, i16 noundef zeroext 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clear_buffers)
  %tobool.not = icmp eq i32 %clear_buffers, 0
  br i1 %tobool.not, label %entry.if.end24_crit_edge, label %if.then

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then:                                          ; preds = %entry
  %14 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %mmio_base.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %15)
  %cmp.not = icmp eq i16 %15, 768
  br i1 %cmp.not, label %if.then.for.body.preheader_crit_edge, label %do.end, !prof !32

if.then.for.body.preheader_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.preheader

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 545, i32 noundef 9, ptr noundef null) #5
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.end, %if.then.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.032 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %16 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %queue, align 4
  %18 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %mmio_base.i, align 4
  %add.i31 = add i16 %19, 10
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %17, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %read16.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %read16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read16.i.i.i, align 4
  %call.i.i.i = tail call zeroext i16 %25(ptr noundef %21, i16 noundef zeroext %add.i31) #5
  %inc = add nuw nsw i32 %i.032, 1
  %exitcond.not = icmp eq i32 %inc, 15
  br i1 %exitcond.not, label %for.body.if.end24_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.if.end24_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.end24:                                         ; preds = %for.body.if.end24_crit_edge, %entry.if.end24_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacy_handle_hwtxstatus(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacy_rx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43legacy_pio_tx_suspend(ptr nocapture noundef readonly %queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  tail call void @b43legacy_power_saving_ctl_bits(ptr noundef %1, i32 noundef -1, i32 noundef 1) #5
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue, align 4
  %mmio_base.i = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %queue, i32 0, i32 1
  %4 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mmio_base.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %read16.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %read16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read16.i.i.i, align 4
  %call.i.i.i = tail call zeroext i16 %11(ptr noundef %7, i16 noundef zeroext %5) #5
  %12 = or i16 %call.i.i.i, 128
  %13 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %queue, align 4
  %15 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %mmio_base.i, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %14, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %write16.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %write16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write16.i.i.i, align 4
  tail call void %22(ptr noundef %18, i16 noundef zeroext %16, i16 noundef zeroext %12) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacy_power_saving_ctl_bits(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43legacy_pio_tx_resume(ptr noundef %queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %mmio_base.i = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %queue, i32 0, i32 1
  %2 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mmio_base.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %read16.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %read16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read16.i.i.i, align 4
  %call.i.i.i = tail call zeroext i16 %9(ptr noundef %5, i16 noundef zeroext %3) #5
  %10 = and i16 %call.i.i.i, -129
  %11 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %queue, align 4
  %13 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %mmio_base.i, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %12, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %write16.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %write16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write16.i.i.i, align 4
  tail call void %20(ptr noundef %16, i16 noundef zeroext %14, i16 noundef zeroext %10) #5
  %21 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %queue, align 4
  tail call void @b43legacy_power_saving_ctl_bits(ptr noundef %22, i32 noundef -1, i32 noundef -1) #5
  %state.i = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %queue, i32 0, i32 12, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.tasklet_schedule.exit_crit_edge

entry.tasklet_schedule.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %txtask = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %queue, i32 0, i32 12
  tail call void @__tasklet_schedule(ptr noundef %txtask) #5
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %entry.tasklet_schedule.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43legacy_pio_freeze_txqueues(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %__using_pio.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %__using_pio.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %__using_pio.i, align 4, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !33

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 655, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %2 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 10
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %tx_frozen = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %tx_frozen to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %tx_frozen, align 1
  %queue1 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 10, i32 0, i32 1
  %6 = ptrtoint ptr %queue1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %queue1, align 4
  %tx_frozen21 = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %tx_frozen21 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %tx_frozen21, align 1
  %queue2 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 10, i32 0, i32 2
  %9 = ptrtoint ptr %queue2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %queue2, align 4
  %tx_frozen22 = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %tx_frozen22 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %tx_frozen22, align 1
  %queue3 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 10, i32 0, i32 3
  %12 = ptrtoint ptr %queue3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %queue3, align 4
  %tx_frozen23 = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %tx_frozen23 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %tx_frozen23, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43legacy_pio_thaw_txqueues(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %__using_pio.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %__using_pio.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %__using_pio.i, align 4, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !33

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 667, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %2 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 10
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %tx_frozen = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %tx_frozen to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %tx_frozen, align 1
  %queue1 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 10, i32 0, i32 1
  %6 = ptrtoint ptr %queue1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %queue1, align 4
  %tx_frozen21 = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %tx_frozen21 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %tx_frozen21, align 1
  %queue2 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 10, i32 0, i32 2
  %9 = ptrtoint ptr %queue2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %queue2, align 4
  %tx_frozen22 = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %tx_frozen22 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %tx_frozen22, align 1
  %queue3 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 10, i32 0, i32 3
  %12 = ptrtoint ptr %queue3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %queue3, align 4
  %tx_frozen23 = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %tx_frozen23 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %tx_frozen23, align 1
  %15 = load ptr, ptr %2, align 4
  %txqueue = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %txqueue to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %txqueue, align 4
  %cmp.i.not = icmp eq ptr %17, %txqueue
  br i1 %cmp.i.not, label %if.end.if.end29_crit_edge, label %if.then27

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then27:                                        ; preds = %if.end
  %state.i = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %15, i32 0, i32 12, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then27.if.end29_crit_edge

if.then27.if.end29_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then.i:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  %txtask = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %15, i32 0, i32 12
  tail call void @__tasklet_schedule(ptr noundef %txtask) #5
  br label %if.end29

if.end29:                                         ; preds = %if.then.i, %if.then27.if.end29_crit_edge, %if.end.if.end29_crit_edge
  %18 = ptrtoint ptr %queue1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %queue1, align 4
  %txqueue31 = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %19, i32 0, i32 10
  %20 = ptrtoint ptr %txqueue31 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %txqueue31, align 4
  %cmp.i67.not = icmp eq ptr %21, %txqueue31
  br i1 %cmp.i67.not, label %if.end29.if.end37_crit_edge, label %if.then34

if.end29.if.end37_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.then34:                                        ; preds = %if.end29
  %state.i69 = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %19, i32 0, i32 12, i32 1
  %call.i70 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i69) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %tobool.not.i71 = icmp eq i32 %call.i70, 0
  br i1 %tobool.not.i71, label %if.then.i72, label %if.then34.if.end37_crit_edge

if.then34.if.end37_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.then.i72:                                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #7
  %txtask36 = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %19, i32 0, i32 12
  tail call void @__tasklet_schedule(ptr noundef %txtask36) #5
  br label %if.end37

if.end37:                                         ; preds = %if.then.i72, %if.then34.if.end37_crit_edge, %if.end29.if.end37_crit_edge
  %22 = ptrtoint ptr %queue2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %queue2, align 4
  %txqueue39 = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %23, i32 0, i32 10
  %24 = ptrtoint ptr %txqueue39 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %txqueue39, align 4
  %cmp.i74.not = icmp eq ptr %25, %txqueue39
  br i1 %cmp.i74.not, label %if.end37.if.end45_crit_edge, label %if.then42

if.end37.if.end45_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

if.then42:                                        ; preds = %if.end37
  %state.i76 = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %23, i32 0, i32 12, i32 1
  %call.i77 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i76) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77)
  %tobool.not.i78 = icmp eq i32 %call.i77, 0
  br i1 %tobool.not.i78, label %if.then.i79, label %if.then42.if.end45_crit_edge

if.then42.if.end45_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

if.then.i79:                                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #7
  %txtask44 = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %23, i32 0, i32 12
  tail call void @__tasklet_schedule(ptr noundef %txtask44) #5
  br label %if.end45

if.end45:                                         ; preds = %if.then.i79, %if.then42.if.end45_crit_edge, %if.end37.if.end45_crit_edge
  %26 = ptrtoint ptr %queue3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %queue3, align 4
  %txqueue47 = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %27, i32 0, i32 10
  %28 = ptrtoint ptr %txqueue47 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %txqueue47, align 4
  %cmp.i81.not = icmp eq ptr %29, %txqueue47
  br i1 %cmp.i81.not, label %if.end45.if.end53_crit_edge, label %if.then50

if.end45.if.end53_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

if.then50:                                        ; preds = %if.end45
  %state.i83 = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %27, i32 0, i32 12, i32 1
  %call.i84 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i83) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84)
  %tobool.not.i85 = icmp eq i32 %call.i84, 0
  br i1 %tobool.not.i85, label %if.then.i86, label %if.then50.if.end53_crit_edge

if.then50.if.end53_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

if.then.i86:                                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #7
  %txtask52 = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %27, i32 0, i32 12
  tail call void @__tasklet_schedule(ptr noundef %txtask52) #5
  br label %if.end53

if.end53:                                         ; preds = %if.then.i86, %if.then50.if.end53_crit_edge, %if.end45.if.end53_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tx_tasklet(ptr noundef readonly %t) #0 align 64 {
entry:
  %txhdr_data.i.i = alloca %union.txhdr_union, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -44
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %wl = getelementptr inbounds %struct.b43legacy_wldev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wl, align 4
  %irq_lock = getelementptr inbounds %struct.b43legacy_wl, ptr %3, i32 0, i32 2
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #5
  %tx_frozen = getelementptr i8, ptr %t, i32 -37
  %4 = ptrtoint ptr %tx_frozen to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tx_frozen, align 1, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.out_unlock_crit_edge

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_unlock

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  %mmio_base.i = getelementptr i8, ptr %t, i32 -40
  %8 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %mmio_base.i, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %read16.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %read16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read16.i.i.i, align 4
  %call.i.i.i = tail call zeroext i16 %15(ptr noundef %11, i16 noundef zeroext %9) #5
  %16 = and i16 %call.i.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool9.not = icmp eq i16 %16, 0
  br i1 %tobool9.not, label %if.end11, label %if.end.out_unlock_crit_edge

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_unlock

if.end11:                                         ; preds = %if.end
  %txqueue = getelementptr i8, ptr %t, i32 -16
  %17 = ptrtoint ptr %txqueue to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %txqueue, align 4
  %cmp21.not58 = icmp eq ptr %18, %txqueue
  br i1 %cmp21.not58, label %if.end11.out_unlock_crit_edge, label %if.end11.for.body_crit_edge

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  br label %for.body

if.end11.out_unlock_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_unlock

for.body:                                         ; preds = %pio_tx_packet.exit.for.body_crit_edge, %if.end11.for.body_crit_edge
  %.pn.in59 = phi ptr [ %.pn64, %pio_tx_packet.exit.for.body_crit_edge ], [ %18, %if.end11.for.body_crit_edge ]
  %19 = ptrtoint ptr %.pn.in59 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn64 = load ptr, ptr %.pn.in59, align 4
  %packet.0 = getelementptr i8, ptr %.pn.in59, i32 -8
  %20 = ptrtoint ptr %packet.0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %packet.0, align 4
  %skb2.i = getelementptr i8, ptr %.pn.in59, i32 -4
  %22 = ptrtoint ptr %skb2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %skb2.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len.i, align 4
  %conv4.i = add i32 %25, 82
  %tx_devq_size.i = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %21, i32 0, i32 5
  %26 = ptrtoint ptr %tx_devq_size.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %tx_devq_size.i, align 2
  %conv5.i = zext i16 %27 to i32
  %conv6.i = and i32 %conv4.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv6.i, i32 %conv5.i)
  %cmp.i = icmp ugt i32 %conv6.i, %conv5.i
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body
  %28 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %21, align 4
  %wl.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %wl.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wl.i, align 4
  call void (ptr, ptr, ...) @b43legacywarn(ptr noundef %31, ptr noundef nonnull @.str.9) #5
  %32 = ptrtoint ptr %packet.0 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %packet.0, align 4
  %34 = ptrtoint ptr %skb2.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %skb2.i, align 4
  %tobool.not.i.i = icmp eq ptr %35, null
  br i1 %tobool.not.i.i, label %if.then.i.if.end6.i.i_crit_edge, label %if.then.i.i

if.then.i.if.end6.i.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__dev_kfree_skb_irq(ptr noundef nonnull %35, i32 noundef 1) #5
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.then.i.i, %if.then.i.if.end6.i.i_crit_edge
  %txfree.i.i = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %33, i32 0, i32 8
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in59) #5
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end6.i.i.__list_del_entry.exit.i.i.i_crit_edge

if.end6.i.i.__list_del_entry.exit.i.i.i_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__list_del_entry.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i.i = getelementptr i8, ptr %.pn.in59, i32 4
  %36 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i.i.i.i, align 4
  %38 = ptrtoint ptr %.pn.in59 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %.pn.in59, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev1.i.i.i.i.i, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %39, ptr %37, align 4
  br label %__list_del_entry.exit.i.i.i

__list_del_entry.exit.i.i.i:                      ; preds = %if.end.i.i.i.i, %if.end6.i.i.__list_del_entry.exit.i.i.i_crit_edge
  %42 = ptrtoint ptr %txfree.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %txfree.i.i, align 4
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in59, ptr noundef %txfree.i.i, ptr noundef %43) #5
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %__list_del_entry.exit.i.i.i.free_txpacket.exit.i_crit_edge

__list_del_entry.exit.i.i.i.free_txpacket.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_txpacket.exit.i

if.end.i.i.i.i.i:                                 ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i2.i.i.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %prev1.i.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %.pn.in59, ptr %prev1.i.i2.i.i.i, align 4
  %45 = ptrtoint ptr %.pn.in59 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %43, ptr %.pn.in59, align 4
  %prev3.i.i.i.i.i = getelementptr i8, ptr %.pn.in59, i32 4
  %46 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %txfree.i.i, ptr %prev3.i.i.i.i.i, align 4
  %47 = ptrtoint ptr %txfree.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %.pn.in59, ptr %txfree.i.i, align 4
  br label %free_txpacket.exit.i

free_txpacket.exit.i:                             ; preds = %if.end.i.i.i.i.i, %__list_del_entry.exit.i.i.i.free_txpacket.exit.i_crit_edge
  %nr_txfree.i.i = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %33, i32 0, i32 9
  %48 = ptrtoint ptr %nr_txfree.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nr_txfree.i.i, align 4
  %inc.i.i = add i32 %49, 1
  store i32 %inc.i.i, ptr %nr_txfree.i.i, align 4
  br label %pio_tx_packet.exit

if.end.i:                                         ; preds = %for.body
  %tx_devq_packets.i = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %21, i32 0, i32 7
  %50 = ptrtoint ptr %tx_devq_packets.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %tx_devq_packets.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %51)
  %cmp9.i = icmp ugt i8 %51, 31
  br i1 %cmp9.i, label %do.end.i, label %if.end.i.if.end24.i_crit_edge, !prof !33

if.end.i.if.end24.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 233, i32 noundef 9, ptr noundef null) #5
  br label %if.end24.i

if.end24.i:                                       ; preds = %do.end.i, %if.end.i.if.end24.i_crit_edge
  %tx_devq_used.i = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %21, i32 0, i32 6
  %52 = ptrtoint ptr %tx_devq_used.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %tx_devq_used.i, align 4
  %54 = ptrtoint ptr %tx_devq_size.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %tx_devq_size.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %53, i16 %55)
  %cmp35.i = icmp ugt i16 %53, %55
  br i1 %cmp35.i, label %do.end52.i, label %if.end24.i.if.end58.i_crit_edge, !prof !33

if.end24.i.if.end58.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58.i

do.end52.i:                                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 234, i32 noundef 9, ptr noundef null) #5
  br label %if.end58.i

if.end58.i:                                       ; preds = %do.end52.i, %if.end24.i.if.end58.i_crit_edge
  %56 = ptrtoint ptr %tx_devq_packets.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %tx_devq_packets.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %57)
  %cmp68.i = icmp eq i8 %57, 31
  br i1 %cmp68.i, label %if.end58.i.out_unlock_crit_edge, label %if.end71.i

if.end58.i.out_unlock_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_unlock

if.end71.i:                                       ; preds = %if.end58.i
  %58 = ptrtoint ptr %tx_devq_used.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %tx_devq_used.i, align 4
  %conv73.i = zext i16 %59 to i32
  %add75.i = add nuw nsw i32 %conv6.i, %conv73.i
  %60 = ptrtoint ptr %tx_devq_size.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %tx_devq_size.i, align 2
  %conv77.i = zext i16 %61 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add75.i, i32 %conv77.i)
  %cmp78.i = icmp ugt i32 %add75.i, %conv77.i
  br i1 %cmp78.i, label %if.end71.i.out_unlock_crit_edge, label %if.end81.i

if.end71.i.out_unlock_crit_edge:                  ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_unlock

if.end81.i:                                       ; preds = %if.end71.i
  call void @llvm.lifetime.start.p0(i64 82, ptr nonnull %txhdr_data.i.i) #5
  %62 = call ptr @memset(ptr %txhdr_data.i.i, i32 255, i32 82)
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 17
  %63 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %end.i.i.i, align 4
  %nr_frags.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %nr_frags.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %nr_frags.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %cmp.not.i.i = icmp eq i8 %66, 0
  br i1 %cmp.not.i.i, label %if.end81.i.if.end.i.i_crit_edge, label %do.end.i.i, !prof !32

if.end81.i.if.end.i.i_crit_edge:                  ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 184, i32 noundef 9, ptr noundef null) #5
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.end81.i.if.end.i.i_crit_edge
  %67 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %21, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 19
  %69 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %data.i.i, align 4
  %71 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %len.i, align 4
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 3
  %mmio_base.i.i.i = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %21, i32 0, i32 1
  %73 = ptrtoint ptr %mmio_base.i.i.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %mmio_base.i.i.i, align 4
  %conv.i.i.i = zext i16 %74 to i32
  %75 = add nsw i32 %conv.i.i.i, -768
  %76 = call i32 @llvm.fshl.i32(i32 %75, i32 %75, i32 28) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %76)
  %77 = icmp ult i32 %76, 4
  br i1 %77, label %switch.lookup, label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 126, i32 noundef 9, ptr noundef null) #5
  br label %sw.epilog.i.i.i

switch.lookup:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %switch.idx.mult = shl i32 %76, 12
  br label %sw.epilog.i.i.i

sw.epilog.i.i.i:                                  ; preds = %switch.lookup, %do.end.i.i.i
  %cookie.0.i.i.i = phi i32 [ 0, %do.end.i.i.i ], [ %switch.idx.mult, %switch.lookup ]
  %78 = ptrtoint ptr %packet.0 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %packet.0, align 4
  %tx_packets_cache.i.i.i = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %79, i32 0, i32 13
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %packet.0 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %tx_packets_cache.i.i.i to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %80 = and i32 %sub.ptr.sub.i.i.i, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp.not.i.i.i = icmp eq i32 %80, 0
  br i1 %cmp.not.i.i.i, label %sw.epilog.i.i.i.generate_cookie.exit.i.i_crit_edge, label %do.end39.i.i.i, !prof !32

sw.epilog.i.i.i.generate_cookie.exit.i.i_crit_edge: ; preds = %sw.epilog.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %generate_cookie.exit.i.i

do.end39.i.i.i:                                   ; preds = %sw.epilog.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 129, i32 noundef 9, ptr noundef null) #5
  br label %generate_cookie.exit.i.i

generate_cookie.exit.i.i:                         ; preds = %do.end39.i.i.i, %sw.epilog.i.i.i.generate_cookie.exit.i.i_crit_edge
  %81 = lshr exact i32 %sub.ptr.sub.i.i.i, 4
  %or.i.i.i = or i32 %81, %cookie.0.i.i.i
  %conv56.i.i.i = trunc i32 %or.i.i.i to i16
  %call22.i.i = call i32 @b43legacy_generate_txhdr(ptr noundef %68, ptr noundef nonnull %txhdr_data.i.i, ptr noundef %70, i32 noundef %72, ptr noundef %cb.i.i.i, i16 noundef zeroext %conv56.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i)
  %tobool23.not.i.i = icmp eq i32 %call22.i.i, 0
  br i1 %tobool23.not.i.i, label %if.end25.i.i, label %pio_tx_write_fragment.exit.i

if.end25.i.i:                                     ; preds = %generate_cookie.exit.i.i
  %82 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %21, align 4
  %84 = ptrtoint ptr %mmio_base.i.i.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %mmio_base.i.i.i, align 4
  %86 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %83, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 4
  %write16.i.i.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %89, i32 0, i32 4
  %90 = ptrtoint ptr %write16.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %write16.i.i.i.i.i.i, align 4
  call void %91(ptr noundef %87, i16 noundef zeroext %85, i16 noundef zeroext 8) #5
  %92 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %len.i, align 4
  %need_workarounds.i.i = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %21, i32 0, i32 4
  %94 = ptrtoint ptr %need_workarounds.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %need_workarounds.i.i, align 4, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool27.not.i.i = icmp eq i8 %95, 0
  %spec.select.v.i.i = select i1 %tobool27.not.i.i, i32 82, i32 81
  %spec.select.i.i = add i32 %spec.select.v.i.i, %93
  %96 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %data.i.i, align 4
  br i1 %tobool27.not.i.i, label %if.end25.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i

if.end25.i.i.if.end.i.i.i_crit_edge:              ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %98 = ptrtoint ptr %txhdr_data.i.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %txhdr_data.i.i, align 2
  %100 = call i16 @llvm.bswap.i16(i16 %99) #5
  %101 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %21, align 4
  %103 = ptrtoint ptr %mmio_base.i.i.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %mmio_base.i.i.i, align 4
  %add.i17.i.i.i = add i16 %104, 2
  %105 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %102, align 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %106, align 4
  %write16.i.i.i.i2.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %108, i32 0, i32 4
  %109 = ptrtoint ptr %write16.i.i.i.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %write16.i.i.i.i2.i.i, align 4
  call void %110(ptr noundef %106, i16 noundef zeroext %add.i17.i.i.i, i16 noundef zeroext %100) #5
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %if.end25.i.i.if.end.i.i.i_crit_edge
  %i.0.i.i.i = phi i32 [ 0, %if.end25.i.i.if.end.i.i.i_crit_edge ], [ 2, %if.then.i.i.i ]
  %111 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %21, align 4
  %113 = ptrtoint ptr %mmio_base.i.i.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %mmio_base.i.i.i, align 4
  %115 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %112, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %116, align 4
  %write16.i.i.i19.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %118, i32 0, i32 4
  %119 = ptrtoint ptr %write16.i.i.i19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %write16.i.i.i19.i.i.i, align 4
  call void %120(ptr noundef %116, i16 noundef zeroext %114, i16 noundef zeroext 3) #5
  %sub.i.i.i = add i32 %spec.select.i.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.i.i.i, i32 %sub.i.i.i)
  %cmp31.i.i.i = icmp ult i32 %i.0.i.i.i, %sub.i.i.i
  br i1 %cmp31.i.i.i, label %if.end.i.i.i.while.body.i.i.i_crit_edge, label %if.end.i.i.i.while.end.i.i.i_crit_edge

if.end.i.i.i.while.end.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i.i.i

if.end.i.i.i.while.body.i.i.i_crit_edge:          ; preds = %if.end.i.i.i
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %if.end.i.i.i.while.body.i.i.i_crit_edge
  %i.132.i.i.i = phi i32 [ %add.i25.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ %i.0.i.i.i, %if.end.i.i.i.while.body.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 82, i32 %i.132.i.i.i)
  %cmp.i20.i.i.i = icmp ult i32 %i.132.i.i.i, 82
  %sub.i21.i.i.i = add i32 %i.132.i.i.i, -82
  %source.0.i22.i.i.i = select i1 %cmp.i20.i.i.i, ptr %txhdr_data.i.i, ptr %97
  %i.0.i23.i.i.i = select i1 %cmp.i20.i.i.i, i32 %i.132.i.i.i, i32 %sub.i21.i.i.i
  %add.ptr.i24.i.i.i = getelementptr i8, ptr %source.0.i22.i.i.i, i32 %i.0.i23.i.i.i
  %121 = ptrtoint ptr %add.ptr.i24.i.i.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %add.ptr.i24.i.i.i, align 2
  %123 = call i16 @llvm.bswap.i16(i16 %122) #5
  %add.i25.i.i.i = add i32 %i.132.i.i.i, 2
  %124 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %21, align 4
  %126 = ptrtoint ptr %mmio_base.i.i.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %mmio_base.i.i.i, align 4
  %add.i27.i.i.i = add i16 %127, 2
  %128 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %125, align 4
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %129, align 4
  %write16.i.i.i28.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %131, i32 0, i32 4
  %132 = ptrtoint ptr %write16.i.i.i28.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %write16.i.i.i28.i.i.i, align 4
  call void %133(ptr noundef %129, i16 noundef zeroext %add.i27.i.i.i, i16 noundef zeroext %123) #5
  %cmp.i.i.i = icmp ult i32 %add.i25.i.i.i, %sub.i.i.i
  br i1 %cmp.i.i.i, label %while.body.i.i.i.while.body.i.i.i_crit_edge, label %while.body.i.i.i.while.end.i.i.i_crit_edge

while.body.i.i.i.while.end.i.i.i_crit_edge:       ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i.i.i

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i.i

while.end.i.i.i:                                  ; preds = %while.body.i.i.i.while.end.i.i.i_crit_edge, %if.end.i.i.i.while.end.i.i.i_crit_edge
  %rem.i.i.i = and i32 %spec.select.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %rem.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %while.end.i.i.i.tx_data.exit.i.i_crit_edge, label %if.then3.i.i.i

while.end.i.i.i.tx_data.exit.i.i_crit_edge:       ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tx_data.exit.i.i

if.then3.i.i.i:                                   ; preds = %while.end.i.i.i
  %sub5.i.i.i = add i32 %spec.select.i.i, -83
  %arrayidx.i.i.i = getelementptr i8, ptr %97, i32 %sub5.i.i.i
  %134 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx.i.i.i, align 1
  %136 = ptrtoint ptr %need_workarounds.i.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %need_workarounds.i.i, align 4, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool.not.i.i.i.i = icmp eq i8 %137, 0
  br i1 %tobool.not.i.i.i.i, label %if.else.i.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.then3.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i.i.i.i = zext i8 %135 to i16
  %138 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %21, align 4
  %140 = ptrtoint ptr %mmio_base.i.i.i to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %mmio_base.i.i.i, align 4
  %add.i.i.i.i.i = add i16 %141, 2
  %142 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %139, align 4
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %143, align 4
  %write16.i.i.i.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %145, i32 0, i32 4
  %146 = ptrtoint ptr %write16.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %write16.i.i.i.i.i.i.i, align 4
  call void %147(ptr noundef %143, i16 noundef zeroext %add.i.i.i.i.i, i16 noundef zeroext %conv.i.i.i.i) #5
  %148 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %21, align 4
  %150 = ptrtoint ptr %mmio_base.i.i.i to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %mmio_base.i.i.i, align 4
  %152 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %149, align 4
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %153, align 4
  %write16.i.i.i8.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %155, i32 0, i32 4
  %156 = ptrtoint ptr %write16.i.i.i8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %write16.i.i.i8.i.i.i.i, align 4
  call void %157(ptr noundef %153, i16 noundef zeroext %151, i16 noundef zeroext 1) #5
  br label %tx_data.exit.i.i

if.else.i.i.i.i:                                  ; preds = %if.then3.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %158 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %21, align 4
  %160 = ptrtoint ptr %mmio_base.i.i.i to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %mmio_base.i.i.i, align 4
  %162 = ptrtoint ptr %159 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %159, align 4
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %163, align 4
  %write16.i.i.i10.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %165, i32 0, i32 4
  %166 = ptrtoint ptr %write16.i.i.i10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %write16.i.i.i10.i.i.i.i, align 4
  call void %167(ptr noundef %163, i16 noundef zeroext %161, i16 noundef zeroext 1) #5
  %conv1.i.i.i.i = zext i8 %135 to i16
  %168 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %21, align 4
  %170 = ptrtoint ptr %mmio_base.i.i.i to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %mmio_base.i.i.i, align 4
  %add.i12.i.i.i.i = add i16 %171, 2
  %172 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %169, align 4
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %173, align 4
  %write16.i.i.i13.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %175, i32 0, i32 4
  %176 = ptrtoint ptr %write16.i.i.i13.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %write16.i.i.i13.i.i.i.i, align 4
  call void %177(ptr noundef %173, i16 noundef zeroext %add.i12.i.i.i.i, i16 noundef zeroext %conv1.i.i.i.i) #5
  br label %tx_data.exit.i.i

tx_data.exit.i.i:                                 ; preds = %if.else.i.i.i.i, %if.then.i.i.i.i, %while.end.i.i.i.tx_data.exit.i.i_crit_edge
  %178 = ptrtoint ptr %need_workarounds.i.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %need_workarounds.i.i, align 4, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %179)
  %tobool.not.i4.i.i = icmp eq i8 %179, 0
  br i1 %tobool.not.i4.i.i, label %if.else.i.i.i, label %if.then.i10.i.i

if.then.i10.i.i:                                  ; preds = %tx_data.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %180 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %data.i.i, align 4
  %182 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %len.i, align 4
  %sub.i5.i.i = add i32 %183, -1
  %arrayidx.i6.i.i = getelementptr i8, ptr %181, i32 %sub.i5.i.i
  %184 = ptrtoint ptr %arrayidx.i6.i.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %arrayidx.i6.i.i, align 1
  %conv.i7.i.i = zext i8 %185 to i16
  %186 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %21, align 4
  %188 = ptrtoint ptr %mmio_base.i.i.i to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %mmio_base.i.i.i, align 4
  %add.i.i.i.i = add i16 %189, 2
  %190 = ptrtoint ptr %187 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %187, align 4
  %192 = ptrtoint ptr %191 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %191, align 4
  %write16.i.i.i.i9.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %193, i32 0, i32 4
  %194 = ptrtoint ptr %write16.i.i.i.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %write16.i.i.i.i9.i.i, align 4
  call void %195(ptr noundef %191, i16 noundef zeroext %add.i.i.i.i, i16 noundef zeroext %conv.i7.i.i) #5
  %196 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %21, align 4
  %198 = ptrtoint ptr %mmio_base.i.i.i to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %mmio_base.i.i.i, align 4
  %200 = ptrtoint ptr %197 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %197, align 4
  %202 = ptrtoint ptr %201 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %201, align 4
  %write16.i.i.i6.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %203, i32 0, i32 4
  %204 = ptrtoint ptr %write16.i.i.i6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %write16.i.i.i6.i.i.i, align 4
  call void %205(ptr noundef %201, i16 noundef zeroext %199, i16 noundef zeroext 5) #5
  br label %pio_tx_write_fragment.exit.thread.i

if.else.i.i.i:                                    ; preds = %tx_data.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %206 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %21, align 4
  %208 = ptrtoint ptr %mmio_base.i.i.i to i32
  call void @__asan_load2_noabort(i32 %208)
  %209 = load i16, ptr %mmio_base.i.i.i, align 4
  %210 = ptrtoint ptr %207 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %207, align 4
  %212 = ptrtoint ptr %211 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %211, align 4
  %write16.i.i.i8.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %213, i32 0, i32 4
  %214 = ptrtoint ptr %write16.i.i.i8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %write16.i.i.i8.i.i.i, align 4
  call void %215(ptr noundef %211, i16 noundef zeroext %209, i16 noundef zeroext 4) #5
  br label %pio_tx_write_fragment.exit.thread.i

pio_tx_write_fragment.exit.thread.i:              ; preds = %if.else.i.i.i, %if.then.i10.i.i
  call void @llvm.lifetime.end.p0(i64 82, ptr nonnull %txhdr_data.i.i) #5
  br label %if.end91.i

pio_tx_write_fragment.exit.i:                     ; preds = %generate_cookie.exit.i.i
  call void @llvm.lifetime.end.p0(i64 82, ptr nonnull %txhdr_data.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -126, i32 %call22.i.i)
  %cmp82.i = icmp eq i32 %call22.i.i, -126
  br i1 %cmp82.i, label %if.then90.i, label %pio_tx_write_fragment.exit.i.if.end91.i_crit_edge, !prof !33

pio_tx_write_fragment.exit.i.if.end91.i_crit_edge: ; preds = %pio_tx_write_fragment.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end91.i

if.then90.i:                                      ; preds = %pio_tx_write_fragment.exit.i
  %216 = ptrtoint ptr %packet.0 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %packet.0, align 4
  %218 = ptrtoint ptr %skb2.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %skb2.i, align 4
  %tobool.not.i = icmp eq ptr %219, null
  br i1 %tobool.not.i, label %if.then90.i.if.end6.i_crit_edge, label %if.then.i44

if.then90.i.if.end6.i_crit_edge:                  ; preds = %if.then90.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i

if.then.i44:                                      ; preds = %if.then90.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__dev_kfree_skb_irq(ptr noundef nonnull %219, i32 noundef 1) #5
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then.i44, %if.then90.i.if.end6.i_crit_edge
  %txfree.i = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %217, i32 0, i32 8
  %call.i.i.i46 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in59) #5
  br i1 %call.i.i.i46, label %if.end.i.i.i49, label %if.end6.i.__list_del_entry.exit.i.i51_crit_edge

if.end6.i.__list_del_entry.exit.i.i51_crit_edge:  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__list_del_entry.exit.i.i51

if.end.i.i.i49:                                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i47 = getelementptr i8, ptr %.pn.in59, i32 4
  %220 = ptrtoint ptr %prev.i.i.i47 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %prev.i.i.i47, align 4
  %222 = ptrtoint ptr %.pn.in59 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %.pn.in59, align 4
  %prev1.i.i.i.i48 = getelementptr inbounds %struct.list_head, ptr %223, i32 0, i32 1
  %224 = ptrtoint ptr %prev1.i.i.i.i48 to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr %221, ptr %prev1.i.i.i.i48, align 4
  %225 = ptrtoint ptr %221 to i32
  call void @__asan_store4_noabort(i32 %225)
  store volatile ptr %223, ptr %221, align 4
  br label %__list_del_entry.exit.i.i51

__list_del_entry.exit.i.i51:                      ; preds = %if.end.i.i.i49, %if.end6.i.__list_del_entry.exit.i.i51_crit_edge
  %226 = ptrtoint ptr %txfree.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %txfree.i, align 4
  %call.i.i.i.i50 = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in59, ptr noundef %txfree.i, ptr noundef %227) #5
  br i1 %call.i.i.i.i50, label %if.end.i.i.i.i53, label %__list_del_entry.exit.i.i51.free_txpacket.exit_crit_edge

__list_del_entry.exit.i.i51.free_txpacket.exit_crit_edge: ; preds = %__list_del_entry.exit.i.i51
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_txpacket.exit

if.end.i.i.i.i53:                                 ; preds = %__list_del_entry.exit.i.i51
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i2.i.i = getelementptr inbounds %struct.list_head, ptr %227, i32 0, i32 1
  %228 = ptrtoint ptr %prev1.i.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr %.pn.in59, ptr %prev1.i.i2.i.i, align 4
  %229 = ptrtoint ptr %.pn.in59 to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr %227, ptr %.pn.in59, align 4
  %prev3.i.i.i.i52 = getelementptr i8, ptr %.pn.in59, i32 4
  %230 = ptrtoint ptr %prev3.i.i.i.i52 to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr %txfree.i, ptr %prev3.i.i.i.i52, align 4
  %231 = ptrtoint ptr %txfree.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store volatile ptr %.pn.in59, ptr %txfree.i, align 4
  br label %free_txpacket.exit

free_txpacket.exit:                               ; preds = %if.end.i.i.i.i53, %__list_del_entry.exit.i.i51.free_txpacket.exit_crit_edge
  %nr_txfree.i = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %217, i32 0, i32 9
  %232 = ptrtoint ptr %nr_txfree.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %nr_txfree.i, align 4
  %inc.i54 = add i32 %233, 1
  store i32 %inc.i54, ptr %nr_txfree.i, align 4
  br label %pio_tx_packet.exit

if.end91.i:                                       ; preds = %pio_tx_write_fragment.exit.i.if.end91.i_crit_edge, %pio_tx_write_fragment.exit.thread.i
  %234 = ptrtoint ptr %tx_devq_packets.i to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %tx_devq_packets.i, align 2
  %inc.i = add i8 %235, 1
  store i8 %inc.i, ptr %tx_devq_packets.i, align 2
  %236 = ptrtoint ptr %tx_devq_used.i to i32
  call void @__asan_load2_noabort(i32 %236)
  %237 = load i16, ptr %tx_devq_used.i, align 4
  %238 = trunc i32 %conv4.i to i16
  %conv97.i = add i16 %237, %238
  store i16 %conv97.i, ptr %tx_devq_used.i, align 4
  %txrunning.i = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %21, i32 0, i32 11
  %call.i.i.i43 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in59) #5
  br i1 %call.i.i.i43, label %if.end.i.i122.i, label %if.end91.i.__list_del_entry.exit.i.i_crit_edge

if.end91.i.__list_del_entry.exit.i.i_crit_edge:   ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__list_del_entry.exit.i.i

if.end.i.i122.i:                                  ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i = getelementptr i8, ptr %.pn.in59, i32 4
  %239 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %prev.i.i.i, align 4
  %241 = ptrtoint ptr %.pn.in59 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %.pn.in59, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %242, i32 0, i32 1
  %243 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %243)
  store ptr %240, ptr %prev1.i.i.i.i, align 4
  %244 = ptrtoint ptr %240 to i32
  call void @__asan_store4_noabort(i32 %244)
  store volatile ptr %242, ptr %240, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i122.i, %if.end91.i.__list_del_entry.exit.i.i_crit_edge
  %prev.i2.i.i = getelementptr inbounds %struct.b43legacy_pioqueue, ptr %21, i32 0, i32 11, i32 1
  %245 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i123.i = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in59, ptr noundef %246, ptr noundef %txrunning.i) #5
  br i1 %call.i.i.i123.i, label %if.end.i.i.i124.i, label %__list_del_entry.exit.i.i.pio_tx_packet.exit_crit_edge

__list_del_entry.exit.i.i.pio_tx_packet.exit_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pio_tx_packet.exit

if.end.i.i.i124.i:                                ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %247 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr %.pn.in59, ptr %prev.i2.i.i, align 4
  %248 = ptrtoint ptr %.pn.in59 to i32
  call void @__asan_store4_noabort(i32 %248)
  store ptr %txrunning.i, ptr %.pn.in59, align 4
  %prev3.i.i.i.i = getelementptr i8, ptr %.pn.in59, i32 4
  %249 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store ptr %246, ptr %prev3.i.i.i.i, align 4
  %250 = ptrtoint ptr %246 to i32
  call void @__asan_store4_noabort(i32 %250)
  store volatile ptr %.pn.in59, ptr %246, align 4
  br label %pio_tx_packet.exit

pio_tx_packet.exit:                               ; preds = %if.end.i.i.i124.i, %__list_del_entry.exit.i.i.pio_tx_packet.exit_crit_edge, %free_txpacket.exit, %free_txpacket.exit.i
  %cmp21.not = icmp eq ptr %.pn64, %txqueue
  br i1 %cmp21.not, label %pio_tx_packet.exit.out_unlock_crit_edge, label %pio_tx_packet.exit.for.body_crit_edge

pio_tx_packet.exit.for.body_crit_edge:            ; preds = %pio_tx_packet.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

pio_tx_packet.exit.out_unlock_crit_edge:          ; preds = %pio_tx_packet.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_unlock

out_unlock:                                       ; preds = %pio_tx_packet.exit.out_unlock_crit_edge, %if.end71.i.out_unlock_crit_edge, %if.end58.i.out_unlock_crit_edge, %if.end11.out_unlock_crit_edge, %if.end.out_unlock_crit_edge, %entry.out_unlock_crit_edge
  %251 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %wl, align 4
  %irq_lock33 = getelementptr inbounds %struct.b43legacy_wl, ptr %252, i32 0, i32 2
  call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock33, i32 noundef %call4) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacyerr(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacywarn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b43legacy_generate_txhdr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/broadcom/b43legacy/pio.c", i32 435, i32 24}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/broadcom/b43legacy/pio.c", i32 458, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/broadcom/b43legacy/pio.c", i32 576, i32 31}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/broadcom/b43legacy/pio.c", i32 582, i32 26}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/broadcom/b43legacy/pio.c", i32 587, i32 26}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/broadcom/b43legacy/pio.c", i32 604, i32 9}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/broadcom/b43legacy/pio.c", i32 619, i32 26}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/broadcom/b43legacy/pio.c", i32 343, i32 25}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/broadcom/b43legacy/pio.c", i32 349, i32 25}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/broadcom/b43legacy/pio.c", i32 226, i32 33}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/broadcom/b43legacy/pio.c", i32 541, i32 31}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{i8 0, i8 2}
!32 = !{!"branch_weights", i32 2000, i32 1}
!33 = !{!"branch_weights", i32 1, i32 2000}
