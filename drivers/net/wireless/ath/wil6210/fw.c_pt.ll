; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/wil6210/fw.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/wil6210/fw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.anon.129 = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.wil6210_priv = type { ptr, i32, ptr, ptr, i32, ptr, [1 x i32], [32 x i8], i32, i8, ptr, ptr, ptr, i32, ptr, [1 x i32], [1 x i32], [1 x i32], i32, i32, i32, %struct.wait_queue_head, i8, [4 x ptr], %struct.mutex, %struct.atomic_t, i32, %struct.cfg80211_chan_def, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, %struct.wil6210_mbox_ctl, %struct.completion, %struct.completion, i16, i16, i8, ptr, i16, ptr, %struct.work_struct, ptr, %struct.work_struct, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.napi_struct, %struct.napi_struct, %struct.net_device, %struct.wil_ring, i32, [24 x %struct.wil_ring], [24 x %struct.wil_ring_tx_data], [8 x %struct.wil_status_ring], i8, i32, [24 x [2 x i8]], [20 x %struct.wil_sta_info], i32, i32, %struct.wil_rx_buff_mgmt, i8, %struct.wil_txrx_ops, %struct.mutex, %struct.rw_semaphore, %struct.atomic_t, %struct.atomic_t, ptr, [19 x %struct.wil_blob_wrapper], i8, i8, i8, %struct.wil_suspend_stats, %struct.wil_debugfs_data, i8, i32, ptr, %struct.wil_platform_ops, i8, %struct.pmc_ctx, i8, ptr, ptr, %struct.wil_halp, i32, i32, %struct.notifier_block, i8, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i8, i8, i8, %struct.wil_fw_stats_global, i32, i32, i8, i32, [16 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.wil6210_mbox_ctl = type { %struct.wil6210_mbox_ring, %struct.wil6210_mbox_ring }
%struct.wil6210_mbox_ring = type { i32, i16, i16, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.105, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.124, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.105 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.124 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.wil_ring = type { i32, ptr, i16, i32, i32, i32, ptr, %struct.wil_desc_ring_rx_swtail, i8 }
%struct.wil_desc_ring_rx_swtail = type { ptr, i32 }
%struct.wil_ring_tx_data = type { i8, i32, i32, i32, i32, i8, i16, i8, i8, i8, %struct.spinlock }
%struct.wil_status_ring = type { i32, ptr, i16, i32, i32, i32, i8, i8, %struct.wil_ring_rx_data, i32 }
%struct.wil_ring_rx_data = type { ptr, i8, i16 }
%struct.wil_sta_info = type { [6 x i8], i8, i32, %struct.wil_net_stats, ptr, %struct.wmi_link_stats_basic, [16 x ptr], %struct.spinlock, [1 x i32], [1 x i32], [16 x %struct.wil_tid_crypto_rx], %struct.wil_tid_crypto_rx, i8 }
%struct.wil_net_stats = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, [16 x i64], i32 }
%struct.wmi_link_stats_basic = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [7 x i8], i16, i32, i32, i32, i32, i32 }
%struct.wil_tid_crypto_rx = type { [4 x %struct.wil_tid_crypto_rx_single] }
%struct.wil_tid_crypto_rx_single = type { [6 x i8], i8 }
%struct.wil_rx_buff_mgmt = type { ptr, i32, %struct.list_head, %struct.list_head, i32 }
%struct.wil_txrx_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wil_blob_wrapper = type { ptr, %struct.debugfs_blob_wrapper }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.wil_suspend_stats = type { %struct.wil_suspend_count_stats, %struct.wil_suspend_count_stats, i32, i32 }
%struct.wil_suspend_count_stats = type { i32, i32, i32, i32 }
%struct.wil_debugfs_data = type { ptr, i32 }
%struct.wil_platform_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pmc_ctx = type { %struct.mutex, ptr, i32, ptr, i32, i32, i32 }
%struct.wil_halp = type { %struct.mutex, i32, %struct.completion, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.wil_fw_stats_global = type { i8, i64, %struct.wmi_link_stats_global }
%struct.wmi_link_stats_global = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i8] }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.127, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.anon.127 = type { i64, i64, i8 }
%struct.firmware = type { i32, ptr, ptr }
%struct.wil_fw_record_head = type { i16, i16, i32 }
%struct.wil_fw_record_file_header = type { i32, i32, i32, i32, i32, [32 x i8] }
%struct.wil_brd_info = type { i32, i32 }
%struct.wil_fw_record_capabilities = type { %struct.wil_fw_record_comment_hdr, [0 x i8] }
%struct.wil_fw_record_comment_hdr = type { i32 }
%struct.wil_fw_record_concurrency = type { i32, i8, i8, i16, [0 x %struct.wil_fw_concurrency_combo] }
%struct.wil_fw_concurrency_combo = type { i8, i8, i8, i8, [0 x %struct.wil_fw_concurrency_limit] }
%struct.wil_fw_concurrency_limit = type { i16, i16 }
%struct.wil_fw_record_fill = type { i32, i32, i32 }
%struct.wil_fw_data_dwrite = type { i32, i32, i32 }
%struct.wil_fw_record_gateway_data = type { i32, i32, i32, i32, i32, [0 x %struct.wil_fw_data_gw] }
%struct.wil_fw_data_gw = type { i32, i32 }
%struct.wil_fw_record_gateway_data4 = type { i32, [4 x i32], i32, i32, i32, [0 x %struct.wil_fw_data_gw4] }
%struct.wil_fw_data_gw4 = type { i32, [4 x i32] }
%struct.wil_fw_record_brd_file = type { %struct.wil_fw_record_comment_hdr, i32, [0 x %struct.brd_info] }
%struct.brd_info = type { i32, i32 }
%struct.wil_fw_record_data = type { i32, [0 x i32] }

@__UNIQUE_ID_firmware343 = internal constant [28 x i8] c"wil6210.firmware=wil6210.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware344 = internal constant [41 x i8] c"wil6210.firmware=wil6210_sparrow_plus.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware345 = internal constant [29 x i8] c"wil6210.firmware=wil6210.brd\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware346 = internal constant [28 x i8] c"wil6210.firmware=wil6436.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware347 = internal constant [29 x i8] c"wil6210.firmware=wil6436.brd\00", section ".modinfo", align 1
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: ERR[ FW ]Failed to load firmware %s rc %d\0A\00", [49 x i8] zeroinitializer }, align 32
@__func__.wil_request_firmware = private unnamed_addr constant [21 x i8] c"wil_request_firmware\00", align 1
@wil_request_firmware.__UNIQUE_ID_ddebug373 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.wil_request_firmware, ptr @.str.2, ptr @.str.3, i8 0, i8 -92, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"wil6210\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/net/wireless/ath/wil6210/fw_inc.c\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DBG[ FW ]Loading <%s>, %zu bytes\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: ERR[ FW ]Loading <%s> failed, rc %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: ERR[ FW ]Failed to load brd %s\0A\00", [60 x i8] zeroinitializer }, align 32
@__func__.wil_request_board = private unnamed_addr constant [18 x i8] c"wil_request_board\00", align 1
@wil_request_board.__UNIQUE_ID_ddebug375 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.wil_request_board, ptr @.str.2, ptr @.str.3, i8 0, i8 -59, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@wil_fw_verify_file_exists.__UNIQUE_ID_ddebug376 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 -50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wil_fw_verify_file_exists\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DBG[ FW ]<%s> not available: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: ERR[ FW ]image size not aligned: %zu\0A\00", [54 x i8] zeroinitializer }, align 32
@__func__.wil_fw_verify = private unnamed_addr constant [14 x i8] c"wil_fw_verify\00", align 1
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: ERR[ FW ]file too short: %zu bytes\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: ERR[ FW ]no file header\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: ERR[ FW ]data length not aligned: %lu\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: ERR[ FW ]file truncated at %zu/%lu\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: ERR[ FW ]data length too short: %lu\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: ERR[ FW ]bad header signature: 0x%08x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: ERR[ FW ]unsupported header version: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"%s: ERR[ FW ]checksum mismatch: calculated for %lu bytes 0x%08x != 0x%08x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: ERR[ FW ]unaligned record size: %zu\0A\00", [55 x i8] zeroinitializer }, align 32
@__func__.wil_fw_process = private unnamed_addr constant [15 x i8] c"wil_fw_process\00", align 1
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: ERR[ FW ]unprocessed bytes: %zu\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s: ERR[ FW ]Stop at offset %ld record type %d [%zd bytes]\0A\00", [36 x i8] zeroinitializer }, align 32
@wil_fw_handlers = internal constant { [7 x %struct.anon.129], [44 x i8] } { [7 x %struct.anon.129] [%struct.anon.129 { i32 1, ptr @fw_handle_comment, ptr @fw_handle_comment }, %struct.anon.129 { i32 2, ptr @fw_handle_data, ptr @fw_ignore_section }, %struct.anon.129 { i32 3, ptr @fw_handle_fill, ptr @fw_ignore_section }, %struct.anon.129 { i32 6, ptr @fw_handle_file_header, ptr @fw_handle_file_header }, %struct.anon.129 { i32 7, ptr @fw_handle_direct_write, ptr @fw_ignore_section }, %struct.anon.129 { i32 8, ptr @fw_handle_gateway_data, ptr @fw_ignore_section }, %struct.anon.129 { i32 9, ptr @fw_handle_gateway_data4, ptr @fw_ignore_section }], [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: ERR[ FW ]unknown record type: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@__func__.wil_fw_handle_record = private unnamed_addr constant [21 x i8] c"wil_fw_handle_record\00", align 1
@fw_handle_comment.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 62, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fw_handle_comment\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"DBG[ FW ]magic is WIL_FW_CAPABILITIES_MAGIC\0A\00", [51 x i8] zeroinitializer }, align 32
@fw_handle_comment.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.21, ptr @.str.2, ptr @.str.23, i8 0, i8 63, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"DBG[ FW ]magic is WIL_BRD_FILE_MAGIC\0A\00", [58 x i8] zeroinitializer }, align 32
@fw_handle_comment.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.21, ptr @.str.2, ptr @.str.24, i8 0, i8 64, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"DBG[ FW ]magic is WIL_FW_CONCURRENCY_MAGIC\0A\00", [52 x i8] zeroinitializer }, align 32
@fw_handle_comment.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.21, ptr @.str.2, ptr @.str.25, i8 0, i8 66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DBG[ FW ]\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@__func__.fw_handle_capabilities = private unnamed_addr constant [23 x i8] c"fw_handle_capabilities\00", align 1
@fw_handle_capabilities.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.fw_handle_capabilities, ptr @.str.2, ptr @.str.28, i8 0, i8 34, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DBG[ FW ]CAPA\00", [18 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: board record too short, size %zu\0A\00", [58 x i8] zeroinitializer }, align 32
@__func__.fw_handle_brd_file = private unnamed_addr constant [19 x i8] c"fw_handle_brd_file\00", align 1
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: brd info entries are missing\0A\00", [62 x i8] zeroinitializer }, align 32
@fw_handle_brd_file.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.fw_handle_brd_file, ptr @.str.2, ptr @.str.31, i8 0, i8 45, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"DBG[ FW ]brd info %d: file_addr 0x%x, file_max_size %d\0A\00", [40 x i8] zeroinitializer }, align 32
@fw_handle_brd_file.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.fw_handle_brd_file, ptr @.str.2, ptr @.str.32, i8 0, i8 47, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"DBG[ FW ]no valid brd info entries, using brd file addr\0A\00", [39 x i8] zeroinitializer }, align 32
@fw_handle_brd_file.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.fw_handle_brd_file, ptr @.str.2, ptr @.str.33, i8 0, i8 48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"DBG[ FW ]num of brd info entries %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: ERR[ FW ]concurrency record too short: %zu\0A\00", [48 x i8] zeroinitializer }, align 32
@__func__.fw_handle_concurrency = private unnamed_addr constant [22 x i8] c"fw_handle_concurrency\00", align 1
@.str.35 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: ERR[ FW ]concurrency record truncated\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: ERR[ FW ]data record too short: %zu\0A\00", [55 x i8] zeroinitializer }, align 32
@__func__.__fw_handle_data = private unnamed_addr constant [17 x i8] c"__fw_handle_data\00", align 1
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"address\00", [24 x i8] zeroinitializer }, align 32
@__fw_handle_data.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.__fw_handle_data, ptr @.str.2, ptr @.str.38, i8 0, i8 71, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"DBG[ FW ]write [0x%08x] <== %zu bytes\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: ERR[ FW ]bad %s: 0x%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@__func__.wil_fw_addr_check = private unnamed_addr constant [18 x i8] c"wil_fw_addr_check\00", align 1
@.str.40 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: ERR[ FW ]bad size for fill record: %zu\0A\00", [52 x i8] zeroinitializer }, align 32
@__func__.fw_handle_fill = private unnamed_addr constant [15 x i8] c"fw_handle_fill\00", align 1
@.str.41 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: ERR[ FW ]fill size too short: %zu\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: ERR[ FW ]fill size not aligned: %zu\0A\00", [55 x i8] zeroinitializer }, align 32
@fw_handle_fill.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.fw_handle_fill, ptr @.str.2, ptr @.str.43, i8 0, i8 81, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"DBG[ FW ]fill [0x%08x] <== 0x%08x, %zu bytes\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: ERR[ FW ]file header length incorrect: %zu\0A\00", [48 x i8] zeroinitializer }, align 32
@__func__.fw_handle_file_header = private unnamed_addr constant [22 x i8] c"fw_handle_file_header\00", align 1
@fw_handle_file_header.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.fw_handle_file_header, ptr @.str.2, ptr @.str.45, i8 0, i8 86, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"DBG[ FW ]new file, ver. %d, %i bytes\0A\00", [58 x i8] zeroinitializer }, align 32
@fw_handle_file_header.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.fw_handle_file_header, ptr @.str.2, ptr @.str.25, i8 0, i8 86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"FW version: \00", [19 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: ERR[ FW ]record size not aligned on %zu: %zu\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.fw_handle_direct_write = private unnamed_addr constant [23 x i8] c"fw_handle_direct_write\00", align 1
@fw_handle_direct_write.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.fw_handle_direct_write, ptr @.str.2, ptr @.str.48, i8 0, i8 96, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"DBG[ FW ]write [0x%08x] <== 0x%08x (old 0x%08x val 0x%08x mask 0x%08x)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: ERR[ FW ]gateway record too short: %zu\0A\00", [52 x i8] zeroinitializer }, align 32
@__func__.fw_handle_gateway_data = private unnamed_addr constant [23 x i8] c"fw_handle_gateway_data\00", align 1
@.str.50 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%s: ERR[ FW ]gateway record data size not aligned on %zu: %zu\0A\00", [33 x i8] zeroinitializer }, align 32
@fw_handle_gateway_data.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.fw_handle_gateway_data, ptr @.str.2, ptr @.str.51, i8 0, i8 111, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"DBG[ FW ]gw write record [%3d] blocks, cmd 0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gateway_addr_addr\00", [46 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gateway_value_addr\00", [45 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gateway_cmd_addr\00", [47 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gateway_ctrl_address\00", [43 x i8] zeroinitializer }, align 32
@fw_handle_gateway_data.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.fw_handle_gateway_data, ptr @.str.2, ptr @.str.56, i8 0, i8 115, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"DBG[ FW ]gw addresses: addr 0x%08x val 0x%08x cmd 0x%08x ctl 0x%08x\0A\00", [59 x i8] zeroinitializer }, align 32
@fw_handle_gateway_data.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.fw_handle_gateway_data, ptr @.str.2, ptr @.str.57, i8 0, i8 117, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"DBG[ FW ]  gw write[%3d] [0x%08x] <== 0x%08x\0A\00", [50 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: ERR[ FW ]gw timeout\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.gw_write = private unnamed_addr constant [9 x i8] c"gw_write\00", align 1
@.str.59 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: ERR[ FW ]gateway4 record too short: %zu\0A\00", [51 x i8] zeroinitializer }, align 32
@__func__.fw_handle_gateway_data4 = private unnamed_addr constant [24 x i8] c"fw_handle_gateway_data4\00", align 1
@.str.60 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%s: ERR[ FW ]gateway4 record data size not aligned on %zu: %zu\0A\00", [32 x i8] zeroinitializer }, align 32
@fw_handle_gateway_data4.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.fw_handle_gateway_data4, ptr @.str.2, ptr @.str.61, i8 0, i8 127, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"DBG[ FW ]gw4 write record [%3d] blocks, cmd 0x%08x\0A\00", [44 x i8] zeroinitializer }, align 32
@fw_handle_gateway_data4.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.fw_handle_gateway_data4, ptr @.str.2, ptr @.str.62, i8 0, i8 -125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"DBG[ FW ]gw4 addresses: addr 0x%08x cmd 0x%08x ctl 0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@fw_handle_gateway_data4.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.fw_handle_gateway_data4, ptr @.str.2, ptr @.str.63, i8 0, i8 -124, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DBG[ FW ]val addresses: \00", [39 x i8] zeroinitializer }, align 32
@fw_handle_gateway_data4.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.fw_handle_gateway_data4, ptr @.str.2, ptr @.str.64, i8 0, i8 -121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"DBG[ FW ]  gw4 write[%3d] [0x%08x] <==\0A\00", [56 x i8] zeroinitializer }, align 32
@fw_handle_gateway_data4.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.fw_handle_gateway_data4, ptr @.str.2, ptr @.str.65, i8 0, i8 -121, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DBG[ FW ]    val \00", [46 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%s: ERR[ FW ]Too many brd records: %d, num of expected entries %d\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.wil_brd_process = private unnamed_addr constant [16 x i8] c"wil_brd_process\00", align 1
@.str.67 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: ERR[ FW ]invalid record type for board file: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@wil_brd_process.__UNIQUE_ID_ddebug374 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.wil_brd_process, ptr @.str.2, ptr @.str.68, i8 0, i8 -69, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"DBG[ FW ]using info from fw file for record %d: addr[0x%08x], max size %d\0A\00", [53 x i8] zeroinitializer }, align 32
@switch.table.wil_request_firmware = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 0, i32 1, i32 2, i32 0, i32 0, i32 3, i32 4, i32 5, i32 6], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 2882395322, i64 2882395323, i64 4275883503]
@___asan_gen_ = private constant [41 x i8] c"../drivers/net/wireless/ath/wil6210/fw.c\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 656, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 659, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 680, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 788, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 827, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 48, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 53, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 59, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 67, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 71, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 76, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 82, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 89, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 105, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 614, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 624, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 626, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant [16 x i8] c"wil_fw_handlers\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 560, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 587, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 251, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 255, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 259, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 263, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 138, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 151, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 159, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 177, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 187, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 191, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 209, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 232, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 278, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 282, i32 45 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 284, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 25, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 308, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 313, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 318, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 326, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 340, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 344, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 349, i32 26 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 367, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 384, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 429, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 434, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 443, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 447, i32 11 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 449, i32 11 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 451, i32 11 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 453, i32 11 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 456, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 468, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 408, i32 4 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 493, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 498, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 507, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 524, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 528, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 540, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 541, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 716, i32 4 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 736, i32 4 }
@___asan_gen_.273 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.274 = private unnamed_addr constant [45 x i8] c"../drivers/net/wireless/ath/wil6210/fw_inc.c\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 746, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant [34 x i8] c"switch.table.wil_request_firmware\00", align 1
@llvm.compiler.used = appending global [75 x ptr] [ptr @__UNIQUE_ID_firmware343, ptr @__UNIQUE_ID_firmware344, ptr @__UNIQUE_ID_firmware345, ptr @__UNIQUE_ID_firmware346, ptr @__UNIQUE_ID_firmware347, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @wil_fw_handlers, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @switch.table.wil_request_firmware], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wil_fw_handlers to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wil_request_firmware to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wil_request_firmware(ptr noundef %wil, ptr noundef %name, i1 noundef zeroext %load) local_unnamed_addr #0 align 64 {
entry:
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #8
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !198
  %wiphy = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 2
  %1 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %wiphy, align 8
  %parent.i = getelementptr inbounds %struct.wiphy, ptr %2, i32 0, i32 56, i32 1
  %3 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent.i, align 8
  %call1 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef %name, ptr noundef %4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %do.body3, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.wil_request_firmware, ptr noundef %name, i32 noundef %call1) #8
  br label %cleanup

do.body3:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_request_firmware.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_request_firmware, %if.then9)) #8
          to label %do.end12 [label %if.then9], !srcloc !199

if.then9:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #10
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %5 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %main_ndev, align 4
  %7 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fw, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_request_firmware.__UNIQUE_ID_ddebug373, ptr noundef %6, ptr noundef nonnull @.str.3, ptr noundef %name, i32 noundef %10) #8
  br label %do.end12

do.end12:                                         ; preds = %if.then9, %do.body3
  %11 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fw, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.3, ptr noundef %name, i32 noundef %14) #8
  %num_of_brd_entries = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 13
  %15 = ptrtoint ptr %num_of_brd_entries to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %num_of_brd_entries, align 16
  %brd_info = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 14
  %16 = ptrtoint ptr %brd_info to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %brd_info, align 4
  call void @kfree(ptr noundef %17) #8
  %18 = ptrtoint ptr %brd_info to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %brd_info, align 4
  %19 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fw, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool18.not98 = icmp eq i32 %22, 0
  br i1 %tobool18.not98, label %out.thread124, label %for.body.preheader

out.thread124:                                    ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %24) #8
  br label %cleanup

for.body.preheader:                               ; preds = %do.end12
  %data = getelementptr inbounds %struct.firmware, ptr %20, i32 0, i32 1
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %d.0100 = phi ptr [ %add.ptr, %for.inc.for.body_crit_edge ], [ %26, %for.body.preheader ]
  %sz.099 = phi i32 [ %sub, %for.inc.for.body_crit_edge ], [ %22, %for.body.preheader ]
  %call19 = call fastcc i32 @wil_fw_verify(ptr noundef %wil, ptr noundef %d.0100, i32 noundef %sz.099)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp = icmp slt i32 %call19, 0
  br i1 %cmp, label %for.body.out.thread_crit_edge, label %if.end21

for.body.out.thread_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread

if.end21:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call19)
  %cmp66.i = icmp ult i32 %call19, 8
  br i1 %cmp66.i, label %if.end21.for.end.i_crit_edge, label %if.end21.if.end.i_crit_edge

if.end21.if.end.i_crit_edge:                      ; preds = %if.end21
  br label %if.end.i

if.end21.for.end.i_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.end.i:                                         ; preds = %for.inc.i.if.end.i_crit_edge, %if.end21.if.end.i_crit_edge
  %hdr.068.i = phi ptr [ %add.ptr.i, %for.inc.i.if.end.i_crit_edge ], [ %d.0100, %if.end21.if.end.i_crit_edge ]
  %size.addr.067.i = phi i32 [ %sub.i, %for.inc.i.if.end.i_crit_edge ], [ %call19, %if.end21.if.end.i_crit_edge ]
  %size1.i = getelementptr inbounds %struct.wil_fw_record_head, ptr %hdr.068.i, i32 0, i32 2
  %27 = ptrtoint ptr %size1.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %size1.i, align 1
  %29 = call i32 @llvm.bswap.i32(i32 %28) #8
  %add.i = add i32 %29, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %size.addr.067.i, i32 %add.i)
  %cmp2.i = icmp ult i32 %size.addr.067.i, %add.i
  br i1 %cmp2.i, label %if.then15.i, label %if.end4.i

if.end4.i:                                        ; preds = %if.end.i
  %rem.i = and i32 %29, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i, label %if.end6.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.wil_fw_process, i32 noundef %29) #8
  br label %out.thread

if.end6.i:                                        ; preds = %if.end4.i
  %30 = ptrtoint ptr %hdr.068.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %hdr.068.i, align 1
  %32 = call i16 @llvm.bswap.i16(i16 %31) #8
  %arrayidx.i = getelementptr %struct.wil_fw_record_head, ptr %hdr.068.i, i32 1
  %switch.tableidx = add i16 %32, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %switch.tableidx)
  %33 = icmp ult i16 %switch.tableidx, 9
  br i1 %33, label %switch.hole_check, label %if.end6.i.wil_fw_handle_record.exit.thread.i_crit_edge

if.end6.i.wil_fw_handle_record.exit.thread.i_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wil_fw_handle_record.exit.thread.i

switch.hole_check:                                ; preds = %if.end6.i
  %switch.shifted = lshr i16 487, %switch.tableidx
  %34 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %switch.lobit.not = icmp eq i16 %34, 0
  br i1 %switch.lobit.not, label %switch.hole_check.wil_fw_handle_record.exit.thread.i_crit_edge, label %switch.lookup

switch.hole_check.wil_fw_handle_record.exit.thread.i_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %wil_fw_handle_record.exit.thread.i

switch.lookup:                                    ; preds = %switch.hole_check
  %35 = sext i16 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.wil_request_firmware, i32 0, i32 %35
  %36 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %36)
  %switch.load = load i32, ptr %switch.gep, align 4
  %load_handler.i.i = getelementptr [7 x %struct.anon.129], ptr @wil_fw_handlers, i32 0, i32 %switch.load, i32 1
  %parse_handler.i.i = getelementptr [7 x %struct.anon.129], ptr @wil_fw_handlers, i32 0, i32 %switch.load, i32 2
  %load_handler.i.sink.i = select i1 %load, ptr %load_handler.i.i, ptr %parse_handler.i.i
  %37 = ptrtoint ptr %load_handler.i.sink.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %load_handler.i.sink.i, align 4
  %call.i.i = call i32 %38(ptr noundef %wil, ptr noundef %arrayidx.i, i32 noundef %29) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool8.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool8.not.i, label %for.inc.i, label %wil_fw_process.exit

wil_fw_handle_record.exit.thread.i:               ; preds = %switch.hole_check.wil_fw_handle_record.exit.thread.i_crit_edge, %if.end6.i.wil_fw_handle_record.exit.thread.i_crit_edge
  %conv.i = zext i16 %32 to i32
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.wil_fw_handle_record, i32 noundef %conv.i) #8
  br label %out.thread

for.inc.i:                                        ; preds = %switch.lookup
  %add.ptr.i = getelementptr i8, ptr %hdr.068.i, i32 %add.i
  %sub.i = sub i32 %size.addr.067.i, %add.i
  %cmp.i = icmp ult i32 %sub.i, 8
  br i1 %cmp.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.if.end.i_crit_edge

for.inc.i.if.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end21.for.end.i_crit_edge
  %size.addr.0.lcssa.i = phi i32 [ %call19, %if.end21.for.end.i_crit_edge ], [ %sub.i, %for.inc.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.addr.0.lcssa.i)
  %tobool11.not.i = icmp eq i32 %size.addr.0.lcssa.i, 0
  br i1 %tobool11.not.i, label %for.end.i.for.inc_crit_edge, label %if.then12.i

for.end.i.for.inc_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then12.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.wil_fw_process, i32 noundef %size.addr.0.lcssa.i) #8
  br label %out.thread

if.then15.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.wil_fw_process, i32 noundef %size.addr.067.i) #8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %hdr.068.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %d.0100 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %39 = ptrtoint ptr %hdr.068.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %hdr.068.i, align 1
  %41 = call i16 @llvm.bswap.i16(i16 %40) #8
  %conv17.i = zext i16 %41 to i32
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.wil_fw_process, i32 noundef %sub.ptr.sub.i, i32 noundef %conv17.i, i32 noundef %29) #8
  br label %out.thread

wil_fw_process.exit:                              ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp24 = icmp slt i32 %call.i.i, 0
  br i1 %cmp24, label %wil_fw_process.exit.out.thread_crit_edge, label %wil_fw_process.exit.for.inc_crit_edge

wil_fw_process.exit.for.inc_crit_edge:            ; preds = %wil_fw_process.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

wil_fw_process.exit.out.thread_crit_edge:         ; preds = %wil_fw_process.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread

for.inc:                                          ; preds = %wil_fw_process.exit.for.inc_crit_edge, %for.end.i.for.inc_crit_edge
  %retval.0.i6168 = phi i32 [ %call.i.i, %wil_fw_process.exit.for.inc_crit_edge ], [ 0, %for.end.i.for.inc_crit_edge ]
  %sub = sub i32 %sz.099, %call19
  %add.ptr = getelementptr i8, ptr %d.0100, i32 %call19
  %tobool18.not = icmp eq i32 %sub, 0
  br i1 %tobool18.not, label %out, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

out.thread:                                       ; preds = %wil_fw_process.exit.out.thread_crit_edge, %if.then15.i, %if.then12.i, %wil_fw_handle_record.exit.thread.i, %if.then5.i, %for.body.out.thread_crit_edge
  %rc.1.ph = phi i32 [ -22, %if.then5.i ], [ -22, %if.then15.i ], [ -22, %if.then12.i ], [ -22, %wil_fw_handle_record.exit.thread.i ], [ %call.i.i, %wil_fw_process.exit.out.thread_crit_edge ], [ %call19, %for.body.out.thread_crit_edge ]
  %42 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %43) #8
  br label %if.then28

out:                                              ; preds = %for.inc
  %44 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %45) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i6168)
  %tobool27.not = icmp eq i32 %retval.0.i6168, 0
  br i1 %tobool27.not, label %out.cleanup_crit_edge, label %out.if.then28_crit_edge

out.if.then28_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then28:                                        ; preds = %out.if.then28_crit_edge, %out.thread
  %rc.171 = phi i32 [ %rc.1.ph, %out.thread ], [ %retval.0.i6168, %out.if.then28_crit_edge ]
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.wil_request_firmware, ptr noundef %name, i32 noundef %rc.171) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %out.cleanup_crit_edge, %out.thread124, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %rc.171, %if.then28 ], [ 0, %out.cleanup_crit_edge ], [ 0, %out.thread124 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wil_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_dbg_trace(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wil_fw_verify(ptr noundef %wil, ptr noundef %data, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  %fh = alloca %struct.wil_fw_record_file_header, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %fh) #8
  %rem = and i32 %size, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.wil_fw_verify, i32 noundef %size) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %size)
  %cmp = icmp ult i32 %size, 60
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.wil_fw_verify, i32 noundef %size) #8
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %0 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %1)
  %cmp3.not = icmp eq i16 %1, 1536
  br i1 %cmp3.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.wil_fw_verify) #8
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  %arrayidx = getelementptr %struct.wil_fw_record_head, ptr %data, i32 1
  %data_len = getelementptr %struct.wil_fw_record_head, ptr %data, i32 3
  %2 = ptrtoint ptr %data_len to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %data_len, align 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %rem7 = and i32 %4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem7)
  %tobool8.not = icmp eq i32 %rem7, 0
  br i1 %tobool8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.wil_fw_verify, i32 noundef %4) #8
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %size)
  %cmp11 = icmp ugt i32 %4, %size
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.wil_fw_verify, i32 noundef %size, i32 noundef %4) #8
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %4)
  %cmp15 = icmp ult i32 %4, 60
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.wil_fw_verify, i32 noundef %4) #8
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 808530486, i32 %6)
  %cmp19.not = icmp eq i32 %6, 808530486
  br i1 %cmp19.not, label %if.end23, label %if.then21

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.wil_fw_verify, i32 noundef %7) #8
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  %version = getelementptr %struct.wil_fw_record_head, ptr %data, i32 2, i32 2
  %8 = ptrtoint ptr %version to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %version, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp24 = icmp ugt i32 %10, 1
  br i1 %cmp24, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.wil_fw_verify, i32 noundef %10) #8
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  %11 = call ptr @memcpy(ptr %fh, ptr %arrayidx, i32 52)
  %crc29 = getelementptr inbounds %struct.wil_fw_record_file_header, ptr %fh, i32 0, i32 2
  %12 = ptrtoint ptr %crc29 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 0, ptr %crc29, align 1
  %call = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %data, i32 noundef 8) #11
  %call30 = call i32 @crc32_le(i32 noundef %call, ptr noundef nonnull %fh, i32 noundef 52) #11
  %arrayidx31 = getelementptr %struct.wil_fw_record_head, ptr %data, i32 7, i32 2
  %sub32 = add i32 %4, -60
  %call33 = call i32 @crc32_le(i32 noundef %call30, ptr noundef %arrayidx31, i32 noundef %sub32) #11
  %neg = xor i32 %call33, -1
  %crc34 = getelementptr %struct.wil_fw_record_head, ptr %data, i32 2
  %13 = ptrtoint ptr %crc34 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %crc34, align 1
  %15 = call i32 @llvm.bswap.i32(i32 %14)
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %neg)
  %cmp35.not = icmp eq i32 %15, %neg
  br i1 %cmp35.not, label %if.end28.cleanup_crit_edge, label %if.then37

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then37:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.wil_fw_verify, i32 noundef %4, i32 noundef %neg, i32 noundef %15) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %if.end28.cleanup_crit_edge, %if.then26, %if.then21, %if.then17, %if.then13, %if.then9, %if.then5, %if.then1, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then1 ], [ -22, %if.then5 ], [ -22, %if.then9 ], [ -22, %if.then13 ], [ -22, %if.then17 ], [ -22, %if.then21 ], [ -22, %if.then26 ], [ -22, %if.then37 ], [ %4, %if.end28.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %fh) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wil_request_board(ptr noundef %wil, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  %brd = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %brd) #8
  %0 = ptrtoint ptr %brd to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %brd, align 4, !annotation !198
  %wiphy = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 2
  %1 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %wiphy, align 8
  %parent.i = getelementptr inbounds %struct.wiphy, ptr %2, i32 0, i32 56, i32 1
  %3 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent.i, align 8
  %call1 = call i32 @request_firmware(ptr noundef nonnull %brd, ptr noundef %name, ptr noundef %4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %do.body3, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.wil_request_board, ptr noundef %name) #8
  br label %cleanup

do.body3:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_request_board.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_request_board, %if.then8)) #8
          to label %do.end11 [label %if.then8], !srcloc !199

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #10
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %5 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %main_ndev, align 4
  %7 = ptrtoint ptr %brd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %brd, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_request_board.__UNIQUE_ID_ddebug375, ptr noundef %6, ptr noundef nonnull @.str.3, ptr noundef %name, i32 noundef %10) #8
  br label %do.end11

do.end11:                                         ; preds = %if.then8, %do.body3
  %11 = ptrtoint ptr %brd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %brd, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.3, ptr noundef %name, i32 noundef %14) #8
  %15 = ptrtoint ptr %brd to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %brd, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %16, align 4
  %call16 = call fastcc i32 @wil_fw_verify(ptr noundef %wil, ptr noundef %18, i32 noundef %20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp = icmp slt i32 %call16, 0
  %21 = ptrtoint ptr %brd to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %brd, align 4
  br i1 %cmp, label %out.thread, label %out

out.thread:                                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #10
  call void @release_firmware(ptr noundef %22) #8
  br label %if.then22

out:                                              ; preds = %do.end11
  %data19 = getelementptr inbounds %struct.firmware, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %data19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data19, align 4
  %call20 = call fastcc i32 @wil_brd_process(ptr noundef %wil, ptr noundef %24, i32 noundef %call16)
  %25 = ptrtoint ptr %brd to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %brd, align 4
  call void @release_firmware(ptr noundef %26) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %out.cleanup_crit_edge, label %out.if.then22_crit_edge

out.if.then22_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then22:                                        ; preds = %out.if.then22_crit_edge, %out.thread
  %rc.045 = phi i32 [ %call16, %out.thread ], [ %call20, %out.if.then22_crit_edge ]
  call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.wil_request_board, ptr noundef %name, i32 noundef %rc.045) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %out.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %rc.045, %if.then22 ], [ 0, %out.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %brd) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wil_brd_process(ptr noundef %wil, ptr noundef %data, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %size)
  %cmp = icmp ult i32 %size, 8
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %size1 = getelementptr inbounds %struct.wil_fw_record_head, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %size1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %size1, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %add = add i32 %2, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %size)
  %cmp2 = icmp ugt i32 %add, %size
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %sub = sub i32 %size, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub)
  %cmp5177 = icmp ult i32 %sub, 8
  br i1 %cmp5177, label %if.end4.for.end_crit_edge, label %if.end7.lr.ph

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end7.lr.ph:                                    ; preds = %if.end4
  %add.ptr = getelementptr i8, ptr %data, i32 %add
  %num_of_brd_entries = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 13
  %brd_info = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 14
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %3 = ptrtoint ptr %num_of_brd_entries to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_of_brd_entries, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp8.not282.not = icmp eq i32 %4, 0
  br i1 %cmp8.not282.not, label %if.end7.lr.ph.if.then73_crit_edge, label %if.end7.lr.ph.if.end11_crit_edge

if.end7.lr.ph.if.end11_crit_edge:                 ; preds = %if.end7.lr.ph
  br label %if.end11

if.end7.lr.ph.if.then73_crit_edge:                ; preds = %if.end7.lr.ph
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then73

if.end7:                                          ; preds = %for.inc
  %add.ptr67 = getelementptr i8, ptr %hdr.0178285, i32 %add13
  %inc = add nuw i32 %i.0180284, 1
  %5 = ptrtoint ptr %num_of_brd_entries to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_of_brd_entries, align 16
  %cmp8.not = icmp ult i32 %inc, %6
  br i1 %cmp8.not, label %if.end7.if.end11_crit_edge, label %if.end7.if.then73_crit_edge

if.end7.if.then73_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then73

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.end11:                                         ; preds = %if.end7.if.end11_crit_edge, %if.end7.lr.ph.if.end11_crit_edge
  %hdr.0178285 = phi ptr [ %add.ptr67, %if.end7.if.end11_crit_edge ], [ %add.ptr, %if.end7.lr.ph.if.end11_crit_edge ]
  %i.0180284 = phi i32 [ %inc, %if.end7.if.end11_crit_edge ], [ 0, %if.end7.lr.ph.if.end11_crit_edge ]
  %size.addr.0182283 = phi i32 [ %sub68, %if.end7.if.end11_crit_edge ], [ %sub, %if.end7.lr.ph.if.end11_crit_edge ]
  %size12 = getelementptr inbounds %struct.wil_fw_record_head, ptr %hdr.0178285, i32 0, i32 2
  %7 = ptrtoint ptr %size12 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %size12, align 1
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %add13 = add i32 %9, 8
  %10 = ptrtoint ptr %brd_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %brd_info, align 4
  %file_max_size = getelementptr %struct.wil_brd_info, ptr %11, i32 %i.0180284, i32 1
  %12 = ptrtoint ptr %file_max_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %file_max_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp ne i32 %13, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %13)
  %cmp17 = icmp ugt i32 %9, %13
  %or.cond = select i1 %tobool.not, i1 %cmp17, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %size.addr.0182283, i32 %add13)
  %cmp21 = icmp ult i32 %size.addr.0182283, %add13
  %or.cond143 = select i1 %or.cond, i1 true, i1 %cmp21
  br i1 %or.cond143, label %if.end11.cleanup_crit_edge, label %if.end23

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23:                                         ; preds = %if.end11
  %rem = and i32 %9, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool24.not = icmp eq i32 %rem, 0
  br i1 %tobool24.not, label %if.end26, label %if.then25

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.wil_brd_process, i32 noundef %9) #8
  br label %cleanup

if.end26:                                         ; preds = %if.end23
  %14 = ptrtoint ptr %hdr.0178285 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %hdr.0178285, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %15)
  %cmp28.not = icmp eq i16 %15, 512
  br i1 %cmp28.not, label %if.end32, label %if.then30

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %conv = zext i16 %16 to i32
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.67, ptr noundef nonnull @__func__.wil_brd_process, i32 noundef %conv) #8
  br label %cleanup

if.end32:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp33 = icmp ult i32 %9, 4
  br i1 %cmp33, label %if.then35, label %do.body38

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.wil_brd_process, i32 noundef %9) #8
  br label %cleanup

do.body38:                                        ; preds = %if.end32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_brd_process.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_brd_process, %if.then42)) #8
          to label %do.end50 [label %if.then42], !srcloc !199

if.then42:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %main_ndev, align 4
  %19 = ptrtoint ptr %brd_info to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %brd_info, align 4
  %arrayidx44 = getelementptr %struct.wil_brd_info, ptr %20, i32 %i.0180284
  %21 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx44, align 4
  %file_max_size47 = getelementptr %struct.wil_brd_info, ptr %20, i32 %i.0180284, i32 1
  %23 = ptrtoint ptr %file_max_size47 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %file_max_size47, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_brd_process.__UNIQUE_ID_ddebug374, ptr noundef %18, ptr noundef nonnull @.str.68, i32 noundef %i.0180284, i32 noundef %22, i32 noundef %24) #8
  br label %do.end50

do.end50:                                         ; preds = %if.then42, %do.body38
  %25 = ptrtoint ptr %brd_info to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %brd_info, align 4
  %arrayidx52 = getelementptr %struct.wil_brd_info, ptr %26, i32 %i.0180284
  %27 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx52, align 4
  %file_max_size56 = getelementptr %struct.wil_brd_info, ptr %26, i32 %i.0180284, i32 1
  %29 = ptrtoint ptr %file_max_size56 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %file_max_size56, align 4
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.68, i32 noundef %i.0180284, i32 noundef %28, i32 noundef %30) #8
  %arrayidx59 = getelementptr %struct.wil_fw_record_head, ptr %hdr.0178285, i32 1
  %31 = ptrtoint ptr %brd_info to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %brd_info, align 4
  %arrayidx61 = getelementptr %struct.wil_brd_info, ptr %32, i32 %i.0180284
  %33 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx61, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %call63 = tail call fastcc i32 @__fw_handle_data(ptr noundef %wil, ptr noundef %arrayidx59, i32 noundef %9, i32 noundef %35)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %for.inc, label %do.end50.cleanup_crit_edge

do.end50.cleanup_crit_edge:                       ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc:                                          ; preds = %do.end50
  %sub68 = sub i32 %size.addr.0182283, %add13
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub68)
  %cmp5 = icmp ult i32 %sub68, 8
  br i1 %cmp5, label %for.inc.for.end_crit_edge, label %if.end7

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end4.for.end_crit_edge
  %size.addr.0.lcssa = phi i32 [ %sub, %if.end4.for.end_crit_edge ], [ %sub68, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.addr.0.lcssa)
  %tobool69.not = icmp eq i32 %size.addr.0.lcssa, 0
  br i1 %tobool69.not, label %for.end.cleanup_crit_edge, label %if.then70

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then70:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.wil_brd_process, i32 noundef %size.addr.0.lcssa) #8
  br label %cleanup

if.then73:                                        ; preds = %if.end7.if.then73_crit_edge, %if.end7.lr.ph.if.then73_crit_edge
  %size.addr.0182.lcssa = phi i32 [ %sub, %if.end7.lr.ph.if.then73_crit_edge ], [ %sub68, %if.end7.if.then73_crit_edge ]
  %i.0180.lcssa = phi i32 [ 0, %if.end7.lr.ph.if.then73_crit_edge ], [ %inc, %if.end7.if.then73_crit_edge ]
  %hdr_sz.0179.lcssa = phi i32 [ 0, %if.end7.lr.ph.if.then73_crit_edge ], [ %9, %if.end7.if.then73_crit_edge ]
  %hdr.0178.lcssa = phi ptr [ %add.ptr, %if.end7.lr.ph.if.then73_crit_edge ], [ %add.ptr67, %if.end7.if.then73_crit_edge ]
  %.lcssa = phi i32 [ %4, %if.end7.lr.ph.if.then73_crit_edge ], [ %6, %if.end7.if.then73_crit_edge ]
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.66, ptr noundef nonnull @__func__.wil_brd_process, i32 noundef %i.0180.lcssa, i32 noundef %.lcssa) #8
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.wil_brd_process, i32 noundef %size.addr.0182.lcssa) #8
  %sub.ptr.lhs.cast = ptrtoint ptr %hdr.0178.lcssa to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %data to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %36 = ptrtoint ptr %hdr.0178.lcssa to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %hdr.0178.lcssa, align 1
  %38 = tail call i16 @llvm.bswap.i16(i16 %37)
  %conv75 = zext i16 %38 to i32
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.wil_brd_process, i32 noundef %sub.ptr.sub, i32 noundef %conv75, i32 noundef %hdr_sz.0179.lcssa) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then73, %if.then70, %for.end.cleanup_crit_edge, %do.end50.cleanup_crit_edge, %if.then35, %if.then30, %if.then25, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then25 ], [ -22, %if.then30 ], [ -22, %if.then35 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.then73 ], [ -22, %if.then70 ], [ 0, %for.end.cleanup_crit_edge ], [ %call63, %do.end50.cleanup_crit_edge ], [ -22, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @wil_fw_verify_file_exists(ptr noundef %wil, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #8
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !198
  %wiphy = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 2
  %1 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %wiphy, align 8
  %parent.i = getelementptr inbounds %struct.wiphy, ptr %2, i32 0, i32 56, i32 1
  %3 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent.i, align 8
  %call1 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef %name, ptr noundef %4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %do.body3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %6) #8
  br label %if.end13

do.body3:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wil_fw_verify_file_exists.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wil_fw_verify_file_exists, %if.then8)) #8
          to label %do.end10 [label %if.then8], !srcloc !199

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #10
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %7 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %main_ndev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wil_fw_verify_file_exists.__UNIQUE_ID_ddebug376, ptr noundef %8, ptr noundef nonnull @.str.7, ptr noundef %name, i32 noundef %call1) #8
  br label %do.end10

do.end10:                                         ; preds = %if.then8, %do.body3
  call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.7, ptr noundef %name, i32 noundef %call1) #8
  br label %if.end13

if.end13:                                         ; preds = %do.end10, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #8
  ret i1 %tobool.not
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fw_handle_comment(ptr noundef %wil, ptr noundef %data, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp = icmp ult i32 %size, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %2, label %do.body63 [
    i32 -1412571974, label %do.body3
    i32 -1412571973, label %do.body16
    i32 -19083793, label %do.body41
  ]

do.body3:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fw_handle_comment.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fw_handle_comment, %if.then6)) #8
          to label %do.end9 [label %if.then6], !srcloc !199

if.then6:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #10
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %4 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @fw_handle_comment.__UNIQUE_ID_ddebug354, ptr noundef %5, ptr noundef nonnull @.str.22) #8
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body3
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.22) #8
  %sub.i = add i32 %size, -4
  %fw_capabilities.i = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 16
  %6 = ptrtoint ptr %fw_capabilities.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %fw_capabilities.i, align 4
  %capabilities.i = getelementptr inbounds %struct.wil_fw_record_capabilities, ptr %data, i32 0, i32 1
  %7 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 4) #8
  %8 = call ptr @memcpy(ptr %fw_capabilities.i, ptr %capabilities.i, i32 %7)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fw_handle_capabilities.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fw_handle_comment, %if.then8.i)) #8
          to label %cleanup [label %if.then8.i], !srcloc !199

if.then8.i:                                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @print_hex_dump(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.28, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %capabilities.i, i32 noundef %sub.i, i1 noundef zeroext false) #8
  br label %cleanup

do.body16:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fw_handle_comment.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fw_handle_comment, %if.then28)) #8
          to label %do.end34 [label %if.then28], !srcloc !199

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #10
  %main_ndev29 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %9 = ptrtoint ptr %main_ndev29 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %main_ndev29, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @fw_handle_comment.__UNIQUE_ID_ddebug355, ptr noundef %10, ptr noundef nonnull @.str.23) #8
  br label %do.end34

do.end34:                                         ; preds = %if.then28, %do.body16
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.23) #8
  %call37 = tail call fastcc i32 @fw_handle_brd_file(ptr noundef %wil, ptr noundef %data, i32 noundef %size)
  br label %cleanup

do.body41:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fw_handle_comment.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fw_handle_comment, %if.then53)) #8
          to label %do.end59 [label %if.then53], !srcloc !199

if.then53:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #10
  %main_ndev54 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %11 = ptrtoint ptr %main_ndev54 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %main_ndev54, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @fw_handle_comment.__UNIQUE_ID_ddebug356, ptr noundef %12, ptr noundef nonnull @.str.24) #8
  br label %do.end59

do.end59:                                         ; preds = %if.then53, %do.body41
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %size)
  %cmp.i = icmp ult i32 %size, 8
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.fw_handle_concurrency, i32 noundef %size) #8
  br label %cleanup

if.end.i:                                         ; preds = %do.end59
  %n_combos1.i = getelementptr inbounds %struct.wil_fw_record_concurrency, ptr %data, i32 0, i32 3
  %13 = ptrtoint ptr %n_combos1.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %n_combos1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp238.not.i = icmp eq i16 %14, 0
  br i1 %cmp238.not.i, label %if.end.i.for.end.i_crit_edge, label %for.body.preheader.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.preheader.i:                             ; preds = %if.end.i
  %combos.i = getelementptr inbounds %struct.wil_fw_record_concurrency, ptr %data, i32 0, i32 4
  %sub.i106 = add i32 %size, -8
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #8
  %16 = tail call i16 @llvm.umax.i16(i16 %15, i16 1) #8
  %umax.i = zext i16 %16 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %if.end14.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.041.i = phi i32 [ %inc.i, %if.end14.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %remain.040.i = phi i32 [ %sub15.i, %if.end14.i.for.body.i_crit_edge ], [ %sub.i106, %for.body.preheader.i ]
  %combo.039.i = phi ptr [ %add.ptr.i, %if.end14.i.for.body.i_crit_edge ], [ %combos.i, %for.body.preheader.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %remain.040.i)
  %cmp4.i = icmp ult i32 %remain.040.i, 4
  br i1 %cmp4.i, label %for.body.i.out_short.i_crit_edge, label %if.end7.i

for.body.i.out_short.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_short.i

if.end7.i:                                        ; preds = %for.body.i
  %sub8.i = add i32 %remain.040.i, -4
  %17 = ptrtoint ptr %combo.039.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %combo.039.i, align 1
  %conv10.i = zext i8 %18 to i32
  %mul.i = shl nuw nsw i32 %conv10.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub8.i, i32 %mul.i)
  %cmp11.i = icmp ult i32 %sub8.i, %mul.i
  br i1 %cmp11.i, label %if.end7.i.out_short.i_crit_edge, label %if.end14.i

if.end7.i.out_short.i_crit_edge:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_short.i

if.end14.i:                                       ; preds = %if.end7.i
  %limits.i = getelementptr inbounds %struct.wil_fw_concurrency_combo, ptr %combo.039.i, i32 0, i32 4
  %sub15.i = sub i32 %sub8.i, %mul.i
  %add.ptr.i = getelementptr %struct.wil_fw_concurrency_limit, ptr %limits.i, i32 %conv10.i
  %inc.i = add nuw nsw i32 %i.041.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %if.end14.i.for.end.i_crit_edge, label %if.end14.i.for.body.i_crit_edge

if.end14.i.for.body.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end14.i.for.end.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %if.end14.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %call.i = tail call i32 @wil_cfg80211_iface_combinations_from_fw(ptr noundef %wil, ptr noundef %data) #8
  br label %cleanup

out_short.i:                                      ; preds = %if.end7.i.out_short.i_crit_edge, %for.body.i.out_short.i_crit_edge
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.fw_handle_concurrency) #8
  br label %cleanup

do.body63:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fw_handle_comment.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fw_handle_comment, %if.then75)) #8
          to label %cleanup [label %if.then75], !srcloc !199

if.then75:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @print_hex_dump(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.25, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %data, i32 noundef %size, i1 noundef zeroext true) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then75, %do.body63, %out_short.i, %for.end.i, %if.then.i, %do.end34, %if.then8.i, %do.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then75 ], [ %call37, %do.end34 ], [ 0, %do.end9 ], [ 0, %if.then8.i ], [ 0, %if.then.i ], [ 0, %out_short.i ], [ %call.i, %for.end.i ], [ 0, %do.body63 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fw_handle_data(ptr noundef %wil, ptr noundef %data, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %data, align 1
  %call = tail call fastcc i32 @__fw_handle_data(ptr noundef %wil, ptr noundef %data, i32 noundef %size, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fw_ignore_section(ptr nocapture noundef readnone %wil, ptr nocapture noundef readnone %data, i32 noundef %size) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fw_handle_fill(ptr noundef %wil, ptr nocapture noundef readonly %data, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %size1 = getelementptr inbounds %struct.wil_fw_record_fill, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %size1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %size1, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %size)
  %cmp.not = icmp eq i32 %size, 12
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__.fw_handle_fill, i32 noundef %size) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp2 = icmp ult i32 %2, 4
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.41, ptr noundef nonnull @__func__.fw_handle_fill, i32 noundef %2) #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %rem = and i32 %2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.42, ptr noundef nonnull @__func__.fw_handle_fill, i32 noundef %2) #8
  br label %cleanup

if.end6:                                          ; preds = %if.end4
  %3 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %data, align 1
  %call.i = tail call ptr @wmi_buffer_block(ptr noundef %wil, i32 noundef %4, i32 noundef %2) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %wil_fw_addr_check.exit, label %if.end8

wil_fw_addr_check.exit:                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #8
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.wil_fw_addr_check, ptr noundef nonnull @.str.37, i32 noundef %5) #8
  br label %cleanup

if.end8:                                          ; preds = %if.end6
  %value = getelementptr inbounds %struct.wil_fw_record_fill, ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %value to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %value, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fw_handle_fill.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fw_handle_fill, %if.then15)) #8
          to label %do.end19 [label %if.then15], !srcloc !199

if.then15:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %9 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %main_ndev, align 4
  %11 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %data, align 1
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @fw_handle_fill.__UNIQUE_ID_ddebug359, ptr noundef %10, ptr noundef nonnull @.str.43, i32 noundef %13, i32 noundef %8, i32 noundef %2) #8
  br label %do.end19

do.end19:                                         ; preds = %if.then15, %if.end8
  %14 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %data, align 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.43, i32 noundef %16, i32 noundef %8, i32 noundef %2) #8
  %add.i = add i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add.i)
  %cmp3.i = icmp ugt i32 %add.i, 4
  br i1 %cmp3.i, label %do.end19.for.body.i_crit_edge, label %do.end19.wil_memset_toio_32.exit_crit_edge

do.end19.wil_memset_toio_32.exit_crit_edge:       ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %wil_memset_toio_32.exit

do.end19.for.body.i_crit_edge:                    ; preds = %do.end19
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end19.for.body.i_crit_edge
  %d.05.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %do.end19.for.body.i_crit_edge ]
  %count.addr.04.i = phi i32 [ %sub.i, %for.body.i.for.body.i_crit_edge ], [ %add.i, %do.end19.for.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr i32, ptr %d.05.i, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %d.05.i, i32 %8) #8, !srcloc !200
  %sub.i = add i32 %count.addr.04.i, -4
  %cmp.i = icmp ugt i32 %sub.i, 4
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.wil_memset_toio_32.exit_crit_edge

for.body.i.wil_memset_toio_32.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wil_memset_toio_32.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

wil_memset_toio_32.exit:                          ; preds = %for.body.i.wil_memset_toio_32.exit_crit_edge, %do.end19.wil_memset_toio_32.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !201
  tail call void @arm_heavy_mb() #8
  br label %cleanup

cleanup:                                          ; preds = %wil_memset_toio_32.exit, %wil_fw_addr_check.exit, %if.then5, %if.then3, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then3 ], [ -22, %if.then5 ], [ 0, %wil_memset_toio_32.exit ], [ -22, %wil_fw_addr_check.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fw_handle_file_header(ptr noundef %wil, ptr noundef %data, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %size)
  %cmp.not = icmp eq i32 %size, 52
  br i1 %cmp.not, label %do.body2, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__.fw_handle_file_header, i32 noundef %size) #8
  br label %cleanup

do.body2:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fw_handle_file_header.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fw_handle_file_header, %if.then5)) #8
          to label %do.end8 [label %if.then5], !srcloc !199

if.then5:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %0 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %main_ndev, align 4
  %version = getelementptr inbounds %struct.wil_fw_record_file_header, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %version to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %version, align 1
  %data_len = getelementptr inbounds %struct.wil_fw_record_file_header, ptr %data, i32 0, i32 4
  %4 = ptrtoint ptr %data_len to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %data_len, align 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @fw_handle_file_header.__UNIQUE_ID_ddebug360, ptr noundef %1, ptr noundef nonnull @.str.45, i32 noundef %3, i32 noundef %5) #8
  br label %do.end8

do.end8:                                          ; preds = %if.then5, %do.body2
  %version9 = getelementptr inbounds %struct.wil_fw_record_file_header, ptr %data, i32 0, i32 3
  %6 = ptrtoint ptr %version9 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %version9, align 1
  %data_len10 = getelementptr inbounds %struct.wil_fw_record_file_header, ptr %data, i32 0, i32 4
  %8 = ptrtoint ptr %data_len10 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %data_len10, align 1
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.45, i32 noundef %7, i32 noundef %9) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fw_handle_file_header.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fw_handle_file_header, %if.then25)) #8
          to label %do.end28 [label %if.then25], !srcloc !199

if.then25:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  %comment = getelementptr inbounds %struct.wil_fw_record_file_header, ptr %data, i32 0, i32 5
  tail call void @print_hex_dump(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.25, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %comment, i32 noundef 32, i1 noundef zeroext true) #8
  br label %do.end28

do.end28:                                         ; preds = %if.then25, %do.end8
  %comment29 = getelementptr inbounds %struct.wil_fw_record_file_header, ptr %data, i32 0, i32 5
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(12) %comment29, ptr noundef nonnull dereferenceable(12) @.str.46, i32 12) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool32.not = icmp eq i32 %bcmp, 0
  br i1 %tobool32.not, label %if.then33, label %do.end28.cleanup_crit_edge

do.end28.cleanup_crit_edge:                       ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then33:                                        ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #10
  %fw_version = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 7
  %add.ptr = getelementptr %struct.wil_fw_record_file_header, ptr %data, i32 0, i32 5, i32 12
  %10 = call ptr @memcpy(ptr %fw_version, ptr %add.ptr, i32 20)
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %do.end28.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %if.then33 ], [ 0, %do.end28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fw_handle_direct_write(ptr noundef %wil, ptr nocapture noundef readonly %data, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %div = udiv i32 %size, 12
  %0 = mul i32 %div, 12
  %rem.decomposed = sub i32 %size, %0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %tobool.not = icmp eq i32 %rem.decomposed, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.47, ptr noundef nonnull @__func__.fw_handle_direct_write, i32 noundef 12, i32 noundef %size) #8
  br label %cleanup36

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %size)
  %1 = icmp ult i32 %size, 12
  br i1 %1, label %if.end.cleanup36_crit_edge, label %for.body.lr.ph

if.end.cleanup36_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup36

for.body.lr.ph:                                   ; preds = %if.end
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %do.end21.for.body_crit_edge, %for.body.lr.ph
  %i.067 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %do.end21.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.wil_fw_data_dwrite, ptr %data, i32 %i.067
  %mask = getelementptr %struct.wil_fw_data_dwrite, ptr %data, i32 %i.067, i32 2
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %mask, align 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %value = getelementptr %struct.wil_fw_data_dwrite, ptr %data, i32 %i.067, i32 1
  %5 = ptrtoint ptr %value to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %value, align 1
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %arrayidx, align 1
  %call.i = tail call ptr @wmi_buffer_block(ptr noundef %wil, i32 noundef %9, i32 noundef 0) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %cleanup36.critedge, label %if.end5

if.end5:                                          ; preds = %for.body
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %call.i) #8, !srcloc !202
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !203
  %and = and i32 %11, %4
  %neg = xor i32 %4, -1
  %and8 = and i32 %7, %neg
  %or = or i32 %and, %and8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fw_handle_direct_write.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fw_handle_direct_write, %if.then16)) #8
          to label %do.end21 [label %if.then16], !srcloc !199

if.then16:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %main_ndev, align 4
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %arrayidx, align 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @fw_handle_direct_write.__UNIQUE_ID_ddebug364, ptr noundef %13, ptr noundef nonnull @.str.48, i32 noundef %16, i32 noundef %or, i32 noundef %11, i32 noundef %7, i32 noundef %4) #8
  br label %do.end21

do.end21:                                         ; preds = %if.then16, %if.end5
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %arrayidx, align 1
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.48, i32 noundef %19, i32 noundef %or, i32 noundef %11, i32 noundef %7, i32 noundef %4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !204
  tail call void @arm_heavy_mb() #8
  %20 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %call.i, i32 %20) #8, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !205
  tail call void @arm_heavy_mb() #8
  %inc = add nuw nsw i32 %i.067, 1
  %exitcond.not = icmp eq i32 %inc, %div
  br i1 %exitcond.not, label %do.end21.cleanup36_crit_edge, label %do.end21.for.body_crit_edge

do.end21.for.body_crit_edge:                      ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.end21.cleanup36_crit_edge:                     ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup36

cleanup36.critedge:                               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %21 = tail call i32 @llvm.bswap.i32(i32 %9) #8
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.wil_fw_addr_check, ptr noundef nonnull @.str.37, i32 noundef %21) #8
  br label %cleanup36

cleanup36:                                        ; preds = %cleanup36.critedge, %do.end21.cleanup36_crit_edge, %if.end.cleanup36_crit_edge, %if.then
  %retval.2 = phi i32 [ -22, %if.then ], [ -22, %cleanup36.critedge ], [ 0, %if.end.cleanup36_crit_edge ], [ 0, %do.end21.cleanup36_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fw_handle_gateway_data(ptr noundef %wil, ptr nocapture noundef readonly %data, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.wil_fw_record_gateway_data, ptr %data, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %size)
  %cmp = icmp ult i32 %size, 28
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.fw_handle_gateway_data, i32 noundef %size) #8
  br label %cleanup90

if.end:                                           ; preds = %entry
  %sub = add i32 %size, -20
  %rem = and i32 %sub, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.50, ptr noundef nonnull @__func__.fw_handle_gateway_data, i32 noundef 8, i32 noundef %sub) #8
  br label %cleanup90

if.end4:                                          ; preds = %if.end
  %div143 = lshr i32 %sub, 3
  %command = getelementptr inbounds %struct.wil_fw_record_gateway_data, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %command to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %command, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fw_handle_gateway_data.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fw_handle_gateway_data, %if.then11)) #8
          to label %do.end14 [label %if.then11], !srcloc !199

if.then11:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %3 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @fw_handle_gateway_data.__UNIQUE_ID_ddebug365, ptr noundef %4, ptr noundef nonnull @.str.51, i32 noundef %div143, i32 noundef %2) #8
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %if.end4
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.51, i32 noundef %div143, i32 noundef %2) #8
  %5 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %data, align 1
  %call.i = tail call ptr @wmi_buffer_block(ptr noundef %wil, i32 noundef %6, i32 noundef 0) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %wil_fw_addr_check.exit, label %lor.lhs.false

wil_fw_addr_check.exit:                           ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #10
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.wil_fw_addr_check, ptr noundef nonnull @.str.52, i32 noundef %7) #8
  br label %cleanup90

lor.lhs.false:                                    ; preds = %do.end14
  %gateway_value_addr = getelementptr inbounds %struct.wil_fw_record_gateway_data, ptr %data, i32 0, i32 1
  %8 = ptrtoint ptr %gateway_value_addr to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %gateway_value_addr, align 1
  %call.i150 = tail call ptr @wmi_buffer_block(ptr noundef %wil, i32 noundef %9, i32 noundef 0) #8
  %tobool.not.i151 = icmp eq ptr %call.i150, null
  br i1 %tobool.not.i151, label %wil_fw_addr_check.exit153, label %lor.lhs.false19

wil_fw_addr_check.exit153:                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #8
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.wil_fw_addr_check, ptr noundef nonnull @.str.53, i32 noundef %10) #8
  br label %cleanup90

lor.lhs.false19:                                  ; preds = %lor.lhs.false
  %gateway_cmd_addr = getelementptr inbounds %struct.wil_fw_record_gateway_data, ptr %data, i32 0, i32 2
  %11 = ptrtoint ptr %gateway_cmd_addr to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %gateway_cmd_addr, align 1
  %call.i154 = tail call ptr @wmi_buffer_block(ptr noundef %wil, i32 noundef %12, i32 noundef 0) #8
  %tobool.not.i155 = icmp eq ptr %call.i154, null
  br i1 %tobool.not.i155, label %wil_fw_addr_check.exit157, label %lor.lhs.false21

wil_fw_addr_check.exit157:                        ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #10
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #8
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.wil_fw_addr_check, ptr noundef nonnull @.str.54, i32 noundef %13) #8
  br label %cleanup90

lor.lhs.false21:                                  ; preds = %lor.lhs.false19
  %gateway_ctrl_address = getelementptr inbounds %struct.wil_fw_record_gateway_data, ptr %data, i32 0, i32 3
  %14 = ptrtoint ptr %gateway_ctrl_address to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %gateway_ctrl_address, align 1
  %call.i158 = tail call ptr @wmi_buffer_block(ptr noundef %wil, i32 noundef %15, i32 noundef 0) #8
  %tobool.not.i159 = icmp eq ptr %call.i158, null
  br i1 %tobool.not.i159, label %wil_fw_addr_check.exit161, label %do.body27

wil_fw_addr_check.exit161:                        ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #10
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #8
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.wil_fw_addr_check, ptr noundef nonnull @.str.55, i32 noundef %16) #8
  br label %cleanup90

do.body27:                                        ; preds = %lor.lhs.false21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fw_handle_gateway_data.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fw_handle_gateway_data, %if.then39)) #8
          to label %for.body.lr.ph [label %if.then39], !srcloc !199

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #10
  %main_ndev40 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %17 = ptrtoint ptr %main_ndev40 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %main_ndev40, align 4
  %19 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %data, align 1
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %22 = ptrtoint ptr %gateway_value_addr to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %gateway_value_addr, align 1
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %25 = ptrtoint ptr %gateway_cmd_addr to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %gateway_cmd_addr, align 1
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %28 = ptrtoint ptr %gateway_ctrl_address to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %gateway_ctrl_address, align 1
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @fw_handle_gateway_data.__UNIQUE_ID_ddebug366, ptr noundef %18, ptr noundef nonnull @.str.56, i32 noundef %21, i32 noundef %24, i32 noundef %27, i32 noundef %30) #8
  br label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.then39, %do.body27
  %31 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %data, align 1
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %34 = ptrtoint ptr %gateway_value_addr to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %gateway_value_addr, align 1
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  %37 = ptrtoint ptr %gateway_cmd_addr to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %gateway_cmd_addr, align 1
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  %40 = ptrtoint ptr %gateway_ctrl_address to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %gateway_ctrl_address, align 1
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.56, i32 noundef %33, i32 noundef %36, i32 noundef %39, i32 noundef %42) #8
  %main_ndev73 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  br label %for.body

for.cond:                                         ; preds = %do.end78
  %inc = add nuw nsw i32 %i.0166, 1
  %exitcond.not = icmp eq i32 %inc, %div143
  br i1 %exitcond.not, label %for.cond.cleanup90_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.cleanup90_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup90

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0166 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.wil_fw_data_gw, ptr %data1, i32 %i.0166
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %arrayidx, align 1
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  %value = getelementptr %struct.wil_fw_data_gw, ptr %data1, i32 %i.0166, i32 1
  %46 = ptrtoint ptr %value to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %value, align 1
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fw_handle_gateway_data.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fw_handle_gateway_data, %if.then72)) #8
          to label %do.end78 [label %if.then72], !srcloc !199

if.then72:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %main_ndev73 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %main_ndev73, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @fw_handle_gateway_data.__UNIQUE_ID_ddebug367, ptr noundef %50, ptr noundef nonnull @.str.57, i32 noundef %i.0166, i32 noundef %45, i32 noundef %48) #8
  br label %do.end78

do.end78:                                         ; preds = %if.then72, %for.body
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.57, i32 noundef %i.0166, i32 noundef %45, i32 noundef %48) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !206
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %call.i150, i32 %47) #8, !srcloc !200
  %call84 = tail call fastcc i32 @gw_write(ptr noundef %wil, ptr noundef nonnull %call.i, ptr noundef nonnull %call.i154, ptr noundef nonnull %call.i158, i32 noundef %2, i32 noundef %45)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %for.cond, label %do.end78.cleanup90_crit_edge

do.end78.cleanup90_crit_edge:                     ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup90

cleanup90:                                        ; preds = %do.end78.cleanup90_crit_edge, %for.cond.cleanup90_crit_edge, %wil_fw_addr_check.exit161, %wil_fw_addr_check.exit157, %wil_fw_addr_check.exit153, %wil_fw_addr_check.exit, %if.then2, %if.then
  %retval.2 = phi i32 [ -22, %if.then ], [ -22, %if.then2 ], [ -22, %wil_fw_addr_check.exit161 ], [ -22, %wil_fw_addr_check.exit157 ], [ -22, %wil_fw_addr_check.exit153 ], [ -22, %wil_fw_addr_check.exit ], [ %call84, %do.end78.cleanup90_crit_edge ], [ 0, %for.cond.cleanup90_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fw_handle_gateway_data4(ptr noundef %wil, ptr noundef %data, i32 noundef %size) #0 align 64 {
entry:
  %v = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.wil_fw_record_gateway_data4, ptr %data, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %size)
  %cmp = icmp ult i32 %size, 52
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.59, ptr noundef nonnull @__func__.fw_handle_gateway_data4, i32 noundef %size) #8
  br label %cleanup149

if.end:                                           ; preds = %entry
  %sub = add i32 %size, -32
  %div = udiv i32 %sub, 20
  %0 = mul i32 %div, 20
  %rem.decomposed = sub i32 %sub, %0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %tobool.not = icmp eq i32 %rem.decomposed, 0
  br i1 %tobool.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.60, ptr noundef nonnull @__func__.fw_handle_gateway_data4, i32 noundef 20, i32 noundef %sub) #8
  br label %cleanup149

if.end4:                                          ; preds = %if.end
  %command = getelementptr inbounds %struct.wil_fw_record_gateway_data4, ptr %data, i32 0, i32 4
  %1 = ptrtoint ptr %command to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %command, align 1
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fw_handle_gateway_data4.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fw_handle_gateway_data4, %if.then11)) #8
          to label %do.end14 [label %if.then11], !srcloc !199

if.then11:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %4 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %main_ndev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @fw_handle_gateway_data4.__UNIQUE_ID_ddebug368, ptr noundef %5, ptr noundef nonnull @.str.61, i32 noundef %div, i32 noundef %3) #8
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %if.end4
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.61, i32 noundef %div, i32 noundef %3) #8
  %6 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %data, align 1
  %call.i = tail call ptr @wmi_buffer_block(ptr noundef %wil, i32 noundef %7, i32 noundef 0) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %wil_fw_addr_check.exit.thread, label %for.body.preheader

for.body.preheader:                               ; preds = %do.end14
  %arrayidx21 = getelementptr %struct.wil_fw_record_gateway_data4, ptr %data, i32 0, i32 1, i32 0
  %8 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %arrayidx21, align 1
  %call.i223 = tail call ptr @wmi_buffer_block(ptr noundef %wil, i32 noundef %9, i32 noundef 0) #8
  %tobool.not.i224 = icmp eq ptr %call.i223, null
  br i1 %tobool.not.i224, label %for.body.preheader.wil_fw_addr_check.exit226_crit_edge, label %for.cond

for.body.preheader.wil_fw_addr_check.exit226_crit_edge: ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %wil_fw_addr_check.exit226

wil_fw_addr_check.exit.thread:                    ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #10
  %10 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.wil_fw_addr_check, ptr noundef nonnull @.str.52, i32 noundef %10) #8
  br label %cleanup149

for.cond:                                         ; preds = %for.body.preheader
  %arrayidx21.1 = getelementptr %struct.wil_fw_record_gateway_data4, ptr %data, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %arrayidx21.1 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %arrayidx21.1, align 1
  %call.i223.1 = tail call ptr @wmi_buffer_block(ptr noundef %wil, i32 noundef %12, i32 noundef 0) #8
  %tobool.not.i224.1 = icmp eq ptr %call.i223.1, null
  br i1 %tobool.not.i224.1, label %for.cond.wil_fw_addr_check.exit226_crit_edge, label %for.cond.1

for.cond.wil_fw_addr_check.exit226_crit_edge:     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %wil_fw_addr_check.exit226

for.cond.1:                                       ; preds = %for.cond
  %arrayidx21.2 = getelementptr %struct.wil_fw_record_gateway_data4, ptr %data, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %arrayidx21.2 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %arrayidx21.2, align 1
  %call.i223.2 = tail call ptr @wmi_buffer_block(ptr noundef %wil, i32 noundef %14, i32 noundef 0) #8
  %tobool.not.i224.2 = icmp eq ptr %call.i223.2, null
  br i1 %tobool.not.i224.2, label %for.cond.1.wil_fw_addr_check.exit226_crit_edge, label %for.cond.2

for.cond.1.wil_fw_addr_check.exit226_crit_edge:   ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %wil_fw_addr_check.exit226

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx21.3 = getelementptr %struct.wil_fw_record_gateway_data4, ptr %data, i32 0, i32 1, i32 3
  %15 = ptrtoint ptr %arrayidx21.3 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %arrayidx21.3, align 1
  %call.i223.3 = tail call ptr @wmi_buffer_block(ptr noundef %wil, i32 noundef %16, i32 noundef 0) #8
  %tobool.not.i224.3 = icmp eq ptr %call.i223.3, null
  br i1 %tobool.not.i224.3, label %for.cond.2.wil_fw_addr_check.exit226_crit_edge, label %for.cond.3

for.cond.2.wil_fw_addr_check.exit226_crit_edge:   ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %wil_fw_addr_check.exit226

for.cond.3:                                       ; preds = %for.cond.2
  %gateway_cmd_addr = getelementptr inbounds %struct.wil_fw_record_gateway_data4, ptr %data, i32 0, i32 2
  %17 = ptrtoint ptr %gateway_cmd_addr to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %gateway_cmd_addr, align 1
  %call.i227 = tail call ptr @wmi_buffer_block(ptr noundef %wil, i32 noundef %18, i32 noundef 0) #8
  %tobool.not.i228 = icmp eq ptr %call.i227, null
  br i1 %tobool.not.i228, label %wil_fw_addr_check.exit230, label %lor.lhs.false

wil_fw_addr_check.exit226:                        ; preds = %for.cond.2.wil_fw_addr_check.exit226_crit_edge, %for.cond.1.wil_fw_addr_check.exit226_crit_edge, %for.cond.wil_fw_addr_check.exit226_crit_edge, %for.body.preheader.wil_fw_addr_check.exit226_crit_edge
  %.lcssa = phi i32 [ %9, %for.body.preheader.wil_fw_addr_check.exit226_crit_edge ], [ %12, %for.cond.wil_fw_addr_check.exit226_crit_edge ], [ %14, %for.cond.1.wil_fw_addr_check.exit226_crit_edge ], [ %16, %for.cond.2.wil_fw_addr_check.exit226_crit_edge ]
  %19 = tail call i32 @llvm.bswap.i32(i32 %.lcssa) #8
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.wil_fw_addr_check, ptr noundef nonnull @.str.53, i32 noundef %19) #8
  br label %cleanup149

wil_fw_addr_check.exit230:                        ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #10
  %20 = tail call i32 @llvm.bswap.i32(i32 %18) #8
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.wil_fw_addr_check, ptr noundef nonnull @.str.54, i32 noundef %20) #8
  br label %cleanup149

lor.lhs.false:                                    ; preds = %for.cond.3
  %gateway_ctrl_address = getelementptr inbounds %struct.wil_fw_record_gateway_data4, ptr %data, i32 0, i32 3
  %21 = ptrtoint ptr %gateway_ctrl_address to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %gateway_ctrl_address, align 1
  %call.i231 = tail call ptr @wmi_buffer_block(ptr noundef %wil, i32 noundef %22, i32 noundef 0) #8
  %tobool.not.i232 = icmp eq ptr %call.i231, null
  br i1 %tobool.not.i232, label %wil_fw_addr_check.exit234, label %do.body31

wil_fw_addr_check.exit234:                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #8
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.wil_fw_addr_check, ptr noundef nonnull @.str.55, i32 noundef %23) #8
  br label %cleanup149

do.body31:                                        ; preds = %lor.lhs.false
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fw_handle_gateway_data4.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fw_handle_gateway_data4, %if.then43)) #8
          to label %do.end52 [label %if.then43], !srcloc !199

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #10
  %main_ndev44 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %24 = ptrtoint ptr %main_ndev44 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %main_ndev44, align 4
  %26 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %data, align 1
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %29 = ptrtoint ptr %gateway_cmd_addr to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %gateway_cmd_addr, align 1
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %32 = ptrtoint ptr %gateway_ctrl_address to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %gateway_ctrl_address, align 1
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @fw_handle_gateway_data4.__UNIQUE_ID_ddebug369, ptr noundef %25, ptr noundef nonnull @.str.62, i32 noundef %28, i32 noundef %31, i32 noundef %34) #8
  br label %do.end52

do.end52:                                         ; preds = %if.then43, %do.body31
  %35 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %data, align 1
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %38 = ptrtoint ptr %gateway_cmd_addr to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %gateway_cmd_addr, align 1
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  %41 = ptrtoint ptr %gateway_ctrl_address to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %gateway_ctrl_address, align 1
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.62, i32 noundef %37, i32 noundef %40, i32 noundef %43) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fw_handle_gateway_data4.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fw_handle_gateway_data4, %if.then70)) #8
          to label %for.body78.lr.ph [label %if.then70], !srcloc !199

if.then70:                                        ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @print_hex_dump(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.63, i32 noundef 0, i32 noundef 16, i32 noundef 4, ptr noundef %arrayidx21, i32 noundef 16, i1 noundef zeroext false) #8
  br label %for.body78.lr.ph

for.body78.lr.ph:                                 ; preds = %if.then70, %do.end52
  %44 = getelementptr inbounds [4 x i32], ptr %v, i32 0, i32 1
  %45 = getelementptr inbounds [4 x i32], ptr %v, i32 0, i32 2
  %46 = getelementptr inbounds [4 x i32], ptr %v, i32 0, i32 3
  %main_ndev104 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  br label %for.body78

for.cond76:                                       ; preds = %do.end128
  %inc147 = add nuw nsw i32 %i.0244, 1
  %exitcond.not = icmp eq i32 %inc147, %div
  br i1 %exitcond.not, label %for.cond76.cleanup149_crit_edge, label %for.cond76.for.body78_crit_edge

for.cond76.for.body78_crit_edge:                  ; preds = %for.cond76
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body78

for.cond76.cleanup149_crit_edge:                  ; preds = %for.cond76
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup149

for.body78:                                       ; preds = %for.cond76.for.body78_crit_edge, %for.body78.lr.ph
  %i.0244 = phi i32 [ 0, %for.body78.lr.ph ], [ %inc147, %for.cond76.for.body78_crit_edge ]
  %arrayidx79 = getelementptr %struct.wil_fw_data_gw4, ptr %data1, i32 %i.0244
  %47 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %arrayidx79, align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %v) #8
  %arrayidx84 = getelementptr %struct.wil_fw_data_gw4, ptr %data1, i32 %i.0244, i32 1, i32 0
  %49 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %arrayidx84, align 1
  %51 = call i32 @llvm.bswap.i32(i32 %50)
  %52 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %v, align 4
  %arrayidx84.1 = getelementptr %struct.wil_fw_data_gw4, ptr %data1, i32 %i.0244, i32 1, i32 1
  %53 = ptrtoint ptr %arrayidx84.1 to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %54 = load i32, ptr %arrayidx84.1, align 1
  %55 = call i32 @llvm.bswap.i32(i32 %54)
  %56 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %44, align 4
  %arrayidx84.2 = getelementptr %struct.wil_fw_data_gw4, ptr %data1, i32 %i.0244, i32 1, i32 2
  %57 = ptrtoint ptr %arrayidx84.2 to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %58 = load i32, ptr %arrayidx84.2, align 1
  %59 = call i32 @llvm.bswap.i32(i32 %58)
  %60 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %45, align 4
  %arrayidx84.3 = getelementptr %struct.wil_fw_data_gw4, ptr %data1, i32 %i.0244, i32 1, i32 3
  %61 = ptrtoint ptr %arrayidx84.3 to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %62 = load i32, ptr %arrayidx84.3, align 1
  %63 = call i32 @llvm.bswap.i32(i32 %62)
  %64 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %46, align 4
  %65 = call i32 @llvm.bswap.i32(i32 %48)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fw_handle_gateway_data4.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fw_handle_gateway_data4, %if.then103)) #8
          to label %do.end109 [label %if.then103], !srcloc !199

if.then103:                                       ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #10
  %66 = ptrtoint ptr %main_ndev104 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %main_ndev104, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @fw_handle_gateway_data4.__UNIQUE_ID_ddebug371, ptr noundef %67, ptr noundef nonnull @.str.64, i32 noundef %i.0244, i32 noundef %65) #8
  br label %do.end109

do.end109:                                        ; preds = %if.then103, %for.body78
  call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.64, i32 noundef %i.0244, i32 noundef %65) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fw_handle_gateway_data4.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fw_handle_gateway_data4, %if.then124)) #8
          to label %do.end128 [label %if.then124], !srcloc !199

if.then124:                                       ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #10
  call void @print_hex_dump(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.65, i32 noundef 0, i32 noundef 16, i32 noundef 4, ptr noundef nonnull %v, i32 noundef 16, i1 noundef zeroext false) #8
  br label %do.end128

do.end128:                                        ; preds = %if.then124, %do.end109
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !207
  call void @arm_heavy_mb() #8
  %68 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %v, align 4
  %70 = call i32 @llvm.bswap.i32(i32 %69)
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %call.i223, i32 %70) #8, !srcloc !200
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !207
  call void @arm_heavy_mb() #8
  %71 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %44, align 4
  %73 = call i32 @llvm.bswap.i32(i32 %72)
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %call.i223.1, i32 %73) #8, !srcloc !200
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !207
  call void @arm_heavy_mb() #8
  %74 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %45, align 4
  %76 = call i32 @llvm.bswap.i32(i32 %75)
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %call.i223.2, i32 %76) #8, !srcloc !200
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !207
  call void @arm_heavy_mb() #8
  %77 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %46, align 4
  %79 = call i32 @llvm.bswap.i32(i32 %78)
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %call.i223.3, i32 %79) #8, !srcloc !200
  %call140 = call fastcc i32 @gw_write(ptr noundef %wil, ptr noundef nonnull %call.i, ptr noundef nonnull %call.i227, ptr noundef nonnull %call.i231, i32 noundef %3, i32 noundef %65)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %tobool141.not = icmp eq i32 %call140, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %v) #8
  br i1 %tobool141.not, label %for.cond76, label %do.end128.cleanup149_crit_edge

do.end128.cleanup149_crit_edge:                   ; preds = %do.end128
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup149

cleanup149:                                       ; preds = %do.end128.cleanup149_crit_edge, %for.cond76.cleanup149_crit_edge, %wil_fw_addr_check.exit234, %wil_fw_addr_check.exit230, %wil_fw_addr_check.exit226, %wil_fw_addr_check.exit.thread, %if.then2, %if.then
  %retval.2 = phi i32 [ -22, %if.then ], [ -22, %if.then2 ], [ -22, %wil_fw_addr_check.exit226 ], [ -22, %wil_fw_addr_check.exit234 ], [ -22, %wil_fw_addr_check.exit230 ], [ -22, %wil_fw_addr_check.exit.thread ], [ %call140, %do.end128.cleanup149_crit_edge ], [ 0, %for.cond76.cleanup149_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fw_handle_brd_file(ptr noundef %wil, ptr nocapture noundef readonly %data, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %size)
  %cmp = icmp ult i32 %size, 9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.fw_handle_brd_file, i32 noundef %size) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = add i32 %size, -8
  %div142 = lshr i32 %sub, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub)
  %tobool.not = icmp ult i32 %sub, 8
  br i1 %tobool.not, label %if.then1, label %if.end7.i.i

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.fw_handle_brd_file) #8
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end
  %0 = and i32 %sub, -8
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %0, i32 noundef 3520) #13
  %brd_info = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 14
  %1 = ptrtoint ptr %brd_info to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call8.i.i, ptr %brd_info, align 4
  %tobool4.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool4.not, label %if.end7.i.i.cleanup_crit_edge, label %for.body.lr.ph

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end7.i.i
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %umax = call i32 @llvm.umax.i32(i32 %div142, i32 1)
  br label %for.body

for.body:                                         ; preds = %do.end36.for.body_crit_edge, %for.body.lr.ph
  %i.0157 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %do.end36.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.wil_fw_record_brd_file, ptr %data, i32 0, i32 2, i32 %i.0157
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %arrayidx, align 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = ptrtoint ptr %brd_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %brd_info, align 4
  %arrayidx10 = getelementptr %struct.wil_brd_info, ptr %6, i32 %i.0157
  %7 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %4, ptr %arrayidx10, align 4
  %max_size_bytes = getelementptr %struct.wil_fw_record_brd_file, ptr %data, i32 0, i32 2, i32 %i.0157, i32 1
  %8 = ptrtoint ptr %max_size_bytes to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %max_size_bytes, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %brd_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %brd_info, align 4
  %file_max_size = getelementptr %struct.wil_brd_info, ptr %12, i32 %i.0157, i32 1
  %13 = ptrtoint ptr %file_max_size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %10, ptr %file_max_size, align 4
  %14 = load ptr, ptr %brd_info, align 4
  %arrayidx16 = getelementptr %struct.wil_brd_info, ptr %14, i32 %i.0157
  %15 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool18.not = icmp eq i32 %16, 0
  br i1 %tobool18.not, label %for.end, label %do.body22

do.body22:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fw_handle_brd_file.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fw_handle_brd_file, %if.then27)) #8
          to label %do.end36 [label %if.then27], !srcloc !199

if.then27:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %main_ndev, align 4
  %19 = ptrtoint ptr %brd_info to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %brd_info, align 4
  %arrayidx29 = getelementptr %struct.wil_brd_info, ptr %20, i32 %i.0157
  %21 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx29, align 4
  %file_max_size33 = getelementptr %struct.wil_brd_info, ptr %20, i32 %i.0157, i32 1
  %23 = ptrtoint ptr %file_max_size33 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %file_max_size33, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @fw_handle_brd_file.__UNIQUE_ID_ddebug351, ptr noundef %18, ptr noundef nonnull @.str.31, i32 noundef %i.0157, i32 noundef %22, i32 noundef %24) #8
  br label %do.end36

do.end36:                                         ; preds = %if.then27, %do.body22
  %25 = ptrtoint ptr %brd_info to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %brd_info, align 4
  %arrayidx38 = getelementptr %struct.wil_brd_info, ptr %26, i32 %i.0157
  %27 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx38, align 4
  %file_max_size42 = getelementptr %struct.wil_brd_info, ptr %26, i32 %i.0157, i32 1
  %29 = ptrtoint ptr %file_max_size42 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %file_max_size42, align 4
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.31, i32 noundef %i.0157, i32 noundef %28, i32 noundef %30) #8
  %inc = add nuw nsw i32 %i.0157, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.end.thread, label %do.end36.for.body_crit_edge

do.end36.for.body_crit_edge:                      ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end.thread:                                   ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #10
  %num_of_brd_entries168 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 13
  %31 = ptrtoint ptr %num_of_brd_entries168 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %umax, ptr %num_of_brd_entries168, align 16
  br label %do.body75

for.end:                                          ; preds = %for.body
  %num_of_brd_entries = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 13
  %32 = ptrtoint ptr %num_of_brd_entries to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %i.0157, ptr %num_of_brd_entries, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0157)
  %cmp46 = icmp eq i32 %i.0157, 0
  br i1 %cmp46, label %if.then47, label %for.end.do.body75_crit_edge

for.end.do.body75_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body75

if.then47:                                        ; preds = %for.end
  %33 = ptrtoint ptr %brd_info to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %brd_info, align 4
  tail call void @kfree(ptr noundef %34) #8
  %35 = ptrtoint ptr %brd_info to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %brd_info, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fw_handle_brd_file.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fw_handle_brd_file, %if.then64)) #8
          to label %do.end70 [label %if.then64], !srcloc !199

if.then64:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  %main_ndev65 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %36 = ptrtoint ptr %main_ndev65 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %main_ndev65, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @fw_handle_brd_file.__UNIQUE_ID_ddebug352, ptr noundef %37, ptr noundef nonnull @.str.32) #8
  br label %do.end70

do.end70:                                         ; preds = %if.then64, %if.then47
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.32) #8
  br label %cleanup

do.body75:                                        ; preds = %for.end.do.body75_crit_edge, %for.end.thread
  %num_of_brd_entries170 = phi ptr [ %num_of_brd_entries168, %for.end.thread ], [ %num_of_brd_entries, %for.end.do.body75_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fw_handle_brd_file.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fw_handle_brd_file, %if.then87)) #8
          to label %do.end94 [label %if.then87], !srcloc !199

if.then87:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #10
  %main_ndev88 = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %38 = ptrtoint ptr %main_ndev88 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %main_ndev88, align 4
  %40 = ptrtoint ptr %num_of_brd_entries170 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_of_brd_entries170, align 16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @fw_handle_brd_file.__UNIQUE_ID_ddebug353, ptr noundef %39, ptr noundef nonnull @.str.33, i32 noundef %41) #8
  br label %do.end94

do.end94:                                         ; preds = %if.then87, %do.body75
  %42 = ptrtoint ptr %num_of_brd_entries170 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_of_brd_entries170, align 16
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.33, i32 noundef %43) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end94, %do.end70, %if.end7.i.i.cleanup_crit_edge, %if.then1, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then1 ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ 0, %do.end94 ], [ 0, %do.end70 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wil_cfg80211_iface_combinations_from_fw(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__fw_handle_data(ptr noundef %wil, ptr noundef %data, i32 noundef %size, i32 noundef %addr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %size, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %size)
  %cmp = icmp ult i32 %size, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.__fw_handle_data, i32 noundef %size) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @wmi_buffer_block(ptr noundef %wil, i32 noundef %addr, i32 noundef %sub) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %wil_fw_addr_check.exit, label %do.body4

wil_fw_addr_check.exit:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %0 = tail call i32 @llvm.bswap.i32(i32 %addr) #8
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.wil_fw_addr_check, ptr noundef nonnull @.str.37, i32 noundef %0) #8
  br label %cleanup

do.body4:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__fw_handle_data.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__fw_handle_data, %if.then8)) #8
          to label %do.end11 [label %if.then8], !srcloc !199

if.then8:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  %main_ndev = getelementptr inbounds %struct.wil6210_priv, ptr %wil, i32 0, i32 3
  %1 = ptrtoint ptr %main_ndev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %main_ndev, align 4
  %3 = tail call i32 @llvm.bswap.i32(i32 %addr)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__fw_handle_data.__UNIQUE_ID_ddebug358, ptr noundef %2, ptr noundef nonnull @.str.38, i32 noundef %3, i32 noundef %sub) #8
  br label %do.end11

do.end11:                                         ; preds = %if.then8, %do.body4
  %4 = tail call i32 @llvm.bswap.i32(i32 %addr)
  tail call void (ptr, ptr, ...) @wil_dbg_trace(ptr noundef %wil, ptr noundef nonnull @.str.38, i32 noundef %4, i32 noundef %sub) #8
  %data14 = getelementptr inbounds %struct.wil_fw_record_data, ptr %data, i32 0, i32 1
  tail call void @wil_memcpy_toio_32(ptr noundef nonnull %call.i, ptr noundef %data14, i32 noundef %sub) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !208
  tail call void @arm_heavy_mb() #8
  br label %cleanup

cleanup:                                          ; preds = %do.end11, %wil_fw_addr_check.exit, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %do.end11 ], [ -22, %wil_fw_addr_check.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wil_memcpy_toio_32(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wmi_buffer_block(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gw_write(ptr noundef %wil, ptr noundef %gwa_addr, ptr noundef %gwa_cmd, ptr noundef %gwa_ctl, i32 noundef %gw_cmd, i32 noundef %a) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !209
  tail call void @arm_heavy_mb() #8
  %0 = tail call i32 @llvm.bswap.i32(i32 %a)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %gwa_addr, i32 %0) #8, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !210
  tail call void @arm_heavy_mb() #8
  %1 = tail call i32 @llvm.bswap.i32(i32 %gw_cmd)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %gwa_cmd, i32 %1) #8, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !211
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !212
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %gwa_ctl, i32 64) #8, !srcloc !200
  br label %do.body10

do.body10:                                        ; preds = %do.cond11.do.body10_crit_edge, %entry
  %delay.0 = phi i32 [ 0, %entry ], [ %inc, %do.cond11.do.body10_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 101, i32 %delay.0)
  %exitcond = icmp eq i32 %delay.0, 101
  br i1 %exitcond, label %if.then, label %do.cond11

if.then:                                          ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__wil_err(ptr noundef %wil, ptr noundef nonnull @.str.58, ptr noundef nonnull @__func__.gw_write) #8
  br label %cleanup

do.cond11:                                        ; preds = %do.body10
  %inc = add nuw nsw i32 %delay.0, 1
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %gwa_ctl) #8, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !213
  %4 = and i32 %3, 32
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %do.cond11.cleanup_crit_edge, label %do.cond11.do.body10_crit_edge

do.cond11.do.body10_crit_edge:                    ; preds = %do.cond11
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body10

do.cond11.cleanup_crit_edge:                      ; preds = %do.cond11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %do.cond11.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %do.cond11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind readonly willreturn }
attributes #12 = { nobuiltin }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !16, !17, !18, !20, !22, !23, !25, !27, !28, !29, !31, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !51, !53, !55, !57, !58, !60, !62, !63, !64, !66, !67, !69, !70, !72, !73, !74, !76, !77, !79, !80, !82, !83, !85, !87, !88, !90, !91, !93, !94, !96, !97, !99, !101, !102, !104, !106, !107, !109, !110, !112, !113, !115, !117, !119, !120, !122, !123, !125, !126, !128, !130, !132, !133, !135, !136, !138, !139, !141, !143, !144, !146, !148, !150, !152, !154, !155, !157, !158, !160, !161, !163, !164, !166, !168, !169, !171, !172, !174, !175, !177, !178, !180, !181, !183, !184, !186, !188}
!llvm.module.flags = !{!189, !190, !191, !192, !193, !194, !195, !196}
!llvm.ident = !{!197}

!0 = !{ptr @__UNIQUE_ID_firmware343, !1, !"__UNIQUE_ID_firmware343", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/wil6210/fw.c", i32 12, i32 1}
!2 = !{ptr @__UNIQUE_ID_firmware344, !3, !"__UNIQUE_ID_firmware344", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/wil6210/fw.c", i32 13, i32 1}
!4 = !{ptr @__UNIQUE_ID_firmware345, !5, !"__UNIQUE_ID_firmware345", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/wil6210/fw.c", i32 14, i32 1}
!6 = !{ptr @__UNIQUE_ID_firmware346, !7, !"__UNIQUE_ID_firmware346", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/wil6210/fw.c", i32 15, i32 1}
!8 = !{ptr @__UNIQUE_ID_firmware347, !9, !"__UNIQUE_ID_firmware347", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/wil6210/fw.c", i32 16, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 656, i32 3}
!12 = !{ptr @__func__.wil_request_firmware, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 659, i32 2}
!15 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @wil_request_firmware.__UNIQUE_ID_ddebug373, !14, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 680, i32 3}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 788, i32 3}
!22 = !{ptr @__func__.wil_request_board, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @wil_request_board.__UNIQUE_ID_ddebug375, !24, !"__UNIQUE_ID_ddebug375", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 791, i32 2}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 827, i32 3}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @wil_fw_verify_file_exists.__UNIQUE_ID_ddebug376, !26, !"__UNIQUE_ID_ddebug376", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 48, i32 3}
!31 = !{ptr @__func__.wil_fw_verify, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 53, i32 3}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 59, i32 3}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 67, i32 3}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 71, i32 3}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 76, i32 3}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 82, i32 3}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 89, i32 3}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 105, i32 3}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 614, i32 4}
!50 = !{ptr @__func__.wil_fw_process, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 624, i32 3}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 626, i32 4}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 587, i32 2}
!57 = !{ptr @__func__.wil_fw_handle_record, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @wil_fw_handlers, !59, !"wil_fw_handlers", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 560, i32 3}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 251, i32 3}
!62 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @fw_handle_comment.__UNIQUE_ID_ddebug354, !61, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 255, i32 3}
!66 = !{ptr @fw_handle_comment.__UNIQUE_ID_ddebug355, !65, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!67 = !{ptr @.str.24, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 259, i32 3}
!69 = !{ptr @fw_handle_comment.__UNIQUE_ID_ddebug356, !68, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!70 = !{ptr @.str.25, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 263, i32 3}
!72 = !{ptr @fw_handle_comment.__UNIQUE_ID_ddebug357, !71, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!73 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!74 = distinct !{null, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 128, i32 3}
!76 = !{ptr @__func__.fw_handle_capabilities, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.28, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 138, i32 2}
!79 = !{ptr @fw_handle_capabilities.__UNIQUE_ID_ddebug350, !78, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!80 = !{ptr @.str.29, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 151, i32 3}
!82 = !{ptr @__func__.fw_handle_brd_file, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.30, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 159, i32 3}
!85 = !{ptr @.str.31, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 177, i32 3}
!87 = !{ptr @fw_handle_brd_file.__UNIQUE_ID_ddebug351, !86, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!88 = !{ptr @.str.32, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 187, i32 3}
!90 = !{ptr @fw_handle_brd_file.__UNIQUE_ID_ddebug352, !89, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!91 = !{ptr @.str.33, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 191, i32 3}
!93 = !{ptr @fw_handle_brd_file.__UNIQUE_ID_ddebug353, !92, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!94 = !{ptr @.str.34, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 209, i32 3}
!96 = !{ptr @__func__.fw_handle_concurrency, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.35, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 232, i32 2}
!99 = !{ptr @.str.36, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 278, i32 3}
!101 = !{ptr @__func__.__fw_handle_data, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.37, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 282, i32 45}
!104 = !{ptr @.str.38, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 284, i32 2}
!106 = !{ptr @__fw_handle_data.__UNIQUE_ID_ddebug358, !105, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!107 = !{ptr @.str.39, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 25, i32 3}
!109 = !{ptr @__func__.wil_fw_addr_check, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.40, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 308, i32 3}
!112 = !{ptr @__func__.fw_handle_fill, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.41, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 313, i32 3}
!115 = !{ptr @.str.42, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 318, i32 3}
!117 = !{ptr @.str.43, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 326, i32 2}
!119 = !{ptr @fw_handle_fill.__UNIQUE_ID_ddebug359, !118, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!120 = !{ptr @.str.44, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 340, i32 3}
!122 = !{ptr @__func__.fw_handle_file_header, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.45, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 344, i32 2}
!125 = !{ptr @fw_handle_file_header.__UNIQUE_ID_ddebug360, !124, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!126 = !{ptr @fw_handle_file_header.__UNIQUE_ID_ddebug361, !127, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 346, i32 2}
!128 = !{ptr @.str.46, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 349, i32 26}
!130 = !{ptr @.str.47, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 367, i32 3}
!132 = !{ptr @__func__.fw_handle_direct_write, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.48, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 384, i32 3}
!135 = !{ptr @fw_handle_direct_write.__UNIQUE_ID_ddebug364, !134, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!136 = !{ptr @.str.49, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 429, i32 3}
!138 = !{ptr @__func__.fw_handle_gateway_data, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.50, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 434, i32 3}
!141 = !{ptr @.str.51, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 443, i32 2}
!143 = !{ptr @fw_handle_gateway_data.__UNIQUE_ID_ddebug365, !142, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!144 = !{ptr @.str.52, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 447, i32 11}
!146 = !{ptr @.str.53, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 449, i32 11}
!148 = !{ptr @.str.54, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 451, i32 11}
!150 = !{ptr @.str.55, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 453, i32 11}
!152 = !{ptr @.str.56, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 456, i32 2}
!154 = !{ptr @fw_handle_gateway_data.__UNIQUE_ID_ddebug366, !153, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!155 = !{ptr @.str.57, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 468, i32 3}
!157 = !{ptr @fw_handle_gateway_data.__UNIQUE_ID_ddebug367, !156, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!158 = !{ptr @.str.58, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 408, i32 4}
!160 = !{ptr @__func__.gw_write, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.59, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 493, i32 3}
!163 = !{ptr @__func__.fw_handle_gateway_data4, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @.str.60, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 498, i32 3}
!166 = !{ptr @.str.61, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 507, i32 2}
!168 = !{ptr @fw_handle_gateway_data4.__UNIQUE_ID_ddebug368, !167, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!169 = !{ptr @.str.62, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 524, i32 2}
!171 = !{ptr @fw_handle_gateway_data4.__UNIQUE_ID_ddebug369, !170, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!172 = !{ptr @.str.63, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 528, i32 2}
!174 = !{ptr @fw_handle_gateway_data4.__UNIQUE_ID_ddebug370, !173, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!175 = !{ptr @.str.64, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 540, i32 3}
!177 = !{ptr @fw_handle_gateway_data4.__UNIQUE_ID_ddebug371, !176, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!178 = !{ptr @.str.65, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 541, i32 3}
!180 = !{ptr @fw_handle_gateway_data4.__UNIQUE_ID_ddebug372, !179, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!181 = !{ptr @.str.66, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 716, i32 4}
!183 = !{ptr @__func__.wil_brd_process, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @.str.67, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 736, i32 4}
!186 = !{ptr @.str.68, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/wireless/ath/wil6210/fw_inc.c", i32 746, i32 3}
!188 = !{ptr @wil_brd_process.__UNIQUE_ID_ddebug374, !187, !"__UNIQUE_ID_ddebug374", i1 false, i1 false}
!189 = !{i32 1, !"wchar_size", i32 2}
!190 = !{i32 1, !"min_enum_size", i32 4}
!191 = !{i32 8, !"branch-target-enforcement", i32 0}
!192 = !{i32 8, !"sign-return-address", i32 0}
!193 = !{i32 8, !"sign-return-address-all", i32 0}
!194 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!195 = !{i32 7, !"uwtable", i32 1}
!196 = !{i32 7, !"frame-pointer", i32 2}
!197 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!198 = !{!"auto-init"}
!199 = !{i64 2148179065, i64 2148179070, i64 2148179083, i64 2148179127, i64 2148179161, i64 2148179182}
!200 = !{i64 6306694}
!201 = !{i64 2157284783}
!202 = !{i64 6307112}
!203 = !{i64 2157294036}
!204 = !{i64 2157297963}
!205 = !{i64 2157298266}
!206 = !{i64 2157313263}
!207 = !{i64 2157332942}
!208 = !{i64 2157280614}
!209 = !{i64 2157298469}
!210 = !{i64 2157298836}
!211 = !{i64 2157299158}
!212 = !{i64 2157299471}
!213 = !{i64 2157300827}
