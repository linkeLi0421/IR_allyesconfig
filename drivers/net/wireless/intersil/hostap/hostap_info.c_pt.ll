; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intersil/hostap/hostap_info.c_pt.bc'
source_filename = "../drivers/net/wireless/intersil/hostap/hostap_info.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+hostap_info_init\22, \22a\22\09"
module asm "\09.weak\09__crc_hostap_info_init\09\09\09\09"
module asm "\09.long\09__crc_hostap_info_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hostap_info_init:\09\09\09\09\09"
module asm "\09.asciz \09\22hostap_info_init\22\09\09\09\09\09"
module asm "__kstrtabns_hostap_info_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+hostap_info_process\22, \22a\22\09"
module asm "\09.weak\09__crc_hostap_info_process\09\09\09\09"
module asm "\09.long\09__crc_hostap_info_process\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hostap_info_process:\09\09\09\09\09"
module asm "\09.asciz \09\22hostap_info_process\22\09\09\09\09\09"
module asm "__kstrtabns_hostap_info_process:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%union.iwreq_data = type { %struct.iw_point, [8 x i8] }
%struct.iw_point = type { ptr, i16, i16 }
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
%struct.hfa384x_info_frame = type { i16, i16 }
%struct.local_info = type { ptr, i32, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.mutex, i16, %struct.spinlock, i32, [8 x i16], [8 x i16], i32, i32, i32, ptr, [33 x i8], [33 x i8], i32, i16, i16, %struct.comm_tallies_sums, ptr, i32, i32, [6 x i8], i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, i32, %struct.work_struct, i32, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.spinlock, i32, i32, i32, i16, i32, %struct.iw_statistics, i32, i32, i32, i32, i32, ptr, %struct.net_device_stats, [6 x i8], ptr, %struct.net_device_stats, %struct.lib80211_crypt_info, i32, i32, i32, i32, i32, i32, [4 x %struct.prism2_frag_entry], i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, %struct.tasklet_struct, %struct.tasklet_struct, %struct.sk_buff_head, ptr, %struct.tasklet_struct, %struct.sk_buff_head, %struct.tasklet_struct, %struct.sk_buff_head, i32, i32, ptr, i32, i32, %struct.work_struct, i32, i32, i32, [6 x i8], %struct.wait_queue_head, %struct.timer_list, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, i32, i32, %struct.work_struct, i32, %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.hfa384x_hostscan_result = type { i16, i16, i16, [6 x i8], i16, i16, i16, [32 x i8], [10 x i8], i16, i16 }
%struct.hfa384x_scan_result = type { i16, i16, i16, [6 x i8], i16, i16, i16, [32 x i8], [10 x i8], i16 }
%struct.prism2_helper_functions = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.hfa384x_join_request = type { [6 x i8], i16 }

@hostap_info_process._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 404, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: INFO - len=%d type=0x%04x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hostap_info_process\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/net/wireless/intersil/hostap/hostap_info.c\00", [45 x i8] zeroinitializer }, align 32
@hostap_info_process._entry_ptr = internal global ptr @hostap_info_process._entry, section ".printk_index", align 4
@hostap_info_process._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 405, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017Unknown info frame:\00", [42 x i8] zeroinitializer }, align 32
@hostap_info_process._entry_ptr.5 = internal global ptr @hostap_info_process._entry.3, section ".printk_index", align 4
@hostap_info_process._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 407, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %02x\00", [26 x i8] zeroinitializer }, align 32
@hostap_info_process._entry_ptr.8 = internal global ptr @hostap_info_process._entry.6, section ".printk_index", align 4
@hostap_info_process._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 408, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@hostap_info_process._entry_ptr.11 = internal global ptr @hostap_info_process._entry.9, section ".printk_index", align 4
@hostap_info_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&local->info_queue)\00", [58 x i8] zeroinitializer }, align 32
@__kstrtab_hostap_info_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_hostap_info_init = external dso_local constant [0 x i8], align 1
@__ksymtab_hostap_info_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hostap_info_init to i32), ptr @__kstrtab_hostap_info_init, ptr @__kstrtabns_hostap_info_init }, section "___ksymtab+hostap_info_init", align 4
@__kstrtab_hostap_info_process = external dso_local constant [0 x i8], align 1
@__kstrtabns_hostap_info_process = external dso_local constant [0 x i8], align 1
@__ksymtab_hostap_info_process = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hostap_info_process to i32), ptr @__kstrtab_hostap_info_process, ptr @__kstrtabns_hostap_info_process }, section "___ksymtab+hostap_info_process", align 4
@prism2_info_commtallies32._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 61, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017%s: too short (len=%d) commtallies32 info frame\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"prism2_info_commtallies32\00", [38 x i8] zeroinitializer }, align 32
@prism2_info_commtallies32._entry_ptr = internal global ptr @prism2_info_commtallies32._entry, section ".printk_index", align 4
@prism2_info_commtallies16._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 21, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017%s: too short (len=%d) commtallies info frame\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"prism2_info_commtallies16\00", [38 x i8] zeroinitializer }, align 32
@prism2_info_commtallies16._entry_ptr = internal global ptr @prism2_info_commtallies16._entry, section ".printk_index", align 4
@prism2_info_linkstatus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017%s: invalid linkstatus info frame length %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"prism2_info_linkstatus\00", [41 x i8] zeroinitializer }, align 32
@prism2_info_linkstatus._entry_ptr = internal global ptr @prism2_info_linkstatus._entry, section ".printk_index", align 4
@prism2_info_linkstatus._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: LinkStatus=%d (%s)\0A\00", [38 x i8] zeroinitializer }, align 32
@prism2_info_linkstatus._entry_ptr.21 = internal global ptr @prism2_info_linkstatus._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Connected\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Disconnected\00", [19 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Access point change\00", [44 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Access point out of range\00", [38 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Access point in range\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Association failed\00", [45 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@prism2_info_scanresults._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017%s: invalid scanresult info frame length %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"prism2_info_scanresults\00", [40 x i8] zeroinitializer }, align 32
@prism2_info_scanresults._entry_ptr = internal global ptr @prism2_info_scanresults._entry, section ".printk_index", align 4
@prism2_info_hostscanresults._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017%s: invalid hostscanresult info frame length %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"prism2_info_hostscanresults\00", [36 x i8] zeroinitializer }, align 32
@prism2_info_hostscanresults._entry_ptr = internal global ptr @prism2_info_hostscanresults._entry, section ".printk_index", align 4
@prism2_info_hostscanresults._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.2, i32 326, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017%s: invalid result_size (0) in hostscanresults\0A\00", [46 x i8] zeroinitializer }, align 32
@prism2_info_hostscanresults._entry_ptr.35 = internal global ptr @prism2_info_hostscanresults._entry.33, section ".printk_index", align 4
@prism2_info_hostscanresults._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.32, ptr @.str.2, i32 351, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017%s: short HostScan result entry (%d/%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@prism2_info_hostscanresults._entry_ptr.38 = internal global ptr @prism2_info_hostscanresults._entry.36, section ".printk_index", align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@handle_info_queue_linkstatus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 430, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\017%s: could not read CURRENTBSSID after LinkStatus event\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"handle_info_queue_linkstatus\00", [35 x i8] zeroinitializer }, align 32
@handle_info_queue_linkstatus._entry_ptr = internal global ptr @handle_info_queue_linkstatus._entry, section ".printk_index", align 4
@handle_info_queue_linkstatus._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.2, i32 434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: LinkStatus: BSSID=%pM\0A\00", [35 x i8] zeroinitializer }, align 32
@handle_info_queue_linkstatus._entry_ptr.44 = internal global ptr @handle_info_queue_linkstatus._entry.42, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@prism2_host_roaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"\017%s: last join request has not yet been completed - waiting for it before issuing new one\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"prism2_host_roaming\00", [44 x i8] zeroinitializer }, align 32
@prism2_host_roaming._entry_ptr = internal global ptr @prism2_host_roaming._entry, section ".printk_index", align 4
@prism2_host_roaming._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.2, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s: no scan results for host roaming\0A\00", [56 x i8] zeroinitializer }, align 32
@prism2_host_roaming._entry_ptr.49 = internal global ptr @prism2_host_roaming._entry.47, section ".printk_index", align 4
@prism2_host_roaming._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.46, ptr @.str.2, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: Preferred AP BSSID %pM\0A\00", [34 x i8] zeroinitializer }, align 32
@prism2_host_roaming._entry_ptr.52 = internal global ptr @prism2_host_roaming._entry.50, section ".printk_index", align 4
@prism2_host_roaming._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.46, ptr @.str.2, i32 214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: using preferred AP selection\0A\00", [60 x i8] zeroinitializer }, align 32
@prism2_host_roaming._entry_ptr.55 = internal global ptr @prism2_host_roaming._entry.53, section ".printk_index", align 4
@prism2_host_roaming._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.46, ptr @.str.2, i32 227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: JoinRequest: BSSID=%pM channel=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@prism2_host_roaming._entry_ptr.58 = internal global ptr @prism2_host_roaming._entry.56, section ".printk_index", align 4
@prism2_host_roaming._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.46, ptr @.str.2, i32 230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: JoinRequest failed\0A\00", [38 x i8] zeroinitializer }, align 32
@prism2_host_roaming._entry_ptr.61 = internal global ptr @prism2_host_roaming._entry.59, section ".printk_index", align 4
@switch.table.hostap_info_process = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 16, i64 61696, i64 61697, i64 61699, i64 61952]
@__sancov_gen_cov_switch_values.62 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 4, i64 6]
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 402, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 405, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 407, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 408, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 503, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 60, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 20, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 140, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 151, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 110, i32 10 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 112, i32 10 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 114, i32 10 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 116, i32 10 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 118, i32 10 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 120, i32 10 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 122, i32 10 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 263, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 317, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 325, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 350, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.187 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1984, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 429, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 432, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 178, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 196, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 207, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 213, i32 5 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 225, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.240 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.241 = private constant [54 x i8] c"../drivers/net/wireless/intersil/hostap/hostap_info.c\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 230, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant [33 x i8] c"switch.table.hostap_info_process\00", align 1
@llvm.compiler.used = appending global [83 x ptr] [ptr @__ksymtab_hostap_info_init, ptr @__ksymtab_hostap_info_process, ptr @handle_info_queue_linkstatus._entry, ptr @handle_info_queue_linkstatus._entry.42, ptr @handle_info_queue_linkstatus._entry_ptr, ptr @handle_info_queue_linkstatus._entry_ptr.44, ptr @hostap_info_process._entry, ptr @hostap_info_process._entry.3, ptr @hostap_info_process._entry.6, ptr @hostap_info_process._entry.9, ptr @hostap_info_process._entry_ptr, ptr @hostap_info_process._entry_ptr.11, ptr @hostap_info_process._entry_ptr.5, ptr @hostap_info_process._entry_ptr.8, ptr @prism2_host_roaming._entry, ptr @prism2_host_roaming._entry.47, ptr @prism2_host_roaming._entry.50, ptr @prism2_host_roaming._entry.53, ptr @prism2_host_roaming._entry.56, ptr @prism2_host_roaming._entry.59, ptr @prism2_host_roaming._entry_ptr, ptr @prism2_host_roaming._entry_ptr.49, ptr @prism2_host_roaming._entry_ptr.52, ptr @prism2_host_roaming._entry_ptr.55, ptr @prism2_host_roaming._entry_ptr.58, ptr @prism2_host_roaming._entry_ptr.61, ptr @prism2_info_commtallies16._entry, ptr @prism2_info_commtallies16._entry_ptr, ptr @prism2_info_commtallies32._entry, ptr @prism2_info_commtallies32._entry_ptr, ptr @prism2_info_hostscanresults._entry, ptr @prism2_info_hostscanresults._entry.33, ptr @prism2_info_hostscanresults._entry.36, ptr @prism2_info_hostscanresults._entry_ptr, ptr @prism2_info_hostscanresults._entry_ptr.35, ptr @prism2_info_hostscanresults._entry_ptr.38, ptr @prism2_info_linkstatus._entry, ptr @prism2_info_linkstatus._entry.19, ptr @prism2_info_linkstatus._entry_ptr, ptr @prism2_info_linkstatus._entry_ptr.21, ptr @prism2_info_scanresults._entry, ptr @prism2_info_scanresults._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @hostap_info_init.__key, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @skb_queue_head_init.__key, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @switch.table.hostap_info_process], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_info_process._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_info_process._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_info_process._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_info_process._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_info_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_info_commtallies32._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_info_commtallies16._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_info_linkstatus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_info_linkstatus._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_info_scanresults._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_info_hostscanresults._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_info_hostscanresults._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_info_hostscanresults._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_info_queue_linkstatus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_info_queue_linkstatus._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_host_roaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_host_roaming._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_host_roaming._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_host_roaming._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_host_roaming._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_host_roaming._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.hostap_info_process to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hostap_info_process(ptr noundef %local, ptr nocapture noundef readonly %skb) #0 align 64 {
entry:
  %wrqu.i.i68 = alloca %union.iwreq_data, align 4
  %wrqu.i.i = alloca %union.iwreq_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %sub = add i32 %3, -4
  %type = getelementptr inbounds %struct.hfa384x_info_frame, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %type, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i16 %6, label %do.end [
    i16 -3840, label %sw.bb
    i16 -3584, label %sw.bb2
    i16 -3839, label %sw.bb3
    i16 -3837, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  %tallies32.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 91
  %8 = ptrtoint ptr %tallies32.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tallies32.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 84, i32 %sub)
  %cmp.i.i = icmp ult i32 %sub, 84
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 5
  %10 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i.i, align 4
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %11, i32 noundef %sub) #10
  br label %sw.epilog

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %add.ptr, align 1
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #7
  %comm_tallies.i.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 28
  %15 = ptrtoint ptr %comm_tallies.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %comm_tallies.i.i, align 4
  %add.i.i = add i32 %16, %14
  store i32 %add.i.i, ptr %comm_tallies.i.i, align 4
  %tx_multicast_frames.i.i = getelementptr i8, ptr %1, i32 8
  %17 = ptrtoint ptr %tx_multicast_frames.i.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %tx_multicast_frames.i.i, align 1
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #7
  %tx_multicast_frames3.i.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 28, i32 1
  %20 = ptrtoint ptr %tx_multicast_frames3.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_multicast_frames3.i.i, align 4
  %add4.i.i = add i32 %21, %19
  store i32 %add4.i.i, ptr %tx_multicast_frames3.i.i, align 4
  %tx_fragments.i.i = getelementptr i8, ptr %1, i32 12
  %22 = ptrtoint ptr %tx_fragments.i.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %tx_fragments.i.i, align 1
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #7
  %tx_fragments6.i.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 28, i32 2
  %25 = ptrtoint ptr %tx_fragments6.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx_fragments6.i.i, align 4
  %add7.i.i = add i32 %26, %24
  store i32 %add7.i.i, ptr %tx_fragments6.i.i, align 4
  %tx_unicast_octets.i.i = getelementptr i8, ptr %1, i32 16
  %27 = ptrtoint ptr %tx_unicast_octets.i.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %tx_unicast_octets.i.i, align 1
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #7
  %tx_unicast_octets9.i.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 28, i32 3
  %30 = ptrtoint ptr %tx_unicast_octets9.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tx_unicast_octets9.i.i, align 4
  %add10.i.i = add i32 %31, %29
  store i32 %add10.i.i, ptr %tx_unicast_octets9.i.i, align 4
  %tx_multicast_octets.i.i = getelementptr i8, ptr %1, i32 20
  %32 = ptrtoint ptr %tx_multicast_octets.i.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %tx_multicast_octets.i.i, align 1
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #7
  %tx_multicast_octets12.i.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 28, i32 4
  %35 = ptrtoint ptr %tx_multicast_octets12.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tx_multicast_octets12.i.i, align 4
  %add13.i.i = add i32 %36, %34
  store i32 %add13.i.i, ptr %tx_multicast_octets12.i.i, align 4
  %tx_deferred_transmissions.i.i = getelementptr i8, ptr %1, i32 24
  %37 = ptrtoint ptr %tx_deferred_transmissions.i.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %tx_deferred_transmissions.i.i, align 1
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #7
  %tx_deferred_transmissions15.i.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 28, i32 5
  %40 = ptrtoint ptr %tx_deferred_transmissions15.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tx_deferred_transmissions15.i.i, align 4
  %add16.i.i = add i32 %41, %39
  store i32 %add16.i.i, ptr %tx_deferred_transmissions15.i.i, align 4
  %tx_single_retry_frames.i.i = getelementptr i8, ptr %1, i32 28
  %42 = ptrtoint ptr %tx_single_retry_frames.i.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %tx_single_retry_frames.i.i, align 1
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #7
  %tx_single_retry_frames18.i.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 28, i32 6
  %45 = ptrtoint ptr %tx_single_retry_frames18.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tx_single_retry_frames18.i.i, align 4
  %add19.i.i = add i32 %46, %44
  store i32 %add19.i.i, ptr %tx_single_retry_frames18.i.i, align 4
  %tx_multiple_retry_frames.i.i = getelementptr i8, ptr %1, i32 32
  %47 = ptrtoint ptr %tx_multiple_retry_frames.i.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %tx_multiple_retry_frames.i.i, align 1
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #7
  %tx_multiple_retry_frames21.i.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 28, i32 7
  %50 = ptrtoint ptr %tx_multiple_retry_frames21.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tx_multiple_retry_frames21.i.i, align 4
  %add22.i.i = add i32 %51, %49
  store i32 %add22.i.i, ptr %tx_multiple_retry_frames21.i.i, align 4
  %tx_retry_limit_exceeded.i.i = getelementptr i8, ptr %1, i32 36
  %52 = ptrtoint ptr %tx_retry_limit_exceeded.i.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %tx_retry_limit_exceeded.i.i, align 1
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #7
  %tx_retry_limit_exceeded24.i.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 28, i32 8
  %55 = ptrtoint ptr %tx_retry_limit_exceeded24.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tx_retry_limit_exceeded24.i.i, align 4
  %add25.i.i = add i32 %56, %54
  store i32 %add25.i.i, ptr %tx_retry_limit_exceeded24.i.i, align 4
  %tx_discards.i.i = getelementptr i8, ptr %1, i32 40
  %57 = ptrtoint ptr %tx_discards.i.i to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %58 = load i32, ptr %tx_discards.i.i, align 1
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #7
  %tx_discards27.i.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 28, i32 9
  %60 = ptrtoint ptr %tx_discards27.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tx_discards27.i.i, align 4
  %add28.i.i = add i32 %61, %59
  store i32 %add28.i.i, ptr %tx_discards27.i.i, align 4
  %rx_unicast_frames.i.i = getelementptr i8, ptr %1, i32 44
  %62 = ptrtoint ptr %rx_unicast_frames.i.i to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %rx_unicast_frames.i.i, align 1
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #7
  %rx_unicast_frames30.i.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 28, i32 10
  %65 = ptrtoint ptr %rx_unicast_frames30.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %rx_unicast_frames30.i.i, align 4
  %add31.i.i = add i32 %66, %64
  store i32 %add31.i.i, ptr %rx_unicast_frames30.i.i, align 4
  %rx_multicast_frames.i.i = getelementptr i8, ptr %1, i32 48
  %67 = ptrtoint ptr %rx_multicast_frames.i.i to i32
  call void @__asan_loadN_noabort(i32 %67, i32 4)
  %68 = load i32, ptr %rx_multicast_frames.i.i, align 1
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #7
  %rx_multicast_frames33.i.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 28, i32 11
  %70 = ptrtoint ptr %rx_multicast_frames33.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %rx_multicast_frames33.i.i, align 4
  %add34.i.i = add i32 %71, %69
  store i32 %add34.i.i, ptr %rx_multicast_frames33.i.i, align 4
  %rx_fragments.i.i = getelementptr i8, ptr %1, i32 52
  %72 = ptrtoint ptr %rx_fragments.i.i to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %rx_fragments.i.i, align 1
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #7
  %rx_fragments36.i.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 28, i32 12
  %75 = ptrtoint ptr %rx_fragments36.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %rx_fragments36.i.i, align 4
  %add37.i.i = add i32 %76, %74
  store i32 %add37.i.i, ptr %rx_fragments36.i.i, align 4
  %rx_unicast_octets.i.i = getelementptr i8, ptr %1, i32 56
  %77 = ptrtoint ptr %rx_unicast_octets.i.i to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %78 = load i32, ptr %rx_unicast_octets.i.i, align 1
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #7
  %rx_unicast_octets39.i.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 28, i32 13
  %80 = ptrtoint ptr %rx_unicast_octets39.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %rx_unicast_octets39.i.i, align 4
  %add40.i.i = add i32 %81, %79
  store i32 %add40.i.i, ptr %rx_unicast_octets39.i.i, align 4
  %rx_multicast_octets.i.i = getelementptr i8, ptr %1, i32 60
  %82 = ptrtoint ptr %rx_multicast_octets.i.i to i32
  call void @__asan_loadN_noabort(i32 %82, i32 4)
  %83 = load i32, ptr %rx_multicast_octets.i.i, align 1
  %84 = tail call i32 @llvm.bswap.i32(i32 %83) #7
  %rx_multicast_octets42.i.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 28, i32 14
  %85 = ptrtoint ptr %rx_multicast_octets42.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %rx_multicast_octets42.i.i, align 4
  %add43.i.i = add i32 %86, %84
  store i32 %add43.i.i, ptr %rx_multicast_octets42.i.i, align 4
  %rx_fcs_errors.i.i = getelementptr i8, ptr %1, i32 64
  %87 = ptrtoint ptr %rx_fcs_errors.i.i to i32
  call void @__asan_loadN_noabort(i32 %87, i32 4)
  %88 = load i32, ptr %rx_fcs_errors.i.i, align 1
  %89 = tail call i32 @llvm.bswap.i32(i32 %88) #7
  %rx_fcs_errors45.i.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 28, i32 15
  %90 = ptrtoint ptr %rx_fcs_errors45.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %rx_fcs_errors45.i.i, align 4
  %add46.i.i = add i32 %91, %89
  store i32 %add46.i.i, ptr %rx_fcs_errors45.i.i, align 4
  %rx_discards_no_buffer.i.i = getelementptr i8, ptr %1, i32 68
  %92 = ptrtoint ptr %rx_discards_no_buffer.i.i to i32
  call void @__asan_loadN_noabort(i32 %92, i32 4)
  %93 = load i32, ptr %rx_discards_no_buffer.i.i, align 1
  %94 = tail call i32 @llvm.bswap.i32(i32 %93) #7
  %rx_discards_no_buffer48.i.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 28, i32 16
  %95 = ptrtoint ptr %rx_discards_no_buffer48.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %rx_discards_no_buffer48.i.i, align 4
  %add49.i.i = add i32 %96, %94
  store i32 %add49.i.i, ptr %rx_discards_no_buffer48.i.i, align 4
  %tx_discards_wrong_sa.i.i = getelementptr i8, ptr %1, i32 72
  %97 = ptrtoint ptr %tx_discards_wrong_sa.i.i to i32
  call void @__asan_loadN_noabort(i32 %97, i32 4)
  %98 = load i32, ptr %tx_discards_wrong_sa.i.i, align 1
  %99 = tail call i32 @llvm.bswap.i32(i32 %98) #7
  %tx_discards_wrong_sa51.i.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 28, i32 17
  %100 = ptrtoint ptr %tx_discards_wrong_sa51.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %tx_discards_wrong_sa51.i.i, align 4
  %add52.i.i = add i32 %101, %99
  store i32 %add52.i.i, ptr %tx_discards_wrong_sa51.i.i, align 4
  %rx_discards_wep_undecryptable.i.i = getelementptr i8, ptr %1, i32 76
  %102 = ptrtoint ptr %rx_discards_wep_undecryptable.i.i to i32
  call void @__asan_loadN_noabort(i32 %102, i32 4)
  %103 = load i32, ptr %rx_discards_wep_undecryptable.i.i, align 1
  %104 = tail call i32 @llvm.bswap.i32(i32 %103) #7
  %rx_discards_wep_undecryptable54.i.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 28, i32 18
  %105 = ptrtoint ptr %rx_discards_wep_undecryptable54.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %rx_discards_wep_undecryptable54.i.i, align 4
  %add55.i.i = add i32 %106, %104
  store i32 %add55.i.i, ptr %rx_discards_wep_undecryptable54.i.i, align 4
  %rx_message_in_msg_fragments.i.i = getelementptr i8, ptr %1, i32 80
  %107 = ptrtoint ptr %rx_message_in_msg_fragments.i.i to i32
  call void @__asan_loadN_noabort(i32 %107, i32 4)
  %108 = load i32, ptr %rx_message_in_msg_fragments.i.i, align 1
  %109 = tail call i32 @llvm.bswap.i32(i32 %108) #7
  %rx_message_in_msg_fragments57.i.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 28, i32 19
  %110 = ptrtoint ptr %rx_message_in_msg_fragments57.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %rx_message_in_msg_fragments57.i.i, align 4
  %add58.i.i = add i32 %111, %109
  store i32 %add58.i.i, ptr %rx_message_in_msg_fragments57.i.i, align 4
  %rx_message_in_bad_msg_fragments.i.i = getelementptr i8, ptr %1, i32 84
  %112 = ptrtoint ptr %rx_message_in_bad_msg_fragments.i.i to i32
  call void @__asan_loadN_noabort(i32 %112, i32 4)
  %113 = load i32, ptr %rx_message_in_bad_msg_fragments.i.i, align 1
  %114 = tail call i32 @llvm.bswap.i32(i32 %113) #7
  %rx_message_in_bad_msg_fragments60.i.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 28, i32 20
  %115 = ptrtoint ptr %rx_message_in_bad_msg_fragments60.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %rx_message_in_bad_msg_fragments60.i.i, align 4
  %add61.i.i = add i32 %116, %114
  store i32 %add61.i.i, ptr %rx_message_in_bad_msg_fragments60.i.i, align 4
  br label %sw.epilog

if.else.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %sub)
  %cmp.i5.i = icmp ult i32 %sub, 42
  br i1 %cmp.i5.i, label %do.end.i8.i, label %if.end.i36.i

do.end.i8.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i6.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 5
  %117 = ptrtoint ptr %dev.i6.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev.i6.i, align 4
  %call.i7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %118, i32 noundef %sub) #10
  br label %sw.epilog

if.end.i36.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %119 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %119, i32 2)
  %120 = load i16, ptr %add.ptr, align 1
  %121 = tail call i16 @llvm.bswap.i16(i16 %120) #7
  %conv.i.i = zext i16 %121 to i32
  %comm_tallies.i9.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 28
  %122 = ptrtoint ptr %comm_tallies.i9.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %comm_tallies.i9.i, align 4
  %add.i10.i = add i32 %123, %conv.i.i
  store i32 %add.i10.i, ptr %comm_tallies.i9.i, align 4
  %tx_multicast_frames.i11.i = getelementptr i8, ptr %1, i32 6
  %124 = ptrtoint ptr %tx_multicast_frames.i11.i to i32
  call void @__asan_loadN_noabort(i32 %124, i32 2)
  %125 = load i16, ptr %tx_multicast_frames.i11.i, align 1
  %126 = tail call i16 @llvm.bswap.i16(i16 %125) #7
  %conv2.i.i = zext i16 %126 to i32
  %tx_multicast_frames4.i.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 28, i32 1
  %127 = ptrtoint ptr %tx_multicast_frames4.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %tx_multicast_frames4.i.i, align 4
  %add5.i.i = add i32 %128, %conv2.i.i
  store i32 %add5.i.i, ptr %tx_multicast_frames4.i.i, align 4
  %tx_fragments.i12.i = getelementptr i8, ptr %1, i32 8
  %129 = ptrtoint ptr %tx_fragments.i12.i to i32
  call void @__asan_loadN_noabort(i32 %129, i32 2)
  %130 = load i16, ptr %tx_fragments.i12.i, align 1
  %131 = tail call i16 @llvm.bswap.i16(i16 %130) #7
  %conv6.i.i = zext i16 %131 to i32
  %tx_fragments8.i.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 28, i32 2
  %132 = ptrtoint ptr %tx_fragments8.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %tx_fragments8.i.i, align 4
  %add9.i.i = add i32 %133, %conv6.i.i
  store i32 %add9.i.i, ptr %tx_fragments8.i.i, align 4
  %tx_unicast_octets.i13.i = getelementptr i8, ptr %1, i32 10
  %134 = ptrtoint ptr %tx_unicast_octets.i13.i to i32
  call void @__asan_loadN_noabort(i32 %134, i32 2)
  %135 = load i16, ptr %tx_unicast_octets.i13.i, align 1
  %136 = tail call i16 @llvm.bswap.i16(i16 %135) #7
  %conv10.i.i = zext i16 %136 to i32
  %tx_unicast_octets12.i.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 28, i32 3
  %137 = ptrtoint ptr %tx_unicast_octets12.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %tx_unicast_octets12.i.i, align 4
  %add13.i14.i = add i32 %138, %conv10.i.i
  store i32 %add13.i14.i, ptr %tx_unicast_octets12.i.i, align 4
  %tx_multicast_octets.i15.i = getelementptr i8, ptr %1, i32 12
  %139 = ptrtoint ptr %tx_multicast_octets.i15.i to i32
  call void @__asan_loadN_noabort(i32 %139, i32 2)
  %140 = load i16, ptr %tx_multicast_octets.i15.i, align 1
  %141 = tail call i16 @llvm.bswap.i16(i16 %140) #7
  %conv14.i.i = zext i16 %141 to i32
  %tx_multicast_octets16.i.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 28, i32 4
  %142 = ptrtoint ptr %tx_multicast_octets16.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %tx_multicast_octets16.i.i, align 4
  %add17.i.i = add i32 %143, %conv14.i.i
  store i32 %add17.i.i, ptr %tx_multicast_octets16.i.i, align 4
  %tx_deferred_transmissions.i16.i = getelementptr i8, ptr %1, i32 14
  %144 = ptrtoint ptr %tx_deferred_transmissions.i16.i to i32
  call void @__asan_loadN_noabort(i32 %144, i32 2)
  %145 = load i16, ptr %tx_deferred_transmissions.i16.i, align 1
  %146 = tail call i16 @llvm.bswap.i16(i16 %145) #7
  %conv18.i.i = zext i16 %146 to i32
  %tx_deferred_transmissions20.i.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 28, i32 5
  %147 = ptrtoint ptr %tx_deferred_transmissions20.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %tx_deferred_transmissions20.i.i, align 4
  %add21.i.i = add i32 %148, %conv18.i.i
  store i32 %add21.i.i, ptr %tx_deferred_transmissions20.i.i, align 4
  %tx_single_retry_frames.i17.i = getelementptr i8, ptr %1, i32 16
  %149 = ptrtoint ptr %tx_single_retry_frames.i17.i to i32
  call void @__asan_loadN_noabort(i32 %149, i32 2)
  %150 = load i16, ptr %tx_single_retry_frames.i17.i, align 1
  %151 = tail call i16 @llvm.bswap.i16(i16 %150) #7
  %conv22.i.i = zext i16 %151 to i32
  %tx_single_retry_frames24.i.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 28, i32 6
  %152 = ptrtoint ptr %tx_single_retry_frames24.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %tx_single_retry_frames24.i.i, align 4
  %add25.i18.i = add i32 %153, %conv22.i.i
  store i32 %add25.i18.i, ptr %tx_single_retry_frames24.i.i, align 4
  %tx_multiple_retry_frames.i19.i = getelementptr i8, ptr %1, i32 18
  %154 = ptrtoint ptr %tx_multiple_retry_frames.i19.i to i32
  call void @__asan_loadN_noabort(i32 %154, i32 2)
  %155 = load i16, ptr %tx_multiple_retry_frames.i19.i, align 1
  %156 = tail call i16 @llvm.bswap.i16(i16 %155) #7
  %conv26.i.i = zext i16 %156 to i32
  %tx_multiple_retry_frames28.i.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 28, i32 7
  %157 = ptrtoint ptr %tx_multiple_retry_frames28.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %tx_multiple_retry_frames28.i.i, align 4
  %add29.i.i = add i32 %158, %conv26.i.i
  store i32 %add29.i.i, ptr %tx_multiple_retry_frames28.i.i, align 4
  %tx_retry_limit_exceeded.i20.i = getelementptr i8, ptr %1, i32 20
  %159 = ptrtoint ptr %tx_retry_limit_exceeded.i20.i to i32
  call void @__asan_loadN_noabort(i32 %159, i32 2)
  %160 = load i16, ptr %tx_retry_limit_exceeded.i20.i, align 1
  %161 = tail call i16 @llvm.bswap.i16(i16 %160) #7
  %conv30.i.i = zext i16 %161 to i32
  %tx_retry_limit_exceeded32.i.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 28, i32 8
  %162 = ptrtoint ptr %tx_retry_limit_exceeded32.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %tx_retry_limit_exceeded32.i.i, align 4
  %add33.i.i = add i32 %163, %conv30.i.i
  store i32 %add33.i.i, ptr %tx_retry_limit_exceeded32.i.i, align 4
  %tx_discards.i21.i = getelementptr i8, ptr %1, i32 22
  %164 = ptrtoint ptr %tx_discards.i21.i to i32
  call void @__asan_loadN_noabort(i32 %164, i32 2)
  %165 = load i16, ptr %tx_discards.i21.i, align 1
  %166 = tail call i16 @llvm.bswap.i16(i16 %165) #7
  %conv34.i.i = zext i16 %166 to i32
  %tx_discards36.i.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 28, i32 9
  %167 = ptrtoint ptr %tx_discards36.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %tx_discards36.i.i, align 4
  %add37.i22.i = add i32 %168, %conv34.i.i
  store i32 %add37.i22.i, ptr %tx_discards36.i.i, align 4
  %rx_unicast_frames.i23.i = getelementptr i8, ptr %1, i32 24
  %169 = ptrtoint ptr %rx_unicast_frames.i23.i to i32
  call void @__asan_loadN_noabort(i32 %169, i32 2)
  %170 = load i16, ptr %rx_unicast_frames.i23.i, align 1
  %171 = tail call i16 @llvm.bswap.i16(i16 %170) #7
  %conv38.i.i = zext i16 %171 to i32
  %rx_unicast_frames40.i.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 28, i32 10
  %172 = ptrtoint ptr %rx_unicast_frames40.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %rx_unicast_frames40.i.i, align 4
  %add41.i.i = add i32 %173, %conv38.i.i
  store i32 %add41.i.i, ptr %rx_unicast_frames40.i.i, align 4
  %rx_multicast_frames.i24.i = getelementptr i8, ptr %1, i32 26
  %174 = ptrtoint ptr %rx_multicast_frames.i24.i to i32
  call void @__asan_loadN_noabort(i32 %174, i32 2)
  %175 = load i16, ptr %rx_multicast_frames.i24.i, align 1
  %176 = tail call i16 @llvm.bswap.i16(i16 %175) #7
  %conv42.i.i = zext i16 %176 to i32
  %rx_multicast_frames44.i.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 28, i32 11
  %177 = ptrtoint ptr %rx_multicast_frames44.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %rx_multicast_frames44.i.i, align 4
  %add45.i.i = add i32 %178, %conv42.i.i
  store i32 %add45.i.i, ptr %rx_multicast_frames44.i.i, align 4
  %rx_fragments.i25.i = getelementptr i8, ptr %1, i32 28
  %179 = ptrtoint ptr %rx_fragments.i25.i to i32
  call void @__asan_loadN_noabort(i32 %179, i32 2)
  %180 = load i16, ptr %rx_fragments.i25.i, align 1
  %181 = tail call i16 @llvm.bswap.i16(i16 %180) #7
  %conv46.i.i = zext i16 %181 to i32
  %rx_fragments48.i.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 28, i32 12
  %182 = ptrtoint ptr %rx_fragments48.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %rx_fragments48.i.i, align 4
  %add49.i26.i = add i32 %183, %conv46.i.i
  store i32 %add49.i26.i, ptr %rx_fragments48.i.i, align 4
  %rx_unicast_octets.i27.i = getelementptr i8, ptr %1, i32 30
  %184 = ptrtoint ptr %rx_unicast_octets.i27.i to i32
  call void @__asan_loadN_noabort(i32 %184, i32 2)
  %185 = load i16, ptr %rx_unicast_octets.i27.i, align 1
  %186 = tail call i16 @llvm.bswap.i16(i16 %185) #7
  %conv50.i.i = zext i16 %186 to i32
  %rx_unicast_octets52.i.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 28, i32 13
  %187 = ptrtoint ptr %rx_unicast_octets52.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %rx_unicast_octets52.i.i, align 4
  %add53.i.i = add i32 %188, %conv50.i.i
  store i32 %add53.i.i, ptr %rx_unicast_octets52.i.i, align 4
  %rx_multicast_octets.i28.i = getelementptr i8, ptr %1, i32 32
  %189 = ptrtoint ptr %rx_multicast_octets.i28.i to i32
  call void @__asan_loadN_noabort(i32 %189, i32 2)
  %190 = load i16, ptr %rx_multicast_octets.i28.i, align 1
  %191 = tail call i16 @llvm.bswap.i16(i16 %190) #7
  %conv54.i.i = zext i16 %191 to i32
  %rx_multicast_octets56.i.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 28, i32 14
  %192 = ptrtoint ptr %rx_multicast_octets56.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %rx_multicast_octets56.i.i, align 4
  %add57.i.i = add i32 %193, %conv54.i.i
  store i32 %add57.i.i, ptr %rx_multicast_octets56.i.i, align 4
  %rx_fcs_errors.i29.i = getelementptr i8, ptr %1, i32 34
  %194 = ptrtoint ptr %rx_fcs_errors.i29.i to i32
  call void @__asan_loadN_noabort(i32 %194, i32 2)
  %195 = load i16, ptr %rx_fcs_errors.i29.i, align 1
  %196 = tail call i16 @llvm.bswap.i16(i16 %195) #7
  %conv58.i.i = zext i16 %196 to i32
  %rx_fcs_errors60.i.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 28, i32 15
  %197 = ptrtoint ptr %rx_fcs_errors60.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %rx_fcs_errors60.i.i, align 4
  %add61.i30.i = add i32 %198, %conv58.i.i
  store i32 %add61.i30.i, ptr %rx_fcs_errors60.i.i, align 4
  %rx_discards_no_buffer.i31.i = getelementptr i8, ptr %1, i32 36
  %199 = ptrtoint ptr %rx_discards_no_buffer.i31.i to i32
  call void @__asan_loadN_noabort(i32 %199, i32 2)
  %200 = load i16, ptr %rx_discards_no_buffer.i31.i, align 1
  %201 = tail call i16 @llvm.bswap.i16(i16 %200) #7
  %conv62.i.i = zext i16 %201 to i32
  %rx_discards_no_buffer64.i.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 28, i32 16
  %202 = ptrtoint ptr %rx_discards_no_buffer64.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %rx_discards_no_buffer64.i.i, align 4
  %add65.i.i = add i32 %203, %conv62.i.i
  store i32 %add65.i.i, ptr %rx_discards_no_buffer64.i.i, align 4
  %tx_discards_wrong_sa.i32.i = getelementptr i8, ptr %1, i32 38
  %204 = ptrtoint ptr %tx_discards_wrong_sa.i32.i to i32
  call void @__asan_loadN_noabort(i32 %204, i32 2)
  %205 = load i16, ptr %tx_discards_wrong_sa.i32.i, align 1
  %206 = tail call i16 @llvm.bswap.i16(i16 %205) #7
  %conv66.i.i = zext i16 %206 to i32
  %tx_discards_wrong_sa68.i.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 28, i32 17
  %207 = ptrtoint ptr %tx_discards_wrong_sa68.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %tx_discards_wrong_sa68.i.i, align 4
  %add69.i.i = add i32 %208, %conv66.i.i
  store i32 %add69.i.i, ptr %tx_discards_wrong_sa68.i.i, align 4
  %rx_discards_wep_undecryptable.i33.i = getelementptr i8, ptr %1, i32 40
  %209 = ptrtoint ptr %rx_discards_wep_undecryptable.i33.i to i32
  call void @__asan_loadN_noabort(i32 %209, i32 2)
  %210 = load i16, ptr %rx_discards_wep_undecryptable.i33.i, align 1
  %211 = tail call i16 @llvm.bswap.i16(i16 %210) #7
  %conv70.i.i = zext i16 %211 to i32
  %rx_discards_wep_undecryptable72.i.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 28, i32 18
  %212 = ptrtoint ptr %rx_discards_wep_undecryptable72.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %rx_discards_wep_undecryptable72.i.i, align 4
  %add73.i.i = add i32 %213, %conv70.i.i
  store i32 %add73.i.i, ptr %rx_discards_wep_undecryptable72.i.i, align 4
  %rx_message_in_msg_fragments.i34.i = getelementptr i8, ptr %1, i32 42
  %214 = ptrtoint ptr %rx_message_in_msg_fragments.i34.i to i32
  call void @__asan_loadN_noabort(i32 %214, i32 2)
  %215 = load i16, ptr %rx_message_in_msg_fragments.i34.i, align 1
  %216 = tail call i16 @llvm.bswap.i16(i16 %215) #7
  %conv74.i.i = zext i16 %216 to i32
  %rx_message_in_msg_fragments76.i.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 28, i32 19
  %217 = ptrtoint ptr %rx_message_in_msg_fragments76.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %rx_message_in_msg_fragments76.i.i, align 4
  %add77.i.i = add i32 %218, %conv74.i.i
  store i32 %add77.i.i, ptr %rx_message_in_msg_fragments76.i.i, align 4
  %rx_message_in_bad_msg_fragments.i35.i = getelementptr i8, ptr %1, i32 44
  %219 = ptrtoint ptr %rx_message_in_bad_msg_fragments.i35.i to i32
  call void @__asan_loadN_noabort(i32 %219, i32 2)
  %220 = load i16, ptr %rx_message_in_bad_msg_fragments.i35.i, align 1
  %221 = tail call i16 @llvm.bswap.i16(i16 %220) #7
  %conv78.i.i = zext i16 %221 to i32
  %rx_message_in_bad_msg_fragments80.i.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 28, i32 20
  %222 = ptrtoint ptr %rx_message_in_bad_msg_fragments80.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %rx_message_in_bad_msg_fragments80.i.i, align 4
  %add81.i.i = add i32 %223, %conv78.i.i
  store i32 %add81.i.i, ptr %rx_message_in_bad_msg_fragments80.i.i, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %last_join_time.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 105
  %224 = ptrtoint ptr %last_join_time.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 0, ptr %last_join_time.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub)
  %cmp.not.i = icmp eq i32 %sub, 2
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 5
  %225 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %dev.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %226, i32 noundef %sub) #10
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb2
  %iw_mode.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 30
  %227 = ptrtoint ptr %iw_mode.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %iw_mode.i, align 4
  %229 = zext i32 %228 to i64
  call void @__sanitizer_cov_trace_switch(i64 %229, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %228, label %lor.end.thread.i [
    i32 3, label %if.end.i.lor.end.i_crit_edge
    i32 4, label %if.end.i.lor.end.i_crit_edge94
    i32 6, label %if.end.i.lor.end.i_crit_edge95
  ]

if.end.i.lor.end.i_crit_edge95:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end.i

if.end.i.lor.end.i_crit_edge94:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end.i

if.end.i.lor.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end.i

lor.end.thread.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %230 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %add.ptr, align 1
  %conv51.i = zext i8 %231 to i16
  %arrayidx652.i = getelementptr i8, ptr %1, i32 5
  %232 = ptrtoint ptr %arrayidx652.i to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %arrayidx652.i, align 1
  %conv753.i = zext i8 %233 to i16
  %shl54.i = shl nuw i16 %conv753.i, 8
  %or55.i = or i16 %shl54.i, %conv51.i
  br label %do.end17.i

lor.end.i:                                        ; preds = %if.end.i.lor.end.i_crit_edge, %if.end.i.lor.end.i_crit_edge94, %if.end.i.lor.end.i_crit_edge95
  %234 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %add.ptr, align 1
  %conv.i = zext i8 %235 to i16
  %arrayidx6.i = getelementptr i8, ptr %1, i32 5
  %236 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %arrayidx6.i, align 1
  %conv7.i = zext i8 %237 to i16
  %shl.i = shl nuw i16 %conv7.i, 8
  %or.i = or i16 %shl.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %or.i)
  %cmp11.not.i = icmp eq i16 %or.i, 2
  br i1 %cmp11.not.i, label %lor.end.i.if.then29.i_crit_edge, label %lor.end.i.do.end17.i_crit_edge

lor.end.i.do.end17.i_crit_edge:                   ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17.i

lor.end.i.if.then29.i_crit_edge:                  ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then29.i

do.end17.i:                                       ; preds = %lor.end.i.do.end17.i_crit_edge, %lor.end.thread.i
  %or58.i = phi i16 [ %or55.i, %lor.end.thread.i ], [ %or.i, %lor.end.i.do.end17.i_crit_edge ]
  %238 = phi i1 [ false, %lor.end.thread.i ], [ true, %lor.end.i.do.end17.i_crit_edge ]
  %dev19.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 5
  %239 = ptrtoint ptr %dev19.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %dev19.i, align 4
  %conv22.i = zext i16 %or58.i to i32
  %switch.tableidx = add i16 %or58.i, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %switch.tableidx)
  %241 = icmp ult i16 %switch.tableidx, 6
  br i1 %241, label %switch.lookup, label %do.end17.i.if.end27.i_crit_edge

do.end17.i.if.end27.i_crit_edge:                  ; preds = %do.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.i

switch.lookup:                                    ; preds = %do.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  %242 = sext i16 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [6 x ptr], ptr @switch.table.hostap_info_process, i32 0, i32 %242
  %243 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %243)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %switch.lookup, %do.end17.i.if.end27.i_crit_edge
  %retval.0.i.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.28, %do.end17.i.if.end27.i_crit_edge ]
  %call24.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %240, i32 noundef %conv22.i, ptr noundef nonnull %retval.0.i.i) #10
  br i1 %238, label %if.end27.i.if.then29.i_crit_edge, label %if.end31.i

if.end27.i.if.then29.i_crit_edge:                 ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then29.i

if.then29.i:                                      ; preds = %if.end27.i.if.then29.i_crit_edge, %lor.end.i.if.then29.i_crit_edge
  %dev30.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 5
  %244 = ptrtoint ptr %dev30.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %dev30.i, align 4
  tail call void @netif_carrier_on(ptr noundef %245) #7
  %ddev.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 6
  %246 = ptrtoint ptr %ddev.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %ddev.i, align 4
  tail call void @netif_carrier_on(ptr noundef %247) #7
  br label %sw.epilog

if.end31.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  %pending_info.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 110
  tail call void @_set_bit(i32 noundef 0, ptr noundef %pending_info.i) #7
  %prev_link_status.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 111
  %248 = ptrtoint ptr %prev_link_status.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 %conv22.i, ptr %prev_link_status.i, align 4
  %info_queue.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 109
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %249 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %249, ptr noundef %info_queue.i) #7
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub)
  %cmp.i = icmp slt i32 %sub, 4
  br i1 %cmp.i, label %do.end.i61, label %if.end.i62

do.end.i61:                                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i59 = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 5
  %250 = ptrtoint ptr %dev.i59 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %dev.i59, align 4
  %call.i60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %251, i32 noundef %sub) #10
  br label %sw.epilog

if.end.i62:                                       ; preds = %sw.bb3
  %incdec.ptr1.i = getelementptr i8, ptr %1, i32 8
  %sub.i = add i32 %3, -8
  %div.i = udiv i32 %sub.i, 62
  %252 = shl nuw i32 %div.i, 6
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %252, i32 noundef 2592) #11
  %cmp3.i = icmp eq ptr %call8.i.i, null
  br i1 %cmp3.i, label %if.end.i62.sw.epilog_crit_edge, label %for.cond.preheader.i

if.end.i62.sw.epilog_crit_edge:                   ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.cond.preheader.i:                             ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %sub.i)
  %253 = icmp ult i32 %sub.i, 62
  br i1 %253, label %for.cond.preheader.i.do.body10.i_crit_edge, label %for.body.preheader.i

for.cond.preheader.i.do.body10.i_crit_edge:       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body10.i

for.body.preheader.i:                             ; preds = %for.cond.preheader.i
  %umax.i = tail call i32 @llvm.umax.i32(i32 %div.i, i32 1) #7
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.054.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %arrayidx.i = getelementptr %struct.hfa384x_hostscan_result, ptr %call8.i.i, i32 %i.054.i
  %arrayidx7.i = getelementptr %struct.hfa384x_scan_result, ptr %incdec.ptr1.i, i32 %i.054.i
  %254 = call ptr @memcpy(ptr %arrayidx.i, ptr %arrayidx7.i, i32 62)
  %atim.i = getelementptr %struct.hfa384x_hostscan_result, ptr %call8.i.i, i32 %i.054.i, i32 10
  %255 = ptrtoint ptr %atim.i to i32
  call void @__asan_store2_noabort(i32 %255)
  store i16 0, ptr %atim.i, align 2
  %inc.i = add nuw nsw i32 %i.054.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %for.body.i.do.body10.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.do.body10.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body10.i

do.body10.i:                                      ; preds = %for.body.i.do.body10.i_crit_edge, %for.cond.preheader.i.do.body10.i_crit_edge
  %lock.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 11
  %call14.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %last_scan_type.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 108
  %256 = ptrtoint ptr %last_scan_type.i to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 0, ptr %last_scan_type.i, align 4
  %last_scan_results.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 106
  %257 = ptrtoint ptr %last_scan_results.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %last_scan_results.i, align 4
  store ptr %call8.i.i, ptr %last_scan_results.i, align 4
  %last_scan_results_count.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 107
  %259 = ptrtoint ptr %last_scan_results_count.i to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 %div.i, ptr %last_scan_results_count.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call14.i) #7
  tail call void @kfree(ptr noundef %258) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wrqu.i.i) #7
  %260 = getelementptr inbounds %struct.iw_point, ptr %wrqu.i.i, i32 0, i32 1
  %261 = getelementptr inbounds %struct.iw_point, ptr %wrqu.i.i, i32 0, i32 2
  %262 = call ptr @memset(ptr %wrqu.i.i, i32 255, i32 16)
  %263 = ptrtoint ptr %260 to i32
  call void @__asan_store2_noabort(i32 %263)
  store i16 0, ptr %260, align 4
  %264 = ptrtoint ptr %261 to i32
  call void @__asan_store2_noabort(i32 %264)
  store i16 0, ptr %261, align 2
  %dev.i.i64 = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 5
  %265 = ptrtoint ptr %dev.i.i64 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %dev.i.i64, align 4
  call void @wireless_send_event(ptr noundef %266, i32 noundef 35609, ptr noundef nonnull %wrqu.i.i, ptr noundef null) #7
  %scan_timestamp.i.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 65
  %267 = ptrtoint ptr %scan_timestamp.i.i to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 0, ptr %scan_timestamp.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wrqu.i.i) #7
  %pending_info.i65 = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 110
  call void @_set_bit(i32 noundef 1, ptr noundef %pending_info.i65) #7
  %info_queue.i66 = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 109
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %268 = load ptr, ptr @system_wq, align 4
  %call.i.i.i67 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %268, ptr noundef %info_queue.i66) #7
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %hostscan_wq.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 114
  tail call void @__wake_up(ptr noundef %hostscan_wq.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub)
  %cmp.i69 = icmp slt i32 %sub, 4
  br i1 %cmp.i69, label %do.end.i72, label %if.end.i74

do.end.i72:                                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i70 = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 5
  %269 = ptrtoint ptr %dev.i70 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %dev.i70, align 4
  %call.i71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %270, i32 noundef %sub) #10
  br label %sw.epilog

if.end.i74:                                       ; preds = %sw.bb4
  %271 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %271)
  %272 = load i16, ptr %add.ptr, align 2
  %273 = tail call i16 @llvm.bswap.i16(i16 %272) #7
  %conv.i73 = zext i16 %273 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %272)
  %cmp1.i = icmp eq i16 %272, 0
  br i1 %cmp1.i, label %do.end6.i, label %if.end12.i

do.end6.i:                                        ; preds = %if.end.i74
  call void @__sanitizer_cov_trace_pc() #9
  %dev8.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 5
  %274 = ptrtoint ptr %dev8.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %dev8.i, align 4
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %275) #10
  br label %sw.epilog

if.end12.i:                                       ; preds = %if.end.i74
  %276 = tail call i32 @llvm.umin.i32(i32 %conv.i73, i32 64) #7
  %sub.i75 = add i32 %3, -8
  %div94.i = udiv i32 %sub.i75, %conv.i73
  %277 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %div94.i, i32 64) #7
  %278 = extractvalue { i32, i1 } %277, 1
  br i1 %278, label %if.end12.i.sw.epilog_crit_edge, label %if.end7.i.i.i, !prof !122

if.end12.i.sw.epilog_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end7.i.i.i:                                    ; preds = %if.end12.i
  %279 = extractvalue { i32, i1 } %277, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %279, i32 noundef 2848) #11
  %cmp19.i = icmp eq ptr %call8.i.i.i, null
  br i1 %cmp19.i, label %if.end7.i.i.i.sw.epilog_crit_edge, label %if.end22.i

if.end7.i.i.i.sw.epilog_crit_edge:                ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end22.i:                                       ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i75, i32 %conv.i73)
  %cmp2395.not.i = icmp ult i32 %sub.i75, %conv.i73
  br i1 %cmp2395.not.i, label %if.end22.i.for.end.i_crit_edge, label %for.body.preheader.i80

if.end22.i.for.end.i_crit_edge:                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.preheader.i80:                           ; preds = %if.end22.i
  %incdec.ptr17.i = getelementptr i8, ptr %1, i32 8
  br label %for.body.i84

for.body.i84:                                     ; preds = %for.body.i84.for.body.i84_crit_edge, %for.body.preheader.i80
  %left.addr.098.i = phi i32 [ %sub25.i, %for.body.i84.for.body.i84_crit_edge ], [ %sub.i75, %for.body.preheader.i80 ]
  %i.097.i = phi i32 [ %inc.i82, %for.body.i84.for.body.i84_crit_edge ], [ 0, %for.body.preheader.i80 ]
  %ptr.096.i = phi ptr [ %add.ptr.i, %for.body.i84.for.body.i84_crit_edge ], [ %incdec.ptr17.i, %for.body.preheader.i80 ]
  %arrayidx.i81 = getelementptr %struct.hfa384x_hostscan_result, ptr %call8.i.i.i, i32 %i.097.i
  %280 = call ptr @memcpy(ptr %arrayidx.i81, ptr %ptr.096.i, i32 %276)
  %add.ptr.i = getelementptr i8, ptr %ptr.096.i, i32 %conv.i73
  %sub25.i = sub i32 %left.addr.098.i, %conv.i73
  %inc.i82 = add nuw nsw i32 %i.097.i, 1
  %exitcond.not.i83 = icmp eq i32 %inc.i82, %div94.i
  br i1 %exitcond.not.i83, label %for.body.i84.for.end.i_crit_edge, label %for.body.i84.for.body.i84_crit_edge

for.body.i84.for.body.i84_crit_edge:              ; preds = %for.body.i84
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i84

for.body.i84.for.end.i_crit_edge:                 ; preds = %for.body.i84
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i84.for.end.i_crit_edge, %if.end22.i.for.end.i_crit_edge
  %left.addr.0.lcssa.i = phi i32 [ %sub.i75, %if.end22.i.for.end.i_crit_edge ], [ %sub25.i, %for.body.i84.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %left.addr.0.lcssa.i)
  %tobool.not.i85 = icmp eq i32 %left.addr.0.lcssa.i, 0
  br i1 %tobool.not.i85, label %for.end.i.do.body37.i_crit_edge, label %do.end29.i

for.end.i.do.body37.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body37.i

do.end29.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev31.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 5
  %281 = ptrtoint ptr %dev31.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %dev31.i, align 4
  %call34.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %282, i32 noundef %left.addr.0.lcssa.i, i32 noundef %conv.i73) #10
  br label %do.body37.i

do.body37.i:                                      ; preds = %do.end29.i, %for.end.i.do.body37.i_crit_edge
  %lock.i86 = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 11
  %call42.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i86) #7
  %last_scan_type.i87 = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 108
  %283 = ptrtoint ptr %last_scan_type.i87 to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 1, ptr %last_scan_type.i87, align 4
  %last_scan_results.i88 = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 106
  %284 = ptrtoint ptr %last_scan_results.i88 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %last_scan_results.i88, align 4
  store ptr %call8.i.i.i, ptr %last_scan_results.i88, align 4
  %last_scan_results_count.i89 = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 107
  %286 = ptrtoint ptr %last_scan_results_count.i89 to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 %div94.i, ptr %last_scan_results_count.i89, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i86, i32 noundef %call42.i) #7
  tail call void @kfree(ptr noundef %285) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wrqu.i.i68) #7
  %287 = getelementptr inbounds %struct.iw_point, ptr %wrqu.i.i68, i32 0, i32 1
  %288 = getelementptr inbounds %struct.iw_point, ptr %wrqu.i.i68, i32 0, i32 2
  %289 = call ptr @memset(ptr %wrqu.i.i68, i32 255, i32 16)
  %290 = ptrtoint ptr %287 to i32
  call void @__asan_store2_noabort(i32 %290)
  store i16 0, ptr %287, align 4
  %291 = ptrtoint ptr %288 to i32
  call void @__asan_store2_noabort(i32 %291)
  store i16 0, ptr %288, align 2
  %dev.i.i90 = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 5
  %292 = ptrtoint ptr %dev.i.i90 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %dev.i.i90, align 4
  call void @wireless_send_event(ptr noundef %293, i32 noundef 35609, ptr noundef nonnull %wrqu.i.i68, ptr noundef null) #7
  %scan_timestamp.i.i91 = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 65
  %294 = ptrtoint ptr %scan_timestamp.i.i91 to i32
  call void @__asan_store4_noabort(i32 %294)
  store i32 0, ptr %scan_timestamp.i.i91, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wrqu.i.i68) #7
  br label %sw.epilog

do.end:                                           ; preds = %entry
  %conv = zext i16 %6 to i32
  %dev = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 5
  %295 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %dev, align 4
  %297 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %297, i32 2)
  %298 = load i16, ptr %1, align 1
  %299 = tail call i16 @llvm.bswap.i16(i16 %298)
  %conv7 = zext i16 %299 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %296, i32 noundef %conv7, i32 noundef %conv) #10
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp2192 = icmp sgt i32 %sub, 0
  br i1 %cmp2192, label %do.end26.preheader, label %do.end.do.end35_crit_edge

do.end.do.end35_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end35

do.end26.preheader:                               ; preds = %do.end
  %300 = tail call i32 @llvm.smin.i32(i32 %sub, i32 100)
  br label %do.end26

do.end26:                                         ; preds = %do.end26.do.end26_crit_edge, %do.end26.preheader
  %i.093 = phi i32 [ %inc, %do.end26.do.end26_crit_edge ], [ 0, %do.end26.preheader ]
  %arrayidx = getelementptr i8, ptr %add.ptr, i32 %i.093
  %301 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %arrayidx, align 1
  %conv28 = zext i8 %302 to i32
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %conv28) #10
  %inc = add nuw nsw i32 %i.093, 1
  %exitcond.not = icmp eq i32 %inc, %300
  br i1 %exitcond.not, label %do.end26.do.end35_crit_edge, label %do.end26.do.end26_crit_edge

do.end26.do.end26_crit_edge:                      ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end26

do.end26.do.end35_crit_edge:                      ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end35

do.end35:                                         ; preds = %do.end26.do.end35_crit_edge, %do.end.do.end35_crit_edge
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end35, %do.body37.i, %if.end7.i.i.i.sw.epilog_crit_edge, %if.end12.i.sw.epilog_crit_edge, %do.end6.i, %do.end.i72, %do.body10.i, %if.end.i62.sw.epilog_crit_edge, %do.end.i61, %if.end31.i, %if.then29.i, %do.end.i, %if.end.i36.i, %do.end.i8.i, %if.end.i.i, %do.end.i.i
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hostap_info_init(ptr noundef %local) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %info_list = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 98
  %lock.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 98, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.39, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #7
  %0 = ptrtoint ptr %info_list to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %info_list, ptr %info_list, align 4
  %prev.i.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 98, i32 0, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %info_list, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 98, i32 1
  %2 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %qlen.i.i, align 4
  %info_queue = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 109
  tail call void @__init_work(ptr noundef %info_queue, i32 noundef 0) #7
  %3 = ptrtoint ptr %info_queue to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -64, ptr %info_queue, align 4
  %lockdep_map = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 109, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.12, ptr noundef nonnull @hostap_info_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry4 = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 109, i32 1
  %4 = ptrtoint ptr %entry4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %entry4, ptr %entry4, align 4
  %prev.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 109, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %entry4, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 109, i32 2
  %6 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @handle_info_queue, ptr %func, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @handle_info_queue(ptr noundef %work) #0 align 64 {
entry:
  %wrqu.i = alloca %union.iwreq_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1732
  %pending_info = getelementptr i8, ptr %work, i32 44
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %pending_info) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %prev_link_status.i = getelementptr i8, ptr %work, i32 48
  %0 = ptrtoint ptr %prev_link_status.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %prev_link_status.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wrqu.i) #7
  %2 = call ptr @memset(ptr %wrqu.i, i32 255, i32 16)
  %switch.tableidx = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %3 = icmp ult i32 %switch.tableidx, 5
  %4 = and i32 %switch.tableidx, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %switch.idx.cast.not = icmp eq i32 %4, 0
  %5 = select i1 %3, i1 %switch.idx.cast.not, i1 false
  %func.i = getelementptr i8, ptr %work, i32 -304
  %6 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %func.i, align 4
  %get_rid.i = getelementptr inbounds %struct.prism2_helper_functions, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %get_rid.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_rid.i, align 4
  %dev.i = getelementptr i8, ptr %work, i32 -1712
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %bssid.i = getelementptr i8, ptr %work, i32 -1112
  %call.i = tail call i32 %9(ptr noundef %11, i16 noundef zeroext -702, ptr noundef %bssid.i, i32 noundef 6, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp slt i32 %call.i, 0
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  br i1 %cmp3.i, label %do.end.i, label %do.end10.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %13) #10
  br label %if.end24.i

do.end10.i:                                       ; preds = %if.then
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %13, ptr noundef %bssid.i) #10
  %wds_type.i = getelementptr i8, ptr %work, i32 -828
  %14 = ptrtoint ptr %wds_type.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %wds_type.i, align 4
  %and.i = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end10.i.if.end24.i_crit_edge, label %if.then20.i

do.end10.i.if.end24.i_crit_edge:                  ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i

if.then20.i:                                      ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %ap.i = getelementptr i8, ptr %work, i32 -1288
  %16 = ptrtoint ptr %ap.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ap.i, align 4
  %call23.i = tail call i32 @hostap_add_sta(ptr noundef %17, ptr noundef %bssid.i) #7
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then20.i, %do.end10.i.if.end24.i_crit_edge, %do.end.i
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  br i1 %5, label %if.then26.i, label %if.else31.i

if.then26.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @netif_carrier_on(ptr noundef %19) #7
  %ddev.i = getelementptr i8, ptr %work, i32 -1708
  %20 = ptrtoint ptr %ddev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ddev.i, align 4
  tail call void @netif_carrier_on(ptr noundef %21) #7
  %sa_data.i = getelementptr inbounds %struct.sockaddr, ptr %wrqu.i, i32 0, i32 1
  %22 = call ptr @memcpy(ptr %sa_data.i, ptr %bssid.i, i32 6)
  %23 = ptrtoint ptr %wrqu.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1, ptr %wrqu.i, align 4
  br label %if.then40.i

if.else31.i:                                      ; preds = %if.end24.i
  tail call void @netif_carrier_off(ptr noundef %19) #7
  %ddev33.i = getelementptr i8, ptr %work, i32 -1708
  %24 = ptrtoint ptr %ddev33.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ddev33.i, align 4
  tail call void @netif_carrier_off(ptr noundef %25) #7
  %sa_data34.i = getelementptr inbounds %struct.sockaddr, ptr %wrqu.i, i32 0, i32 1
  %26 = call ptr @memset(ptr %sa_data34.i, i32 0, i32 6)
  %27 = ptrtoint ptr %wrqu.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 1, ptr %wrqu.i, align 4
  %prev_linkstatus_connected.i = getelementptr i8, ptr %work, i32 52
  %28 = ptrtoint ptr %prev_linkstatus_connected.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %prev_linkstatus_connected.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool39.not.i = icmp eq i32 %29, 0
  br i1 %tobool39.not.i, label %if.else31.i.handle_info_queue_linkstatus.exit_crit_edge, label %if.else31.i.if.then40.i_crit_edge

if.else31.i.if.then40.i_crit_edge:                ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then40.i

if.else31.i.handle_info_queue_linkstatus.exit_crit_edge: ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %handle_info_queue_linkstatus.exit

if.then40.i:                                      ; preds = %if.else31.i.if.then40.i_crit_edge, %if.then26.i
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 4
  call void @wireless_send_event(ptr noundef %31, i32 noundef 35605, ptr noundef nonnull %wrqu.i, ptr noundef null) #7
  br label %handle_info_queue_linkstatus.exit

handle_info_queue_linkstatus.exit:                ; preds = %if.then40.i, %if.else31.i.handle_info_queue_linkstatus.exit_crit_edge
  %lor.ext.i = zext i1 %5 to i32
  %prev_linkstatus_connected43.i = getelementptr i8, ptr %work, i32 52
  %32 = ptrtoint ptr %prev_linkstatus_connected43.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %lor.ext.i, ptr %prev_linkstatus_connected43.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wrqu.i) #7
  br label %if.end

if.end:                                           ; preds = %handle_info_queue_linkstatus.exit, %entry.if.end_crit_edge
  %call2 = call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %pending_info) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then4:                                         ; preds = %if.end
  %host_roaming.i = getelementptr i8, ptr %work, i32 -20
  %33 = ptrtoint ptr %host_roaming.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %host_roaming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp.i = icmp eq i32 %34, 1
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then4.if.end.i_crit_edge

if.then4.if.end.i_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then4
  %iw_mode.i = getelementptr i8, ptr %work, i32 -1120
  %35 = ptrtoint ptr %iw_mode.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %iw_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %cmp1.i = icmp eq i32 %36, 2
  br i1 %cmp1.i, label %if.then.i, label %land.lhs.true.i.if.endthread-pre-split.i_crit_edge

land.lhs.true.i.if.endthread-pre-split.i_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.endthread-pre-split.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @prism2_host_roaming(ptr noundef %add.ptr) #7
  br label %if.endthread-pre-split.i

if.endthread-pre-split.i:                         ; preds = %if.then.i, %land.lhs.true.i.if.endthread-pre-split.i_crit_edge
  %37 = ptrtoint ptr %host_roaming.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pr.i = load i32, ptr %host_roaming.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.endthread-pre-split.i, %if.then4.if.end.i_crit_edge
  %38 = phi i32 [ %.pr.i, %if.endthread-pre-split.i ], [ %34, %if.then4.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %38)
  %cmp3.i9 = icmp eq i32 %38, 2
  br i1 %cmp3.i9, label %land.lhs.true4.i, label %if.end.i.if.end5_crit_edge

if.end.i.if.end5_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

land.lhs.true4.i:                                 ; preds = %if.end.i
  %iw_mode5.i = getelementptr i8, ptr %work, i32 -1120
  %39 = ptrtoint ptr %iw_mode5.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %iw_mode5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %40)
  %cmp6.i = icmp eq i32 %40, 2
  br i1 %cmp6.i, label %land.lhs.true7.i, label %land.lhs.true4.i.if.end5_crit_edge

land.lhs.true4.i.if.end5_crit_edge:               ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

land.lhs.true7.i:                                 ; preds = %land.lhs.true4.i
  %preferred_ap.i = getelementptr i8, ptr %work, i32 56
  %41 = ptrtoint ptr %preferred_ap.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %preferred_ap.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %work, i32 60
  %43 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %44 to i32
  %or.i.i = or i32 %42, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true7.i.if.end5_crit_edge, label %if.then8.i

land.lhs.true7.i.if.end5_crit_edge:               ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then8.i:                                       ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @prism2_host_roaming(ptr noundef %add.ptr) #7
  br label %if.end5

if.end5:                                          ; preds = %if.then8.i, %land.lhs.true7.i.if.end5_crit_edge, %land.lhs.true4.i.if.end5_crit_edge, %if.end.i.if.end5_crit_edge, %if.end.if.end5_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @wireless_send_event(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hostap_add_sta(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @prism2_host_roaming(ptr noundef %local) unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.hfa384x_join_request, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %req) #7
  %0 = getelementptr inbounds %struct.hfa384x_join_request, ptr %req, i32 0, i32 1
  %dev1 = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 5
  %1 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1, align 4
  %last_join_time = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 105
  %3 = ptrtoint ptr %last_join_time to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %last_join_time, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.do.body8_crit_edge, label %land.lhs.true

entry.do.body8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body8

land.lhs.true:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 -1000, %4
  %sub = add i32 %add.neg, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.end, label %land.lhs.true.do.body8_crit_edge

land.lhs.true.do.body8_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body8

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %2) #10
  br label %cleanup

do.body8:                                         ; preds = %land.lhs.true.do.body8_crit_edge, %entry.do.body8_crit_edge
  %lock = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 11
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %last_scan_results = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 106
  %6 = ptrtoint ptr %last_scan_results to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %last_scan_results, align 4
  %cmp17 = icmp eq ptr %7, null
  br i1 %cmp17, label %do.body8.if.then21_crit_edge, label %lor.lhs.false

do.body8.if.then21_crit_edge:                     ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then21

lor.lhs.false:                                    ; preds = %do.body8
  %last_scan_results_count = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 107
  %8 = ptrtoint ptr %last_scan_results_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %last_scan_results_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp19 = icmp eq i32 %9, 0
  br i1 %cmp19, label %lor.lhs.false.if.then21_crit_edge, label %if.end33

lor.lhs.false.if.then21_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then21

if.then21:                                        ; preds = %lor.lhs.false.if.then21_crit_edge, %do.body8.if.then21_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call12) #7
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %2) #10
  br label %cleanup

if.end33:                                         ; preds = %lor.lhs.false
  %preferred_ap = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 113
  %10 = ptrtoint ptr %preferred_ap to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %preferred_ap, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool37.not = icmp eq i8 %11, 0
  br i1 %tobool37.not, label %lor.lhs.false38, label %if.end33.do.end67_crit_edge

if.end33.do.end67_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

lor.lhs.false38:                                  ; preds = %if.end33
  %arrayidx40 = getelementptr %struct.local_info, ptr %local, i32 0, i32 113, i32 1
  %12 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx40, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool42.not = icmp eq i8 %13, 0
  br i1 %tobool42.not, label %lor.lhs.false43, label %lor.lhs.false38.do.end67_crit_edge

lor.lhs.false38.do.end67_crit_edge:               ; preds = %lor.lhs.false38
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

lor.lhs.false43:                                  ; preds = %lor.lhs.false38
  %arrayidx45 = getelementptr %struct.local_info, ptr %local, i32 0, i32 113, i32 2
  %14 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx45, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool47.not = icmp eq i8 %15, 0
  br i1 %tobool47.not, label %lor.lhs.false48, label %lor.lhs.false43.do.end67_crit_edge

lor.lhs.false43.do.end67_crit_edge:               ; preds = %lor.lhs.false43
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

lor.lhs.false48:                                  ; preds = %lor.lhs.false43
  %arrayidx50 = getelementptr %struct.local_info, ptr %local, i32 0, i32 113, i32 3
  %16 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx50, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool52.not = icmp eq i8 %17, 0
  br i1 %tobool52.not, label %lor.lhs.false53, label %lor.lhs.false48.do.end67_crit_edge

lor.lhs.false48.do.end67_crit_edge:               ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

lor.lhs.false53:                                  ; preds = %lor.lhs.false48
  %arrayidx55 = getelementptr %struct.local_info, ptr %local, i32 0, i32 113, i32 4
  %18 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx55, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool57.not = icmp eq i8 %19, 0
  br i1 %tobool57.not, label %lor.lhs.false58, label %lor.lhs.false53.do.end67_crit_edge

lor.lhs.false53.do.end67_crit_edge:               ; preds = %lor.lhs.false53
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

lor.lhs.false58:                                  ; preds = %lor.lhs.false53
  %arrayidx60 = getelementptr %struct.local_info, ptr %local, i32 0, i32 113, i32 5
  %20 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx60, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool62.not = icmp eq i8 %21, 0
  br i1 %tobool62.not, label %lor.lhs.false58.if.end99_crit_edge, label %lor.lhs.false58.do.end67_crit_edge

lor.lhs.false58.do.end67_crit_edge:               ; preds = %lor.lhs.false58
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

lor.lhs.false58.if.end99_crit_edge:               ; preds = %lor.lhs.false58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end99

do.end67:                                         ; preds = %lor.lhs.false58.do.end67_crit_edge, %lor.lhs.false53.do.end67_crit_edge, %lor.lhs.false48.do.end67_crit_edge, %lor.lhs.false43.do.end67_crit_edge, %lor.lhs.false38.do.end67_crit_edge, %if.end33.do.end67_crit_edge
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %2, ptr noundef %preferred_ap) #10
  %22 = ptrtoint ptr %last_scan_results_count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %last_scan_results_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp77168 = icmp sgt i32 %23, 0
  br i1 %cmp77168, label %for.body.lr.ph, label %do.end67.if.end99_crit_edge

do.end67.if.end99_crit_edge:                      ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end99

for.body.lr.ph:                                   ; preds = %do.end67
  %24 = ptrtoint ptr %last_scan_results to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %last_scan_results, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0169 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %bssid = getelementptr %struct.hfa384x_hostscan_result, ptr %25, i32 %i.0169, i32 3
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %preferred_ap, ptr noundef dereferenceable(6) %bssid, i32 6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp85 = icmp eq i32 %bcmp, 0
  br i1 %cmp85, label %do.end91, label %for.inc

do.end91:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx80 = getelementptr %struct.hfa384x_hostscan_result, ptr %25, i32 %i.0169
  %call95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %2) #10
  br label %if.end99

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0169, 1
  %exitcond.not = icmp eq i32 %inc, %23
  br i1 %exitcond.not, label %for.inc.if.end99_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.if.end99_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end99

if.end99:                                         ; preds = %for.inc.if.end99_crit_edge, %do.end91, %do.end67.if.end99_crit_edge, %lor.lhs.false58.if.end99_crit_edge
  %selected.0 = phi ptr [ %arrayidx80, %do.end91 ], [ %7, %lor.lhs.false58.if.end99_crit_edge ], [ %7, %do.end67.if.end99_crit_edge ], [ %7, %for.inc.if.end99_crit_edge ]
  %bssid102 = getelementptr inbounds %struct.hfa384x_hostscan_result, ptr %selected.0, i32 0, i32 3
  %26 = call ptr @memcpy(ptr %req, ptr %bssid102, i32 6)
  %27 = ptrtoint ptr %selected.0 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %selected.0, align 1
  %29 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 %28, ptr %0, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call12) #7
  %30 = tail call i16 @llvm.bswap.i16(i16 %28)
  %conv115 = zext i16 %30 to i32
  %call116 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %2, ptr noundef nonnull %req, i32 noundef %conv115) #10
  %func = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 92
  %31 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %func, align 4
  %set_rid = getelementptr inbounds %struct.prism2_helper_functions, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %set_rid to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %set_rid, align 4
  %call119 = call i32 %34(ptr noundef %2, i16 noundef zeroext -798, ptr noundef nonnull %req, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %if.end99.if.end129_crit_edge, label %do.end124

if.end99.if.end129_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end129

do.end124:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  %call128 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %2) #10
  br label %if.end129

if.end129:                                        ; preds = %do.end124, %if.end99.if.end129_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %36 = ptrtoint ptr %last_join_time to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %last_join_time, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end129, %if.then21, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %req) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !23, !25, !27, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !46, !48, !50, !52, !54, !56, !58, !60, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !81, !82, !83, !84, !86, !87, !88, !90, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112}
!llvm.module.flags = !{!113, !114, !115, !116, !117, !118, !119, !120}
!llvm.ident = !{!121}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intersil/hostap/hostap_info.c", i32 402, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @hostap_info_process._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @hostap_info_process._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/intersil/hostap/hostap_info.c", i32 405, i32 3}
!8 = !{ptr @hostap_info_process._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @hostap_info_process._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/intersil/hostap/hostap_info.c", i32 407, i32 4}
!12 = !{ptr @hostap_info_process._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @hostap_info_process._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/intersil/hostap/hostap_info.c", i32 408, i32 3}
!16 = !{ptr @hostap_info_process._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @hostap_info_process._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @hostap_info_init.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/intersil/hostap/hostap_info.c", i32 503, i32 2}
!20 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @__ksymtab_hostap_info_init, !22, !"__ksymtab_hostap_info_init", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/intersil/hostap/hostap_info.c", i32 508, i32 1}
!23 = !{ptr @__ksymtab_hostap_info_process, !24, !"__ksymtab_hostap_info_process", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/intersil/hostap/hostap_info.c", i32 509, i32 1}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/intersil/hostap/hostap_info.c", i32 60, i32 3}
!27 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @prism2_info_commtallies32._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @prism2_info_commtallies32._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/intersil/hostap/hostap_info.c", i32 20, i32 3}
!32 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @prism2_info_commtallies16._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @prism2_info_commtallies16._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/intersil/hostap/hostap_info.c", i32 140, i32 3}
!37 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @prism2_info_linkstatus._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @prism2_info_linkstatus._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/intersil/hostap/hostap_info.c", i32 151, i32 3}
!42 = !{ptr @prism2_info_linkstatus._entry.19, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @prism2_info_linkstatus._entry_ptr.21, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/intersil/hostap/hostap_info.c", i32 110, i32 10}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/intersil/hostap/hostap_info.c", i32 112, i32 10}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/intersil/hostap/hostap_info.c", i32 114, i32 10}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/intersil/hostap/hostap_info.c", i32 116, i32 10}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/intersil/hostap/hostap_info.c", i32 118, i32 10}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/intersil/hostap/hostap_info.c", i32 120, i32 10}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/intersil/hostap/hostap_info.c", i32 122, i32 10}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/intersil/hostap/hostap_info.c", i32 263, i32 3}
!60 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @prism2_info_scanresults._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @prism2_info_scanresults._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/intersil/hostap/hostap_info.c", i32 317, i32 3}
!65 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @prism2_info_hostscanresults._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @prism2_info_hostscanresults._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/intersil/hostap/hostap_info.c", i32 325, i32 3}
!70 = !{ptr @prism2_info_hostscanresults._entry.33, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @prism2_info_hostscanresults._entry_ptr.35, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/intersil/hostap/hostap_info.c", i32 350, i32 3}
!74 = !{ptr @prism2_info_hostscanresults._entry.36, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @prism2_info_hostscanresults._entry_ptr.38, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @skb_queue_head_init.__key, !77, !"__key", i1 false, i1 false}
!77 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!78 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/intersil/hostap/hostap_info.c", i32 429, i32 3}
!81 = !{ptr @.str.41, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @handle_info_queue_linkstatus._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @handle_info_queue_linkstatus._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/intersil/hostap/hostap_info.c", i32 432, i32 3}
!86 = !{ptr @handle_info_queue_linkstatus._entry.42, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @handle_info_queue_linkstatus._entry_ptr.44, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/intersil/hostap/hostap_info.c", i32 178, i32 3}
!90 = !{ptr @.str.46, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @prism2_host_roaming._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @prism2_host_roaming._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.48, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/intersil/hostap/hostap_info.c", i32 196, i32 3}
!95 = !{ptr @prism2_host_roaming._entry.47, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @prism2_host_roaming._entry_ptr.49, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.51, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/intersil/hostap/hostap_info.c", i32 207, i32 3}
!99 = !{ptr @prism2_host_roaming._entry.50, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @prism2_host_roaming._entry_ptr.52, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.54, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/intersil/hostap/hostap_info.c", i32 213, i32 5}
!103 = !{ptr @prism2_host_roaming._entry.53, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @prism2_host_roaming._entry_ptr.55, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.57, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/wireless/intersil/hostap/hostap_info.c", i32 225, i32 2}
!107 = !{ptr @prism2_host_roaming._entry.56, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @prism2_host_roaming._entry_ptr.58, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.60, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/intersil/hostap/hostap_info.c", i32 230, i32 3}
!111 = !{ptr @prism2_host_roaming._entry.59, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @prism2_host_roaming._entry_ptr.61, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{i32 1, !"wchar_size", i32 2}
!114 = !{i32 1, !"min_enum_size", i32 4}
!115 = !{i32 8, !"branch-target-enforcement", i32 0}
!116 = !{i32 8, !"sign-return-address", i32 0}
!117 = !{i32 8, !"sign-return-address-all", i32 0}
!118 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!119 = !{i32 7, !"uwtable", i32 1}
!120 = !{i32 7, !"frame-pointer", i32 2}
!121 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!122 = !{!"branch_weights", i32 1, i32 2000}
