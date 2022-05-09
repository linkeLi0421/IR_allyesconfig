; ModuleID = '/llk/IR_all_yes/net/mac80211/rc80211_minstrel_ht_debugfs.c_pt.bc'
source_filename = "../net/mac80211/rc80211_minstrel_ht_debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mcs_group = type { i16, i8, i8, i8, [10 x i16] }
%struct.file = type { %union.anon.16, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.16 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.minstrel_debugfs_info = type { i32, [0 x i8] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.95, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.96, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.97, ptr, %struct.address_space, %struct.list_head, %union.anon.98, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.95 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.96 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.97 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.98 = type { ptr }
%struct.minstrel_ht_sta = type { ptr, i32, i32, i32, [4 x i16], i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i16, i32, [3 x %struct.minstrel_sample_category], [42 x i16], [42 x %struct.minstrel_mcs_group_data] }
%struct.minstrel_sample_category = type { i8, [5 x i16], [5 x i16] }
%struct.minstrel_mcs_group_data = type { i8, i8, [4 x i16], i16, [10 x %struct.minstrel_rate_stats] }
%struct.minstrel_rate_stats = type { i16, i16, i16, i16, i32, i32, i16, i16, i8, i8, i8 }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rc_stats\00", [23 x i8] zeroinitializer }, align 32
@minstrel_ht_stat_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @minstrel_stats_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @minstrel_ht_stats_open, ptr null, ptr @minstrel_stats_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rc_stats_csv\00", [19 x i8] zeroinitializer }, align 32
@minstrel_ht_stat_csv_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @minstrel_stats_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @minstrel_ht_stats_csv_open, ptr null, ptr @minstrel_stats_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [112 x i8], [48 x i8] } { [112 x i8] c"              best    ____________rate__________    ____statistics___    _____last____    ______sum-of________\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [113 x i8], [47 x i8] } { [113 x i8] c"mode guard #  rate   [name   idx airtime  max_tp]  [avg(tp) avg(prob)]  [retry|suc|att]  [#success | #attempts]\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\0ATotal packet count::    ideal %d      lookaround %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Average # of aggregated frames per A-MPDU: %d.%d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"net/mac80211/rc80211_minstrel_ht_debugfs.c\00", [53 x i8] zeroinitializer }, align 32
@minstrel_mcs_groups = external dso_local local_unnamed_addr constant [0 x %struct.mcs_group], align 2
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HT%c0  \00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%cGI  \00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%d  \00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VHT%c0 \00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%cGI \00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"OFDM       \00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"1 \00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%cP  \00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"  MCS%-2u\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"  MCS%-1u/%1u\00", [18 x i8] zeroinitializer }, align 32
@minstrel_ofdm_bitrates = external dso_local local_unnamed_addr constant [8 x i16], align 2
@minstrel_cck_bitrates = external dso_local local_unnamed_addr constant [4 x i16], align 2
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"   %2u.%1uM\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"  %3u  \00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%6u  \00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"%4u.%1u    %4u.%1u     %3u.%1u     %3u   %3u %-3u   %9llu   %-9llu\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HT%c0,\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%cGI,\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d,\00", [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VHT%c0,\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OFDM,,1,\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CCK,\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%cP,\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"1,\00", [29 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"A\00", [30 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"B\00", [30 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"C\00", [30 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"D\00", [30 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"P\00", [30 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"S\00", [30 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",MCS%-2u,\00", [22 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c",MCS%-1u/%1u,\00", [18 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c",%2u.%1uM,\00", [21 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u,\00", [28 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%u.%u,%u.%u,%u.%u,%u,%u,%u,%llu,%llu,\00", [58 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%d,%d,%d.%d\0A\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 332, i32 22 }
@___asan_gen_.48 = private unnamed_addr constant [22 x i8] c"minstrel_ht_stat_fops\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 185, i32 37 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 334, i32 22 }
@___asan_gen_.54 = private unnamed_addr constant [26 x i8] c"minstrel_ht_stat_csv_fops\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 321, i32 37 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 161, i32 8 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 163, i32 8 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 171, i32 18 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 176, i32 19 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 180, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 78, i32 20 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 79, i32 20 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 80, i32 20 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 82, i32 20 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 83, i32 20 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 86, i32 20 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 87, i32 20 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 90, i32 20 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 102, i32 20 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 104, i32 20 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 113, i32 20 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 116, i32 19 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 122, i32 19 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 128, i32 19 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 224, i32 20 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 225, i32 20 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 226, i32 20 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 228, i32 20 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 232, i32 20 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 234, i32 20 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 235, i32 20 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 236, i32 20 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 239, i32 56 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 239, i32 62 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 240, i32 56 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 241, i32 56 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 242, i32 56 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 243, i32 55 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 244, i32 64 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 247, i32 20 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 249, i32 20 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 258, i32 20 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 261, i32 19 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 272, i32 19 }
@___asan_gen_.174 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.175 = private constant [46 x i8] c"../net/mac80211/rc80211_minstrel_ht_debugfs.c\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 282, i32 19 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @.str, ptr @minstrel_ht_stat_fops, ptr @.str.1, ptr @minstrel_ht_stat_csv_fops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @minstrel_ht_stat_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @minstrel_ht_stat_csv_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 113, i32 160, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @minstrel_ht_add_sta_debugfs(ptr nocapture noundef readnone %priv, ptr noundef %priv_sta, ptr noundef %dir) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str, i16 noundef zeroext 292, ptr noundef %dir, ptr noundef %priv_sta, ptr noundef nonnull @minstrel_ht_stat_fops) #6
  %call1 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.1, i16 noundef zeroext 292, ptr noundef %dir, ptr noundef %priv_sta, ptr noundef nonnull @minstrel_ht_stat_csv_fops) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @minstrel_stats_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %len, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %buf1 = getelementptr inbounds %struct.minstrel_debugfs_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %call = tail call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %len, ptr noundef %ppos, ptr noundef %buf1, i32 noundef %3) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @minstrel_ht_stats_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call1.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 32768, i32 noundef 3264, i32 noundef 3) #9
  %tobool.not = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.end15

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.end15:                                        ; preds = %entry
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1.i.i, ptr %private_data, align 4
  %buf = getelementptr inbounds %struct.minstrel_debugfs_info, ptr %call1.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 2560, ptr %buf, align 4
  %add.ptr = getelementptr i8, ptr %buf, i32 1
  %4 = call ptr @memcpy(ptr %add.ptr, ptr @.str.3, i32 111)
  %add.ptr3 = getelementptr %struct.minstrel_debugfs_info, ptr %call1.i.i, i32 29
  %5 = call ptr @memcpy(ptr %add.ptr3, ptr @.str.4, i32 113)
  %add.ptr5 = getelementptr %struct.minstrel_debugfs_info, ptr %call1.i.i, i32 57
  %call6 = tail call fastcc ptr @minstrel_ht_stats_dump(ptr noundef %1, i32 noundef 16, ptr noundef %add.ptr5)
  %call7 = tail call fastcc ptr @minstrel_ht_stats_dump(ptr noundef %1, i32 noundef 0, ptr noundef %call6)
  %call7.1 = tail call fastcc ptr @minstrel_ht_stats_dump(ptr noundef %1, i32 noundef 1, ptr noundef %call7)
  %call7.2 = tail call fastcc ptr @minstrel_ht_stats_dump(ptr noundef %1, i32 noundef 2, ptr noundef %call7.1)
  %call7.3 = tail call fastcc ptr @minstrel_ht_stats_dump(ptr noundef %1, i32 noundef 3, ptr noundef %call7.2)
  %call7.4 = tail call fastcc ptr @minstrel_ht_stats_dump(ptr noundef %1, i32 noundef 4, ptr noundef %call7.3)
  %call7.5 = tail call fastcc ptr @minstrel_ht_stats_dump(ptr noundef %1, i32 noundef 5, ptr noundef %call7.4)
  %call7.6 = tail call fastcc ptr @minstrel_ht_stats_dump(ptr noundef %1, i32 noundef 6, ptr noundef %call7.5)
  %call7.7 = tail call fastcc ptr @minstrel_ht_stats_dump(ptr noundef %1, i32 noundef 7, ptr noundef %call7.6)
  %call7.8 = tail call fastcc ptr @minstrel_ht_stats_dump(ptr noundef %1, i32 noundef 8, ptr noundef %call7.7)
  %call7.9 = tail call fastcc ptr @minstrel_ht_stats_dump(ptr noundef %1, i32 noundef 9, ptr noundef %call7.8)
  %call7.10 = tail call fastcc ptr @minstrel_ht_stats_dump(ptr noundef %1, i32 noundef 10, ptr noundef %call7.9)
  %call7.11 = tail call fastcc ptr @minstrel_ht_stats_dump(ptr noundef %1, i32 noundef 11, ptr noundef %call7.10)
  %call7.12 = tail call fastcc ptr @minstrel_ht_stats_dump(ptr noundef %1, i32 noundef 12, ptr noundef %call7.11)
  %call7.13 = tail call fastcc ptr @minstrel_ht_stats_dump(ptr noundef %1, i32 noundef 13, ptr noundef %call7.12)
  %call7.14 = tail call fastcc ptr @minstrel_ht_stats_dump(ptr noundef %1, i32 noundef 14, ptr noundef %call7.13)
  %call7.15 = tail call fastcc ptr @minstrel_ht_stats_dump(ptr noundef %1, i32 noundef 15, ptr noundef %call7.14)
  %call12 = tail call fastcc ptr @minstrel_ht_stats_dump(ptr noundef %1, i32 noundef 17, ptr noundef %call7.15)
  %call12.1 = tail call fastcc ptr @minstrel_ht_stats_dump(ptr noundef %1, i32 noundef 18, ptr noundef %call12)
  %call12.2 = tail call fastcc ptr @minstrel_ht_stats_dump(ptr noundef %1, i32 noundef 19, ptr noundef %call12.1)
  %call12.3 = tail call fastcc ptr @minstrel_ht_stats_dump(ptr noundef %1, i32 noundef 20, ptr noundef %call12.2)
  %call12.4 = tail call fastcc ptr @minstrel_ht_stats_dump(ptr noundef %1, i32 noundef 21, ptr noundef %call12.3)
  %call12.5 = tail call fastcc ptr @minstrel_ht_stats_dump(ptr noundef %1, i32 noundef 22, ptr noundef %call12.4)
  %call12.6 = tail call fastcc ptr @minstrel_ht_stats_dump(ptr noundef %1, i32 noundef 23, ptr noundef %call12.5)
  %call12.7 = tail call fastcc ptr @minstrel_ht_stats_dump(ptr noundef %1, i32 noundef 24, ptr noundef %call12.6)
  %call12.8 = tail call fastcc ptr @minstrel_ht_stats_dump(ptr noundef %1, i32 noundef 25, ptr noundef %call12.7)
  %call12.9 = tail call fastcc ptr @minstrel_ht_stats_dump(ptr noundef %1, i32 noundef 26, ptr noundef %call12.8)
  %call12.10 = tail call fastcc ptr @minstrel_ht_stats_dump(ptr noundef %1, i32 noundef 27, ptr noundef %call12.9)
  %call12.11 = tail call fastcc ptr @minstrel_ht_stats_dump(ptr noundef %1, i32 noundef 28, ptr noundef %call12.10)
  %call12.12 = tail call fastcc ptr @minstrel_ht_stats_dump(ptr noundef %1, i32 noundef 29, ptr noundef %call12.11)
  %call12.13 = tail call fastcc ptr @minstrel_ht_stats_dump(ptr noundef %1, i32 noundef 30, ptr noundef %call12.12)
  %call12.14 = tail call fastcc ptr @minstrel_ht_stats_dump(ptr noundef %1, i32 noundef 31, ptr noundef %call12.13)
  %call12.15 = tail call fastcc ptr @minstrel_ht_stats_dump(ptr noundef %1, i32 noundef 32, ptr noundef %call12.14)
  %call12.16 = tail call fastcc ptr @minstrel_ht_stats_dump(ptr noundef %1, i32 noundef 33, ptr noundef %call12.15)
  %call12.17 = tail call fastcc ptr @minstrel_ht_stats_dump(ptr noundef %1, i32 noundef 34, ptr noundef %call12.16)
  %call12.18 = tail call fastcc ptr @minstrel_ht_stats_dump(ptr noundef %1, i32 noundef 35, ptr noundef %call12.17)
  %call12.19 = tail call fastcc ptr @minstrel_ht_stats_dump(ptr noundef %1, i32 noundef 36, ptr noundef %call12.18)
  %call12.20 = tail call fastcc ptr @minstrel_ht_stats_dump(ptr noundef %1, i32 noundef 37, ptr noundef %call12.19)
  %call12.21 = tail call fastcc ptr @minstrel_ht_stats_dump(ptr noundef %1, i32 noundef 38, ptr noundef %call12.20)
  %call12.22 = tail call fastcc ptr @minstrel_ht_stats_dump(ptr noundef %1, i32 noundef 39, ptr noundef %call12.21)
  %call12.23 = tail call fastcc ptr @minstrel_ht_stats_dump(ptr noundef %1, i32 noundef 40, ptr noundef %call12.22)
  %call12.24 = tail call fastcc ptr @minstrel_ht_stats_dump(ptr noundef %1, i32 noundef 41, ptr noundef %call12.23)
  %total_packets = getelementptr inbounds %struct.minstrel_ht_sta, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %total_packets to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %total_packets, align 4
  %sample_packets = getelementptr inbounds %struct.minstrel_ht_sta, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %sample_packets to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sample_packets, align 4
  %sub = sub i32 %7, %9
  %10 = tail call i32 @llvm.smax.i32(i32 %sub, i32 0)
  %call18 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %call12.24, ptr noundef nonnull @.str.5, i32 noundef %10, i32 noundef %9)
  %add.ptr19 = getelementptr i8, ptr %call12.24, i32 %call18
  %avg_ampdu_len = getelementptr inbounds %struct.minstrel_ht_sta, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %avg_ampdu_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %avg_ampdu_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool20.not = icmp eq i32 %12, 0
  br i1 %tobool20.not, label %for.end15.if.end27_crit_edge, label %if.then21

for.end15.if.end27_crit_edge:                     ; preds = %for.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then21:                                        ; preds = %for.end15
  call void @__sanitizer_cov_trace_pc() #8
  %shr = lshr i32 %12, 12
  %mul = mul i32 %12, 10
  %shr24 = lshr i32 %mul, 12
  %rem = urem i32 %shr24, 10
  %call25 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr19, ptr noundef nonnull @.str.6, i32 noundef %shr, i32 noundef %rem)
  %add.ptr26 = getelementptr i8, ptr %add.ptr19, i32 %call25
  br label %if.end27

if.end27:                                         ; preds = %if.then21, %for.end15.if.end27_crit_edge
  %p.2 = phi ptr [ %add.ptr26, %if.then21 ], [ %add.ptr19, %for.end15.if.end27_crit_edge ]
  %sub.ptr.lhs.cast = ptrtoint ptr %p.2 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %13 = ptrtoint ptr %call1.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub.ptr.sub, ptr %call1.i.i, align 4096
  %14 = add i32 %sub.ptr.sub, -32765
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32769, i32 %14)
  %cmp31 = icmp ult i32 %14, -32769
  br i1 %cmp31, label %do.end, label %if.end27.if.end46_crit_edge, !prof !103

if.end27.if.end46_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

do.end:                                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 180, i32 noundef 9, ptr noundef null) #6
  br label %if.end46

if.end46:                                         ; preds = %do.end, %if.end27.if.end46_crit_edge
  %call54 = tail call i32 @nonseekable_open(ptr noundef %inode, ptr noundef %file) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call54, %if.end46 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @minstrel_stats_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @kfree(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @minstrel_ht_stats_dump(ptr noundef %mi, i32 noundef %i, ptr noundef writeonly %p) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 19, i32 %i
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.cleanup215_crit_edge, label %if.end

entry.cleanup215_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup215

if.end:                                           ; preds = %entry
  %arrayidx1 = getelementptr [0 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %i
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx1, align 2
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  %and4 = and i32 %conv, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %spec.select = select i1 %tobool5.not, i32 50, i32 56
  %htmode.0 = select i1 %tobool2.not, i32 %spec.select, i32 52
  %and9 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %spec.select331 = select i1 %tobool10.not, i32 76, i32 83
  %shl = shl i32 %i, 4
  %and32 = and i32 %shl, 65520
  %and65 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  %streams = getelementptr [0 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %i, i32 1
  %and76 = and i32 %conv, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %i)
  %cmp90 = icmp eq i32 %i, 17
  %max_tp_rate = getelementptr inbounds %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 4
  %arrayidx116 = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 4, i32 1
  %arrayidx124 = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 4, i32 2
  %arrayidx132 = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 4, i32 3
  %max_prob_rate = getelementptr inbounds %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 5
  %arrayidx4.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 18, i32 0, i32 2, i32 0
  %arrayidx4.1.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 18, i32 0, i32 2, i32 1
  %arrayidx4.2.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 18, i32 0, i32 2, i32 2
  %arrayidx4.3.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 18, i32 0, i32 2, i32 3
  %arrayidx4.4.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 18, i32 0, i32 2, i32 4
  %arrayidx4.123.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 18, i32 1, i32 2, i32 0
  %arrayidx4.1.1.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 18, i32 1, i32 2, i32 1
  %arrayidx4.2.1.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 18, i32 1, i32 2, i32 2
  %arrayidx4.3.1.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 18, i32 1, i32 2, i32 3
  %arrayidx4.4.1.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 18, i32 1, i32 2, i32 4
  %arrayidx4.227.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 18, i32 2, i32 2, i32 0
  %arrayidx4.1.2.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 18, i32 2, i32 2, i32 1
  %arrayidx4.2.2.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 18, i32 2, i32 2, i32 2
  %arrayidx4.3.2.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 18, i32 2, i32 2, i32 3
  %arrayidx4.4.2.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 18, i32 2, i32 2, i32 4
  %shift = getelementptr [0 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %i, i32 2
  br label %do.end53

do.end53:                                         ; preds = %cleanup.do.end53_crit_edge, %if.end
  %p.addr.0342 = phi ptr [ %p, %if.end ], [ %p.addr.3, %cleanup.do.end53_crit_edge ]
  %j.0339 = phi i32 [ 0, %if.end ], [ %inc, %cleanup.do.end53_crit_edge ]
  %or = or i32 %j.0339, %and32
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %conv59 = zext i16 %5 to i32
  %shl60 = shl nuw nsw i32 1, %j.0339
  %and61 = and i32 %shl60, %conv59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %do.end53.cleanup_crit_edge, label %if.end64

do.end53.cleanup_crit_edge:                       ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end64:                                         ; preds = %do.end53
  br i1 %tobool66.not, label %if.else75, label %if.then67

if.then67:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %p.addr.0342, ptr noundef nonnull @.str.8, i32 noundef %htmode.0)
  %add.ptr = getelementptr i8, ptr %p.addr.0342, i32 %call
  %call70 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef nonnull @.str.9, i32 noundef %spec.select331)
  %add.ptr71 = getelementptr i8, ptr %add.ptr, i32 %call70
  %6 = ptrtoint ptr %streams to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %streams, align 2
  %conv72 = zext i8 %7 to i32
  %call73 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr71, ptr noundef nonnull @.str.10, i32 noundef %conv72)
  %add.ptr74 = getelementptr i8, ptr %add.ptr71, i32 %call73
  br label %if.end108

if.else75:                                        ; preds = %if.end64
  br i1 %tobool77.not, label %if.else89, label %if.then78

if.then78:                                        ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #8
  %call80 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %p.addr.0342, ptr noundef nonnull @.str.11, i32 noundef %htmode.0)
  %add.ptr81 = getelementptr i8, ptr %p.addr.0342, i32 %call80
  %call83 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr81, ptr noundef nonnull @.str.12, i32 noundef %spec.select331)
  %add.ptr84 = getelementptr i8, ptr %add.ptr81, i32 %call83
  %8 = ptrtoint ptr %streams to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %streams, align 2
  %conv86 = zext i8 %9 to i32
  %call87 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr84, ptr noundef nonnull @.str.10, i32 noundef %conv86)
  %add.ptr88 = getelementptr i8, ptr %add.ptr84, i32 %call87
  br label %if.end108

if.else89:                                        ; preds = %if.else75
  br i1 %cmp90, label %if.then92, label %if.else97

if.then92:                                        ; preds = %if.else89
  call void @__sanitizer_cov_trace_pc() #8
  %10 = call ptr @memcpy(ptr %p.addr.0342, ptr @.str.13, i32 11)
  %add.ptr94 = getelementptr i8, ptr %p.addr.0342, i32 11
  %11 = call ptr @memcpy(ptr %add.ptr94, ptr @.str.14, i32 3)
  %add.ptr96 = getelementptr i8, ptr %p.addr.0342, i32 13
  br label %if.end108

if.else97:                                        ; preds = %if.else89
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %p.addr.0342 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 4846800225330798592, ptr %p.addr.0342, align 1
  %add.ptr99 = getelementptr i8, ptr %p.addr.0342, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %j.0339)
  %cmp100 = icmp ult i32 %j.0339, 4
  %cond = select i1 %cmp100, i32 76, i32 83
  %call102 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr99, ptr noundef nonnull @.str.16, i32 noundef %cond)
  %add.ptr103 = getelementptr i8, ptr %add.ptr99, i32 %call102
  %13 = call ptr @memcpy(ptr %add.ptr103, ptr @.str.14, i32 3)
  %add.ptr105 = getelementptr i8, ptr %add.ptr103, i32 2
  br label %if.end108

if.end108:                                        ; preds = %if.else97, %if.then92, %if.then78, %if.then67
  %p.addr.1 = phi ptr [ %add.ptr74, %if.then67 ], [ %add.ptr88, %if.then78 ], [ %add.ptr96, %if.then92 ], [ %add.ptr105, %if.else97 ]
  %14 = ptrtoint ptr %max_tp_rate to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %max_tp_rate, align 4
  %conv110 = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv110)
  %cmp111 = icmp eq i32 %or, %conv110
  %conv114 = select i1 %cmp111, i8 65, i8 32
  %incdec.ptr = getelementptr i8, ptr %p.addr.1, i32 1
  %16 = ptrtoint ptr %p.addr.1 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv114, ptr %p.addr.1, align 1
  %17 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx116, align 2
  %conv117 = zext i16 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv117)
  %cmp118 = icmp eq i32 %or, %conv117
  %conv121 = select i1 %cmp118, i8 66, i8 32
  %incdec.ptr122 = getelementptr i8, ptr %p.addr.1, i32 2
  %19 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv121, ptr %incdec.ptr, align 1
  %20 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx124, align 4
  %conv125 = zext i16 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv125)
  %cmp126 = icmp eq i32 %or, %conv125
  %conv129 = select i1 %cmp126, i8 67, i8 32
  %incdec.ptr130 = getelementptr i8, ptr %p.addr.1, i32 3
  %22 = ptrtoint ptr %incdec.ptr122 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv129, ptr %incdec.ptr122, align 1
  %23 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx132, align 2
  %conv133 = zext i16 %24 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv133)
  %cmp134 = icmp eq i32 %or, %conv133
  %conv137 = select i1 %cmp134, i8 68, i8 32
  %incdec.ptr138 = getelementptr i8, ptr %p.addr.1, i32 4
  %25 = ptrtoint ptr %incdec.ptr130 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv137, ptr %incdec.ptr130, align 1
  %26 = ptrtoint ptr %max_prob_rate to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %max_prob_rate, align 4
  %conv139 = zext i16 %27 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv139)
  %cmp140 = icmp eq i32 %or, %conv139
  %conv143 = select i1 %cmp140, i8 80, i8 32
  %incdec.ptr144 = getelementptr i8, ptr %p.addr.1, i32 5
  %28 = ptrtoint ptr %incdec.ptr138 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv143, ptr %incdec.ptr138, align 1
  %29 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx4.i, align 2
  %conv.i = zext i16 %30 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv.i)
  %cmp5.i = icmp eq i32 %or, %conv.i
  br i1 %cmp5.i, label %if.end108._crit_edge, label %for.cond1.i

if.end108._crit_edge:                             ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #8
  br label %59

for.cond1.i:                                      ; preds = %if.end108
  %31 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx4.1.i, align 2
  %conv.1.i = zext i16 %32 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv.1.i)
  %cmp5.1.i = icmp eq i32 %or, %conv.1.i
  br i1 %cmp5.1.i, label %for.cond1.i._crit_edge, label %for.cond1.1.i

for.cond1.i._crit_edge:                           ; preds = %for.cond1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %59

for.cond1.1.i:                                    ; preds = %for.cond1.i
  %33 = ptrtoint ptr %arrayidx4.2.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx4.2.i, align 2
  %conv.2.i = zext i16 %34 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv.2.i)
  %cmp5.2.i = icmp eq i32 %or, %conv.2.i
  br i1 %cmp5.2.i, label %for.cond1.1.i._crit_edge, label %for.cond1.2.i

for.cond1.1.i._crit_edge:                         ; preds = %for.cond1.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %59

for.cond1.2.i:                                    ; preds = %for.cond1.1.i
  %35 = ptrtoint ptr %arrayidx4.3.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx4.3.i, align 2
  %conv.3.i = zext i16 %36 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv.3.i)
  %cmp5.3.i = icmp eq i32 %or, %conv.3.i
  br i1 %cmp5.3.i, label %for.cond1.2.i._crit_edge, label %for.cond1.3.i

for.cond1.2.i._crit_edge:                         ; preds = %for.cond1.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %59

for.cond1.3.i:                                    ; preds = %for.cond1.2.i
  %37 = ptrtoint ptr %arrayidx4.4.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx4.4.i, align 2
  %conv.4.i = zext i16 %38 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv.4.i)
  %cmp5.4.i = icmp eq i32 %or, %conv.4.i
  br i1 %cmp5.4.i, label %for.cond1.3.i._crit_edge, label %for.cond1.4.i

for.cond1.3.i._crit_edge:                         ; preds = %for.cond1.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %59

for.cond1.4.i:                                    ; preds = %for.cond1.3.i
  %39 = ptrtoint ptr %arrayidx4.123.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx4.123.i, align 2
  %conv.124.i = zext i16 %40 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv.124.i)
  %cmp5.125.i = icmp eq i32 %or, %conv.124.i
  br i1 %cmp5.125.i, label %for.cond1.4.i._crit_edge, label %for.cond1.126.i

for.cond1.4.i._crit_edge:                         ; preds = %for.cond1.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %59

for.cond1.126.i:                                  ; preds = %for.cond1.4.i
  %41 = ptrtoint ptr %arrayidx4.1.1.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx4.1.1.i, align 2
  %conv.1.1.i = zext i16 %42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv.1.1.i)
  %cmp5.1.1.i = icmp eq i32 %or, %conv.1.1.i
  br i1 %cmp5.1.1.i, label %for.cond1.126.i._crit_edge, label %for.cond1.1.1.i

for.cond1.126.i._crit_edge:                       ; preds = %for.cond1.126.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %59

for.cond1.1.1.i:                                  ; preds = %for.cond1.126.i
  %43 = ptrtoint ptr %arrayidx4.2.1.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx4.2.1.i, align 2
  %conv.2.1.i = zext i16 %44 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv.2.1.i)
  %cmp5.2.1.i = icmp eq i32 %or, %conv.2.1.i
  br i1 %cmp5.2.1.i, label %for.cond1.1.1.i._crit_edge, label %for.cond1.2.1.i

for.cond1.1.1.i._crit_edge:                       ; preds = %for.cond1.1.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %59

for.cond1.2.1.i:                                  ; preds = %for.cond1.1.1.i
  %45 = ptrtoint ptr %arrayidx4.3.1.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx4.3.1.i, align 2
  %conv.3.1.i = zext i16 %46 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv.3.1.i)
  %cmp5.3.1.i = icmp eq i32 %or, %conv.3.1.i
  br i1 %cmp5.3.1.i, label %for.cond1.2.1.i._crit_edge, label %for.cond1.3.1.i

for.cond1.2.1.i._crit_edge:                       ; preds = %for.cond1.2.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %59

for.cond1.3.1.i:                                  ; preds = %for.cond1.2.1.i
  %47 = ptrtoint ptr %arrayidx4.4.1.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx4.4.1.i, align 2
  %conv.4.1.i = zext i16 %48 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv.4.1.i)
  %cmp5.4.1.i = icmp eq i32 %or, %conv.4.1.i
  br i1 %cmp5.4.1.i, label %for.cond1.3.1.i._crit_edge, label %for.cond1.4.1.i

for.cond1.3.1.i._crit_edge:                       ; preds = %for.cond1.3.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %59

for.cond1.4.1.i:                                  ; preds = %for.cond1.3.1.i
  %49 = ptrtoint ptr %arrayidx4.227.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %arrayidx4.227.i, align 2
  %conv.228.i = zext i16 %50 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv.228.i)
  %cmp5.229.i = icmp eq i32 %or, %conv.228.i
  br i1 %cmp5.229.i, label %for.cond1.4.1.i._crit_edge, label %for.cond1.230.i

for.cond1.4.1.i._crit_edge:                       ; preds = %for.cond1.4.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %59

for.cond1.230.i:                                  ; preds = %for.cond1.4.1.i
  %51 = ptrtoint ptr %arrayidx4.1.2.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %arrayidx4.1.2.i, align 2
  %conv.1.2.i = zext i16 %52 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv.1.2.i)
  %cmp5.1.2.i = icmp eq i32 %or, %conv.1.2.i
  br i1 %cmp5.1.2.i, label %for.cond1.230.i._crit_edge, label %for.cond1.1.2.i

for.cond1.230.i._crit_edge:                       ; preds = %for.cond1.230.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %59

for.cond1.1.2.i:                                  ; preds = %for.cond1.230.i
  %53 = ptrtoint ptr %arrayidx4.2.2.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %arrayidx4.2.2.i, align 2
  %conv.2.2.i = zext i16 %54 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv.2.2.i)
  %cmp5.2.2.i = icmp eq i32 %or, %conv.2.2.i
  br i1 %cmp5.2.2.i, label %for.cond1.1.2.i._crit_edge, label %for.cond1.2.2.i

for.cond1.1.2.i._crit_edge:                       ; preds = %for.cond1.1.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %59

for.cond1.2.2.i:                                  ; preds = %for.cond1.1.2.i
  %55 = ptrtoint ptr %arrayidx4.3.2.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %arrayidx4.3.2.i, align 2
  %conv.3.2.i = zext i16 %56 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv.3.2.i)
  %cmp5.3.2.i = icmp eq i32 %or, %conv.3.2.i
  br i1 %cmp5.3.2.i, label %for.cond1.2.2.i._crit_edge, label %for.cond1.3.2.i

for.cond1.2.2.i._crit_edge:                       ; preds = %for.cond1.2.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %59

for.cond1.3.2.i:                                  ; preds = %for.cond1.2.2.i
  %57 = ptrtoint ptr %arrayidx4.4.2.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %arrayidx4.4.2.i, align 2
  %conv.4.2.i = zext i16 %58 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv.4.2.i)
  %cmp5.4.2.i = icmp eq i32 %or, %conv.4.2.i
  br i1 %cmp5.4.2.i, label %for.cond1.3.2.i._crit_edge, label %for.cond1.3.2.i.minstrel_ht_is_sample_rate.exit_crit_edge

for.cond1.3.2.i.minstrel_ht_is_sample_rate.exit_crit_edge: ; preds = %for.cond1.3.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %minstrel_ht_is_sample_rate.exit

for.cond1.3.2.i._crit_edge:                       ; preds = %for.cond1.3.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %59

59:                                               ; preds = %for.cond1.3.2.i._crit_edge, %for.cond1.2.2.i._crit_edge, %for.cond1.1.2.i._crit_edge, %for.cond1.230.i._crit_edge, %for.cond1.4.1.i._crit_edge, %for.cond1.3.1.i._crit_edge, %for.cond1.2.1.i._crit_edge, %for.cond1.1.1.i._crit_edge, %for.cond1.126.i._crit_edge, %for.cond1.4.i._crit_edge, %for.cond1.3.i._crit_edge, %for.cond1.2.i._crit_edge, %for.cond1.1.i._crit_edge, %for.cond1.i._crit_edge, %if.end108._crit_edge
  br label %minstrel_ht_is_sample_rate.exit

minstrel_ht_is_sample_rate.exit:                  ; preds = %59, %for.cond1.3.2.i.minstrel_ht_is_sample_rate.exit_crit_edge
  %60 = phi i8 [ 83, %59 ], [ 32, %for.cond1.3.2.i.minstrel_ht_is_sample_rate.exit_crit_edge ]
  %incdec.ptr149 = getelementptr i8, ptr %p.addr.1, i32 6
  %61 = ptrtoint ptr %incdec.ptr144 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %incdec.ptr144, align 1
  br i1 %tobool66.not, label %if.else157, label %if.then152

if.then152:                                       ; preds = %minstrel_ht_is_sample_rate.exit
  call void @__sanitizer_cov_trace_pc() #8
  %62 = ptrtoint ptr %streams to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %streams, align 2
  %conv154 = zext i8 %63 to i32
  %sub = shl nuw nsw i32 %conv154, 3
  %mul = add nsw i32 %j.0339, -8
  %add = add i32 %mul, %sub
  %call155 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %incdec.ptr149, ptr noundef nonnull @.str.17, i32 noundef %add)
  br label %if.end180

if.else157:                                       ; preds = %minstrel_ht_is_sample_rate.exit
  br i1 %tobool77.not, label %if.else165, label %if.then160

if.then160:                                       ; preds = %if.else157
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %streams to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %streams, align 2
  %conv162 = zext i8 %65 to i32
  %call163 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %incdec.ptr149, ptr noundef nonnull @.str.18, i32 noundef %j.0339, i32 noundef %conv162)
  br label %if.end180

if.else165:                                       ; preds = %if.else157
  call void @__sanitizer_cov_trace_pc() #8
  %rem = and i32 %j.0339, 7
  %arrayidx169 = getelementptr [8 x i16], ptr @minstrel_ofdm_bitrates, i32 0, i32 %rem
  %rem172 = and i32 %j.0339, 3
  %arrayidx173 = getelementptr [4 x i16], ptr @minstrel_cck_bitrates, i32 0, i32 %rem172
  %r.0.in.in = select i1 %cmp90, ptr %arrayidx169, ptr %arrayidx173
  %66 = ptrtoint ptr %r.0.in.in to i32
  call void @__asan_load2_noabort(i32 %66)
  %r.0.in = load i16, ptr %r.0.in.in, align 2
  %r.0.in.frozen = freeze i16 %r.0.in
  %div335 = sdiv i16 %r.0.in.frozen, 10
  %div.sext = sext i16 %div335 to i32
  %67 = mul i16 %div335, 10
  %rem176336.decomposed = sub i16 %r.0.in.frozen, %67
  %rem176.sext = sext i16 %rem176336.decomposed to i32
  %call177 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %incdec.ptr149, ptr noundef nonnull @.str.19, i32 noundef %div.sext, i32 noundef %rem176.sext)
  br label %if.end180

if.end180:                                        ; preds = %if.else165, %if.then160, %if.then152
  %call163.sink = phi i32 [ %call163, %if.then160 ], [ %call177, %if.else165 ], [ %call155, %if.then152 ]
  %add.ptr164 = getelementptr i8, ptr %incdec.ptr149, i32 %call163.sink
  %call181 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr164, ptr noundef nonnull @.str.20, i32 noundef %or)
  %add.ptr182 = getelementptr i8, ptr %add.ptr164, i32 %call181
  %arrayidx184 = getelementptr [0 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %i, i32 4, i32 %j.0339
  %68 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %arrayidx184, align 2
  %conv185 = zext i16 %69 to i32
  %70 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %shift, align 1
  %conv186 = zext i8 %71 to i32
  %shl187 = shl i32 %conv185, %conv186
  %add190 = add i32 %shl187, 500
  %div191 = udiv i32 %add190, 1000
  %call192 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr182, ptr noundef nonnull @.str.21, i32 noundef %div191)
  %add.ptr193 = getelementptr i8, ptr %add.ptr182, i32 %call192
  %call194 = tail call i32 @minstrel_ht_get_tp_avg(ptr noundef %mi, i32 noundef %i, i32 noundef %j.0339, i32 noundef 4096) #6
  %prob_avg = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 20, i32 %i, i32 4, i32 %j.0339, i32 6
  %72 = ptrtoint ptr %prob_avg to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %prob_avg, align 4
  %conv195 = zext i16 %73 to i32
  %call196 = tail call i32 @minstrel_ht_get_tp_avg(ptr noundef %mi, i32 noundef %i, i32 noundef %j.0339, i32 noundef %conv195) #6
  %74 = ptrtoint ptr %prob_avg to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %prob_avg, align 4
  %conv198 = zext i16 %75 to i32
  %mul199 = mul nuw nsw i32 %conv198, 1000
  %76 = lshr i32 %mul199, 12
  %call194.frozen = freeze i32 %call194
  %div200 = udiv i32 %call194.frozen, 10
  %77 = mul i32 %div200, 10
  %rem201.decomposed = sub i32 %call194.frozen, %77
  %call196.frozen = freeze i32 %call196
  %div202 = udiv i32 %call196.frozen, 10
  %78 = mul i32 %div202, 10
  %rem203.decomposed = sub i32 %call196.frozen, %78
  %div204 = udiv i32 %mul199, 40960
  %rem205.lhs.trunc = trunc i32 %76 to i16
  %rem205337 = urem i16 %rem205.lhs.trunc, 10
  %rem205.zext = zext i16 %rem205337 to i32
  %retry_count = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 20, i32 %i, i32 4, i32 %j.0339, i32 8
  %79 = ptrtoint ptr %retry_count to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %retry_count, align 4
  %conv206 = zext i8 %80 to i32
  %last_success = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 20, i32 %i, i32 4, i32 %j.0339, i32 3
  %81 = ptrtoint ptr %last_success to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %last_success, align 2
  %conv207 = zext i16 %82 to i32
  %last_attempts = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 20, i32 %i, i32 4, i32 %j.0339, i32 1
  %83 = ptrtoint ptr %last_attempts to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %last_attempts, align 2
  %conv208 = zext i16 %84 to i32
  %succ_hist = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 20, i32 %i, i32 4, i32 %j.0339, i32 5
  %85 = ptrtoint ptr %succ_hist to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %succ_hist, align 4
  %conv209 = zext i32 %86 to i64
  %att_hist = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 20, i32 %i, i32 4, i32 %j.0339, i32 4
  %87 = ptrtoint ptr %att_hist to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %att_hist, align 4
  %conv210 = zext i32 %88 to i64
  %call211 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr193, ptr noundef nonnull @.str.22, i32 noundef %div200, i32 noundef %rem201.decomposed, i32 noundef %div202, i32 noundef %rem203.decomposed, i32 noundef %div204, i32 noundef %rem205.zext, i32 noundef %conv206, i32 noundef %conv207, i32 noundef %conv208, i64 noundef %conv209, i64 noundef %conv210)
  %add.ptr212 = getelementptr i8, ptr %add.ptr193, i32 %call211
  br label %cleanup

cleanup:                                          ; preds = %if.end180, %do.end53.cleanup_crit_edge
  %p.addr.3 = phi ptr [ %add.ptr212, %if.end180 ], [ %p.addr.0342, %do.end53.cleanup_crit_edge ]
  %inc = add nuw nsw i32 %j.0339, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %cleanup.cleanup215_crit_edge, label %cleanup.do.end53_crit_edge

cleanup.do.end53_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end53

cleanup.cleanup215_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup215

cleanup215:                                       ; preds = %cleanup.cleanup215_crit_edge, %entry.cleanup215_crit_edge
  %retval.0 = phi ptr [ %p, %entry.cleanup215_crit_edge ], [ %p.addr.3, %cleanup.cleanup215_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nonseekable_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @minstrel_ht_get_tp_avg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @minstrel_ht_stats_csv_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call1.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 32768, i32 noundef 3264, i32 noundef 3) #9
  %tobool.not = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.end10

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.end10:                                        ; preds = %entry
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1.i.i, ptr %private_data, align 4
  %buf = getelementptr inbounds %struct.minstrel_debugfs_info, ptr %call1.i.i, i32 0, i32 1
  %call1 = tail call fastcc ptr @minstrel_ht_stats_csv_dump(ptr noundef %1, i32 noundef 16, ptr noundef %buf)
  %call2 = tail call fastcc ptr @minstrel_ht_stats_csv_dump(ptr noundef %1, i32 noundef 0, ptr noundef %call1)
  %call2.1 = tail call fastcc ptr @minstrel_ht_stats_csv_dump(ptr noundef %1, i32 noundef 1, ptr noundef %call2)
  %call2.2 = tail call fastcc ptr @minstrel_ht_stats_csv_dump(ptr noundef %1, i32 noundef 2, ptr noundef %call2.1)
  %call2.3 = tail call fastcc ptr @minstrel_ht_stats_csv_dump(ptr noundef %1, i32 noundef 3, ptr noundef %call2.2)
  %call2.4 = tail call fastcc ptr @minstrel_ht_stats_csv_dump(ptr noundef %1, i32 noundef 4, ptr noundef %call2.3)
  %call2.5 = tail call fastcc ptr @minstrel_ht_stats_csv_dump(ptr noundef %1, i32 noundef 5, ptr noundef %call2.4)
  %call2.6 = tail call fastcc ptr @minstrel_ht_stats_csv_dump(ptr noundef %1, i32 noundef 6, ptr noundef %call2.5)
  %call2.7 = tail call fastcc ptr @minstrel_ht_stats_csv_dump(ptr noundef %1, i32 noundef 7, ptr noundef %call2.6)
  %call2.8 = tail call fastcc ptr @minstrel_ht_stats_csv_dump(ptr noundef %1, i32 noundef 8, ptr noundef %call2.7)
  %call2.9 = tail call fastcc ptr @minstrel_ht_stats_csv_dump(ptr noundef %1, i32 noundef 9, ptr noundef %call2.8)
  %call2.10 = tail call fastcc ptr @minstrel_ht_stats_csv_dump(ptr noundef %1, i32 noundef 10, ptr noundef %call2.9)
  %call2.11 = tail call fastcc ptr @minstrel_ht_stats_csv_dump(ptr noundef %1, i32 noundef 11, ptr noundef %call2.10)
  %call2.12 = tail call fastcc ptr @minstrel_ht_stats_csv_dump(ptr noundef %1, i32 noundef 12, ptr noundef %call2.11)
  %call2.13 = tail call fastcc ptr @minstrel_ht_stats_csv_dump(ptr noundef %1, i32 noundef 13, ptr noundef %call2.12)
  %call2.14 = tail call fastcc ptr @minstrel_ht_stats_csv_dump(ptr noundef %1, i32 noundef 14, ptr noundef %call2.13)
  %call2.15 = tail call fastcc ptr @minstrel_ht_stats_csv_dump(ptr noundef %1, i32 noundef 15, ptr noundef %call2.14)
  %call7 = tail call fastcc ptr @minstrel_ht_stats_csv_dump(ptr noundef %1, i32 noundef 17, ptr noundef %call2.15)
  %call7.1 = tail call fastcc ptr @minstrel_ht_stats_csv_dump(ptr noundef %1, i32 noundef 18, ptr noundef %call7)
  %call7.2 = tail call fastcc ptr @minstrel_ht_stats_csv_dump(ptr noundef %1, i32 noundef 19, ptr noundef %call7.1)
  %call7.3 = tail call fastcc ptr @minstrel_ht_stats_csv_dump(ptr noundef %1, i32 noundef 20, ptr noundef %call7.2)
  %call7.4 = tail call fastcc ptr @minstrel_ht_stats_csv_dump(ptr noundef %1, i32 noundef 21, ptr noundef %call7.3)
  %call7.5 = tail call fastcc ptr @minstrel_ht_stats_csv_dump(ptr noundef %1, i32 noundef 22, ptr noundef %call7.4)
  %call7.6 = tail call fastcc ptr @minstrel_ht_stats_csv_dump(ptr noundef %1, i32 noundef 23, ptr noundef %call7.5)
  %call7.7 = tail call fastcc ptr @minstrel_ht_stats_csv_dump(ptr noundef %1, i32 noundef 24, ptr noundef %call7.6)
  %call7.8 = tail call fastcc ptr @minstrel_ht_stats_csv_dump(ptr noundef %1, i32 noundef 25, ptr noundef %call7.7)
  %call7.9 = tail call fastcc ptr @minstrel_ht_stats_csv_dump(ptr noundef %1, i32 noundef 26, ptr noundef %call7.8)
  %call7.10 = tail call fastcc ptr @minstrel_ht_stats_csv_dump(ptr noundef %1, i32 noundef 27, ptr noundef %call7.9)
  %call7.11 = tail call fastcc ptr @minstrel_ht_stats_csv_dump(ptr noundef %1, i32 noundef 28, ptr noundef %call7.10)
  %call7.12 = tail call fastcc ptr @minstrel_ht_stats_csv_dump(ptr noundef %1, i32 noundef 29, ptr noundef %call7.11)
  %call7.13 = tail call fastcc ptr @minstrel_ht_stats_csv_dump(ptr noundef %1, i32 noundef 30, ptr noundef %call7.12)
  %call7.14 = tail call fastcc ptr @minstrel_ht_stats_csv_dump(ptr noundef %1, i32 noundef 31, ptr noundef %call7.13)
  %call7.15 = tail call fastcc ptr @minstrel_ht_stats_csv_dump(ptr noundef %1, i32 noundef 32, ptr noundef %call7.14)
  %call7.16 = tail call fastcc ptr @minstrel_ht_stats_csv_dump(ptr noundef %1, i32 noundef 33, ptr noundef %call7.15)
  %call7.17 = tail call fastcc ptr @minstrel_ht_stats_csv_dump(ptr noundef %1, i32 noundef 34, ptr noundef %call7.16)
  %call7.18 = tail call fastcc ptr @minstrel_ht_stats_csv_dump(ptr noundef %1, i32 noundef 35, ptr noundef %call7.17)
  %call7.19 = tail call fastcc ptr @minstrel_ht_stats_csv_dump(ptr noundef %1, i32 noundef 36, ptr noundef %call7.18)
  %call7.20 = tail call fastcc ptr @minstrel_ht_stats_csv_dump(ptr noundef %1, i32 noundef 37, ptr noundef %call7.19)
  %call7.21 = tail call fastcc ptr @minstrel_ht_stats_csv_dump(ptr noundef %1, i32 noundef 38, ptr noundef %call7.20)
  %call7.22 = tail call fastcc ptr @minstrel_ht_stats_csv_dump(ptr noundef %1, i32 noundef 39, ptr noundef %call7.21)
  %call7.23 = tail call fastcc ptr @minstrel_ht_stats_csv_dump(ptr noundef %1, i32 noundef 40, ptr noundef %call7.22)
  %call7.24 = tail call fastcc ptr @minstrel_ht_stats_csv_dump(ptr noundef %1, i32 noundef 41, ptr noundef %call7.23)
  %phi.cast = ptrtoint ptr %call7.24 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %phi.cast, %sub.ptr.rhs.cast
  %3 = ptrtoint ptr %call1.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %sub.ptr.sub, ptr %call1.i.i, align 4096
  %4 = add i32 %sub.ptr.sub, -32765
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32769, i32 %4)
  %cmp14 = icmp ult i32 %4, -32769
  br i1 %cmp14, label %do.end, label %for.end10.if.end29_crit_edge, !prof !103

for.end10.if.end29_crit_edge:                     ; preds = %for.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

do.end:                                           ; preds = %for.end10
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 316, i32 noundef 9, ptr noundef null) #6
  br label %if.end29

if.end29:                                         ; preds = %do.end, %for.end10.if.end29_crit_edge
  %call36 = tail call i32 @nonseekable_open(ptr noundef %inode, ptr noundef %file) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call36, %if.end29 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @minstrel_ht_stats_csv_dump(ptr noundef %mi, i32 noundef %i, ptr noundef %p) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 19, i32 %i
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.cleanup229_crit_edge, label %if.end

entry.cleanup229_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup229

if.end:                                           ; preds = %entry
  %arrayidx1 = getelementptr [0 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %i
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx1, align 2
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  %and4 = and i32 %conv, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %spec.select = select i1 %tobool5.not, i32 50, i32 56
  %htmode.0 = select i1 %tobool2.not, i32 %spec.select, i32 52
  %and9 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %spec.select363 = select i1 %tobool10.not, i32 76, i32 83
  %shl = shl i32 %i, 4
  %and32 = and i32 %shl, 65520
  %and65 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  %streams = getelementptr [0 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %i, i32 1
  %and76 = and i32 %conv, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %i)
  %cmp90 = icmp eq i32 %i, 17
  %max_tp_rate = getelementptr inbounds %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 4
  %arrayidx115 = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 4, i32 1
  %arrayidx123 = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 4, i32 2
  %arrayidx131 = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 4, i32 3
  %max_prob_rate = getelementptr inbounds %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 5
  %arrayidx4.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 18, i32 0, i32 2, i32 0
  %arrayidx4.1.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 18, i32 0, i32 2, i32 1
  %arrayidx4.2.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 18, i32 0, i32 2, i32 2
  %arrayidx4.3.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 18, i32 0, i32 2, i32 3
  %arrayidx4.4.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 18, i32 0, i32 2, i32 4
  %arrayidx4.123.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 18, i32 1, i32 2, i32 0
  %arrayidx4.1.1.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 18, i32 1, i32 2, i32 1
  %arrayidx4.2.1.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 18, i32 1, i32 2, i32 2
  %arrayidx4.3.1.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 18, i32 1, i32 2, i32 3
  %arrayidx4.4.1.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 18, i32 1, i32 2, i32 4
  %arrayidx4.227.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 18, i32 2, i32 2, i32 0
  %arrayidx4.1.2.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 18, i32 2, i32 2, i32 1
  %arrayidx4.2.2.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 18, i32 2, i32 2, i32 2
  %arrayidx4.3.2.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 18, i32 2, i32 2, i32 3
  %arrayidx4.4.2.i = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 18, i32 2, i32 2, i32 4
  %shift = getelementptr [0 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %i, i32 2
  %total_packets = getelementptr inbounds %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 11
  %sample_packets = getelementptr inbounds %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 12
  %avg_ampdu_len = getelementptr inbounds %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 3
  br label %do.end53

do.end53:                                         ; preds = %cleanup.do.end53_crit_edge, %if.end
  %p.addr.0374 = phi ptr [ %p, %if.end ], [ %p.addr.3, %cleanup.do.end53_crit_edge ]
  %j.0371 = phi i32 [ 0, %if.end ], [ %inc, %cleanup.do.end53_crit_edge ]
  %or = or i32 %j.0371, %and32
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %conv59 = zext i16 %5 to i32
  %shl60 = shl nuw nsw i32 1, %j.0371
  %and61 = and i32 %shl60, %conv59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %do.end53.cleanup_crit_edge, label %if.end64

do.end53.cleanup_crit_edge:                       ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end64:                                         ; preds = %do.end53
  br i1 %tobool66.not, label %if.else75, label %if.then67

if.then67:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %p.addr.0374, ptr noundef nonnull @.str.23, i32 noundef %htmode.0)
  %add.ptr = getelementptr i8, ptr %p.addr.0374, i32 %call
  %call70 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef nonnull @.str.24, i32 noundef %spec.select363)
  %add.ptr71 = getelementptr i8, ptr %add.ptr, i32 %call70
  %6 = ptrtoint ptr %streams to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %streams, align 2
  %conv72 = zext i8 %7 to i32
  %call73 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr71, ptr noundef nonnull @.str.25, i32 noundef %conv72)
  %add.ptr74 = getelementptr i8, ptr %add.ptr71, i32 %call73
  br label %if.end106

if.else75:                                        ; preds = %if.end64
  br i1 %tobool77.not, label %if.else89, label %if.then78

if.then78:                                        ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #8
  %call80 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %p.addr.0374, ptr noundef nonnull @.str.26, i32 noundef %htmode.0)
  %add.ptr81 = getelementptr i8, ptr %p.addr.0374, i32 %call80
  %call83 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr81, ptr noundef nonnull @.str.24, i32 noundef %spec.select363)
  %add.ptr84 = getelementptr i8, ptr %add.ptr81, i32 %call83
  %8 = ptrtoint ptr %streams to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %streams, align 2
  %conv86 = zext i8 %9 to i32
  %call87 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr84, ptr noundef nonnull @.str.25, i32 noundef %conv86)
  %add.ptr88 = getelementptr i8, ptr %add.ptr84, i32 %call87
  br label %if.end106

if.else89:                                        ; preds = %if.else75
  br i1 %cmp90, label %if.then92, label %if.else95

if.then92:                                        ; preds = %if.else89
  call void @__sanitizer_cov_trace_pc() #8
  %10 = call ptr @memcpy(ptr %p.addr.0374, ptr @.str.27, i32 9)
  %add.ptr94 = getelementptr i8, ptr %p.addr.0374, i32 8
  br label %if.end106

if.else95:                                        ; preds = %if.else89
  call void @__sanitizer_cov_trace_pc() #8
  %11 = call ptr @memcpy(ptr %p.addr.0374, ptr @.str.28, i32 5)
  %add.ptr97 = getelementptr i8, ptr %p.addr.0374, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %j.0371)
  %cmp98 = icmp ult i32 %j.0371, 4
  %cond = select i1 %cmp98, i32 76, i32 83
  %call100 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr97, ptr noundef nonnull @.str.29, i32 noundef %cond)
  %add.ptr101 = getelementptr i8, ptr %add.ptr97, i32 %call100
  %12 = call ptr @memcpy(ptr %add.ptr101, ptr @.str.30, i32 3)
  %add.ptr103 = getelementptr i8, ptr %add.ptr101, i32 2
  br label %if.end106

if.end106:                                        ; preds = %if.else95, %if.then92, %if.then78, %if.then67
  %p.addr.1 = phi ptr [ %add.ptr74, %if.then67 ], [ %add.ptr88, %if.then78 ], [ %add.ptr94, %if.then92 ], [ %add.ptr103, %if.else95 ]
  %13 = ptrtoint ptr %max_tp_rate to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %max_tp_rate, align 4
  %conv108 = zext i16 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv108)
  %cmp109 = icmp eq i32 %or, %conv108
  %cond111 = select i1 %cmp109, ptr @.str.32, ptr @.str.33
  %stpcpy = tail call ptr @stpcpy(ptr %p.addr.1, ptr nonnull %cond111) #10
  %15 = ptrtoint ptr %stpcpy to i32
  %16 = ptrtoint ptr %p.addr.1 to i32
  %17 = sub i32 %15, %16
  %add.ptr113 = getelementptr i8, ptr %p.addr.1, i32 %17
  %18 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx115, align 2
  %conv116 = zext i16 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv116)
  %cmp117 = icmp eq i32 %or, %conv116
  %cond119 = select i1 %cmp117, ptr @.str.34, ptr @.str.33
  %stpcpy358 = tail call ptr @stpcpy(ptr %add.ptr113, ptr nonnull %cond119) #10
  %20 = ptrtoint ptr %stpcpy358 to i32
  %21 = ptrtoint ptr %add.ptr113 to i32
  %22 = sub i32 %20, %21
  %add.ptr121 = getelementptr i8, ptr %add.ptr113, i32 %22
  %23 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx123, align 4
  %conv124 = zext i16 %24 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv124)
  %cmp125 = icmp eq i32 %or, %conv124
  %cond127 = select i1 %cmp125, ptr @.str.35, ptr @.str.33
  %stpcpy359 = tail call ptr @stpcpy(ptr %add.ptr121, ptr nonnull %cond127) #10
  %25 = ptrtoint ptr %stpcpy359 to i32
  %26 = ptrtoint ptr %add.ptr121 to i32
  %27 = sub i32 %25, %26
  %add.ptr129 = getelementptr i8, ptr %add.ptr121, i32 %27
  %28 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx131, align 2
  %conv132 = zext i16 %29 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv132)
  %cmp133 = icmp eq i32 %or, %conv132
  %cond135 = select i1 %cmp133, ptr @.str.36, ptr @.str.33
  %stpcpy360 = tail call ptr @stpcpy(ptr %add.ptr129, ptr nonnull %cond135) #10
  %30 = ptrtoint ptr %stpcpy360 to i32
  %31 = ptrtoint ptr %add.ptr129 to i32
  %32 = sub i32 %30, %31
  %add.ptr137 = getelementptr i8, ptr %add.ptr129, i32 %32
  %33 = ptrtoint ptr %max_prob_rate to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %max_prob_rate, align 4
  %conv138 = zext i16 %34 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv138)
  %cmp139 = icmp eq i32 %or, %conv138
  %cond141 = select i1 %cmp139, ptr @.str.37, ptr @.str.33
  %stpcpy361 = tail call ptr @stpcpy(ptr %add.ptr137, ptr nonnull %cond141) #10
  %35 = ptrtoint ptr %stpcpy361 to i32
  %36 = ptrtoint ptr %add.ptr137 to i32
  %37 = sub i32 %35, %36
  %add.ptr143 = getelementptr i8, ptr %add.ptr137, i32 %37
  %38 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx4.i, align 2
  %conv.i = zext i16 %39 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv.i)
  %cmp5.i = icmp eq i32 %or, %conv.i
  br i1 %cmp5.i, label %if.end106._crit_edge, label %for.cond1.i

if.end106._crit_edge:                             ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #8
  br label %68

for.cond1.i:                                      ; preds = %if.end106
  %40 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx4.1.i, align 2
  %conv.1.i = zext i16 %41 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv.1.i)
  %cmp5.1.i = icmp eq i32 %or, %conv.1.i
  br i1 %cmp5.1.i, label %for.cond1.i._crit_edge, label %for.cond1.1.i

for.cond1.i._crit_edge:                           ; preds = %for.cond1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %68

for.cond1.1.i:                                    ; preds = %for.cond1.i
  %42 = ptrtoint ptr %arrayidx4.2.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx4.2.i, align 2
  %conv.2.i = zext i16 %43 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv.2.i)
  %cmp5.2.i = icmp eq i32 %or, %conv.2.i
  br i1 %cmp5.2.i, label %for.cond1.1.i._crit_edge, label %for.cond1.2.i

for.cond1.1.i._crit_edge:                         ; preds = %for.cond1.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %68

for.cond1.2.i:                                    ; preds = %for.cond1.1.i
  %44 = ptrtoint ptr %arrayidx4.3.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx4.3.i, align 2
  %conv.3.i = zext i16 %45 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv.3.i)
  %cmp5.3.i = icmp eq i32 %or, %conv.3.i
  br i1 %cmp5.3.i, label %for.cond1.2.i._crit_edge, label %for.cond1.3.i

for.cond1.2.i._crit_edge:                         ; preds = %for.cond1.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %68

for.cond1.3.i:                                    ; preds = %for.cond1.2.i
  %46 = ptrtoint ptr %arrayidx4.4.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %arrayidx4.4.i, align 2
  %conv.4.i = zext i16 %47 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv.4.i)
  %cmp5.4.i = icmp eq i32 %or, %conv.4.i
  br i1 %cmp5.4.i, label %for.cond1.3.i._crit_edge, label %for.cond1.4.i

for.cond1.3.i._crit_edge:                         ; preds = %for.cond1.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %68

for.cond1.4.i:                                    ; preds = %for.cond1.3.i
  %48 = ptrtoint ptr %arrayidx4.123.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx4.123.i, align 2
  %conv.124.i = zext i16 %49 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv.124.i)
  %cmp5.125.i = icmp eq i32 %or, %conv.124.i
  br i1 %cmp5.125.i, label %for.cond1.4.i._crit_edge, label %for.cond1.126.i

for.cond1.4.i._crit_edge:                         ; preds = %for.cond1.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %68

for.cond1.126.i:                                  ; preds = %for.cond1.4.i
  %50 = ptrtoint ptr %arrayidx4.1.1.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx4.1.1.i, align 2
  %conv.1.1.i = zext i16 %51 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv.1.1.i)
  %cmp5.1.1.i = icmp eq i32 %or, %conv.1.1.i
  br i1 %cmp5.1.1.i, label %for.cond1.126.i._crit_edge, label %for.cond1.1.1.i

for.cond1.126.i._crit_edge:                       ; preds = %for.cond1.126.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %68

for.cond1.1.1.i:                                  ; preds = %for.cond1.126.i
  %52 = ptrtoint ptr %arrayidx4.2.1.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx4.2.1.i, align 2
  %conv.2.1.i = zext i16 %53 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv.2.1.i)
  %cmp5.2.1.i = icmp eq i32 %or, %conv.2.1.i
  br i1 %cmp5.2.1.i, label %for.cond1.1.1.i._crit_edge, label %for.cond1.2.1.i

for.cond1.1.1.i._crit_edge:                       ; preds = %for.cond1.1.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %68

for.cond1.2.1.i:                                  ; preds = %for.cond1.1.1.i
  %54 = ptrtoint ptr %arrayidx4.3.1.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx4.3.1.i, align 2
  %conv.3.1.i = zext i16 %55 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv.3.1.i)
  %cmp5.3.1.i = icmp eq i32 %or, %conv.3.1.i
  br i1 %cmp5.3.1.i, label %for.cond1.2.1.i._crit_edge, label %for.cond1.3.1.i

for.cond1.2.1.i._crit_edge:                       ; preds = %for.cond1.2.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %68

for.cond1.3.1.i:                                  ; preds = %for.cond1.2.1.i
  %56 = ptrtoint ptr %arrayidx4.4.1.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %arrayidx4.4.1.i, align 2
  %conv.4.1.i = zext i16 %57 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv.4.1.i)
  %cmp5.4.1.i = icmp eq i32 %or, %conv.4.1.i
  br i1 %cmp5.4.1.i, label %for.cond1.3.1.i._crit_edge, label %for.cond1.4.1.i

for.cond1.3.1.i._crit_edge:                       ; preds = %for.cond1.3.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %68

for.cond1.4.1.i:                                  ; preds = %for.cond1.3.1.i
  %58 = ptrtoint ptr %arrayidx4.227.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %arrayidx4.227.i, align 2
  %conv.228.i = zext i16 %59 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv.228.i)
  %cmp5.229.i = icmp eq i32 %or, %conv.228.i
  br i1 %cmp5.229.i, label %for.cond1.4.1.i._crit_edge, label %for.cond1.230.i

for.cond1.4.1.i._crit_edge:                       ; preds = %for.cond1.4.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %68

for.cond1.230.i:                                  ; preds = %for.cond1.4.1.i
  %60 = ptrtoint ptr %arrayidx4.1.2.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx4.1.2.i, align 2
  %conv.1.2.i = zext i16 %61 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv.1.2.i)
  %cmp5.1.2.i = icmp eq i32 %or, %conv.1.2.i
  br i1 %cmp5.1.2.i, label %for.cond1.230.i._crit_edge, label %for.cond1.1.2.i

for.cond1.230.i._crit_edge:                       ; preds = %for.cond1.230.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %68

for.cond1.1.2.i:                                  ; preds = %for.cond1.230.i
  %62 = ptrtoint ptr %arrayidx4.2.2.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %arrayidx4.2.2.i, align 2
  %conv.2.2.i = zext i16 %63 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv.2.2.i)
  %cmp5.2.2.i = icmp eq i32 %or, %conv.2.2.i
  br i1 %cmp5.2.2.i, label %for.cond1.1.2.i._crit_edge, label %for.cond1.2.2.i

for.cond1.1.2.i._crit_edge:                       ; preds = %for.cond1.1.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %68

for.cond1.2.2.i:                                  ; preds = %for.cond1.1.2.i
  %64 = ptrtoint ptr %arrayidx4.3.2.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %arrayidx4.3.2.i, align 2
  %conv.3.2.i = zext i16 %65 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv.3.2.i)
  %cmp5.3.2.i = icmp eq i32 %or, %conv.3.2.i
  br i1 %cmp5.3.2.i, label %for.cond1.2.2.i._crit_edge, label %for.cond1.3.2.i

for.cond1.2.2.i._crit_edge:                       ; preds = %for.cond1.2.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %68

for.cond1.3.2.i:                                  ; preds = %for.cond1.2.2.i
  %66 = ptrtoint ptr %arrayidx4.4.2.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %arrayidx4.4.2.i, align 2
  %conv.4.2.i = zext i16 %67 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv.4.2.i)
  %cmp5.4.2.i = icmp eq i32 %or, %conv.4.2.i
  br i1 %cmp5.4.2.i, label %for.cond1.3.2.i._crit_edge, label %for.cond1.3.2.i.minstrel_ht_is_sample_rate.exit_crit_edge

for.cond1.3.2.i.minstrel_ht_is_sample_rate.exit_crit_edge: ; preds = %for.cond1.3.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %minstrel_ht_is_sample_rate.exit

for.cond1.3.2.i._crit_edge:                       ; preds = %for.cond1.3.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %68

68:                                               ; preds = %for.cond1.3.2.i._crit_edge, %for.cond1.2.2.i._crit_edge, %for.cond1.1.2.i._crit_edge, %for.cond1.230.i._crit_edge, %for.cond1.4.1.i._crit_edge, %for.cond1.3.1.i._crit_edge, %for.cond1.2.1.i._crit_edge, %for.cond1.1.1.i._crit_edge, %for.cond1.126.i._crit_edge, %for.cond1.4.i._crit_edge, %for.cond1.3.i._crit_edge, %for.cond1.2.i._crit_edge, %for.cond1.1.i._crit_edge, %for.cond1.i._crit_edge, %if.end106._crit_edge
  br label %minstrel_ht_is_sample_rate.exit

minstrel_ht_is_sample_rate.exit:                  ; preds = %68, %for.cond1.3.2.i.minstrel_ht_is_sample_rate.exit_crit_edge
  %69 = phi ptr [ @.str.38, %68 ], [ @.str.33, %for.cond1.3.2.i.minstrel_ht_is_sample_rate.exit_crit_edge ]
  %stpcpy362 = tail call ptr @stpcpy(ptr %add.ptr143, ptr nonnull %69) #10
  %70 = ptrtoint ptr %stpcpy362 to i32
  %71 = ptrtoint ptr %add.ptr143 to i32
  %72 = sub i32 %70, %71
  %add.ptr148 = getelementptr i8, ptr %add.ptr143, i32 %72
  br i1 %tobool66.not, label %if.else156, label %if.then151

if.then151:                                       ; preds = %minstrel_ht_is_sample_rate.exit
  call void @__sanitizer_cov_trace_pc() #8
  %73 = ptrtoint ptr %streams to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %streams, align 2
  %conv153 = zext i8 %74 to i32
  %sub = shl nuw nsw i32 %conv153, 3
  %mul = add nsw i32 %j.0371, -8
  %add = add i32 %mul, %sub
  %call154 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr148, ptr noundef nonnull @.str.39, i32 noundef %add)
  br label %if.end179

if.else156:                                       ; preds = %minstrel_ht_is_sample_rate.exit
  br i1 %tobool77.not, label %if.else164, label %if.then159

if.then159:                                       ; preds = %if.else156
  call void @__sanitizer_cov_trace_pc() #8
  %75 = ptrtoint ptr %streams to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %streams, align 2
  %conv161 = zext i8 %76 to i32
  %call162 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr148, ptr noundef nonnull @.str.40, i32 noundef %j.0371, i32 noundef %conv161)
  br label %if.end179

if.else164:                                       ; preds = %if.else156
  call void @__sanitizer_cov_trace_pc() #8
  %rem = and i32 %j.0371, 7
  %arrayidx168 = getelementptr [8 x i16], ptr @minstrel_ofdm_bitrates, i32 0, i32 %rem
  %rem171 = and i32 %j.0371, 3
  %arrayidx172 = getelementptr [4 x i16], ptr @minstrel_cck_bitrates, i32 0, i32 %rem171
  %r.0.in.in = select i1 %cmp90, ptr %arrayidx168, ptr %arrayidx172
  %77 = ptrtoint ptr %r.0.in.in to i32
  call void @__asan_load2_noabort(i32 %77)
  %r.0.in = load i16, ptr %r.0.in.in, align 2
  %r.0.in.frozen = freeze i16 %r.0.in
  %div367 = sdiv i16 %r.0.in.frozen, 10
  %div.sext = sext i16 %div367 to i32
  %78 = mul i16 %div367, 10
  %rem175368.decomposed = sub i16 %r.0.in.frozen, %78
  %rem175.sext = sext i16 %rem175368.decomposed to i32
  %call176 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr148, ptr noundef nonnull @.str.41, i32 noundef %div.sext, i32 noundef %rem175.sext)
  br label %if.end179

if.end179:                                        ; preds = %if.else164, %if.then159, %if.then151
  %call162.sink = phi i32 [ %call162, %if.then159 ], [ %call176, %if.else164 ], [ %call154, %if.then151 ]
  %add.ptr163 = getelementptr i8, ptr %add.ptr148, i32 %call162.sink
  %call180 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr163, ptr noundef nonnull @.str.42, i32 noundef %or)
  %add.ptr181 = getelementptr i8, ptr %add.ptr163, i32 %call180
  %arrayidx183 = getelementptr [0 x %struct.mcs_group], ptr @minstrel_mcs_groups, i32 0, i32 %i, i32 4, i32 %j.0371
  %79 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %arrayidx183, align 2
  %conv184 = zext i16 %80 to i32
  %81 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %shift, align 1
  %conv185 = zext i8 %82 to i32
  %shl186 = shl i32 %conv184, %conv185
  %add189 = add i32 %shl186, 500
  %div190 = udiv i32 %add189, 1000
  %call191 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr181, ptr noundef nonnull @.str.42, i32 noundef %div190)
  %add.ptr192 = getelementptr i8, ptr %add.ptr181, i32 %call191
  %call193 = tail call i32 @minstrel_ht_get_tp_avg(ptr noundef %mi, i32 noundef %i, i32 noundef %j.0371, i32 noundef 4096) #6
  %prob_avg = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 20, i32 %i, i32 4, i32 %j.0371, i32 6
  %83 = ptrtoint ptr %prob_avg to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %prob_avg, align 4
  %conv194 = zext i16 %84 to i32
  %call195 = tail call i32 @minstrel_ht_get_tp_avg(ptr noundef %mi, i32 noundef %i, i32 noundef %j.0371, i32 noundef %conv194) #6
  %85 = ptrtoint ptr %prob_avg to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %prob_avg, align 4
  %conv197 = zext i16 %86 to i32
  %mul198 = mul nuw nsw i32 %conv197, 1000
  %87 = lshr i32 %mul198, 12
  %call193.frozen = freeze i32 %call193
  %div199 = udiv i32 %call193.frozen, 10
  %88 = mul i32 %div199, 10
  %rem200.decomposed = sub i32 %call193.frozen, %88
  %call195.frozen = freeze i32 %call195
  %div201 = udiv i32 %call195.frozen, 10
  %89 = mul i32 %div201, 10
  %rem202.decomposed = sub i32 %call195.frozen, %89
  %div203 = udiv i32 %mul198, 40960
  %rem204.lhs.trunc = trunc i32 %87 to i16
  %rem204369 = urem i16 %rem204.lhs.trunc, 10
  %rem204.zext = zext i16 %rem204369 to i32
  %retry_count = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 20, i32 %i, i32 4, i32 %j.0371, i32 8
  %90 = ptrtoint ptr %retry_count to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %retry_count, align 4
  %conv205 = zext i8 %91 to i32
  %last_success = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 20, i32 %i, i32 4, i32 %j.0371, i32 3
  %92 = ptrtoint ptr %last_success to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %last_success, align 2
  %conv206 = zext i16 %93 to i32
  %last_attempts = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 20, i32 %i, i32 4, i32 %j.0371, i32 1
  %94 = ptrtoint ptr %last_attempts to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %last_attempts, align 2
  %conv207 = zext i16 %95 to i32
  %succ_hist = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 20, i32 %i, i32 4, i32 %j.0371, i32 5
  %96 = ptrtoint ptr %succ_hist to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %succ_hist, align 4
  %conv208 = zext i32 %97 to i64
  %att_hist = getelementptr %struct.minstrel_ht_sta, ptr %mi, i32 0, i32 20, i32 %i, i32 4, i32 %j.0371, i32 4
  %98 = ptrtoint ptr %att_hist to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %att_hist, align 4
  %conv209 = zext i32 %99 to i64
  %call210 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr192, ptr noundef nonnull @.str.43, i32 noundef %div199, i32 noundef %rem200.decomposed, i32 noundef %div201, i32 noundef %rem202.decomposed, i32 noundef %div203, i32 noundef %rem204.zext, i32 noundef %conv205, i32 noundef %conv206, i32 noundef %conv207, i64 noundef %conv208, i64 noundef %conv209)
  %add.ptr211 = getelementptr i8, ptr %add.ptr192, i32 %call210
  %100 = ptrtoint ptr %total_packets to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %total_packets, align 4
  %102 = ptrtoint ptr %sample_packets to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %sample_packets, align 4
  %sub212 = sub i32 %101, %103
  %104 = tail call i32 @llvm.smax.i32(i32 %sub212, i32 0)
  %105 = ptrtoint ptr %avg_ampdu_len to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %avg_ampdu_len, align 4
  %shr220 = lshr i32 %106, 12
  %mul222 = mul i32 %106, 10
  %shr223 = lshr i32 %mul222, 12
  %rem224 = urem i32 %shr223, 10
  %call225 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr211, ptr noundef nonnull @.str.44, i32 noundef %104, i32 noundef %103, i32 noundef %shr220, i32 noundef %rem224)
  %add.ptr226 = getelementptr i8, ptr %add.ptr211, i32 %call225
  br label %cleanup

cleanup:                                          ; preds = %if.end179, %do.end53.cleanup_crit_edge
  %p.addr.3 = phi ptr [ %add.ptr226, %if.end179 ], [ %p.addr.0374, %do.end53.cleanup_crit_edge ]
  %inc = add nuw nsw i32 %j.0371, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %cleanup.cleanup229_crit_edge, label %cleanup.do.end53_crit_edge

cleanup.do.end53_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end53

cleanup.cleanup229_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup229

cleanup229:                                       ; preds = %cleanup.cleanup229_crit_edge, %entry.cleanup229_crit_edge
  %retval.0 = phi ptr [ %p, %entry.cleanup229_crit_edge ], [ %p.addr.3, %cleanup.cleanup229_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare ptr @stpcpy(ptr noalias writeonly, ptr noalias nocapture readonly) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99, !100, !101}
!llvm.ident = !{!102}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/mac80211/rc80211_minstrel_ht_debugfs.c", i32 332, i32 22}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/mac80211/rc80211_minstrel_ht_debugfs.c", i32 334, i32 22}
!4 = !{ptr @minstrel_ht_stat_fops, !5, !"minstrel_ht_stat_fops", i1 false, i1 false}
!5 = !{!"../net/mac80211/rc80211_minstrel_ht_debugfs.c", i32 185, i32 37}
!6 = distinct !{null, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/mac80211/rc80211_minstrel_ht_debugfs.c", i32 159, i32 18}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/mac80211/rc80211_minstrel_ht_debugfs.c", i32 161, i32 8}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/mac80211/rc80211_minstrel_ht_debugfs.c", i32 163, i32 8}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/mac80211/rc80211_minstrel_ht_debugfs.c", i32 171, i32 18}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/mac80211/rc80211_minstrel_ht_debugfs.c", i32 176, i32 19}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/mac80211/rc80211_minstrel_ht_debugfs.c", i32 180, i32 2}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/mac80211/rc80211_minstrel_ht_debugfs.c", i32 78, i32 20}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/mac80211/rc80211_minstrel_ht_debugfs.c", i32 79, i32 20}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/mac80211/rc80211_minstrel_ht_debugfs.c", i32 80, i32 20}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/mac80211/rc80211_minstrel_ht_debugfs.c", i32 82, i32 20}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/mac80211/rc80211_minstrel_ht_debugfs.c", i32 83, i32 20}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/mac80211/rc80211_minstrel_ht_debugfs.c", i32 86, i32 20}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/mac80211/rc80211_minstrel_ht_debugfs.c", i32 87, i32 20}
!32 = distinct !{null, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/mac80211/rc80211_minstrel_ht_debugfs.c", i32 89, i32 20}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/mac80211/rc80211_minstrel_ht_debugfs.c", i32 90, i32 20}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/mac80211/rc80211_minstrel_ht_debugfs.c", i32 102, i32 20}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/mac80211/rc80211_minstrel_ht_debugfs.c", i32 104, i32 20}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/mac80211/rc80211_minstrel_ht_debugfs.c", i32 113, i32 20}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/mac80211/rc80211_minstrel_ht_debugfs.c", i32 116, i32 19}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/mac80211/rc80211_minstrel_ht_debugfs.c", i32 122, i32 19}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../net/mac80211/rc80211_minstrel_ht_debugfs.c", i32 128, i32 19}
!48 = !{ptr @minstrel_ht_stat_csv_fops, !49, !"minstrel_ht_stat_csv_fops", i1 false, i1 false}
!49 = !{!"../net/mac80211/rc80211_minstrel_ht_debugfs.c", i32 321, i32 37}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../net/mac80211/rc80211_minstrel_ht_debugfs.c", i32 224, i32 20}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../net/mac80211/rc80211_minstrel_ht_debugfs.c", i32 225, i32 20}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../net/mac80211/rc80211_minstrel_ht_debugfs.c", i32 226, i32 20}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../net/mac80211/rc80211_minstrel_ht_debugfs.c", i32 228, i32 20}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../net/mac80211/rc80211_minstrel_ht_debugfs.c", i32 232, i32 20}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../net/mac80211/rc80211_minstrel_ht_debugfs.c", i32 234, i32 20}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../net/mac80211/rc80211_minstrel_ht_debugfs.c", i32 235, i32 20}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../net/mac80211/rc80211_minstrel_ht_debugfs.c", i32 236, i32 20}
!66 = distinct !{null, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../net/mac80211/rc80211_minstrel_ht_debugfs.c", i32 239, i32 19}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../net/mac80211/rc80211_minstrel_ht_debugfs.c", i32 239, i32 56}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../net/mac80211/rc80211_minstrel_ht_debugfs.c", i32 239, i32 62}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../net/mac80211/rc80211_minstrel_ht_debugfs.c", i32 240, i32 56}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../net/mac80211/rc80211_minstrel_ht_debugfs.c", i32 241, i32 56}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../net/mac80211/rc80211_minstrel_ht_debugfs.c", i32 242, i32 56}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../net/mac80211/rc80211_minstrel_ht_debugfs.c", i32 243, i32 55}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../net/mac80211/rc80211_minstrel_ht_debugfs.c", i32 244, i32 64}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../net/mac80211/rc80211_minstrel_ht_debugfs.c", i32 247, i32 20}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../net/mac80211/rc80211_minstrel_ht_debugfs.c", i32 249, i32 20}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../net/mac80211/rc80211_minstrel_ht_debugfs.c", i32 258, i32 20}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../net/mac80211/rc80211_minstrel_ht_debugfs.c", i32 261, i32 19}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../net/mac80211/rc80211_minstrel_ht_debugfs.c", i32 272, i32 19}
!92 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../net/mac80211/rc80211_minstrel_ht_debugfs.c", i32 282, i32 19}
!94 = !{i32 1, !"wchar_size", i32 2}
!95 = !{i32 1, !"min_enum_size", i32 4}
!96 = !{i32 8, !"branch-target-enforcement", i32 0}
!97 = !{i32 8, !"sign-return-address", i32 0}
!98 = !{i32 8, !"sign-return-address-all", i32 0}
!99 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!100 = !{i32 7, !"uwtable", i32 1}
!101 = !{i32 7, !"frame-pointer", i32 2}
!102 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!103 = !{!"branch_weights", i32 1, i32 2000}
