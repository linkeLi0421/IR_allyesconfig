; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt7601u/debugfs.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt7601u/debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.127, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.anon.127 = type { i64, i64, i8 }
%struct.mt7601u_dev = type { ptr, ptr, i32, %struct.mutex, [4 x i32], %struct.cfg80211_chan_def, ptr, %struct.mt7601u_mcu, %struct.delayed_work, %struct.delayed_work, ptr, %struct.delayed_work, ptr, [128 x ptr], %struct.spinlock, %struct.spinlock, ptr, [6 x i8], ptr, %struct.mutex, ptr, %struct.mutex, %struct.mutex, i32, i32, [8 x i8], [8 x i8], i16, i16, %struct.spinlock, %struct.tasklet_struct, ptr, %struct.sk_buff_head, %struct.atomic_t, %struct.spinlock, %struct.tasklet_struct, %struct.mt7601u_rx_queue, %struct.spinlock, [6 x i8], i8, i8, %struct.ewma_rssi, i8, %struct.mt7601u_freq_cal, i8, i8, i8, i16, i32, i32, i32, i32, i8, i8, i8, i8, [2 x i32], %struct.mac_stats }
%struct.mt7601u_mcu = type { %struct.mutex, i8, %struct.mt7601u_dma_buf, %struct.completion }
%struct.mt7601u_dma_buf = type { ptr, ptr, i32, i32 }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.129, i32 }
%union.anon.129 = type { ptr }
%struct.mt7601u_rx_queue = type { ptr, [16 x %struct.mt7601u_dma_buf_rx], i32, i32, i32, i32 }
%struct.mt7601u_dma_buf_rx = type { ptr, ptr }
%struct.ewma_rssi = type { i32 }
%struct.mt7601u_freq_cal = type { %struct.delayed_work, i8, i8, i8 }
%struct.mac_stats = type { [6 x i64], [6 x i64], [2 x i64], [32 x i64], [2 x i64] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.93, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.94, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.95, ptr, %struct.address_space, %struct.list_head, %union.anon.98, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.93 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.94 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.95 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.98 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.mt7601u_eeprom_params = type { i8, i8, [2 x i8], i8, i8, [14 x i8], %struct.mt7601u_rate_power, [2 x i8], %struct.tssi_data, %struct.reg_channel_bounds }
%struct.mt7601u_rate_power = type { [2 x %struct.power_per_rate], [4 x %struct.power_per_rate], [4 x %struct.power_per_rate] }
%struct.power_per_rate = type { i8, i8, i8 }
%struct.tssi_data = type { i32, i8, [3 x i8] }
%struct.reg_channel_bounds = type { i8, i8 }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mt7601u\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temperature\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp_mode\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"regidx\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"regval\00", [25 x i8] zeroinitializer }, align 32
@fops_regval = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_regval_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ampdu_stat\00", [21 x i8] zeroinitializer }, align 32
@mt7601u_ampdu_stat_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mt7601u_ampdu_stat_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"eeprom_param\00", [19 x i8] zeroinitializer }, align 32
@mt7601u_eeprom_param_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mt7601u_eeprom_param_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"0x%08llx\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rx_crc_err:\09%llu\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rx_phy_err:\09%llu\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rx_false_cca:\09%llu\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rx_plcp_err:\09%llu\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rx_fifo_overflow:\09%llu\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rx_duplicate:\09%llu\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tx_fail_cnt:\09%llu\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tx_bcn_cnt:\09%llu\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tx_success:\09%llu\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tx_retransmit:\09%llu\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tx_zero_len:\09%llu\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tx_underflow:\09%llu\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"non_aggr_tx:\09%llu\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aggr_tx:\09%llu\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tx_zero_len_del:\09%llu\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rx_zero_len_del:\09%llu\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Aggregations stats:\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%08llx \00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"recent average AMPDU len: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"RF freq offset: %hhx\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RSSI offset: %hhx %hhx\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Reference temp: %hhx\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"LNA gain: %hhx\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Reg channels: %hhu-%hhu\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Per rate power:\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\09 raw:%02hhx bw20:%02hhx bw40:%02hhx\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Per channel power:\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\09 tx_power  ch%u:%02hhx ch%u:%02hhx\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TSSI:\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\09 slope:%02hhx\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\09 offset=%02hhx %02hhx %02hhx\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\09 delta_off:%08x\0A\00", [46 x i8] zeroinitializer }, align 32
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 129, i32 27 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 133, i32 20 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 134, i32 21 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 136, i32 21 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 137, i32 22 }
@___asan_gen_.55 = private unnamed_addr constant [12 x i8] c"fops_regval\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 138, i32 22 }
@___asan_gen_.61 = private unnamed_addr constant [24 x i8] c"mt7601u_ampdu_stat_fops\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 76, i32 1 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 139, i32 22 }
@___asan_gen_.67 = private unnamed_addr constant [26 x i8] c"mt7601u_eeprom_param_fops\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 123, i32 1 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 30, i32 1 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 41, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 42, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 43, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 44, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 45, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 46, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 48, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 49, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 50, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 51, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 52, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 53, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 55, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 56, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 58, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 59, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 62, i32 17 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 65, i32 21 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 70, i32 19 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 86, i32 19 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 87, i32 19 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 89, i32 19 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 90, i32 19 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 91, i32 19 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 94, i32 17 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 96, i32 20 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 105, i32 17 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 107, i32 20 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 114, i32 17 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 115, i32 19 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 116, i32 19 }
@___asan_gen_.166 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.167 = private constant [51 x i8] c"../drivers/net/wireless/mediatek/mt7601u/debugfs.c\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 118, i32 19 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @fops_regval, ptr @.str.5, ptr @mt7601u_ampdu_stat_fops, ptr @.str.6, ptr @mt7601u_eeprom_param_fops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_regval to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_ampdu_stat_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_eeprom_param_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7601u_init_debugfs(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wiphy, align 8
  %debugfsdir = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 58
  %4 = ptrtoint ptr %debugfsdir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %debugfsdir, align 4
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str, ptr noundef %5) #2
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %raw_temp = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 52
  tail call void @debugfs_create_u8(ptr noundef nonnull @.str.1, i16 noundef zeroext 256, ptr noundef nonnull %call, ptr noundef %raw_temp) #2
  %temp_mode = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 49
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.2, i16 noundef zeroext 256, ptr noundef nonnull %call, ptr noundef %temp_mode) #2
  %debugfs_reg = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 24
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.3, i16 noundef zeroext 384, ptr noundef nonnull %call, ptr noundef %debugfs_reg) #2
  %call1 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.4, i16 noundef zeroext 384, ptr noundef nonnull %call, ptr noundef %dev, ptr noundef nonnull @fops_regval) #2
  %call2 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.5, i16 noundef zeroext 256, ptr noundef nonnull %call, ptr noundef %dev, ptr noundef nonnull @mt7601u_ampdu_stat_fops) #2
  %call3 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.6, i16 noundef zeroext 256, ptr noundef nonnull %call, ptr noundef %dev, ptr noundef nonnull @mt7601u_eeprom_param_fops) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u8(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fops_regval_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @mt76_reg_get, ptr noundef nonnull @mt76_reg_set, ptr noundef nonnull @.str.7) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt76_reg_get(ptr noundef %data, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %debugfs_reg = getelementptr inbounds %struct.mt7601u_dev, ptr %data, i32 0, i32 24
  %0 = ptrtoint ptr %debugfs_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debugfs_reg, align 8
  %call.i = tail call i32 @mt7601u_rr(ptr noundef %data, i32 noundef %1) #2
  %conv = zext i32 %call.i to i64
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %val, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt76_reg_set(ptr noundef %data, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %debugfs_reg = getelementptr inbounds %struct.mt7601u_dev, ptr %data, i32 0, i32 24
  %0 = ptrtoint ptr %debugfs_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debugfs_reg, align 8
  %conv = trunc i64 %val to i32
  tail call void @mt7601u_wr(ptr noundef %data, i32 noundef %1, i32 noundef %conv) #2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7601u_rr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7601u_wr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7601u_ampdu_stat_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @mt7601u_ampdu_stat_show, ptr noundef %1) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7601u_ampdu_stat_show(ptr noundef %file, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %file, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %stats = getelementptr inbounds %struct.mt7601u_dev, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %stats, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.8, i64 noundef %3) #2
  %arrayidx3 = getelementptr %struct.mt7601u_dev, ptr %1, i32 0, i32 57, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %arrayidx3, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.9, i64 noundef %5) #2
  %arrayidx6 = getelementptr %struct.mt7601u_dev, ptr %1, i32 0, i32 57, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx6, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.10, i64 noundef %7) #2
  %arrayidx9 = getelementptr %struct.mt7601u_dev, ptr %1, i32 0, i32 57, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx9, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.11, i64 noundef %9) #2
  %arrayidx12 = getelementptr %struct.mt7601u_dev, ptr %1, i32 0, i32 57, i32 0, i32 4
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx12, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.12, i64 noundef %11) #2
  %arrayidx15 = getelementptr %struct.mt7601u_dev, ptr %1, i32 0, i32 57, i32 0, i32 5
  %12 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx15, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.13, i64 noundef %13) #2
  %tx_stat = getelementptr inbounds %struct.mt7601u_dev, ptr %1, i32 0, i32 57, i32 1
  %14 = ptrtoint ptr %tx_stat to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %tx_stat, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.14, i64 noundef %15) #2
  %arrayidx20 = getelementptr %struct.mt7601u_dev, ptr %1, i32 0, i32 57, i32 1, i32 1
  %16 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx20, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.15, i64 noundef %17) #2
  %arrayidx23 = getelementptr %struct.mt7601u_dev, ptr %1, i32 0, i32 57, i32 1, i32 2
  %18 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx23, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.16, i64 noundef %19) #2
  %arrayidx26 = getelementptr %struct.mt7601u_dev, ptr %1, i32 0, i32 57, i32 1, i32 3
  %20 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx26, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.17, i64 noundef %21) #2
  %arrayidx29 = getelementptr %struct.mt7601u_dev, ptr %1, i32 0, i32 57, i32 1, i32 4
  %22 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx29, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.18, i64 noundef %23) #2
  %arrayidx32 = getelementptr %struct.mt7601u_dev, ptr %1, i32 0, i32 57, i32 1, i32 5
  %24 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx32, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.19, i64 noundef %25) #2
  %aggr_stat = getelementptr inbounds %struct.mt7601u_dev, ptr %1, i32 0, i32 57, i32 2
  %26 = ptrtoint ptr %aggr_stat to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %aggr_stat, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.20, i64 noundef %27) #2
  %arrayidx37 = getelementptr %struct.mt7601u_dev, ptr %1, i32 0, i32 57, i32 2, i32 1
  %28 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx37, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.21, i64 noundef %29) #2
  %zero_len_del = getelementptr inbounds %struct.mt7601u_dev, ptr %1, i32 0, i32 57, i32 4
  %30 = ptrtoint ptr %zero_len_del to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %zero_len_del, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.22, i64 noundef %31) #2
  %arrayidx42 = getelementptr %struct.mt7601u_dev, ptr %1, i32 0, i32 57, i32 4, i32 1
  %32 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %arrayidx42, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.23, i64 noundef %33) #2
  tail call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.24) #2
  br label %for.cond43.preheader

for.cond43.preheader:                             ; preds = %for.cond43.preheader.for.cond43.preheader_crit_edge, %entry
  %i.093 = phi i32 [ 0, %entry ], [ %inc49, %for.cond43.preheader.for.cond43.preheader_crit_edge ]
  %mul = shl i32 %i.093, 3
  %arrayidx47 = getelementptr %struct.mt7601u_dev, ptr %1, i32 0, i32 57, i32 3, i32 %mul
  %34 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %arrayidx47, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.25, i64 noundef %35) #2
  %add.1 = or i32 %mul, 1
  %arrayidx47.1 = getelementptr %struct.mt7601u_dev, ptr %1, i32 0, i32 57, i32 3, i32 %add.1
  %36 = ptrtoint ptr %arrayidx47.1 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %arrayidx47.1, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.25, i64 noundef %37) #2
  %add.2 = or i32 %mul, 2
  %arrayidx47.2 = getelementptr %struct.mt7601u_dev, ptr %1, i32 0, i32 57, i32 3, i32 %add.2
  %38 = ptrtoint ptr %arrayidx47.2 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %arrayidx47.2, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.25, i64 noundef %39) #2
  %add.3 = or i32 %mul, 3
  %arrayidx47.3 = getelementptr %struct.mt7601u_dev, ptr %1, i32 0, i32 57, i32 3, i32 %add.3
  %40 = ptrtoint ptr %arrayidx47.3 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %arrayidx47.3, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.25, i64 noundef %41) #2
  %add.4 = or i32 %mul, 4
  %arrayidx47.4 = getelementptr %struct.mt7601u_dev, ptr %1, i32 0, i32 57, i32 3, i32 %add.4
  %42 = ptrtoint ptr %arrayidx47.4 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %arrayidx47.4, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.25, i64 noundef %43) #2
  %add.5 = or i32 %mul, 5
  %arrayidx47.5 = getelementptr %struct.mt7601u_dev, ptr %1, i32 0, i32 57, i32 3, i32 %add.5
  %44 = ptrtoint ptr %arrayidx47.5 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %arrayidx47.5, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.25, i64 noundef %45) #2
  %add.6 = or i32 %mul, 6
  %arrayidx47.6 = getelementptr %struct.mt7601u_dev, ptr %1, i32 0, i32 57, i32 3, i32 %add.6
  %46 = ptrtoint ptr %arrayidx47.6 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %arrayidx47.6, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.25, i64 noundef %47) #2
  %add.7 = or i32 %mul, 7
  %arrayidx47.7 = getelementptr %struct.mt7601u_dev, ptr %1, i32 0, i32 57, i32 3, i32 %add.7
  %48 = ptrtoint ptr %arrayidx47.7 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %arrayidx47.7, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.25, i64 noundef %49) #2
  tail call void @seq_putc(ptr noundef %file, i8 noundef zeroext 10) #2
  %inc49 = add nuw nsw i32 %i.093, 1
  %exitcond.not = icmp eq i32 %inc49, 4
  br i1 %exitcond.not, label %for.end50, label %for.cond43.preheader.for.cond43.preheader_crit_edge

for.cond43.preheader.for.cond43.preheader_crit_edge: ; preds = %for.cond43.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.cond43.preheader

for.end50:                                        ; preds = %for.cond43.preheader
  call void @__sanitizer_cov_trace_pc() #4
  %avg_ampdu_len = getelementptr inbounds %struct.mt7601u_dev, ptr %1, i32 0, i32 33
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %avg_ampdu_len, i32 noundef 4) #2
  %50 = ptrtoint ptr %avg_ampdu_len to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %avg_ampdu_len, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.26, i32 noundef %51) #2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7601u_eeprom_param_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @mt7601u_eeprom_param_show, ptr noundef %1) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7601u_eeprom_param_show(ptr noundef %file, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %file, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %ee = getelementptr inbounds %struct.mt7601u_dev, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ee, align 8
  %power_rate_table = getelementptr inbounds %struct.mt7601u_eeprom_params, ptr %3, i32 0, i32 6
  %rf_freq_off = getelementptr inbounds %struct.mt7601u_eeprom_params, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %rf_freq_off to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rf_freq_off, align 1
  %conv = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.27, i32 noundef %conv) #2
  %6 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ee, align 8
  %rssi_offset = getelementptr inbounds %struct.mt7601u_eeprom_params, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %rssi_offset to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rssi_offset, align 2
  %conv4 = sext i8 %9 to i32
  %arrayidx7 = getelementptr %struct.mt7601u_eeprom_params, ptr %7, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx7, align 1
  %conv8 = sext i8 %11 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.28, i32 noundef %conv4, i32 noundef %conv8) #2
  %12 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ee, align 8
  %ref_temp = getelementptr inbounds %struct.mt7601u_eeprom_params, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %ref_temp to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ref_temp, align 4
  %conv10 = sext i8 %15 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.29, i32 noundef %conv10) #2
  %16 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ee, align 8
  %lna_gain = getelementptr inbounds %struct.mt7601u_eeprom_params, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %lna_gain to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %lna_gain, align 1
  %conv12 = sext i8 %19 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.30, i32 noundef %conv12) #2
  %20 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ee, align 8
  %reg = getelementptr inbounds %struct.mt7601u_eeprom_params, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %reg, align 4
  %conv14 = zext i8 %23 to i32
  %num = getelementptr inbounds %struct.mt7601u_eeprom_params, ptr %21, i32 0, i32 9, i32 1
  %24 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %num, align 1
  %conv21 = zext i8 %25 to i32
  %add = add nsw i32 %conv14, -1
  %sub = add nsw i32 %add, %conv21
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.31, i32 noundef %conv14, i32 noundef %sub) #2
  tail call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.32) #2
  %26 = ptrtoint ptr %power_rate_table to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %power_rate_table, align 1
  %conv24 = zext i8 %27 to i32
  %bw20 = getelementptr %struct.mt7601u_eeprom_params, ptr %3, i32 0, i32 6, i32 0, i32 0, i32 1
  %28 = ptrtoint ptr %bw20 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bw20, align 1
  %conv27 = sext i8 %29 to i32
  %bw40 = getelementptr %struct.mt7601u_eeprom_params, ptr %3, i32 0, i32 6, i32 0, i32 0, i32 2
  %30 = ptrtoint ptr %bw40 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bw40, align 1
  %conv30 = sext i8 %31 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.33, i32 noundef %conv24, i32 noundef %conv27, i32 noundef %conv30) #2
  %arrayidx23.1 = getelementptr %struct.mt7601u_eeprom_params, ptr %3, i32 0, i32 6, i32 0, i32 1
  %32 = ptrtoint ptr %arrayidx23.1 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx23.1, align 1
  %conv24.1 = zext i8 %33 to i32
  %bw20.1 = getelementptr %struct.mt7601u_eeprom_params, ptr %3, i32 0, i32 6, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %bw20.1 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %bw20.1, align 1
  %conv27.1 = sext i8 %35 to i32
  %bw40.1 = getelementptr %struct.mt7601u_eeprom_params, ptr %3, i32 0, i32 6, i32 0, i32 1, i32 2
  %36 = ptrtoint ptr %bw40.1 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %bw40.1, align 1
  %conv30.1 = sext i8 %37 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.33, i32 noundef %conv24.1, i32 noundef %conv27.1, i32 noundef %conv30.1) #2
  %arrayidx35 = getelementptr %struct.mt7601u_eeprom_params, ptr %3, i32 0, i32 6, i32 1, i32 0
  %38 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx35, align 1
  %conv37 = zext i8 %39 to i32
  %bw2040 = getelementptr %struct.mt7601u_eeprom_params, ptr %3, i32 0, i32 6, i32 1, i32 0, i32 1
  %40 = ptrtoint ptr %bw2040 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %bw2040, align 1
  %conv41 = sext i8 %41 to i32
  %bw4044 = getelementptr %struct.mt7601u_eeprom_params, ptr %3, i32 0, i32 6, i32 1, i32 0, i32 2
  %42 = ptrtoint ptr %bw4044 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %bw4044, align 1
  %conv45 = sext i8 %43 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.33, i32 noundef %conv37, i32 noundef %conv41, i32 noundef %conv45) #2
  %arrayidx35.1 = getelementptr %struct.mt7601u_eeprom_params, ptr %3, i32 0, i32 6, i32 1, i32 1
  %44 = ptrtoint ptr %arrayidx35.1 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx35.1, align 1
  %conv37.1 = zext i8 %45 to i32
  %bw2040.1 = getelementptr %struct.mt7601u_eeprom_params, ptr %3, i32 0, i32 6, i32 1, i32 1, i32 1
  %46 = ptrtoint ptr %bw2040.1 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %bw2040.1, align 1
  %conv41.1 = sext i8 %47 to i32
  %bw4044.1 = getelementptr %struct.mt7601u_eeprom_params, ptr %3, i32 0, i32 6, i32 1, i32 1, i32 2
  %48 = ptrtoint ptr %bw4044.1 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %bw4044.1, align 1
  %conv45.1 = sext i8 %49 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.33, i32 noundef %conv37.1, i32 noundef %conv41.1, i32 noundef %conv45.1) #2
  %arrayidx35.2 = getelementptr %struct.mt7601u_eeprom_params, ptr %3, i32 0, i32 6, i32 1, i32 2
  %50 = ptrtoint ptr %arrayidx35.2 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx35.2, align 1
  %conv37.2 = zext i8 %51 to i32
  %bw2040.2 = getelementptr %struct.mt7601u_eeprom_params, ptr %3, i32 0, i32 6, i32 1, i32 2, i32 1
  %52 = ptrtoint ptr %bw2040.2 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %bw2040.2, align 1
  %conv41.2 = sext i8 %53 to i32
  %bw4044.2 = getelementptr %struct.mt7601u_eeprom_params, ptr %3, i32 0, i32 6, i32 1, i32 2, i32 2
  %54 = ptrtoint ptr %bw4044.2 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %bw4044.2, align 1
  %conv45.2 = sext i8 %55 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.33, i32 noundef %conv37.2, i32 noundef %conv41.2, i32 noundef %conv45.2) #2
  %arrayidx35.3 = getelementptr %struct.mt7601u_eeprom_params, ptr %3, i32 0, i32 6, i32 1, i32 3
  %56 = ptrtoint ptr %arrayidx35.3 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx35.3, align 1
  %conv37.3 = zext i8 %57 to i32
  %bw2040.3 = getelementptr %struct.mt7601u_eeprom_params, ptr %3, i32 0, i32 6, i32 1, i32 3, i32 1
  %58 = ptrtoint ptr %bw2040.3 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %bw2040.3, align 1
  %conv41.3 = sext i8 %59 to i32
  %bw4044.3 = getelementptr %struct.mt7601u_eeprom_params, ptr %3, i32 0, i32 6, i32 1, i32 3, i32 2
  %60 = ptrtoint ptr %bw4044.3 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %bw4044.3, align 1
  %conv45.3 = sext i8 %61 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.33, i32 noundef %conv37.3, i32 noundef %conv41.3, i32 noundef %conv45.3) #2
  %arrayidx53 = getelementptr %struct.mt7601u_eeprom_params, ptr %3, i32 0, i32 6, i32 2, i32 0
  %62 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx53, align 1
  %conv55 = zext i8 %63 to i32
  %bw2058 = getelementptr %struct.mt7601u_eeprom_params, ptr %3, i32 0, i32 6, i32 2, i32 0, i32 1
  %64 = ptrtoint ptr %bw2058 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %bw2058, align 1
  %conv59 = sext i8 %65 to i32
  %bw4062 = getelementptr %struct.mt7601u_eeprom_params, ptr %3, i32 0, i32 6, i32 2, i32 0, i32 2
  %66 = ptrtoint ptr %bw4062 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %bw4062, align 1
  %conv63 = sext i8 %67 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.33, i32 noundef %conv55, i32 noundef %conv59, i32 noundef %conv63) #2
  %arrayidx53.1 = getelementptr %struct.mt7601u_eeprom_params, ptr %3, i32 0, i32 6, i32 2, i32 1
  %68 = ptrtoint ptr %arrayidx53.1 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx53.1, align 1
  %conv55.1 = zext i8 %69 to i32
  %bw2058.1 = getelementptr %struct.mt7601u_eeprom_params, ptr %3, i32 0, i32 6, i32 2, i32 1, i32 1
  %70 = ptrtoint ptr %bw2058.1 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %bw2058.1, align 1
  %conv59.1 = sext i8 %71 to i32
  %bw4062.1 = getelementptr %struct.mt7601u_eeprom_params, ptr %3, i32 0, i32 6, i32 2, i32 1, i32 2
  %72 = ptrtoint ptr %bw4062.1 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %bw4062.1, align 1
  %conv63.1 = sext i8 %73 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.33, i32 noundef %conv55.1, i32 noundef %conv59.1, i32 noundef %conv63.1) #2
  %arrayidx53.2 = getelementptr %struct.mt7601u_eeprom_params, ptr %3, i32 0, i32 6, i32 2, i32 2
  %74 = ptrtoint ptr %arrayidx53.2 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx53.2, align 1
  %conv55.2 = zext i8 %75 to i32
  %bw2058.2 = getelementptr %struct.mt7601u_eeprom_params, ptr %3, i32 0, i32 6, i32 2, i32 2, i32 1
  %76 = ptrtoint ptr %bw2058.2 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %bw2058.2, align 1
  %conv59.2 = sext i8 %77 to i32
  %bw4062.2 = getelementptr %struct.mt7601u_eeprom_params, ptr %3, i32 0, i32 6, i32 2, i32 2, i32 2
  %78 = ptrtoint ptr %bw4062.2 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %bw4062.2, align 1
  %conv63.2 = sext i8 %79 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.33, i32 noundef %conv55.2, i32 noundef %conv59.2, i32 noundef %conv63.2) #2
  %arrayidx53.3 = getelementptr %struct.mt7601u_eeprom_params, ptr %3, i32 0, i32 6, i32 2, i32 3
  %80 = ptrtoint ptr %arrayidx53.3 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx53.3, align 1
  %conv55.3 = zext i8 %81 to i32
  %bw2058.3 = getelementptr %struct.mt7601u_eeprom_params, ptr %3, i32 0, i32 6, i32 2, i32 3, i32 1
  %82 = ptrtoint ptr %bw2058.3 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %bw2058.3, align 1
  %conv59.3 = sext i8 %83 to i32
  %bw4062.3 = getelementptr %struct.mt7601u_eeprom_params, ptr %3, i32 0, i32 6, i32 2, i32 3, i32 2
  %84 = ptrtoint ptr %bw4062.3 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %bw4062.3, align 1
  %conv63.3 = sext i8 %85 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.33, i32 noundef %conv55.3, i32 noundef %conv59.3, i32 noundef %conv63.3) #2
  tail call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.34) #2
  %86 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ee, align 8
  %arrayidx74 = getelementptr %struct.mt7601u_eeprom_params, ptr %87, i32 0, i32 5, i32 0
  %88 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx74, align 1
  %conv75 = zext i8 %89 to i32
  %arrayidx82 = getelementptr %struct.mt7601u_eeprom_params, ptr %87, i32 0, i32 5, i32 1
  %90 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx82, align 1
  %conv83 = zext i8 %91 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.35, i32 noundef 1, i32 noundef %conv75, i32 noundef 2, i32 noundef %conv83) #2
  %92 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ee, align 8
  %arrayidx74.1 = getelementptr %struct.mt7601u_eeprom_params, ptr %93, i32 0, i32 5, i32 2
  %94 = ptrtoint ptr %arrayidx74.1 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx74.1, align 1
  %conv75.1 = zext i8 %95 to i32
  %arrayidx82.1 = getelementptr %struct.mt7601u_eeprom_params, ptr %93, i32 0, i32 5, i32 3
  %96 = ptrtoint ptr %arrayidx82.1 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx82.1, align 1
  %conv83.1 = zext i8 %97 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.35, i32 noundef 3, i32 noundef %conv75.1, i32 noundef 4, i32 noundef %conv83.1) #2
  %98 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ee, align 8
  %arrayidx74.2 = getelementptr %struct.mt7601u_eeprom_params, ptr %99, i32 0, i32 5, i32 4
  %100 = ptrtoint ptr %arrayidx74.2 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx74.2, align 1
  %conv75.2 = zext i8 %101 to i32
  %arrayidx82.2 = getelementptr %struct.mt7601u_eeprom_params, ptr %99, i32 0, i32 5, i32 5
  %102 = ptrtoint ptr %arrayidx82.2 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx82.2, align 1
  %conv83.2 = zext i8 %103 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.35, i32 noundef 5, i32 noundef %conv75.2, i32 noundef 6, i32 noundef %conv83.2) #2
  %104 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ee, align 8
  %arrayidx74.3 = getelementptr %struct.mt7601u_eeprom_params, ptr %105, i32 0, i32 5, i32 6
  %106 = ptrtoint ptr %arrayidx74.3 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx74.3, align 1
  %conv75.3 = zext i8 %107 to i32
  %arrayidx82.3 = getelementptr %struct.mt7601u_eeprom_params, ptr %105, i32 0, i32 5, i32 7
  %108 = ptrtoint ptr %arrayidx82.3 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx82.3, align 1
  %conv83.3 = zext i8 %109 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.35, i32 noundef 7, i32 noundef %conv75.3, i32 noundef 8, i32 noundef %conv83.3) #2
  %110 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ee, align 8
  %arrayidx74.4 = getelementptr %struct.mt7601u_eeprom_params, ptr %111, i32 0, i32 5, i32 8
  %112 = ptrtoint ptr %arrayidx74.4 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx74.4, align 1
  %conv75.4 = zext i8 %113 to i32
  %arrayidx82.4 = getelementptr %struct.mt7601u_eeprom_params, ptr %111, i32 0, i32 5, i32 9
  %114 = ptrtoint ptr %arrayidx82.4 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx82.4, align 1
  %conv83.4 = zext i8 %115 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.35, i32 noundef 9, i32 noundef %conv75.4, i32 noundef 10, i32 noundef %conv83.4) #2
  %116 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %ee, align 8
  %arrayidx74.5 = getelementptr %struct.mt7601u_eeprom_params, ptr %117, i32 0, i32 5, i32 10
  %118 = ptrtoint ptr %arrayidx74.5 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx74.5, align 1
  %conv75.5 = zext i8 %119 to i32
  %arrayidx82.5 = getelementptr %struct.mt7601u_eeprom_params, ptr %117, i32 0, i32 5, i32 11
  %120 = ptrtoint ptr %arrayidx82.5 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx82.5, align 1
  %conv83.5 = zext i8 %121 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.35, i32 noundef 11, i32 noundef %conv75.5, i32 noundef 12, i32 noundef %conv83.5) #2
  %122 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %ee, align 8
  %arrayidx74.6 = getelementptr %struct.mt7601u_eeprom_params, ptr %123, i32 0, i32 5, i32 12
  %124 = ptrtoint ptr %arrayidx74.6 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx74.6, align 1
  %conv75.6 = zext i8 %125 to i32
  %arrayidx82.6 = getelementptr %struct.mt7601u_eeprom_params, ptr %123, i32 0, i32 5, i32 13
  %126 = ptrtoint ptr %arrayidx82.6 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx82.6, align 1
  %conv83.6 = zext i8 %127 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.35, i32 noundef 13, i32 noundef %conv75.6, i32 noundef 14, i32 noundef %conv83.6) #2
  %128 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %ee, align 8
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %129, align 4, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool.not = icmp eq i8 %131, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %tssi_data = getelementptr inbounds %struct.mt7601u_eeprom_params, ptr %3, i32 0, i32 8
  tail call void @seq_puts(ptr noundef %file, ptr noundef nonnull @.str.36) #2
  %slope = getelementptr inbounds %struct.mt7601u_eeprom_params, ptr %3, i32 0, i32 8, i32 1
  %132 = ptrtoint ptr %slope to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %slope, align 4
  %conv88 = zext i8 %133 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.37, i32 noundef %conv88) #2
  %offset = getelementptr inbounds %struct.mt7601u_eeprom_params, ptr %3, i32 0, i32 8, i32 2
  %134 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %offset, align 1
  %conv90 = zext i8 %135 to i32
  %arrayidx92 = getelementptr %struct.mt7601u_eeprom_params, ptr %3, i32 0, i32 8, i32 2, i32 1
  %136 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx92, align 1
  %conv93 = zext i8 %137 to i32
  %arrayidx95 = getelementptr %struct.mt7601u_eeprom_params, ptr %3, i32 0, i32 8, i32 2, i32 2
  %138 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx95, align 1
  %conv96 = zext i8 %139 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.38, i32 noundef %conv90, i32 noundef %conv93, i32 noundef %conv96) #2
  %140 = ptrtoint ptr %tssi_data to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %tssi_data, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.39, i32 noundef %141) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91, !92}
!llvm.ident = !{!93}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt7601u/debugfs.c", i32 129, i32 27}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/mediatek/mt7601u/debugfs.c", i32 133, i32 20}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/mediatek/mt7601u/debugfs.c", i32 134, i32 21}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/mediatek/mt7601u/debugfs.c", i32 136, i32 21}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/mediatek/mt7601u/debugfs.c", i32 137, i32 22}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/mediatek/mt7601u/debugfs.c", i32 138, i32 22}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/mediatek/mt7601u/debugfs.c", i32 139, i32 22}
!14 = !{ptr @fops_regval, !15, !"fops_regval", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/mediatek/mt7601u/debugfs.c", i32 30, i32 1}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @mt7601u_ampdu_stat_fops, !18, !"mt7601u_ampdu_stat_fops", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/mediatek/mt7601u/debugfs.c", i32 76, i32 1}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/mediatek/mt7601u/debugfs.c", i32 41, i32 2}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/mediatek/mt7601u/debugfs.c", i32 42, i32 2}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/mediatek/mt7601u/debugfs.c", i32 43, i32 2}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/mediatek/mt7601u/debugfs.c", i32 44, i32 2}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/mediatek/mt7601u/debugfs.c", i32 45, i32 2}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/mediatek/mt7601u/debugfs.c", i32 46, i32 2}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/mediatek/mt7601u/debugfs.c", i32 48, i32 2}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/mediatek/mt7601u/debugfs.c", i32 49, i32 2}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/mediatek/mt7601u/debugfs.c", i32 50, i32 2}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/mediatek/mt7601u/debugfs.c", i32 51, i32 2}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/mediatek/mt7601u/debugfs.c", i32 52, i32 2}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/mediatek/mt7601u/debugfs.c", i32 53, i32 2}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/mediatek/mt7601u/debugfs.c", i32 55, i32 2}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/mediatek/mt7601u/debugfs.c", i32 56, i32 2}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/mediatek/mt7601u/debugfs.c", i32 58, i32 2}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/mediatek/mt7601u/debugfs.c", i32 59, i32 2}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/mediatek/mt7601u/debugfs.c", i32 62, i32 17}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/mediatek/mt7601u/debugfs.c", i32 65, i32 21}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/mediatek/mt7601u/debugfs.c", i32 70, i32 19}
!57 = !{ptr @mt7601u_eeprom_param_fops, !58, !"mt7601u_eeprom_param_fops", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/mediatek/mt7601u/debugfs.c", i32 123, i32 1}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/mediatek/mt7601u/debugfs.c", i32 86, i32 19}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/mediatek/mt7601u/debugfs.c", i32 87, i32 19}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/mediatek/mt7601u/debugfs.c", i32 89, i32 19}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/mediatek/mt7601u/debugfs.c", i32 90, i32 19}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/mediatek/mt7601u/debugfs.c", i32 91, i32 19}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/mediatek/mt7601u/debugfs.c", i32 94, i32 17}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/mediatek/mt7601u/debugfs.c", i32 96, i32 20}
!73 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/mediatek/mt7601u/debugfs.c", i32 105, i32 17}
!75 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/mediatek/mt7601u/debugfs.c", i32 107, i32 20}
!77 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/mediatek/mt7601u/debugfs.c", i32 114, i32 17}
!79 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/mediatek/mt7601u/debugfs.c", i32 115, i32 19}
!81 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/mediatek/mt7601u/debugfs.c", i32 116, i32 19}
!83 = !{ptr @.str.39, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/mediatek/mt7601u/debugfs.c", i32 118, i32 19}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 1, !"min_enum_size", i32 4}
!87 = !{i32 8, !"branch-target-enforcement", i32 0}
!88 = !{i32 8, !"sign-return-address", i32 0}
!89 = !{i32 8, !"sign-return-address-all", i32 0}
!90 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!91 = !{i32 7, !"uwtable", i32 1}
!92 = !{i32 7, !"frame-pointer", i32 2}
!93 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!94 = !{i8 0, i8 2}
