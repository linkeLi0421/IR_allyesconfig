; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt7601u/eeprom.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt7601u/eeprom.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.reg_channel_bounds = type { i8, i8 }
%struct.mt7601u_dev = type { ptr, ptr, i32, %struct.mutex, [4 x i32], %struct.cfg80211_chan_def, ptr, %struct.mt7601u_mcu, %struct.delayed_work, %struct.delayed_work, ptr, %struct.delayed_work, ptr, [128 x ptr], %struct.spinlock, %struct.spinlock, ptr, [6 x i8], ptr, %struct.mutex, ptr, %struct.mutex, %struct.mutex, i32, i32, [8 x i8], [8 x i8], i16, i16, %struct.spinlock, %struct.tasklet_struct, ptr, %struct.sk_buff_head, %struct.atomic_t, %struct.spinlock, %struct.tasklet_struct, %struct.mt7601u_rx_queue, %struct.spinlock, [6 x i8], i8, i8, %struct.ewma_rssi, i8, %struct.mt7601u_freq_cal, i8, i8, i8, i16, i32, i32, i32, i32, i8, i8, i8, i8, [2 x i32], %struct.mac_stats }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.mt7601u_mcu = type { %struct.mutex, i8, %struct.mt7601u_dma_buf, %struct.completion }
%struct.mt7601u_dma_buf = type { ptr, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.130, i32 }
%union.anon.130 = type { ptr }
%struct.mt7601u_rx_queue = type { ptr, [16 x %struct.mt7601u_dma_buf_rx], i32, i32, i32, i32 }
%struct.mt7601u_dma_buf_rx = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.ewma_rssi = type { i32 }
%struct.mt7601u_freq_cal = type { %struct.delayed_work, i8, i8, i8 }
%struct.mac_stats = type { [6 x i64], [6 x i64], [2 x i64], [32 x i64], [2 x i64] }
%struct.mt7601u_eeprom_params = type { i8, i8, [2 x i8], i8, i8, [14 x i8], %struct.mt7601u_rate_power, [2 x i8], %struct.tssi_data, %struct.reg_channel_bounds }
%struct.mt7601u_rate_power = type { [2 x %struct.power_per_rate], [4 x %struct.power_per_rate], [4 x %struct.power_per_rate] }
%struct.power_per_rate = type { i8, i8, i8 }
%struct.tssi_data = type { i32, i8, [3 x i8] }

@mt7601u_eeprom_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 371, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Warning: unsupported EEPROM version %02hhx\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mt7601u_eeprom_init\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/wireless/mediatek/mt7601u/eeprom.c\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt7601u_eeprom_init._entry_ptr = internal global ptr @mt7601u_eeprom_init._entry, section ".printk_index", align 4
@mt7601u_eeprom_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 373, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"EEPROM ver:%02hhx fae:%02hhx\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mt7601u_eeprom_init._entry_ptr.8 = internal global ptr @mt7601u_eeprom_init._entry.5, section ".printk_index", align 4
@mt7601u_efuse_physical_size_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 90, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"Error: your device needs default EEPROM file and this driver doesn't support it!\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"mt7601u_efuse_physical_size_check\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@mt7601u_efuse_physical_size_check._entry_ptr = internal global ptr @mt7601u_efuse_physical_size_check._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mt7601u_set_chip_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 119, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Error: this driver does not support HW RF ctrl\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mt7601u_set_chip_cap\00", [43 x i8] zeroinitializer }, align 32
@mt7601u_set_chip_cap._entry_ptr = internal global ptr @mt7601u_set_chip_cap._entry, section ".printk_index", align 4
@mt7601u_set_chip_cap._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 127, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Error: device has more than 1 RX/TX stream!\0A\00", [51 x i8] zeroinitializer }, align 32
@mt7601u_set_chip_cap._entry_ptr.16 = internal global ptr @mt7601u_set_chip_cap._entry.14, section ".printk_index", align 4
@mt7601u_set_channel_target_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 137, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Error: EEPROM trgt power invalid %hhx!\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mt7601u_set_channel_target_power\00", [63 x i8] zeroinitializer }, align 32
@mt7601u_set_channel_target_power._entry_ptr = internal global ptr @mt7601u_set_channel_target_power._entry, section ".printk_index", align 4
@mt7601u_set_country_reg.chan_bounds = internal constant { [10 x %struct.reg_channel_bounds], [44 x i8] } { [10 x %struct.reg_channel_bounds] [%struct.reg_channel_bounds { i8 1, i8 11 }, %struct.reg_channel_bounds { i8 1, i8 13 }, %struct.reg_channel_bounds { i8 10, i8 2 }, %struct.reg_channel_bounds { i8 10, i8 4 }, %struct.reg_channel_bounds { i8 14, i8 1 }, %struct.reg_channel_bounds { i8 1, i8 14 }, %struct.reg_channel_bounds { i8 3, i8 7 }, %struct.reg_channel_bounds { i8 5, i8 9 }, %struct.reg_channel_bounds { i8 1, i8 11 }, %struct.reg_channel_bounds { i8 1, i8 14 }], [44 x i8] zeroinitializer }, align 32
@mt7601u_set_country_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 193, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"EEPROM country region %02hhx (channels %hhd-%hhd)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mt7601u_set_country_reg\00", [40 x i8] zeroinitializer }, align 32
@mt7601u_set_country_reg._entry_ptr = internal global ptr @mt7601u_set_country_reg._entry, section ".printk_index", align 4
@mt7601u_set_rssi_offset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 230, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Warning: EEPROM RSSI is invalid %02hhx\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mt7601u_set_rssi_offset\00", [40 x i8] zeroinitializer }, align 32
@mt7601u_set_rssi_offset._entry_ptr = internal global ptr @mt7601u_set_rssi_offset._entry, section ".printk_index", align 4
@.str.23 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/wireless/mediatek/mt7601u/eeprom.h\00", [49 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 369, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 372, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 90, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 118, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 126, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 136, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [12 x i8] c"chan_bounds\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 174, i32 41 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 190, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.106 = private constant [50 x i8] c"../drivers/net/wireless/mediatek/mt7601u/eeprom.c\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 228, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [50 x i8] c"../drivers/net/wireless/mediatek/mt7601u/eeprom.h\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 118, i32 2 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @mt7601u_eeprom_init._entry, ptr @mt7601u_eeprom_init._entry.5, ptr @mt7601u_eeprom_init._entry_ptr, ptr @mt7601u_eeprom_init._entry_ptr.8, ptr @mt7601u_efuse_physical_size_check._entry, ptr @mt7601u_efuse_physical_size_check._entry_ptr, ptr @mt7601u_set_channel_target_power._entry, ptr @mt7601u_set_channel_target_power._entry_ptr, ptr @mt7601u_set_chip_cap._entry, ptr @mt7601u_set_chip_cap._entry.14, ptr @mt7601u_set_chip_cap._entry_ptr, ptr @mt7601u_set_chip_cap._entry_ptr.16, ptr @mt7601u_set_country_reg._entry, ptr @mt7601u_set_country_reg._entry_ptr, ptr @mt7601u_set_rssi_offset._entry, ptr @mt7601u_set_rssi_offset._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @mt7601u_set_country_reg.chan_bounds, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_eeprom_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_eeprom_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_efuse_physical_size_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_set_chip_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_set_chip_cap._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_set_channel_target_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_set_country_reg.chan_bounds to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_set_country_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_set_rssi_offset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7601u_eeprom_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %data.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %data.i) #7
  %0 = call ptr @memset(ptr %data.i, i32 255, i32 32)
  %call.i = call fastcc i32 @mt7601u_efuse_read(ptr noundef %dev, i16 noundef zeroext 480, ptr noundef nonnull %data.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %entry.mt7601u_efuse_physical_size_check.exit.thread_crit_edge

entry.mt7601u_efuse_physical_size_check.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7601u_efuse_physical_size_check.exit.thread

for.cond.i:                                       ; preds = %entry
  %1 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 16
  %call.1.i = call fastcc i32 @mt7601u_efuse_read(ptr noundef %dev, i16 noundef zeroext 496, ptr noundef %1, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %for.cond.i.for.body5.i_crit_edge, label %for.cond.i.mt7601u_efuse_physical_size_check.exit.thread_crit_edge

for.cond.i.mt7601u_efuse_physical_size_check.exit.thread_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7601u_efuse_physical_size_check.exit.thread

for.cond.i.for.body5.i_crit_edge:                 ; preds = %for.cond.i
  br label %for.body5.i

for.body5.i:                                      ; preds = %for.body5.i.for.body5.i_crit_edge, %for.cond.i.for.body5.i_crit_edge
  %end.044.i = phi i32 [ %end.1.i, %for.body5.i.for.body5.i_crit_edge ], [ 0, %for.cond.i.for.body5.i_crit_edge ]
  %start.043.i = phi i32 [ %start.2.i, %for.body5.i.for.body5.i_crit_edge ], [ 0, %for.cond.i.for.body5.i_crit_edge ]
  %i.142.i = phi i32 [ %inc15.i, %for.body5.i.for.body5.i_crit_edge ], [ 0, %for.cond.i.for.body5.i_crit_edge ]
  %arrayidx.i = getelementptr [32 x i8], ptr %data.i, i32 0, i32 %i.142.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool6.not.i = icmp eq i8 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %start.043.i)
  %tobool8.not.i = icmp eq i32 %start.043.i, 0
  %add10.i = add nuw nsw i32 %i.142.i, 480
  %4 = select i1 %tobool6.not.i, i1 %tobool8.not.i, i1 false
  %start.2.i = select i1 %4, i32 %add10.i, i32 %start.043.i
  %end.1.i = select i1 %tobool6.not.i, i32 %add10.i, i32 %end.044.i
  %inc15.i = add nuw nsw i32 %i.142.i, 1
  %exitcond.not.i = icmp eq i32 %inc15.i, 29
  br i1 %exitcond.not.i, label %for.end16.i, label %for.body5.i.for.body5.i_crit_edge

for.body5.i.for.body5.i_crit_edge:                ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body5.i

for.end16.i:                                      ; preds = %for.body5.i
  %sub.neg.i = sub i32 28, %end.1.i
  %sub18.i = add i32 %sub.neg.i, %start.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub18.i)
  %cmp19.i = icmp ult i32 %sub18.i, 5
  br i1 %cmp19.i, label %do.end.i, label %if.end

do.end.i:                                         ; preds = %for.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev22.i = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 1
  %5 = ptrtoint ptr %dev22.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev22.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.9) #10
  br label %mt7601u_efuse_physical_size_check.exit.thread

mt7601u_efuse_physical_size_check.exit.thread:    ; preds = %do.end.i, %for.cond.i.mt7601u_efuse_physical_size_check.exit.thread_crit_edge, %entry.mt7601u_efuse_physical_size_check.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.1.i, %for.cond.i.mt7601u_efuse_physical_size_check.exit.thread_crit_edge ], [ %call.i, %entry.mt7601u_efuse_physical_size_check.exit.thread_crit_edge ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %data.i) #7
  br label %cleanup

if.end:                                           ; preds = %for.end16.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %data.i) #7
  %dev1 = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 1
  %7 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev1, align 4
  %call.i77 = tail call noalias ptr @devm_kmalloc(ptr noundef %8, i32 noundef 64, i32 noundef 3520) #7
  %ee = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 18
  %9 = ptrtoint ptr %ee to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i77, ptr %ee, align 8
  %tobool4.not = icmp eq ptr %call.i77, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3264, i32 noundef 256) #11
  %tobool8.not = icmp eq ptr %call7.i, null
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %for.cond.preheader

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end6
  %call11 = tail call fastcc i32 @mt7601u_efuse_read(ptr noundef %dev, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %for.cond.1, label %for.cond.preheader.out_crit_edge

for.cond.preheader.out_crit_edge:                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.cond.1:                                       ; preds = %for.cond.preheader
  %add.ptr.1 = getelementptr i8, ptr %call7.i, i32 16
  %call11.1 = tail call fastcc i32 @mt7601u_efuse_read(ptr noundef %dev, i16 noundef zeroext 16, ptr noundef %add.ptr.1, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.1)
  %tobool12.not.1 = icmp eq i32 %call11.1, 0
  br i1 %tobool12.not.1, label %for.cond.2, label %for.cond.1.out_crit_edge

for.cond.1.out_crit_edge:                         ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.cond.2:                                       ; preds = %for.cond.1
  %add.ptr.2 = getelementptr i8, ptr %call7.i, i32 32
  %call11.2 = tail call fastcc i32 @mt7601u_efuse_read(ptr noundef %dev, i16 noundef zeroext 32, ptr noundef %add.ptr.2, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.2)
  %tobool12.not.2 = icmp eq i32 %call11.2, 0
  br i1 %tobool12.not.2, label %for.cond.3, label %for.cond.2.out_crit_edge

for.cond.2.out_crit_edge:                         ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.cond.3:                                       ; preds = %for.cond.2
  %add.ptr.3 = getelementptr i8, ptr %call7.i, i32 48
  %call11.3 = tail call fastcc i32 @mt7601u_efuse_read(ptr noundef %dev, i16 noundef zeroext 48, ptr noundef %add.ptr.3, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.3)
  %tobool12.not.3 = icmp eq i32 %call11.3, 0
  br i1 %tobool12.not.3, label %for.cond.4, label %for.cond.3.out_crit_edge

for.cond.3.out_crit_edge:                         ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.cond.4:                                       ; preds = %for.cond.3
  %add.ptr.4 = getelementptr i8, ptr %call7.i, i32 64
  %call11.4 = tail call fastcc i32 @mt7601u_efuse_read(ptr noundef %dev, i16 noundef zeroext 64, ptr noundef %add.ptr.4, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.4)
  %tobool12.not.4 = icmp eq i32 %call11.4, 0
  br i1 %tobool12.not.4, label %for.cond.5, label %for.cond.4.out_crit_edge

for.cond.4.out_crit_edge:                         ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.cond.5:                                       ; preds = %for.cond.4
  %add.ptr.5 = getelementptr i8, ptr %call7.i, i32 80
  %call11.5 = tail call fastcc i32 @mt7601u_efuse_read(ptr noundef %dev, i16 noundef zeroext 80, ptr noundef %add.ptr.5, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.5)
  %tobool12.not.5 = icmp eq i32 %call11.5, 0
  br i1 %tobool12.not.5, label %for.cond.6, label %for.cond.5.out_crit_edge

for.cond.5.out_crit_edge:                         ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.cond.6:                                       ; preds = %for.cond.5
  %add.ptr.6 = getelementptr i8, ptr %call7.i, i32 96
  %call11.6 = tail call fastcc i32 @mt7601u_efuse_read(ptr noundef %dev, i16 noundef zeroext 96, ptr noundef %add.ptr.6, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.6)
  %tobool12.not.6 = icmp eq i32 %call11.6, 0
  br i1 %tobool12.not.6, label %for.cond.7, label %for.cond.6.out_crit_edge

for.cond.6.out_crit_edge:                         ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.cond.7:                                       ; preds = %for.cond.6
  %add.ptr.7 = getelementptr i8, ptr %call7.i, i32 112
  %call11.7 = tail call fastcc i32 @mt7601u_efuse_read(ptr noundef %dev, i16 noundef zeroext 112, ptr noundef %add.ptr.7, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.7)
  %tobool12.not.7 = icmp eq i32 %call11.7, 0
  br i1 %tobool12.not.7, label %for.cond.8, label %for.cond.7.out_crit_edge

for.cond.7.out_crit_edge:                         ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.cond.8:                                       ; preds = %for.cond.7
  %add.ptr.8 = getelementptr i8, ptr %call7.i, i32 128
  %call11.8 = tail call fastcc i32 @mt7601u_efuse_read(ptr noundef %dev, i16 noundef zeroext 128, ptr noundef %add.ptr.8, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.8)
  %tobool12.not.8 = icmp eq i32 %call11.8, 0
  br i1 %tobool12.not.8, label %for.cond.9, label %for.cond.8.out_crit_edge

for.cond.8.out_crit_edge:                         ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.cond.9:                                       ; preds = %for.cond.8
  %add.ptr.9 = getelementptr i8, ptr %call7.i, i32 144
  %call11.9 = tail call fastcc i32 @mt7601u_efuse_read(ptr noundef %dev, i16 noundef zeroext 144, ptr noundef %add.ptr.9, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.9)
  %tobool12.not.9 = icmp eq i32 %call11.9, 0
  br i1 %tobool12.not.9, label %for.cond.10, label %for.cond.9.out_crit_edge

for.cond.9.out_crit_edge:                         ; preds = %for.cond.9
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.cond.10:                                      ; preds = %for.cond.9
  %add.ptr.10 = getelementptr i8, ptr %call7.i, i32 160
  %call11.10 = tail call fastcc i32 @mt7601u_efuse_read(ptr noundef %dev, i16 noundef zeroext 160, ptr noundef %add.ptr.10, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.10)
  %tobool12.not.10 = icmp eq i32 %call11.10, 0
  br i1 %tobool12.not.10, label %for.cond.11, label %for.cond.10.out_crit_edge

for.cond.10.out_crit_edge:                        ; preds = %for.cond.10
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.cond.11:                                      ; preds = %for.cond.10
  %add.ptr.11 = getelementptr i8, ptr %call7.i, i32 176
  %call11.11 = tail call fastcc i32 @mt7601u_efuse_read(ptr noundef %dev, i16 noundef zeroext 176, ptr noundef %add.ptr.11, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.11)
  %tobool12.not.11 = icmp eq i32 %call11.11, 0
  br i1 %tobool12.not.11, label %for.cond.12, label %for.cond.11.out_crit_edge

for.cond.11.out_crit_edge:                        ; preds = %for.cond.11
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.cond.12:                                      ; preds = %for.cond.11
  %add.ptr.12 = getelementptr i8, ptr %call7.i, i32 192
  %call11.12 = tail call fastcc i32 @mt7601u_efuse_read(ptr noundef %dev, i16 noundef zeroext 192, ptr noundef %add.ptr.12, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.12)
  %tobool12.not.12 = icmp eq i32 %call11.12, 0
  br i1 %tobool12.not.12, label %for.cond.13, label %for.cond.12.out_crit_edge

for.cond.12.out_crit_edge:                        ; preds = %for.cond.12
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.cond.13:                                      ; preds = %for.cond.12
  %add.ptr.13 = getelementptr i8, ptr %call7.i, i32 208
  %call11.13 = tail call fastcc i32 @mt7601u_efuse_read(ptr noundef %dev, i16 noundef zeroext 208, ptr noundef %add.ptr.13, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.13)
  %tobool12.not.13 = icmp eq i32 %call11.13, 0
  br i1 %tobool12.not.13, label %for.cond.14, label %for.cond.13.out_crit_edge

for.cond.13.out_crit_edge:                        ; preds = %for.cond.13
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.cond.14:                                      ; preds = %for.cond.13
  %add.ptr.14 = getelementptr i8, ptr %call7.i, i32 224
  %call11.14 = tail call fastcc i32 @mt7601u_efuse_read(ptr noundef %dev, i16 noundef zeroext 224, ptr noundef %add.ptr.14, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.14)
  %tobool12.not.14 = icmp eq i32 %call11.14, 0
  br i1 %tobool12.not.14, label %for.cond.15, label %for.cond.14.out_crit_edge

for.cond.14.out_crit_edge:                        ; preds = %for.cond.14
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.cond.15:                                      ; preds = %for.cond.14
  %add.ptr.15 = getelementptr i8, ptr %call7.i, i32 240
  %call11.15 = tail call fastcc i32 @mt7601u_efuse_read(ptr noundef %dev, i16 noundef zeroext 240, ptr noundef %add.ptr.15, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.15)
  %tobool12.not.15 = icmp eq i32 %call11.15, 0
  br i1 %tobool12.not.15, label %for.end, label %for.cond.15.out_crit_edge

for.cond.15.out_crit_edge:                        ; preds = %for.cond.15
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.end:                                          ; preds = %for.cond.15
  %arrayidx = getelementptr i8, ptr %call7.i, i32 3
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %12)
  %cmp17 = icmp ugt i8 %12, 13
  br i1 %cmp17, label %do.end, label %for.end.do.end26_crit_edge

for.end.do.end26_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end26

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv16 = zext i8 %12 to i32
  %13 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str, i32 noundef %conv16) #10
  br label %do.end26

do.end26:                                         ; preds = %do.end, %for.end.do.end26_crit_edge
  %15 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev1, align 4
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx, align 1
  %conv29 = zext i8 %18 to i32
  %arrayidx30 = getelementptr i8, ptr %call7.i, i32 2
  %19 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx30, align 2
  %conv31 = zext i8 %20 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %16, ptr noundef nonnull @.str.6, i32 noundef %conv29, i32 noundef %conv31) #10
  %add.ptr32 = getelementptr i8, ptr %call7.i, i32 4
  tail call void @mt7601u_set_macaddr(ptr noundef %dev, ptr noundef %add.ptr32) #7
  tail call fastcc void @mt7601u_set_chip_cap(ptr noundef %dev, ptr noundef nonnull %call7.i)
  tail call fastcc void @mt7601u_set_channel_power(ptr noundef %dev, ptr noundef nonnull %call7.i)
  tail call fastcc void @mt7601u_set_country_reg(ptr noundef %dev, ptr noundef nonnull %call7.i)
  tail call fastcc void @mt7601u_set_rf_freq_off(ptr noundef %dev, ptr noundef nonnull %call7.i)
  tail call fastcc void @mt7601u_set_rssi_offset(ptr noundef %dev, ptr noundef nonnull %call7.i)
  %arrayidx33 = getelementptr i8, ptr %call7.i, i32 209
  %21 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx33, align 1
  %23 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ee, align 8
  %ref_temp = getelementptr inbounds %struct.mt7601u_eeprom_params, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %ref_temp to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %22, ptr %ref_temp, align 4
  %arrayidx35 = getelementptr i8, ptr %call7.i, i32 68
  %26 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx35, align 4
  %28 = load ptr, ptr %ee, align 8
  %lna_gain = getelementptr inbounds %struct.mt7601u_eeprom_params, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %lna_gain to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %27, ptr %lna_gain, align 1
  tail call fastcc void @mt7601u_config_tx_power_per_rate(ptr noundef %dev, ptr noundef nonnull %call7.i)
  %30 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ee, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 4, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i78 = icmp eq i8 %33, 0
  br i1 %tobool.not.i78, label %do.end26.out_crit_edge, label %if.end.i

do.end26.out_crit_edge:                           ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end.i:                                         ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #9
  %tssi_data.i = getelementptr inbounds %struct.mt7601u_eeprom_params, ptr %31, i32 0, i32 8
  %arrayidx.i79 = getelementptr i8, ptr %call7.i, i32 110
  %34 = ptrtoint ptr %arrayidx.i79 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i79, align 2
  %slope.i = getelementptr inbounds %struct.mt7601u_eeprom_params, ptr %31, i32 0, i32 8, i32 1
  %36 = ptrtoint ptr %slope.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %slope.i, align 4
  %arrayidx2.i = getelementptr i8, ptr %call7.i, i32 118
  %37 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx2.i, align 2
  %conv.i = zext i8 %38 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 10
  %39 = ptrtoint ptr %tssi_data.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %mul.i, ptr %tssi_data.i, align 4
  %arrayidx3.i = getelementptr i8, ptr %call7.i, i32 111
  %40 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx3.i, align 1
  %offset.i = getelementptr inbounds %struct.mt7601u_eeprom_params, ptr %31, i32 0, i32 8, i32 2
  %42 = ptrtoint ptr %offset.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %offset.i, align 1
  %43 = ptrtoint ptr %add.ptr.7 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %add.ptr.7, align 8
  %arrayidx7.i = getelementptr %struct.mt7601u_eeprom_params, ptr %31, i32 0, i32 8, i32 2, i32 1
  %45 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %arrayidx7.i, align 1
  %arrayidx8.i = getelementptr i8, ptr %call7.i, i32 113
  %46 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx8.i, align 1
  %arrayidx10.i = getelementptr %struct.mt7601u_eeprom_params, ptr %31, i32 0, i32 8, i32 2, i32 2
  %48 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %arrayidx10.i, align 1
  br label %out

out:                                              ; preds = %if.end.i, %do.end26.out_crit_edge, %for.cond.15.out_crit_edge, %for.cond.14.out_crit_edge, %for.cond.13.out_crit_edge, %for.cond.12.out_crit_edge, %for.cond.11.out_crit_edge, %for.cond.10.out_crit_edge, %for.cond.9.out_crit_edge, %for.cond.8.out_crit_edge, %for.cond.7.out_crit_edge, %for.cond.6.out_crit_edge, %for.cond.5.out_crit_edge, %for.cond.4.out_crit_edge, %for.cond.3.out_crit_edge, %for.cond.2.out_crit_edge, %for.cond.1.out_crit_edge, %for.cond.preheader.out_crit_edge
  %ret.1 = phi i32 [ 0, %do.end26.out_crit_edge ], [ 0, %if.end.i ], [ %call11, %for.cond.preheader.out_crit_edge ], [ %call11.1, %for.cond.1.out_crit_edge ], [ %call11.2, %for.cond.2.out_crit_edge ], [ %call11.3, %for.cond.3.out_crit_edge ], [ %call11.4, %for.cond.4.out_crit_edge ], [ %call11.5, %for.cond.5.out_crit_edge ], [ %call11.6, %for.cond.6.out_crit_edge ], [ %call11.7, %for.cond.7.out_crit_edge ], [ %call11.8, %for.cond.8.out_crit_edge ], [ %call11.9, %for.cond.9.out_crit_edge ], [ %call11.10, %for.cond.10.out_crit_edge ], [ %call11.11, %for.cond.11.out_crit_edge ], [ %call11.12, %for.cond.12.out_crit_edge ], [ %call11.13, %for.cond.13.out_crit_edge ], [ %call11.14, %for.cond.14.out_crit_edge ], [ %call11.15, %for.cond.15.out_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %mt7601u_efuse_physical_size_check.exit.thread
  %retval.0 = phi i32 [ %ret.1, %out ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ], [ %retval.0.i.ph, %mt7601u_efuse_physical_size_check.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt7601u_efuse_read(ptr noundef %dev, i16 noundef zeroext %addr, ptr nocapture noundef writeonly %data, i32 noundef %mode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @mt7601u_rr(ptr noundef %dev, i32 noundef 36) #7
  %and = and i32 %call.i, -1140785345
  %and5 = zext i16 %addr to i32
  %shl = shl nuw i32 %and5, 16
  %and19 = and i32 %shl, 66060288
  %shl42 = shl i32 %mode, 6
  %and43 = and i32 %shl42, 192
  %or = or i32 %and43, %and19
  %or44 = or i32 %or, %and
  %or45 = or i32 %or44, 1073741824
  tail call void @mt7601u_wr(ptr noundef %dev, i32 noundef 36, i32 noundef %or45) #7
  %call46 = tail call zeroext i1 @mt76_poll(ptr noundef %dev, i32 noundef 36, i32 noundef 1073741824, i32 noundef 0, i32 noundef 1000) #7
  br i1 %call46, label %if.end48, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end48:                                         ; preds = %entry
  %call.i77 = tail call i32 @mt7601u_rr(ptr noundef %dev, i32 noundef 36) #7
  %and50 = and i32 %call.i77, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %and50)
  %cmp = icmp eq i32 %and50, 63
  br i1 %cmp, label %if.then52, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  %call.i78 = tail call i32 @mt7601u_rr(ptr noundef %dev, i32 noundef 40) #7
  %0 = tail call i32 @llvm.bswap.i32(i32 %call.i78) #7
  %1 = ptrtoint ptr %data to i32
  call void @__asan_storeN_noabort(i32 %1, i32 4)
  store i32 %0, ptr %data, align 1
  %call.i78.1 = tail call i32 @mt7601u_rr(ptr noundef %dev, i32 noundef 44) #7
  %add.ptr.1 = getelementptr i8, ptr %data, i32 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %call.i78.1) #7
  %3 = ptrtoint ptr %add.ptr.1 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 %2, ptr %add.ptr.1, align 1
  %call.i78.2 = tail call i32 @mt7601u_rr(ptr noundef %dev, i32 noundef 48) #7
  %add.ptr.2 = getelementptr i8, ptr %data, i32 8
  %4 = tail call i32 @llvm.bswap.i32(i32 %call.i78.2) #7
  %5 = ptrtoint ptr %add.ptr.2 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 %4, ptr %add.ptr.2, align 1
  %call.i78.3 = tail call i32 @mt7601u_rr(ptr noundef %dev, i32 noundef 52) #7
  %add.ptr.3 = getelementptr i8, ptr %data, i32 12
  %6 = tail call i32 @llvm.bswap.i32(i32 %call.i78.3) #7
  %7 = ptrtoint ptr %add.ptr.3 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %6, ptr %add.ptr.3, align 1
  br label %cleanup

if.then52:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  %8 = call ptr @memset(ptr %data, i32 255, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.then52, %for.body.preheader, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then52 ], [ -110, %entry.cleanup_crit_edge ], [ 0, %for.body.preheader ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7601u_set_macaddr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt7601u_set_chip_cap(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %eeprom) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %eeprom, i32 52
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %add.ptr, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1) #7
  %add.ptr1 = getelementptr i8, ptr %eeprom, i32 54
  %3 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %add.ptr1, align 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #7
  %conv3 = trunc i16 %5 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv3)
  %cmp.i.not = icmp eq i8 %conv3, -1
  %spec.select = select i1 %cmp.i.not, i16 0, i16 %5
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %4)
  %tobool.not.i = icmp ne i16 %4, -1
  %6 = and i16 %4, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool4.i = icmp ne i16 %6, 0
  %7 = and i1 %tobool.not.i, %tobool4.i
  %8 = and i16 %spec.select, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not = icmp eq i16 %8, 0
  %9 = select i1 %7, i1 %tobool.not, i1 false
  %ee = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 18
  %10 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ee, align 8
  %frombool = zext i1 %9 to i8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool, ptr %11, align 4
  %13 = and i16 %spec.select, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool14.not = icmp eq i16 %13, 0
  br i1 %tobool14.not, label %entry.if.end17_crit_edge, label %do.end

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev16 = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 1
  %14 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.12) #10
  br label %if.end17

if.end17:                                         ; preds = %do.end, %entry.if.end17_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 -257, i16 %2)
  %cmp.i80.not = icmp ugt i16 %2, -257
  %16 = and i16 %2, 238
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %17 = icmp eq i16 %16, 0
  %or.cond = or i1 %cmp.i80.not, %17
  br i1 %or.cond, label %if.end17.cleanup_crit_edge, label %do.end66

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end66:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %dev67 = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 1
  %18 = ptrtoint ptr %dev67 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev67, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.15) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end66, %if.end17.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt7601u_set_channel_power(ptr noundef %dev, ptr nocapture noundef readonly %eeprom) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mt7601u_rr(ptr noundef %dev, i32 noundef 5040) #7
  %and = lshr i32 %call, 16
  %0 = trunc i32 %and to i8
  %conv = and i8 %0, 63
  %add.ptr.i = getelementptr i8, ptr %eeprom, i32 54
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %1, i32 2)
  %2 = load i16, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %2)
  %tobool.not.i = icmp ne i16 %2, -1
  %3 = and i16 %2, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool4.i = icmp ne i16 %3, 0
  %4 = and i1 %tobool.not.i, %tobool4.i
  br i1 %4, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ee = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 18
  %arrayidx = getelementptr i8, ptr %eeprom, i32 82
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %cmp.i.not.i = icmp eq i8 %6, -1
  %val..i = select i1 %cmp.i.not.i, i8 0, i8 %6
  call void @__sanitizer_cov_trace_cmp1(i8 %val..i, i8 %conv)
  %7 = icmp ugt i8 %val..i, %conv
  %power.0 = select i1 %7, i8 6, i8 %val..i
  %8 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ee, align 8
  %arrayidx25 = getelementptr %struct.mt7601u_eeprom_params, ptr %9, i32 0, i32 5, i32 0
  %10 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %power.0, ptr %arrayidx25, align 1
  %arrayidx.1 = getelementptr i8, ptr %eeprom, i32 83
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %cmp.i.not.i.1 = icmp eq i8 %12, -1
  %val..i.1 = select i1 %cmp.i.not.i.1, i8 0, i8 %12
  call void @__sanitizer_cov_trace_cmp1(i8 %val..i.1, i8 %conv)
  %13 = icmp ugt i8 %val..i.1, %conv
  %power.0.1 = select i1 %13, i8 6, i8 %val..i.1
  %14 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ee, align 8
  %arrayidx25.1 = getelementptr %struct.mt7601u_eeprom_params, ptr %15, i32 0, i32 5, i32 1
  %16 = ptrtoint ptr %arrayidx25.1 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %power.0.1, ptr %arrayidx25.1, align 1
  %arrayidx.2 = getelementptr i8, ptr %eeprom, i32 84
  %17 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %18)
  %cmp.i.not.i.2 = icmp eq i8 %18, -1
  %val..i.2 = select i1 %cmp.i.not.i.2, i8 0, i8 %18
  call void @__sanitizer_cov_trace_cmp1(i8 %val..i.2, i8 %conv)
  %19 = icmp ugt i8 %val..i.2, %conv
  %power.0.2 = select i1 %19, i8 6, i8 %val..i.2
  %20 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ee, align 8
  %arrayidx25.2 = getelementptr %struct.mt7601u_eeprom_params, ptr %21, i32 0, i32 5, i32 2
  %22 = ptrtoint ptr %arrayidx25.2 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %power.0.2, ptr %arrayidx25.2, align 1
  %arrayidx.3 = getelementptr i8, ptr %eeprom, i32 85
  %23 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %24)
  %cmp.i.not.i.3 = icmp eq i8 %24, -1
  %val..i.3 = select i1 %cmp.i.not.i.3, i8 0, i8 %24
  call void @__sanitizer_cov_trace_cmp1(i8 %val..i.3, i8 %conv)
  %25 = icmp ugt i8 %val..i.3, %conv
  %power.0.3 = select i1 %25, i8 6, i8 %val..i.3
  %26 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ee, align 8
  %arrayidx25.3 = getelementptr %struct.mt7601u_eeprom_params, ptr %27, i32 0, i32 5, i32 3
  %28 = ptrtoint ptr %arrayidx25.3 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %power.0.3, ptr %arrayidx25.3, align 1
  %arrayidx.4 = getelementptr i8, ptr %eeprom, i32 86
  %29 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %30)
  %cmp.i.not.i.4 = icmp eq i8 %30, -1
  %val..i.4 = select i1 %cmp.i.not.i.4, i8 0, i8 %30
  call void @__sanitizer_cov_trace_cmp1(i8 %val..i.4, i8 %conv)
  %31 = icmp ugt i8 %val..i.4, %conv
  %power.0.4 = select i1 %31, i8 6, i8 %val..i.4
  %32 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ee, align 8
  %arrayidx25.4 = getelementptr %struct.mt7601u_eeprom_params, ptr %33, i32 0, i32 5, i32 4
  %34 = ptrtoint ptr %arrayidx25.4 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %power.0.4, ptr %arrayidx25.4, align 1
  %arrayidx.5 = getelementptr i8, ptr %eeprom, i32 87
  %35 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %36)
  %cmp.i.not.i.5 = icmp eq i8 %36, -1
  %val..i.5 = select i1 %cmp.i.not.i.5, i8 0, i8 %36
  call void @__sanitizer_cov_trace_cmp1(i8 %val..i.5, i8 %conv)
  %37 = icmp ugt i8 %val..i.5, %conv
  %power.0.5 = select i1 %37, i8 6, i8 %val..i.5
  %38 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ee, align 8
  %arrayidx25.5 = getelementptr %struct.mt7601u_eeprom_params, ptr %39, i32 0, i32 5, i32 5
  %40 = ptrtoint ptr %arrayidx25.5 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %power.0.5, ptr %arrayidx25.5, align 1
  %arrayidx.6 = getelementptr i8, ptr %eeprom, i32 88
  %41 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %42)
  %cmp.i.not.i.6 = icmp eq i8 %42, -1
  %val..i.6 = select i1 %cmp.i.not.i.6, i8 0, i8 %42
  call void @__sanitizer_cov_trace_cmp1(i8 %val..i.6, i8 %conv)
  %43 = icmp ugt i8 %val..i.6, %conv
  %power.0.6 = select i1 %43, i8 6, i8 %val..i.6
  %44 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ee, align 8
  %arrayidx25.6 = getelementptr %struct.mt7601u_eeprom_params, ptr %45, i32 0, i32 5, i32 6
  %46 = ptrtoint ptr %arrayidx25.6 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %power.0.6, ptr %arrayidx25.6, align 1
  %arrayidx.7 = getelementptr i8, ptr %eeprom, i32 89
  %47 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %48)
  %cmp.i.not.i.7 = icmp eq i8 %48, -1
  %val..i.7 = select i1 %cmp.i.not.i.7, i8 0, i8 %48
  call void @__sanitizer_cov_trace_cmp1(i8 %val..i.7, i8 %conv)
  %49 = icmp ugt i8 %val..i.7, %conv
  %power.0.7 = select i1 %49, i8 6, i8 %val..i.7
  %50 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ee, align 8
  %arrayidx25.7 = getelementptr %struct.mt7601u_eeprom_params, ptr %51, i32 0, i32 5, i32 7
  %52 = ptrtoint ptr %arrayidx25.7 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %power.0.7, ptr %arrayidx25.7, align 1
  %arrayidx.8 = getelementptr i8, ptr %eeprom, i32 90
  %53 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %54)
  %cmp.i.not.i.8 = icmp eq i8 %54, -1
  %val..i.8 = select i1 %cmp.i.not.i.8, i8 0, i8 %54
  call void @__sanitizer_cov_trace_cmp1(i8 %val..i.8, i8 %conv)
  %55 = icmp ugt i8 %val..i.8, %conv
  %power.0.8 = select i1 %55, i8 6, i8 %val..i.8
  %56 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ee, align 8
  %arrayidx25.8 = getelementptr %struct.mt7601u_eeprom_params, ptr %57, i32 0, i32 5, i32 8
  %58 = ptrtoint ptr %arrayidx25.8 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %power.0.8, ptr %arrayidx25.8, align 1
  %arrayidx.9 = getelementptr i8, ptr %eeprom, i32 91
  %59 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %60)
  %cmp.i.not.i.9 = icmp eq i8 %60, -1
  %val..i.9 = select i1 %cmp.i.not.i.9, i8 0, i8 %60
  call void @__sanitizer_cov_trace_cmp1(i8 %val..i.9, i8 %conv)
  %61 = icmp ugt i8 %val..i.9, %conv
  %power.0.9 = select i1 %61, i8 6, i8 %val..i.9
  %62 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ee, align 8
  %arrayidx25.9 = getelementptr %struct.mt7601u_eeprom_params, ptr %63, i32 0, i32 5, i32 9
  %64 = ptrtoint ptr %arrayidx25.9 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %power.0.9, ptr %arrayidx25.9, align 1
  %arrayidx.10 = getelementptr i8, ptr %eeprom, i32 92
  %65 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx.10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %66)
  %cmp.i.not.i.10 = icmp eq i8 %66, -1
  %val..i.10 = select i1 %cmp.i.not.i.10, i8 0, i8 %66
  call void @__sanitizer_cov_trace_cmp1(i8 %val..i.10, i8 %conv)
  %67 = icmp ugt i8 %val..i.10, %conv
  %power.0.10 = select i1 %67, i8 6, i8 %val..i.10
  %68 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ee, align 8
  %arrayidx25.10 = getelementptr %struct.mt7601u_eeprom_params, ptr %69, i32 0, i32 5, i32 10
  %70 = ptrtoint ptr %arrayidx25.10 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %power.0.10, ptr %arrayidx25.10, align 1
  %arrayidx.11 = getelementptr i8, ptr %eeprom, i32 93
  %71 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx.11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %72)
  %cmp.i.not.i.11 = icmp eq i8 %72, -1
  %val..i.11 = select i1 %cmp.i.not.i.11, i8 0, i8 %72
  call void @__sanitizer_cov_trace_cmp1(i8 %val..i.11, i8 %conv)
  %73 = icmp ugt i8 %val..i.11, %conv
  %power.0.11 = select i1 %73, i8 6, i8 %val..i.11
  %74 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ee, align 8
  %arrayidx25.11 = getelementptr %struct.mt7601u_eeprom_params, ptr %75, i32 0, i32 5, i32 11
  %76 = ptrtoint ptr %arrayidx25.11 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %power.0.11, ptr %arrayidx25.11, align 1
  %arrayidx.12 = getelementptr i8, ptr %eeprom, i32 94
  %77 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx.12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %78)
  %cmp.i.not.i.12 = icmp eq i8 %78, -1
  %val..i.12 = select i1 %cmp.i.not.i.12, i8 0, i8 %78
  call void @__sanitizer_cov_trace_cmp1(i8 %val..i.12, i8 %conv)
  %79 = icmp ugt i8 %val..i.12, %conv
  %power.0.12 = select i1 %79, i8 6, i8 %val..i.12
  %80 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ee, align 8
  %arrayidx25.12 = getelementptr %struct.mt7601u_eeprom_params, ptr %81, i32 0, i32 5, i32 12
  %82 = ptrtoint ptr %arrayidx25.12 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %power.0.12, ptr %arrayidx25.12, align 1
  %arrayidx.13 = getelementptr i8, ptr %eeprom, i32 95
  %83 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx.13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %84)
  %cmp.i.not.i.13 = icmp eq i8 %84, -1
  %val..i.13 = select i1 %cmp.i.not.i.13, i8 0, i8 %84
  call void @__sanitizer_cov_trace_cmp1(i8 %val..i.13, i8 %conv)
  %85 = icmp ugt i8 %val..i.13, %conv
  %power.0.13 = select i1 %85, i8 6, i8 %val..i.13
  %86 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ee, align 8
  %arrayidx25.13 = getelementptr %struct.mt7601u_eeprom_params, ptr %87, i32 0, i32 5, i32 13
  %88 = ptrtoint ptr %arrayidx25.13 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %power.0.13, ptr %arrayidx25.13, align 1
  br label %cleanup

if.then:                                          ; preds = %entry
  %arrayidx.i = getelementptr i8, ptr %eeprom, i32 208
  %89 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx.i, align 1
  %91 = add i8 %90, -1
  call void @__sanitizer_cov_trace_cmp1(i8 %91, i8 %conv)
  %.not.i = icmp ult i8 %91, %conv
  br i1 %.not.i, label %if.then.mt7601u_set_channel_target_power.exit_crit_edge, label %do.end.i

if.then.mt7601u_set_channel_target_power.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7601u_set_channel_target_power.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = zext i8 %90 to i32
  %dev3.i = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 1
  %92 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev3.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %93, ptr noundef nonnull @.str.17, i32 noundef %conv.i) #10
  br label %mt7601u_set_channel_target_power.exit

mt7601u_set_channel_target_power.exit:            ; preds = %do.end.i, %if.then.mt7601u_set_channel_target_power.exit_crit_edge
  %trgt_pwr.0.i = phi i8 [ 32, %do.end.i ], [ %90, %if.then.mt7601u_set_channel_target_power.exit_crit_edge ]
  %ee.i = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 18
  %94 = ptrtoint ptr %ee.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ee.i, align 8
  %chan_pwr.i = getelementptr inbounds %struct.mt7601u_eeprom_params, ptr %95, i32 0, i32 5
  %96 = zext i8 %trgt_pwr.0.i to i32
  %97 = call ptr @memset(ptr %chan_pwr.i, i32 %96, i32 14)
  br label %cleanup

cleanup:                                          ; preds = %mt7601u_set_channel_target_power.exit, %for.cond.preheader
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt7601u_set_country_reg(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %eeprom) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %eeprom, i32 57
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %1)
  %cmp = icmp ult i8 %1, 8
  %spec.select = select i1 %cmp, i32 %conv, i32 -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %1)
  %cmp7 = icmp eq i8 %1, 32
  %idx.1 = select i1 %cmp7, i32 8, i32 %spec.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %idx.1)
  %cmp12.not = icmp eq i32 %idx.1, -1
  br i1 %cmp12.not, label %entry.if.end26_crit_edge, label %do.end

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev15 = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev15, align 4
  %arrayidx17 = getelementptr [10 x %struct.reg_channel_bounds], ptr @mt7601u_set_country_reg.chan_bounds, i32 0, i32 %idx.1
  %4 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %5 to i32
  %num = getelementptr [10 x %struct.reg_channel_bounds], ptr @mt7601u_set_country_reg.chan_bounds, i32 0, i32 %idx.1, i32 1
  %6 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num, align 1
  %conv23 = zext i8 %7 to i32
  %add24 = add nsw i32 %conv18, -1
  %sub25 = add nsw i32 %add24, %conv23
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.19, i32 noundef %conv, i32 noundef %conv18, i32 noundef %sub25) #10
  br label %if.end26

if.end26:                                         ; preds = %do.end, %entry.if.end26_crit_edge
  %idx.2 = phi i32 [ %idx.1, %do.end ], [ 5, %entry.if.end26_crit_edge ]
  %ee = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 18
  %8 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ee, align 8
  %reg = getelementptr inbounds %struct.mt7601u_eeprom_params, ptr %9, i32 0, i32 9
  %arrayidx27 = getelementptr [10 x %struct.reg_channel_bounds], ptr @mt7601u_set_country_reg.chan_bounds, i32 0, i32 %idx.2
  %10 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %arrayidx27, align 1
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %reg, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @mt7601u_set_rf_freq_off(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %eeprom) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %eeprom, i32 58
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %cmp.i.not.i = icmp eq i8 %1, -1
  %val..i = select i1 %cmp.i.not.i, i8 0, i8 %1
  %ee = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 18
  %2 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ee, align 8
  %rf_freq_off = getelementptr inbounds %struct.mt7601u_eeprom_params, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %rf_freq_off to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %val..i, ptr %rf_freq_off, align 1
  %arrayidx1 = getelementptr i8, ptr %eeprom, i32 219
  %5 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %cmp.i.not.i19 = icmp eq i8 %6, -1
  %val..i20 = select i1 %cmp.i.not.i19, i8 0, i8 %6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %val..i20)
  %tobool.not = icmp sgt i8 %val..i20, -1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and4 = and i8 %val..i20, 127
  %7 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ee, align 8
  %rf_freq_off6 = getelementptr inbounds %struct.mt7601u_eeprom_params, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %rf_freq_off6 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %rf_freq_off6, align 1
  %sub = sub i8 %10, %and4
  store i8 %sub, ptr %rf_freq_off6, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ee, align 8
  %rf_freq_off11 = getelementptr inbounds %struct.mt7601u_eeprom_params, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %rf_freq_off11 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %rf_freq_off11, align 1
  %add = add i8 %14, %val..i20
  store i8 %add, ptr %rf_freq_off11, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt7601u_set_rssi_offset(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %eeprom) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ee = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ee, align 8
  %rssi_offset1 = getelementptr inbounds %struct.mt7601u_eeprom_params, ptr %1, i32 0, i32 2
  %dev10 = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 1
  %arrayidx = getelementptr i8, ptr %eeprom, i32 70
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = ptrtoint ptr %rssi_offset1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %rssi_offset1, align 1
  %5 = add i8 %3, -11
  call void @__sanitizer_cov_trace_const_cmp1(i8 -21, i8 %5)
  %6 = icmp ult i8 %5, -21
  br i1 %6, label %do.end, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev10, align 4
  %conv12 = sext i8 %3 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.21, i32 noundef %conv12) #10
  %9 = ptrtoint ptr %rssi_offset1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %rssi_offset1, align 1
  br label %for.inc

for.inc:                                          ; preds = %do.end, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr i8, ptr %eeprom, i32 71
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.1, align 1
  %arrayidx2.1 = getelementptr %struct.mt7601u_eeprom_params, ptr %1, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %arrayidx2.1, align 1
  %13 = add i8 %11, -11
  call void @__sanitizer_cov_trace_const_cmp1(i8 -21, i8 %13)
  %14 = icmp ult i8 %13, -21
  br i1 %14, label %do.end.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

do.end.1:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev10, align 4
  %conv12.1 = sext i8 %11 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.21, i32 noundef %conv12.1) #10
  %17 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %arrayidx2.1, align 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %do.end.1, %for.inc.for.inc.1_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt7601u_config_tx_power_per_rate(ptr noundef %dev, ptr nocapture noundef readonly %eeprom) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %eeprom, i32 80
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %cmp.i.not.i = icmp eq i8 %1, -1
  br i1 %cmp.i.not.i, label %entry.get_delta.exit_crit_edge, label %lor.lhs.false.i

entry.get_delta.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_delta.exit

lor.lhs.false.i:                                  ; preds = %entry
  %conv.i = zext i8 %1 to i32
  %and.i = and i32 %conv.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.get_delta.exit_crit_edge, label %if.end.i

lor.lhs.false.i.get_delta.exit_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_delta.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  %and2.i = and i8 %1, 31
  %2 = tail call i8 @llvm.umin.i8(i8 %and2.i, i8 8) #7
  %and9.i = and i32 %conv.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  %sub.i = sub nsw i8 0, %2
  %spec.select.i = select i1 %tobool10.not.i, i8 %2, i8 %sub.i
  br label %get_delta.exit

get_delta.exit:                                   ; preds = %if.end.i, %lor.lhs.false.i.get_delta.exit_crit_edge, %entry.get_delta.exit_crit_edge
  %retval.0.i = phi i8 [ %spec.select.i, %if.end.i ], [ 0, %lor.lhs.false.i.get_delta.exit_crit_edge ], [ 0, %entry.get_delta.exit_crit_edge ]
  %ee.i = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %get_delta.exit
  %i.016 = phi i32 [ 0, %get_delta.exit ], [ %inc, %for.inc.for.body_crit_edge ]
  %mul = shl i32 %i.016, 2
  %add = add nuw nsw i32 %mul, 222
  %add.ptr = getelementptr i8, ptr %eeprom, i32 %add
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %add.ptr, align 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  %6 = ptrtoint ptr %ee.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ee.i, align 8
  %8 = zext i32 %i.016 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %i.016, label %for.body.mt7601u_save_power_rate.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb25.i
    i32 2, label %sw.bb45.i
  ]

for.body.mt7601u_save_power_rate.exit_crit_edge:  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7601u_save_power_rate.exit

sw.bb.i:                                          ; preds = %for.body
  %power_rate_table.i = getelementptr inbounds %struct.mt7601u_eeprom_params, ptr %7, i32 0, i32 6
  %conv.i13 = trunc i32 %5 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv.i13)
  %cmp.i.i = icmp eq i8 %conv.i13, -1
  br i1 %cmp.i.i, label %sw.bb.i.mt7601u_set_power_rate.exit.i_crit_edge, label %if.end.i.i

sw.bb.i.mt7601u_set_power_rate.exit.i_crit_edge:  ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7601u_set_power_rate.exit.i

if.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %conv.i13)
  %tobool.not.i.i.i = icmp ult i8 %conv.i13, 64
  br i1 %tobool.not.i.i.i, label %s6_validate.exit.thread.i.i, label %do.end.i.i.i.i, !prof !57

s6_validate.exit.thread.i.i:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i = and i32 %5, 255
  %9 = ptrtoint ptr %power_rate_table.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv.i13, ptr %power_rate_table.i, align 1
  br label %s6_to_int.exit.i.i

do.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 118, i32 noundef 9, ptr noundef null) #7
  %and20.i.i.i = and i32 %5, 63
  %conv3.i.i = trunc i32 %and20.i.i.i to i8
  %10 = ptrtoint ptr %power_rate_table.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv3.i.i, ptr %power_rate_table.i, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 118, i32 noundef 9, ptr noundef null) #7
  br label %s6_to_int.exit.i.i

s6_to_int.exit.i.i:                               ; preds = %do.end.i.i.i.i, %s6_validate.exit.thread.i.i
  %and20.i20.i.i = phi i32 [ %conv.i.i, %s6_validate.exit.thread.i.i ], [ %and20.i.i.i, %do.end.i.i.i.i ]
  %and.i.i.i = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i17.i.i = icmp eq i32 %and.i.i.i, 0
  %masksel.i.i.i = select i1 %tobool.not.i17.i.i, i32 0, i32 192
  %spec.select.i.i.i = or i32 %and20.i20.i.i, %masksel.i.i.i
  %conv6.i.i = trunc i32 %spec.select.i.i.i to i8
  %bw20.i.i = getelementptr inbounds %struct.mt7601u_eeprom_params, ptr %7, i32 0, i32 6, i32 0, i32 0, i32 1
  %11 = ptrtoint ptr %bw20.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv6.i.i, ptr %bw20.i.i, align 1
  %conv10.i.i = add i8 %retval.0.i, %conv6.i.i
  %bw40.i.i = getelementptr inbounds %struct.mt7601u_eeprom_params, ptr %7, i32 0, i32 6, i32 0, i32 0, i32 2
  %12 = ptrtoint ptr %bw40.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv10.i.i, ptr %bw40.i.i, align 1
  br label %mt7601u_set_power_rate.exit.i

mt7601u_set_power_rate.exit.i:                    ; preds = %s6_to_int.exit.i.i, %sw.bb.i.mt7601u_set_power_rate.exit.i_crit_edge
  %arrayidx2.i = getelementptr %struct.mt7601u_eeprom_params, ptr %7, i32 0, i32 6, i32 0, i32 1
  %shr3.i = lshr i32 %5, 8
  %conv5.i = trunc i32 %shr3.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv5.i)
  %cmp.i87.i = icmp eq i8 %conv5.i, -1
  br i1 %cmp.i87.i, label %mt7601u_set_power_rate.exit.i.mt7601u_set_power_rate.exit105.i_crit_edge, label %if.end.i90.i

mt7601u_set_power_rate.exit.i.mt7601u_set_power_rate.exit105.i_crit_edge: ; preds = %mt7601u_set_power_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7601u_set_power_rate.exit105.i

if.end.i90.i:                                     ; preds = %mt7601u_set_power_rate.exit.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %conv5.i)
  %tobool.not.i.i89.i = icmp ult i8 %conv5.i, 64
  br i1 %tobool.not.i.i89.i, label %s6_validate.exit.thread.i91.i, label %do.end.i.i.i94.i, !prof !57

s6_validate.exit.thread.i91.i:                    ; preds = %if.end.i90.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i88.i = and i32 %shr3.i, 255
  %13 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv5.i, ptr %arrayidx2.i, align 1
  br label %s6_to_int.exit.i104.i

do.end.i.i.i94.i:                                 ; preds = %if.end.i90.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 118, i32 noundef 9, ptr noundef null) #7
  %and20.i.i92.i = and i32 %shr3.i, 63
  %conv3.i93.i = trunc i32 %and20.i.i92.i to i8
  %14 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv3.i93.i, ptr %arrayidx2.i, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 118, i32 noundef 9, ptr noundef null) #7
  br label %s6_to_int.exit.i104.i

s6_to_int.exit.i104.i:                            ; preds = %do.end.i.i.i94.i, %s6_validate.exit.thread.i91.i
  %and20.i20.i95.i = phi i32 [ %conv.i88.i, %s6_validate.exit.thread.i91.i ], [ %and20.i.i92.i, %do.end.i.i.i94.i ]
  %15 = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i17.i97.i = icmp eq i32 %15, 0
  %masksel.i.i98.i = select i1 %tobool.not.i17.i97.i, i32 0, i32 192
  %spec.select.i.i99.i = or i32 %and20.i20.i95.i, %masksel.i.i98.i
  %conv6.i100.i = trunc i32 %spec.select.i.i99.i to i8
  %bw20.i101.i = getelementptr %struct.mt7601u_eeprom_params, ptr %7, i32 0, i32 6, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %bw20.i101.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv6.i100.i, ptr %bw20.i101.i, align 1
  %conv10.i102.i = add i8 %retval.0.i, %conv6.i100.i
  %bw40.i103.i = getelementptr %struct.mt7601u_eeprom_params, ptr %7, i32 0, i32 6, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %bw40.i103.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv10.i102.i, ptr %bw40.i103.i, align 1
  br label %mt7601u_set_power_rate.exit105.i

mt7601u_set_power_rate.exit105.i:                 ; preds = %s6_to_int.exit.i104.i, %mt7601u_set_power_rate.exit.i.mt7601u_set_power_rate.exit105.i_crit_edge
  %bw20.i = getelementptr inbounds %struct.mt7601u_eeprom_params, ptr %7, i32 0, i32 6, i32 0, i32 0, i32 1
  %18 = ptrtoint ptr %bw20.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bw20.i, align 1
  %20 = ptrtoint ptr %ee.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ee.i, align 8
  %real_cck_bw20.i = getelementptr inbounds %struct.mt7601u_eeprom_params, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %real_cck_bw20.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %19, ptr %real_cck_bw20.i, align 2
  %bw2012.i = getelementptr %struct.mt7601u_eeprom_params, ptr %7, i32 0, i32 6, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %bw2012.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bw2012.i, align 1
  %25 = load ptr, ptr %ee.i, align 8
  %arrayidx15.i = getelementptr %struct.mt7601u_eeprom_params, ptr %25, i32 0, i32 7, i32 1
  %26 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %24, ptr %arrayidx15.i, align 1
  %ofdm.i = getelementptr inbounds %struct.mt7601u_eeprom_params, ptr %7, i32 0, i32 6, i32 1
  %shr17.i = lshr i32 %5, 16
  %conv19.i = trunc i32 %shr17.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv19.i)
  %cmp.i106.i = icmp eq i8 %conv19.i, -1
  br i1 %cmp.i106.i, label %mt7601u_set_power_rate.exit105.i.mt7601u_set_power_rate.exit124.i_crit_edge, label %if.end.i109.i

mt7601u_set_power_rate.exit105.i.mt7601u_set_power_rate.exit124.i_crit_edge: ; preds = %mt7601u_set_power_rate.exit105.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7601u_set_power_rate.exit124.i

if.end.i109.i:                                    ; preds = %mt7601u_set_power_rate.exit105.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %conv19.i)
  %tobool.not.i.i108.i = icmp ult i8 %conv19.i, 64
  br i1 %tobool.not.i.i108.i, label %s6_validate.exit.thread.i110.i, label %do.end.i.i.i113.i, !prof !57

s6_validate.exit.thread.i110.i:                   ; preds = %if.end.i109.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i107.i = and i32 %shr17.i, 255
  %27 = ptrtoint ptr %ofdm.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv19.i, ptr %ofdm.i, align 1
  br label %s6_to_int.exit.i123.i

do.end.i.i.i113.i:                                ; preds = %if.end.i109.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 118, i32 noundef 9, ptr noundef null) #7
  %and20.i.i111.i = and i32 %shr17.i, 63
  %conv3.i112.i = trunc i32 %and20.i.i111.i to i8
  %28 = ptrtoint ptr %ofdm.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv3.i112.i, ptr %ofdm.i, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 118, i32 noundef 9, ptr noundef null) #7
  br label %s6_to_int.exit.i123.i

s6_to_int.exit.i123.i:                            ; preds = %do.end.i.i.i113.i, %s6_validate.exit.thread.i110.i
  %and20.i20.i114.i = phi i32 [ %conv.i107.i, %s6_validate.exit.thread.i110.i ], [ %and20.i.i111.i, %do.end.i.i.i113.i ]
  %29 = and i32 %5, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i17.i116.i = icmp eq i32 %29, 0
  %masksel.i.i117.i = select i1 %tobool.not.i17.i116.i, i32 0, i32 192
  %spec.select.i.i118.i = or i32 %and20.i20.i114.i, %masksel.i.i117.i
  %conv6.i119.i = trunc i32 %spec.select.i.i118.i to i8
  %bw20.i120.i = getelementptr inbounds %struct.mt7601u_eeprom_params, ptr %7, i32 0, i32 6, i32 1, i32 0, i32 1
  %30 = ptrtoint ptr %bw20.i120.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv6.i119.i, ptr %bw20.i120.i, align 1
  %conv10.i121.i = add i8 %retval.0.i, %conv6.i119.i
  %bw40.i122.i = getelementptr inbounds %struct.mt7601u_eeprom_params, ptr %7, i32 0, i32 6, i32 1, i32 0, i32 2
  %31 = ptrtoint ptr %bw40.i122.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv10.i121.i, ptr %bw40.i122.i, align 1
  br label %mt7601u_set_power_rate.exit124.i

mt7601u_set_power_rate.exit124.i:                 ; preds = %s6_to_int.exit.i123.i, %mt7601u_set_power_rate.exit105.i.mt7601u_set_power_rate.exit124.i_crit_edge
  %arrayidx21.i = getelementptr %struct.mt7601u_eeprom_params, ptr %7, i32 0, i32 6, i32 1, i32 1
  %shr22.i = lshr i32 %5, 24
  %conv24.i = trunc i32 %shr22.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv24.i)
  %cmp.i125.i = icmp eq i8 %conv24.i, -1
  br i1 %cmp.i125.i, label %mt7601u_set_power_rate.exit124.i.mt7601u_save_power_rate.exit_crit_edge, label %if.end.i128.i

mt7601u_set_power_rate.exit124.i.mt7601u_save_power_rate.exit_crit_edge: ; preds = %mt7601u_set_power_rate.exit124.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7601u_save_power_rate.exit

if.end.i128.i:                                    ; preds = %mt7601u_set_power_rate.exit124.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %conv24.i)
  %tobool.not.i.i127.i = icmp ult i8 %conv24.i, 64
  br i1 %tobool.not.i.i127.i, label %s6_validate.exit.thread.i129.i, label %do.end.i.i.i132.i, !prof !57

s6_validate.exit.thread.i129.i:                   ; preds = %if.end.i128.i
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv24.i, ptr %arrayidx21.i, align 1
  br label %s6_to_int.exit.i142.i

do.end.i.i.i132.i:                                ; preds = %if.end.i128.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 118, i32 noundef 9, ptr noundef null) #7
  %and20.i.i130.i = and i32 %shr22.i, 63
  %conv3.i131.i = trunc i32 %and20.i.i130.i to i8
  %33 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv3.i131.i, ptr %arrayidx21.i, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 118, i32 noundef 9, ptr noundef null) #7
  br label %s6_to_int.exit.i142.i

s6_to_int.exit.i142.i:                            ; preds = %do.end.i.i.i132.i, %s6_validate.exit.thread.i129.i
  %and20.i20.i133.i = phi i32 [ %shr22.i, %s6_validate.exit.thread.i129.i ], [ %and20.i.i130.i, %do.end.i.i.i132.i ]
  %34 = and i32 %5, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i17.i135.i = icmp eq i32 %34, 0
  %masksel.i.i136.i = select i1 %tobool.not.i17.i135.i, i32 0, i32 192
  %spec.select.i.i137.i = or i32 %and20.i20.i133.i, %masksel.i.i136.i
  %conv6.i138.i = trunc i32 %spec.select.i.i137.i to i8
  %bw20.i139.i = getelementptr %struct.mt7601u_eeprom_params, ptr %7, i32 0, i32 6, i32 1, i32 1, i32 1
  %35 = ptrtoint ptr %bw20.i139.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv6.i138.i, ptr %bw20.i139.i, align 1
  %conv10.i140.i = add i8 %retval.0.i, %conv6.i138.i
  %bw40.i141.i = getelementptr %struct.mt7601u_eeprom_params, ptr %7, i32 0, i32 6, i32 1, i32 1, i32 2
  %36 = ptrtoint ptr %bw40.i141.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv10.i140.i, ptr %bw40.i141.i, align 1
  br label %mt7601u_save_power_rate.exit

sw.bb25.i:                                        ; preds = %for.body
  %arrayidx27.i = getelementptr %struct.mt7601u_eeprom_params, ptr %7, i32 0, i32 6, i32 1, i32 2
  %conv30.i = trunc i32 %5 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv30.i)
  %cmp.i144.i = icmp eq i8 %conv30.i, -1
  br i1 %cmp.i144.i, label %sw.bb25.i.mt7601u_set_power_rate.exit162.i_crit_edge, label %if.end.i147.i

sw.bb25.i.mt7601u_set_power_rate.exit162.i_crit_edge: ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7601u_set_power_rate.exit162.i

if.end.i147.i:                                    ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %conv30.i)
  %tobool.not.i.i146.i = icmp ult i8 %conv30.i, 64
  br i1 %tobool.not.i.i146.i, label %s6_validate.exit.thread.i148.i, label %do.end.i.i.i151.i, !prof !57

s6_validate.exit.thread.i148.i:                   ; preds = %if.end.i147.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i145.i = and i32 %5, 255
  %37 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv30.i, ptr %arrayidx27.i, align 1
  br label %s6_to_int.exit.i161.i

do.end.i.i.i151.i:                                ; preds = %if.end.i147.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 118, i32 noundef 9, ptr noundef null) #7
  %and20.i.i149.i = and i32 %5, 63
  %conv3.i150.i = trunc i32 %and20.i.i149.i to i8
  %38 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv3.i150.i, ptr %arrayidx27.i, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 118, i32 noundef 9, ptr noundef null) #7
  br label %s6_to_int.exit.i161.i

s6_to_int.exit.i161.i:                            ; preds = %do.end.i.i.i151.i, %s6_validate.exit.thread.i148.i
  %and20.i20.i152.i = phi i32 [ %conv.i145.i, %s6_validate.exit.thread.i148.i ], [ %and20.i.i149.i, %do.end.i.i.i151.i ]
  %and.i.i153.i = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i153.i)
  %tobool.not.i17.i154.i = icmp eq i32 %and.i.i153.i, 0
  %masksel.i.i155.i = select i1 %tobool.not.i17.i154.i, i32 0, i32 192
  %spec.select.i.i156.i = or i32 %and20.i20.i152.i, %masksel.i.i155.i
  %conv6.i157.i = trunc i32 %spec.select.i.i156.i to i8
  %bw20.i158.i = getelementptr %struct.mt7601u_eeprom_params, ptr %7, i32 0, i32 6, i32 1, i32 2, i32 1
  %39 = ptrtoint ptr %bw20.i158.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv6.i157.i, ptr %bw20.i158.i, align 1
  %conv10.i159.i = add i8 %retval.0.i, %conv6.i157.i
  %bw40.i160.i = getelementptr %struct.mt7601u_eeprom_params, ptr %7, i32 0, i32 6, i32 1, i32 2, i32 2
  %40 = ptrtoint ptr %bw40.i160.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv10.i159.i, ptr %bw40.i160.i, align 1
  br label %mt7601u_set_power_rate.exit162.i

mt7601u_set_power_rate.exit162.i:                 ; preds = %s6_to_int.exit.i161.i, %sw.bb25.i.mt7601u_set_power_rate.exit162.i_crit_edge
  %arrayidx32.i = getelementptr %struct.mt7601u_eeprom_params, ptr %7, i32 0, i32 6, i32 1, i32 3
  %shr33.i = lshr i32 %5, 8
  %conv35.i = trunc i32 %shr33.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv35.i)
  %cmp.i163.i = icmp eq i8 %conv35.i, -1
  br i1 %cmp.i163.i, label %mt7601u_set_power_rate.exit162.i.mt7601u_set_power_rate.exit181.i_crit_edge, label %if.end.i166.i

mt7601u_set_power_rate.exit162.i.mt7601u_set_power_rate.exit181.i_crit_edge: ; preds = %mt7601u_set_power_rate.exit162.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7601u_set_power_rate.exit181.i

if.end.i166.i:                                    ; preds = %mt7601u_set_power_rate.exit162.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %conv35.i)
  %tobool.not.i.i165.i = icmp ult i8 %conv35.i, 64
  br i1 %tobool.not.i.i165.i, label %s6_validate.exit.thread.i167.i, label %do.end.i.i.i170.i, !prof !57

s6_validate.exit.thread.i167.i:                   ; preds = %if.end.i166.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i164.i = and i32 %shr33.i, 255
  %41 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv35.i, ptr %arrayidx32.i, align 1
  br label %s6_to_int.exit.i180.i

do.end.i.i.i170.i:                                ; preds = %if.end.i166.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 118, i32 noundef 9, ptr noundef null) #7
  %and20.i.i168.i = and i32 %shr33.i, 63
  %conv3.i169.i = trunc i32 %and20.i.i168.i to i8
  %42 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv3.i169.i, ptr %arrayidx32.i, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 118, i32 noundef 9, ptr noundef null) #7
  br label %s6_to_int.exit.i180.i

s6_to_int.exit.i180.i:                            ; preds = %do.end.i.i.i170.i, %s6_validate.exit.thread.i167.i
  %and20.i20.i171.i = phi i32 [ %conv.i164.i, %s6_validate.exit.thread.i167.i ], [ %and20.i.i168.i, %do.end.i.i.i170.i ]
  %43 = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i17.i173.i = icmp eq i32 %43, 0
  %masksel.i.i174.i = select i1 %tobool.not.i17.i173.i, i32 0, i32 192
  %spec.select.i.i175.i = or i32 %and20.i20.i171.i, %masksel.i.i174.i
  %conv6.i176.i = trunc i32 %spec.select.i.i175.i to i8
  %bw20.i177.i = getelementptr %struct.mt7601u_eeprom_params, ptr %7, i32 0, i32 6, i32 1, i32 3, i32 1
  %44 = ptrtoint ptr %bw20.i177.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv6.i176.i, ptr %bw20.i177.i, align 1
  %conv10.i178.i = add i8 %retval.0.i, %conv6.i176.i
  %bw40.i179.i = getelementptr %struct.mt7601u_eeprom_params, ptr %7, i32 0, i32 6, i32 1, i32 3, i32 2
  %45 = ptrtoint ptr %bw40.i179.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv10.i178.i, ptr %bw40.i179.i, align 1
  br label %mt7601u_set_power_rate.exit181.i

mt7601u_set_power_rate.exit181.i:                 ; preds = %s6_to_int.exit.i180.i, %mt7601u_set_power_rate.exit162.i.mt7601u_set_power_rate.exit181.i_crit_edge
  %ht.i = getelementptr inbounds %struct.mt7601u_eeprom_params, ptr %7, i32 0, i32 6, i32 2
  %shr37.i = lshr i32 %5, 16
  %conv39.i = trunc i32 %shr37.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv39.i)
  %cmp.i182.i = icmp eq i8 %conv39.i, -1
  br i1 %cmp.i182.i, label %mt7601u_set_power_rate.exit181.i.mt7601u_set_power_rate.exit200.i_crit_edge, label %if.end.i185.i

mt7601u_set_power_rate.exit181.i.mt7601u_set_power_rate.exit200.i_crit_edge: ; preds = %mt7601u_set_power_rate.exit181.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7601u_set_power_rate.exit200.i

if.end.i185.i:                                    ; preds = %mt7601u_set_power_rate.exit181.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %conv39.i)
  %tobool.not.i.i184.i = icmp ult i8 %conv39.i, 64
  br i1 %tobool.not.i.i184.i, label %s6_validate.exit.thread.i186.i, label %do.end.i.i.i189.i, !prof !57

s6_validate.exit.thread.i186.i:                   ; preds = %if.end.i185.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i183.i = and i32 %shr37.i, 255
  %46 = ptrtoint ptr %ht.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv39.i, ptr %ht.i, align 1
  br label %s6_to_int.exit.i199.i

do.end.i.i.i189.i:                                ; preds = %if.end.i185.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 118, i32 noundef 9, ptr noundef null) #7
  %and20.i.i187.i = and i32 %shr37.i, 63
  %conv3.i188.i = trunc i32 %and20.i.i187.i to i8
  %47 = ptrtoint ptr %ht.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv3.i188.i, ptr %ht.i, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 118, i32 noundef 9, ptr noundef null) #7
  br label %s6_to_int.exit.i199.i

s6_to_int.exit.i199.i:                            ; preds = %do.end.i.i.i189.i, %s6_validate.exit.thread.i186.i
  %and20.i20.i190.i = phi i32 [ %conv.i183.i, %s6_validate.exit.thread.i186.i ], [ %and20.i.i187.i, %do.end.i.i.i189.i ]
  %48 = and i32 %5, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i17.i192.i = icmp eq i32 %48, 0
  %masksel.i.i193.i = select i1 %tobool.not.i17.i192.i, i32 0, i32 192
  %spec.select.i.i194.i = or i32 %and20.i20.i190.i, %masksel.i.i193.i
  %conv6.i195.i = trunc i32 %spec.select.i.i194.i to i8
  %bw20.i196.i = getelementptr inbounds %struct.mt7601u_eeprom_params, ptr %7, i32 0, i32 6, i32 2, i32 0, i32 1
  %49 = ptrtoint ptr %bw20.i196.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv6.i195.i, ptr %bw20.i196.i, align 1
  %conv10.i197.i = add i8 %retval.0.i, %conv6.i195.i
  %bw40.i198.i = getelementptr inbounds %struct.mt7601u_eeprom_params, ptr %7, i32 0, i32 6, i32 2, i32 0, i32 2
  %50 = ptrtoint ptr %bw40.i198.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv10.i197.i, ptr %bw40.i198.i, align 1
  br label %mt7601u_set_power_rate.exit200.i

mt7601u_set_power_rate.exit200.i:                 ; preds = %s6_to_int.exit.i199.i, %mt7601u_set_power_rate.exit181.i.mt7601u_set_power_rate.exit200.i_crit_edge
  %arrayidx41.i = getelementptr %struct.mt7601u_eeprom_params, ptr %7, i32 0, i32 6, i32 2, i32 1
  %shr42.i = lshr i32 %5, 24
  %conv44.i = trunc i32 %shr42.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv44.i)
  %cmp.i201.i = icmp eq i8 %conv44.i, -1
  br i1 %cmp.i201.i, label %mt7601u_set_power_rate.exit200.i.mt7601u_save_power_rate.exit_crit_edge, label %if.end.i204.i

mt7601u_set_power_rate.exit200.i.mt7601u_save_power_rate.exit_crit_edge: ; preds = %mt7601u_set_power_rate.exit200.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7601u_save_power_rate.exit

if.end.i204.i:                                    ; preds = %mt7601u_set_power_rate.exit200.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %conv44.i)
  %tobool.not.i.i203.i = icmp ult i8 %conv44.i, 64
  br i1 %tobool.not.i.i203.i, label %s6_validate.exit.thread.i205.i, label %do.end.i.i.i208.i, !prof !57

s6_validate.exit.thread.i205.i:                   ; preds = %if.end.i204.i
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv44.i, ptr %arrayidx41.i, align 1
  br label %s6_to_int.exit.i218.i

do.end.i.i.i208.i:                                ; preds = %if.end.i204.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 118, i32 noundef 9, ptr noundef null) #7
  %and20.i.i206.i = and i32 %shr42.i, 63
  %conv3.i207.i = trunc i32 %and20.i.i206.i to i8
  %52 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv3.i207.i, ptr %arrayidx41.i, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 118, i32 noundef 9, ptr noundef null) #7
  br label %s6_to_int.exit.i218.i

s6_to_int.exit.i218.i:                            ; preds = %do.end.i.i.i208.i, %s6_validate.exit.thread.i205.i
  %and20.i20.i209.i = phi i32 [ %shr42.i, %s6_validate.exit.thread.i205.i ], [ %and20.i.i206.i, %do.end.i.i.i208.i ]
  %53 = and i32 %5, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i17.i211.i = icmp eq i32 %53, 0
  %masksel.i.i212.i = select i1 %tobool.not.i17.i211.i, i32 0, i32 192
  %spec.select.i.i213.i = or i32 %and20.i20.i209.i, %masksel.i.i212.i
  %conv6.i214.i = trunc i32 %spec.select.i.i213.i to i8
  %bw20.i215.i = getelementptr %struct.mt7601u_eeprom_params, ptr %7, i32 0, i32 6, i32 2, i32 1, i32 1
  %54 = ptrtoint ptr %bw20.i215.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv6.i214.i, ptr %bw20.i215.i, align 1
  %conv10.i216.i = add i8 %retval.0.i, %conv6.i214.i
  %bw40.i217.i = getelementptr %struct.mt7601u_eeprom_params, ptr %7, i32 0, i32 6, i32 2, i32 1, i32 2
  %55 = ptrtoint ptr %bw40.i217.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv10.i216.i, ptr %bw40.i217.i, align 1
  br label %mt7601u_save_power_rate.exit

sw.bb45.i:                                        ; preds = %for.body
  %arrayidx47.i = getelementptr %struct.mt7601u_eeprom_params, ptr %7, i32 0, i32 6, i32 2, i32 2
  %conv50.i = trunc i32 %5 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv50.i)
  %cmp.i220.i = icmp eq i8 %conv50.i, -1
  br i1 %cmp.i220.i, label %sw.bb45.i.mt7601u_set_power_rate.exit238.i_crit_edge, label %if.end.i223.i

sw.bb45.i.mt7601u_set_power_rate.exit238.i_crit_edge: ; preds = %sw.bb45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7601u_set_power_rate.exit238.i

if.end.i223.i:                                    ; preds = %sw.bb45.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %conv50.i)
  %tobool.not.i.i222.i = icmp ult i8 %conv50.i, 64
  br i1 %tobool.not.i.i222.i, label %s6_validate.exit.thread.i224.i, label %do.end.i.i.i227.i, !prof !57

s6_validate.exit.thread.i224.i:                   ; preds = %if.end.i223.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i221.i = and i32 %5, 255
  %56 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv50.i, ptr %arrayidx47.i, align 1
  br label %s6_to_int.exit.i237.i

do.end.i.i.i227.i:                                ; preds = %if.end.i223.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 118, i32 noundef 9, ptr noundef null) #7
  %and20.i.i225.i = and i32 %5, 63
  %conv3.i226.i = trunc i32 %and20.i.i225.i to i8
  %57 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv3.i226.i, ptr %arrayidx47.i, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 118, i32 noundef 9, ptr noundef null) #7
  br label %s6_to_int.exit.i237.i

s6_to_int.exit.i237.i:                            ; preds = %do.end.i.i.i227.i, %s6_validate.exit.thread.i224.i
  %and20.i20.i228.i = phi i32 [ %conv.i221.i, %s6_validate.exit.thread.i224.i ], [ %and20.i.i225.i, %do.end.i.i.i227.i ]
  %and.i.i229.i = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i229.i)
  %tobool.not.i17.i230.i = icmp eq i32 %and.i.i229.i, 0
  %masksel.i.i231.i = select i1 %tobool.not.i17.i230.i, i32 0, i32 192
  %spec.select.i.i232.i = or i32 %and20.i20.i228.i, %masksel.i.i231.i
  %conv6.i233.i = trunc i32 %spec.select.i.i232.i to i8
  %bw20.i234.i = getelementptr %struct.mt7601u_eeprom_params, ptr %7, i32 0, i32 6, i32 2, i32 2, i32 1
  %58 = ptrtoint ptr %bw20.i234.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv6.i233.i, ptr %bw20.i234.i, align 1
  %conv10.i235.i = add i8 %retval.0.i, %conv6.i233.i
  %bw40.i236.i = getelementptr %struct.mt7601u_eeprom_params, ptr %7, i32 0, i32 6, i32 2, i32 2, i32 2
  %59 = ptrtoint ptr %bw40.i236.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv10.i235.i, ptr %bw40.i236.i, align 1
  br label %mt7601u_set_power_rate.exit238.i

mt7601u_set_power_rate.exit238.i:                 ; preds = %s6_to_int.exit.i237.i, %sw.bb45.i.mt7601u_set_power_rate.exit238.i_crit_edge
  %arrayidx52.i = getelementptr %struct.mt7601u_eeprom_params, ptr %7, i32 0, i32 6, i32 2, i32 3
  %shr53.i = lshr i32 %5, 8
  %conv55.i = trunc i32 %shr53.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv55.i)
  %cmp.i239.i = icmp eq i8 %conv55.i, -1
  br i1 %cmp.i239.i, label %mt7601u_set_power_rate.exit238.i.mt7601u_save_power_rate.exit_crit_edge, label %if.end.i242.i

mt7601u_set_power_rate.exit238.i.mt7601u_save_power_rate.exit_crit_edge: ; preds = %mt7601u_set_power_rate.exit238.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7601u_save_power_rate.exit

if.end.i242.i:                                    ; preds = %mt7601u_set_power_rate.exit238.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %conv55.i)
  %tobool.not.i.i241.i = icmp ult i8 %conv55.i, 64
  br i1 %tobool.not.i.i241.i, label %s6_validate.exit.thread.i243.i, label %do.end.i.i.i246.i, !prof !57

s6_validate.exit.thread.i243.i:                   ; preds = %if.end.i242.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i240.i = and i32 %shr53.i, 255
  %60 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv55.i, ptr %arrayidx52.i, align 1
  br label %s6_to_int.exit.i256.i

do.end.i.i.i246.i:                                ; preds = %if.end.i242.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 118, i32 noundef 9, ptr noundef null) #7
  %and20.i.i244.i = and i32 %shr53.i, 63
  %conv3.i245.i = trunc i32 %and20.i.i244.i to i8
  %61 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv3.i245.i, ptr %arrayidx52.i, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 118, i32 noundef 9, ptr noundef null) #7
  br label %s6_to_int.exit.i256.i

s6_to_int.exit.i256.i:                            ; preds = %do.end.i.i.i246.i, %s6_validate.exit.thread.i243.i
  %and20.i20.i247.i = phi i32 [ %conv.i240.i, %s6_validate.exit.thread.i243.i ], [ %and20.i.i244.i, %do.end.i.i.i246.i ]
  %62 = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.not.i17.i249.i = icmp eq i32 %62, 0
  %masksel.i.i250.i = select i1 %tobool.not.i17.i249.i, i32 0, i32 192
  %spec.select.i.i251.i = or i32 %and20.i20.i247.i, %masksel.i.i250.i
  %conv6.i252.i = trunc i32 %spec.select.i.i251.i to i8
  %bw20.i253.i = getelementptr %struct.mt7601u_eeprom_params, ptr %7, i32 0, i32 6, i32 2, i32 3, i32 1
  %63 = ptrtoint ptr %bw20.i253.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv6.i252.i, ptr %bw20.i253.i, align 1
  %conv10.i254.i = add i8 %retval.0.i, %conv6.i252.i
  %bw40.i255.i = getelementptr %struct.mt7601u_eeprom_params, ptr %7, i32 0, i32 6, i32 2, i32 3, i32 2
  %64 = ptrtoint ptr %bw40.i255.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv10.i254.i, ptr %bw40.i255.i, align 1
  br label %mt7601u_save_power_rate.exit

mt7601u_save_power_rate.exit:                     ; preds = %s6_to_int.exit.i256.i, %mt7601u_set_power_rate.exit238.i.mt7601u_save_power_rate.exit_crit_edge, %s6_to_int.exit.i218.i, %mt7601u_set_power_rate.exit200.i.mt7601u_save_power_rate.exit_crit_edge, %s6_to_int.exit.i142.i, %mt7601u_set_power_rate.exit124.i.mt7601u_save_power_rate.exit_crit_edge, %for.body.mt7601u_save_power_rate.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %tobool.not = icmp eq i32 %4, -1
  br i1 %tobool.not, label %mt7601u_save_power_rate.exit.for.inc_crit_edge, label %if.then

mt7601u_save_power_rate.exit.for.inc_crit_edge:   ; preds = %mt7601u_save_power_rate.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %mt7601u_save_power_rate.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add3 = add nuw nsw i32 %mul, 4884
  tail call void @mt7601u_wr(ptr noundef %dev, i32 noundef %add3, i32 noundef %5) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then, %mt7601u_save_power_rate.exit.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.016, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @mt7601u_rr(ptr noundef %dev, i32 noundef 4888) #7
  %and.i14 = lshr i32 %call.i, 8
  %shr.i = and i32 %and.i14, 255
  %call1.i = tail call i32 @mt7601u_rr(ptr noundef %dev, i32 noundef 4892) #7
  %and2.i15 = shl i32 %call1.i, 8
  %shl.i = and i32 %and2.i15, 16711680
  %or.i = or i32 %shl.i, %shr.i
  tail call void @mt7601u_wr(ptr noundef %dev, i32 noundef 5076, i32 noundef %or.i) #7
  %call3.i = tail call i32 @mt7601u_rr(ptr noundef %dev, i32 noundef 4900) #7
  %and4.i = lshr i32 %call3.i, 8
  %shr5.i = and i32 %and4.i, 255
  tail call void @mt7601u_wr(ptr noundef %dev, i32 noundef 5084, i32 noundef %shr5.i) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mt76_poll(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7601u_rr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7601u_wr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !18, !19, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !33, !35, !37, !38, !39, !40, !42, !43, !44, !45}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt7601u/eeprom.c", i32 369, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mt7601u_eeprom_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mt7601u_eeprom_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/mediatek/mt7601u/eeprom.c", i32 372, i32 2}
!10 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @mt7601u_eeprom_init._entry.5, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @mt7601u_eeprom_init._entry_ptr.8, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/mediatek/mt7601u/eeprom.c", i32 90, i32 3}
!15 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.11, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @mt7601u_efuse_physical_size_check._entry, !14, !"_entry", i1 false, i1 false}
!18 = !{ptr @mt7601u_efuse_physical_size_check._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/mediatek/mt7601u/eeprom.c", i32 118, i32 3}
!21 = !{ptr @.str.13, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mt7601u_set_chip_cap._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @mt7601u_set_chip_cap._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/mediatek/mt7601u/eeprom.c", i32 126, i32 3}
!26 = !{ptr @mt7601u_set_chip_cap._entry.14, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @mt7601u_set_chip_cap._entry_ptr.16, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/mediatek/mt7601u/eeprom.c", i32 136, i32 3}
!30 = !{ptr @.str.18, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @mt7601u_set_channel_target_power._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @mt7601u_set_channel_target_power._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @mt7601u_set_country_reg.chan_bounds, !34, !"chan_bounds", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/mediatek/mt7601u/eeprom.c", i32 174, i32 41}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/mediatek/mt7601u/eeprom.c", i32 190, i32 3}
!37 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @mt7601u_set_country_reg._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @mt7601u_set_country_reg._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/mediatek/mt7601u/eeprom.c", i32 228, i32 4}
!42 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @mt7601u_set_rssi_offset._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @mt7601u_set_rssi_offset._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/mediatek/mt7601u/eeprom.h", i32 118, i32 2}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{i8 0, i8 2}
!57 = !{!"branch_weights", i32 2000, i32 1}
