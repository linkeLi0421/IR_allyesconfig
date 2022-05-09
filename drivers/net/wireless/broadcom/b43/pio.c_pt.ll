; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/b43/pio.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/b43/pio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.b43_wldev = type { ptr, ptr, %struct.completion, %struct.atomic_t, i8, i8, i8, i8, i8, i8, %struct.b43_phy, %union.anon.137, i8, %struct.b43_stats, i32, [6 x i32], i32, %struct.b43_noise_calculation, i32, %struct.delayed_work, i32, %struct.work_struct, i16, [58 x %struct.b43_key], %struct.b43_firmware, %struct.list_head, ptr, i32, [32 x i32], i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.b43_phy = type { ptr, %struct.anon.135, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i32, i8, i32, ptr, i32, %struct.atomic_t, i8, i8 }
%struct.anon.135 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.137 = type { %struct.b43_dma }
%struct.b43_dma = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.b43_stats = type { i8 }
%struct.b43_noise_calculation = type { i8, i8, [8 x [4 x i8]] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.b43_key = type { ptr, i8 }
%struct.b43_firmware = type { %struct.b43_firmware_file, %struct.b43_firmware_file, %struct.b43_firmware_file, %struct.b43_firmware_file, i16, i16, i32, i8, i8 }
%struct.b43_firmware_file = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.b43_pio_txqueue = type { ptr, i16, i16, i16, i16, i8, i8, i8, [32 x %struct.b43_pio_txpacket], %struct.list_head, i8 }
%struct.b43_pio_txpacket = type { ptr, ptr, i8, %struct.list_head }
%struct.b43_wl = type { ptr, ptr, %struct.mutex, %struct.spinlock, i8, ptr, [6 x i8], [6 x i8], i32, i8, i32, %struct.ieee80211_low_level_stats, %struct.hwrng, i8, [31 x i8], i8, i8, ptr, i8, i8, i8, %struct.work_struct, %struct.spinlock, [4 x %struct.b43_qos_params], %struct.work_struct, %struct.work_struct, [4 x %struct.sk_buff_head], [4 x i8], %struct.work_struct, %struct.b43_leds, [118 x i8], [2 x i8], [4 x i8], [4 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.b43_qos_params = type { %struct.ieee80211_tx_queue_params }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.sk_buff_head = type { %union.anon.65, i32, %struct.spinlock }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { ptr, ptr }
%struct.b43_leds = type { %struct.b43_led, %struct.b43_led, %struct.b43_led, %struct.b43_led, i8, %struct.work_struct }
%struct.b43_led = type { ptr, %struct.led_classdev, i8, i8, [32 x i8], %struct.atomic_t, i8 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.b43_bus_dev = type { i32, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, i32, i16, i16, i16, i16, i8, i8, ptr, i16, i8 }
%union.anon = type { ptr }
%struct.b43_pio_rxqueue = type { ptr, i16, i8 }
%struct.sk_buff = type { %union.anon.44, %union.anon.47, %union.anon.48, [48 x i8], %union.anon.49, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.51, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.44 = type { %struct.anon.45 }
%struct.anon.45 = type { ptr, ptr, %union.anon.46 }
%union.anon.46 = type { ptr }
%union.anon.47 = type { ptr }
%union.anon.48 = type { i64 }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { i32, ptr }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.53, i32, i32, i32, i16, i16, %union.anon.55, i32, %union.anon.56, %union.anon.57, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.53 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i32 }
%union.anon.57 = type { i16 }

@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PIO initialized\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"PIO: TX packet longer than queue.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"PIO: TX packet overflow.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/wireless/broadcom/b43/pio.c\00", [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"PIO transmission failure\0A\00", [38 x i8] zeroinitializer }, align 32
@b43_pio_rx.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@index_to_pioqueue_base.bases = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 768, i16 784, i16 800, i16 816, i16 832, i16 848, i16 864, i16 880], [16 x i8] zeroinitializer }, align 32
@index_to_pioqueue_base.bases_rev11 = internal constant { [6 x i16], [20 x i8] } { [6 x i16] [i16 512, i16 576, i16 640, i16 704, i16 768, i16 832], [20 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"PIO RX timed out\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"len > 0x700\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"len == 0\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Frame FCS error\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Out of memory\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"PIO RX error: %s\0A\00", [46 x i8] zeroinitializer }, align 32
@switch.table.b43_pio_tx = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 121, i32 113, i32 109], [20 x i8] zeroinitializer }, align 32
@switch.table.b43_pio_tx.17 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 118, i32 110, i32 106], [20 x i8] zeroinitializer }, align 32
@switch.table.b43_pio_handle_txstatus = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 118, i32 110, i32 106], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967170]
@__sancov_gen_cov_switch_values.19 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.22 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 268, i32 18 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 515, i32 19 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 520, i32 20 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 523, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 547, i32 19 }
@___asan_gen_.38 = private unnamed_addr constant [6 x i8] c"bases\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 82, i32 19 }
@___asan_gen_.41 = private unnamed_addr constant [12 x i8] c"bases_rev11\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 92, i32 19 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 651, i32 21 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 668, i32 13 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 672, i32 13 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 688, i32 14 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 699, i32 13 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private constant [43 x i8] c"../drivers/net/wireless/broadcom/b43/pio.c\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 753, i32 22 }
@___asan_gen_.62 = private unnamed_addr constant [24 x i8] c"switch.table.b43_pio_tx\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [27 x i8] c"switch.table.b43_pio_tx.17\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [37 x i8] c"switch.table.b43_pio_handle_txstatus\00", align 1
@llvm.compiler.used = appending global [16 x ptr] [ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @index_to_pioqueue_base.bases, ptr @index_to_pioqueue_base.bases_rev11, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @switch.table.b43_pio_tx, ptr @switch.table.b43_pio_tx.17, ptr @switch.table.b43_pio_handle_txstatus], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index_to_pioqueue_base.bases to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index_to_pioqueue_base.bases_rev11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.b43_pio_tx to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.b43_pio_tx.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.b43_pio_handle_txstatus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_pio_free(ptr nocapture noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %__using_pio_transfers.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %__using_pio_transfers.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %__using_pio_transfers.i, align 4, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.i.not = icmp eq i8 %1, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11
  %rx_queue = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11, i32 0, i32 5
  %3 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rx_queue, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.b43_destroy_pioqueue_rx.exit_crit_edge, label %if.end.i

if.end.b43_destroy_pioqueue_rx.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %b43_destroy_pioqueue_rx.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %4) #4
  br label %b43_destroy_pioqueue_rx.exit

b43_destroy_pioqueue_rx.exit:                     ; preds = %if.end.i, %if.end.b43_destroy_pioqueue_rx.exit_crit_edge
  %5 = ptrtoint ptr %rx_queue to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %rx_queue, align 4
  %tx_queue_mcast = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11, i32 0, i32 4
  %6 = ptrtoint ptr %tx_queue_mcast to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_queue_mcast, align 4
  %tobool.not.i34 = icmp eq ptr %7, null
  br i1 %tobool.not.i34, label %b43_destroy_pioqueue_rx.exit.b43_destroy_pioqueue_tx.exit_crit_edge, label %b43_destroy_pioqueue_rx.exit.for.body.i.i_crit_edge

b43_destroy_pioqueue_rx.exit.for.body.i.i_crit_edge: ; preds = %b43_destroy_pioqueue_rx.exit
  br label %for.body.i.i

b43_destroy_pioqueue_rx.exit.b43_destroy_pioqueue_tx.exit_crit_edge: ; preds = %b43_destroy_pioqueue_rx.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %b43_destroy_pioqueue_tx.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %b43_destroy_pioqueue_rx.exit.for.body.i.i_crit_edge
  %i.08.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %b43_destroy_pioqueue_rx.exit.for.body.i.i_crit_edge ]
  %skb.i.i = getelementptr %struct.b43_pio_txqueue, ptr %7, i32 0, i32 8, i32 %i.08.i.i, i32 1
  %8 = ptrtoint ptr %skb.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %skb.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.then.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %wl.i.i = getelementptr inbounds %struct.b43_wldev, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %wl.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wl.i.i, align 4
  %hw.i.i = getelementptr inbounds %struct.b43_wl, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw.i.i, align 4
  tail call void @ieee80211_free_txskb(ptr noundef %15, ptr noundef nonnull %9) #4
  %16 = ptrtoint ptr %skb.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %skb.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.08.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 32
  br i1 %exitcond.not.i.i, label %b43_pio_cancel_tx_packets.exit.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

b43_pio_cancel_tx_packets.exit.i:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %7) #4
  br label %b43_destroy_pioqueue_tx.exit

b43_destroy_pioqueue_tx.exit:                     ; preds = %b43_pio_cancel_tx_packets.exit.i, %b43_destroy_pioqueue_rx.exit.b43_destroy_pioqueue_tx.exit_crit_edge
  %17 = ptrtoint ptr %tx_queue_mcast to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %tx_queue_mcast, align 4
  %tx_queue_AC_VO = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11, i32 0, i32 3
  %18 = ptrtoint ptr %tx_queue_AC_VO to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tx_queue_AC_VO, align 4
  %tobool.not.i35 = icmp eq ptr %19, null
  br i1 %tobool.not.i35, label %b43_destroy_pioqueue_tx.exit.b43_destroy_pioqueue_tx.exit47_crit_edge, label %b43_destroy_pioqueue_tx.exit.for.body.i.i39_crit_edge

b43_destroy_pioqueue_tx.exit.for.body.i.i39_crit_edge: ; preds = %b43_destroy_pioqueue_tx.exit
  br label %for.body.i.i39

b43_destroy_pioqueue_tx.exit.b43_destroy_pioqueue_tx.exit47_crit_edge: ; preds = %b43_destroy_pioqueue_tx.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %b43_destroy_pioqueue_tx.exit47

for.body.i.i39:                                   ; preds = %for.inc.i.i45.for.body.i.i39_crit_edge, %b43_destroy_pioqueue_tx.exit.for.body.i.i39_crit_edge
  %i.08.i.i36 = phi i32 [ %inc.i.i43, %for.inc.i.i45.for.body.i.i39_crit_edge ], [ 0, %b43_destroy_pioqueue_tx.exit.for.body.i.i39_crit_edge ]
  %skb.i.i37 = getelementptr %struct.b43_pio_txqueue, ptr %19, i32 0, i32 8, i32 %i.08.i.i36, i32 1
  %20 = ptrtoint ptr %skb.i.i37 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %skb.i.i37, align 4
  %tobool.not.i.i38 = icmp eq ptr %21, null
  br i1 %tobool.not.i.i38, label %for.body.i.i39.for.inc.i.i45_crit_edge, label %if.then.i.i42

for.body.i.i39.for.inc.i.i45_crit_edge:           ; preds = %for.body.i.i39
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i.i45

if.then.i.i42:                                    ; preds = %for.body.i.i39
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %19, align 4
  %wl.i.i40 = getelementptr inbounds %struct.b43_wldev, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %wl.i.i40 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wl.i.i40, align 4
  %hw.i.i41 = getelementptr inbounds %struct.b43_wl, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %hw.i.i41 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw.i.i41, align 4
  tail call void @ieee80211_free_txskb(ptr noundef %27, ptr noundef nonnull %21) #4
  %28 = ptrtoint ptr %skb.i.i37 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %skb.i.i37, align 4
  br label %for.inc.i.i45

for.inc.i.i45:                                    ; preds = %if.then.i.i42, %for.body.i.i39.for.inc.i.i45_crit_edge
  %inc.i.i43 = add nuw nsw i32 %i.08.i.i36, 1
  %exitcond.not.i.i44 = icmp eq i32 %inc.i.i43, 32
  br i1 %exitcond.not.i.i44, label %b43_pio_cancel_tx_packets.exit.i46, label %for.inc.i.i45.for.body.i.i39_crit_edge

for.inc.i.i45.for.body.i.i39_crit_edge:           ; preds = %for.inc.i.i45
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i39

b43_pio_cancel_tx_packets.exit.i46:               ; preds = %for.inc.i.i45
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %19) #4
  br label %b43_destroy_pioqueue_tx.exit47

b43_destroy_pioqueue_tx.exit47:                   ; preds = %b43_pio_cancel_tx_packets.exit.i46, %b43_destroy_pioqueue_tx.exit.b43_destroy_pioqueue_tx.exit47_crit_edge
  %29 = ptrtoint ptr %tx_queue_AC_VO to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %tx_queue_AC_VO, align 4
  %tx_queue_AC_VI = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11, i32 0, i32 2
  %30 = ptrtoint ptr %tx_queue_AC_VI to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tx_queue_AC_VI, align 4
  %tobool.not.i48 = icmp eq ptr %31, null
  br i1 %tobool.not.i48, label %b43_destroy_pioqueue_tx.exit47.b43_destroy_pioqueue_tx.exit60_crit_edge, label %b43_destroy_pioqueue_tx.exit47.for.body.i.i52_crit_edge

b43_destroy_pioqueue_tx.exit47.for.body.i.i52_crit_edge: ; preds = %b43_destroy_pioqueue_tx.exit47
  br label %for.body.i.i52

b43_destroy_pioqueue_tx.exit47.b43_destroy_pioqueue_tx.exit60_crit_edge: ; preds = %b43_destroy_pioqueue_tx.exit47
  call void @__sanitizer_cov_trace_pc() #6
  br label %b43_destroy_pioqueue_tx.exit60

for.body.i.i52:                                   ; preds = %for.inc.i.i58.for.body.i.i52_crit_edge, %b43_destroy_pioqueue_tx.exit47.for.body.i.i52_crit_edge
  %i.08.i.i49 = phi i32 [ %inc.i.i56, %for.inc.i.i58.for.body.i.i52_crit_edge ], [ 0, %b43_destroy_pioqueue_tx.exit47.for.body.i.i52_crit_edge ]
  %skb.i.i50 = getelementptr %struct.b43_pio_txqueue, ptr %31, i32 0, i32 8, i32 %i.08.i.i49, i32 1
  %32 = ptrtoint ptr %skb.i.i50 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %skb.i.i50, align 4
  %tobool.not.i.i51 = icmp eq ptr %33, null
  br i1 %tobool.not.i.i51, label %for.body.i.i52.for.inc.i.i58_crit_edge, label %if.then.i.i55

for.body.i.i52.for.inc.i.i58_crit_edge:           ; preds = %for.body.i.i52
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i.i58

if.then.i.i55:                                    ; preds = %for.body.i.i52
  call void @__sanitizer_cov_trace_pc() #6
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %31, align 4
  %wl.i.i53 = getelementptr inbounds %struct.b43_wldev, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %wl.i.i53 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %wl.i.i53, align 4
  %hw.i.i54 = getelementptr inbounds %struct.b43_wl, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %hw.i.i54 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw.i.i54, align 4
  tail call void @ieee80211_free_txskb(ptr noundef %39, ptr noundef nonnull %33) #4
  %40 = ptrtoint ptr %skb.i.i50 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %skb.i.i50, align 4
  br label %for.inc.i.i58

for.inc.i.i58:                                    ; preds = %if.then.i.i55, %for.body.i.i52.for.inc.i.i58_crit_edge
  %inc.i.i56 = add nuw nsw i32 %i.08.i.i49, 1
  %exitcond.not.i.i57 = icmp eq i32 %inc.i.i56, 32
  br i1 %exitcond.not.i.i57, label %b43_pio_cancel_tx_packets.exit.i59, label %for.inc.i.i58.for.body.i.i52_crit_edge

for.inc.i.i58.for.body.i.i52_crit_edge:           ; preds = %for.inc.i.i58
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i52

b43_pio_cancel_tx_packets.exit.i59:               ; preds = %for.inc.i.i58
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %31) #4
  br label %b43_destroy_pioqueue_tx.exit60

b43_destroy_pioqueue_tx.exit60:                   ; preds = %b43_pio_cancel_tx_packets.exit.i59, %b43_destroy_pioqueue_tx.exit47.b43_destroy_pioqueue_tx.exit60_crit_edge
  %41 = ptrtoint ptr %tx_queue_AC_VI to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %tx_queue_AC_VI, align 4
  %tx_queue_AC_BE = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11, i32 0, i32 1
  %42 = ptrtoint ptr %tx_queue_AC_BE to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tx_queue_AC_BE, align 4
  %tobool.not.i61 = icmp eq ptr %43, null
  br i1 %tobool.not.i61, label %b43_destroy_pioqueue_tx.exit60.b43_destroy_pioqueue_tx.exit73_crit_edge, label %b43_destroy_pioqueue_tx.exit60.for.body.i.i65_crit_edge

b43_destroy_pioqueue_tx.exit60.for.body.i.i65_crit_edge: ; preds = %b43_destroy_pioqueue_tx.exit60
  br label %for.body.i.i65

b43_destroy_pioqueue_tx.exit60.b43_destroy_pioqueue_tx.exit73_crit_edge: ; preds = %b43_destroy_pioqueue_tx.exit60
  call void @__sanitizer_cov_trace_pc() #6
  br label %b43_destroy_pioqueue_tx.exit73

for.body.i.i65:                                   ; preds = %for.inc.i.i71.for.body.i.i65_crit_edge, %b43_destroy_pioqueue_tx.exit60.for.body.i.i65_crit_edge
  %i.08.i.i62 = phi i32 [ %inc.i.i69, %for.inc.i.i71.for.body.i.i65_crit_edge ], [ 0, %b43_destroy_pioqueue_tx.exit60.for.body.i.i65_crit_edge ]
  %skb.i.i63 = getelementptr %struct.b43_pio_txqueue, ptr %43, i32 0, i32 8, i32 %i.08.i.i62, i32 1
  %44 = ptrtoint ptr %skb.i.i63 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %skb.i.i63, align 4
  %tobool.not.i.i64 = icmp eq ptr %45, null
  br i1 %tobool.not.i.i64, label %for.body.i.i65.for.inc.i.i71_crit_edge, label %if.then.i.i68

for.body.i.i65.for.inc.i.i71_crit_edge:           ; preds = %for.body.i.i65
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i.i71

if.then.i.i68:                                    ; preds = %for.body.i.i65
  call void @__sanitizer_cov_trace_pc() #6
  %46 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %43, align 4
  %wl.i.i66 = getelementptr inbounds %struct.b43_wldev, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %wl.i.i66 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %wl.i.i66, align 4
  %hw.i.i67 = getelementptr inbounds %struct.b43_wl, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %hw.i.i67 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hw.i.i67, align 4
  tail call void @ieee80211_free_txskb(ptr noundef %51, ptr noundef nonnull %45) #4
  %52 = ptrtoint ptr %skb.i.i63 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %skb.i.i63, align 4
  br label %for.inc.i.i71

for.inc.i.i71:                                    ; preds = %if.then.i.i68, %for.body.i.i65.for.inc.i.i71_crit_edge
  %inc.i.i69 = add nuw nsw i32 %i.08.i.i62, 1
  %exitcond.not.i.i70 = icmp eq i32 %inc.i.i69, 32
  br i1 %exitcond.not.i.i70, label %b43_pio_cancel_tx_packets.exit.i72, label %for.inc.i.i71.for.body.i.i65_crit_edge

for.inc.i.i71.for.body.i.i65_crit_edge:           ; preds = %for.inc.i.i71
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i65

b43_pio_cancel_tx_packets.exit.i72:               ; preds = %for.inc.i.i71
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %43) #4
  br label %b43_destroy_pioqueue_tx.exit73

b43_destroy_pioqueue_tx.exit73:                   ; preds = %b43_pio_cancel_tx_packets.exit.i72, %b43_destroy_pioqueue_tx.exit60.b43_destroy_pioqueue_tx.exit73_crit_edge
  %53 = ptrtoint ptr %tx_queue_AC_BE to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %tx_queue_AC_BE, align 4
  %54 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %2, align 4
  %tobool.not.i74 = icmp eq ptr %55, null
  br i1 %tobool.not.i74, label %b43_destroy_pioqueue_tx.exit73.b43_destroy_pioqueue_tx.exit86_crit_edge, label %b43_destroy_pioqueue_tx.exit73.for.body.i.i78_crit_edge

b43_destroy_pioqueue_tx.exit73.for.body.i.i78_crit_edge: ; preds = %b43_destroy_pioqueue_tx.exit73
  br label %for.body.i.i78

b43_destroy_pioqueue_tx.exit73.b43_destroy_pioqueue_tx.exit86_crit_edge: ; preds = %b43_destroy_pioqueue_tx.exit73
  call void @__sanitizer_cov_trace_pc() #6
  br label %b43_destroy_pioqueue_tx.exit86

for.body.i.i78:                                   ; preds = %for.inc.i.i84.for.body.i.i78_crit_edge, %b43_destroy_pioqueue_tx.exit73.for.body.i.i78_crit_edge
  %i.08.i.i75 = phi i32 [ %inc.i.i82, %for.inc.i.i84.for.body.i.i78_crit_edge ], [ 0, %b43_destroy_pioqueue_tx.exit73.for.body.i.i78_crit_edge ]
  %skb.i.i76 = getelementptr %struct.b43_pio_txqueue, ptr %55, i32 0, i32 8, i32 %i.08.i.i75, i32 1
  %56 = ptrtoint ptr %skb.i.i76 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %skb.i.i76, align 4
  %tobool.not.i.i77 = icmp eq ptr %57, null
  br i1 %tobool.not.i.i77, label %for.body.i.i78.for.inc.i.i84_crit_edge, label %if.then.i.i81

for.body.i.i78.for.inc.i.i84_crit_edge:           ; preds = %for.body.i.i78
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i.i84

if.then.i.i81:                                    ; preds = %for.body.i.i78
  call void @__sanitizer_cov_trace_pc() #6
  %58 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %55, align 4
  %wl.i.i79 = getelementptr inbounds %struct.b43_wldev, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %wl.i.i79 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %wl.i.i79, align 4
  %hw.i.i80 = getelementptr inbounds %struct.b43_wl, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %hw.i.i80 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hw.i.i80, align 4
  tail call void @ieee80211_free_txskb(ptr noundef %63, ptr noundef nonnull %57) #4
  %64 = ptrtoint ptr %skb.i.i76 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %skb.i.i76, align 4
  br label %for.inc.i.i84

for.inc.i.i84:                                    ; preds = %if.then.i.i81, %for.body.i.i78.for.inc.i.i84_crit_edge
  %inc.i.i82 = add nuw nsw i32 %i.08.i.i75, 1
  %exitcond.not.i.i83 = icmp eq i32 %inc.i.i82, 32
  br i1 %exitcond.not.i.i83, label %b43_pio_cancel_tx_packets.exit.i85, label %for.inc.i.i84.for.body.i.i78_crit_edge

for.inc.i.i84.for.body.i.i78_crit_edge:           ; preds = %for.inc.i.i84
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i78

b43_pio_cancel_tx_packets.exit.i85:               ; preds = %for.inc.i.i84
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %55) #4
  br label %b43_destroy_pioqueue_tx.exit86

b43_destroy_pioqueue_tx.exit86:                   ; preds = %b43_pio_cancel_tx_packets.exit.i85, %b43_destroy_pioqueue_tx.exit73.b43_destroy_pioqueue_tx.exit86_crit_edge
  %65 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %2, align 4
  br label %cleanup

cleanup:                                          ; preds = %b43_destroy_pioqueue_tx.exit86, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @b43_pio_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %read32.i = getelementptr inbounds %struct.b43_bus_dev, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %4(ptr noundef %2, i16 noundef zeroext 288) #4
  %and = and i32 %call.i, -65537
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %write32.i = getelementptr inbounds %struct.b43_bus_dev, ptr %6, i32 0, i32 10
  %7 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write32.i, align 4
  tail call void %8(ptr noundef %6, i16 noundef zeroext 288, i32 noundef %and) #4
  tail call void @b43_shm_write16(ptr noundef %dev, i16 noundef zeroext 1, i16 noundef zeroext 52, i16 noundef zeroext 0) #4
  %call1 = tail call fastcc ptr @b43_setup_pioqueue_tx(ptr noundef %dev, i32 noundef 0)
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call1, ptr %0, align 4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call fastcc ptr @b43_setup_pioqueue_tx(ptr noundef %dev, i32 noundef 1)
  %tx_queue_AC_BE = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11, i32 0, i32 1
  %10 = ptrtoint ptr %tx_queue_AC_BE to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call3, ptr %tx_queue_AC_BE, align 4
  %tobool5.not = icmp eq ptr %call3, null
  br i1 %tobool5.not, label %if.end.do.body45_crit_edge, label %if.end7

if.end.do.body45_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body45

if.end7:                                          ; preds = %if.end
  %call8 = tail call fastcc ptr @b43_setup_pioqueue_tx(ptr noundef %dev, i32 noundef 2)
  %tx_queue_AC_VI = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11, i32 0, i32 2
  %11 = ptrtoint ptr %tx_queue_AC_VI to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call8, ptr %tx_queue_AC_VI, align 4
  %tobool10.not = icmp eq ptr %call8, null
  br i1 %tobool10.not, label %if.end7.do.body40_crit_edge, label %if.end12

if.end7.do.body40_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body40

if.end12:                                         ; preds = %if.end7
  %call13 = tail call fastcc ptr @b43_setup_pioqueue_tx(ptr noundef %dev, i32 noundef 3)
  %tx_queue_AC_VO = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11, i32 0, i32 3
  %12 = ptrtoint ptr %tx_queue_AC_VO to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call13, ptr %tx_queue_AC_VO, align 4
  %tobool15.not = icmp eq ptr %call13, null
  br i1 %tobool15.not, label %if.end12.do.body35_crit_edge, label %if.end17

if.end12.do.body35_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body35

if.end17:                                         ; preds = %if.end12
  %call18 = tail call fastcc ptr @b43_setup_pioqueue_tx(ptr noundef %dev, i32 noundef 4)
  %tx_queue_mcast = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11, i32 0, i32 4
  %13 = ptrtoint ptr %tx_queue_mcast to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call18, ptr %tx_queue_mcast, align 4
  %tobool20.not = icmp eq ptr %call18, null
  br i1 %tobool20.not, label %if.end17.do.body30_crit_edge, label %if.end22

if.end17.do.body30_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body30

if.end22:                                         ; preds = %if.end17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 8) #7
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %do.body, label %if.end27

if.end27:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dev, ptr %call7.i.i.i, align 8
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %core_rev.i = getelementptr inbounds %struct.b43_bus_dev, ptr %17, i32 0, i32 25
  %18 = ptrtoint ptr %core_rev.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %core_rev.i, align 2
  %rev.i = getelementptr inbounds %struct.b43_pio_rxqueue, ptr %call7.i.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %rev.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %rev.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %19)
  %cmp.i.i = icmp ugt i8 %19, 10
  %add.i = select i1 %cmp.i.i, i16 568, i16 776
  %mmio_base.i = getelementptr inbounds %struct.b43_pio_rxqueue, ptr %call7.i.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %add.i, ptr %mmio_base.i, align 4
  tail call void @b43_dma_direct_fifo_rx(ptr noundef %dev, i32 noundef 0, i1 noundef zeroext true) #4
  %rx_queue = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11, i32 0, i32 5
  %22 = ptrtoint ptr %rx_queue to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i.i, ptr %rx_queue, align 4
  %wl = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %23 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wl, align 4
  tail call void (ptr, ptr, ...) @b43dbg(ptr noundef %24, ptr noundef nonnull @.str.6) #4
  br label %cleanup

do.body:                                          ; preds = %if.end22
  %rx_queue136 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11, i32 0, i32 5
  %25 = ptrtoint ptr %rx_queue136 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %rx_queue136, align 4
  %26 = ptrtoint ptr %tx_queue_mcast to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tx_queue_mcast, align 4
  %tobool.not.i83 = icmp eq ptr %27, null
  br i1 %tobool.not.i83, label %do.body.b43_destroy_pioqueue_tx.exit_crit_edge, label %do.body.for.body.i.i_crit_edge

do.body.for.body.i.i_crit_edge:                   ; preds = %do.body
  br label %for.body.i.i

do.body.b43_destroy_pioqueue_tx.exit_crit_edge:   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %b43_destroy_pioqueue_tx.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %do.body.for.body.i.i_crit_edge
  %i.08.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %do.body.for.body.i.i_crit_edge ]
  %skb.i.i = getelementptr %struct.b43_pio_txqueue, ptr %27, i32 0, i32 8, i32 %i.08.i.i, i32 1
  %28 = ptrtoint ptr %skb.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %skb.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %29, null
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.then.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %27, align 4
  %wl.i.i = getelementptr inbounds %struct.b43_wldev, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %wl.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %wl.i.i, align 4
  %hw.i.i = getelementptr inbounds %struct.b43_wl, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw.i.i, align 4
  tail call void @ieee80211_free_txskb(ptr noundef %35, ptr noundef nonnull %29) #4
  %36 = ptrtoint ptr %skb.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %skb.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.08.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 32
  br i1 %exitcond.not.i.i, label %b43_pio_cancel_tx_packets.exit.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

b43_pio_cancel_tx_packets.exit.i:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %27) #4
  br label %b43_destroy_pioqueue_tx.exit

b43_destroy_pioqueue_tx.exit:                     ; preds = %b43_pio_cancel_tx_packets.exit.i, %do.body.b43_destroy_pioqueue_tx.exit_crit_edge
  %37 = ptrtoint ptr %tx_queue_mcast to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %tx_queue_mcast, align 4
  br label %do.body30

do.body30:                                        ; preds = %b43_destroy_pioqueue_tx.exit, %if.end17.do.body30_crit_edge
  %38 = ptrtoint ptr %tx_queue_AC_VO to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tx_queue_AC_VO, align 4
  %tobool.not.i84 = icmp eq ptr %39, null
  br i1 %tobool.not.i84, label %do.body30.b43_destroy_pioqueue_tx.exit96_crit_edge, label %do.body30.for.body.i.i88_crit_edge

do.body30.for.body.i.i88_crit_edge:               ; preds = %do.body30
  br label %for.body.i.i88

do.body30.b43_destroy_pioqueue_tx.exit96_crit_edge: ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #6
  br label %b43_destroy_pioqueue_tx.exit96

for.body.i.i88:                                   ; preds = %for.inc.i.i94.for.body.i.i88_crit_edge, %do.body30.for.body.i.i88_crit_edge
  %i.08.i.i85 = phi i32 [ %inc.i.i92, %for.inc.i.i94.for.body.i.i88_crit_edge ], [ 0, %do.body30.for.body.i.i88_crit_edge ]
  %skb.i.i86 = getelementptr %struct.b43_pio_txqueue, ptr %39, i32 0, i32 8, i32 %i.08.i.i85, i32 1
  %40 = ptrtoint ptr %skb.i.i86 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %skb.i.i86, align 4
  %tobool.not.i.i87 = icmp eq ptr %41, null
  br i1 %tobool.not.i.i87, label %for.body.i.i88.for.inc.i.i94_crit_edge, label %if.then.i.i91

for.body.i.i88.for.inc.i.i94_crit_edge:           ; preds = %for.body.i.i88
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i.i94

if.then.i.i91:                                    ; preds = %for.body.i.i88
  call void @__sanitizer_cov_trace_pc() #6
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %39, align 4
  %wl.i.i89 = getelementptr inbounds %struct.b43_wldev, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %wl.i.i89 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %wl.i.i89, align 4
  %hw.i.i90 = getelementptr inbounds %struct.b43_wl, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %hw.i.i90 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hw.i.i90, align 4
  tail call void @ieee80211_free_txskb(ptr noundef %47, ptr noundef nonnull %41) #4
  %48 = ptrtoint ptr %skb.i.i86 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %skb.i.i86, align 4
  br label %for.inc.i.i94

for.inc.i.i94:                                    ; preds = %if.then.i.i91, %for.body.i.i88.for.inc.i.i94_crit_edge
  %inc.i.i92 = add nuw nsw i32 %i.08.i.i85, 1
  %exitcond.not.i.i93 = icmp eq i32 %inc.i.i92, 32
  br i1 %exitcond.not.i.i93, label %b43_pio_cancel_tx_packets.exit.i95, label %for.inc.i.i94.for.body.i.i88_crit_edge

for.inc.i.i94.for.body.i.i88_crit_edge:           ; preds = %for.inc.i.i94
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i88

b43_pio_cancel_tx_packets.exit.i95:               ; preds = %for.inc.i.i94
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %39) #4
  br label %b43_destroy_pioqueue_tx.exit96

b43_destroy_pioqueue_tx.exit96:                   ; preds = %b43_pio_cancel_tx_packets.exit.i95, %do.body30.b43_destroy_pioqueue_tx.exit96_crit_edge
  %49 = ptrtoint ptr %tx_queue_AC_VO to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %tx_queue_AC_VO, align 4
  br label %do.body35

do.body35:                                        ; preds = %b43_destroy_pioqueue_tx.exit96, %if.end12.do.body35_crit_edge
  %50 = ptrtoint ptr %tx_queue_AC_VI to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tx_queue_AC_VI, align 4
  %tobool.not.i97 = icmp eq ptr %51, null
  br i1 %tobool.not.i97, label %do.body35.b43_destroy_pioqueue_tx.exit109_crit_edge, label %do.body35.for.body.i.i101_crit_edge

do.body35.for.body.i.i101_crit_edge:              ; preds = %do.body35
  br label %for.body.i.i101

do.body35.b43_destroy_pioqueue_tx.exit109_crit_edge: ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #6
  br label %b43_destroy_pioqueue_tx.exit109

for.body.i.i101:                                  ; preds = %for.inc.i.i107.for.body.i.i101_crit_edge, %do.body35.for.body.i.i101_crit_edge
  %i.08.i.i98 = phi i32 [ %inc.i.i105, %for.inc.i.i107.for.body.i.i101_crit_edge ], [ 0, %do.body35.for.body.i.i101_crit_edge ]
  %skb.i.i99 = getelementptr %struct.b43_pio_txqueue, ptr %51, i32 0, i32 8, i32 %i.08.i.i98, i32 1
  %52 = ptrtoint ptr %skb.i.i99 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %skb.i.i99, align 4
  %tobool.not.i.i100 = icmp eq ptr %53, null
  br i1 %tobool.not.i.i100, label %for.body.i.i101.for.inc.i.i107_crit_edge, label %if.then.i.i104

for.body.i.i101.for.inc.i.i107_crit_edge:         ; preds = %for.body.i.i101
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i.i107

if.then.i.i104:                                   ; preds = %for.body.i.i101
  call void @__sanitizer_cov_trace_pc() #6
  %54 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %51, align 4
  %wl.i.i102 = getelementptr inbounds %struct.b43_wldev, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %wl.i.i102 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %wl.i.i102, align 4
  %hw.i.i103 = getelementptr inbounds %struct.b43_wl, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %hw.i.i103 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hw.i.i103, align 4
  tail call void @ieee80211_free_txskb(ptr noundef %59, ptr noundef nonnull %53) #4
  %60 = ptrtoint ptr %skb.i.i99 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %skb.i.i99, align 4
  br label %for.inc.i.i107

for.inc.i.i107:                                   ; preds = %if.then.i.i104, %for.body.i.i101.for.inc.i.i107_crit_edge
  %inc.i.i105 = add nuw nsw i32 %i.08.i.i98, 1
  %exitcond.not.i.i106 = icmp eq i32 %inc.i.i105, 32
  br i1 %exitcond.not.i.i106, label %b43_pio_cancel_tx_packets.exit.i108, label %for.inc.i.i107.for.body.i.i101_crit_edge

for.inc.i.i107.for.body.i.i101_crit_edge:         ; preds = %for.inc.i.i107
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i101

b43_pio_cancel_tx_packets.exit.i108:              ; preds = %for.inc.i.i107
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %51) #4
  br label %b43_destroy_pioqueue_tx.exit109

b43_destroy_pioqueue_tx.exit109:                  ; preds = %b43_pio_cancel_tx_packets.exit.i108, %do.body35.b43_destroy_pioqueue_tx.exit109_crit_edge
  %61 = ptrtoint ptr %tx_queue_AC_VI to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %tx_queue_AC_VI, align 4
  br label %do.body40

do.body40:                                        ; preds = %b43_destroy_pioqueue_tx.exit109, %if.end7.do.body40_crit_edge
  %62 = ptrtoint ptr %tx_queue_AC_BE to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %tx_queue_AC_BE, align 4
  %tobool.not.i110 = icmp eq ptr %63, null
  br i1 %tobool.not.i110, label %do.body40.b43_destroy_pioqueue_tx.exit122_crit_edge, label %do.body40.for.body.i.i114_crit_edge

do.body40.for.body.i.i114_crit_edge:              ; preds = %do.body40
  br label %for.body.i.i114

do.body40.b43_destroy_pioqueue_tx.exit122_crit_edge: ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #6
  br label %b43_destroy_pioqueue_tx.exit122

for.body.i.i114:                                  ; preds = %for.inc.i.i120.for.body.i.i114_crit_edge, %do.body40.for.body.i.i114_crit_edge
  %i.08.i.i111 = phi i32 [ %inc.i.i118, %for.inc.i.i120.for.body.i.i114_crit_edge ], [ 0, %do.body40.for.body.i.i114_crit_edge ]
  %skb.i.i112 = getelementptr %struct.b43_pio_txqueue, ptr %63, i32 0, i32 8, i32 %i.08.i.i111, i32 1
  %64 = ptrtoint ptr %skb.i.i112 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %skb.i.i112, align 4
  %tobool.not.i.i113 = icmp eq ptr %65, null
  br i1 %tobool.not.i.i113, label %for.body.i.i114.for.inc.i.i120_crit_edge, label %if.then.i.i117

for.body.i.i114.for.inc.i.i120_crit_edge:         ; preds = %for.body.i.i114
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i.i120

if.then.i.i117:                                   ; preds = %for.body.i.i114
  call void @__sanitizer_cov_trace_pc() #6
  %66 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %63, align 4
  %wl.i.i115 = getelementptr inbounds %struct.b43_wldev, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %wl.i.i115 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %wl.i.i115, align 4
  %hw.i.i116 = getelementptr inbounds %struct.b43_wl, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %hw.i.i116 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %hw.i.i116, align 4
  tail call void @ieee80211_free_txskb(ptr noundef %71, ptr noundef nonnull %65) #4
  %72 = ptrtoint ptr %skb.i.i112 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %skb.i.i112, align 4
  br label %for.inc.i.i120

for.inc.i.i120:                                   ; preds = %if.then.i.i117, %for.body.i.i114.for.inc.i.i120_crit_edge
  %inc.i.i118 = add nuw nsw i32 %i.08.i.i111, 1
  %exitcond.not.i.i119 = icmp eq i32 %inc.i.i118, 32
  br i1 %exitcond.not.i.i119, label %b43_pio_cancel_tx_packets.exit.i121, label %for.inc.i.i120.for.body.i.i114_crit_edge

for.inc.i.i120.for.body.i.i114_crit_edge:         ; preds = %for.inc.i.i120
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i114

b43_pio_cancel_tx_packets.exit.i121:              ; preds = %for.inc.i.i120
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %63) #4
  br label %b43_destroy_pioqueue_tx.exit122

b43_destroy_pioqueue_tx.exit122:                  ; preds = %b43_pio_cancel_tx_packets.exit.i121, %do.body40.b43_destroy_pioqueue_tx.exit122_crit_edge
  %73 = ptrtoint ptr %tx_queue_AC_BE to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %tx_queue_AC_BE, align 4
  br label %do.body45

do.body45:                                        ; preds = %b43_destroy_pioqueue_tx.exit122, %if.end.do.body45_crit_edge
  %74 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %0, align 4
  %tobool.not.i123 = icmp eq ptr %75, null
  br i1 %tobool.not.i123, label %do.body45.b43_destroy_pioqueue_tx.exit135_crit_edge, label %do.body45.for.body.i.i127_crit_edge

do.body45.for.body.i.i127_crit_edge:              ; preds = %do.body45
  br label %for.body.i.i127

do.body45.b43_destroy_pioqueue_tx.exit135_crit_edge: ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #6
  br label %b43_destroy_pioqueue_tx.exit135

for.body.i.i127:                                  ; preds = %for.inc.i.i133.for.body.i.i127_crit_edge, %do.body45.for.body.i.i127_crit_edge
  %i.08.i.i124 = phi i32 [ %inc.i.i131, %for.inc.i.i133.for.body.i.i127_crit_edge ], [ 0, %do.body45.for.body.i.i127_crit_edge ]
  %skb.i.i125 = getelementptr %struct.b43_pio_txqueue, ptr %75, i32 0, i32 8, i32 %i.08.i.i124, i32 1
  %76 = ptrtoint ptr %skb.i.i125 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %skb.i.i125, align 4
  %tobool.not.i.i126 = icmp eq ptr %77, null
  br i1 %tobool.not.i.i126, label %for.body.i.i127.for.inc.i.i133_crit_edge, label %if.then.i.i130

for.body.i.i127.for.inc.i.i133_crit_edge:         ; preds = %for.body.i.i127
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i.i133

if.then.i.i130:                                   ; preds = %for.body.i.i127
  call void @__sanitizer_cov_trace_pc() #6
  %78 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %75, align 4
  %wl.i.i128 = getelementptr inbounds %struct.b43_wldev, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %wl.i.i128 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %wl.i.i128, align 4
  %hw.i.i129 = getelementptr inbounds %struct.b43_wl, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %hw.i.i129 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %hw.i.i129, align 4
  tail call void @ieee80211_free_txskb(ptr noundef %83, ptr noundef nonnull %77) #4
  %84 = ptrtoint ptr %skb.i.i125 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %skb.i.i125, align 4
  br label %for.inc.i.i133

for.inc.i.i133:                                   ; preds = %if.then.i.i130, %for.body.i.i127.for.inc.i.i133_crit_edge
  %inc.i.i131 = add nuw nsw i32 %i.08.i.i124, 1
  %exitcond.not.i.i132 = icmp eq i32 %inc.i.i131, 32
  br i1 %exitcond.not.i.i132, label %b43_pio_cancel_tx_packets.exit.i134, label %for.inc.i.i133.for.body.i.i127_crit_edge

for.inc.i.i133.for.body.i.i127_crit_edge:         ; preds = %for.inc.i.i133
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i127

b43_pio_cancel_tx_packets.exit.i134:              ; preds = %for.inc.i.i133
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %75) #4
  br label %b43_destroy_pioqueue_tx.exit135

b43_destroy_pioqueue_tx.exit135:                  ; preds = %b43_pio_cancel_tx_packets.exit.i134, %do.body45.b43_destroy_pioqueue_tx.exit135_crit_edge
  %85 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %0, align 4
  br label %cleanup

cleanup:                                          ; preds = %b43_destroy_pioqueue_tx.exit135, %if.end27, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %b43_destroy_pioqueue_tx.exit135 ], [ 0, %if.end27 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_shm_write16(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @b43_setup_pioqueue_tx(ptr noundef %dev, i32 noundef %index) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 668) #7
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %call7.i.i, align 8
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %core_rev = getelementptr inbounds %struct.b43_bus_dev, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %core_rev to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %core_rev, align 2
  %rev = getelementptr inbounds %struct.b43_pio_txqueue, ptr %call7.i.i, i32 0, i32 10
  %6 = ptrtoint ptr %rev to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %rev, align 8
  %7 = load i8, ptr %core_rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %7)
  %cmp.i = icmp ugt i8 %7, 10
  %arrayidx.i = getelementptr [6 x i16], ptr @index_to_pioqueue_base.bases_rev11, i32 0, i32 %index
  %arrayidx57.i = getelementptr [8 x i16], ptr @index_to_pioqueue_base.bases, i32 0, i32 %index
  %retval.0.in.i = select i1 %cmp.i, ptr %arrayidx.i, ptr %arrayidx57.i
  %8 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %retval.0.i = load i16, ptr %retval.0.in.i, align 2
  %..i = select i1 %cmp.i, i16 24, i16 0
  %add = add i16 %..i, %retval.0.i
  %mmio_base = getelementptr inbounds %struct.b43_pio_txqueue, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %mmio_base to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %add, ptr %mmio_base, align 4
  %conv7 = trunc i32 %index to i8
  %index8 = getelementptr inbounds %struct.b43_pio_txqueue, ptr %call7.i.i, i32 0, i32 6
  %10 = ptrtoint ptr %index8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv7, ptr %index8, align 1
  %free_packet_slots = getelementptr inbounds %struct.b43_pio_txqueue, ptr %call7.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %free_packet_slots to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 32, ptr %free_packet_slots, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %5)
  %cmp = icmp ugt i8 %5, 7
  br i1 %cmp, label %if.end.if.end18_crit_edge, label %if.else

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %add.i = add i16 %add, 4
  %read16.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %3, i32 0, i32 7
  %12 = ptrtoint ptr %read16.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read16.i.i, align 4
  %call.i.i = tail call zeroext i16 %13(ptr noundef %3, i16 noundef zeroext %add.i) #4
  %sub = add i16 %call.i.i, -80
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end.if.end18_crit_edge
  %sub.sink = phi i16 [ %sub, %if.else ], [ 1920, %if.end.if.end18_crit_edge ]
  %14 = getelementptr inbounds %struct.b43_pio_txqueue, ptr %call7.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %sub.sink, ptr %14, align 2
  %packets_list = getelementptr inbounds %struct.b43_pio_txqueue, ptr %call7.i.i, i32 0, i32 9
  %16 = ptrtoint ptr %packets_list to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %packets_list, ptr %packets_list, align 8
  %prev.i = getelementptr inbounds %struct.b43_pio_txqueue, ptr %call7.i.i, i32 0, i32 9, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %packets_list, ptr %prev.i, align 4
  br label %for.body

for.body:                                         ; preds = %list_add.exit.for.body_crit_edge, %if.end18
  %i.056 = phi i32 [ 0, %if.end18 ], [ %inc, %list_add.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.b43_pio_txqueue, ptr %call7.i.i, i32 0, i32 8, i32 %i.056
  %list = getelementptr %struct.b43_pio_txqueue, ptr %call7.i.i, i32 0, i32 8, i32 %i.056, i32 3
  %18 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %list, ptr %list, align 4
  %prev.i54 = getelementptr %struct.b43_pio_txqueue, ptr %call7.i.i, i32 0, i32 8, i32 %i.056, i32 3, i32 1
  %19 = ptrtoint ptr %prev.i54 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %list, ptr %prev.i54, align 4
  %conv21 = trunc i32 %i.056 to i8
  %index22 = getelementptr %struct.b43_pio_txqueue, ptr %call7.i.i, i32 0, i32 8, i32 %i.056, i32 2
  %20 = ptrtoint ptr %index22 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv21, ptr %index22, align 4
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i, ptr %arrayidx, align 4
  %22 = ptrtoint ptr %packets_list to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %packets_list, align 8
  %call.i.i55 = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %packets_list, ptr noundef %23) #4
  br i1 %call.i.i55, label %if.end.i.i, label %for.body.list_add.exit_crit_edge

for.body.list_add.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %list, ptr %prev1.i.i, align 4
  %25 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %23, ptr %list, align 4
  %26 = ptrtoint ptr %prev.i54 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %packets_list, ptr %prev.i54, align 4
  %27 = ptrtoint ptr %packets_list to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %list, ptr %packets_list, align 8
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %for.body.list_add.exit_crit_edge
  %inc = add nuw nsw i32 %i.056, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %list_add.exit.cleanup_crit_edge, label %list_add.exit.for.body_crit_edge

list_add.exit.for.body_crit_edge:                 ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

list_add.exit.cleanup_crit_edge:                  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43dbg(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @b43_pio_tx(ptr nocapture noundef readonly %dev, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cb.i, align 8
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %tx_queue_mcast = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11, i32 0, i32 4
  %4 = ptrtoint ptr %tx_queue_mcast to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_queue_mcast, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %3, align 2
  %8 = or i16 %7, 32
  store i16 %8, ptr %3, align 2
  br label %if.end

if.else:                                          ; preds = %entry
  %qos_enabled.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 7
  %9 = ptrtoint ptr %qos_enabled.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %qos_enabled.i, align 1, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.else
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %11 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %queue_mapping.i, align 8
  %conv3 = trunc i16 %12 to i8
  %13 = zext i8 %conv3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i8 %conv3, label %do.end.i [
    i8 0, label %if.then.i.sw.bb.i_crit_edge
    i8 1, label %sw.bb17.i
    i8 2, label %sw.bb18.i
    i8 3, label %sw.bb19.i
  ]

if.then.i.sw.bb.i_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 296, i32 noundef 9, ptr noundef null) #4
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %do.end.i, %if.then.i.sw.bb.i_crit_edge
  %tx_queue_AC_VO.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11, i32 0, i32 3
  br label %select_queue_by_priority.exit

sw.bb17.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %tx_queue_AC_VI.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11, i32 0, i32 2
  br label %select_queue_by_priority.exit

sw.bb18.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %tx_queue_AC_BE.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11, i32 0, i32 1
  br label %select_queue_by_priority.exit

sw.bb19.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %14 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11
  br label %select_queue_by_priority.exit

if.else.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %tx_queue_AC_BE20.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11, i32 0, i32 1
  br label %select_queue_by_priority.exit

select_queue_by_priority.exit:                    ; preds = %if.else.i, %sw.bb19.i, %sw.bb18.i, %sw.bb17.i, %sw.bb.i
  %q.0.in.i = phi ptr [ %tx_queue_AC_VO.i, %sw.bb.i ], [ %14, %sw.bb19.i ], [ %tx_queue_AC_BE.i, %sw.bb18.i ], [ %tx_queue_AC_VI.i, %sw.bb17.i ], [ %tx_queue_AC_BE20.i, %if.else.i ]
  %15 = ptrtoint ptr %q.0.in.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %q.0.i = load ptr, ptr %q.0.in.i, align 4
  br label %if.end

if.end:                                           ; preds = %select_queue_by_priority.exit, %if.then
  %q.0 = phi ptr [ %5, %if.then ], [ %q.0.i, %select_queue_by_priority.exit ]
  %hdr_format.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 24, i32 6
  %16 = ptrtoint ptr %hdr_format.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hdr_format.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %18 = icmp ult i32 %17, 3
  br i1 %18, label %switch.lookup, label %if.end.b43_txhdr_size.exit_crit_edge

if.end.b43_txhdr_size.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %b43_txhdr_size.exit

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.b43_pio_tx, i32 0, i32 %17
  %19 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %19)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %b43_txhdr_size.exit

b43_txhdr_size.exit:                              ; preds = %switch.lookup, %if.end.b43_txhdr_size.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 3, %if.end.b43_txhdr_size.exit_crit_edge ]
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %20 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len, align 4
  %add6 = add i32 %retval.0.i, %21
  %div192 = and i32 %add6, -4
  %buffer_size = getelementptr inbounds %struct.b43_pio_txqueue, ptr %q.0, i32 0, i32 2
  %22 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %buffer_size, align 2
  %conv7 = zext i16 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div192, i32 %conv7)
  %cmp = icmp ugt i32 %div192, %conv7
  br i1 %cmp, label %if.then11, label %if.end12, !prof !50

if.then11:                                        ; preds = %b43_txhdr_size.exit
  call void @__sanitizer_cov_trace_pc() #6
  %wl = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %24 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wl, align 4
  tail call void (ptr, ptr, ...) @b43dbg(ptr noundef %25, ptr noundef nonnull @.str.7) #4
  br label %out

if.end12:                                         ; preds = %b43_txhdr_size.exit
  %free_packet_slots = getelementptr inbounds %struct.b43_pio_txqueue, ptr %q.0, i32 0, i32 4
  %26 = ptrtoint ptr %free_packet_slots to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %free_packet_slots, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %cmp14 = icmp eq i16 %27, 0
  br i1 %cmp14, label %if.then22, label %if.end24, !prof !50

if.then22:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %wl23 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %28 = ptrtoint ptr %wl23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %wl23, align 4
  tail call void (ptr, ptr, ...) @b43warn(ptr noundef %29, ptr noundef nonnull @.str.8) #4
  br label %out

if.end24:                                         ; preds = %if.end12
  %buffer_used = getelementptr inbounds %struct.b43_pio_txqueue, ptr %q.0, i32 0, i32 3
  %30 = ptrtoint ptr %buffer_used to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %buffer_used, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %31, i16 %23)
  %cmp28 = icmp ugt i16 %31, %23
  br i1 %cmp28, label %do.end, label %if.end24.if.end48_crit_edge, !prof !50

if.end24.if.end48_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end48

do.end:                                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 523, i32 noundef 9, ptr noundef null) #4
  br label %if.end48

if.end48:                                         ; preds = %do.end, %if.end24.if.end48_crit_edge
  %32 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %buffer_size, align 2
  %conv57 = zext i16 %33 to i32
  %34 = ptrtoint ptr %buffer_used to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %buffer_used, align 4
  %conv59 = zext i16 %35 to i32
  %sub60 = sub nsw i32 %conv57, %conv59
  call void @__sanitizer_cov_trace_cmp4(i32 %div192, i32 %sub60)
  %cmp61 = icmp ugt i32 %div192, %sub60
  br i1 %cmp61, label %if.then63, label %if.end67

if.then63:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #6
  %wl64 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %36 = ptrtoint ptr %wl64 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %wl64, align 4
  %hw = getelementptr inbounds %struct.b43_wl, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw, align 4
  %queue_mapping.i193 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %40 = ptrtoint ptr %queue_mapping.i193 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %queue_mapping.i193, align 8
  %conv66 = zext i16 %41 to i32
  tail call void @ieee80211_stop_queue(ptr noundef %39, i32 noundef %conv66) #4
  %stopped = getelementptr inbounds %struct.b43_pio_txqueue, ptr %q.0, i32 0, i32 5
  %42 = ptrtoint ptr %stopped to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %stopped, align 4
  br label %out

if.end67:                                         ; preds = %if.end48
  %queue_mapping.i194 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %43 = ptrtoint ptr %queue_mapping.i194 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %queue_mapping.i194, align 8
  %conv69 = trunc i16 %44 to i8
  %queue_prio = getelementptr inbounds %struct.b43_pio_txqueue, ptr %q.0, i32 0, i32 7
  %45 = ptrtoint ptr %queue_prio to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv69, ptr %queue_prio, align 2
  %46 = ptrtoint ptr %q.0 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %q.0, align 4
  %wl2.i = getelementptr inbounds %struct.b43_wldev, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %wl2.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %wl2.i, align 4
  %pio_scratchspace.i = getelementptr inbounds %struct.b43_wl, ptr %49, i32 0, i32 30
  %packets_list.i = getelementptr inbounds %struct.b43_pio_txqueue, ptr %q.0, i32 0, i32 9
  %50 = ptrtoint ptr %packets_list.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile ptr, ptr %packets_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %51, %packets_list.i
  br i1 %cmp.i.not.i, label %do.end.i195, label %if.end67.if.end.i_crit_edge, !prof !50

if.end67.if.end.i_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

do.end.i195:                                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 452, i32 noundef 9, ptr noundef null) #4
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i195, %if.end67.if.end.i_crit_edge
  %52 = ptrtoint ptr %packets_list.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %packets_list.i, align 4
  %add.ptr.i = getelementptr i8, ptr %53, i32 -12
  %index.i.i = getelementptr inbounds %struct.b43_pio_txqueue, ptr %q.0, i32 0, i32 6
  %54 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %index.i.i, align 1
  %conv1.i.i = zext i8 %55 to i16
  %add.i.i = shl i16 %conv1.i.i, 12
  %shl.i.i = add i16 %add.i.i, 4096
  %index3.i.i = getelementptr i8, ptr %53, i32 -4
  %56 = ptrtoint ptr %index3.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %index3.i.i, align 4
  %conv4.i.i = zext i8 %57 to i16
  %or.i.i = or i16 %shl.i.i, %conv4.i.i
  %hdr_format.i.i = getelementptr inbounds %struct.b43_wldev, ptr %47, i32 0, i32 24, i32 6
  %58 = ptrtoint ptr %hdr_format.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %hdr_format.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %59)
  %60 = icmp ult i32 %59, 3
  br i1 %60, label %switch.lookup198, label %if.end.i.b43_txhdr_size.exit.i_crit_edge

if.end.i.b43_txhdr_size.exit.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %b43_txhdr_size.exit.i

switch.lookup198:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep199 = getelementptr inbounds [3 x i32], ptr @switch.table.b43_pio_tx.17, i32 0, i32 %59
  %61 = ptrtoint ptr %switch.gep199 to i32
  call void @__asan_load4_noabort(i32 %61)
  %switch.load200 = load i32, ptr %switch.gep199, align 4
  br label %b43_txhdr_size.exit.i

b43_txhdr_size.exit.i:                            ; preds = %switch.lookup198, %if.end.i.b43_txhdr_size.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %switch.load200, %switch.lookup198 ], [ 0, %if.end.i.b43_txhdr_size.exit.i_crit_edge ]
  %call60.i = tail call i32 @b43_generate_txhdr(ptr noundef %47, ptr noundef %pio_scratchspace.i, ptr noundef %skb, ptr noundef %cb.i, i16 noundef zeroext %or.i.i) #4
  %62 = zext i32 %call60.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %call60.i, label %if.then90 [
    i32 0, label %if.end63.i
    i32 -126, label %if.then79
  ], !prof !51

if.end63.i:                                       ; preds = %b43_txhdr_size.exit.i
  %63 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cb.i, align 8
  %and.i = and i32 %64, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool64.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool64.not.i, label %if.end63.i.if.end66.i_crit_edge, label %if.then65.i

if.end63.i.if.end66.i_crit_edge:                  ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end66.i

if.then65.i:                                      ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @b43_shm_write16(ptr noundef %47, i16 noundef zeroext 1, i16 noundef zeroext 168, i16 noundef zeroext %or.i.i) #4
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.then65.i, %if.end63.i.if.end66.i_crit_edge
  %skb67.i = getelementptr i8, ptr %53, i32 -8
  %65 = ptrtoint ptr %skb67.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %skb, ptr %skb67.i, align 4
  %rev.i = getelementptr inbounds %struct.b43_pio_txqueue, ptr %q.0, i32 0, i32 10
  %66 = ptrtoint ptr %rev.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %67)
  %cmp68.i = icmp ugt i8 %67, 7
  %68 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %add.ptr.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %70 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %data.i.i, align 4
  %72 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %len, align 4
  %74 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %69, align 4
  %mmio_base.i.i.i = getelementptr inbounds %struct.b43_pio_txqueue, ptr %69, i32 0, i32 1
  %76 = ptrtoint ptr %mmio_base.i.i.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %mmio_base.i.i.i, align 4
  %78 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %75, align 4
  br i1 %cmp68.i, label %if.then70.i, label %if.else.i196

if.then70.i:                                      ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #6
  %read32.i.i.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %79, i32 0, i32 8
  %80 = ptrtoint ptr %read32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %read32.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %81(ptr noundef %79, i16 noundef zeroext %77) #4
  %or.i116.i = and i32 %call.i.i.i.i, -145
  %and.i.i = or i32 %or.i116.i, 128
  %call2.i.i = tail call fastcc i32 @tx_write_4byte_queue(ptr noundef %69, i32 noundef %and.i.i, ptr noundef %pio_scratchspace.i, i32 noundef %retval.0.i.i) #4
  %call3.i.i = tail call fastcc i32 @tx_write_4byte_queue(ptr noundef %69, i32 noundef %call2.i.i, ptr noundef %71, i32 noundef %73) #4
  %or4.i.i = or i32 %call3.i.i, 16
  %82 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %69, align 4
  %84 = ptrtoint ptr %mmio_base.i.i.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %mmio_base.i.i.i, align 4
  %86 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %83, align 4
  %write32.i.i.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %87, i32 0, i32 10
  %88 = ptrtoint ptr %write32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %write32.i.i.i.i, align 4
  tail call void %89(ptr noundef %87, i16 noundef zeroext %85, i32 noundef %or4.i.i) #4
  br label %if.end71.i

if.else.i196:                                     ; preds = %if.end66.i
  %read16.i.i.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %79, i32 0, i32 7
  %90 = ptrtoint ptr %read16.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %read16.i.i.i.i, align 4
  %call.i.i.i121.i = tail call zeroext i16 %91(ptr noundef %79, i16 noundef zeroext %77) #4
  %92 = and i16 %call.i.i.i121.i, -16
  %93 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %69, align 4
  %95 = or i16 %92, 11
  %96 = ptrtoint ptr %mmio_base.i.i.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %mmio_base.i.i.i, align 4
  %98 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %94, align 4
  %write16.i.i.i.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %99, i32 0, i32 9
  %100 = ptrtoint ptr %write16.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %write16.i.i.i.i.i, align 4
  tail call void %101(ptr noundef %99, i16 noundef zeroext %97, i16 noundef zeroext %95) #4
  %102 = ptrtoint ptr %mmio_base.i.i.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %mmio_base.i.i.i, align 4
  %add.i.i.i = add i16 %103, 2
  %104 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %94, align 4
  %block_write.i.i.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %105, i32 0, i32 12
  %106 = ptrtoint ptr %block_write.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %block_write.i.i.i.i, align 4
  tail call void %107(ptr noundef %105, ptr noundef %pio_scratchspace.i, i32 noundef %retval.0.i.i, i16 noundef zeroext %add.i.i.i, i8 noundef zeroext 2) #4
  %108 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %69, align 4
  %wl2.i20.i.i = getelementptr inbounds %struct.b43_wldev, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %wl2.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %wl2.i20.i.i, align 4
  %112 = ptrtoint ptr %mmio_base.i.i.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %mmio_base.i.i.i, align 4
  %114 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %109, align 4
  %write16.i.i.i22.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %115, i32 0, i32 9
  %116 = ptrtoint ptr %write16.i.i.i22.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %write16.i.i.i22.i.i, align 4
  tail call void %117(ptr noundef %115, i16 noundef zeroext %113, i16 noundef zeroext %95) #4
  %and.i23.i.i = and i32 %73, -2
  %118 = ptrtoint ptr %mmio_base.i.i.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %mmio_base.i.i.i, align 4
  %add.i24.i.i = add i16 %119, 2
  %120 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %109, align 4
  %block_write.i.i25.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %121, i32 0, i32 12
  %122 = ptrtoint ptr %block_write.i.i25.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %block_write.i.i25.i.i, align 4
  tail call void %123(ptr noundef %121, ptr noundef %71, i32 noundef %and.i23.i.i, i16 noundef zeroext %add.i24.i.i, i8 noundef zeroext 2) #4
  %and6.i26.i.i = and i32 %73, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i26.i.i)
  %tobool.not.i27.i.i = icmp eq i32 %and6.i26.i.i, 0
  br i1 %tobool.not.i27.i.i, label %if.else.i196.pio_tx_frame_2byte_queue.exit.i_crit_edge, label %if.then.i35.i.i

if.else.i196.pio_tx_frame_2byte_queue.exit.i_crit_edge: ; preds = %if.else.i196
  call void @__sanitizer_cov_trace_pc() #6
  br label %pio_tx_frame_2byte_queue.exit.i

if.then.i35.i.i:                                  ; preds = %if.else.i196
  call void @__sanitizer_cov_trace_pc() #6
  %pio_tailspace.i28.i.i = getelementptr inbounds %struct.b43_wl, ptr %111, i32 0, i32 32
  %124 = or i16 %92, 9
  %125 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %69, align 4
  %127 = ptrtoint ptr %mmio_base.i.i.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %mmio_base.i.i.i, align 4
  %129 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %126, align 4
  %write16.i.i32.i29.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %130, i32 0, i32 9
  %131 = ptrtoint ptr %write16.i.i32.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %write16.i.i32.i29.i.i, align 4
  tail call void %132(ptr noundef %130, i16 noundef zeroext %128, i16 noundef zeroext %124) #4
  %sub.i30.i.i = add i32 %73, -1
  %arrayidx.i31.i.i = getelementptr i8, ptr %71, i32 %sub.i30.i.i
  %133 = ptrtoint ptr %arrayidx.i31.i.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx.i31.i.i, align 1
  %135 = ptrtoint ptr %pio_tailspace.i28.i.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %134, ptr %pio_tailspace.i28.i.i, align 1
  %arrayidx11.i32.i.i = getelementptr %struct.b43_wl, ptr %111, i32 0, i32 32, i32 1
  %136 = ptrtoint ptr %arrayidx11.i32.i.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 0, ptr %arrayidx11.i32.i.i, align 1
  %137 = ptrtoint ptr %mmio_base.i.i.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %mmio_base.i.i.i, align 4
  %add14.i33.i.i = add i16 %138, 2
  %139 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %109, align 4
  %block_write.i33.i34.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %140, i32 0, i32 12
  %141 = ptrtoint ptr %block_write.i33.i34.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %block_write.i33.i34.i.i, align 4
  tail call void %142(ptr noundef %140, ptr noundef %pio_tailspace.i28.i.i, i32 noundef 2, i16 noundef zeroext %add14.i33.i.i, i8 noundef zeroext 2) #4
  br label %pio_tx_frame_2byte_queue.exit.i

pio_tx_frame_2byte_queue.exit.i:                  ; preds = %if.then.i35.i.i, %if.else.i196.pio_tx_frame_2byte_queue.exit.i_crit_edge
  %ctl.addr.0.i36.i.i = phi i16 [ %124, %if.then.i35.i.i ], [ %95, %if.else.i196.pio_tx_frame_2byte_queue.exit.i_crit_edge ]
  %143 = or i16 %ctl.addr.0.i36.i.i, 4
  %144 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %69, align 4
  %146 = ptrtoint ptr %mmio_base.i.i.i to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %mmio_base.i.i.i, align 4
  %148 = ptrtoint ptr %145 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %145, align 4
  %write16.i.i.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %149, i32 0, i32 9
  %150 = ptrtoint ptr %write16.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %write16.i.i.i.i, align 4
  tail call void %151(ptr noundef %149, i16 noundef zeroext %147, i16 noundef zeroext %143) #4
  br label %if.end71.i

if.end71.i:                                       ; preds = %pio_tx_frame_2byte_queue.exit.i, %if.then70.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %53) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end71.i.pio_tx_frame.exit.thread_crit_edge

if.end71.i.pio_tx_frame.exit.thread_crit_edge:    ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pio_tx_frame.exit.thread

if.end.i.i.i:                                     ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  %152 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %prev.i.i.i, align 4
  %154 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %53, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %155, i32 0, i32 1
  %156 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %153, ptr %prev1.i.i.i.i, align 4
  %157 = ptrtoint ptr %153 to i32
  call void @__asan_store4_noabort(i32 %157)
  store volatile ptr %155, ptr %153, align 4
  br label %pio_tx_frame.exit.thread

pio_tx_frame.exit.thread:                         ; preds = %if.end.i.i.i, %if.end71.i.pio_tx_frame.exit.thread_crit_edge
  %158 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr inttoptr (i32 256 to ptr), ptr %53, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  %159 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %160 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %len, align 4
  %add.i = add i32 %161, %retval.0.i.i
  %162 = ptrtoint ptr %buffer_used to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %buffer_used, align 4
  %164 = trunc i32 %add.i to i16
  %165 = add i16 %164, 3
  %166 = and i16 %165, -4
  %conv76.i = add i16 %166, %163
  store i16 %conv76.i, ptr %buffer_used, align 4
  %167 = ptrtoint ptr %free_packet_slots to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %free_packet_slots, align 2
  %sub78.i = add i16 %168, -1
  store i16 %sub78.i, ptr %free_packet_slots, align 2
  %169 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %buffer_size, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %conv76.i, i16 %170)
  %cmp98 = icmp ugt i16 %conv76.i, %170
  br i1 %cmp98, label %do.end115, label %pio_tx_frame.exit.thread.if.end121_crit_edge, !prof !50

pio_tx_frame.exit.thread.if.end121_crit_edge:     ; preds = %pio_tx_frame.exit.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end121

if.then79:                                        ; preds = %b43_txhdr_size.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %wl80 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %171 = ptrtoint ptr %wl80 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %wl80, align 4
  %hw81 = getelementptr inbounds %struct.b43_wl, ptr %172, i32 0, i32 1
  %173 = ptrtoint ptr %hw81 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %hw81, align 4
  tail call void @ieee80211_free_txskb(ptr noundef %174, ptr noundef %skb) #4
  br label %out

if.then90:                                        ; preds = %b43_txhdr_size.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %wl91 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %175 = ptrtoint ptr %wl91 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %wl91, align 4
  tail call void (ptr, ptr, ...) @b43err(ptr noundef %176, ptr noundef nonnull @.str.10) #4
  br label %out

do.end115:                                        ; preds = %pio_tx_frame.exit.thread
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 551, i32 noundef 9, ptr noundef null) #4
  br label %if.end121

if.end121:                                        ; preds = %do.end115, %pio_tx_frame.exit.thread.if.end121_crit_edge
  %177 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %buffer_size, align 2
  %conv130 = zext i16 %178 to i32
  %179 = ptrtoint ptr %buffer_used to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %buffer_used, align 4
  %conv132 = zext i16 %180 to i32
  %sub133 = sub nsw i32 %conv130, %conv132
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub133)
  %cmp140 = icmp slt i32 %sub133, 12
  br i1 %cmp140, label %if.end121.if.then146_crit_edge, label %lor.lhs.false

if.end121.if.then146_crit_edge:                   ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then146

lor.lhs.false:                                    ; preds = %if.end121
  %181 = ptrtoint ptr %free_packet_slots to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %free_packet_slots, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %182)
  %cmp144 = icmp eq i16 %182, 0
  br i1 %cmp144, label %lor.lhs.false.if.then146_crit_edge, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

lor.lhs.false.if.then146_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then146

if.then146:                                       ; preds = %lor.lhs.false.if.then146_crit_edge, %if.end121.if.then146_crit_edge
  %wl147 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %183 = ptrtoint ptr %wl147 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %wl147, align 4
  %hw148 = getelementptr inbounds %struct.b43_wl, ptr %184, i32 0, i32 1
  %185 = ptrtoint ptr %hw148 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %hw148, align 4
  %187 = ptrtoint ptr %queue_mapping.i194 to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %queue_mapping.i194, align 8
  %conv150 = zext i16 %188 to i32
  tail call void @ieee80211_stop_queue(ptr noundef %186, i32 noundef %conv150) #4
  %stopped151 = getelementptr inbounds %struct.b43_pio_txqueue, ptr %q.0, i32 0, i32 5
  %189 = ptrtoint ptr %stopped151 to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 1, ptr %stopped151, align 4
  br label %out

out:                                              ; preds = %if.then146, %lor.lhs.false.out_crit_edge, %if.then90, %if.then79, %if.then63, %if.then22, %if.then11
  %err.0 = phi i32 [ -105, %if.then11 ], [ -105, %if.then22 ], [ -16, %if.then63 ], [ 0, %if.then79 ], [ %call60.i, %if.then90 ], [ 0, %if.then146 ], [ 0, %lor.lhs.false.out_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_queue(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_txskb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_pio_handle_txstatus(ptr noundef %dev, ptr noundef %status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %status, align 2
  %conv.i = zext i16 %1 to i32
  %and.i = and i32 %conv.i, 61440
  %2 = add nsw i32 %and.i, -4096
  %3 = lshr exact i32 %2, 12
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %3, label %entry.do.end.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb2.i
    i32 3, label %sw.bb3.i
    i32 4, label %sw.bb4.i
  ]

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %5 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %tx_queue_AC_BE.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11, i32 0, i32 1
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %tx_queue_AC_VI.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11, i32 0, i32 2
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %tx_queue_AC_VO.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11, i32 0, i32 3
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %tx_queue_mcast.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11, i32 0, i32 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %sw.bb.i
  %q.0.in.i = phi ptr [ %tx_queue_mcast.i, %sw.bb4.i ], [ %tx_queue_AC_VO.i, %sw.bb3.i ], [ %tx_queue_AC_VI.i, %sw.bb2.i ], [ %tx_queue_AC_BE.i, %sw.bb1.i ], [ %5, %sw.bb.i ]
  %6 = ptrtoint ptr %q.0.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %q.0.i = load ptr, ptr %q.0.in.i, align 4
  %tobool.not.i = icmp eq ptr %q.0.i, null
  br i1 %tobool.not.i, label %sw.epilog.i.do.end.i_crit_edge, label %if.end27.i, !prof !50

sw.epilog.i.do.end.i_crit_edge:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

do.end.i:                                         ; preds = %sw.epilog.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 69, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end27.i:                                       ; preds = %sw.epilog.i
  %and29.i = and i32 %conv.i, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %and29.i)
  %cmp.i = icmp ugt i32 %and29.i, 31
  br i1 %cmp.i, label %do.end47.i, label %if.end, !prof !50

do.end47.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 72, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %if.end27.i
  %arrayidx.i = getelementptr %struct.b43_pio_txqueue, ptr %q.0.i, i32 0, i32 8, i32 %and29.i
  %tobool4.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool4.not, label %do.end, label %if.end.if.end25_crit_edge, !prof !50

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 574, i32 noundef 9, ptr noundef null) #4
  br label %if.end25

if.end25:                                         ; preds = %do.end, %if.end.if.end25_crit_edge
  %skb = getelementptr %struct.b43_pio_txqueue, ptr %q.0.i, i32 0, i32 8, i32 %and29.i, i32 1
  %7 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %skb, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 3
  %call33 = tail call zeroext i1 @b43_fill_txstatus_report(ptr noundef %dev, ptr noundef %cb.i, ptr noundef %status) #4
  %9 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %skb, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  %hdr_format.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 24, i32 6
  %13 = ptrtoint ptr %hdr_format.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hdr_format.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %14)
  %15 = icmp ult i32 %14, 3
  br i1 %15, label %switch.lookup, label %if.end25.b43_txhdr_size.exit_crit_edge

if.end25.b43_txhdr_size.exit_crit_edge:           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %b43_txhdr_size.exit

switch.lookup:                                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.b43_pio_handle_txstatus, i32 0, i32 %14
  %16 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %b43_txhdr_size.exit

b43_txhdr_size.exit:                              ; preds = %switch.lookup, %if.end25.b43_txhdr_size.exit_crit_edge
  %retval.0.i74 = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.end25.b43_txhdr_size.exit_crit_edge ]
  %add = add i32 %retval.0.i74, %12
  %buffer_used = getelementptr inbounds %struct.b43_pio_txqueue, ptr %q.0.i, i32 0, i32 3
  %17 = ptrtoint ptr %buffer_used to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %buffer_used, align 4
  %19 = trunc i32 %add to i16
  %20 = add i16 %19, 3
  %21 = and i16 %20, -4
  %conv39 = sub i16 %18, %21
  store i16 %conv39, ptr %buffer_used, align 4
  %free_packet_slots = getelementptr inbounds %struct.b43_pio_txqueue, ptr %q.0.i, i32 0, i32 4
  %22 = ptrtoint ptr %free_packet_slots to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %free_packet_slots, align 2
  %add41 = add i16 %23, 1
  store i16 %add41, ptr %free_packet_slots, align 2
  %wl = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %24 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wl, align 4
  %hw = getelementptr inbounds %struct.b43_wl, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw, align 4
  %28 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %skb, align 4
  tail call void @ieee80211_tx_status(ptr noundef %27, ptr noundef %29) #4
  %30 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %skb, align 4
  %list = getelementptr %struct.b43_pio_txqueue, ptr %q.0.i, i32 0, i32 8, i32 %and29.i, i32 3
  %packets_list = getelementptr inbounds %struct.b43_pio_txqueue, ptr %q.0.i, i32 0, i32 9
  %31 = ptrtoint ptr %packets_list to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %packets_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %packets_list, ptr noundef %32) #4
  br i1 %call.i.i, label %if.end.i.i, label %b43_txhdr_size.exit.list_add.exit_crit_edge

b43_txhdr_size.exit.list_add.exit_crit_edge:      ; preds = %b43_txhdr_size.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add.exit

if.end.i.i:                                       ; preds = %b43_txhdr_size.exit
  call void @__sanitizer_cov_trace_pc() #6
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %list, ptr %prev1.i.i, align 4
  %34 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %32, ptr %list, align 4
  %prev3.i.i = getelementptr %struct.b43_pio_txqueue, ptr %q.0.i, i32 0, i32 8, i32 %and29.i, i32 3, i32 1
  %35 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %packets_list, ptr %prev3.i.i, align 4
  %36 = ptrtoint ptr %packets_list to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %list, ptr %packets_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %b43_txhdr_size.exit.list_add.exit_crit_edge
  %stopped = getelementptr inbounds %struct.b43_pio_txqueue, ptr %q.0.i, i32 0, i32 5
  %37 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %stopped, align 4, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool45.not = icmp eq i8 %38, 0
  br i1 %tobool45.not, label %list_add.exit.cleanup_crit_edge, label %if.then46

list_add.exit.cleanup_crit_edge:                  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then46:                                        ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #6
  %39 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %wl, align 4
  %hw48 = getelementptr inbounds %struct.b43_wl, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %hw48 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hw48, align 4
  %queue_prio = getelementptr inbounds %struct.b43_pio_txqueue, ptr %q.0.i, i32 0, i32 7
  %43 = ptrtoint ptr %queue_prio to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %queue_prio, align 2
  %conv49 = zext i8 %44 to i32
  tail call void @ieee80211_wake_queue(ptr noundef %42, i32 noundef %conv49) #4
  %45 = ptrtoint ptr %stopped to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %stopped, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %list_add.exit.cleanup_crit_edge, %do.end47.i, %do.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @b43_fill_txstatus_report(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_tx_status(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_queue(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_pio_rx(ptr noundef readonly %q) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rev.i = getelementptr inbounds %struct.b43_pio_rxqueue, ptr %q, i32 0, i32 2
  %mmio_base.i.i = getelementptr inbounds %struct.b43_pio_rxqueue, ptr %q, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %if.end.while.cond_crit_edge, %entry
  %count.0 = phi i32 [ 0, %entry ], [ %inc, %if.end.while.cond_crit_edge ]
  %0 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q, align 4
  %wl2.i = getelementptr inbounds %struct.b43_wldev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wl2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wl2.i, align 4
  %pio_scratchspace.i = getelementptr inbounds %struct.b43_wl, ptr %3, i32 0, i32 30
  %hdr_format.i = getelementptr inbounds %struct.b43_wldev, ptr %1, i32 0, i32 24, i32 6
  %4 = ptrtoint ptr %hdr_format.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hdr_format.i, align 4
  %.off.i = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  %spec.select.i = select i1 %switch.i, i32 20, i32 24
  %6 = call ptr @memset(ptr %pio_scratchspace.i, i32 0, i32 %spec.select.i)
  %7 = ptrtoint ptr %rev.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %rev.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %8)
  %cmp.i = icmp ugt i8 %8, 7
  %9 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %q, align 4
  %11 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %mmio_base.i.i, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %10, align 4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.cond
  %read32.i.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %16(ptr noundef %14, i16 noundef zeroext %12) #4
  %and.i = and i32 %call.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i.while.end_crit_edge, label %if.end.i

if.then.i.while.end_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end.i:                                         ; preds = %if.then.i
  %17 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %q, align 4
  %19 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %mmio_base.i.i, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %18, align 4
  %write32.i.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %22, i32 0, i32 10
  %23 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %24(ptr noundef %22, i16 noundef zeroext %20, i32 noundef 1) #4
  %25 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %q, align 4
  %27 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %mmio_base.i.i, align 4
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %26, align 4
  %read32.i.i319.i = getelementptr inbounds %struct.b43_bus_dev, ptr %30, i32 0, i32 8
  %31 = ptrtoint ptr %read32.i.i319.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %read32.i.i319.i, align 4
  %call.i.i320.i = tail call i32 %32(ptr noundef %30, i16 noundef zeroext %28) #4
  %and8.i = and i32 %call.i.i320.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.end.i.data_ready.i_crit_edge

if.end.i.data_ready.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %data_ready.i

if.end11.i:                                       ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 2147480) #4
  %34 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %q, align 4
  %36 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %mmio_base.i.i, align 4
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %35, align 4
  %read32.i.i319.1.i = getelementptr inbounds %struct.b43_bus_dev, ptr %39, i32 0, i32 8
  %40 = ptrtoint ptr %read32.i.i319.1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read32.i.i319.1.i, align 4
  %call.i.i320.1.i = tail call i32 %41(ptr noundef %39, i16 noundef zeroext %37) #4
  %and8.1.i = and i32 %call.i.i320.1.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.1.i)
  %tobool9.not.1.i = icmp eq i32 %and8.1.i, 0
  br i1 %tobool9.not.1.i, label %if.end11.1.i, label %if.end11.i.data_ready.i_crit_edge

if.end11.i.data_ready.i_crit_edge:                ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %data_ready.i

if.end11.1.i:                                     ; preds = %if.end11.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 2147480) #4
  %43 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %q, align 4
  %45 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %mmio_base.i.i, align 4
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %44, align 4
  %read32.i.i319.2.i = getelementptr inbounds %struct.b43_bus_dev, ptr %48, i32 0, i32 8
  %49 = ptrtoint ptr %read32.i.i319.2.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %read32.i.i319.2.i, align 4
  %call.i.i320.2.i = tail call i32 %50(ptr noundef %48, i16 noundef zeroext %46) #4
  %and8.2.i = and i32 %call.i.i320.2.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.2.i)
  %tobool9.not.2.i = icmp eq i32 %and8.2.i, 0
  br i1 %tobool9.not.2.i, label %if.end11.2.i, label %if.end11.1.i.data_ready.i_crit_edge

if.end11.1.i.data_ready.i_crit_edge:              ; preds = %if.end11.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %data_ready.i

if.end11.2.i:                                     ; preds = %if.end11.1.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 2147480) #4
  %52 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %q, align 4
  %54 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %mmio_base.i.i, align 4
  %56 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %53, align 4
  %read32.i.i319.3.i = getelementptr inbounds %struct.b43_bus_dev, ptr %57, i32 0, i32 8
  %58 = ptrtoint ptr %read32.i.i319.3.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %read32.i.i319.3.i, align 4
  %call.i.i320.3.i = tail call i32 %59(ptr noundef %57, i16 noundef zeroext %55) #4
  %and8.3.i = and i32 %call.i.i320.3.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.3.i)
  %tobool9.not.3.i = icmp eq i32 %and8.3.i, 0
  br i1 %tobool9.not.3.i, label %if.end11.3.i, label %if.end11.2.i.data_ready.i_crit_edge

if.end11.2.i.data_ready.i_crit_edge:              ; preds = %if.end11.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %data_ready.i

if.end11.3.i:                                     ; preds = %if.end11.2.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 2147480) #4
  %61 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %q, align 4
  %63 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %mmio_base.i.i, align 4
  %65 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %62, align 4
  %read32.i.i319.4.i = getelementptr inbounds %struct.b43_bus_dev, ptr %66, i32 0, i32 8
  %67 = ptrtoint ptr %read32.i.i319.4.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %read32.i.i319.4.i, align 4
  %call.i.i320.4.i = tail call i32 %68(ptr noundef %66, i16 noundef zeroext %64) #4
  %and8.4.i = and i32 %call.i.i320.4.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.4.i)
  %tobool9.not.4.i = icmp eq i32 %and8.4.i, 0
  br i1 %tobool9.not.4.i, label %if.end11.4.i, label %if.end11.3.i.data_ready.i_crit_edge

if.end11.3.i.data_ready.i_crit_edge:              ; preds = %if.end11.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %data_ready.i

if.end11.4.i:                                     ; preds = %if.end11.3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %69(i32 noundef 2147480) #4
  %70 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %q, align 4
  %72 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %mmio_base.i.i, align 4
  %74 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %71, align 4
  %read32.i.i319.5.i = getelementptr inbounds %struct.b43_bus_dev, ptr %75, i32 0, i32 8
  %76 = ptrtoint ptr %read32.i.i319.5.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %read32.i.i319.5.i, align 4
  %call.i.i320.5.i = tail call i32 %77(ptr noundef %75, i16 noundef zeroext %73) #4
  %and8.5.i = and i32 %call.i.i320.5.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.5.i)
  %tobool9.not.5.i = icmp eq i32 %and8.5.i, 0
  br i1 %tobool9.not.5.i, label %if.end11.5.i, label %if.end11.4.i.data_ready.i_crit_edge

if.end11.4.i.data_ready.i_crit_edge:              ; preds = %if.end11.4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %data_ready.i

if.end11.5.i:                                     ; preds = %if.end11.4.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %78 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %78(i32 noundef 2147480) #4
  %79 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %q, align 4
  %81 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %mmio_base.i.i, align 4
  %83 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %80, align 4
  %read32.i.i319.6.i = getelementptr inbounds %struct.b43_bus_dev, ptr %84, i32 0, i32 8
  %85 = ptrtoint ptr %read32.i.i319.6.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %read32.i.i319.6.i, align 4
  %call.i.i320.6.i = tail call i32 %86(ptr noundef %84, i16 noundef zeroext %82) #4
  %and8.6.i = and i32 %call.i.i320.6.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.6.i)
  %tobool9.not.6.i = icmp eq i32 %and8.6.i, 0
  br i1 %tobool9.not.6.i, label %if.end11.6.i, label %if.end11.5.i.data_ready.i_crit_edge

if.end11.5.i.data_ready.i_crit_edge:              ; preds = %if.end11.5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %data_ready.i

if.end11.6.i:                                     ; preds = %if.end11.5.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %87 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %87(i32 noundef 2147480) #4
  %88 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %q, align 4
  %90 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %mmio_base.i.i, align 4
  %92 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %89, align 4
  %read32.i.i319.7.i = getelementptr inbounds %struct.b43_bus_dev, ptr %93, i32 0, i32 8
  %94 = ptrtoint ptr %read32.i.i319.7.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %read32.i.i319.7.i, align 4
  %call.i.i320.7.i = tail call i32 %95(ptr noundef %93, i16 noundef zeroext %91) #4
  %and8.7.i = and i32 %call.i.i320.7.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.7.i)
  %tobool9.not.7.i = icmp eq i32 %and8.7.i, 0
  br i1 %tobool9.not.7.i, label %if.end11.7.i, label %if.end11.6.i.data_ready.i_crit_edge

if.end11.6.i.data_ready.i_crit_edge:              ; preds = %if.end11.6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %data_ready.i

if.end11.7.i:                                     ; preds = %if.end11.6.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %96 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %96(i32 noundef 2147480) #4
  %97 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %q, align 4
  %99 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %mmio_base.i.i, align 4
  %101 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %98, align 4
  %read32.i.i319.8.i = getelementptr inbounds %struct.b43_bus_dev, ptr %102, i32 0, i32 8
  %103 = ptrtoint ptr %read32.i.i319.8.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %read32.i.i319.8.i, align 4
  %call.i.i320.8.i = tail call i32 %104(ptr noundef %102, i16 noundef zeroext %100) #4
  %and8.8.i = and i32 %call.i.i320.8.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.8.i)
  %tobool9.not.8.i = icmp eq i32 %and8.8.i, 0
  br i1 %tobool9.not.8.i, label %if.end11.8.i, label %if.end11.7.i.data_ready.i_crit_edge

if.end11.7.i.data_ready.i_crit_edge:              ; preds = %if.end11.7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %data_ready.i

if.end11.8.i:                                     ; preds = %if.end11.7.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %105 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %105(i32 noundef 2147480) #4
  %106 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %q, align 4
  %108 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %mmio_base.i.i, align 4
  %110 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %107, align 4
  %read32.i.i319.9.i = getelementptr inbounds %struct.b43_bus_dev, ptr %111, i32 0, i32 8
  %112 = ptrtoint ptr %read32.i.i319.9.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %read32.i.i319.9.i, align 4
  %call.i.i320.9.i = tail call i32 %113(ptr noundef %111, i16 noundef zeroext %109) #4
  %and8.9.i = and i32 %call.i.i320.9.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.9.i)
  %tobool9.not.9.i = icmp eq i32 %and8.9.i, 0
  br i1 %tobool9.not.9.i, label %if.end11.8.i.if.end35.i_crit_edge, label %if.end11.8.i.data_ready.i_crit_edge

if.end11.8.i.data_ready.i_crit_edge:              ; preds = %if.end11.8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %data_ready.i

if.end11.8.i.if.end35.i_crit_edge:                ; preds = %if.end11.8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35.i

if.else.i:                                        ; preds = %while.cond
  %read16.i.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %14, i32 0, i32 7
  %114 = ptrtoint ptr %read16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %read16.i.i.i, align 4
  %call.i.i322.i = tail call zeroext i16 %115(ptr noundef %14, i16 noundef zeroext %12) #4
  %116 = and i16 %call.i.i322.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %116)
  %tobool16.not.i = icmp eq i16 %116, 0
  br i1 %tobool16.not.i, label %if.else.i.while.end_crit_edge, label %if.end18.i

if.else.i.while.end_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end18.i:                                       ; preds = %if.else.i
  %117 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %q, align 4
  %119 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %mmio_base.i.i, align 4
  %121 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %118, align 4
  %write16.i.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %122, i32 0, i32 9
  %123 = ptrtoint ptr %write16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %write16.i.i.i, align 4
  tail call void %124(ptr noundef %122, i16 noundef zeroext %120, i16 noundef zeroext 1) #4
  %125 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %q, align 4
  %127 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %mmio_base.i.i, align 4
  %129 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %126, align 4
  %read16.i.i325.i = getelementptr inbounds %struct.b43_bus_dev, ptr %130, i32 0, i32 7
  %131 = ptrtoint ptr %read16.i.i325.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %read16.i.i325.i, align 4
  %call.i.i326.i = tail call zeroext i16 %132(ptr noundef %130, i16 noundef zeroext %128) #4
  %133 = and i16 %call.i.i326.i, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %133)
  %tobool26.not.i = icmp eq i16 %133, 0
  br i1 %tobool26.not.i, label %if.end28.i, label %if.end18.i.data_ready.i_crit_edge

if.end18.i.data_ready.i_crit_edge:                ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %data_ready.i

if.end28.i:                                       ; preds = %if.end18.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %134 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %134(i32 noundef 2147480) #4
  %135 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %q, align 4
  %137 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %mmio_base.i.i, align 4
  %139 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %136, align 4
  %read16.i.i325.1.i = getelementptr inbounds %struct.b43_bus_dev, ptr %140, i32 0, i32 7
  %141 = ptrtoint ptr %read16.i.i325.1.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %read16.i.i325.1.i, align 4
  %call.i.i326.1.i = tail call zeroext i16 %142(ptr noundef %140, i16 noundef zeroext %138) #4
  %143 = and i16 %call.i.i326.1.i, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %143)
  %tobool26.not.1.i = icmp eq i16 %143, 0
  br i1 %tobool26.not.1.i, label %if.end28.1.i, label %if.end28.i.data_ready.i_crit_edge

if.end28.i.data_ready.i_crit_edge:                ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %data_ready.i

if.end28.1.i:                                     ; preds = %if.end28.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %144 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %144(i32 noundef 2147480) #4
  %145 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %q, align 4
  %147 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %mmio_base.i.i, align 4
  %149 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %146, align 4
  %read16.i.i325.2.i = getelementptr inbounds %struct.b43_bus_dev, ptr %150, i32 0, i32 7
  %151 = ptrtoint ptr %read16.i.i325.2.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %read16.i.i325.2.i, align 4
  %call.i.i326.2.i = tail call zeroext i16 %152(ptr noundef %150, i16 noundef zeroext %148) #4
  %153 = and i16 %call.i.i326.2.i, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %153)
  %tobool26.not.2.i = icmp eq i16 %153, 0
  br i1 %tobool26.not.2.i, label %if.end28.2.i, label %if.end28.1.i.data_ready.i_crit_edge

if.end28.1.i.data_ready.i_crit_edge:              ; preds = %if.end28.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %data_ready.i

if.end28.2.i:                                     ; preds = %if.end28.1.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %154 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %154(i32 noundef 2147480) #4
  %155 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %q, align 4
  %157 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %mmio_base.i.i, align 4
  %159 = ptrtoint ptr %156 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %156, align 4
  %read16.i.i325.3.i = getelementptr inbounds %struct.b43_bus_dev, ptr %160, i32 0, i32 7
  %161 = ptrtoint ptr %read16.i.i325.3.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %read16.i.i325.3.i, align 4
  %call.i.i326.3.i = tail call zeroext i16 %162(ptr noundef %160, i16 noundef zeroext %158) #4
  %163 = and i16 %call.i.i326.3.i, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %163)
  %tobool26.not.3.i = icmp eq i16 %163, 0
  br i1 %tobool26.not.3.i, label %if.end28.3.i, label %if.end28.2.i.data_ready.i_crit_edge

if.end28.2.i.data_ready.i_crit_edge:              ; preds = %if.end28.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %data_ready.i

if.end28.3.i:                                     ; preds = %if.end28.2.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %164 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %164(i32 noundef 2147480) #4
  %165 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %q, align 4
  %167 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %mmio_base.i.i, align 4
  %169 = ptrtoint ptr %166 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %166, align 4
  %read16.i.i325.4.i = getelementptr inbounds %struct.b43_bus_dev, ptr %170, i32 0, i32 7
  %171 = ptrtoint ptr %read16.i.i325.4.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %read16.i.i325.4.i, align 4
  %call.i.i326.4.i = tail call zeroext i16 %172(ptr noundef %170, i16 noundef zeroext %168) #4
  %173 = and i16 %call.i.i326.4.i, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %173)
  %tobool26.not.4.i = icmp eq i16 %173, 0
  br i1 %tobool26.not.4.i, label %if.end28.4.i, label %if.end28.3.i.data_ready.i_crit_edge

if.end28.3.i.data_ready.i_crit_edge:              ; preds = %if.end28.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %data_ready.i

if.end28.4.i:                                     ; preds = %if.end28.3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %174 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %174(i32 noundef 2147480) #4
  %175 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %q, align 4
  %177 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %mmio_base.i.i, align 4
  %179 = ptrtoint ptr %176 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %176, align 4
  %read16.i.i325.5.i = getelementptr inbounds %struct.b43_bus_dev, ptr %180, i32 0, i32 7
  %181 = ptrtoint ptr %read16.i.i325.5.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %read16.i.i325.5.i, align 4
  %call.i.i326.5.i = tail call zeroext i16 %182(ptr noundef %180, i16 noundef zeroext %178) #4
  %183 = and i16 %call.i.i326.5.i, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %183)
  %tobool26.not.5.i = icmp eq i16 %183, 0
  br i1 %tobool26.not.5.i, label %if.end28.5.i, label %if.end28.4.i.data_ready.i_crit_edge

if.end28.4.i.data_ready.i_crit_edge:              ; preds = %if.end28.4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %data_ready.i

if.end28.5.i:                                     ; preds = %if.end28.4.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %184 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %184(i32 noundef 2147480) #4
  %185 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %q, align 4
  %187 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %mmio_base.i.i, align 4
  %189 = ptrtoint ptr %186 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %186, align 4
  %read16.i.i325.6.i = getelementptr inbounds %struct.b43_bus_dev, ptr %190, i32 0, i32 7
  %191 = ptrtoint ptr %read16.i.i325.6.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %read16.i.i325.6.i, align 4
  %call.i.i326.6.i = tail call zeroext i16 %192(ptr noundef %190, i16 noundef zeroext %188) #4
  %193 = and i16 %call.i.i326.6.i, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %193)
  %tobool26.not.6.i = icmp eq i16 %193, 0
  br i1 %tobool26.not.6.i, label %if.end28.6.i, label %if.end28.5.i.data_ready.i_crit_edge

if.end28.5.i.data_ready.i_crit_edge:              ; preds = %if.end28.5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %data_ready.i

if.end28.6.i:                                     ; preds = %if.end28.5.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %194 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %194(i32 noundef 2147480) #4
  %195 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %q, align 4
  %197 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %mmio_base.i.i, align 4
  %199 = ptrtoint ptr %196 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %196, align 4
  %read16.i.i325.7.i = getelementptr inbounds %struct.b43_bus_dev, ptr %200, i32 0, i32 7
  %201 = ptrtoint ptr %read16.i.i325.7.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %read16.i.i325.7.i, align 4
  %call.i.i326.7.i = tail call zeroext i16 %202(ptr noundef %200, i16 noundef zeroext %198) #4
  %203 = and i16 %call.i.i326.7.i, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %203)
  %tobool26.not.7.i = icmp eq i16 %203, 0
  br i1 %tobool26.not.7.i, label %if.end28.7.i, label %if.end28.6.i.data_ready.i_crit_edge

if.end28.6.i.data_ready.i_crit_edge:              ; preds = %if.end28.6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %data_ready.i

if.end28.7.i:                                     ; preds = %if.end28.6.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %204 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %204(i32 noundef 2147480) #4
  %205 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %q, align 4
  %207 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %mmio_base.i.i, align 4
  %209 = ptrtoint ptr %206 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %206, align 4
  %read16.i.i325.8.i = getelementptr inbounds %struct.b43_bus_dev, ptr %210, i32 0, i32 7
  %211 = ptrtoint ptr %read16.i.i325.8.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %read16.i.i325.8.i, align 4
  %call.i.i326.8.i = tail call zeroext i16 %212(ptr noundef %210, i16 noundef zeroext %208) #4
  %213 = and i16 %call.i.i326.8.i, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %213)
  %tobool26.not.8.i = icmp eq i16 %213, 0
  br i1 %tobool26.not.8.i, label %if.end28.8.i, label %if.end28.7.i.data_ready.i_crit_edge

if.end28.7.i.data_ready.i_crit_edge:              ; preds = %if.end28.7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %data_ready.i

if.end28.8.i:                                     ; preds = %if.end28.7.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %214 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %214(i32 noundef 2147480) #4
  %215 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %q, align 4
  %217 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load2_noabort(i32 %217)
  %218 = load i16, ptr %mmio_base.i.i, align 4
  %219 = ptrtoint ptr %216 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %216, align 4
  %read16.i.i325.9.i = getelementptr inbounds %struct.b43_bus_dev, ptr %220, i32 0, i32 7
  %221 = ptrtoint ptr %read16.i.i325.9.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %read16.i.i325.9.i, align 4
  %call.i.i326.9.i = tail call zeroext i16 %222(ptr noundef %220, i16 noundef zeroext %218) #4
  %223 = and i16 %call.i.i326.9.i, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %223)
  %tobool26.not.9.i = icmp eq i16 %223, 0
  br i1 %tobool26.not.9.i, label %if.end28.8.i.if.end35.i_crit_edge, label %if.end28.8.i.data_ready.i_crit_edge

if.end28.8.i.data_ready.i_crit_edge:              ; preds = %if.end28.8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %data_ready.i

if.end28.8.i.if.end35.i_crit_edge:                ; preds = %if.end28.8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.end28.8.i.if.end35.i_crit_edge, %if.end11.8.i.if.end35.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %224 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %224(i32 noundef 2147480) #4
  %225 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %q, align 4
  %wl37.i = getelementptr inbounds %struct.b43_wldev, ptr %226, i32 0, i32 1
  %227 = ptrtoint ptr %wl37.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %wl37.i, align 4
  tail call void (ptr, ptr, ...) @b43dbg(ptr noundef %228, ptr noundef nonnull @.str.11) #4
  br label %if.end

data_ready.i:                                     ; preds = %if.end28.8.i.data_ready.i_crit_edge, %if.end28.7.i.data_ready.i_crit_edge, %if.end28.6.i.data_ready.i_crit_edge, %if.end28.5.i.data_ready.i_crit_edge, %if.end28.4.i.data_ready.i_crit_edge, %if.end28.3.i.data_ready.i_crit_edge, %if.end28.2.i.data_ready.i_crit_edge, %if.end28.1.i.data_ready.i_crit_edge, %if.end28.i.data_ready.i_crit_edge, %if.end18.i.data_ready.i_crit_edge, %if.end11.8.i.data_ready.i_crit_edge, %if.end11.7.i.data_ready.i_crit_edge, %if.end11.6.i.data_ready.i_crit_edge, %if.end11.5.i.data_ready.i_crit_edge, %if.end11.4.i.data_ready.i_crit_edge, %if.end11.3.i.data_ready.i_crit_edge, %if.end11.2.i.data_ready.i_crit_edge, %if.end11.1.i.data_ready.i_crit_edge, %if.end11.i.data_ready.i_crit_edge, %if.end.i.data_ready.i_crit_edge
  %229 = ptrtoint ptr %rev.i to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %rev.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %230)
  %cmp40.i = icmp ugt i8 %230, 7
  %231 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load2_noabort(i32 %231)
  %232 = load i16, ptr %mmio_base.i.i, align 4
  br i1 %cmp40.i, label %if.then42.i, label %if.else45.i

if.then42.i:                                      ; preds = %data_ready.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.i = add i16 %232, 4
  %233 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %1, align 4
  %block_read.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %234, i32 0, i32 11
  %235 = ptrtoint ptr %block_read.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %block_read.i.i, align 4
  tail call void %236(ptr noundef %234, ptr noundef %pio_scratchspace.i, i32 noundef %spec.select.i, i16 noundef zeroext %add.i, i8 noundef zeroext 4) #4
  br label %if.end50.i

if.else45.i:                                      ; preds = %data_ready.i
  call void @__sanitizer_cov_trace_pc() #6
  %add48.i = add i16 %232, 2
  %237 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %1, align 4
  %block_read.i327.i = getelementptr inbounds %struct.b43_bus_dev, ptr %238, i32 0, i32 11
  %239 = ptrtoint ptr %block_read.i327.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %block_read.i327.i, align 4
  tail call void %240(ptr noundef %238, ptr noundef %pio_scratchspace.i, i32 noundef %spec.select.i, i16 noundef zeroext %add48.i, i8 noundef zeroext 2) #4
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.else45.i, %if.then42.i
  %241 = ptrtoint ptr %pio_scratchspace.i to i32
  call void @__asan_loadN_noabort(i32 %241, i32 2)
  %242 = load i16, ptr %pio_scratchspace.i, align 1
  %243 = tail call i16 @llvm.bswap.i16(i16 %242) #4
  %conv51.i = zext i16 %243 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1792, i16 %243)
  %cmp52.i = icmp ugt i16 %243, 1792
  br i1 %cmp52.i, label %if.end50.i.if.then203.i_crit_edge, label %if.end57.i, !prof !50

if.end50.i.if.then203.i_crit_edge:                ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then203.i

if.end57.i:                                       ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %242)
  %cmp59.i = icmp eq i16 %242, 0
  br i1 %cmp59.i, label %if.end57.i.if.then203.i_crit_edge, label %if.end68.i, !prof !50

if.end57.i.if.then203.i_crit_edge:                ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then203.i

if.end68.i:                                       ; preds = %if.end57.i
  %244 = ptrtoint ptr %hdr_format.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %hdr_format.i, align 4
  %246 = zext i32 %245 to i64
  call void @__sanitizer_cov_trace_switch(i64 %246, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %245, label %if.end68.i.if.end84.i_crit_edge [
    i32 0, label %sw.bb71.i
    i32 1, label %if.end68.i.sw.bb72.i_crit_edge
    i32 2, label %if.end68.i.sw.bb72.i_crit_edge50
  ]

if.end68.i.sw.bb72.i_crit_edge50:                 ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb72.i

if.end68.i.sw.bb72.i_crit_edge:                   ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb72.i

if.end68.i.if.end84.i_crit_edge:                  ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end84.i

sw.bb71.i:                                        ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #6
  %mac_status.i = getelementptr inbounds %struct.b43_wl, ptr %3, i32 0, i32 30, i32 16
  br label %sw.epilog74.i

sw.bb72.i:                                        ; preds = %if.end68.i.sw.bb72.i_crit_edge, %if.end68.i.sw.bb72.i_crit_edge50
  %247 = getelementptr inbounds %struct.b43_wl, ptr %3, i32 0, i32 30, i32 12
  br label %sw.epilog74.i

sw.epilog74.i:                                    ; preds = %sw.bb72.i, %sw.bb71.i
  %.sink353.i = phi ptr [ %247, %sw.bb72.i ], [ %mac_status.i, %sw.bb71.i ]
  %248 = ptrtoint ptr %.sink353.i to i32
  call void @__asan_loadN_noabort(i32 %248, i32 4)
  %249 = load i32, ptr %.sink353.i, align 1
  %250 = tail call i32 @llvm.bswap.i32(i32 %249) #4
  %and75.i = and i32 %250, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75.i)
  %tobool76.not.i = icmp eq i32 %and75.i, 0
  br i1 %tobool76.not.i, label %sw.epilog74.i.if.end84.i_crit_edge, label %if.then77.i

sw.epilog74.i.if.end84.i_crit_edge:               ; preds = %sw.epilog74.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end84.i

if.then77.i:                                      ; preds = %sw.epilog74.i
  %251 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %q, align 4
  %wl79.i = getelementptr inbounds %struct.b43_wldev, ptr %252, i32 0, i32 1
  %253 = ptrtoint ptr %wl79.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %wl79.i, align 4
  %filter_flags.i = getelementptr inbounds %struct.b43_wl, ptr %254, i32 0, i32 10
  %255 = ptrtoint ptr %filter_flags.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %filter_flags.i, align 4
  %and80.i = and i32 %256, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80.i)
  %tobool81.not.i = icmp eq i32 %and80.i, 0
  br i1 %tobool81.not.i, label %if.then77.i.if.then203.i_crit_edge, label %if.then77.i.if.end84.i_crit_edge

if.then77.i.if.end84.i_crit_edge:                 ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end84.i

if.then77.i.if.then203.i_crit_edge:               ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then203.i

if.end84.i:                                       ; preds = %if.then77.i.if.end84.i_crit_edge, %sw.epilog74.i.if.end84.i_crit_edge, %if.end68.i.if.end84.i_crit_edge
  %macstat.0346.i = phi i32 [ %250, %if.then77.i.if.end84.i_crit_edge ], [ %250, %sw.epilog74.i.if.end84.i_crit_edge ], [ 0, %if.end68.i.if.end84.i_crit_edge ]
  %and85.i = lshr i32 %macstat.0346.i, 1
  %257 = and i32 %and85.i, 2
  %add88.i = add nuw nsw i32 %257, %conv51.i
  %add89.i = add nuw nsw i32 %add88.i, 2
  %call.i.i328.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add89.i, i32 noundef 2592) #4
  %tobool91.not.i = icmp eq ptr %call.i.i328.i, null
  br i1 %tobool91.not.i, label %if.end84.i.if.then203.i_crit_edge, label %if.end101.i, !prof !50

if.end84.i.if.then203.i_crit_edge:                ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then203.i

if.end101.i:                                      ; preds = %if.end84.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i328.i, i32 0, i32 19
  %258 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %259, i32 2
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i328.i, i32 0, i32 16
  %260 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %261, i32 2
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call104.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i328.i, i32 noundef %add88.i) #4
  %262 = ptrtoint ptr %rev.i to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %rev.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %263)
  %cmp107.i = icmp ugt i8 %263, 7
  %264 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %265, i32 %257
  br i1 %cmp107.i, label %if.then109.i, label %if.else170.i

if.then109.i:                                     ; preds = %if.end101.i
  %and111.i = and i32 %conv51.i, 65532
  %266 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load2_noabort(i32 %266)
  %267 = load i16, ptr %mmio_base.i.i, align 4
  %add114.i = add i16 %267, 4
  %268 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %1, align 4
  %block_read.i329.i = getelementptr inbounds %struct.b43_bus_dev, ptr %269, i32 0, i32 11
  %270 = ptrtoint ptr %block_read.i329.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %block_read.i329.i, align 4
  tail call void %271(ptr noundef %269, ptr noundef %add.ptr.i, i32 noundef %and111.i, i16 noundef zeroext %add114.i, i8 noundef zeroext 4) #4
  %and117.i = and i32 %conv51.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117.i)
  %tobool118.not.i = icmp eq i32 %and117.i, 0
  br i1 %tobool118.not.i, label %if.then109.i.if.end200.i_crit_edge, label %if.then119.i

if.then109.i.if.end200.i_crit_edge:               ; preds = %if.then109.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end200.i

if.then119.i:                                     ; preds = %if.then109.i
  %pio_tailspace.i = getelementptr inbounds %struct.b43_wl, ptr %3, i32 0, i32 32
  %272 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load2_noabort(i32 %272)
  %273 = load i16, ptr %mmio_base.i.i, align 4
  %add126.i = add i16 %273, 4
  %274 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %1, align 4
  %block_read.i330.i = getelementptr inbounds %struct.b43_bus_dev, ptr %275, i32 0, i32 11
  %276 = ptrtoint ptr %block_read.i330.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %block_read.i330.i, align 4
  tail call void %277(ptr noundef %275, ptr noundef %pio_tailspace.i, i32 noundef 4, i16 noundef zeroext %add126.i, i8 noundef zeroext 4) #4
  %278 = zext i32 %and117.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %278, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %and117.i, label %if.then119.i.if.end200.i_crit_edge [
    i32 3, label %sw.bb130.i
    i32 2, label %sw.bb148.i
    i32 1, label %if.then119.i.if.end200.sink.split.i_crit_edge
  ]

if.then119.i.if.end200.sink.split.i_crit_edge:    ; preds = %if.then119.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end200.sink.split.i

if.then119.i.if.end200.i_crit_edge:               ; preds = %if.then119.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end200.i

sw.bb130.i:                                       ; preds = %if.then119.i
  call void @__sanitizer_cov_trace_pc() #6
  %279 = ptrtoint ptr %pio_tailspace.i to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %pio_tailspace.i, align 1
  %281 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %data.i.i, align 4
  %sub134.i = add nsw i32 %add88.i, -3
  %arrayidx135.i = getelementptr i8, ptr %282, i32 %sub134.i
  %283 = ptrtoint ptr %arrayidx135.i to i32
  call void @__asan_store1_noabort(i32 %283)
  store i8 %280, ptr %arrayidx135.i, align 1
  %arrayidx136.i = getelementptr %struct.b43_wl, ptr %3, i32 0, i32 32, i32 1
  %284 = ptrtoint ptr %arrayidx136.i to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %arrayidx136.i, align 1
  %286 = load ptr, ptr %data.i.i, align 4
  %sub140.i = add nsw i32 %add88.i, -2
  %arrayidx141.i = getelementptr i8, ptr %286, i32 %sub140.i
  %287 = ptrtoint ptr %arrayidx141.i to i32
  call void @__asan_store1_noabort(i32 %287)
  store i8 %285, ptr %arrayidx141.i, align 1
  %arrayidx142.i = getelementptr %struct.b43_wl, ptr %3, i32 0, i32 32, i32 2
  br label %if.end200.sink.split.i

sw.bb148.i:                                       ; preds = %if.then119.i
  call void @__sanitizer_cov_trace_pc() #6
  %288 = ptrtoint ptr %pio_tailspace.i to i32
  call void @__asan_load1_noabort(i32 %288)
  %289 = load i8, ptr %pio_tailspace.i, align 1
  %290 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %data.i.i, align 4
  %sub153.i = add nsw i32 %add88.i, -2
  %arrayidx154.i = getelementptr i8, ptr %291, i32 %sub153.i
  %292 = ptrtoint ptr %arrayidx154.i to i32
  call void @__asan_store1_noabort(i32 %292)
  store i8 %289, ptr %arrayidx154.i, align 1
  %arrayidx155.i = getelementptr %struct.b43_wl, ptr %3, i32 0, i32 32, i32 1
  br label %if.end200.sink.split.i

if.else170.i:                                     ; preds = %if.end101.i
  %and174.i = and i32 %conv51.i, 65534
  %293 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load2_noabort(i32 %293)
  %294 = load i16, ptr %mmio_base.i.i, align 4
  %add177.i = add i16 %294, 2
  %295 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %1, align 4
  %block_read.i331.i = getelementptr inbounds %struct.b43_bus_dev, ptr %296, i32 0, i32 11
  %297 = ptrtoint ptr %block_read.i331.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %block_read.i331.i, align 4
  tail call void %298(ptr noundef %296, ptr noundef %add.ptr.i, i32 noundef %and174.i, i16 noundef zeroext %add177.i, i8 noundef zeroext 2) #4
  %and180.i = and i32 %conv51.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and180.i)
  %tobool181.not.i = icmp eq i32 %and180.i, 0
  br i1 %tobool181.not.i, label %if.else170.i.if.end200.i_crit_edge, label %if.then182.i

if.else170.i.if.end200.i_crit_edge:               ; preds = %if.else170.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end200.i

if.then182.i:                                     ; preds = %if.else170.i
  call void @__sanitizer_cov_trace_pc() #6
  %pio_tailspace184.i = getelementptr inbounds %struct.b43_wl, ptr %3, i32 0, i32 32
  %299 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load2_noabort(i32 %299)
  %300 = load i16, ptr %mmio_base.i.i, align 4
  %add191.i = add i16 %300, 2
  %301 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %1, align 4
  %block_read.i332.i = getelementptr inbounds %struct.b43_bus_dev, ptr %302, i32 0, i32 11
  %303 = ptrtoint ptr %block_read.i332.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %block_read.i332.i, align 4
  tail call void %304(ptr noundef %302, ptr noundef %pio_tailspace184.i, i32 noundef 2, i16 noundef zeroext %add191.i, i8 noundef zeroext 2) #4
  br label %if.end200.sink.split.i

if.end200.sink.split.i:                           ; preds = %if.then182.i, %sw.bb148.i, %sw.bb130.i, %if.then119.i.if.end200.sink.split.i_crit_edge
  %arrayidx142.sink.i = phi ptr [ %arrayidx142.i, %sw.bb130.i ], [ %arrayidx155.i, %sw.bb148.i ], [ %pio_tailspace184.i, %if.then182.i ], [ %pio_tailspace.i, %if.then119.i.if.end200.sink.split.i_crit_edge ]
  %305 = ptrtoint ptr %arrayidx142.sink.i to i32
  call void @__asan_load1_noabort(i32 %305)
  %306 = load i8, ptr %arrayidx142.sink.i, align 1
  %307 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %data.i.i, align 4
  %sub146.i = add nsw i32 %add88.i, -1
  %arrayidx147.i = getelementptr i8, ptr %308, i32 %sub146.i
  %309 = ptrtoint ptr %arrayidx147.i to i32
  call void @__asan_store1_noabort(i32 %309)
  store i8 %306, ptr %arrayidx147.i, align 1
  br label %if.end200.i

if.end200.i:                                      ; preds = %if.end200.sink.split.i, %if.else170.i.if.end200.i_crit_edge, %if.then119.i.if.end200.i_crit_edge, %if.then109.i.if.end200.i_crit_edge
  %310 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %q, align 4
  tail call void @b43_rx(ptr noundef %311, ptr noundef nonnull %call.i.i328.i, ptr noundef %pio_scratchspace.i) #4
  br label %if.end

if.then203.i:                                     ; preds = %if.end84.i.if.then203.i_crit_edge, %if.then77.i.if.then203.i_crit_edge, %if.end57.i.if.then203.i_crit_edge, %if.end50.i.if.then203.i_crit_edge
  %err_msg.0.i = phi ptr [ @.str.12, %if.end50.i.if.then203.i_crit_edge ], [ @.str.13, %if.end57.i.if.then203.i_crit_edge ], [ @.str.14, %if.then77.i.if.then203.i_crit_edge ], [ @.str.15, %if.end84.i.if.then203.i_crit_edge ]
  %312 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %q, align 4
  %wl205.i = getelementptr inbounds %struct.b43_wldev, ptr %313, i32 0, i32 1
  %314 = ptrtoint ptr %wl205.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %wl205.i, align 4
  tail call void (ptr, ptr, ...) @b43dbg(ptr noundef %315, ptr noundef nonnull @.str.16, ptr noundef nonnull %err_msg.0.i) #4
  %316 = ptrtoint ptr %rev.i to i32
  call void @__asan_load1_noabort(i32 %316)
  %317 = load i8, ptr %rev.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %317)
  %cmp209.i = icmp ugt i8 %317, 7
  %318 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %q, align 4
  %320 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load2_noabort(i32 %320)
  %321 = load i16, ptr %mmio_base.i.i, align 4
  %322 = ptrtoint ptr %319 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %319, align 4
  br i1 %cmp209.i, label %if.then211.i, label %if.else212.i

if.then211.i:                                     ; preds = %if.then203.i
  call void @__sanitizer_cov_trace_pc() #6
  %write32.i.i334.i = getelementptr inbounds %struct.b43_bus_dev, ptr %323, i32 0, i32 10
  %324 = ptrtoint ptr %write32.i.i334.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %write32.i.i334.i, align 4
  tail call void %325(ptr noundef %323, i16 noundef zeroext %321, i32 noundef 2) #4
  br label %if.end

if.else212.i:                                     ; preds = %if.then203.i
  call void @__sanitizer_cov_trace_pc() #6
  %write16.i.i336.i = getelementptr inbounds %struct.b43_bus_dev, ptr %323, i32 0, i32 9
  %326 = ptrtoint ptr %write16.i.i336.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %write16.i.i336.i, align 4
  tail call void %327(ptr noundef %323, i16 noundef zeroext %321, i16 noundef zeroext 2) #4
  br label %if.end

if.end:                                           ; preds = %if.else212.i, %if.then211.i, %if.end200.i, %if.end35.i
  tail call void @__might_resched(ptr noundef nonnull @.str.9, i32 noundef 771, i32 noundef 0) #4
  %call.i = tail call i32 @__cond_resched() #4
  %inc = add nuw nsw i32 %count.0, 1
  %exitcond = icmp eq i32 %inc, 10001
  br i1 %exitcond, label %land.rhs, label %if.end.while.cond_crit_edge

if.end.while.cond_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

land.rhs:                                         ; preds = %if.end
  %.b47 = load i1, ptr @b43_pio_rx.__already_done, align 1
  br i1 %.b47, label %land.rhs.while.end_crit_edge, label %if.then11, !prof !52

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.then11:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @b43_pio_rx.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 772, i32 noundef 9, ptr noundef null) #4
  br label %while.end

while.end:                                        ; preds = %if.then11, %land.rhs.while.end_crit_edge, %if.else.i.while.end_crit_edge, %if.then.i.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_pio_tx_suspend(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @b43_power_saving_ctl_bits(ptr noundef %dev, i32 noundef 4) #4
  %0 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %rev.i = getelementptr inbounds %struct.b43_pio_txqueue, ptr %2, i32 0, i32 10
  %3 = ptrtoint ptr %rev.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %4)
  %cmp.i = icmp ugt i8 %4, 7
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %mmio_base.i.i = getelementptr inbounds %struct.b43_pio_txqueue, ptr %2, i32 0, i32 1
  %7 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %mmio_base.i.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %read32.i.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %12(ptr noundef %10, i16 noundef zeroext %8) #4
  %or.i = or i32 %call.i.i.i, 256
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %2, align 4
  %15 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %mmio_base.i.i, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %14, align 4
  %write32.i.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %18, i32 0, i32 10
  %19 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %20(ptr noundef %18, i16 noundef zeroext %16, i32 noundef %or.i) #4
  br label %b43_pio_tx_suspend_queue.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %read16.i.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %10, i32 0, i32 7
  %21 = ptrtoint ptr %read16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read16.i.i.i, align 4
  %call.i.i12.i = tail call zeroext i16 %22(ptr noundef %10, i16 noundef zeroext %8) #4
  %23 = or i16 %call.i.i12.i, 128
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %2, align 4
  %26 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %mmio_base.i.i, align 4
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %25, align 4
  %write16.i.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %write16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write16.i.i.i, align 4
  tail call void %31(ptr noundef %29, i16 noundef zeroext %27, i16 noundef zeroext %23) #4
  br label %b43_pio_tx_suspend_queue.exit

b43_pio_tx_suspend_queue.exit:                    ; preds = %if.else.i, %if.then.i
  %tx_queue_AC_BE = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11, i32 0, i32 1
  %32 = ptrtoint ptr %tx_queue_AC_BE to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tx_queue_AC_BE, align 4
  %rev.i6 = getelementptr inbounds %struct.b43_pio_txqueue, ptr %33, i32 0, i32 10
  %34 = ptrtoint ptr %rev.i6 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %rev.i6, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %35)
  %cmp.i7 = icmp ugt i8 %35, 7
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %33, align 4
  %mmio_base.i.i8 = getelementptr inbounds %struct.b43_pio_txqueue, ptr %33, i32 0, i32 1
  %38 = ptrtoint ptr %mmio_base.i.i8 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %mmio_base.i.i8, align 4
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %37, align 4
  br i1 %cmp.i7, label %if.then.i13, label %if.else.i17

if.then.i13:                                      ; preds = %b43_pio_tx_suspend_queue.exit
  call void @__sanitizer_cov_trace_pc() #6
  %read32.i.i.i9 = getelementptr inbounds %struct.b43_bus_dev, ptr %41, i32 0, i32 8
  %42 = ptrtoint ptr %read32.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %read32.i.i.i9, align 4
  %call.i.i.i10 = tail call i32 %43(ptr noundef %41, i16 noundef zeroext %39) #4
  %or.i11 = or i32 %call.i.i.i10, 256
  %44 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %33, align 4
  %46 = ptrtoint ptr %mmio_base.i.i8 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %mmio_base.i.i8, align 4
  %48 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %45, align 4
  %write32.i.i.i12 = getelementptr inbounds %struct.b43_bus_dev, ptr %49, i32 0, i32 10
  %50 = ptrtoint ptr %write32.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write32.i.i.i12, align 4
  tail call void %51(ptr noundef %49, i16 noundef zeroext %47, i32 noundef %or.i11) #4
  br label %b43_pio_tx_suspend_queue.exit18

if.else.i17:                                      ; preds = %b43_pio_tx_suspend_queue.exit
  call void @__sanitizer_cov_trace_pc() #6
  %read16.i.i.i14 = getelementptr inbounds %struct.b43_bus_dev, ptr %41, i32 0, i32 7
  %52 = ptrtoint ptr %read16.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %read16.i.i.i14, align 4
  %call.i.i12.i15 = tail call zeroext i16 %53(ptr noundef %41, i16 noundef zeroext %39) #4
  %54 = or i16 %call.i.i12.i15, 128
  %55 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %33, align 4
  %57 = ptrtoint ptr %mmio_base.i.i8 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %mmio_base.i.i8, align 4
  %59 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %56, align 4
  %write16.i.i.i16 = getelementptr inbounds %struct.b43_bus_dev, ptr %60, i32 0, i32 9
  %61 = ptrtoint ptr %write16.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %write16.i.i.i16, align 4
  tail call void %62(ptr noundef %60, i16 noundef zeroext %58, i16 noundef zeroext %54) #4
  br label %b43_pio_tx_suspend_queue.exit18

b43_pio_tx_suspend_queue.exit18:                  ; preds = %if.else.i17, %if.then.i13
  %tx_queue_AC_VI = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11, i32 0, i32 2
  %63 = ptrtoint ptr %tx_queue_AC_VI to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tx_queue_AC_VI, align 4
  %rev.i19 = getelementptr inbounds %struct.b43_pio_txqueue, ptr %64, i32 0, i32 10
  %65 = ptrtoint ptr %rev.i19 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %rev.i19, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %66)
  %cmp.i20 = icmp ugt i8 %66, 7
  %67 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %64, align 4
  %mmio_base.i.i21 = getelementptr inbounds %struct.b43_pio_txqueue, ptr %64, i32 0, i32 1
  %69 = ptrtoint ptr %mmio_base.i.i21 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %mmio_base.i.i21, align 4
  %71 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %68, align 4
  br i1 %cmp.i20, label %if.then.i26, label %if.else.i30

if.then.i26:                                      ; preds = %b43_pio_tx_suspend_queue.exit18
  call void @__sanitizer_cov_trace_pc() #6
  %read32.i.i.i22 = getelementptr inbounds %struct.b43_bus_dev, ptr %72, i32 0, i32 8
  %73 = ptrtoint ptr %read32.i.i.i22 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %read32.i.i.i22, align 4
  %call.i.i.i23 = tail call i32 %74(ptr noundef %72, i16 noundef zeroext %70) #4
  %or.i24 = or i32 %call.i.i.i23, 256
  %75 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %64, align 4
  %77 = ptrtoint ptr %mmio_base.i.i21 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %mmio_base.i.i21, align 4
  %79 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %76, align 4
  %write32.i.i.i25 = getelementptr inbounds %struct.b43_bus_dev, ptr %80, i32 0, i32 10
  %81 = ptrtoint ptr %write32.i.i.i25 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %write32.i.i.i25, align 4
  tail call void %82(ptr noundef %80, i16 noundef zeroext %78, i32 noundef %or.i24) #4
  br label %b43_pio_tx_suspend_queue.exit31

if.else.i30:                                      ; preds = %b43_pio_tx_suspend_queue.exit18
  call void @__sanitizer_cov_trace_pc() #6
  %read16.i.i.i27 = getelementptr inbounds %struct.b43_bus_dev, ptr %72, i32 0, i32 7
  %83 = ptrtoint ptr %read16.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %read16.i.i.i27, align 4
  %call.i.i12.i28 = tail call zeroext i16 %84(ptr noundef %72, i16 noundef zeroext %70) #4
  %85 = or i16 %call.i.i12.i28, 128
  %86 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %64, align 4
  %88 = ptrtoint ptr %mmio_base.i.i21 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %mmio_base.i.i21, align 4
  %90 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %87, align 4
  %write16.i.i.i29 = getelementptr inbounds %struct.b43_bus_dev, ptr %91, i32 0, i32 9
  %92 = ptrtoint ptr %write16.i.i.i29 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %write16.i.i.i29, align 4
  tail call void %93(ptr noundef %91, i16 noundef zeroext %89, i16 noundef zeroext %85) #4
  br label %b43_pio_tx_suspend_queue.exit31

b43_pio_tx_suspend_queue.exit31:                  ; preds = %if.else.i30, %if.then.i26
  %tx_queue_AC_VO = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11, i32 0, i32 3
  %94 = ptrtoint ptr %tx_queue_AC_VO to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %tx_queue_AC_VO, align 4
  %rev.i32 = getelementptr inbounds %struct.b43_pio_txqueue, ptr %95, i32 0, i32 10
  %96 = ptrtoint ptr %rev.i32 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %rev.i32, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %97)
  %cmp.i33 = icmp ugt i8 %97, 7
  %98 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %95, align 4
  %mmio_base.i.i34 = getelementptr inbounds %struct.b43_pio_txqueue, ptr %95, i32 0, i32 1
  %100 = ptrtoint ptr %mmio_base.i.i34 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %mmio_base.i.i34, align 4
  %102 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %99, align 4
  br i1 %cmp.i33, label %if.then.i39, label %if.else.i43

if.then.i39:                                      ; preds = %b43_pio_tx_suspend_queue.exit31
  call void @__sanitizer_cov_trace_pc() #6
  %read32.i.i.i35 = getelementptr inbounds %struct.b43_bus_dev, ptr %103, i32 0, i32 8
  %104 = ptrtoint ptr %read32.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %read32.i.i.i35, align 4
  %call.i.i.i36 = tail call i32 %105(ptr noundef %103, i16 noundef zeroext %101) #4
  %or.i37 = or i32 %call.i.i.i36, 256
  %106 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %95, align 4
  %108 = ptrtoint ptr %mmio_base.i.i34 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %mmio_base.i.i34, align 4
  %110 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %107, align 4
  %write32.i.i.i38 = getelementptr inbounds %struct.b43_bus_dev, ptr %111, i32 0, i32 10
  %112 = ptrtoint ptr %write32.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %write32.i.i.i38, align 4
  tail call void %113(ptr noundef %111, i16 noundef zeroext %109, i32 noundef %or.i37) #4
  br label %b43_pio_tx_suspend_queue.exit44

if.else.i43:                                      ; preds = %b43_pio_tx_suspend_queue.exit31
  call void @__sanitizer_cov_trace_pc() #6
  %read16.i.i.i40 = getelementptr inbounds %struct.b43_bus_dev, ptr %103, i32 0, i32 7
  %114 = ptrtoint ptr %read16.i.i.i40 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %read16.i.i.i40, align 4
  %call.i.i12.i41 = tail call zeroext i16 %115(ptr noundef %103, i16 noundef zeroext %101) #4
  %116 = or i16 %call.i.i12.i41, 128
  %117 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %95, align 4
  %119 = ptrtoint ptr %mmio_base.i.i34 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %mmio_base.i.i34, align 4
  %121 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %118, align 4
  %write16.i.i.i42 = getelementptr inbounds %struct.b43_bus_dev, ptr %122, i32 0, i32 9
  %123 = ptrtoint ptr %write16.i.i.i42 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %write16.i.i.i42, align 4
  tail call void %124(ptr noundef %122, i16 noundef zeroext %120, i16 noundef zeroext %116) #4
  br label %b43_pio_tx_suspend_queue.exit44

b43_pio_tx_suspend_queue.exit44:                  ; preds = %if.else.i43, %if.then.i39
  %tx_queue_mcast = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11, i32 0, i32 4
  %125 = ptrtoint ptr %tx_queue_mcast to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %tx_queue_mcast, align 4
  %rev.i45 = getelementptr inbounds %struct.b43_pio_txqueue, ptr %126, i32 0, i32 10
  %127 = ptrtoint ptr %rev.i45 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %rev.i45, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %128)
  %cmp.i46 = icmp ugt i8 %128, 7
  %129 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %126, align 4
  %mmio_base.i.i47 = getelementptr inbounds %struct.b43_pio_txqueue, ptr %126, i32 0, i32 1
  %131 = ptrtoint ptr %mmio_base.i.i47 to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %mmio_base.i.i47, align 4
  %133 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %130, align 4
  br i1 %cmp.i46, label %if.then.i52, label %if.else.i56

if.then.i52:                                      ; preds = %b43_pio_tx_suspend_queue.exit44
  call void @__sanitizer_cov_trace_pc() #6
  %read32.i.i.i48 = getelementptr inbounds %struct.b43_bus_dev, ptr %134, i32 0, i32 8
  %135 = ptrtoint ptr %read32.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %read32.i.i.i48, align 4
  %call.i.i.i49 = tail call i32 %136(ptr noundef %134, i16 noundef zeroext %132) #4
  %or.i50 = or i32 %call.i.i.i49, 256
  %137 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %126, align 4
  %139 = ptrtoint ptr %mmio_base.i.i47 to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %mmio_base.i.i47, align 4
  %141 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %138, align 4
  %write32.i.i.i51 = getelementptr inbounds %struct.b43_bus_dev, ptr %142, i32 0, i32 10
  %143 = ptrtoint ptr %write32.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %write32.i.i.i51, align 4
  tail call void %144(ptr noundef %142, i16 noundef zeroext %140, i32 noundef %or.i50) #4
  br label %b43_pio_tx_suspend_queue.exit57

if.else.i56:                                      ; preds = %b43_pio_tx_suspend_queue.exit44
  call void @__sanitizer_cov_trace_pc() #6
  %read16.i.i.i53 = getelementptr inbounds %struct.b43_bus_dev, ptr %134, i32 0, i32 7
  %145 = ptrtoint ptr %read16.i.i.i53 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %read16.i.i.i53, align 4
  %call.i.i12.i54 = tail call zeroext i16 %146(ptr noundef %134, i16 noundef zeroext %132) #4
  %147 = or i16 %call.i.i12.i54, 128
  %148 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %126, align 4
  %150 = ptrtoint ptr %mmio_base.i.i47 to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %mmio_base.i.i47, align 4
  %152 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %149, align 4
  %write16.i.i.i55 = getelementptr inbounds %struct.b43_bus_dev, ptr %153, i32 0, i32 9
  %154 = ptrtoint ptr %write16.i.i.i55 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %write16.i.i.i55, align 4
  tail call void %155(ptr noundef %153, i16 noundef zeroext %151, i16 noundef zeroext %147) #4
  br label %b43_pio_tx_suspend_queue.exit57

b43_pio_tx_suspend_queue.exit57:                  ; preds = %if.else.i56, %if.then.i52
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_power_saving_ctl_bits(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_pio_tx_resume(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11
  %tx_queue_mcast = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11, i32 0, i32 4
  %1 = ptrtoint ptr %tx_queue_mcast to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tx_queue_mcast, align 4
  %rev.i = getelementptr inbounds %struct.b43_pio_txqueue, ptr %2, i32 0, i32 10
  %3 = ptrtoint ptr %rev.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %4)
  %cmp.i = icmp ugt i8 %4, 7
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %mmio_base.i.i = getelementptr inbounds %struct.b43_pio_txqueue, ptr %2, i32 0, i32 1
  %7 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %mmio_base.i.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %read32.i.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %12(ptr noundef %10, i16 noundef zeroext %8) #4
  %and.i = and i32 %call.i.i.i, -257
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %2, align 4
  %15 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %mmio_base.i.i, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %14, align 4
  %write32.i.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %18, i32 0, i32 10
  %19 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %20(ptr noundef %18, i16 noundef zeroext %16, i32 noundef %and.i) #4
  br label %b43_pio_tx_resume_queue.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %read16.i.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %10, i32 0, i32 7
  %21 = ptrtoint ptr %read16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read16.i.i.i, align 4
  %call.i.i12.i = tail call zeroext i16 %22(ptr noundef %10, i16 noundef zeroext %8) #4
  %23 = and i16 %call.i.i12.i, -129
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %2, align 4
  %26 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %mmio_base.i.i, align 4
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %25, align 4
  %write16.i.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %write16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write16.i.i.i, align 4
  tail call void %31(ptr noundef %29, i16 noundef zeroext %27, i16 noundef zeroext %23) #4
  br label %b43_pio_tx_resume_queue.exit

b43_pio_tx_resume_queue.exit:                     ; preds = %if.else.i, %if.then.i
  %tx_queue_AC_VO = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11, i32 0, i32 3
  %32 = ptrtoint ptr %tx_queue_AC_VO to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tx_queue_AC_VO, align 4
  %rev.i6 = getelementptr inbounds %struct.b43_pio_txqueue, ptr %33, i32 0, i32 10
  %34 = ptrtoint ptr %rev.i6 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %rev.i6, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %35)
  %cmp.i7 = icmp ugt i8 %35, 7
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %33, align 4
  %mmio_base.i.i8 = getelementptr inbounds %struct.b43_pio_txqueue, ptr %33, i32 0, i32 1
  %38 = ptrtoint ptr %mmio_base.i.i8 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %mmio_base.i.i8, align 4
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %37, align 4
  br i1 %cmp.i7, label %if.then.i13, label %if.else.i17

if.then.i13:                                      ; preds = %b43_pio_tx_resume_queue.exit
  call void @__sanitizer_cov_trace_pc() #6
  %read32.i.i.i9 = getelementptr inbounds %struct.b43_bus_dev, ptr %41, i32 0, i32 8
  %42 = ptrtoint ptr %read32.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %read32.i.i.i9, align 4
  %call.i.i.i10 = tail call i32 %43(ptr noundef %41, i16 noundef zeroext %39) #4
  %and.i11 = and i32 %call.i.i.i10, -257
  %44 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %33, align 4
  %46 = ptrtoint ptr %mmio_base.i.i8 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %mmio_base.i.i8, align 4
  %48 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %45, align 4
  %write32.i.i.i12 = getelementptr inbounds %struct.b43_bus_dev, ptr %49, i32 0, i32 10
  %50 = ptrtoint ptr %write32.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write32.i.i.i12, align 4
  tail call void %51(ptr noundef %49, i16 noundef zeroext %47, i32 noundef %and.i11) #4
  br label %b43_pio_tx_resume_queue.exit18

if.else.i17:                                      ; preds = %b43_pio_tx_resume_queue.exit
  call void @__sanitizer_cov_trace_pc() #6
  %read16.i.i.i14 = getelementptr inbounds %struct.b43_bus_dev, ptr %41, i32 0, i32 7
  %52 = ptrtoint ptr %read16.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %read16.i.i.i14, align 4
  %call.i.i12.i15 = tail call zeroext i16 %53(ptr noundef %41, i16 noundef zeroext %39) #4
  %54 = and i16 %call.i.i12.i15, -129
  %55 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %33, align 4
  %57 = ptrtoint ptr %mmio_base.i.i8 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %mmio_base.i.i8, align 4
  %59 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %56, align 4
  %write16.i.i.i16 = getelementptr inbounds %struct.b43_bus_dev, ptr %60, i32 0, i32 9
  %61 = ptrtoint ptr %write16.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %write16.i.i.i16, align 4
  tail call void %62(ptr noundef %60, i16 noundef zeroext %58, i16 noundef zeroext %54) #4
  br label %b43_pio_tx_resume_queue.exit18

b43_pio_tx_resume_queue.exit18:                   ; preds = %if.else.i17, %if.then.i13
  %tx_queue_AC_VI = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11, i32 0, i32 2
  %63 = ptrtoint ptr %tx_queue_AC_VI to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tx_queue_AC_VI, align 4
  %rev.i19 = getelementptr inbounds %struct.b43_pio_txqueue, ptr %64, i32 0, i32 10
  %65 = ptrtoint ptr %rev.i19 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %rev.i19, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %66)
  %cmp.i20 = icmp ugt i8 %66, 7
  %67 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %64, align 4
  %mmio_base.i.i21 = getelementptr inbounds %struct.b43_pio_txqueue, ptr %64, i32 0, i32 1
  %69 = ptrtoint ptr %mmio_base.i.i21 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %mmio_base.i.i21, align 4
  %71 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %68, align 4
  br i1 %cmp.i20, label %if.then.i26, label %if.else.i30

if.then.i26:                                      ; preds = %b43_pio_tx_resume_queue.exit18
  call void @__sanitizer_cov_trace_pc() #6
  %read32.i.i.i22 = getelementptr inbounds %struct.b43_bus_dev, ptr %72, i32 0, i32 8
  %73 = ptrtoint ptr %read32.i.i.i22 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %read32.i.i.i22, align 4
  %call.i.i.i23 = tail call i32 %74(ptr noundef %72, i16 noundef zeroext %70) #4
  %and.i24 = and i32 %call.i.i.i23, -257
  %75 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %64, align 4
  %77 = ptrtoint ptr %mmio_base.i.i21 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %mmio_base.i.i21, align 4
  %79 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %76, align 4
  %write32.i.i.i25 = getelementptr inbounds %struct.b43_bus_dev, ptr %80, i32 0, i32 10
  %81 = ptrtoint ptr %write32.i.i.i25 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %write32.i.i.i25, align 4
  tail call void %82(ptr noundef %80, i16 noundef zeroext %78, i32 noundef %and.i24) #4
  br label %b43_pio_tx_resume_queue.exit31

if.else.i30:                                      ; preds = %b43_pio_tx_resume_queue.exit18
  call void @__sanitizer_cov_trace_pc() #6
  %read16.i.i.i27 = getelementptr inbounds %struct.b43_bus_dev, ptr %72, i32 0, i32 7
  %83 = ptrtoint ptr %read16.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %read16.i.i.i27, align 4
  %call.i.i12.i28 = tail call zeroext i16 %84(ptr noundef %72, i16 noundef zeroext %70) #4
  %85 = and i16 %call.i.i12.i28, -129
  %86 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %64, align 4
  %88 = ptrtoint ptr %mmio_base.i.i21 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %mmio_base.i.i21, align 4
  %90 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %87, align 4
  %write16.i.i.i29 = getelementptr inbounds %struct.b43_bus_dev, ptr %91, i32 0, i32 9
  %92 = ptrtoint ptr %write16.i.i.i29 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %write16.i.i.i29, align 4
  tail call void %93(ptr noundef %91, i16 noundef zeroext %89, i16 noundef zeroext %85) #4
  br label %b43_pio_tx_resume_queue.exit31

b43_pio_tx_resume_queue.exit31:                   ; preds = %if.else.i30, %if.then.i26
  %tx_queue_AC_BE = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11, i32 0, i32 1
  %94 = ptrtoint ptr %tx_queue_AC_BE to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %tx_queue_AC_BE, align 4
  %rev.i32 = getelementptr inbounds %struct.b43_pio_txqueue, ptr %95, i32 0, i32 10
  %96 = ptrtoint ptr %rev.i32 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %rev.i32, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %97)
  %cmp.i33 = icmp ugt i8 %97, 7
  %98 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %95, align 4
  %mmio_base.i.i34 = getelementptr inbounds %struct.b43_pio_txqueue, ptr %95, i32 0, i32 1
  %100 = ptrtoint ptr %mmio_base.i.i34 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %mmio_base.i.i34, align 4
  %102 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %99, align 4
  br i1 %cmp.i33, label %if.then.i39, label %if.else.i43

if.then.i39:                                      ; preds = %b43_pio_tx_resume_queue.exit31
  call void @__sanitizer_cov_trace_pc() #6
  %read32.i.i.i35 = getelementptr inbounds %struct.b43_bus_dev, ptr %103, i32 0, i32 8
  %104 = ptrtoint ptr %read32.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %read32.i.i.i35, align 4
  %call.i.i.i36 = tail call i32 %105(ptr noundef %103, i16 noundef zeroext %101) #4
  %and.i37 = and i32 %call.i.i.i36, -257
  %106 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %95, align 4
  %108 = ptrtoint ptr %mmio_base.i.i34 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %mmio_base.i.i34, align 4
  %110 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %107, align 4
  %write32.i.i.i38 = getelementptr inbounds %struct.b43_bus_dev, ptr %111, i32 0, i32 10
  %112 = ptrtoint ptr %write32.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %write32.i.i.i38, align 4
  tail call void %113(ptr noundef %111, i16 noundef zeroext %109, i32 noundef %and.i37) #4
  br label %b43_pio_tx_resume_queue.exit44

if.else.i43:                                      ; preds = %b43_pio_tx_resume_queue.exit31
  call void @__sanitizer_cov_trace_pc() #6
  %read16.i.i.i40 = getelementptr inbounds %struct.b43_bus_dev, ptr %103, i32 0, i32 7
  %114 = ptrtoint ptr %read16.i.i.i40 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %read16.i.i.i40, align 4
  %call.i.i12.i41 = tail call zeroext i16 %115(ptr noundef %103, i16 noundef zeroext %101) #4
  %116 = and i16 %call.i.i12.i41, -129
  %117 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %95, align 4
  %119 = ptrtoint ptr %mmio_base.i.i34 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %mmio_base.i.i34, align 4
  %121 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %118, align 4
  %write16.i.i.i42 = getelementptr inbounds %struct.b43_bus_dev, ptr %122, i32 0, i32 9
  %123 = ptrtoint ptr %write16.i.i.i42 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %write16.i.i.i42, align 4
  tail call void %124(ptr noundef %122, i16 noundef zeroext %120, i16 noundef zeroext %116) #4
  br label %b43_pio_tx_resume_queue.exit44

b43_pio_tx_resume_queue.exit44:                   ; preds = %if.else.i43, %if.then.i39
  %125 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %0, align 4
  %rev.i45 = getelementptr inbounds %struct.b43_pio_txqueue, ptr %126, i32 0, i32 10
  %127 = ptrtoint ptr %rev.i45 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %rev.i45, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %128)
  %cmp.i46 = icmp ugt i8 %128, 7
  %129 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %126, align 4
  %mmio_base.i.i47 = getelementptr inbounds %struct.b43_pio_txqueue, ptr %126, i32 0, i32 1
  %131 = ptrtoint ptr %mmio_base.i.i47 to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %mmio_base.i.i47, align 4
  %133 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %130, align 4
  br i1 %cmp.i46, label %if.then.i52, label %if.else.i56

if.then.i52:                                      ; preds = %b43_pio_tx_resume_queue.exit44
  call void @__sanitizer_cov_trace_pc() #6
  %read32.i.i.i48 = getelementptr inbounds %struct.b43_bus_dev, ptr %134, i32 0, i32 8
  %135 = ptrtoint ptr %read32.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %read32.i.i.i48, align 4
  %call.i.i.i49 = tail call i32 %136(ptr noundef %134, i16 noundef zeroext %132) #4
  %and.i50 = and i32 %call.i.i.i49, -257
  %137 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %126, align 4
  %139 = ptrtoint ptr %mmio_base.i.i47 to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %mmio_base.i.i47, align 4
  %141 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %138, align 4
  %write32.i.i.i51 = getelementptr inbounds %struct.b43_bus_dev, ptr %142, i32 0, i32 10
  %143 = ptrtoint ptr %write32.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %write32.i.i.i51, align 4
  tail call void %144(ptr noundef %142, i16 noundef zeroext %140, i32 noundef %and.i50) #4
  br label %b43_pio_tx_resume_queue.exit57

if.else.i56:                                      ; preds = %b43_pio_tx_resume_queue.exit44
  call void @__sanitizer_cov_trace_pc() #6
  %read16.i.i.i53 = getelementptr inbounds %struct.b43_bus_dev, ptr %134, i32 0, i32 7
  %145 = ptrtoint ptr %read16.i.i.i53 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %read16.i.i.i53, align 4
  %call.i.i12.i54 = tail call zeroext i16 %146(ptr noundef %134, i16 noundef zeroext %132) #4
  %147 = and i16 %call.i.i12.i54, -129
  %148 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %126, align 4
  %150 = ptrtoint ptr %mmio_base.i.i47 to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %mmio_base.i.i47, align 4
  %152 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %149, align 4
  %write16.i.i.i55 = getelementptr inbounds %struct.b43_bus_dev, ptr %153, i32 0, i32 9
  %154 = ptrtoint ptr %write16.i.i.i55 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %write16.i.i.i55, align 4
  tail call void %155(ptr noundef %153, i16 noundef zeroext %151, i16 noundef zeroext %147) #4
  br label %b43_pio_tx_resume_queue.exit57

b43_pio_tx_resume_queue.exit57:                   ; preds = %if.else.i56, %if.then.i52
  tail call void @b43_power_saving_ctl_bits(ptr noundef %dev, i32 noundef 0) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_dma_direct_fifo_rx(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b43_generate_txhdr(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tx_write_4byte_queue(ptr nocapture noundef readonly %q, i32 noundef %ctl, ptr noundef %_data, i32 noundef %data_len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q, align 4
  %wl2 = getelementptr inbounds %struct.b43_wldev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wl2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wl2, align 4
  %or = or i32 %ctl, 15
  %mmio_base.i = getelementptr inbounds %struct.b43_pio_txqueue, ptr %q, i32 0, i32 1
  %4 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mmio_base.i, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %write32.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write32.i.i, align 4
  tail call void %9(ptr noundef %7, i16 noundef zeroext %5, i32 noundef %or) #4
  %and = and i32 %data_len, -4
  %10 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %mmio_base.i, align 4
  %add = add i16 %11, 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %block_write.i = getelementptr inbounds %struct.b43_bus_dev, ptr %13, i32 0, i32 12
  %14 = ptrtoint ptr %block_write.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %block_write.i, align 4
  tail call void %15(ptr noundef %13, ptr noundef %_data, i32 noundef %and, i16 noundef zeroext %add, i8 noundef zeroext 4) #4
  %and4 = and i32 %data_len, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  %pio_tailspace = getelementptr inbounds %struct.b43_wl, ptr %3, i32 0, i32 32
  %16 = ptrtoint ptr %pio_tailspace to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 0, ptr %pio_tailspace, align 1
  %and5 = and i32 %or, -15
  %17 = zext i32 %and4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %and4, label %if.then.sw.epilog_crit_edge [
    i32 3, label %sw.bb
    i32 2, label %sw.bb15
    i32 1, label %sw.bb23
  ]

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %or7 = and i32 %or, -9
  %sub = add i32 %data_len, -3
  %arrayidx = getelementptr i8, ptr %_data, i32 %sub
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx, align 1
  %20 = ptrtoint ptr %pio_tailspace to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %pio_tailspace, align 1
  %sub9 = add i32 %data_len, -2
  %arrayidx10 = getelementptr i8, ptr %_data, i32 %sub9
  %21 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx10, align 1
  %arrayidx11 = getelementptr %struct.b43_wl, ptr %3, i32 0, i32 32, i32 1
  %23 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %arrayidx11, align 1
  %sub12 = add i32 %data_len, -1
  %arrayidx13 = getelementptr i8, ptr %_data, i32 %sub12
  %24 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx13, align 1
  %arrayidx14 = getelementptr %struct.b43_wl, ptr %3, i32 0, i32 32, i32 2
  %26 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %arrayidx14, align 1
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %or16 = and i32 %or, -13
  %sub17 = add i32 %data_len, -2
  %arrayidx18 = getelementptr i8, ptr %_data, i32 %sub17
  %27 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx18, align 1
  %29 = ptrtoint ptr %pio_tailspace to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %pio_tailspace, align 1
  %sub20 = add i32 %data_len, -1
  %arrayidx21 = getelementptr i8, ptr %_data, i32 %sub20
  %30 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx21, align 1
  %arrayidx22 = getelementptr %struct.b43_wl, ptr %3, i32 0, i32 32, i32 1
  %32 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %arrayidx22, align 1
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %sub24 = add i32 %data_len, -1
  %arrayidx25 = getelementptr i8, ptr %_data, i32 %sub24
  %33 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx25, align 1
  %35 = ptrtoint ptr %pio_tailspace to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %pio_tailspace, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb23, %sw.bb15, %sw.bb, %if.then.sw.epilog_crit_edge
  %ctl.addr.0 = phi i32 [ %and5, %if.then.sw.epilog_crit_edge ], [ %and5, %sw.bb23 ], [ %or16, %sw.bb15 ], [ %or7, %sw.bb ]
  %36 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %q, align 4
  %38 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %mmio_base.i, align 4
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %37, align 4
  %write32.i.i65 = getelementptr inbounds %struct.b43_bus_dev, ptr %41, i32 0, i32 10
  %42 = ptrtoint ptr %write32.i.i65 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write32.i.i65, align 4
  tail call void %43(ptr noundef %41, i16 noundef zeroext %39, i32 noundef %ctl.addr.0) #4
  %44 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %mmio_base.i, align 4
  %add29 = add i16 %45, 4
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 4
  %block_write.i66 = getelementptr inbounds %struct.b43_bus_dev, ptr %47, i32 0, i32 12
  %48 = ptrtoint ptr %block_write.i66 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %block_write.i66, align 4
  tail call void %49(ptr noundef %47, ptr noundef %pio_tailspace, i32 noundef 4, i16 noundef zeroext %add29, i8 noundef zeroext 4) #4
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %entry.if.end_crit_edge
  %ctl.addr.1 = phi i32 [ %ctl.addr.0, %sw.epilog ], [ %or, %entry.if.end_crit_edge ]
  ret i32 %ctl.addr.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_rx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/broadcom/b43/pio.c", i32 227, i32 2}
!2 = distinct !{null, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/broadcom/b43/pio.c", i32 228, i32 2}
!4 = distinct !{null, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/broadcom/b43/pio.c", i32 229, i32 2}
!6 = distinct !{null, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/broadcom/b43/pio.c", i32 230, i32 2}
!8 = distinct !{null, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/broadcom/b43/pio.c", i32 231, i32 2}
!10 = distinct !{null, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/broadcom/b43/pio.c", i32 232, i32 2}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/broadcom/b43/pio.c", i32 268, i32 18}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/broadcom/b43/pio.c", i32 515, i32 19}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/broadcom/b43/pio.c", i32 520, i32 20}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/broadcom/b43/pio.c", i32 523, i32 2}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/broadcom/b43/pio.c", i32 547, i32 19}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/broadcom/b43/pio.c", i32 772, i32 7}
!24 = !{ptr @index_to_pioqueue_base.bases, !25, !"bases", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/broadcom/b43/pio.c", i32 82, i32 19}
!26 = !{ptr @index_to_pioqueue_base.bases_rev11, !27, !"bases_rev11", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/broadcom/b43/pio.c", i32 92, i32 19}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/broadcom/b43/pio.c", i32 651, i32 21}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/broadcom/b43/pio.c", i32 668, i32 13}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/broadcom/b43/pio.c", i32 672, i32 13}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/broadcom/b43/pio.c", i32 688, i32 14}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/broadcom/b43/pio.c", i32 699, i32 13}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/broadcom/b43/pio.c", i32 753, i32 22}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{i8 0, i8 2}
!50 = !{!"branch_weights", i32 1, i32 2000}
!51 = !{!"branch_weights", i32 2000, i32 4001, i32 2001}
!52 = !{!"branch_weights", i32 2000, i32 1}
