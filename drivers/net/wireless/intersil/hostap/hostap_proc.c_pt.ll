; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intersil/hostap/hostap_proc.c_pt.bc'
source_filename = "../drivers/net/wireless/intersil/hostap/hostap_proc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+hostap_init_proc\22, \22a\22\09"
module asm "\09.weak\09__crc_hostap_init_proc\09\09\09\09"
module asm "\09.long\09__crc_hostap_init_proc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hostap_init_proc:\09\09\09\09\09"
module asm "\09.asciz \09\22hostap_init_proc\22\09\09\09\09\09"
module asm "__kstrtabns_hostap_init_proc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+hostap_remove_proc\22, \22a\22\09"
module asm "\09.weak\09__crc_hostap_remove_proc\09\09\09\09"
module asm "\09.long\09__crc_hostap_remove_proc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hostap_remove_proc:\09\09\09\09\09"
module asm "\09.asciz \09\22hostap_remove_proc\22\09\09\09\09\09"
module asm "__kstrtabns_hostap_remove_proc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.local_info = type { ptr, i32, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.mutex, i16, %struct.spinlock, i32, [8 x i16], [8 x i16], i32, i32, i32, ptr, [33 x i8], [33 x i8], i32, i16, i16, %struct.comm_tallies_sums, ptr, i32, i32, [6 x i8], i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, i32, %struct.work_struct, i32, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.spinlock, i32, i32, i32, i16, i32, %struct.iw_statistics, i32, i32, i32, i32, i32, ptr, %struct.net_device_stats, [6 x i8], ptr, %struct.net_device_stats, %struct.lib80211_crypt_info, i32, i32, i32, i32, i32, i32, [4 x %struct.prism2_frag_entry], i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, %struct.tasklet_struct, %struct.tasklet_struct, %struct.sk_buff_head, ptr, %struct.tasklet_struct, %struct.sk_buff_head, %struct.tasklet_struct, %struct.sk_buff_head, i32, i32, ptr, i32, i32, %struct.work_struct, i32, i32, i32, [6 x i8], %struct.wait_queue_head, %struct.timer_list, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, i32, i32, %struct.work_struct, i32, %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.comm_tallies_sums = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.iw_statistics = type { i16, %struct.iw_quality, %struct.iw_discarded, %struct.iw_missed }
%struct.iw_quality = type { i8, i8, i8, i8 }
%struct.iw_discarded = type { i32, i32, i32, i32, i32 }
%struct.iw_missed = type { i32 }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lib80211_crypt_info = type { ptr, ptr, [4 x ptr], i32, %struct.list_head, %struct.timer_list, i32 }
%struct.prism2_frag_entry = type { i32, i32, i32, ptr, [6 x i8], [6 x i8] }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.120, i32 }
%union.anon.120 = type { ptr }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.prism2_helper_functions = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.lib80211_crypt_data = type { %struct.list_head, ptr, ptr, %struct.atomic_t }
%struct.lib80211_crypto_ops = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.121, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.122, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.123, ptr, %struct.address_space, %struct.list_head, %union.anon.124, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.121 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.122 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.123 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.124 = type { ptr }
%struct.hostap_interface = type { %struct.list_head, ptr, ptr, %struct.net_device_stats, %struct.iw_spy_data, %struct.iw_public_data, i32, %union.anon.125 }
%struct.iw_spy_data = type { i32, [8 x [6 x i8]], [8 x %struct.iw_quality], %struct.iw_quality, %struct.iw_quality, [8 x i8] }
%struct.iw_public_data = type { ptr, ptr }
%union.anon.125 = type { %struct.hostap_interface_wds }
%struct.hostap_interface_wds = type { [6 x i8] }
%struct.hostap_bss_info = type { %struct.list_head, i32, i32, [6 x i8], i16, [32 x i8], i32, [64 x i8], i32, [64 x i8], i32, i32, i32 }
%struct.hfa384x_hostscan_result = type { i16, i16, i16, [6 x i8], i16, i16, i16, [32 x i8], [10 x i8], i16, i16 }

@hostap_proc = external dso_local local_unnamed_addr global ptr, align 4
@hostap_init_proc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 365, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014%s: hostap proc directory not created\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hostap_init_proc\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/net/wireless/intersil/hostap/hostap_proc.c\00", [45 x i8] zeroinitializer }, align 32
@hostap_init_proc._entry_ptr = internal global ptr @hostap_init_proc._entry, section ".printk_index", align 4
@hostap_init_proc._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016/proc/net/hostap/%s creation failed\0A\00", [57 x i8] zeroinitializer }, align 32
@hostap_init_proc._entry_ptr.5 = internal global ptr @hostap_init_proc._entry.3, section ".printk_index", align 4
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"debug\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"stats\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"wds\00", [28 x i8] zeroinitializer }, align 32
@prism2_wds_proc_seqops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @prism2_wds_proc_start, ptr @prism2_wds_proc_stop, ptr @prism2_wds_proc_next, ptr @prism2_wds_proc_show }, [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pda\00", [28 x i8] zeroinitializer }, align 32
@prism2_pda_proc_ops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 0, ptr null, ptr @prism2_pda_proc_read, ptr null, ptr null, ptr @generic_file_llseek, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aux_dump\00", [23 x i8] zeroinitializer }, align 32
@prism2_aux_dump_proc_ops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 0, ptr null, ptr @prism2_aux_dump_proc_no_read, ptr null, ptr null, ptr @default_llseek, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bss_list\00", [23 x i8] zeroinitializer }, align 32
@prism2_bss_list_proc_seqops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @prism2_bss_list_proc_start, ptr @prism2_bss_list_proc_stop, ptr @prism2_bss_list_proc_next, ptr @prism2_bss_list_proc_show }, [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"crypt\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"scan_results\00", [19 x i8] zeroinitializer }, align 32
@prism2_scan_results_proc_seqops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @prism2_scan_results_proc_start, ptr @prism2_scan_results_proc_stop, ptr @prism2_scan_results_proc_next, ptr @prism2_scan_results_proc_show }, [16 x i8] zeroinitializer }, align 32
@__kstrtab_hostap_init_proc = external dso_local constant [0 x i8], align 1
@__kstrtabns_hostap_init_proc = external dso_local constant [0 x i8], align 1
@__ksymtab_hostap_init_proc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hostap_init_proc to i32), ptr @__kstrtab_hostap_init_proc, ptr @__kstrtabns_hostap_init_proc }, section "___ksymtab+hostap_init_proc", align 4
@__kstrtab_hostap_remove_proc = external dso_local constant [0 x i8], align 1
@__kstrtabns_hostap_remove_proc = external dso_local constant [0 x i8], align 1
@__ksymtab_hostap_remove_proc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hostap_remove_proc to i32), ptr @__kstrtab_hostap_remove_proc, ptr @__kstrtabns_hostap_remove_proc }, section "___ksymtab+hostap_remove_proc", align 4
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"next_txfid=%d next_alloc=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"FID: tx=%04X intransmit=%04X\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"FW TX rate control: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"beacon_int=%d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dtim_period=%d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wds_max_connections=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dev_enabled=%d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sw_tick_stuck=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"crypt[%d]=%s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pri_only=%d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pci=%d\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sram_type=%d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"no_pri=%d\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TxUnicastFrames=%u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"TxMulticastframes=%u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TxFragments=%u\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TxUnicastOctets=%u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"TxMulticastOctets=%u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"TxDeferredTransmissions=%u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"TxSingleRetryFrames=%u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"TxMultipleRetryFrames=%u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"TxRetryLimitExceeded=%u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TxDiscards=%u\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"RxUnicastFrames=%u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"RxMulticastFrames=%u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RxFragments=%u\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"RxUnicastOctets=%u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"RxMulticastOctets=%u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RxFCSErrors=%u\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"RxDiscardsNoBuffer=%u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"TxDiscardsWrongSA=%u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"RxDiscardsWEPUndecryptable=%u\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"RxMessageInMsgFragments=%u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"RxMessageInBadMsgFragments=%u\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s\09%pM\0A\00", [24 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.49 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"#BSSID\09last_update\09count\09capab_info\09SSID(txt)\09SSID(hex)\09WPA IE\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%pM\09%lu\09%u\090x%x\09\00", [47 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%*pE\00", [27 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%*phN\00", [26 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tx_keyidx=%d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"CHID ANL SL BcnInt Capab Rate BSSID ATIM SupRates SSID\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%d %d %d %d 0x%02x %d %pM %d \00", [34 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"<%02x>\00", [25 x i8] zeroinitializer }, align 32
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 364, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 371, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 377, i32 26 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 380, i32 26 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 382, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant [23 x i8] c"prism2_wds_proc_seqops\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 117, i32 36 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 384, i32 19 }
@___asan_gen_.93 = private unnamed_addr constant [20 x i8] c"prism2_pda_proc_ops\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 216, i32 30 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 386, i32 19 }
@___asan_gen_.99 = private unnamed_addr constant [25 x i8] c"prism2_aux_dump_proc_ops\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 228, i32 30 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 389, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant [28 x i8] c"prism2_bss_list_proc_seqops\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 172, i32 36 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 391, i32 26 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 398, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant [32 x i8] c"prism2_scan_results_proc_seqops\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 350, i32 36 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 20, i32 16 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 23, i32 17 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 25, i32 16 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 26, i32 16 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 27, i32 16 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 28, i32 16 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 29, i32 16 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 30, i32 16 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 34, i32 18 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 38, i32 16 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 39, i32 16 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 40, i32 16 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 41, i32 16 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 53, i32 16 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 54, i32 16 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 55, i32 16 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 56, i32 16 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 57, i32 16 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 58, i32 16 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 60, i32 16 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 61, i32 16 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 63, i32 16 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 65, i32 16 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 66, i32 16 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 67, i32 16 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 68, i32 16 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 69, i32 16 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 70, i32 16 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 71, i32 16 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 72, i32 16 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 73, i32 16 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 74, i32 16 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 76, i32 16 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 78, i32 16 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 93, i32 17 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 230, i32 6 }
@___asan_gen_.226 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 214, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 174, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 131, i32 17 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 137, i32 16 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 141, i32 16 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 144, i32 16 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 185, i32 16 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 283, i32 7 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 290, i32 16 }
@___asan_gen_.252 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.253 = private constant [54 x i8] c"../drivers/net/wireless/intersil/hostap/hostap_proc.c\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 304, i32 17 }
@llvm.compiler.used = appending global [69 x ptr] [ptr @__ksymtab_hostap_init_proc, ptr @__ksymtab_hostap_remove_proc, ptr @hostap_init_proc._entry, ptr @hostap_init_proc._entry.3, ptr @hostap_init_proc._entry_ptr, ptr @hostap_init_proc._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @prism2_wds_proc_seqops, ptr @.str.9, ptr @prism2_pda_proc_ops, ptr @.str.10, ptr @prism2_aux_dump_proc_ops, ptr @.str.11, ptr @prism2_bss_list_proc_seqops, ptr @.str.12, ptr @.str.13, ptr @prism2_scan_results_proc_seqops, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_init_proc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_init_proc._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_wds_proc_seqops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_pda_proc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_aux_dump_proc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_bss_list_proc_seqops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_scan_results_proc_seqops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hostap_init_proc(ptr noundef %local) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %proc = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 29
  %0 = ptrtoint ptr %proc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %proc, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hostap_proc to i32))
  %1 = load ptr, ptr @hostap_proc, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 5
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %3) #9
  br label %return

if.end:                                           ; preds = %entry
  %ddev = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 6
  %4 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ddev, align 4
  %call3 = tail call ptr @proc_mkdir(ptr noundef %5, ptr noundef nonnull %1) #6
  %6 = ptrtoint ptr %proc to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call3, ptr %proc, align 4
  %cmp6 = icmp eq ptr %call3, null
  br i1 %cmp6, label %do.end9, label %if.end15

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ddev, align 4
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %8) #9
  br label %return

if.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = tail call ptr @proc_create_single_data(ptr noundef nonnull @.str.6, i16 noundef zeroext 0, ptr noundef nonnull %call3, ptr noundef nonnull @prism2_debug_proc_show, ptr noundef %local) #6
  %9 = ptrtoint ptr %proc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %proc, align 4
  %call19 = tail call ptr @proc_create_single_data(ptr noundef nonnull @.str.7, i16 noundef zeroext 0, ptr noundef %10, ptr noundef nonnull @prism2_stats_proc_show, ptr noundef %local) #6
  %11 = ptrtoint ptr %proc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %proc, align 4
  %call21 = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.8, i16 noundef zeroext 0, ptr noundef %12, ptr noundef nonnull @prism2_wds_proc_seqops, i32 noundef 0, ptr noundef %local) #6
  %13 = ptrtoint ptr %proc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %proc, align 4
  %call23 = tail call ptr @proc_create_data(ptr noundef nonnull @.str.9, i16 noundef zeroext 0, ptr noundef %14, ptr noundef nonnull @prism2_pda_proc_ops, ptr noundef %local) #6
  %15 = ptrtoint ptr %proc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %proc, align 4
  %func = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 92
  %17 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %func, align 4
  %read_aux_proc_ops = getelementptr inbounds %struct.prism2_helper_functions, ptr %18, i32 0, i32 16
  %19 = ptrtoint ptr %read_aux_proc_ops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read_aux_proc_ops, align 4
  %tobool.not = icmp eq ptr %20, null
  %.prism2_aux_dump_proc_ops = select i1 %tobool.not, ptr @prism2_aux_dump_proc_ops, ptr %20
  %call25 = tail call ptr @proc_create_data(ptr noundef nonnull @.str.10, i16 noundef zeroext 0, ptr noundef %16, ptr noundef %.prism2_aux_dump_proc_ops, ptr noundef %local) #6
  %21 = ptrtoint ptr %proc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %proc, align 4
  %call27 = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.11, i16 noundef zeroext 0, ptr noundef %22, ptr noundef nonnull @prism2_bss_list_proc_seqops, i32 noundef 0, ptr noundef %local) #6
  %23 = ptrtoint ptr %proc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %proc, align 4
  %call29 = tail call ptr @proc_create_single_data(ptr noundef nonnull @.str.12, i16 noundef zeroext 0, ptr noundef %24, ptr noundef nonnull @prism2_crypt_proc_show, ptr noundef %local) #6
  %25 = ptrtoint ptr %proc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %proc, align 4
  %call31 = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.13, i16 noundef zeroext 0, ptr noundef %26, ptr noundef nonnull @prism2_scan_results_proc_seqops, i32 noundef 0, ptr noundef %local) #6
  br label %return

return:                                           ; preds = %if.end15, %do.end9, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_mkdir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_single_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prism2_debug_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %next_txfid = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %next_txfid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %next_txfid, align 4
  %next_alloc = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %next_alloc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %next_alloc, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.14, i32 noundef %3, i32 noundef %5) #6
  %arrayidx = getelementptr %struct.local_info, ptr %1, i32 0, i32 17, i32 0
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %7 to i32
  %arrayidx1 = getelementptr %struct.local_info, ptr %1, i32 0, i32 18, i32 0
  %8 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx1, align 2
  %conv2 = zext i16 %9 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.15, i32 noundef %conv, i32 noundef %conv2) #6
  %arrayidx.1 = getelementptr %struct.local_info, ptr %1, i32 0, i32 17, i32 1
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx.1, align 2
  %conv.1 = zext i16 %11 to i32
  %arrayidx1.1 = getelementptr %struct.local_info, ptr %1, i32 0, i32 18, i32 1
  %12 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx1.1, align 2
  %conv2.1 = zext i16 %13 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.15, i32 noundef %conv.1, i32 noundef %conv2.1) #6
  %arrayidx.2 = getelementptr %struct.local_info, ptr %1, i32 0, i32 17, i32 2
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx.2, align 2
  %conv.2 = zext i16 %15 to i32
  %arrayidx1.2 = getelementptr %struct.local_info, ptr %1, i32 0, i32 18, i32 2
  %16 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx1.2, align 2
  %conv2.2 = zext i16 %17 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.15, i32 noundef %conv.2, i32 noundef %conv2.2) #6
  %arrayidx.3 = getelementptr %struct.local_info, ptr %1, i32 0, i32 17, i32 3
  %18 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx.3, align 2
  %conv.3 = zext i16 %19 to i32
  %arrayidx1.3 = getelementptr %struct.local_info, ptr %1, i32 0, i32 18, i32 3
  %20 = ptrtoint ptr %arrayidx1.3 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx1.3, align 2
  %conv2.3 = zext i16 %21 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.15, i32 noundef %conv.3, i32 noundef %conv2.3) #6
  %arrayidx.4 = getelementptr %struct.local_info, ptr %1, i32 0, i32 17, i32 4
  %22 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx.4, align 2
  %conv.4 = zext i16 %23 to i32
  %arrayidx1.4 = getelementptr %struct.local_info, ptr %1, i32 0, i32 18, i32 4
  %24 = ptrtoint ptr %arrayidx1.4 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx1.4, align 2
  %conv2.4 = zext i16 %25 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.15, i32 noundef %conv.4, i32 noundef %conv2.4) #6
  %arrayidx.5 = getelementptr %struct.local_info, ptr %1, i32 0, i32 17, i32 5
  %26 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx.5, align 2
  %conv.5 = zext i16 %27 to i32
  %arrayidx1.5 = getelementptr %struct.local_info, ptr %1, i32 0, i32 18, i32 5
  %28 = ptrtoint ptr %arrayidx1.5 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx1.5, align 2
  %conv2.5 = zext i16 %29 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.15, i32 noundef %conv.5, i32 noundef %conv2.5) #6
  %arrayidx.6 = getelementptr %struct.local_info, ptr %1, i32 0, i32 17, i32 6
  %30 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx.6, align 2
  %conv.6 = zext i16 %31 to i32
  %arrayidx1.6 = getelementptr %struct.local_info, ptr %1, i32 0, i32 18, i32 6
  %32 = ptrtoint ptr %arrayidx1.6 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx1.6, align 2
  %conv2.6 = zext i16 %33 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.15, i32 noundef %conv.6, i32 noundef %conv2.6) #6
  %arrayidx.7 = getelementptr %struct.local_info, ptr %1, i32 0, i32 17, i32 7
  %34 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx.7, align 2
  %conv.7 = zext i16 %35 to i32
  %arrayidx1.7 = getelementptr %struct.local_info, ptr %1, i32 0, i32 18, i32 7
  %36 = ptrtoint ptr %arrayidx1.7 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx1.7, align 2
  %conv2.7 = zext i16 %37 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.15, i32 noundef %conv.7, i32 noundef %conv2.7) #6
  %fw_tx_rate_control = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 38
  %38 = ptrtoint ptr %fw_tx_rate_control to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %fw_tx_rate_control, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.16, i32 noundef %39) #6
  %beacon_int = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 34
  %40 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %beacon_int, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.17, i32 noundef %41) #6
  %dtim_period = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 35
  %42 = ptrtoint ptr %dtim_period to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dtim_period, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.18, i32 noundef %43) #6
  %wds_max_connections = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 59
  %44 = ptrtoint ptr %wds_max_connections to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %wds_max_connections, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.19, i32 noundef %45) #6
  %dev_enabled = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 2
  %46 = ptrtoint ptr %dev_enabled to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dev_enabled, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.20, i32 noundef %47) #6
  %sw_tick_stuck = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 121
  %48 = ptrtoint ptr %sw_tick_stuck to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sw_tick_stuck, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.21, i32 noundef %49) #6
  %arrayidx7 = getelementptr %struct.local_info, ptr %1, i32 0, i32 75, i32 2, i32 0
  %50 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx7, align 4
  %tobool.not = icmp eq ptr %51, null
  br i1 %tobool.not, label %entry.for.inc16_crit_edge, label %land.lhs.true

entry.for.inc16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc16

land.lhs.true:                                    ; preds = %entry
  %ops = getelementptr inbounds %struct.lib80211_crypt_data, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ops, align 4
  %tobool11.not = icmp eq ptr %53, null
  br i1 %tobool11.not, label %land.lhs.true.for.inc16_crit_edge, label %if.then

land.lhs.true.for.inc16_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc16

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.22, i32 noundef 0, ptr noundef %55) #6
  br label %for.inc16

for.inc16:                                        ; preds = %if.then, %land.lhs.true.for.inc16_crit_edge, %entry.for.inc16_crit_edge
  %arrayidx7.1 = getelementptr %struct.local_info, ptr %1, i32 0, i32 75, i32 2, i32 1
  %56 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx7.1, align 4
  %tobool.not.1 = icmp eq ptr %57, null
  br i1 %tobool.not.1, label %for.inc16.for.inc16.1_crit_edge, label %land.lhs.true.1

for.inc16.for.inc16.1_crit_edge:                  ; preds = %for.inc16
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc16.1

land.lhs.true.1:                                  ; preds = %for.inc16
  %ops.1 = getelementptr inbounds %struct.lib80211_crypt_data, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %ops.1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ops.1, align 4
  %tobool11.not.1 = icmp eq ptr %59, null
  br i1 %tobool11.not.1, label %land.lhs.true.1.for.inc16.1_crit_edge, label %if.then.1

land.lhs.true.1.for.inc16.1_crit_edge:            ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc16.1

if.then.1:                                        ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.22, i32 noundef 1, ptr noundef %61) #6
  br label %for.inc16.1

for.inc16.1:                                      ; preds = %if.then.1, %land.lhs.true.1.for.inc16.1_crit_edge, %for.inc16.for.inc16.1_crit_edge
  %arrayidx7.2 = getelementptr %struct.local_info, ptr %1, i32 0, i32 75, i32 2, i32 2
  %62 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx7.2, align 4
  %tobool.not.2 = icmp eq ptr %63, null
  br i1 %tobool.not.2, label %for.inc16.1.for.inc16.2_crit_edge, label %land.lhs.true.2

for.inc16.1.for.inc16.2_crit_edge:                ; preds = %for.inc16.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc16.2

land.lhs.true.2:                                  ; preds = %for.inc16.1
  %ops.2 = getelementptr inbounds %struct.lib80211_crypt_data, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %ops.2 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ops.2, align 4
  %tobool11.not.2 = icmp eq ptr %65, null
  br i1 %tobool11.not.2, label %land.lhs.true.2.for.inc16.2_crit_edge, label %if.then.2

land.lhs.true.2.for.inc16.2_crit_edge:            ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc16.2

if.then.2:                                        ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #8
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.22, i32 noundef 2, ptr noundef %67) #6
  br label %for.inc16.2

for.inc16.2:                                      ; preds = %if.then.2, %land.lhs.true.2.for.inc16.2_crit_edge, %for.inc16.1.for.inc16.2_crit_edge
  %arrayidx7.3 = getelementptr %struct.local_info, ptr %1, i32 0, i32 75, i32 2, i32 3
  %68 = ptrtoint ptr %arrayidx7.3 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx7.3, align 4
  %tobool.not.3 = icmp eq ptr %69, null
  br i1 %tobool.not.3, label %for.inc16.2.for.inc16.3_crit_edge, label %land.lhs.true.3

for.inc16.2.for.inc16.3_crit_edge:                ; preds = %for.inc16.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc16.3

land.lhs.true.3:                                  ; preds = %for.inc16.2
  %ops.3 = getelementptr inbounds %struct.lib80211_crypt_data, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %ops.3 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ops.3, align 4
  %tobool11.not.3 = icmp eq ptr %71, null
  br i1 %tobool11.not.3, label %land.lhs.true.3.for.inc16.3_crit_edge, label %if.then.3

land.lhs.true.3.for.inc16.3_crit_edge:            ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc16.3

if.then.3:                                        ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #8
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.22, i32 noundef 3, ptr noundef %73) #6
  br label %for.inc16.3

for.inc16.3:                                      ; preds = %if.then.3, %land.lhs.true.3.for.inc16.3_crit_edge, %for.inc16.2.for.inc16.3_crit_edge
  %pri_only = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 46
  %74 = ptrtoint ptr %pri_only to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %pri_only, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.23, i32 noundef %75) #6
  %func = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 92
  %76 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %func, align 4
  %hw_type = getelementptr inbounds %struct.prism2_helper_functions, ptr %77, i32 0, i32 18
  %78 = ptrtoint ptr %hw_type to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %hw_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %79)
  %cmp19 = icmp eq i32 %79, 2
  %conv20 = zext i1 %cmp19 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.24, i32 noundef %conv20) #6
  %sram_type = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 48
  %80 = ptrtoint ptr %sram_type to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %sram_type, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.25, i32 noundef %81) #6
  %no_pri = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 47
  %82 = ptrtoint ptr %no_pri to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %no_pri, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.26, i32 noundef %83) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prism2_stats_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %comm_tallies = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %comm_tallies to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %comm_tallies, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.27, i32 noundef %3) #6
  %tx_multicast_frames = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 28, i32 1
  %4 = ptrtoint ptr %tx_multicast_frames to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_multicast_frames, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.28, i32 noundef %5) #6
  %tx_fragments = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 28, i32 2
  %6 = ptrtoint ptr %tx_fragments to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_fragments, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.29, i32 noundef %7) #6
  %tx_unicast_octets = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 28, i32 3
  %8 = ptrtoint ptr %tx_unicast_octets to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_unicast_octets, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.30, i32 noundef %9) #6
  %tx_multicast_octets = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 28, i32 4
  %10 = ptrtoint ptr %tx_multicast_octets to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_multicast_octets, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.31, i32 noundef %11) #6
  %tx_deferred_transmissions = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 28, i32 5
  %12 = ptrtoint ptr %tx_deferred_transmissions to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_deferred_transmissions, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.32, i32 noundef %13) #6
  %tx_single_retry_frames = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 28, i32 6
  %14 = ptrtoint ptr %tx_single_retry_frames to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_single_retry_frames, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.33, i32 noundef %15) #6
  %tx_multiple_retry_frames = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 28, i32 7
  %16 = ptrtoint ptr %tx_multiple_retry_frames to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_multiple_retry_frames, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.34, i32 noundef %17) #6
  %tx_retry_limit_exceeded = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 28, i32 8
  %18 = ptrtoint ptr %tx_retry_limit_exceeded to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_retry_limit_exceeded, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.35, i32 noundef %19) #6
  %tx_discards = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 28, i32 9
  %20 = ptrtoint ptr %tx_discards to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_discards, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.36, i32 noundef %21) #6
  %rx_unicast_frames = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 28, i32 10
  %22 = ptrtoint ptr %rx_unicast_frames to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_unicast_frames, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.37, i32 noundef %23) #6
  %rx_multicast_frames = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 28, i32 11
  %24 = ptrtoint ptr %rx_multicast_frames to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_multicast_frames, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.38, i32 noundef %25) #6
  %rx_fragments = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 28, i32 12
  %26 = ptrtoint ptr %rx_fragments to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_fragments, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.39, i32 noundef %27) #6
  %rx_unicast_octets = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 28, i32 13
  %28 = ptrtoint ptr %rx_unicast_octets to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_unicast_octets, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.40, i32 noundef %29) #6
  %rx_multicast_octets = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 28, i32 14
  %30 = ptrtoint ptr %rx_multicast_octets to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_multicast_octets, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.41, i32 noundef %31) #6
  %rx_fcs_errors = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 28, i32 15
  %32 = ptrtoint ptr %rx_fcs_errors to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rx_fcs_errors, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.42, i32 noundef %33) #6
  %rx_discards_no_buffer = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 28, i32 16
  %34 = ptrtoint ptr %rx_discards_no_buffer to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rx_discards_no_buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.43, i32 noundef %35) #6
  %tx_discards_wrong_sa = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 28, i32 17
  %36 = ptrtoint ptr %tx_discards_wrong_sa to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tx_discards_wrong_sa, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.44, i32 noundef %37) #6
  %rx_discards_wep_undecryptable = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 28, i32 18
  %38 = ptrtoint ptr %rx_discards_wep_undecryptable to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rx_discards_wep_undecryptable, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.45, i32 noundef %39) #6
  %rx_message_in_msg_fragments = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 28, i32 19
  %40 = ptrtoint ptr %rx_message_in_msg_fragments to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rx_message_in_msg_fragments, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.46, i32 noundef %41) #6
  %rx_message_in_bad_msg_fragments = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 28, i32 20
  %42 = ptrtoint ptr %rx_message_in_bad_msg_fragments to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rx_message_in_bad_msg_fragments, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.47, i32 noundef %43) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_seq_private(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prism2_crypt_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %tx_keyidx = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 75, i32 3
  %2 = ptrtoint ptr %tx_keyidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_keyidx, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.56, i32 noundef %3) #6
  %arrayidx = getelementptr %struct.local_info, ptr %1, i32 0, i32 75, i32 2, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %land.lhs.true

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true:                                    ; preds = %entry
  %ops = getelementptr inbounds %struct.lib80211_crypt_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true6

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true6:                                   ; preds = %land.lhs.true
  %print_stats = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %print_stats to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %print_stats, align 4
  %tobool11.not = icmp eq ptr %9, null
  br i1 %tobool11.not, label %land.lhs.true6.for.inc_crit_edge, label %if.then

land.lhs.true6.for.inc_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #8
  %priv = getelementptr inbounds %struct.lib80211_crypt_data, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 4
  tail call void %9(ptr noundef %m, ptr noundef %11) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then, %land.lhs.true6.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.local_info, ptr %1, i32 0, i32 75, i32 2, i32 1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %13, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %ops.1 = getelementptr inbounds %struct.lib80211_crypt_data, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %ops.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.1, align 4
  %tobool5.not.1 = icmp eq ptr %15, null
  br i1 %tobool5.not.1, label %land.lhs.true.1.for.inc.1_crit_edge, label %land.lhs.true6.1

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

land.lhs.true6.1:                                 ; preds = %land.lhs.true.1
  %print_stats.1 = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %print_stats.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %print_stats.1, align 4
  %tobool11.not.1 = icmp eq ptr %17, null
  br i1 %tobool11.not.1, label %land.lhs.true6.1.for.inc.1_crit_edge, label %if.then.1

land.lhs.true6.1.for.inc.1_crit_edge:             ; preds = %land.lhs.true6.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.then.1:                                        ; preds = %land.lhs.true6.1
  call void @__sanitizer_cov_trace_pc() #8
  %priv.1 = getelementptr inbounds %struct.lib80211_crypt_data, ptr %13, i32 0, i32 2
  %18 = ptrtoint ptr %priv.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv.1, align 4
  tail call void %17(ptr noundef %m, ptr noundef %19) #6
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %land.lhs.true6.1.for.inc.1_crit_edge, %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.local_info, ptr %1, i32 0, i32 75, i32 2, i32 2
  %20 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %21, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %land.lhs.true.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %ops.2 = getelementptr inbounds %struct.lib80211_crypt_data, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %ops.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.2, align 4
  %tobool5.not.2 = icmp eq ptr %23, null
  br i1 %tobool5.not.2, label %land.lhs.true.2.for.inc.2_crit_edge, label %land.lhs.true6.2

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

land.lhs.true6.2:                                 ; preds = %land.lhs.true.2
  %print_stats.2 = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %23, i32 0, i32 10
  %24 = ptrtoint ptr %print_stats.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %print_stats.2, align 4
  %tobool11.not.2 = icmp eq ptr %25, null
  br i1 %tobool11.not.2, label %land.lhs.true6.2.for.inc.2_crit_edge, label %if.then.2

land.lhs.true6.2.for.inc.2_crit_edge:             ; preds = %land.lhs.true6.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

if.then.2:                                        ; preds = %land.lhs.true6.2
  call void @__sanitizer_cov_trace_pc() #8
  %priv.2 = getelementptr inbounds %struct.lib80211_crypt_data, ptr %21, i32 0, i32 2
  %26 = ptrtoint ptr %priv.2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv.2, align 4
  tail call void %25(ptr noundef %m, ptr noundef %27) #6
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %land.lhs.true6.2.for.inc.2_crit_edge, %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.local_info, ptr %1, i32 0, i32 75, i32 2, i32 3
  %28 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %29, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %land.lhs.true.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %ops.3 = getelementptr inbounds %struct.lib80211_crypt_data, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %ops.3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.3, align 4
  %tobool5.not.3 = icmp eq ptr %31, null
  br i1 %tobool5.not.3, label %land.lhs.true.3.for.inc.3_crit_edge, label %land.lhs.true6.3

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

land.lhs.true6.3:                                 ; preds = %land.lhs.true.3
  %print_stats.3 = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %31, i32 0, i32 10
  %32 = ptrtoint ptr %print_stats.3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %print_stats.3, align 4
  %tobool11.not.3 = icmp eq ptr %33, null
  br i1 %tobool11.not.3, label %land.lhs.true6.3.for.inc.3_crit_edge, label %if.then.3

land.lhs.true6.3.for.inc.3_crit_edge:             ; preds = %land.lhs.true6.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

if.then.3:                                        ; preds = %land.lhs.true6.3
  call void @__sanitizer_cov_trace_pc() #8
  %priv.3 = getelementptr inbounds %struct.lib80211_crypt_data, ptr %29, i32 0, i32 2
  %34 = ptrtoint ptr %priv.3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %priv.3, align 4
  tail call void %33(ptr noundef %m, ptr noundef %35) #6
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %land.lhs.true6.3.for.inc.3_crit_edge, %land.lhs.true.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hostap_remove_proc(ptr nocapture noundef readonly %local) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %proc = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 29
  %0 = ptrtoint ptr %proc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proc, align 4
  tail call void @proc_remove(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @prism2_wds_proc_start(ptr nocapture noundef readonly %m, ptr nocapture noundef readonly %_pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %file = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 10
  %0 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %i_private.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 54
  %4 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_private.i, align 4
  %iface_lock = getelementptr inbounds %struct.local_info, ptr %5, i32 0, i32 8
  tail call void @_raw_read_lock_bh(ptr noundef %iface_lock) #6
  %hostap_interfaces = getelementptr inbounds %struct.local_info, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %_pos to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %_pos, align 8
  %call2 = tail call ptr @seq_list_start(ptr noundef %hostap_interfaces, i64 noundef %7) #6
  ret ptr %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @prism2_wds_proc_stop(ptr nocapture noundef readonly %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %file = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 10
  %0 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %i_private.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 54
  %4 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_private.i, align 4
  %iface_lock = getelementptr inbounds %struct.local_info, ptr %5, i32 0, i32 8
  tail call void @_raw_read_unlock_bh(ptr noundef %iface_lock) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @prism2_wds_proc_next(ptr nocapture noundef readonly %m, ptr noundef %v, ptr noundef %_pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %file = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 10
  %0 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %i_private.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 54
  %4 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_private.i, align 4
  %hostap_interfaces = getelementptr inbounds %struct.local_info, ptr %5, i32 0, i32 7
  %call2 = tail call ptr @seq_list_next(ptr noundef %v, ptr noundef %hostap_interfaces, ptr noundef %_pos) #6
  ret ptr %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prism2_wds_proc_show(ptr noundef %m, ptr noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.hostap_interface, ptr %v, i32 0, i32 6
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.hostap_interface, ptr %v, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %u = getelementptr inbounds %struct.hostap_interface, ptr %v, i32 0, i32 7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.48, ptr noundef %3, ptr noundef %u) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_start(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prism2_pda_proc_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %_pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private.i, align 4
  %pda = getelementptr inbounds %struct.local_info, ptr %3, i32 0, i32 93
  %4 = ptrtoint ptr %pda to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pda, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %6 = ptrtoint ptr %_pos to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %_pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1023, i64 %7)
  %cmp2 = icmp sgt i64 %7, 1023
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %conv = trunc i64 %7 to i32
  %sub = sub i32 1024, %conv
  %8 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %count)
  %add.ptr = getelementptr i8, ptr %5, i32 %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp9.i.i = icmp slt i32 %8, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.cleanup_crit_edge, label %if.then27.i.i, !prof !142

land.rhs16.i.i.cleanup_crit_edge:                 ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.49, i32 noundef 230, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %8, i1 noundef zeroext true) #6
  tail call void @__might_fault(ptr noundef nonnull @.str.51, i32 noundef 174) #6
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %8, i32 -1226833920) #10, !srcloc !143
  %asmresult.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef %8) #6
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef %add.ptr, i32 noundef %8) #6
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %8, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %8, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %cmp10.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %cmp10.not, label %if.end13, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #8
  %conv14 = zext i32 %8 to i64
  %10 = ptrtoint ptr %_pos to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %_pos, align 8
  %add = add i64 %11, %conv14
  store i64 %add, ptr %_pos, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %copy_to_user.exit.cleanup_crit_edge, %if.then27.i.i, %land.rhs16.i.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.end13 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -14, %copy_to_user.exit.cleanup_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @prism2_aux_dump_proc_no_read(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %buf, i32 noundef %bufsize, ptr nocapture noundef readnone %_pos) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @prism2_bss_list_proc_start(ptr nocapture noundef readonly %m, ptr nocapture noundef readonly %_pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %file = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 10
  %0 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %i_private.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 54
  %4 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_private.i, align 4
  %lock = getelementptr inbounds %struct.local_info, ptr %5, i32 0, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #6
  %bss_list = getelementptr inbounds %struct.local_info, ptr %5, i32 0, i32 128
  %6 = ptrtoint ptr %_pos to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %_pos, align 8
  %call2 = tail call ptr @seq_list_start_head(ptr noundef %bss_list, i64 noundef %7) #6
  ret ptr %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @prism2_bss_list_proc_stop(ptr nocapture noundef readonly %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %file = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 10
  %0 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %i_private.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 54
  %4 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_private.i, align 4
  %lock = getelementptr inbounds %struct.local_info, ptr %5, i32 0, i32 11
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @prism2_bss_list_proc_next(ptr nocapture noundef readonly %m, ptr noundef %v, ptr noundef %_pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %file = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 10
  %0 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %i_private.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 54
  %4 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_private.i, align 4
  %bss_list = getelementptr inbounds %struct.local_info, ptr %5, i32 0, i32 128
  %call2 = tail call ptr @seq_list_next(ptr noundef %v, ptr noundef %bss_list, ptr noundef %_pos) #6
  ret ptr %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prism2_bss_list_proc_show(ptr noundef %m, ptr noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %file = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 10
  %0 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %i_private.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 54
  %4 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_private.i, align 4
  %bss_list = getelementptr inbounds %struct.local_info, ptr %5, i32 0, i32 128
  %cmp = icmp eq ptr %bss_list, %v
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.52) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %bssid = getelementptr inbounds %struct.hostap_bss_info, ptr %v, i32 0, i32 3
  %last_update = getelementptr inbounds %struct.hostap_bss_info, ptr %v, i32 0, i32 1
  %6 = ptrtoint ptr %last_update to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %last_update, align 4
  %count = getelementptr inbounds %struct.hostap_bss_info, ptr %v, i32 0, i32 2
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count, align 4
  %capab_info = getelementptr inbounds %struct.hostap_bss_info, ptr %v, i32 0, i32 4
  %10 = ptrtoint ptr %capab_info to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %capab_info, align 2
  %conv = zext i16 %11 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.53, ptr noundef %bssid, i32 noundef %7, i32 noundef %9, i32 noundef %conv) #6
  %ssid_len = getelementptr inbounds %struct.hostap_bss_info, ptr %v, i32 0, i32 6
  %12 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ssid_len, align 4
  %ssid = getelementptr inbounds %struct.hostap_bss_info, ptr %v, i32 0, i32 5
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.54, i32 noundef %13, ptr noundef %ssid) #6
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 9) #6
  %14 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ssid_len, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.55, i32 noundef %15, ptr noundef %ssid) #6
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 9) #6
  %wpa_ie_len = getelementptr inbounds %struct.hostap_bss_info, ptr %v, i32 0, i32 8
  %16 = ptrtoint ptr %wpa_ie_len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %wpa_ie_len, align 4
  %wpa_ie = getelementptr inbounds %struct.hostap_bss_info, ptr %v, i32 0, i32 7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.55, i32 noundef %17, ptr noundef %wpa_ie) #6
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_start_head(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @prism2_scan_results_proc_start(ptr nocapture noundef readonly %m, ptr nocapture noundef readonly %_pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %file = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 10
  %0 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %i_private.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 54
  %4 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_private.i, align 4
  %lock = getelementptr inbounds %struct.local_info, ptr %5, i32 0, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #6
  %6 = ptrtoint ptr %_pos to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %_pos, align 8
  %last_scan_results_count = getelementptr inbounds %struct.local_info, ptr %5, i32 0, i32 107
  %8 = ptrtoint ptr %last_scan_results_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %last_scan_results_count, align 4
  %conv = sext i32 %9 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %conv)
  %cmp = icmp sgt i64 %7, %conv
  %10 = trunc i64 %7 to i32
  %conv3 = add i32 %10, 1
  %11 = inttoptr i32 %conv3 to ptr
  %retval.0 = select i1 %cmp, ptr null, ptr %11
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @prism2_scan_results_proc_stop(ptr nocapture noundef readonly %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %file = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 10
  %0 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %i_private.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 54
  %4 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_private.i, align 4
  %lock = getelementptr inbounds %struct.local_info, ptr %5, i32 0, i32 11
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @prism2_scan_results_proc_next(ptr nocapture noundef readonly %m, ptr nocapture noundef readnone %v, ptr nocapture noundef %_pos) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %file = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 10
  %0 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %i_private.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 54
  %4 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_private.i, align 4
  %6 = ptrtoint ptr %_pos to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %_pos, align 8
  %inc = add i64 %7, 1
  store i64 %inc, ptr %_pos, align 8
  %last_scan_results_count = getelementptr inbounds %struct.local_info, ptr %5, i32 0, i32 107
  %8 = ptrtoint ptr %last_scan_results_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %last_scan_results_count, align 4
  %conv = sext i32 %9 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %inc, i64 %conv)
  %cmp = icmp sgt i64 %inc, %conv
  %10 = trunc i64 %7 to i32
  %conv3 = add i32 %10, 2
  %11 = inttoptr i32 %conv3 to ptr
  %retval.0 = select i1 %cmp, ptr null, ptr %11
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prism2_scan_results_proc_show(ptr noundef %m, ptr noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.57) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %file = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 10
  %0 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %i_private.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 54
  %4 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_private.i, align 4
  %6 = ptrtoint ptr %v to i32
  %sub = add i32 %6, -2
  %last_scan_results = getelementptr inbounds %struct.local_info, ptr %5, i32 0, i32 106
  %7 = ptrtoint ptr %last_scan_results to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %last_scan_results, align 4
  %arrayidx = getelementptr %struct.hfa384x_hostscan_result, ptr %8, i32 %sub
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %arrayidx, align 1
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %conv = zext i16 %11 to i32
  %anl = getelementptr %struct.hfa384x_hostscan_result, ptr %8, i32 %sub, i32 1
  %12 = ptrtoint ptr %anl to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %anl, align 1
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %conv3 = sext i16 %14 to i32
  %sl = getelementptr %struct.hfa384x_hostscan_result, ptr %8, i32 %sub, i32 2
  %15 = ptrtoint ptr %sl to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %sl, align 1
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  %conv4 = sext i16 %17 to i32
  %beacon_interval = getelementptr %struct.hfa384x_hostscan_result, ptr %8, i32 %sub, i32 4
  %18 = ptrtoint ptr %beacon_interval to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %beacon_interval, align 1
  %20 = tail call i16 @llvm.bswap.i16(i16 %19)
  %conv5 = zext i16 %20 to i32
  %capability = getelementptr %struct.hfa384x_hostscan_result, ptr %8, i32 %sub, i32 5
  %21 = ptrtoint ptr %capability to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %capability, align 1
  %23 = tail call i16 @llvm.bswap.i16(i16 %22)
  %conv6 = zext i16 %23 to i32
  %rate = getelementptr %struct.hfa384x_hostscan_result, ptr %8, i32 %sub, i32 9
  %24 = ptrtoint ptr %rate to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %rate, align 1
  %26 = tail call i16 @llvm.bswap.i16(i16 %25)
  %conv7 = zext i16 %26 to i32
  %bssid = getelementptr %struct.hfa384x_hostscan_result, ptr %8, i32 %sub, i32 3
  %atim = getelementptr %struct.hfa384x_hostscan_result, ptr %8, i32 %sub, i32 10
  %27 = ptrtoint ptr %atim to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %atim, align 1
  %29 = tail call i16 @llvm.bswap.i16(i16 %28)
  %conv8 = zext i16 %29 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.58, i32 noundef %conv, i32 noundef %conv3, i32 noundef %conv4, i32 noundef %conv5, i32 noundef %conv6, i32 noundef %conv7, ptr noundef %bssid, i32 noundef %conv8) #6
  %sup_rates = getelementptr %struct.hfa384x_hostscan_result, ptr %8, i32 %sub, i32 8
  %30 = ptrtoint ptr %sup_rates to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %sup_rates, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp14 = icmp eq i8 %31, 0
  br i1 %cmp14, label %if.end.for.end_crit_edge, label %if.end17

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end17:                                         ; preds = %if.end
  %conv13 = zext i8 %31 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.59, i32 noundef %conv13) #6
  %arrayidx12.1 = getelementptr i8, ptr %sup_rates, i32 1
  %32 = ptrtoint ptr %arrayidx12.1 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx12.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp14.1 = icmp eq i8 %33, 0
  br i1 %cmp14.1, label %if.end17.for.end_crit_edge, label %if.end17.1

if.end17.for.end_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end17.1:                                       ; preds = %if.end17
  %conv13.1 = zext i8 %33 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.59, i32 noundef %conv13.1) #6
  %arrayidx12.2 = getelementptr i8, ptr %sup_rates, i32 2
  %34 = ptrtoint ptr %arrayidx12.2 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx12.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp14.2 = icmp eq i8 %35, 0
  br i1 %cmp14.2, label %if.end17.1.for.end_crit_edge, label %if.end17.2

if.end17.1.for.end_crit_edge:                     ; preds = %if.end17.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end17.2:                                       ; preds = %if.end17.1
  %conv13.2 = zext i8 %35 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.59, i32 noundef %conv13.2) #6
  %arrayidx12.3 = getelementptr i8, ptr %sup_rates, i32 3
  %36 = ptrtoint ptr %arrayidx12.3 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx12.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp14.3 = icmp eq i8 %37, 0
  br i1 %cmp14.3, label %if.end17.2.for.end_crit_edge, label %if.end17.3

if.end17.2.for.end_crit_edge:                     ; preds = %if.end17.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end17.3:                                       ; preds = %if.end17.2
  %conv13.3 = zext i8 %37 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.59, i32 noundef %conv13.3) #6
  %arrayidx12.4 = getelementptr i8, ptr %sup_rates, i32 4
  %38 = ptrtoint ptr %arrayidx12.4 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx12.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %cmp14.4 = icmp eq i8 %39, 0
  br i1 %cmp14.4, label %if.end17.3.for.end_crit_edge, label %if.end17.4

if.end17.3.for.end_crit_edge:                     ; preds = %if.end17.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end17.4:                                       ; preds = %if.end17.3
  %conv13.4 = zext i8 %39 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.59, i32 noundef %conv13.4) #6
  %arrayidx12.5 = getelementptr i8, ptr %sup_rates, i32 5
  %40 = ptrtoint ptr %arrayidx12.5 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx12.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp14.5 = icmp eq i8 %41, 0
  br i1 %cmp14.5, label %if.end17.4.for.end_crit_edge, label %if.end17.5

if.end17.4.for.end_crit_edge:                     ; preds = %if.end17.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end17.5:                                       ; preds = %if.end17.4
  %conv13.5 = zext i8 %41 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.59, i32 noundef %conv13.5) #6
  %arrayidx12.6 = getelementptr i8, ptr %sup_rates, i32 6
  %42 = ptrtoint ptr %arrayidx12.6 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx12.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %cmp14.6 = icmp eq i8 %43, 0
  br i1 %cmp14.6, label %if.end17.5.for.end_crit_edge, label %if.end17.6

if.end17.5.for.end_crit_edge:                     ; preds = %if.end17.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end17.6:                                       ; preds = %if.end17.5
  %conv13.6 = zext i8 %43 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.59, i32 noundef %conv13.6) #6
  %arrayidx12.7 = getelementptr i8, ptr %sup_rates, i32 7
  %44 = ptrtoint ptr %arrayidx12.7 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx12.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp14.7 = icmp eq i8 %45, 0
  br i1 %cmp14.7, label %if.end17.6.for.end_crit_edge, label %if.end17.7

if.end17.6.for.end_crit_edge:                     ; preds = %if.end17.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end17.7:                                       ; preds = %if.end17.6
  %conv13.7 = zext i8 %45 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.59, i32 noundef %conv13.7) #6
  %arrayidx12.8 = getelementptr i8, ptr %sup_rates, i32 8
  %46 = ptrtoint ptr %arrayidx12.8 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx12.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp14.8 = icmp eq i8 %47, 0
  br i1 %cmp14.8, label %if.end17.7.for.end_crit_edge, label %if.end17.8

if.end17.7.for.end_crit_edge:                     ; preds = %if.end17.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end17.8:                                       ; preds = %if.end17.7
  %conv13.8 = zext i8 %47 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.59, i32 noundef %conv13.8) #6
  %arrayidx12.9 = getelementptr i8, ptr %sup_rates, i32 9
  %48 = ptrtoint ptr %arrayidx12.9 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx12.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %cmp14.9 = icmp eq i8 %49, 0
  br i1 %cmp14.9, label %if.end17.8.for.end_crit_edge, label %if.end17.9

if.end17.8.for.end_crit_edge:                     ; preds = %if.end17.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end17.9:                                       ; preds = %if.end17.8
  call void @__sanitizer_cov_trace_pc() #8
  %conv13.9 = zext i8 %49 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.59, i32 noundef %conv13.9) #6
  br label %for.end

for.end:                                          ; preds = %if.end17.9, %if.end17.8.for.end_crit_edge, %if.end17.7.for.end_crit_edge, %if.end17.6.for.end_crit_edge, %if.end17.5.for.end_crit_edge, %if.end17.4.for.end_crit_edge, %if.end17.3.for.end_crit_edge, %if.end17.2.for.end_crit_edge, %if.end17.1.for.end_crit_edge, %if.end17.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 32) #6
  %ssid = getelementptr %struct.hfa384x_hostscan_result, ptr %8, i32 %sub, i32 7
  %ssid_len = getelementptr %struct.hfa384x_hostscan_result, ptr %8, i32 %sub, i32 6
  %50 = ptrtoint ptr %ssid_len to i32
  call void @__asan_loadN_noabort(i32 %50, i32 2)
  %51 = load i16, ptr %ssid_len, align 1
  %52 = tail call i16 @llvm.bswap.i16(i16 %51)
  %53 = tail call i16 @llvm.umin.i16(i16 %52, i16 32)
  %54 = zext i16 %53 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %cmp2779.not = icmp eq i16 %53, 0
  br i1 %cmp2779.not, label %for.end.for.end42_crit_edge, label %for.end.for.body29_crit_edge

for.end.for.body29_crit_edge:                     ; preds = %for.end
  br label %for.body29

for.end.for.end42_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end42

for.body29:                                       ; preds = %if.end39.for.body29_crit_edge, %for.end.for.body29_crit_edge
  %i.180 = phi i32 [ %inc41, %if.end39.for.body29_crit_edge ], [ 0, %for.end.for.body29_crit_edge ]
  %arrayidx30 = getelementptr i8, ptr %ssid, i32 %i.180
  %55 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx30, align 1
  %57 = add i8 %56, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %57)
  %58 = icmp ult i8 %57, 95
  br i1 %58, label %if.then37, label %if.else

if.then37:                                        ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext %56) #6
  br label %if.end39

if.else:                                          ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #8
  %conv31 = zext i8 %56 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.59, i32 noundef %conv31) #6
  br label %if.end39

if.end39:                                         ; preds = %if.else, %if.then37
  %inc41 = add nuw nsw i32 %i.180, 1
  %exitcond.not = icmp eq i32 %inc41, %54
  br i1 %exitcond.not, label %if.end39.for.end42_crit_edge, label %if.end39.for.body29_crit_edge

if.end39.for.body29_crit_edge:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body29

if.end39.for.end42_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end42

for.end42:                                        ; preds = %if.end39.for.end42_crit_edge, %for.end.for.end42_crit_edge
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end42, %if.then
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131}
!llvm.module.flags = !{!133, !134, !135, !136, !137, !138, !139, !140}
!llvm.ident = !{!141}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intersil/hostap/hostap_proc.c", i32 364, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @hostap_init_proc._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @hostap_init_proc._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/intersil/hostap/hostap_proc.c", i32 371, i32 3}
!8 = !{ptr @hostap_init_proc._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @hostap_init_proc._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/intersil/hostap/hostap_proc.c", i32 377, i32 26}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/intersil/hostap/hostap_proc.c", i32 380, i32 26}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/intersil/hostap/hostap_proc.c", i32 382, i32 2}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/intersil/hostap/hostap_proc.c", i32 384, i32 19}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/intersil/hostap/hostap_proc.c", i32 386, i32 19}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/intersil/hostap/hostap_proc.c", i32 389, i32 2}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/intersil/hostap/hostap_proc.c", i32 391, i32 26}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/intersil/hostap/hostap_proc.c", i32 398, i32 2}
!26 = !{ptr @__ksymtab_hostap_init_proc, !27, !"__ksymtab_hostap_init_proc", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/intersil/hostap/hostap_proc.c", i32 410, i32 1}
!28 = !{ptr @__ksymtab_hostap_remove_proc, !29, !"__ksymtab_hostap_remove_proc", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/intersil/hostap/hostap_proc.c", i32 411, i32 1}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/intersil/hostap/hostap_proc.c", i32 20, i32 16}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/intersil/hostap/hostap_proc.c", i32 23, i32 17}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/intersil/hostap/hostap_proc.c", i32 25, i32 16}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/intersil/hostap/hostap_proc.c", i32 26, i32 16}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/intersil/hostap/hostap_proc.c", i32 27, i32 16}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/intersil/hostap/hostap_proc.c", i32 28, i32 16}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/intersil/hostap/hostap_proc.c", i32 29, i32 16}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/intersil/hostap/hostap_proc.c", i32 30, i32 16}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/intersil/hostap/hostap_proc.c", i32 34, i32 18}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/intersil/hostap/hostap_proc.c", i32 38, i32 16}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/intersil/hostap/hostap_proc.c", i32 39, i32 16}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/intersil/hostap/hostap_proc.c", i32 40, i32 16}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/intersil/hostap/hostap_proc.c", i32 41, i32 16}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/intersil/hostap/hostap_proc.c", i32 53, i32 16}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/intersil/hostap/hostap_proc.c", i32 54, i32 16}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/intersil/hostap/hostap_proc.c", i32 55, i32 16}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/intersil/hostap/hostap_proc.c", i32 56, i32 16}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/intersil/hostap/hostap_proc.c", i32 57, i32 16}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/intersil/hostap/hostap_proc.c", i32 58, i32 16}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/intersil/hostap/hostap_proc.c", i32 60, i32 16}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/intersil/hostap/hostap_proc.c", i32 61, i32 16}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/intersil/hostap/hostap_proc.c", i32 63, i32 16}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/intersil/hostap/hostap_proc.c", i32 65, i32 16}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/intersil/hostap/hostap_proc.c", i32 66, i32 16}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/intersil/hostap/hostap_proc.c", i32 67, i32 16}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/intersil/hostap/hostap_proc.c", i32 68, i32 16}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/intersil/hostap/hostap_proc.c", i32 69, i32 16}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/intersil/hostap/hostap_proc.c", i32 70, i32 16}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/intersil/hostap/hostap_proc.c", i32 71, i32 16}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/intersil/hostap/hostap_proc.c", i32 72, i32 16}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/intersil/hostap/hostap_proc.c", i32 73, i32 16}
!92 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/intersil/hostap/hostap_proc.c", i32 74, i32 16}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/intersil/hostap/hostap_proc.c", i32 76, i32 16}
!96 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/intersil/hostap/hostap_proc.c", i32 78, i32 16}
!98 = !{ptr @prism2_wds_proc_seqops, !99, !"prism2_wds_proc_seqops", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/intersil/hostap/hostap_proc.c", i32 117, i32 36}
!100 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/intersil/hostap/hostap_proc.c", i32 93, i32 17}
!102 = !{ptr @prism2_pda_proc_ops, !103, !"prism2_pda_proc_ops", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/intersil/hostap/hostap_proc.c", i32 216, i32 30}
!104 = distinct !{null, !105, !"__already_done", i1 false, i1 false}
!105 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!106 = !{ptr @.str.49, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.50, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!109 = !{ptr @.str.51, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!111 = !{ptr @prism2_aux_dump_proc_ops, !112, !"prism2_aux_dump_proc_ops", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/intersil/hostap/hostap_proc.c", i32 228, i32 30}
!113 = !{ptr @prism2_bss_list_proc_seqops, !114, !"prism2_bss_list_proc_seqops", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/intersil/hostap/hostap_proc.c", i32 172, i32 36}
!115 = !{ptr @.str.52, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/intersil/hostap/hostap_proc.c", i32 131, i32 17}
!117 = !{ptr @.str.53, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/intersil/hostap/hostap_proc.c", i32 137, i32 16}
!119 = !{ptr @.str.54, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/intersil/hostap/hostap_proc.c", i32 141, i32 16}
!121 = !{ptr @.str.55, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/intersil/hostap/hostap_proc.c", i32 144, i32 16}
!123 = !{ptr @.str.56, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/wireless/intersil/hostap/hostap_proc.c", i32 185, i32 16}
!125 = !{ptr @prism2_scan_results_proc_seqops, !126, !"prism2_scan_results_proc_seqops", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/intersil/hostap/hostap_proc.c", i32 350, i32 36}
!127 = !{ptr @.str.57, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/wireless/intersil/hostap/hostap_proc.c", i32 283, i32 7}
!129 = !{ptr @.str.58, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/wireless/intersil/hostap/hostap_proc.c", i32 290, i32 16}
!131 = !{ptr @.str.59, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/wireless/intersil/hostap/hostap_proc.c", i32 304, i32 17}
!133 = !{i32 1, !"wchar_size", i32 2}
!134 = !{i32 1, !"min_enum_size", i32 4}
!135 = !{i32 8, !"branch-target-enforcement", i32 0}
!136 = !{i32 8, !"sign-return-address", i32 0}
!137 = !{i32 8, !"sign-return-address-all", i32 0}
!138 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!139 = !{i32 7, !"uwtable", i32 1}
!140 = !{i32 7, !"frame-pointer", i32 2}
!141 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!142 = !{!"branch_weights", i32 2000, i32 1}
!143 = !{i64 2152184274, i64 2152184299}
