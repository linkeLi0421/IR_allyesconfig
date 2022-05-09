; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intersil/orinoco/fw.c_pt.bc'
source_filename = "../drivers/net/wireless/intersil/orinoco/fw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fw_info = type { ptr, ptr, ptr, i32, i16 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.orinoco_private = type { ptr, ptr, ptr, ptr, %struct.ieee80211_supported_band, [14 x %struct.ieee80211_channel], [3 x i32], %struct.spinlock, i32, %struct.work_struct, %struct.tasklet_struct, %struct.list_head, i32, i16, %struct.work_struct, %struct.work_struct, ptr, %struct.iw_statistics, %struct.hermes, i16, i32, i32, i32, i16, i16, i32, i32, i16, i16, [4 x %struct.key_params], i32, [33 x i8], [33 x i8], [6 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, %struct.iw_spy_data, %struct.iw_public_data, i32, i32, i32, i32, ptr, %struct.work_struct, %struct.list_head, %struct.spinlock, ptr, i32, ptr, ptr, i8, ptr, ptr, %struct.notifier_block }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.104, i32 }
%union.anon.104 = type { ptr }
%struct.iw_statistics = type { i16, %struct.iw_quality, %struct.iw_discarded, %struct.iw_missed }
%struct.iw_quality = type { i8, i8, i8, i8 }
%struct.iw_discarded = type { i32, i32, i32, i32, i32 }
%struct.iw_missed = type { i32 }
%struct.hermes = type { ptr, i32, i16, i8, ptr, ptr }
%struct.key_params = type { ptr, ptr, i32, i32, i16, i32, i32 }
%struct.iw_spy_data = type { i32, [8 x [6 x i8]], [8 x %struct.iw_quality], %struct.iw_quality, %struct.iw_quality, [8 x i8] }
%struct.iw_public_data = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.hermes_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.orinoco_fw_header = type { [6 x i8], i16, i32, i32, i32, i32, i32, i32, [0 x i8] }

@__UNIQUE_ID_firmware373 = internal constant [34 x i8] c"orinoco.firmware=agere_sta_fw.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware374 = internal constant [33 x i8] c"orinoco.firmware=agere_ap_fw.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware375 = internal constant [34 x i8] c"orinoco.firmware=prism_sta_fw.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware376 = internal constant [33 x i8] c"orinoco.firmware=prism_ap_fw.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware377 = internal constant [38 x i8] c"orinoco.firmware=symbol_sp24t_prim_fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware378 = internal constant [37 x i8] c"orinoco.firmware=symbol_sp24t_sec_fw\00", section ".modinfo", align 1
@orinoco_fw = internal constant { [3 x %struct.fw_info], [36 x i8] } { [3 x %struct.fw_info] [%struct.fw_info { ptr null, ptr @.str.25, ptr @.str.26, i32 3735552, i16 1000 }, %struct.fw_info { ptr null, ptr @.str.27, ptr @.str.28, i32 0, i16 1024 }, %struct.fw_info { ptr @.str.29, ptr @.str.30, ptr null, i32 12544, i16 512 }], [36 x i8] zeroinitializer }, align 32
@orinoco_dl_firmware.__UNIQUE_ID_ddebug379 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 30, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"orinoco\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"orinoco_dl_firmware\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/wireless/intersil/orinoco/fw.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Attempting to download firmware %s\0A\00", [60 x i8] zeroinitializer }, align 32
@orinoco_dl_firmware.__UNIQUE_ID_ddebug380 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 31, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Read PDA returned %d\0A\00", [42 x i8] zeroinitializer }, align 32
@orinoco_dl_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 135, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Cannot find firmware %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@orinoco_dl_firmware._entry_ptr = internal global ptr @orinoco_dl_firmware._entry, section ".printk_index", align 4
@orinoco_dl_firmware._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 147, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Invalid firmware image detected (%s). Aborting download\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@orinoco_dl_firmware._entry_ptr.11 = internal global ptr @orinoco_dl_firmware._entry.8, section ".printk_index", align 4
@orinoco_dl_firmware.__UNIQUE_ID_ddebug381 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.12, i8 0, i8 38, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Program init returned %d\0A\00", [38 x i8] zeroinitializer }, align 32
@orinoco_dl_firmware.__UNIQUE_ID_ddebug382 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.13, i8 0, i8 41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Program returned %d\0A\00", [43 x i8] zeroinitializer }, align 32
@orinoco_dl_firmware.__UNIQUE_ID_ddebug383 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.14, i8 0, i8 44, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Apply PDA returned %d\0A\00", [41 x i8] zeroinitializer }, align 32
@orinoco_dl_firmware.__UNIQUE_ID_ddebug384 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.15, i8 0, i8 45, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Program end returned %d\0A\00", [39 x i8] zeroinitializer }, align 32
@orinoco_dl_firmware.__UNIQUE_ID_ddebug385 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.16, i8 0, i8 46, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"hermes_present returned %d\0A\00", [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"image too small\00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HFW\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"format not recognised\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bad headersize\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bad block offset\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bad PDR offset\00", [17 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bad PRI offset\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bad compat offset\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"agere_sta_fw.bin\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"agere_ap_fw.bin\00", [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"prism_sta_fw.bin\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"prism_ap_fw.bin\00", [16 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol_sp24t_prim_fw\00", [43 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"symbol_sp24t_sec_fw\00", [44 x i8] zeroinitializer }, align 32
@symbol_dl_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 296, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Cannot find firmware: %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"symbol_dl_firmware\00", [45 x i8] zeroinitializer }, align 32
@symbol_dl_firmware._entry_ptr = internal global ptr @symbol_dl_firmware._entry, section ".printk_index", align 4
@symbol_dl_firmware._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.2, i32 309, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Primary firmware download failed\0A\00", [62 x i8] zeroinitializer }, align 32
@symbol_dl_firmware._entry_ptr.35 = internal global ptr @symbol_dl_firmware._entry.33, section ".printk_index", align 4
@symbol_dl_firmware._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 315, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@symbol_dl_firmware._entry_ptr.37 = internal global ptr @symbol_dl_firmware._entry.36, section ".printk_index", align 4
@symbol_dl_firmware._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.32, ptr @.str.2, i32 327, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Secondary firmware download failed\0A\00", [60 x i8] zeroinitializer }, align 32
@symbol_dl_firmware._entry_ptr.40 = internal global ptr @symbol_dl_firmware._entry.38, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.41 = private unnamed_addr constant [11 x i8] c"orinoco_fw\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 28, i32 29 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 123, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 127, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 135, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 146, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 154, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 165, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 176, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 182, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 187, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 62, i32 10 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 63, i32 28 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 64, i32 10 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 68, i32 10 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 70, i32 10 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 72, i32 10 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 74, i32 10 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 76, i32 10 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 29, i32 10 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 29, i32 30 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 30, i32 10 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 30, i32 30 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 31, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 31, i32 28 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 296, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 309, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 315, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.158 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.159 = private constant [46 x i8] c"../drivers/net/wireless/intersil/orinoco/fw.c\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 327, i32 3 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @__UNIQUE_ID_firmware373, ptr @__UNIQUE_ID_firmware374, ptr @__UNIQUE_ID_firmware375, ptr @__UNIQUE_ID_firmware376, ptr @__UNIQUE_ID_firmware377, ptr @__UNIQUE_ID_firmware378, ptr @orinoco_dl_firmware._entry, ptr @orinoco_dl_firmware._entry.8, ptr @orinoco_dl_firmware._entry_ptr, ptr @orinoco_dl_firmware._entry_ptr.11, ptr @symbol_dl_firmware._entry, ptr @symbol_dl_firmware._entry.33, ptr @symbol_dl_firmware._entry.36, ptr @symbol_dl_firmware._entry.38, ptr @symbol_dl_firmware._entry_ptr, ptr @symbol_dl_firmware._entry_ptr.35, ptr @symbol_dl_firmware._entry_ptr.37, ptr @symbol_dl_firmware._entry_ptr.40, ptr @orinoco_fw, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.39], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_fw to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_dl_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_dl_firmware._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @symbol_dl_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @symbol_dl_firmware._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @symbol_dl_firmware._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @symbol_dl_firmware._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @orinoco_download(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %fw_entry.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %firmware_type = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 20
  %0 = ptrtoint ptr %firmware_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %firmware_type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call fastcc i32 @orinoco_dl_firmware(ptr noundef %priv)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %dev1.i = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 1
  %3 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_entry.i) #7
  %5 = ptrtoint ptr %fw_entry.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw_entry.i, align 4, !annotation !102
  %cached_pri_fw.i.i = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 63
  %6 = ptrtoint ptr %cached_pri_fw.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %retval.0.i.i = load ptr, ptr %cached_pri_fw.i.i, align 4
  %tobool.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb2
  %call3.i = call i32 @request_firmware(ptr noundef nonnull %fw_entry.i, ptr noundef nonnull @.str.29, ptr noundef %4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.not.i = icmp eq i32 %call3.i, 0
  br i1 %cmp.not.i, label %if.then.i.if.end7.i_crit_edge, label %do.end.i

if.then.i.if.end7.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.29) #10
  br label %symbol_dl_firmware.exit

if.else.i:                                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %fw_entry.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %retval.0.i.i, ptr %fw_entry.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.else.i, %if.then.i.if.end7.i_crit_edge
  %8 = ptrtoint ptr %fw_entry.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fw_entry.i, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %9, align 4
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %if.end7.i
  %ptr.0.i.i = phi ptr [ %11, %if.end7.i ], [ %incdec.ptr.i.i, %while.cond.i.i.while.cond.i.i_crit_edge ]
  %incdec.ptr.i.i = getelementptr i8, ptr %ptr.0.i.i, i32 1
  %14 = ptrtoint ptr %ptr.0.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ptr.0.i.i, align 1
  %cmp.not.i.i = icmp eq i8 %15, 26
  br i1 %cmp.not.i.i, label %while.end.i.i, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  %add.ptr.i = getelementptr i8, ptr %11, i32 %13
  %hw1.i.i = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 18
  %stop_fw.i.i = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 3
  %16 = ptrtoint ptr %stop_fw.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %stop_fw.i.i, align 4
  %tobool12.not.i.i = icmp eq ptr %17, null
  br i1 %tobool12.not.i.i, label %while.end.i.i.if.end19.i.i_crit_edge, label %if.then13.i.i

while.end.i.i.if.end19.i.i_crit_edge:             ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i.i

if.then13.i.i:                                    ; preds = %while.end.i.i
  %call15.i.i = call i32 %17(ptr noundef %priv, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %tobool16.not.i.i = icmp eq i32 %call15.i.i, 0
  br i1 %tobool16.not.i.i, label %if.then13.i.i.if.end19.i.i_crit_edge, label %if.then13.i.i.free.i.i_crit_edge

if.then13.i.i.free.i.i_crit_edge:                 ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free.i.i

if.then13.i.i.if.end19.i.i_crit_edge:             ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i.i

if.end19.i.i:                                     ; preds = %if.then13.i.i.if.end19.i.i_crit_edge, %while.end.i.i.if.end19.i.i_crit_edge
  %call20.i.i = call i32 @hermes_program(ptr noundef %hw1.i.i, ptr noundef %incdec.ptr.i.i, ptr noundef %add.ptr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i)
  %tobool21.not.i.i = icmp eq i32 %call20.i.i, 0
  br i1 %tobool21.not.i.i, label %if.end23.i.i, label %if.end19.i.i.free.i.i_crit_edge

if.end19.i.i.free.i.i_crit_edge:                  ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free.i.i

if.end23.i.i:                                     ; preds = %if.end19.i.i
  %18 = ptrtoint ptr %stop_fw.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %stop_fw.i.i, align 4
  %tobool35.not.i.i = icmp eq ptr %19, null
  br i1 %tobool35.not.i.i, label %if.end23.i.i.if.end42.i.i_crit_edge, label %if.then36.i.i

if.end23.i.i.if.end42.i.i_crit_edge:              ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42.i.i

if.then36.i.i:                                    ; preds = %if.end23.i.i
  %call38.i.i = call i32 %19(ptr noundef %priv, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i.i)
  %tobool39.not.i.i = icmp eq i32 %call38.i.i, 0
  br i1 %tobool39.not.i.i, label %if.then36.i.i.if.end42.i.i_crit_edge, label %if.then36.i.i.symbol_dl_image.exit.i_crit_edge

if.then36.i.i.symbol_dl_image.exit.i_crit_edge:   ; preds = %if.then36.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %symbol_dl_image.exit.i

if.then36.i.i.if.end42.i.i_crit_edge:             ; preds = %if.then36.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42.i.i

if.end42.i.i:                                     ; preds = %if.then36.i.i.if.end42.i.i_crit_edge, %if.end23.i.i.if.end42.i.i_crit_edge
  %ops43.i.i = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 18, i32 4
  %20 = ptrtoint ptr %ops43.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops43.i.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %call44.i.i = call i32 %23(ptr noundef %hw1.i.i) #7
  %24 = ptrtoint ptr %hw1.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw1.i.i, align 4
  %reg_spacing.i.i.i = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 18, i32 1
  %26 = ptrtoint ptr %reg_spacing.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %reg_spacing.i.i.i, align 4
  %shl.i.i.i = shl i32 40, %27
  %add.ptr.i.i.i = getelementptr i8, ptr %25, i32 %shl.i.i.i
  %28 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i) #7, !srcloc !103
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  call void @__sanitizer_cov_trace_const_cmp2(i16 8061, i16 %28)
  %cmp.i.not.i.i = icmp eq i16 %28, 8061
  %..i.i = select i1 %cmp.i.not.i.i, i32 0, i32 -19
  br label %symbol_dl_image.exit.i

free.i.i:                                         ; preds = %if.end19.i.i.free.i.i_crit_edge, %if.then13.i.i.free.i.i_crit_edge
  %ret.0.i.i = phi i32 [ %call15.i.i, %if.then13.i.i.free.i.i_crit_edge ], [ %call20.i.i, %if.end19.i.i.free.i.i_crit_edge ]
  call void @kfree(ptr noundef null) #7
  br label %symbol_dl_image.exit.i

symbol_dl_image.exit.i:                           ; preds = %free.i.i, %if.end42.i.i, %if.then36.i.i.symbol_dl_image.exit.i_crit_edge
  %retval.1.i.i = phi i32 [ %ret.0.i.i, %free.i.i ], [ %call38.i.i, %if.then36.i.i.symbol_dl_image.exit.i_crit_edge ], [ %..i.i, %if.end42.i.i ]
  %29 = ptrtoint ptr %cached_pri_fw.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %retval.0.i6.i = load ptr, ptr %cached_pri_fw.i.i, align 4
  %tobool11.not.i = icmp eq ptr %retval.0.i6.i, null
  br i1 %tobool11.not.i, label %if.then12.i, label %symbol_dl_image.exit.i.if.end13.i_crit_edge

symbol_dl_image.exit.i.if.end13.i_crit_edge:      ; preds = %symbol_dl_image.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

if.then12.i:                                      ; preds = %symbol_dl_image.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %fw_entry.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fw_entry.i, align 4
  call void @release_firmware(ptr noundef %31) #7
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then12.i, %symbol_dl_image.exit.i.if.end13.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.1.i.i)
  %tobool14.not.i = icmp eq i32 %retval.1.i.i, 0
  br i1 %tobool14.not.i, label %if.end19.i, label %do.end18.i

do.end18.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.34) #10
  br label %symbol_dl_firmware.exit

if.end19.i:                                       ; preds = %if.end13.i
  %cached_fw.i8.i = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 64
  %32 = ptrtoint ptr %cached_fw.i8.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %retval.0.i9.i = load ptr, ptr %cached_fw.i8.i, align 4
  %tobool21.not.i = icmp eq ptr %retval.0.i9.i, null
  br i1 %tobool21.not.i, label %if.then22.i, label %if.else32.i

if.then22.i:                                      ; preds = %if.end19.i
  %33 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev1.i, align 4
  %call24.i = call i32 @request_firmware(ptr noundef nonnull %fw_entry.i, ptr noundef nonnull @.str.30, ptr noundef %34) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %cmp25.not.i = icmp eq i32 %call24.i, 0
  br i1 %cmp25.not.i, label %if.then22.i.if.end34.i_crit_edge, label %do.end29.i

if.then22.i.if.end34.i_crit_edge:                 ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

do.end29.i:                                       ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.30) #10
  br label %symbol_dl_firmware.exit

if.else32.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %fw_entry.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %retval.0.i9.i, ptr %fw_entry.i, align 4
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.else32.i, %if.then22.i.if.end34.i_crit_edge
  %36 = ptrtoint ptr %fw_entry.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fw_entry.i, align 4
  %data35.i = getelementptr inbounds %struct.firmware, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %data35.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data35.i, align 4
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %37, align 4
  br label %while.cond.i16.i

while.cond.i16.i:                                 ; preds = %while.cond.i16.i.while.cond.i16.i_crit_edge, %if.end34.i
  %ptr.0.i13.i = phi ptr [ %39, %if.end34.i ], [ %incdec.ptr.i14.i, %while.cond.i16.i.while.cond.i16.i_crit_edge ]
  %incdec.ptr.i14.i = getelementptr i8, ptr %ptr.0.i13.i, i32 1
  %42 = ptrtoint ptr %ptr.0.i13.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ptr.0.i13.i, align 1
  %cmp.not.i15.i = icmp eq i8 %43, 26
  br i1 %cmp.not.i15.i, label %while.end.i18.i, label %while.cond.i16.i.while.cond.i16.i_crit_edge

while.cond.i16.i.while.cond.i16.i_crit_edge:      ; preds = %while.cond.i16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i16.i

while.end.i18.i:                                  ; preds = %while.cond.i16.i
  %add.ptr38.i = getelementptr i8, ptr %39, i32 %41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %44 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %44, i32 noundef 3520, i32 noundef 512) #11
  %tobool4.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool4.not.i.i, label %while.end.i18.i.symbol_dl_image.exit44.i_crit_edge, label %if.end.i.i

while.end.i18.i.symbol_dl_image.exit44.i_crit_edge: ; preds = %while.end.i18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %symbol_dl_image.exit44.i

if.end.i.i:                                       ; preds = %while.end.i18.i
  %ops.i.i = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 18, i32 4
  %45 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops.i.i, align 4
  %read_pda.i.i = getelementptr inbounds %struct.hermes_ops, ptr %46, i32 0, i32 9
  %47 = ptrtoint ptr %read_pda.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %read_pda.i.i, align 4
  %call7.i.i = call i32 %48(ptr noundef %hw1.i.i, ptr noundef nonnull %call7.i.i.i.i, i32 noundef 12544, i16 noundef zeroext 512) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %if.end11.i.i, label %if.end.i.i.free.i42.i_crit_edge

if.end.i.i.free.i42.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free.i42.i

if.end11.i.i:                                     ; preds = %if.end.i.i
  %49 = ptrtoint ptr %stop_fw.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %stop_fw.i.i, align 4
  %tobool12.not.i20.i = icmp eq ptr %50, null
  br i1 %tobool12.not.i20.i, label %if.end11.i.i.if.end19.i26.i_crit_edge, label %if.then13.i23.i

if.end11.i.i.if.end19.i26.i_crit_edge:            ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i26.i

if.then13.i23.i:                                  ; preds = %if.end11.i.i
  %call15.i21.i = call i32 %50(ptr noundef %priv, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i21.i)
  %tobool16.not.i22.i = icmp eq i32 %call15.i21.i, 0
  br i1 %tobool16.not.i22.i, label %if.then13.i23.i.if.end19.i26.i_crit_edge, label %if.then13.i23.i.free.i42.i_crit_edge

if.then13.i23.i.free.i42.i_crit_edge:             ; preds = %if.then13.i23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free.i42.i

if.then13.i23.i.if.end19.i26.i_crit_edge:         ; preds = %if.then13.i23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i26.i

if.end19.i26.i:                                   ; preds = %if.then13.i23.i.if.end19.i26.i_crit_edge, %if.end11.i.i.if.end19.i26.i_crit_edge
  %call20.i24.i = call i32 @hermes_program(ptr noundef %hw1.i.i, ptr noundef %incdec.ptr.i14.i, ptr noundef %add.ptr38.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i24.i)
  %tobool21.not.i25.i = icmp eq i32 %call20.i24.i, 0
  br i1 %tobool21.not.i25.i, label %if.end23.i27.i, label %if.end19.i26.i.free.i42.i_crit_edge

if.end19.i26.i.free.i42.i_crit_edge:              ; preds = %if.end19.i26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free.i42.i

if.end23.i27.i:                                   ; preds = %if.end19.i26.i
  %call26.i.i = call i32 @hermes_blocks_length(ptr noundef %incdec.ptr.i14.i, ptr noundef %add.ptr38.i) #7
  %add.ptr.i.i = getelementptr i8, ptr %incdec.ptr.i14.i, i32 %call26.i.i
  %arrayidx.i.i = getelementptr i16, ptr %call7.i.i.i.i, i32 256
  %call29.i.i = call i32 @hermes_apply_pda(ptr noundef %hw1.i.i, ptr noundef %add.ptr.i.i, ptr noundef %add.ptr38.i, ptr noundef nonnull %call7.i.i.i.i, ptr noundef %arrayidx.i.i) #7
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i.i)
  %tobool30.not.i.i = icmp eq i32 %call29.i.i, 0
  br i1 %tobool30.not.i.i, label %if.end33.i.i, label %if.end23.i27.i.symbol_dl_image.exit44.i_crit_edge

if.end23.i27.i.symbol_dl_image.exit44.i_crit_edge: ; preds = %if.end23.i27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %symbol_dl_image.exit44.i

if.end33.i.i:                                     ; preds = %if.end23.i27.i
  %51 = ptrtoint ptr %stop_fw.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %stop_fw.i.i, align 4
  %tobool35.not.i28.i = icmp eq ptr %52, null
  br i1 %tobool35.not.i28.i, label %if.end33.i.i.if.end42.i35.i_crit_edge, label %if.then36.i31.i

if.end33.i.i.if.end42.i35.i_crit_edge:            ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42.i35.i

if.then36.i31.i:                                  ; preds = %if.end33.i.i
  %call38.i29.i = call i32 %52(ptr noundef %priv, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i29.i)
  %tobool39.not.i30.i = icmp eq i32 %call38.i29.i, 0
  br i1 %tobool39.not.i30.i, label %if.then36.i31.i.if.end42.i35.i_crit_edge, label %if.then36.i31.i.symbol_dl_image.exit44.i_crit_edge

if.then36.i31.i.symbol_dl_image.exit44.i_crit_edge: ; preds = %if.then36.i31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %symbol_dl_image.exit44.i

if.then36.i31.i.if.end42.i35.i_crit_edge:         ; preds = %if.then36.i31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42.i35.i

if.end42.i35.i:                                   ; preds = %if.then36.i31.i.if.end42.i35.i_crit_edge, %if.end33.i.i.if.end42.i35.i_crit_edge
  %53 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ops.i.i, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  %call44.i33.i = call i32 %56(ptr noundef %hw1.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i33.i)
  %cmp46.not.i34.i = icmp eq i32 %call44.i33.i, 0
  br i1 %cmp46.not.i34.i, label %if.end49.i.i, label %if.end42.i35.i.symbol_dl_image.exit44.i_crit_edge

if.end42.i35.i.symbol_dl_image.exit44.i_crit_edge: ; preds = %if.end42.i35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %symbol_dl_image.exit44.i

if.end49.i.i:                                     ; preds = %if.end42.i35.i
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %hw1.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hw1.i.i, align 4
  %reg_spacing.i.i36.i = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 18, i32 1
  %59 = ptrtoint ptr %reg_spacing.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %reg_spacing.i.i36.i, align 4
  %shl.i.i37.i = shl i32 40, %60
  %add.ptr.i.i38.i = getelementptr i8, ptr %58, i32 %shl.i.i37.i
  %61 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i38.i) #7, !srcloc !103
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  call void @__sanitizer_cov_trace_const_cmp2(i16 8061, i16 %61)
  %cmp.i.not.i39.i = icmp eq i16 %61, 8061
  %..i40.i = select i1 %cmp.i.not.i39.i, i32 0, i32 -19
  br label %symbol_dl_image.exit44.i

free.i42.i:                                       ; preds = %if.end19.i26.i.free.i42.i_crit_edge, %if.then13.i23.i.free.i42.i_crit_edge, %if.end.i.i.free.i42.i_crit_edge
  %ret.0.i41.i = phi i32 [ %call7.i.i, %if.end.i.i.free.i42.i_crit_edge ], [ %call15.i21.i, %if.then13.i23.i.free.i42.i_crit_edge ], [ %call20.i24.i, %if.end19.i26.i.free.i42.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #7
  br label %symbol_dl_image.exit44.i

symbol_dl_image.exit44.i:                         ; preds = %free.i42.i, %if.end49.i.i, %if.end42.i35.i.symbol_dl_image.exit44.i_crit_edge, %if.then36.i31.i.symbol_dl_image.exit44.i_crit_edge, %if.end23.i27.i.symbol_dl_image.exit44.i_crit_edge, %while.end.i18.i.symbol_dl_image.exit44.i_crit_edge
  %retval.1.i43.i = phi i32 [ %ret.0.i41.i, %free.i42.i ], [ %call29.i.i, %if.end23.i27.i.symbol_dl_image.exit44.i_crit_edge ], [ -12, %while.end.i18.i.symbol_dl_image.exit44.i_crit_edge ], [ %call38.i29.i, %if.then36.i31.i.symbol_dl_image.exit44.i_crit_edge ], [ -19, %if.end42.i35.i.symbol_dl_image.exit44.i_crit_edge ], [ %..i40.i, %if.end49.i.i ]
  %62 = ptrtoint ptr %cached_fw.i8.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %retval.0.i47.i = load ptr, ptr %cached_fw.i8.i, align 4
  %tobool41.not.i = icmp eq ptr %retval.0.i47.i, null
  br i1 %tobool41.not.i, label %if.then42.i, label %symbol_dl_image.exit44.i.if.end43.i_crit_edge

symbol_dl_image.exit44.i.if.end43.i_crit_edge:    ; preds = %symbol_dl_image.exit44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43.i

if.then42.i:                                      ; preds = %symbol_dl_image.exit44.i
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %fw_entry.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %fw_entry.i, align 4
  call void @release_firmware(ptr noundef %64) #7
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then42.i, %symbol_dl_image.exit44.i.if.end43.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.1.i43.i)
  %tobool44.not.i = icmp eq i32 %retval.1.i43.i, 0
  br i1 %tobool44.not.i, label %if.end43.i.symbol_dl_firmware.exit_crit_edge, label %do.end48.i

if.end43.i.symbol_dl_firmware.exit_crit_edge:     ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %symbol_dl_firmware.exit

do.end48.i:                                       ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.39) #10
  br label %symbol_dl_firmware.exit

symbol_dl_firmware.exit:                          ; preds = %do.end48.i, %if.end43.i.symbol_dl_firmware.exit_crit_edge, %do.end29.i, %do.end18.i, %do.end.i
  %retval.0.i = phi i32 [ %retval.1.i.i, %do.end18.i ], [ -2, %do.end29.i ], [ -2, %do.end.i ], [ %retval.1.i43.i, %do.end48.i ], [ 0, %if.end43.i.symbol_dl_firmware.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_entry.i) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %symbol_dl_firmware.exit, %sw.bb, %entry.sw.epilog_crit_edge
  %err.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %retval.0.i, %symbol_dl_firmware.exit ], [ %call, %sw.bb ]
  ret i32 %err.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @orinoco_dl_firmware(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  %fw_entry = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_entry) #7
  %0 = ptrtoint ptr %fw_entry to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw_entry, align 4, !annotation !102
  %dev2 = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 1
  %1 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 1000) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @orinoco_dl_firmware.__UNIQUE_ID_ddebug379, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@orinoco_dl_firmware, %if.then10)) #7
          to label %do.end [label %if.then10], !srcloc !105

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @orinoco_dl_firmware.__UNIQUE_ID_ddebug379, ptr noundef %2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.25) #7
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  %ops = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 18, i32 4
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %read_pda = getelementptr inbounds %struct.hermes_ops, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %read_pda to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_pda, align 4
  %call13 = tail call i32 %7(ptr noundef %hw1, ptr noundef nonnull %call7.i.i, i32 noundef 3735552, i16 noundef zeroext 1000) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @orinoco_dl_firmware.__UNIQUE_ID_ddebug380, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@orinoco_dl_firmware, %if.then26)) #7
          to label %do.end29 [label %if.then26], !srcloc !105

if.then26:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @orinoco_dl_firmware.__UNIQUE_ID_ddebug380, ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef %call13) #7
  br label %do.end29

do.end29:                                         ; preds = %if.then26, %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool30.not = icmp eq i32 %call13, 0
  br i1 %tobool30.not, label %if.end32, label %do.end29.free_crit_edge

do.end29.free_crit_edge:                          ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %free

if.end32:                                         ; preds = %do.end29
  %cached_fw.i = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 64
  %8 = ptrtoint ptr %cached_fw.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %retval.0.i19 = load ptr, ptr %cached_fw.i, align 4
  %tobool34.not = icmp eq ptr %retval.0.i19, null
  br i1 %tobool34.not, label %if.then35, label %if.else44

if.then35:                                        ; preds = %if.end32
  %9 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev2, align 4
  %call37 = call i32 @request_firmware(ptr noundef nonnull %fw_entry, ptr noundef nonnull @.str.25, ptr noundef %10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then35.if.end46_crit_edge, label %do.end42

if.then35.if.end46_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

do.end42:                                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.25) #10
  br label %free

if.else44:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %fw_entry to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %retval.0.i19, ptr %fw_entry, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.else44, %if.then35.if.end46_crit_edge
  %12 = ptrtoint ptr %fw_entry to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fw_entry, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %17)
  %cmp.i = icmp ult i32 %17, 32
  br i1 %cmp.i, label %if.end46.do.end52_crit_edge, label %if.end.i

if.end46.do.end52_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end52

if.end.i:                                         ; preds = %if.end46
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(3) %15, ptr noundef nonnull dereferenceable(3) @.str.18, i32 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp1.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp1.not.i, label %if.end3.i, label %if.end.i.do.end52_crit_edge

if.end.i.do.end52_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end52

if.end3.i:                                        ; preds = %if.end.i
  %headersize.i = getelementptr inbounds %struct.orinoco_fw_header, ptr %15, i32 0, i32 1
  %18 = ptrtoint ptr %headersize.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %headersize.i, align 1
  %20 = call i16 @llvm.bswap.i16(i16 %19) #7
  %conv.i = zext i16 %20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv.i)
  %cmp4.i = icmp ult i32 %17, %conv.i
  br i1 %cmp4.i, label %if.end3.i.do.end52_crit_edge, label %if.end7.i

if.end3.i.do.end52_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end52

if.end7.i:                                        ; preds = %if.end3.i
  %block_offset.i = getelementptr inbounds %struct.orinoco_fw_header, ptr %15, i32 0, i32 4
  %21 = ptrtoint ptr %block_offset.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %block_offset.i, align 1
  %23 = call i32 @llvm.bswap.i32(i32 %22) #7
  %add.i = add i32 %23, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %17)
  %cmp9.i = icmp ugt i32 %add.i, %17
  br i1 %cmp9.i, label %if.end7.i.do.end52_crit_edge, label %if.end12.i

if.end7.i.do.end52_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end52

if.end12.i:                                       ; preds = %if.end7.i
  %pdr_offset.i = getelementptr inbounds %struct.orinoco_fw_header, ptr %15, i32 0, i32 5
  %24 = ptrtoint ptr %pdr_offset.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %pdr_offset.i, align 1
  %26 = call i32 @llvm.bswap.i32(i32 %25) #7
  %add14.i = add i32 %26, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add14.i, i32 %17)
  %cmp15.i = icmp ugt i32 %add14.i, %17
  br i1 %cmp15.i, label %if.end12.i.do.end52_crit_edge, label %if.end18.i

if.end12.i.do.end52_crit_edge:                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end52

if.end18.i:                                       ; preds = %if.end12.i
  %pri_offset.i = getelementptr inbounds %struct.orinoco_fw_header, ptr %15, i32 0, i32 6
  %27 = ptrtoint ptr %pri_offset.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %pri_offset.i, align 1
  %29 = call i32 @llvm.bswap.i32(i32 %28) #7
  %add20.i = add i32 %29, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add20.i, i32 %17)
  %cmp21.i = icmp ugt i32 %add20.i, %17
  br i1 %cmp21.i, label %if.end18.i.do.end52_crit_edge, label %if.end24.i

if.end18.i.do.end52_crit_edge:                    ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end52

if.end24.i:                                       ; preds = %if.end18.i
  %compat_offset.i = getelementptr inbounds %struct.orinoco_fw_header, ptr %15, i32 0, i32 7
  %30 = ptrtoint ptr %compat_offset.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %compat_offset.i, align 1
  %32 = call i32 @llvm.bswap.i32(i32 %31) #7
  %add26.i = add i32 %32, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add26.i, i32 %17)
  %cmp27.i = icmp ugt i32 %add26.i, %17
  br i1 %cmp27.i, label %if.end24.i.do.end52_crit_edge, label %if.end53

if.end24.i.do.end52_crit_edge:                    ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end52

do.end52:                                         ; preds = %if.end24.i.do.end52_crit_edge, %if.end18.i.do.end52_crit_edge, %if.end12.i.do.end52_crit_edge, %if.end7.i.do.end52_crit_edge, %if.end3.i.do.end52_crit_edge, %if.end.i.do.end52_crit_edge, %if.end46.do.end52_crit_edge
  %retval.0.i23.ph = phi ptr [ @.str.23, %if.end18.i.do.end52_crit_edge ], [ @.str.22, %if.end12.i.do.end52_crit_edge ], [ @.str.21, %if.end7.i.do.end52_crit_edge ], [ @.str.20, %if.end3.i.do.end52_crit_edge ], [ @.str.19, %if.end.i.do.end52_crit_edge ], [ @.str.17, %if.end46.do.end52_crit_edge ], [ @.str.24, %if.end24.i.do.end52_crit_edge ]
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.9, ptr noundef nonnull %retval.0.i23.ph) #10
  br label %abort

if.end53:                                         ; preds = %if.end24.i
  %33 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops, align 4
  %program_init = getelementptr inbounds %struct.hermes_ops, ptr %34, i32 0, i32 10
  %35 = ptrtoint ptr %program_init to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %program_init, align 4
  %entry_point = getelementptr inbounds %struct.orinoco_fw_header, ptr %15, i32 0, i32 2
  %37 = ptrtoint ptr %entry_point to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %entry_point, align 1
  %39 = call i32 @llvm.bswap.i32(i32 %38)
  %call55 = call i32 %36(ptr noundef %hw1, i32 noundef %39) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @orinoco_dl_firmware.__UNIQUE_ID_ddebug381, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@orinoco_dl_firmware, %if.then68)) #7
          to label %do.end71 [label %if.then68], !srcloc !105

if.then68:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @orinoco_dl_firmware.__UNIQUE_ID_ddebug381, ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef %call55) #7
  br label %do.end71

do.end71:                                         ; preds = %if.then68, %if.end53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp.not = icmp eq i32 %call55, 0
  br i1 %cmp.not, label %if.end74, label %do.end71.abort_crit_edge

do.end71.abort_crit_edge:                         ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %abort

if.end74:                                         ; preds = %do.end71
  %40 = ptrtoint ptr %fw_entry to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fw_entry, align 4
  %data75 = getelementptr inbounds %struct.firmware, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %data75 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data75, align 4
  %44 = ptrtoint ptr %headersize.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %headersize.i, align 1
  %46 = call i16 @llvm.bswap.i16(i16 %45)
  %conv76 = zext i16 %46 to i32
  %add.ptr = getelementptr i8, ptr %43, i32 %conv76
  %47 = ptrtoint ptr %block_offset.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %block_offset.i, align 1
  %49 = call i32 @llvm.bswap.i32(i32 %48)
  %add.ptr77 = getelementptr i8, ptr %add.ptr, i32 %49
  %50 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %41, align 4
  %add.ptr80 = getelementptr i8, ptr %43, i32 %51
  %call81 = call i32 @hermes_program(ptr noundef %hw1, ptr noundef %add.ptr77, ptr noundef %add.ptr80) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @orinoco_dl_firmware.__UNIQUE_ID_ddebug382, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@orinoco_dl_firmware, %if.then94)) #7
          to label %do.end97 [label %if.then94], !srcloc !105

if.then94:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @orinoco_dl_firmware.__UNIQUE_ID_ddebug382, ptr noundef %2, ptr noundef nonnull @.str.13, i32 noundef %call81) #7
  br label %do.end97

do.end97:                                         ; preds = %if.then94, %if.end74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %cmp98.not = icmp eq i32 %call81, 0
  br i1 %cmp98.not, label %if.end101, label %do.end97.abort_crit_edge

do.end97.abort_crit_edge:                         ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #9
  br label %abort

if.end101:                                        ; preds = %do.end97
  %52 = ptrtoint ptr %fw_entry to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fw_entry, align 4
  %data102 = getelementptr inbounds %struct.firmware, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %data102 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data102, align 4
  %56 = ptrtoint ptr %headersize.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 2)
  %57 = load i16, ptr %headersize.i, align 1
  %58 = call i16 @llvm.bswap.i16(i16 %57)
  %conv104 = zext i16 %58 to i32
  %add.ptr105 = getelementptr i8, ptr %55, i32 %conv104
  %59 = ptrtoint ptr %pdr_offset.i to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %60 = load i32, ptr %pdr_offset.i, align 1
  %61 = call i32 @llvm.bswap.i32(i32 %60)
  %add.ptr106 = getelementptr i8, ptr %add.ptr105, i32 %61
  %arrayidx = getelementptr i16, ptr %call7.i.i, i32 500
  %call109 = call i32 @hermes_apply_pda_with_defaults(ptr noundef %hw1, ptr noundef %add.ptr106, ptr noundef %add.ptr80, ptr noundef nonnull %call7.i.i, ptr noundef %arrayidx) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @orinoco_dl_firmware.__UNIQUE_ID_ddebug383, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@orinoco_dl_firmware, %if.then122)) #7
          to label %do.end125 [label %if.then122], !srcloc !105

if.then122:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @orinoco_dl_firmware.__UNIQUE_ID_ddebug383, ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef %call109) #7
  br label %do.end125

do.end125:                                        ; preds = %if.then122, %if.end101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool126.not = icmp eq i32 %call109, 0
  br i1 %tobool126.not, label %if.end128, label %do.end125.abort_crit_edge

do.end125.abort_crit_edge:                        ; preds = %do.end125
  call void @__sanitizer_cov_trace_pc() #9
  br label %abort

if.end128:                                        ; preds = %do.end125
  %62 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ops, align 4
  %program_end = getelementptr inbounds %struct.hermes_ops, ptr %63, i32 0, i32 11
  %64 = ptrtoint ptr %program_end to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %program_end, align 4
  %call130 = call i32 %65(ptr noundef %hw1) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @orinoco_dl_firmware.__UNIQUE_ID_ddebug384, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@orinoco_dl_firmware, %if.then143)) #7
          to label %do.end146 [label %if.then143], !srcloc !105

if.then143:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @orinoco_dl_firmware.__UNIQUE_ID_ddebug384, ptr noundef %2, ptr noundef nonnull @.str.15, i32 noundef %call130) #7
  br label %do.end146

do.end146:                                        ; preds = %if.then143, %if.end128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %cmp147.not = icmp eq i32 %call130, 0
  br i1 %cmp147.not, label %do.body151, label %do.end146.abort_crit_edge

do.end146.abort_crit_edge:                        ; preds = %do.end146
  call void @__sanitizer_cov_trace_pc() #9
  br label %abort

do.body151:                                       ; preds = %do.end146
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @orinoco_dl_firmware.__UNIQUE_ID_ddebug385, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@orinoco_dl_firmware, %if.then163)) #7
          to label %abort [label %if.then163], !srcloc !105

if.then163:                                       ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hw1, align 4
  %reg_spacing.i = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 18, i32 1
  %68 = ptrtoint ptr %reg_spacing.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %reg_spacing.i, align 4
  %shl.i = shl i32 40, %69
  %add.ptr.i = getelementptr i8, ptr %67, i32 %shl.i
  %70 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #7, !srcloc !103
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  call void @__sanitizer_cov_trace_const_cmp2(i16 8061, i16 %70)
  %cmp.i24 = icmp eq i16 %70, 8061
  %conv1.i = zext i1 %cmp.i24 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @orinoco_dl_firmware.__UNIQUE_ID_ddebug385, ptr noundef %2, ptr noundef nonnull @.str.16, i32 noundef %conv1.i) #7
  br label %abort

abort:                                            ; preds = %if.then163, %do.body151, %do.end146.abort_crit_edge, %do.end125.abort_crit_edge, %do.end97.abort_crit_edge, %do.end71.abort_crit_edge, %do.end52
  %err.0 = phi i32 [ -22, %do.end52 ], [ %call55, %do.end71.abort_crit_edge ], [ %call81, %do.end97.abort_crit_edge ], [ %call109, %do.end125.abort_crit_edge ], [ %call130, %do.end146.abort_crit_edge ], [ 0, %if.then163 ], [ 0, %do.body151 ]
  %71 = ptrtoint ptr %cached_fw.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %retval.0.i27 = load ptr, ptr %cached_fw.i, align 4
  %tobool169.not = icmp eq ptr %retval.0.i27, null
  br i1 %tobool169.not, label %if.then170, label %abort.free_crit_edge

abort.free_crit_edge:                             ; preds = %abort
  call void @__sanitizer_cov_trace_pc() #9
  br label %free

if.then170:                                       ; preds = %abort
  call void @__sanitizer_cov_trace_pc() #9
  %72 = ptrtoint ptr %fw_entry to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %fw_entry, align 4
  call void @release_firmware(ptr noundef %73) #7
  br label %free

free:                                             ; preds = %if.then170, %abort.free_crit_edge, %do.end42, %do.end29.free_crit_edge
  %err.1 = phi i32 [ %call13, %do.end29.free_crit_edge ], [ %err.0, %abort.free_crit_edge ], [ %err.0, %if.then170 ], [ -2, %do.end42 ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %free, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %free ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_entry) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @orinoco_cache_fw(ptr nocapture noundef %priv, i32 noundef %ap) local_unnamed_addr #0 align 64 {
entry:
  %fw_entry = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_entry) #7
  %0 = ptrtoint ptr %fw_entry to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %fw_entry, align 4
  %firmware_type = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 20
  %1 = ptrtoint ptr %firmware_type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %firmware_type, align 4
  %arrayidx = getelementptr [3 x %struct.fw_info], ptr @orinoco_fw, i32 0, i32 %2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ap)
  %tobool.not = icmp eq i32 %ap, 0
  %ap_fw = getelementptr [3 x %struct.fw_info], ptr @orinoco_fw, i32 0, i32 %2, i32 2
  %sta_fw = getelementptr [3 x %struct.fw_info], ptr @orinoco_fw, i32 0, i32 %2, i32 1
  %fw.0.in = select i1 %tobool.not, ptr %sta_fw, ptr %ap_fw
  %5 = ptrtoint ptr %fw.0.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %fw.0 = load ptr, ptr %fw.0.in, align 4
  %tobool6.not = icmp eq ptr %4, null
  br i1 %tobool6.not, label %entry.if.end10_crit_edge, label %if.then7

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then7:                                         ; preds = %entry
  %dev = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %call = call i32 @request_firmware(ptr noundef nonnull %fw_entry, ptr noundef nonnull %4, ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then8, label %if.then7.if.end10_crit_edge

if.then7.if.end10_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then8:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %fw_entry to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fw_entry, align 4
  %cached_pri_fw = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 63
  %10 = ptrtoint ptr %cached_pri_fw to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %cached_pri_fw, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.then7.if.end10_crit_edge, %entry.if.end10_crit_edge
  %tobool11.not = icmp eq ptr %fw.0, null
  br i1 %tobool11.not, label %if.end10.if.end18_crit_edge, label %if.then12

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then12:                                        ; preds = %if.end10
  %dev13 = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 1
  %11 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev13, align 4
  %call14 = call i32 @request_firmware(ptr noundef nonnull %fw_entry, ptr noundef nonnull %fw.0, ptr noundef %12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.then12.if.end18_crit_edge

if.then12.if.end18_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then16:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %fw_entry to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fw_entry, align 4
  %cached_fw = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 64
  %15 = ptrtoint ptr %cached_fw to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %cached_fw, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.then12.if.end18_crit_edge, %if.end10.if.end18_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_entry) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @orinoco_uncache_fw(ptr nocapture noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cached_pri_fw = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 63
  %0 = ptrtoint ptr %cached_pri_fw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cached_pri_fw, align 4
  tail call void @release_firmware(ptr noundef %1) #7
  %cached_fw = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 64
  %2 = ptrtoint ptr %cached_fw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cached_fw, align 4
  tail call void @release_firmware(ptr noundef %3) #7
  %4 = ptrtoint ptr %cached_pri_fw to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %cached_pri_fw, align 4
  %5 = ptrtoint ptr %cached_fw to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %cached_fw, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hermes_program(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hermes_apply_pda_with_defaults(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hermes_blocks_length(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hermes_apply_pda(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !20, !21, !23, !24, !25, !26, !27, !29, !30, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !80, !81, !82, !84, !85, !86, !88, !89, !91, !92}
!llvm.module.flags = !{!93, !94, !95, !96, !97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = !{ptr @__UNIQUE_ID_firmware373, !1, !"__UNIQUE_ID_firmware373", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intersil/orinoco/fw.c", i32 33, i32 1}
!2 = !{ptr @__UNIQUE_ID_firmware374, !3, !"__UNIQUE_ID_firmware374", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intersil/orinoco/fw.c", i32 34, i32 1}
!4 = !{ptr @__UNIQUE_ID_firmware375, !5, !"__UNIQUE_ID_firmware375", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/intersil/orinoco/fw.c", i32 35, i32 1}
!6 = !{ptr @__UNIQUE_ID_firmware376, !7, !"__UNIQUE_ID_firmware376", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/intersil/orinoco/fw.c", i32 36, i32 1}
!8 = !{ptr @__UNIQUE_ID_firmware377, !9, !"__UNIQUE_ID_firmware377", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/intersil/orinoco/fw.c", i32 37, i32 1}
!10 = !{ptr @__UNIQUE_ID_firmware378, !11, !"__UNIQUE_ID_firmware378", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/intersil/orinoco/fw.c", i32 38, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/intersil/orinoco/fw.c", i32 123, i32 2}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @orinoco_dl_firmware.__UNIQUE_ID_ddebug379, !13, !"__UNIQUE_ID_ddebug379", i1 false, i1 false}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/intersil/orinoco/fw.c", i32 127, i32 2}
!20 = !{ptr @orinoco_dl_firmware.__UNIQUE_ID_ddebug380, !19, !"__UNIQUE_ID_ddebug380", i1 false, i1 false}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/intersil/orinoco/fw.c", i32 135, i32 4}
!23 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @orinoco_dl_firmware._entry, !22, !"_entry", i1 false, i1 false}
!26 = !{ptr @orinoco_dl_firmware._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/intersil/orinoco/fw.c", i32 146, i32 3}
!29 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @orinoco_dl_firmware._entry.8, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @orinoco_dl_firmware._entry_ptr.11, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/intersil/orinoco/fw.c", i32 154, i32 2}
!34 = !{ptr @orinoco_dl_firmware.__UNIQUE_ID_ddebug381, !33, !"__UNIQUE_ID_ddebug381", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/intersil/orinoco/fw.c", i32 165, i32 2}
!37 = !{ptr @orinoco_dl_firmware.__UNIQUE_ID_ddebug382, !36, !"__UNIQUE_ID_ddebug382", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/intersil/orinoco/fw.c", i32 176, i32 2}
!40 = !{ptr @orinoco_dl_firmware.__UNIQUE_ID_ddebug383, !39, !"__UNIQUE_ID_ddebug383", i1 false, i1 false}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/intersil/orinoco/fw.c", i32 182, i32 2}
!43 = !{ptr @orinoco_dl_firmware.__UNIQUE_ID_ddebug384, !42, !"__UNIQUE_ID_ddebug384", i1 false, i1 false}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/intersil/orinoco/fw.c", i32 187, i32 2}
!46 = !{ptr @orinoco_dl_firmware.__UNIQUE_ID_ddebug385, !45, !"__UNIQUE_ID_ddebug385", i1 false, i1 false}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/intersil/orinoco/fw.c", i32 62, i32 10}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/intersil/orinoco/fw.c", i32 63, i32 28}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/intersil/orinoco/fw.c", i32 64, i32 10}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/intersil/orinoco/fw.c", i32 68, i32 10}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/intersil/orinoco/fw.c", i32 70, i32 10}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/intersil/orinoco/fw.c", i32 72, i32 10}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/intersil/orinoco/fw.c", i32 74, i32 10}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/intersil/orinoco/fw.c", i32 76, i32 10}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/intersil/orinoco/fw.c", i32 29, i32 10}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/intersil/orinoco/fw.c", i32 29, i32 30}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/intersil/orinoco/fw.c", i32 30, i32 10}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/intersil/orinoco/fw.c", i32 30, i32 30}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/intersil/orinoco/fw.c", i32 31, i32 4}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/intersil/orinoco/fw.c", i32 31, i32 28}
!75 = !{ptr @orinoco_fw, !76, !"orinoco_fw", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/intersil/orinoco/fw.c", i32 28, i32 29}
!77 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/intersil/orinoco/fw.c", i32 296, i32 4}
!79 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @symbol_dl_firmware._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @symbol_dl_firmware._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/intersil/orinoco/fw.c", i32 309, i32 3}
!84 = !{ptr @symbol_dl_firmware._entry.33, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @symbol_dl_firmware._entry_ptr.35, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @symbol_dl_firmware._entry.36, !87, !"_entry", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/intersil/orinoco/fw.c", i32 315, i32 4}
!88 = !{ptr @symbol_dl_firmware._entry_ptr.37, !87, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/intersil/orinoco/fw.c", i32 327, i32 3}
!91 = !{ptr @symbol_dl_firmware._entry.38, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @symbol_dl_firmware._entry_ptr.40, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{i32 1, !"wchar_size", i32 2}
!94 = !{i32 1, !"min_enum_size", i32 4}
!95 = !{i32 8, !"branch-target-enforcement", i32 0}
!96 = !{i32 8, !"sign-return-address", i32 0}
!97 = !{i32 8, !"sign-return-address-all", i32 0}
!98 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!99 = !{i32 7, !"uwtable", i32 1}
!100 = !{i32 7, !"frame-pointer", i32 2}
!101 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!102 = !{!"auto-init"}
!103 = !{i64 6504993}
!104 = !{i64 2154045568}
!105 = !{i64 2148699470, i64 2148699475, i64 2148699488, i64 2148699532, i64 2148699566, i64 2148699587}
