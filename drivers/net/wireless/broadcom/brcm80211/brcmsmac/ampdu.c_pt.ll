; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/brcm80211/brcmsmac/ampdu.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/brcm80211/brcmsmac/ampdu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.brcms_mcs_info = type { i32, i32, i32, i32, i8, i8 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.91 }
%struct.atomic_t = type { i32 }
%union.anon.91 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.ampdu_info = type { ptr, i32, [8 x i8], i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i32, [33 x [2 x [2 x i32]]], i8, i32, [4 x %struct.brcms_fifo_info] }
%struct.brcms_fifo_info = type { i16, [24 x i8], i16, i32, i32, i32, i32 }
%struct.brcms_c_info = type { ptr, ptr, ptr, i16, i32, i32, i32, i8, ptr, ptr, ptr, [2 x ptr], i32, ptr, ptr, ptr, i16, i16, i32, [6 x i8], i8, i8, i8, i8, i8, ptr, ptr, i32, i8, i8, i8, i8, i32, [4 x i16], [4 x i16], ptr, ptr, i8, i8, i8, i8, ptr, i16, [4 x i8], [4 x i8], i16, i16, i16, i16, [6 x i16], i16, i16, i16, i16, i16, i8, i8, i8, ptr, i8, ptr, i32, i32, i16, i16, ptr, %struct.scb, ptr, ptr, i16, i16, ptr }
%struct.scb = type { i32, i32, i32, i8, [6 x i8], [8 x i32], [8 x i16], i16, [8 x i16], %struct.scb_ampdu }
%struct.scb_ampdu = type { ptr, i8, i8, i8, i16, i32, [8 x %struct.scb_ampdu_tid_ini] }
%struct.scb_ampdu_tid_ini = type { i8, [64 x i8], ptr, i8 }
%struct.brcms_band = type { i32, i32, i16, i16, i16, i16, ptr, i8, i8, ptr, %struct.brcms_c_rateset, i8, i8, %struct.brcms_c_rateset, [109 x i8], i8, i8, i16, i16, %struct.ieee80211_supported_band }
%struct.brcms_c_rateset = type { i32, [16 x i8], i8, [16 x i8] }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.brcms_pub = type { ptr, ptr, ptr, i32, i32, i32, ptr, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, [6 x i8], i32, i16, i8, [4 x i8], i32, i32, i8, ptr, ptr }
%struct.brcms_hardware = type { i8, ptr, [6 x ptr], i32, i16, i16, i32, i8, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i16, i8, i16, i16, i16, i16, i8, i32, i32, i16, [6 x ptr], ptr, i32, i8, i32, i32, i32, i32, [6 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.bcma_device = type { ptr, %struct.bcma_device_id, %struct.device, ptr, i32, i8, i8, i8, i32, [8 x i32], i32, ptr, ptr, ptr, %struct.list_head }
%struct.bcma_device_id = type { i16, i16, i8, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.brcms_ampdu_session = type { ptr, %struct.sk_buff_head, i32, i16, i16, i16 }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.sk_buff = type { %union.anon.40, %union.anon.43, %union.anon.44, [48 x i8], %union.anon.45, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.47, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, ptr, %union.anon.42 }
%union.anon.42 = type { ptr }
%union.anon.43 = type { ptr }
%union.anon.44 = type { i64 }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { i32, ptr }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.49, i32, i32, i32, i16, i16, %union.anon.51, i32, %union.anon.52, %union.anon.53, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.49 = type { i32 }
%union.anon.51 = type { i32 }
%union.anon.52 = type { i32 }
%union.anon.53 = type { i16 }
%struct.d11txh = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [16 x i8], [6 x i8], i16, [6 x i8], i16, [6 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i8], %struct.ieee80211_rts, i16 }
%struct.ieee80211_rts = type { i16, i16, [6 x i8], [6 x i8] }
%struct.tx_status = type { i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.bcma_bus = type { ptr, ptr, ptr, i32, i8, ptr, %struct.bcma_chipinfo, %struct.bcma_boardinfo, ptr, %struct.list_head, i8, i8, %struct.bcma_drv_cc, %struct.bcma_drv_cc_b, [2 x %struct.bcma_drv_pci], %struct.bcma_drv_pcie2, %struct.bcma_drv_mips, %struct.bcma_drv_gmac_cmn, %struct.ssb_sprom }
%struct.bcma_chipinfo = type { i16, i8, i8 }
%struct.bcma_boardinfo = type { i16, i16 }
%struct.bcma_drv_cc = type { ptr, i32, i32, i32, i8, i16, %struct.bcma_chipcommon_pmu, %struct.bcma_pflash, %struct.bcma_sflash, %struct.bcma_nflash, i32, [4 x %struct.bcma_serial_port], i32, ptr, %struct.spinlock, %struct.gpio_chip }
%struct.bcma_chipcommon_pmu = type { ptr, i8, i32 }
%struct.bcma_pflash = type { i8 }
%struct.bcma_sflash = type { i8, i32, i16, i32 }
%struct.bcma_nflash = type { i8, i8 }
%struct.bcma_serial_port = type { ptr, i32, i32, i32, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.131, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.131 = type { ptr }
%struct.bcma_drv_cc_b = type { ptr, i8, ptr }
%struct.bcma_drv_pci = type { ptr, i8 }
%struct.bcma_drv_pcie2 = type { ptr, i16 }
%struct.bcma_drv_mips = type { ptr, i8 }
%struct.bcma_drv_gmac_cmn = type { ptr, %struct.mutex }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.132, %struct.anon.133, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.132 = type { i8, i8, i8, i8 }
%struct.anon.133 = type { %struct.anon.134, %struct.anon.135 }
%struct.anon.134 = type { i8, i8, i8, i8, i8 }
%struct.anon.135 = type { i8, i8, i8, i8, i8 }
%struct.bcma_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.brcms_bss_info = type { [6 x i8], i16, i8, [32 x i8], i16, i16, i16, i16, %struct.brcms_c_rateset }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ieee80211_tx_info = type { i32, i32, %union.anon.139 }
%union.anon.139 = type { %struct.anon.143, [32 x i8] }
%struct.anon.143 = type { i64 }

@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: Rejecting tid %d\0A\00", [42 x i8] zeroinitializer }, align 32
@__func__.brcms_c_ampdu_tx_operational = private unnamed_addr constant [29 x i8] c"brcms_c_ampdu_tx_operational\00", align 1
@__func__.brcms_c_ampdu_finalize = private unnamed_addr constant [23 x i8] c"brcms_c_ampdu_finalize\00", align 1
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"wl%d: count %d ampdu_len %d\0A\00", [35 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"wl%d: driver not nmode enabled\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"wl%d: device not ampdu capable\0A\00", [32 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@mcs_table = external dso_local local_unnamed_addr constant [0 x %struct.brcms_mcs_info], align 4
@.str.5 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"drivers/net/wireless/broadcom/brcm80211/brcmsmac/ampdu.c\00", [39 x i8] zeroinitializer }, align 32
@__func__.brcms_c_ampdu_dotxstatus_complete = private unnamed_addr constant [34 x i8] c"brcms_c_ampdu_dotxstatus_complete\00", align 1
@.str.6 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: Pkt tx suppressed, illegal channel possibly %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: supr_status 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: ampdu tx phy error (0x%x)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"tid %d seq %d, start_seq %d, bindex %d set %d, index %d\0A\00", [39 x i8] zeroinitializer }, align 32
@brcms_c_ampdu_dotxstatus_complete.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"queue %d out of txds\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"BA Timeout, seq %d\0A\00", [44 x i8] zeroinitializer }, align 32
@__func__.brcms_c_ffpld_check_txfunfl = private unnamed_addr constant [28 x i8] c"brcms_c_ffpld_check_txfunfl\00", align 1
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"TX status FRAG set but no tx underflows\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ampdu_count %d  tx_underflows %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"DMA estimated transfer rate %d; pre-load size %d\0A\00", [46 x i8] zeroinitializer }, align 32
@__tracepoint_brcms_txdesc = external dso_local global %struct.tracepoint, align 4
@.str.15 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"drivers/net/wireless/broadcom/brcm80211/brcmsmac/brcms_trace_brcmsmac_tx.h\00", [53 x i8] zeroinitializer }, align 32
@trace_brcms_txdesc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 4, i64 6, i64 8]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 16, i64 46080, i64 50176]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 16, i64 46080, i64 50176]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 12, i64 16]
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 489, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 813, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 190, i32 4 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 195, i32 4 }
@___asan_gen_.33 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 1984, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 870, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 894, i32 5 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 900, i32 6 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 920, i32 4 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 952, i32 4 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 992, i32 5 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 1002, i32 5 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 375, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 398, i32 2 }
@___asan_gen_.67 = private constant [60 x i8] c"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/ampdu.c\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 452, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [78 x i8] c"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/brcms_trace_brcmsmac_tx.h\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 25, i32 1 }
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 108, i32 2 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @skb_queue_head_init.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @brcms_c_ampdu_attach(ptr noundef %wlc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 756) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %wlc, ptr %call7.i.i, align 8
  %uglygep = getelementptr i8, ptr %call7.i.i, i32 8
  %2 = ptrtoint ptr %uglygep to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 72057598349737984, ptr %uglygep, align 8
  %ba_tx_wsize = getelementptr inbounds %struct.ampdu_info, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %ba_tx_wsize to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 64, ptr %ba_tx_wsize, align 8
  %ba_rx_wsize = getelementptr inbounds %struct.ampdu_info, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %ba_rx_wsize to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 64, ptr %ba_rx_wsize, align 1
  %mpdu_density = getelementptr inbounds %struct.ampdu_info, ptr %call7.i.i, i32 0, i32 9
  %5 = ptrtoint ptr %mpdu_density to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 6, ptr %mpdu_density, align 4
  %max_pdu = getelementptr inbounds %struct.ampdu_info, ptr %call7.i.i, i32 0, i32 10
  %6 = ptrtoint ptr %max_pdu to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %max_pdu, align 1
  %dur = getelementptr inbounds %struct.ampdu_info, ptr %call7.i.i, i32 0, i32 11
  %7 = ptrtoint ptr %dur to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 5, ptr %dur, align 2
  %ffpld_rsvd = getelementptr inbounds %struct.ampdu_info, ptr %call7.i.i, i32 0, i32 13
  %8 = ptrtoint ptr %ffpld_rsvd to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2048, ptr %ffpld_rsvd, align 8
  %band = getelementptr inbounds %struct.brcms_c_info, ptr %wlc, i32 0, i32 9
  %9 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %band, align 4
  %phytype = getelementptr inbounds %struct.brcms_band, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %phytype to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %phytype, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %12)
  %cmp10 = icmp eq i16 %12, 4
  br i1 %cmp10, label %land.lhs.true, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %phyrev = getelementptr inbounds %struct.brcms_band, ptr %10, i32 0, i32 3
  %13 = ptrtoint ptr %phyrev to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %phyrev, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %14)
  %cmp14 = icmp ult i16 %14, 2
  br i1 %cmp14, label %land.lhs.true.if.end18_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  br label %if.end18

if.end18:                                         ; preds = %if.else, %land.lhs.true.if.end18_crit_edge
  %.sink = phi i8 [ 3, %if.else ], [ 2, %land.lhs.true.if.end18_crit_edge ]
  %rx_factor17 = getelementptr inbounds %struct.ampdu_info, ptr %call7.i.i, i32 0, i32 12
  %15 = ptrtoint ptr %rx_factor17 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %.sink, ptr %rx_factor17, align 1
  %retry_limit = getelementptr inbounds %struct.ampdu_info, ptr %call7.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %retry_limit to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 5, ptr %retry_limit, align 2
  %rr_retry_limit = getelementptr inbounds %struct.ampdu_info, ptr %call7.i.i, i32 0, i32 6
  %17 = ptrtoint ptr %rr_retry_limit to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 2, ptr %rr_retry_limit, align 1
  %arrayidx24 = getelementptr %struct.ampdu_info, ptr %call7.i.i, i32 0, i32 7, i32 0
  %18 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 5, ptr %arrayidx24, align 4
  %arrayidx26 = getelementptr %struct.ampdu_info, ptr %call7.i.i, i32 0, i32 8, i32 0
  %19 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 2, ptr %arrayidx26, align 4
  %arrayidx24.1 = getelementptr %struct.ampdu_info, ptr %call7.i.i, i32 0, i32 7, i32 1
  %20 = ptrtoint ptr %arrayidx24.1 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 5, ptr %arrayidx24.1, align 1
  %arrayidx26.1 = getelementptr %struct.ampdu_info, ptr %call7.i.i, i32 0, i32 8, i32 1
  %21 = ptrtoint ptr %arrayidx26.1 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 2, ptr %arrayidx26.1, align 1
  %arrayidx24.2 = getelementptr %struct.ampdu_info, ptr %call7.i.i, i32 0, i32 7, i32 2
  %22 = ptrtoint ptr %arrayidx24.2 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 5, ptr %arrayidx24.2, align 2
  %arrayidx26.2 = getelementptr %struct.ampdu_info, ptr %call7.i.i, i32 0, i32 8, i32 2
  %23 = ptrtoint ptr %arrayidx26.2 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 2, ptr %arrayidx26.2, align 2
  %arrayidx24.3 = getelementptr %struct.ampdu_info, ptr %call7.i.i, i32 0, i32 7, i32 3
  %24 = ptrtoint ptr %arrayidx24.3 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 5, ptr %arrayidx24.3, align 1
  %arrayidx26.3 = getelementptr %struct.ampdu_info, ptr %call7.i.i, i32 0, i32 8, i32 3
  %25 = ptrtoint ptr %arrayidx26.3 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 2, ptr %arrayidx26.3, align 1
  %arrayidx24.4 = getelementptr %struct.ampdu_info, ptr %call7.i.i, i32 0, i32 7, i32 4
  %26 = ptrtoint ptr %arrayidx24.4 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 5, ptr %arrayidx24.4, align 8
  %arrayidx26.4 = getelementptr %struct.ampdu_info, ptr %call7.i.i, i32 0, i32 8, i32 4
  %27 = ptrtoint ptr %arrayidx26.4 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 2, ptr %arrayidx26.4, align 8
  %arrayidx24.5 = getelementptr %struct.ampdu_info, ptr %call7.i.i, i32 0, i32 7, i32 5
  %28 = ptrtoint ptr %arrayidx24.5 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 5, ptr %arrayidx24.5, align 1
  %arrayidx26.5 = getelementptr %struct.ampdu_info, ptr %call7.i.i, i32 0, i32 8, i32 5
  %29 = ptrtoint ptr %arrayidx26.5 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 2, ptr %arrayidx26.5, align 1
  %arrayidx24.6 = getelementptr %struct.ampdu_info, ptr %call7.i.i, i32 0, i32 7, i32 6
  %30 = ptrtoint ptr %arrayidx24.6 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 5, ptr %arrayidx24.6, align 2
  %arrayidx26.6 = getelementptr %struct.ampdu_info, ptr %call7.i.i, i32 0, i32 8, i32 6
  %31 = ptrtoint ptr %arrayidx26.6 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 2, ptr %arrayidx26.6, align 2
  %arrayidx24.7 = getelementptr %struct.ampdu_info, ptr %call7.i.i, i32 0, i32 7, i32 7
  %32 = ptrtoint ptr %arrayidx24.7 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 5, ptr %arrayidx24.7, align 1
  %arrayidx26.7 = getelementptr %struct.ampdu_info, ptr %call7.i.i, i32 0, i32 8, i32 7
  %33 = ptrtoint ptr %arrayidx26.7 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 2, ptr %arrayidx26.7, align 1
  %34 = ptrtoint ptr %dur to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %dur, align 2
  %conv1.i = zext i8 %35 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end18
  %mcs.055.i = phi i32 [ 0, %if.end18 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx13.i.i = getelementptr [0 x %struct.brcms_mcs_info], ptr @mcs_table, i32 0, i32 %mcs.055.i
  %36 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %retval.0.i.i = load i32, ptr %arrayidx13.i.i, align 4
  %mul.i = mul i32 %retval.0.i.i, %conv1.i
  %shr.i = lshr i32 %mul.i, 3
  %arrayidx.i = getelementptr %struct.ampdu_info, ptr %call7.i.i, i32 0, i32 14, i32 %mcs.055.i
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %shr.i, ptr %arrayidx.i, align 4
  %phy_rate_40.i.i = getelementptr [0 x %struct.brcms_mcs_info], ptr @mcs_table, i32 0, i32 %mcs.055.i, i32 1
  %38 = ptrtoint ptr %phy_rate_40.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %retval.0.i50.i = load i32, ptr %phy_rate_40.i.i, align 4
  %mul7.i = mul i32 %retval.0.i50.i, %conv1.i
  %shr8.i = lshr i32 %mul7.i, 3
  %arrayidx11.i = getelementptr %struct.ampdu_info, ptr %call7.i.i, i32 0, i32 14, i32 %mcs.055.i, i32 1
  %39 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %shr8.i, ptr %arrayidx11.i, align 4
  %phy_rate_20_sgi.i.i = getelementptr [0 x %struct.brcms_mcs_info], ptr @mcs_table, i32 0, i32 %mcs.055.i, i32 2
  %40 = ptrtoint ptr %phy_rate_20_sgi.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %retval.0.i52.i = load i32, ptr %phy_rate_20_sgi.i.i, align 4
  %mul16.i = mul i32 %retval.0.i52.i, %conv1.i
  %shr17.i = lshr i32 %mul16.i, 3
  %arrayidx21.i = getelementptr [2 x i32], ptr %arrayidx.i, i32 0, i32 1
  %41 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %shr17.i, ptr %arrayidx21.i, align 8
  %phy_rate_40_sgi.i.i = getelementptr [0 x %struct.brcms_mcs_info], ptr @mcs_table, i32 0, i32 %mcs.055.i, i32 3
  %42 = ptrtoint ptr %phy_rate_40_sgi.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %retval.0.i54.i = load i32, ptr %phy_rate_40_sgi.i.i, align 4
  %mul25.i = mul i32 %retval.0.i54.i, %conv1.i
  %shr26.i = lshr i32 %mul25.i, 3
  %arrayidx30.i = getelementptr %struct.ampdu_info, ptr %call7.i.i, i32 0, i32 14, i32 %mcs.055.i, i32 1, i32 1
  %43 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %shr26.i, ptr %arrayidx30.i, align 8
  %inc.i = add nuw nsw i32 %mcs.055.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 33
  br i1 %exitcond.not.i, label %brcms_c_scb_ampdu_update_max_txlen.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

brcms_c_scb_ampdu_update_max_txlen.exit:          ; preds = %for.body.i
  %mfbr = getelementptr inbounds %struct.ampdu_info, ptr %call7.i.i, i32 0, i32 15
  %44 = ptrtoint ptr %mfbr to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %mfbr, align 4
  %45 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %wlc, align 4
  %_ampdu = getelementptr inbounds %struct.brcms_pub, ptr %46, i32 0, i32 15
  %47 = ptrtoint ptr %_ampdu to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %_ampdu, align 2, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool31.not = icmp eq i8 %48, 0
  %49 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %call7.i.i, align 8
  %hw.i = getelementptr inbounds %struct.brcms_c_info, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hw.i, align 4
  %d11core.i = getelementptr inbounds %struct.brcms_hardware, ptr %52, i32 0, i32 14
  %53 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %d11core.i, align 4
  %55 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %50, align 4
  %_ampdu.i = getelementptr inbounds %struct.brcms_pub, ptr %56, i32 0, i32 15
  %57 = ptrtoint ptr %_ampdu.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %_ampdu.i, align 2
  br i1 %tobool31.not, label %brcms_c_scb_ampdu_update_max_txlen.exit.brcms_c_ampdu_set.exit_crit_edge, label %if.then.i

brcms_c_scb_ampdu_update_max_txlen.exit.brcms_c_ampdu_set.exit_crit_edge: ; preds = %brcms_c_scb_ampdu_update_max_txlen.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcms_c_ampdu_set.exit

if.then.i:                                        ; preds = %brcms_c_scb_ampdu_update_max_txlen.exit
  %58 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %50, align 4
  %_n_enab.i = getelementptr inbounds %struct.brcms_pub, ptr %59, i32 0, i32 16
  %60 = ptrtoint ptr %_n_enab.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %_n_enab.i, align 1
  %62 = and i8 %61, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool3.not.i = icmp eq i8 %62, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.bcma_device, ptr %54, i32 0, i32 2
  %unit.i = getelementptr inbounds %struct.brcms_pub, ptr %59, i32 0, i32 4
  %63 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %unit.i, align 4
  tail call void (ptr, ptr, ...) @__brcms_err(ptr noundef %dev.i, ptr noundef nonnull @.str.2, i32 noundef %64) #9
  br label %brcms_c_ampdu_set.exit

if.end.i:                                         ; preds = %if.then.i
  %65 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %call7.i.i, align 8
  %band.i.i = getelementptr inbounds %struct.brcms_c_info, ptr %66, i32 0, i32 9
  %67 = ptrtoint ptr %band.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %band.i.i, align 4
  %phytype.i.i = getelementptr inbounds %struct.brcms_band, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %phytype.i.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %phytype.i.i, align 4
  %71 = zext i16 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values)
  switch i16 %70, label %if.then6.i [
    i16 4, label %if.end.i.if.end10.i_crit_edge
    i16 8, label %if.end.i.if.end10.i_crit_edge72
    i16 6, label %if.end.i.if.end10.i_crit_edge73
  ]

if.end.i.if.end10.i_crit_edge73:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.end.i.if.end10.i_crit_edge72:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev7.i = getelementptr inbounds %struct.bcma_device, ptr %54, i32 0, i32 2
  %unit9.i = getelementptr inbounds %struct.brcms_pub, ptr %59, i32 0, i32 4
  %72 = ptrtoint ptr %unit9.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %unit9.i, align 4
  tail call void (ptr, ptr, ...) @__brcms_err(ptr noundef %dev7.i, ptr noundef nonnull @.str.3, i32 noundef %73) #9
  br label %brcms_c_ampdu_set.exit

if.end10.i:                                       ; preds = %if.end.i.if.end10.i_crit_edge, %if.end.i.if.end10.i_crit_edge72, %if.end.i.if.end10.i_crit_edge73
  %_ampdu13.i = getelementptr inbounds %struct.brcms_pub, ptr %59, i32 0, i32 15
  %74 = ptrtoint ptr %_ampdu13.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %48, ptr %_ampdu13.i, align 2
  br label %brcms_c_ampdu_set.exit

brcms_c_ampdu_set.exit:                           ; preds = %if.end10.i, %if.then6.i, %if.then4.i, %brcms_c_scb_ampdu_update_max_txlen.exit.brcms_c_ampdu_set.exit_crit_edge
  %tx_max_funl = getelementptr inbounds %struct.ampdu_info, ptr %call7.i.i, i32 0, i32 16
  %75 = ptrtoint ptr %tx_max_funl to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 200, ptr %tx_max_funl, align 8
  %fifo_tb.i = getelementptr inbounds %struct.ampdu_info, ptr %call7.i.i, i32 0, i32 17
  %uglygep.i = getelementptr i8, ptr %call7.i.i, i32 582
  %76 = ptrtoint ptr %fifo_tb.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 0, ptr %fifo_tb.i, align 4
  %77 = call ptr @memset(ptr %uglygep.i, i32 255, i32 24)
  %dmaxferrate.i = getelementptr %struct.ampdu_info, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 6
  %78 = ptrtoint ptr %dmaxferrate.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %dmaxferrate.i, align 4
  %accum_txampdu.i = getelementptr %struct.ampdu_info, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 4
  %79 = ptrtoint ptr %accum_txampdu.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %accum_txampdu.i, align 4
  %prev_txfunfl.i = getelementptr %struct.ampdu_info, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 2
  %80 = ptrtoint ptr %prev_txfunfl.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 0, ptr %prev_txfunfl.i, align 2
  %accum_txfunfl.i = getelementptr %struct.ampdu_info, ptr %call7.i.i, i32 0, i32 17, i32 0, i32 3
  %81 = ptrtoint ptr %accum_txfunfl.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %accum_txfunfl.i, align 8
  %uglygep.1.i = getelementptr i8, ptr %call7.i.i, i32 626
  %add.ptr.1.i = getelementptr %struct.ampdu_info, ptr %call7.i.i, i32 0, i32 17, i32 1
  %82 = ptrtoint ptr %add.ptr.1.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 0, ptr %add.ptr.1.i, align 8
  %83 = call ptr @memset(ptr %uglygep.1.i, i32 255, i32 24)
  %dmaxferrate.1.i = getelementptr %struct.ampdu_info, ptr %call7.i.i, i32 0, i32 17, i32 1, i32 6
  %84 = ptrtoint ptr %dmaxferrate.1.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %dmaxferrate.1.i, align 8
  %accum_txampdu.1.i = getelementptr %struct.ampdu_info, ptr %call7.i.i, i32 0, i32 17, i32 1, i32 4
  %85 = ptrtoint ptr %accum_txampdu.1.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %accum_txampdu.1.i, align 8
  %prev_txfunfl.1.i = getelementptr %struct.ampdu_info, ptr %call7.i.i, i32 0, i32 17, i32 1, i32 2
  %86 = ptrtoint ptr %prev_txfunfl.1.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 0, ptr %prev_txfunfl.1.i, align 2
  %accum_txfunfl.1.i = getelementptr %struct.ampdu_info, ptr %call7.i.i, i32 0, i32 17, i32 1, i32 3
  %87 = ptrtoint ptr %accum_txfunfl.1.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %accum_txfunfl.1.i, align 4
  %uglygep.2.i = getelementptr i8, ptr %call7.i.i, i32 670
  %add.ptr.2.i = getelementptr %struct.ampdu_info, ptr %call7.i.i, i32 0, i32 17, i32 2
  %88 = ptrtoint ptr %add.ptr.2.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 0, ptr %add.ptr.2.i, align 4
  %89 = call ptr @memset(ptr %uglygep.2.i, i32 255, i32 24)
  %dmaxferrate.2.i = getelementptr %struct.ampdu_info, ptr %call7.i.i, i32 0, i32 17, i32 2, i32 6
  %90 = ptrtoint ptr %dmaxferrate.2.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %dmaxferrate.2.i, align 4
  %accum_txampdu.2.i = getelementptr %struct.ampdu_info, ptr %call7.i.i, i32 0, i32 17, i32 2, i32 4
  %91 = ptrtoint ptr %accum_txampdu.2.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %accum_txampdu.2.i, align 4
  %prev_txfunfl.2.i = getelementptr %struct.ampdu_info, ptr %call7.i.i, i32 0, i32 17, i32 2, i32 2
  %92 = ptrtoint ptr %prev_txfunfl.2.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 0, ptr %prev_txfunfl.2.i, align 2
  %accum_txfunfl.2.i = getelementptr %struct.ampdu_info, ptr %call7.i.i, i32 0, i32 17, i32 2, i32 3
  %93 = ptrtoint ptr %accum_txfunfl.2.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %accum_txfunfl.2.i, align 8
  %uglygep.3.i = getelementptr i8, ptr %call7.i.i, i32 714
  %add.ptr.3.i = getelementptr %struct.ampdu_info, ptr %call7.i.i, i32 0, i32 17, i32 3
  %94 = ptrtoint ptr %add.ptr.3.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 0, ptr %add.ptr.3.i, align 8
  %95 = call ptr @memset(ptr %uglygep.3.i, i32 255, i32 24)
  %dmaxferrate.3.i = getelementptr %struct.ampdu_info, ptr %call7.i.i, i32 0, i32 17, i32 3, i32 6
  %96 = ptrtoint ptr %dmaxferrate.3.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %dmaxferrate.3.i, align 8
  %accum_txampdu.3.i = getelementptr %struct.ampdu_info, ptr %call7.i.i, i32 0, i32 17, i32 3, i32 4
  %97 = ptrtoint ptr %accum_txampdu.3.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %accum_txampdu.3.i, align 8
  %prev_txfunfl.3.i = getelementptr %struct.ampdu_info, ptr %call7.i.i, i32 0, i32 17, i32 3, i32 2
  %98 = ptrtoint ptr %prev_txfunfl.3.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 0, ptr %prev_txfunfl.3.i, align 2
  %accum_txfunfl.3.i = getelementptr %struct.ampdu_info, ptr %call7.i.i, i32 0, i32 17, i32 3, i32 3
  %99 = ptrtoint ptr %accum_txfunfl.3.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %accum_txfunfl.3.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %brcms_c_ampdu_set.exit, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcms_c_ampdu_detach(ptr noundef %ampdu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %ampdu) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcms_c_ampdu_tx_operational(ptr nocapture noundef %wlc, i8 noundef zeroext %tid, i8 noundef zeroext %ba_wsize, i32 noundef %max_rx_ampdu_bytes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ampdu1 = getelementptr inbounds %struct.brcms_c_info, ptr %wlc, i32 0, i32 13
  %0 = ptrtoint ptr %ampdu1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ampdu1, align 4
  %idxprom = zext i8 %tid to i32
  %arrayidx = getelementptr %struct.ampdu_info, ptr %1, i32 0, i32 2, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %hw = getelementptr inbounds %struct.brcms_c_info, ptr %wlc, i32 0, i32 2
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %d11core = getelementptr inbounds %struct.brcms_hardware, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d11core, align 4
  %dev = getelementptr inbounds %struct.bcma_device, ptr %7, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__brcms_err(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.brcms_c_ampdu_tx_operational, i32 noundef %idxprom) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %scb_ampdu2 = getelementptr inbounds %struct.brcms_c_info, ptr %wlc, i32 0, i32 66, i32 9
  %arrayidx5 = getelementptr %struct.brcms_c_info, ptr %wlc, i32 0, i32 66, i32 9, i32 6, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %tid, ptr %arrayidx5, align 4
  %9 = ptrtoint ptr %scb_ampdu2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %scb_ampdu2, align 4
  %scb8 = getelementptr %struct.brcms_c_info, ptr %wlc, i32 0, i32 66, i32 9, i32 6, i32 %idxprom, i32 2
  %11 = ptrtoint ptr %scb8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %scb8, align 4
  %ba_wsize9 = getelementptr %struct.brcms_c_info, ptr %wlc, i32 0, i32 66, i32 9, i32 6, i32 %idxprom, i32 3
  %12 = ptrtoint ptr %ba_wsize9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %ba_wsize, ptr %ba_wsize9, align 4
  %max_rx_ampdu_bytes10 = getelementptr inbounds %struct.brcms_c_info, ptr %wlc, i32 0, i32 66, i32 9, i32 5
  %13 = ptrtoint ptr %max_rx_ampdu_bytes10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %max_rx_ampdu_bytes, ptr %max_rx_ampdu_bytes10, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brcms_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcms_c_ampdu_reset_session(ptr noundef %session, ptr noundef %wlc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %session to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %wlc, ptr %session, align 4
  %skb_list = getelementptr inbounds %struct.brcms_ampdu_session, ptr %session, i32 0, i32 1
  %lock.i = getelementptr inbounds %struct.brcms_ampdu_session, ptr %session, i32 0, i32 1, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #9
  %1 = ptrtoint ptr %skb_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %skb_list, ptr %skb_list, align 4
  %prev.i.i = getelementptr inbounds %struct.brcms_ampdu_session, ptr %session, i32 0, i32 1, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %skb_list, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.brcms_ampdu_session, ptr %session, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %qlen.i.i, align 4
  %max_ampdu_len = getelementptr inbounds %struct.brcms_ampdu_session, ptr %session, i32 0, i32 2
  %4 = call ptr @memset(ptr %max_ampdu_len, i32 0, i32 10)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcms_c_ampdu_add_frame(ptr noundef %session, ptr noundef %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %session, align 4
  %ampdu2 = getelementptr inbounds %struct.brcms_c_info, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %ampdu2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ampdu2, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %p, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr %struct.d11txh, ptr %5, i32 0, i32 14, i32 5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %add.ptr = getelementptr %struct.d11txh, ptr %5, i32 1
  %XtraFrameTypes = getelementptr inbounds %struct.d11txh, ptr %5, i32 0, i32 10
  %8 = ptrtoint ptr %XtraFrameTypes to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %XtraFrameTypes, align 2
  %10 = and i16 %9, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not = icmp eq i16 %10, 0
  %arrayidx12 = getelementptr %struct.d11txh, ptr %5, i32 0, i32 16, i32 1
  %arrayidx15 = getelementptr %struct.d11txh, ptr %5, i32 0, i32 16, i32 2
  %arrayidx6 = getelementptr %struct.d11txh, ptr %5, i32 0, i32 16, i32 4
  %arrayidx9 = getelementptr %struct.d11txh, ptr %5, i32 0, i32 16, i32 5
  %.sink.in = select i1 %tobool.not, ptr %arrayidx9, ptr %arrayidx15
  %conv13.sink.in.in = select i1 %tobool.not, ptr %arrayidx6, ptr %arrayidx12
  %11 = ptrtoint ptr %conv13.sink.in.in to i32
  call void @__asan_load1_noabort(i32 %11)
  %conv13.sink.in = load i8, ptr %conv13.sink.in.in, align 1
  %conv13.sink = zext i8 %conv13.sink.in to i32
  %12 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load1_noabort(i32 %12)
  %.sink = load i8, ptr %.sink.in, align 1
  %conv16 = zext i8 %.sink to i32
  %shl17 = shl nuw nsw i32 %conv16, 8
  %add18 = or i32 %shl17, %conv13.sink
  %add19 = add nuw nsw i32 %add18, 3
  %div223 = and i32 %add19, 131068
  %conv20 = zext i8 %7 to i32
  %add21 = shl nuw nsw i32 %conv20, 2
  %mul22 = add nuw nsw i32 %add21, 4
  %add23 = add nuw nsw i32 %mul22, %div223
  %skb_list = getelementptr inbounds %struct.brcms_ampdu_session, ptr %session, i32 0, i32 1
  %qlen.i = getelementptr inbounds %struct.brcms_ampdu_session, ptr %session, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.not = icmp eq i32 %14, 0
  br i1 %cmp.not, label %entry.if.end42_crit_edge, label %if.then

entry.if.end42_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then:                                          ; preds = %entry
  %add26 = add i32 %14, 1
  %max_ampdu_frames = getelementptr inbounds %struct.brcms_ampdu_session, ptr %session, i32 0, i32 3
  %15 = ptrtoint ptr %max_ampdu_frames to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %max_ampdu_frames, align 4
  %conv27 = zext i16 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add26, i32 %conv27)
  %cmp28 = icmp ugt i32 %add26, %conv27
  br i1 %cmp28, label %if.then.cleanup153_crit_edge, label %lor.lhs.false

if.then.cleanup153_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup153

lor.lhs.false:                                    ; preds = %if.then
  %ampdu_len = getelementptr inbounds %struct.brcms_ampdu_session, ptr %session, i32 0, i32 4
  %17 = ptrtoint ptr %ampdu_len to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %ampdu_len, align 2
  %conv30 = zext i16 %18 to i32
  %add31 = add nuw nsw i32 %add23, %conv30
  %max_ampdu_len = getelementptr inbounds %struct.brcms_ampdu_session, ptr %session, i32 0, i32 2
  %19 = ptrtoint ptr %max_ampdu_len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_ampdu_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add31, i32 %20)
  %cmp32 = icmp ugt i32 %add31, %20
  br i1 %cmp32, label %lor.lhs.false.cleanup153_crit_edge, label %if.end

lor.lhs.false.cleanup153_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup153

if.end:                                           ; preds = %lor.lhs.false
  %21 = ptrtoint ptr %skb_list to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %skb_list, align 4
  %cmp.i = icmp eq ptr %22, %skb_list
  %spec.store.select.i = select i1 %cmp.i, ptr null, ptr %22
  %priority = getelementptr inbounds %struct.sk_buff, ptr %p, i32 0, i32 15, i32 0, i32 6
  %23 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %priority, align 4
  %priority37 = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i, i32 0, i32 15, i32 0, i32 6
  %25 = ptrtoint ptr %priority37 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %priority37, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp38.not = icmp eq i32 %24, %26
  br i1 %cmp38.not, label %if.end.if.end42_crit_edge, label %if.end.cleanup153_crit_edge

if.end.cleanup153_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup153

if.end.if.end42_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.end42:                                         ; preds = %if.end.if.end42_crit_edge, %entry.if.end42_crit_edge
  %ampdu_len43 = getelementptr inbounds %struct.brcms_ampdu_session, ptr %session, i32 0, i32 4
  %27 = ptrtoint ptr %ampdu_len43 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %ampdu_len43, align 2
  %29 = trunc i32 %add23 to i16
  %conv46 = add i16 %28, %29
  store i16 %conv46, ptr %ampdu_len43, align 2
  %len47 = getelementptr inbounds %struct.sk_buff, ptr %p, i32 0, i32 6
  %30 = ptrtoint ptr %len47 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len47, align 4
  %dma_len = getelementptr inbounds %struct.brcms_ampdu_session, ptr %session, i32 0, i32 5
  %32 = ptrtoint ptr %dma_len to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %dma_len, align 4
  %34 = trunc i32 %31 to i16
  %conv50 = add i16 %33, %34
  store i16 %conv50, ptr %dma_len, align 4
  %priority51 = getelementptr inbounds %struct.sk_buff, ptr %p, i32 0, i32 15, i32 0, i32 6
  %35 = ptrtoint ptr %priority51 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %priority51, align 4
  %count = getelementptr inbounds %struct.sk_buff, ptr %p, i32 0, i32 3, i32 9
  %37 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %bf.load = load i16, ptr %count, align 1
  %bf.lshr = lshr i16 %bf.load, 11
  %idxprom = and i32 %36, 255
  %arrayidx55 = getelementptr %struct.ampdu_info, ptr %3, i32 0, i32 8, i32 %idxprom
  %38 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx55, align 1
  %40 = zext i8 %39 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %bf.lshr, i16 %40)
  %cmp57.not = icmp ugt i16 %bf.lshr, %40
  br i1 %cmp57.not, label %if.else, label %if.end42.if.end75_crit_edge

if.end42.if.end75_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

if.else:                                          ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  %count66 = getelementptr %struct.sk_buff, ptr %p, i32 0, i32 3, i32 12
  %41 = ptrtoint ptr %count66 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %bf.load67 = load i16, ptr %count66, align 1
  br label %if.end75

if.end75:                                         ; preds = %if.else, %if.end42.if.end75_crit_edge
  %bf.load67.sink = phi i16 [ %bf.load67, %if.else ], [ %bf.load, %if.end42.if.end75_crit_edge ]
  %count66.sink = phi ptr [ %count66, %if.else ], [ %count, %if.end42.if.end75_crit_edge ]
  %42 = add i16 %bf.load67.sink, 2048
  %43 = ptrtoint ptr %count66.sink to i32
  call void @__asan_storeN_noabort(i32 %43, i32 2)
  store i16 %42, ptr %count66.sink, align 1
  br i1 %cmp.not, label %if.then78, label %if.end75.if.end142_crit_edge

if.end75.if.end142_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end142

if.then78:                                        ; preds = %if.end75
  %TxFrameID = getelementptr inbounds %struct.d11txh, ptr %5, i32 0, i32 25
  %44 = ptrtoint ptr %TxFrameID to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %TxFrameID, align 2
  %46 = lshr i16 %45, 8
  %47 = and i16 %46, 7
  %and80 = zext i16 %47 to i32
  %arrayidx85 = getelementptr i8, ptr %add.ptr, i32 3
  %FragPLCPFallback87 = getelementptr inbounds %struct.d11txh, ptr %5, i32 0, i32 16
  %arrayidx90 = getelementptr %struct.d11txh, ptr %5, i32 0, i32 16, i32 3
  %plcp0.0.in = select i1 %cmp57.not, ptr %FragPLCPFallback87, ptr %add.ptr
  %plcp3.0.in = select i1 %cmp57.not, ptr %arrayidx90, ptr %arrayidx85
  %48 = ptrtoint ptr %plcp3.0.in to i32
  call void @__asan_load1_noabort(i32 %48)
  %plcp3.0 = load i8, ptr %plcp3.0.in, align 1
  %49 = ptrtoint ptr %plcp0.0.in to i32
  call void @__asan_load1_noabort(i32 %49)
  %plcp0.0 = load i8, ptr %plcp0.0.in, align 1
  %and93.lobit = lshr i8 %plcp0.0, 7
  %50 = and i8 %plcp0.0, 127
  %max_rx_ampdu_bytes = getelementptr inbounds %struct.brcms_c_info, ptr %1, i32 0, i32 66, i32 9, i32 5
  %51 = ptrtoint ptr %max_rx_ampdu_bytes to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %max_rx_ampdu_bytes, align 4
  %idxprom104 = zext i8 %50 to i32
  %idxprom106 = zext i8 %and93.lobit to i32
  %plcp3.0.lobit = lshr i8 %plcp3.0, 7
  %53 = zext i8 %plcp3.0.lobit to i32
  %arrayidx109 = getelementptr %struct.ampdu_info, ptr %3, i32 0, i32 14, i32 %idxprom104, i32 %idxprom106, i32 %53
  %54 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx109, align 4
  %56 = tail call i32 @llvm.umin.i32(i32 %52, i32 %55)
  %max_ampdu_len117 = getelementptr inbounds %struct.brcms_ampdu_session, ptr %session, i32 0, i32 2
  %57 = ptrtoint ptr %max_ampdu_len117 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %max_ampdu_len117, align 4
  %max_pdu = getelementptr inbounds %struct.brcms_c_info, ptr %1, i32 0, i32 66, i32 9, i32 2
  %58 = ptrtoint ptr %max_pdu to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %max_pdu, align 1
  %conv118 = zext i8 %59 to i16
  %max_ampdu_frames119 = getelementptr inbounds %struct.brcms_ampdu_session, ptr %session, i32 0, i32 3
  %60 = ptrtoint ptr %max_ampdu_frames119 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv118, ptr %max_ampdu_frames119, align 4
  %phy_rate_40.i = getelementptr [0 x %struct.brcms_mcs_info], ptr @mcs_table, i32 0, i32 %idxprom104, i32 1
  %61 = ptrtoint ptr %phy_rate_40.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %retval.0.i = load i32, ptr %phy_rate_40.i, align 4
  %dmaxferrate = getelementptr %struct.ampdu_info, ptr %3, i32 0, i32 17, i32 %and80, i32 6
  %62 = ptrtoint ptr %dmaxferrate to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %dmaxferrate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %63)
  %cmp121.not = icmp ult i32 %retval.0.i, %63
  br i1 %cmp121.not, label %if.then78.if.end142_crit_edge, label %if.then123

if.then78.if.end142_crit_edge:                    ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end142

if.then123:                                       ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx125 = getelementptr %struct.ampdu_info, ptr %3, i32 0, i32 17, i32 %and80, i32 1, i32 %idxprom104
  %64 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx125, align 1
  %66 = tail call i8 @llvm.umin.i8(i8 %65, i8 %59)
  %conv139 = zext i8 %66 to i16
  %67 = ptrtoint ptr %max_ampdu_frames119 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %conv139, ptr %max_ampdu_frames119, align 4
  br label %if.end142

if.end142:                                        ; preds = %if.then123, %if.then78.if.end142_crit_edge, %if.end75.if.end142_crit_edge
  %68 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %5, align 2
  %70 = and i16 %69, -3087
  %71 = or i16 %70, 4
  store i16 %71, ptr %5, align 2
  %PreloadSize = getelementptr inbounds %struct.d11txh, ptr %5, i32 0, i32 23
  %72 = ptrtoint ptr %PreloadSize to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 0, ptr %PreloadSize, align 2
  tail call void @skb_queue_tail(ptr noundef %skb_list, ptr noundef %p) #9
  br label %cleanup153

cleanup153:                                       ; preds = %if.end142, %if.end.cleanup153_crit_edge, %lor.lhs.false.cleanup153_crit_edge, %if.then.cleanup153_crit_edge
  %retval.1 = phi i32 [ 0, %if.end142 ], [ -28, %if.end.cleanup153_crit_edge ], [ -28, %lor.lhs.false.cleanup153_crit_edge ], [ -28, %if.then.cleanup153_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcms_c_ampdu_finalize(ptr noundef %session) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %session, align 4
  %ampdu2 = getelementptr inbounds %struct.brcms_c_info, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %ampdu2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ampdu2, align 4
  %dma_len3 = getelementptr inbounds %struct.brcms_ampdu_session, ptr %session, i32 0, i32 5
  %4 = ptrtoint ptr %dma_len3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dma_len3, align 4
  %skb_list = getelementptr inbounds %struct.brcms_ampdu_session, ptr %session, i32 0, i32 1
  %6 = ptrtoint ptr %skb_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skb_list, align 4
  %cmp.i = icmp eq ptr %7, %skb_list
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %prev.i = getelementptr inbounds %struct.brcms_ampdu_session, ptr %session, i32 0, i32 1, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %prev.i, align 4
  %cmp.i386 = icmp eq ptr %9, %skb_list
  %spec.store.select.i387 = select i1 %cmp.i386, ptr null, ptr %9
  %data = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i387, i32 0, i32 19
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %TxFrameID = getelementptr inbounds %struct.d11txh, ptr %11, i32 0, i32 25
  %12 = ptrtoint ptr %TxFrameID to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %TxFrameID, align 2
  %14 = lshr i16 %13, 8
  %15 = and i16 %14, 7
  %and = zext i16 %15 to i32
  %arrayidx = getelementptr %struct.ampdu_info, ptr %3, i32 0, i32 17, i32 %and
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %11, align 2
  %18 = or i16 %17, 6
  store i16 %18, ptr %11, align 2
  %arrayidx14 = getelementptr %struct.d11txh, ptr %11, i32 0, i32 14, i32 5
  %19 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx14, align 1
  store i8 0, ptr %arrayidx14, align 1
  %conv17 = zext i8 %20 to i16
  %mul.neg = mul nsw i16 %conv17, -4
  %ampdu_len = getelementptr inbounds %struct.brcms_ampdu_session, ptr %session, i32 0, i32 4
  %21 = ptrtoint ptr %ampdu_len to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %ampdu_len, align 2
  %sub = add i16 %mul.neg, %22
  store i16 %sub, ptr %ampdu_len, align 2
  %XtraFrameTypes = getelementptr inbounds %struct.d11txh, ptr %11, i32 0, i32 10
  %23 = ptrtoint ptr %XtraFrameTypes to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %XtraFrameTypes, align 2
  %25 = and i16 %24, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp = icmp eq i16 %25, 0
  %arrayidx31 = getelementptr %struct.d11txh, ptr %11, i32 0, i32 16, i32 1
  %arrayidx34 = getelementptr %struct.d11txh, ptr %11, i32 0, i32 16, i32 2
  %arrayidx25 = getelementptr %struct.d11txh, ptr %11, i32 0, i32 16, i32 4
  %arrayidx28 = getelementptr %struct.d11txh, ptr %11, i32 0, i32 16, i32 5
  %.sink390.in = select i1 %cmp, ptr %arrayidx28, ptr %arrayidx34
  %conv32.sink.in.in = select i1 %cmp, ptr %arrayidx25, ptr %arrayidx31
  %26 = ptrtoint ptr %conv32.sink.in.in to i32
  call void @__asan_load1_noabort(i32 %26)
  %conv32.sink.in = load i8, ptr %conv32.sink.in.in, align 1
  %conv32.sink = zext i8 %conv32.sink.in to i32
  %27 = ptrtoint ptr %.sink390.in to i32
  call void @__asan_load1_noabort(i32 %27)
  %.sink390 = load i8, ptr %.sink390.in, align 1
  %conv35 = zext i8 %.sink390 to i32
  %shl36 = shl nuw nsw i32 %conv35, 8
  %add37 = or i32 %shl36, %conv32.sink
  %add39 = add nuw nsw i32 %add37, 3
  %div380 = and i32 %add39, 65532
  %sub41.neg = sub nsw i32 %add37, %div380
  %28 = trunc i32 %sub41.neg to i16
  %conv45 = add i16 %sub, %28
  %29 = ptrtoint ptr %ampdu_len to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv45, ptr %ampdu_len, align 2
  %data47 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 19
  %30 = ptrtoint ptr %data47 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data47, align 4
  %add.ptr = getelementptr %struct.d11txh, ptr %31, i32 1
  %rts_frame = getelementptr inbounds %struct.d11txh, ptr %31, i32 0, i32 32
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %31, align 2
  %34 = tail call i16 @llvm.bswap.i16(i16 %33)
  %cmp49.not = icmp eq ptr %7, %spec.store.select.i387
  %35 = and i16 %34, -1545
  %36 = or i16 %35, 512
  %mcl.0 = select i1 %cmp49.not, i16 %34, i16 %36
  %37 = ptrtoint ptr %rts_frame to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %rts_frame, align 2
  %39 = and i16 %38, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -19456, i16 %39)
  %cmp.i388 = icmp eq i16 %39, -19456
  %mcl.1.v = select i1 %cmp.i388, i16 12, i16 8
  %mcl.1 = or i16 %mcl.0, %mcl.1.v
  call void @__sanitizer_cov_trace_const_cmp2(i16 -15360, i16 %39)
  %cmp.i389 = icmp eq i16 %39, -15360
  %40 = or i16 %mcl.1, 2048
  %mcl.2 = select i1 %cmp.i389, i16 %40, i16 %mcl.1
  %41 = tail call i16 @llvm.bswap.i16(i16 %mcl.2)
  %42 = ptrtoint ptr %31 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %31, align 2
  %count = getelementptr %struct.sk_buff, ptr %7, i32 0, i32 3, i32 12
  %43 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %bf.load = load i16, ptr %count, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %bf.load)
  %cmp78.not = icmp ult i16 %bf.load, 2048
  %FragPLCPFallback84 = getelementptr inbounds %struct.d11txh, ptr %31, i32 0, i32 16
  %plcp0.0.in = select i1 %cmp78.not, ptr %add.ptr, ptr %FragPLCPFallback84
  %44 = ptrtoint ptr %plcp0.0.in to i32
  call void @__asan_load1_noabort(i32 %44)
  %plcp0.0 = load i8, ptr %plcp0.0.in, align 1
  %45 = and i8 %plcp0.0, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %plcp0.0)
  %tobool95.not = icmp sgt i8 %plcp0.0, -1
  br i1 %tobool95.not, label %if.end.if.end105_crit_edge, label %if.then96

if.end.if.end105_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105

if.then96:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %band = getelementptr inbounds %struct.brcms_c_info, ptr %1, i32 0, i32 9
  %46 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %band, align 4
  %pi = getelementptr inbounds %struct.brcms_band, ptr %47, i32 0, i32 6
  %48 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pi, align 4
  %call97 = tail call zeroext i16 @wlc_phy_chanspec_get(ptr noundef %49) #9
  %50 = and i16 %call97, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %50)
  %cmp100 = icmp eq i16 %50, 512
  %. = select i1 %cmp100, i16 3, i16 2
  br label %if.end105

if.end105:                                        ; preds = %if.then96, %if.end.if.end105_crit_edge
  %mimo_ctlchbw.0 = phi i16 [ 2, %if.end.if.end105_crit_edge ], [ %., %if.then96 ]
  %51 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %add.ptr, align 1
  %conv107 = zext i8 %52 to i32
  %and108 = and i32 %conv107, 127
  %and112 = and i32 %conv107, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp eq i32 %and112, 0
  %spec.select.v = select i1 %tobool113.not, i32 134217728, i32 134218752
  %spec.select = or i32 %spec.select.v, %and108
  %XtraFrameTypes117 = getelementptr inbounds %struct.d11txh, ptr %31, i32 0, i32 10
  %53 = ptrtoint ptr %XtraFrameTypes117 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %XtraFrameTypes117, align 2
  %55 = and i16 %54, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %tobool120.not = icmp eq i16 %55, 0
  %56 = ptrtoint ptr %FragPLCPFallback84 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %FragPLCPFallback84, align 2
  br i1 %tobool120.not, label %if.then123, label %if.else129

if.then123:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  %58 = udiv i8 %57, 5
  %conv128 = zext i8 %58 to i32
  br label %if.end143

if.else129:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  %conv132 = zext i8 %57 to i32
  %and133 = and i32 %conv132, 127
  %and138 = and i32 %conv132, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138)
  %tobool139.not = icmp eq i32 %and138, 0
  %spec.select381.v = select i1 %tobool139.not, i32 134217728, i32 134218752
  %spec.select381 = or i32 %spec.select381.v, %and133
  br label %if.end143

if.end143:                                        ; preds = %if.else129, %if.then123
  %rspec_fallback.0 = phi i32 [ %conv128, %if.then123 ], [ %spec.select381, %if.else129 ]
  %59 = zext i16 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.18)
  switch i16 %39, label %if.end143.do.body_crit_edge [
    i16 -15360, label %if.end143.if.then148_crit_edge
    i16 -19456, label %if.end143.if.then148_crit_edge391
  ]

if.end143.if.then148_crit_edge391:                ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then148

if.end143.if.then148_crit_edge:                   ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then148

if.end143.do.body_crit_edge:                      ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then148:                                       ; preds = %if.end143.if.then148_crit_edge, %if.end143.if.then148_crit_edge391
  %call149 = tail call i32 @brcms_c_rspec_to_rts_rspec(ptr noundef %1, i32 noundef %spec.select, i1 noundef zeroext false, i16 noundef zeroext %mimo_ctlchbw.0) #9
  %call150 = tail call i32 @brcms_c_rspec_to_rts_rspec(ptr noundef %1, i32 noundef %rspec_fallback.0, i1 noundef zeroext false, i16 noundef zeroext %mimo_ctlchbw.0) #9
  br label %do.body

do.body:                                          ; preds = %if.then148, %if.end143.do.body_crit_edge
  %rts_rspec.0 = phi i32 [ %call149, %if.then148 ], [ 0, %if.end143.do.body_crit_edge ]
  %rts_rspec_fallback.0 = phi i32 [ %call150, %if.then148 ], [ 0, %if.end143.do.body_crit_edge ]
  %60 = ptrtoint ptr %ampdu_len to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %ampdu_len, align 2
  %conv155 = trunc i16 %61 to i8
  %arrayidx156 = getelementptr i8, ptr %add.ptr, i32 1
  %62 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv155, ptr %arrayidx156, align 1
  %63 = load i16, ptr %ampdu_len, align 2
  %64 = lshr i16 %63, 8
  %conv160 = trunc i16 %64 to i8
  %arrayidx161 = getelementptr %struct.d11txh, ptr %31, i32 1, i32 1
  %65 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv160, ptr %arrayidx161, align 1
  %arrayidx162 = getelementptr i8, ptr %add.ptr, i32 3
  %66 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx162, align 1
  %68 = or i8 %67, 8
  store i8 %68, ptr %arrayidx162, align 1
  %MModeLen = getelementptr inbounds %struct.d11txh, ptr %31, i32 0, i32 18
  %69 = ptrtoint ptr %MModeLen to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %MModeLen, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %70)
  %tobool166.not = icmp eq i16 %70, 0
  br i1 %tobool166.not, label %do.body.if.end172_crit_edge, label %if.then167

do.body.if.end172_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end172

if.then167:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %ampdu_len to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %ampdu_len, align 2
  %conv169 = zext i16 %72 to i32
  %call170 = tail call zeroext i16 @brcms_c_calc_lsig_len(ptr noundef %1, i32 noundef %spec.select, i32 noundef %conv169) #9
  %73 = tail call i16 @llvm.bswap.i16(i16 %call170)
  %74 = ptrtoint ptr %MModeLen to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %73, ptr %MModeLen, align 2
  br label %if.end172

if.end172:                                        ; preds = %if.then167, %do.body.if.end172_crit_edge
  %preamble_type.0 = phi i8 [ 4, %if.then167 ], [ 2, %do.body.if.end172_crit_edge ]
  %MModeFbrLen = getelementptr inbounds %struct.d11txh, ptr %31, i32 0, i32 19
  %75 = ptrtoint ptr %MModeFbrLen to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %MModeFbrLen, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %76)
  %tobool173.not = icmp eq i16 %76, 0
  br i1 %tobool173.not, label %if.end172.if.end179_crit_edge, label %if.then174

if.end172.if.end179_crit_edge:                    ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end179

if.then174:                                       ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %ampdu_len to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %ampdu_len, align 2
  %conv176 = zext i16 %78 to i32
  %call177 = tail call zeroext i16 @brcms_c_calc_lsig_len(ptr noundef %1, i32 noundef %rspec_fallback.0, i32 noundef %conv176) #9
  %79 = tail call i16 @llvm.bswap.i16(i16 %call177)
  %80 = ptrtoint ptr %MModeFbrLen to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %79, ptr %MModeFbrLen, align 2
  br label %if.end179

if.end179:                                        ; preds = %if.then174, %if.end172.if.end179_crit_edge
  %fbr_preamble_type.0 = phi i8 [ 4, %if.then174 ], [ 2, %if.end172.if.end179_crit_edge ]
  %idxprom.i = zext i8 %45 to i32
  %phy_rate_40.i = getelementptr [0 x %struct.brcms_mcs_info], ptr @mcs_table, i32 0, i32 %idxprom.i, i32 1
  %81 = ptrtoint ptr %phy_rate_40.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %retval.0.i = load i32, ptr %phy_rate_40.i, align 4
  %dmaxferrate = getelementptr %struct.ampdu_info, ptr %3, i32 0, i32 17, i32 %and, i32 6
  %82 = ptrtoint ptr %dmaxferrate to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %dmaxferrate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %83)
  %cmp181.not = icmp ult i32 %retval.0.i, %83
  br i1 %cmp181.not, label %if.end179.if.end198_crit_edge, label %if.then183

if.end179.if.end198_crit_edge:                    ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end198

if.then183:                                       ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #11
  %84 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %arrayidx, align 4
  %86 = tail call i16 @llvm.umin.i16(i16 %5, i16 %85)
  %87 = tail call i16 @llvm.bswap.i16(i16 %86)
  br label %if.end198

if.end198:                                        ; preds = %if.then183, %if.end179.if.end198_crit_edge
  %.sink = phi i16 [ %87, %if.then183 ], [ 0, %if.end179.if.end198_crit_edge ]
  %88 = getelementptr inbounds %struct.d11txh, ptr %31, i32 0, i32 23
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %.sink, ptr %88, align 2
  %MacTxControlHigh = getelementptr inbounds %struct.d11txh, ptr %31, i32 0, i32 1
  %90 = ptrtoint ptr %MacTxControlHigh to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %MacTxControlHigh, align 2
  %92 = tail call i16 @llvm.bswap.i16(i16 %91)
  %93 = zext i16 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.19)
  switch i16 %39, label %if.end198.if.end227_crit_edge [
    i16 -15360, label %if.end198.if.then204_crit_edge
    i16 -19456, label %if.end198.if.then204_crit_edge392
  ]

if.end198.if.then204_crit_edge392:                ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then204

if.end198.if.then204_crit_edge:                   ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then204

if.end198.if.end227_crit_edge:                    ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end227

if.then204:                                       ; preds = %if.end198.if.then204_crit_edge, %if.end198.if.then204_crit_edge392
  %and206 = lshr i16 %92, 14
  %94 = trunc i16 %and206 to i8
  %95 = and i8 %94, 1
  %.lobit = lshr i16 %92, 15
  %96 = trunc i16 %.lobit to i8
  %97 = ptrtoint ptr %ampdu_len to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %ampdu_len, align 2
  %conv219 = zext i16 %98 to i32
  %call220 = tail call zeroext i16 @brcms_c_compute_rtscts_dur(ptr noundef %1, i1 noundef zeroext %cmp.i389, i32 noundef %rts_rspec.0, i32 noundef %spec.select, i8 noundef zeroext %95, i8 noundef zeroext %preamble_type.0, i32 noundef %conv219, i1 noundef zeroext true) #9
  %99 = tail call i16 @llvm.bswap.i16(i16 %call220)
  %duration = getelementptr inbounds %struct.d11txh, ptr %31, i32 0, i32 32, i32 1
  %100 = ptrtoint ptr %duration to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %99, ptr %duration, align 2
  %101 = ptrtoint ptr %ampdu_len to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %ampdu_len, align 2
  %conv223 = zext i16 %102 to i32
  %call224 = tail call zeroext i16 @brcms_c_compute_rtscts_dur(ptr noundef %1, i1 noundef zeroext %cmp.i389, i32 noundef %rts_rspec_fallback.0, i32 noundef %rspec_fallback.0, i8 noundef zeroext %96, i8 noundef zeroext %fbr_preamble_type.0, i32 noundef %conv223, i1 noundef zeroext true) #9
  %103 = tail call i16 @llvm.bswap.i16(i16 %call224)
  %RTSDurFallback = getelementptr inbounds %struct.d11txh, ptr %31, i32 0, i32 15
  %104 = ptrtoint ptr %RTSDurFallback to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %103, ptr %RTSDurFallback, align 2
  %105 = ptrtoint ptr %duration to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %duration, align 2
  %TxFesTimeNormal = getelementptr inbounds %struct.d11txh, ptr %31, i32 0, i32 3
  %107 = ptrtoint ptr %TxFesTimeNormal to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %106, ptr %TxFesTimeNormal, align 2
  %TxFesTimeFallback = getelementptr inbounds %struct.d11txh, ptr %31, i32 0, i32 13
  %108 = ptrtoint ptr %TxFesTimeFallback to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %103, ptr %TxFesTimeFallback, align 2
  br label %if.end227

if.end227:                                        ; preds = %if.then204, %if.end198.if.end227_crit_edge
  br i1 %cmp78.not, label %if.end227.if.end243_crit_edge, label %if.then229

if.end227.if.end243_crit_edge:                    ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end243

if.then229:                                       ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #11
  %109 = or i16 %92, 4096
  %110 = tail call i16 @llvm.bswap.i16(i16 %109)
  %111 = ptrtoint ptr %MacTxControlHigh to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 %110, ptr %MacTxControlHigh, align 2
  %112 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx162, align 1
  %114 = or i8 %113, 8
  store i8 %114, ptr %arrayidx162, align 1
  %arrayidx239 = getelementptr %struct.d11txh, ptr %31, i32 0, i32 16, i32 3
  %115 = ptrtoint ptr %arrayidx239 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx239, align 1
  %117 = or i8 %116, 8
  store i8 %117, ptr %arrayidx239, align 1
  br label %if.end243

if.end243:                                        ; preds = %if.then229, %if.end227.if.end243_crit_edge
  %hw = getelementptr inbounds %struct.brcms_c_info, ptr %1, i32 0, i32 2
  %118 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %hw, align 4
  %d11core = getelementptr inbounds %struct.brcms_hardware, ptr %119, i32 0, i32 14
  %120 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %d11core, align 4
  %dev = getelementptr inbounds %struct.bcma_device, ptr %121, i32 0, i32 2
  %122 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %1, align 4
  %unit = getelementptr inbounds %struct.brcms_pub, ptr %123, i32 0, i32 4
  %124 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %unit, align 4
  %qlen.i = getelementptr inbounds %struct.brcms_ampdu_session, ptr %session, i32 0, i32 1, i32 1
  %126 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %qlen.i, align 4
  %128 = ptrtoint ptr %ampdu_len to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %ampdu_len, align 2
  %conv247 = zext i16 %129 to i32
  tail call void (ptr, i32, ptr, ptr, ...) @__brcms_dbg(ptr noundef %dev, i32 noundef 64, ptr noundef nonnull @__func__.brcms_c_ampdu_finalize, ptr noundef nonnull @.str.1, i32 noundef %125, i32 noundef %127, i32 noundef %conv247) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end243, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @wlc_phy_chanspec_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcms_c_rspec_to_rts_rspec(ptr noundef, i32 noundef, i1 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @brcms_c_calc_lsig_len(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @brcms_c_compute_rtscts_dur(ptr noundef, i1 noundef zeroext, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brcms_dbg(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcms_c_ampdu_dotxstatus(ptr nocapture noundef readonly %ampdu, ptr noundef %scb, ptr noundef %p, ptr nocapture noundef readonly %txs) local_unnamed_addr #0 align 64 {
entry:
  %xmtfifo_sz.i.i = alloca i32, align 4
  %bitmap.i = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ampdu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ampdu, align 4
  %status = getelementptr inbounds %struct.tx_status, ptr %txs, i32 0, i32 3
  %2 = ptrtoint ptr %status to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %status, align 1
  %4 = and i16 %3, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %if.then

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then:                                          ; preds = %entry
  %hw = getelementptr inbounds %struct.brcms_c_info, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 4
  %d11core = getelementptr inbounds %struct.brcms_hardware, ptr %6, i32 0, i32 14
  %7 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %d11core, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %read32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %14(ptr noundef %8, i16 noundef zeroext 368) #9
  %and281 = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and281)
  %cmp82 = icmp eq i32 %and281, 0
  br i1 %cmp82, label %if.then.while.body_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.while.body_crit_edge:                     ; preds = %if.then
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %if.then.while.body_crit_edge
  %status_delay.083 = phi i8 [ %inc, %if.end.while.body_crit_edge ], [ 0, %if.then.while.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %status_delay.083)
  %cmp5 = icmp ugt i8 %status_delay.083, 9
  br i1 %cmp5, label %while.body.cleanup35_crit_edge, label %if.end

while.body.cleanup35_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup35

if.end:                                           ; preds = %while.body
  %inc = add nuw nsw i8 %status_delay.083, 1
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw, align 4
  %d11core9 = getelementptr inbounds %struct.brcms_hardware, ptr %17, i32 0, i32 14
  %18 = ptrtoint ptr %d11core9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %d11core9, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  %ops.i54 = getelementptr inbounds %struct.bcma_bus, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %ops.i54 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i54, align 4
  %read32.i55 = getelementptr inbounds %struct.bcma_host_ops, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %read32.i55 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read32.i55, align 4
  %call.i56 = tail call i32 %25(ptr noundef %19, i16 noundef zeroext 368) #9
  %and2 = and i32 %call.i56, 1
  %cmp = icmp eq i32 %and2, 0
  br i1 %cmp, label %if.end.while.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %s1.0.lcssa = phi i32 [ %call.i, %if.then.cleanup_crit_edge ], [ %call.i56, %if.end.cleanup_crit_edge ]
  %26 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw, align 4
  %d11core12 = getelementptr inbounds %struct.brcms_hardware, ptr %27, i32 0, i32 14
  %28 = ptrtoint ptr %d11core12 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %d11core12, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 8
  %ops.i57 = getelementptr inbounds %struct.bcma_bus, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %ops.i57 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops.i57, align 4
  %read32.i58 = getelementptr inbounds %struct.bcma_host_ops, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %read32.i58 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read32.i58, align 4
  %call.i59 = tail call i32 %35(ptr noundef %29, i16 noundef zeroext 372) #9
  br label %if.end14

if.end14:                                         ; preds = %cleanup, %entry.if.end14_crit_edge
  %s1.1 = phi i32 [ %s1.0.lcssa, %cleanup ], [ 0, %entry.if.end14_crit_edge ]
  %s2.1 = phi i32 [ %call.i59, %cleanup ], [ 0, %entry.if.end14_crit_edge ]
  %tobool15.not = icmp eq ptr %scb, null
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end14
  %36 = ptrtoint ptr %ampdu to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ampdu, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bitmap.i) #9
  %38 = getelementptr inbounds [8 x i8], ptr %bitmap.i, i32 0, i32 1
  %39 = getelementptr inbounds [8 x i8], ptr %bitmap.i, i32 0, i32 2
  %40 = getelementptr inbounds [8 x i8], ptr %bitmap.i, i32 0, i32 3
  %41 = getelementptr inbounds [8 x i8], ptr %bitmap.i, i32 0, i32 4
  %42 = getelementptr inbounds [8 x i8], ptr %bitmap.i, i32 0, i32 5
  %43 = getelementptr inbounds [8 x i8], ptr %bitmap.i, i32 0, i32 6
  %44 = getelementptr inbounds [8 x i8], ptr %bitmap.i, i32 0, i32 7
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %p, i32 0, i32 15, i32 0, i32 6
  %45 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %priority.i, align 4
  %idxprom.i = and i32 %46, 255
  %arrayidx5.i = getelementptr %struct.ampdu_info, ptr %ampdu, i32 0, i32 7, i32 %idxprom.i
  %47 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx5.i, align 1
  %49 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 0, ptr %bitmap.i, align 8
  %frameid.i = getelementptr inbounds %struct.tx_status, ptr %txs, i32 0, i32 2
  %50 = ptrtoint ptr %frameid.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 2)
  %51 = load i16, ptr %frameid.i, align 1
  %52 = trunc i16 %51 to i8
  %conv8.i = and i8 %52, 7
  %53 = ptrtoint ptr %status to i32
  call void @__asan_loadN_noabort(i32 %53, i32 2)
  %54 = load i16, ptr %status, align 1
  %conv9.i = zext i16 %54 to i32
  %and10.i = and i32 %conv9.i, 28
  %and13.i = and i32 %conv9.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then16
  %and16.i = and i32 %conv9.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %do.end.i, label %if.then.i.if.end.i_crit_edge, !prof !55

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 870, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %sequence.i = getelementptr inbounds %struct.tx_status, ptr %txs, i32 0, i32 5
  %55 = ptrtoint ptr %sequence.i to i32
  call void @__asan_loadN_noabort(i32 %55, i32 2)
  %56 = load i16, ptr %sequence.i, align 1
  %57 = lshr i16 %56, 4
  %58 = zext i16 %57 to i32
  %59 = ptrtoint ptr %status to i32
  call void @__asan_loadN_noabort(i32 %59, i32 2)
  %60 = load i16, ptr %status, align 1
  %61 = lshr i16 %60, 12
  %conv45.i = trunc i16 %61 to i8
  %and48.i = and i32 %s1.1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i)
  %tobool49.not.i = icmp eq i32 %and48.i, 0
  br i1 %tobool49.not.i, label %if.end.i.if.end71.i_crit_edge, label %do.end65.i, !prof !56

if.end.i.if.end71.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71.i

do.end65.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 875, i32 noundef 9, ptr noundef null) #9
  br label %if.end71.i

if.end71.i:                                       ; preds = %do.end65.i, %if.end.i.if.end71.i_crit_edge
  %and80.i = and i32 %s1.1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80.i)
  %tobool81.not.i = icmp eq i32 %and80.i, 0
  br i1 %tobool81.not.i, label %do.end99.i, label %if.end71.i.if.end105.i_crit_edge, !prof !55

if.end71.i.if.end105.i_crit_edge:                 ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105.i

do.end99.i:                                       ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 876, i32 noundef 9, ptr noundef null) #9
  br label %if.end105.i

if.end105.i:                                      ; preds = %do.end99.i, %if.end71.i.if.end105.i_crit_edge
  %s1.tr.i = trunc i32 %s1.1 to i8
  %62 = shl i8 %s1.tr.i, 3
  %63 = and i8 %62, -16
  %conv116.i = or i8 %63, %conv45.i
  %64 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv116.i, ptr %bitmap.i, align 8
  %shr117.i = lshr i32 %s1.1, 8
  %conv119.i = trunc i32 %shr117.i to i8
  %65 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv119.i, ptr %38, align 1
  %shr121.i = lshr i32 %s1.1, 16
  %conv123.i = trunc i32 %shr121.i to i8
  %66 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv123.i, ptr %39, align 2
  %shr125.i = lshr i32 %s1.1, 24
  %conv127.i = trunc i32 %shr125.i to i8
  %67 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv127.i, ptr %40, align 1
  %conv130.i = trunc i32 %s2.1 to i8
  %68 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv130.i, ptr %41, align 4
  %shr132.i = lshr i32 %s2.1, 8
  %conv134.i = trunc i32 %shr132.i to i8
  %69 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv134.i, ptr %42, align 1
  %shr136.i = lshr i32 %s2.1, 16
  %conv138.i = trunc i32 %shr136.i to i8
  %70 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv138.i, ptr %43, align 2
  %shr140.i = lshr i32 %s2.1, 24
  %conv142.i = trunc i32 %shr140.i to i8
  %71 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv142.i, ptr %44, align 1
  br label %if.end189.i

if.else.i:                                        ; preds = %if.then16
  %72 = zext i32 %and10.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %and10.i, label %if.then155.i [
    i32 0, label %if.else179.i
    i32 16, label %if.then147.i
    i32 12, label %if.then173.i
  ]

if.then147.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %hw.i = getelementptr inbounds %struct.brcms_c_info, ptr %37, i32 0, i32 2
  %73 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hw.i, align 4
  %d11core.i = getelementptr inbounds %struct.brcms_hardware, ptr %74, i32 0, i32 14
  %75 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %d11core.i, align 4
  %dev.i = getelementptr inbounds %struct.bcma_device, ptr %76, i32 0, i32 2
  %default_bss.i = getelementptr inbounds %struct.brcms_c_info, ptr %37, i32 0, i32 41
  %77 = ptrtoint ptr %default_bss.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %default_bss.i, align 4
  %chanspec.i = getelementptr inbounds %struct.brcms_bss_info, ptr %78, i32 0, i32 7
  %79 = ptrtoint ptr %chanspec.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %chanspec.i, align 4
  %81 = and i16 %80, 255
  %conv151.i = zext i16 %81 to i32
  tail call void (ptr, i32, ptr, ptr, ...) @__brcms_dbg(ptr noundef %dev.i, i32 noundef 64, ptr noundef nonnull @__func__.brcms_c_ampdu_dotxstatus_complete, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.brcms_c_ampdu_dotxstatus_complete, i32 noundef %conv151.i) #9
  br label %if.end189.i

if.then155.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %hw156.i = getelementptr inbounds %struct.brcms_c_info, ptr %37, i32 0, i32 2
  %82 = ptrtoint ptr %hw156.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %hw156.i, align 4
  %d11core157.i = getelementptr inbounds %struct.brcms_hardware, ptr %83, i32 0, i32 14
  %84 = ptrtoint ptr %d11core157.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %d11core157.i, align 4
  %dev158.i = getelementptr inbounds %struct.bcma_device, ptr %85, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__brcms_err(ptr noundef %dev158.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.brcms_c_ampdu_dotxstatus_complete, i32 noundef %and10.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %and10.i)
  %cond.i = icmp ne i32 %and10.i, 20
  br label %if.end189.i

if.then173.i:                                     ; preds = %if.else.i
  %conv174.i = zext i8 %conv8.i to i32
  %ampdu1.i.i = getelementptr inbounds %struct.brcms_c_info, ptr %37, i32 0, i32 13
  %86 = ptrtoint ptr %ampdu1.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ampdu1.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.brcms_mcs_info], ptr @mcs_table, i32 0, i32 23, i32 1) to i32))
  %retval.0.i.i.i = load i32, ptr getelementptr inbounds ([0 x %struct.brcms_mcs_info], ptr @mcs_table, i32 0, i32 23, i32 1), align 4
  %fifo_tb.i.i = getelementptr inbounds %struct.ampdu_info, ptr %87, i32 0, i32 17
  %add.ptr.i.i = getelementptr %struct.brcms_fifo_info, ptr %fifo_tb.i.i, i32 %conv174.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xmtfifo_sz.i.i) #9
  %88 = ptrtoint ptr %xmtfifo_sz.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 -1, ptr %xmtfifo_sz.i.i, align 4, !annotation !57
  %hw.i.i = getelementptr inbounds %struct.brcms_c_info, ptr %37, i32 0, i32 2
  %89 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %hw.i.i, align 4
  %91 = shl nuw nsw i32 %conv174.i, 1
  %add.i.i = add nuw nsw i32 %91, 236
  %call2.i.i = tail call zeroext i16 @brcms_b_read_shm(ptr noundef %90, i32 noundef %add.i.i) #9
  %prev_txfunfl.i.i = getelementptr %struct.brcms_fifo_info, ptr %fifo_tb.i.i, i32 %conv174.i, i32 2
  %92 = ptrtoint ptr %prev_txfunfl.i.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %prev_txfunfl.i.i, align 2
  %sub.i.i = sub i16 %call2.i.i, %93
  %conv5.i.i = zext i16 %sub.i.i to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %call2.i.i, i16 %93)
  %cmp.i.i = icmp eq i16 %call2.i.i, %93
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then173.i
  call void @__sanitizer_cov_trace_pc() #11
  %94 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %hw.i.i, align 4
  %d11core.i.i = getelementptr inbounds %struct.brcms_hardware, ptr %95, i32 0, i32 14
  %96 = ptrtoint ptr %d11core.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %d11core.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.bcma_device, ptr %97, i32 0, i32 2
  tail call void (ptr, i32, ptr, ptr, ...) @__brcms_dbg(ptr noundef %dev.i.i, i32 noundef 64, ptr noundef nonnull @__func__.brcms_c_ffpld_check_txfunfl, ptr noundef nonnull @.str.12) #9
  br label %brcms_c_ffpld_check_txfunfl.exit.i

if.end.i.i:                                       ; preds = %if.then173.i
  %98 = ptrtoint ptr %prev_txfunfl.i.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %call2.i.i, ptr %prev_txfunfl.i.i, align 2
  %tx_max_funl.i.i = getelementptr inbounds %struct.ampdu_info, ptr %87, i32 0, i32 16
  %99 = ptrtoint ptr %tx_max_funl.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %tx_max_funl.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool.not.i.i = icmp eq i32 %100, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.brcms_c_ffpld_check_txfunfl.exit.i_crit_edge, label %if.end10.i.i

if.end.i.i.brcms_c_ffpld_check_txfunfl.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcms_c_ffpld_check_txfunfl.exit.i

if.end10.i.i:                                     ; preds = %if.end.i.i
  %101 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %hw.i.i, align 4
  %call12.i.i = call i32 @brcms_b_xmtfifo_sz_get(ptr noundef %102, i32 noundef %conv174.i, ptr noundef nonnull %xmtfifo_sz.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %tobool13.not.i.i = icmp eq i32 %call12.i.i, 0
  br i1 %tobool13.not.i.i, label %if.end15.i.i, label %if.end10.i.i.brcms_c_ffpld_check_txfunfl.exit.i_crit_edge

if.end10.i.i.brcms_c_ffpld_check_txfunfl.exit.i_crit_edge: ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcms_c_ffpld_check_txfunfl.exit.i

if.end15.i.i:                                     ; preds = %if.end10.i.i
  %103 = ptrtoint ptr %xmtfifo_sz.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %xmtfifo_sz.i.i, align 4
  %mul.i.i = shl i32 %104, 8
  %ffpld_rsvd.i.i = getelementptr inbounds %struct.ampdu_info, ptr %87, i32 0, i32 13
  %105 = ptrtoint ptr %ffpld_rsvd.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %ffpld_rsvd.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i, i32 %106)
  %cmp16.not.i.i = icmp ugt i32 %mul.i.i, %106
  br i1 %cmp16.not.i.i, label %if.end19.i.i, label %if.end15.i.i.brcms_c_ffpld_check_txfunfl.exit.i_crit_edge

if.end15.i.i.brcms_c_ffpld_check_txfunfl.exit.i_crit_edge: ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcms_c_ffpld_check_txfunfl.exit.i

if.end19.i.i:                                     ; preds = %if.end15.i.i
  %sub22.i.i = sub i32 %mul.i.i, %106
  %conv23.i.i = trunc i32 %sub22.i.i to i16
  %accum_txfunfl.i.i = getelementptr %struct.brcms_fifo_info, ptr %fifo_tb.i.i, i32 %conv174.i, i32 3
  %107 = ptrtoint ptr %accum_txfunfl.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %accum_txfunfl.i.i, align 4
  %add24.i.i = add i32 %108, %conv5.i.i
  store i32 %add24.i.i, ptr %accum_txfunfl.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %add24.i.i)
  %cmp26.i.i = icmp ult i32 %add24.i.i, 10
  br i1 %cmp26.i.i, label %if.end19.i.i.brcms_c_ffpld_check_txfunfl.exit.i_crit_edge, label %if.end29.i.i

if.end19.i.i.brcms_c_ffpld_check_txfunfl.exit.i_crit_edge: ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcms_c_ffpld_check_txfunfl.exit.i

if.end29.i.i:                                     ; preds = %if.end19.i.i
  %109 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %hw.i.i, align 4
  %d11core31.i.i = getelementptr inbounds %struct.brcms_hardware, ptr %110, i32 0, i32 14
  %111 = ptrtoint ptr %d11core31.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %d11core31.i.i, align 4
  %dev32.i.i = getelementptr inbounds %struct.bcma_device, ptr %112, i32 0, i32 2
  call void (ptr, i32, ptr, ptr, ...) @__brcms_dbg(ptr noundef %dev32.i.i, i32 noundef 64, ptr noundef nonnull @__func__.brcms_c_ffpld_check_txfunfl, ptr noundef nonnull @.str.13, i32 noundef 0, i32 noundef %add24.i.i) #9
  %arrayidx.i.i = getelementptr %struct.brcms_fifo_info, ptr %fifo_tb.i.i, i32 %conv174.i, i32 1, i32 23
  %113 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %114)
  %cmp47.i.i = icmp ult i8 %114, 16
  %phi.cast.i.i = zext i8 %114 to i32
  %phi.bo.i.i = mul nuw nsw i32 %phi.cast.i.i, 1800
  %cond.i.i = select i1 %cmp47.i.i, i32 %phi.bo.i.i, i32 28800
  %115 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %add.ptr.i.i, align 4
  %conv52.i.i = zext i16 %116 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i, i32 %conv52.i.i)
  %cmp55.not.i.i = icmp ugt i32 %cond.i.i, %conv52.i.i
  br i1 %cmp55.not.i.i, label %if.end59.i.i, label %if.then57.i.i

if.then57.i.i:                                    ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %117 = ptrtoint ptr %accum_txfunfl.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 0, ptr %accum_txfunfl.i.i, align 4
  br label %brcms_c_ffpld_check_txfunfl.exit.i

if.end59.i.i:                                     ; preds = %if.end29.i.i
  %conv62.i.i = and i32 %sub22.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv62.i.i, i32 %conv52.i.i)
  %cmp63.i.i = icmp ugt i32 %conv62.i.i, %conv52.i.i
  br i1 %cmp63.i.i, label %if.then65.i.i, label %if.else.i.i

if.then65.i.i:                                    ; preds = %if.end59.i.i
  %add68.i.i = add i16 %116, 1000
  %conv71.i.i = zext i16 %add68.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv62.i.i, i32 %conv71.i.i)
  %cmp73.i.i = icmp ult i32 %conv62.i.i, %conv71.i.i
  %spec.select.i.i = select i1 %cmp73.i.i, i16 %conv23.i.i, i16 %add68.i.i
  %118 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %spec.select.i.i, ptr %add.ptr.i.i, align 4
  %119 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %87, align 4
  %max_pdu.i.i64 = getelementptr inbounds %struct.brcms_c_info, ptr %120, i32 0, i32 66, i32 9, i32 2
  %121 = ptrtoint ptr %max_pdu.i.i64 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 16, ptr %max_pdu.i.i64, align 1
  %max_pdu5.i.i65 = getelementptr inbounds %struct.ampdu_info, ptr %87, i32 0, i32 10
  %122 = ptrtoint ptr %max_pdu5.i.i65 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %max_pdu5.i.i65, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %123)
  %cmp7.not.i.i66 = icmp eq i8 %123, -1
  %spec.store.select81.i.i67 = select i1 %cmp7.not.i.i66, i8 16, i8 %123
  %124 = ptrtoint ptr %max_pdu.i.i64 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %spec.store.select81.i.i67, ptr %max_pdu.i.i64, align 1
  %125 = call i8 @llvm.umin.i8(i8 %spec.store.select81.i.i67, i8 20) #9
  %release.i.i68 = getelementptr inbounds %struct.brcms_c_info, ptr %120, i32 0, i32 66, i32 9, i32 3
  %126 = ptrtoint ptr %release.i.i68 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %125, ptr %release.i.i68, align 2
  %max_rx_ampdu_bytes.i.i69 = getelementptr inbounds %struct.brcms_c_info, ptr %120, i32 0, i32 66, i32 9, i32 5
  %127 = ptrtoint ptr %max_rx_ampdu_bytes.i.i69 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %max_rx_ampdu_bytes.i.i69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool.not.i.i70 = icmp eq i32 %128, 0
  br i1 %tobool.not.i.i70, label %if.then65.i.i.brcms_c_scb_ampdu_update_config_all.exit77_crit_edge, label %if.then21.i.i75

if.then65.i.i.brcms_c_scb_ampdu_update_config_all.exit77_crit_edge: ; preds = %if.then65.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcms_c_scb_ampdu_update_config_all.exit77

if.then21.i.i75:                                  ; preds = %if.then65.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %div.i.i71 = udiv i32 %128, 1600
  %conv26.i.i72 = zext i8 %125 to i32
  %conv27.i.i73 = and i32 %div.i.i71, 255
  %129 = call i32 @llvm.umin.i32(i32 %conv27.i.i73, i32 %conv26.i.i72) #9
  %conv36.i.i74 = trunc i32 %129 to i8
  %130 = ptrtoint ptr %release.i.i68 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %conv36.i.i74, ptr %release.i.i68, align 2
  br label %brcms_c_scb_ampdu_update_config_all.exit77

brcms_c_scb_ampdu_update_config_all.exit77:       ; preds = %if.then21.i.i75, %if.then65.i.i.brcms_c_scb_ampdu_update_config_all.exit77_crit_edge
  %131 = ptrtoint ptr %release.i.i68 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %release.i.i68, align 2
  %arrayidx42.i.i76 = getelementptr %struct.ampdu_info, ptr %87, i32 0, i32 17, i32 1, i32 1, i32 23
  %133 = ptrtoint ptr %arrayidx42.i.i76 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx42.i.i76, align 1
  %135 = call i8 @llvm.umin.i8(i8 %132, i8 %134) #9
  %136 = ptrtoint ptr %release.i.i68 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %135, ptr %release.i.i68, align 2
  %div78.i.i = udiv i32 %retval.0.i.i.i, 100
  %137 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %add.ptr.i.i, align 4
  %conv82.i.i = zext i16 %138 to i32
  %sub83.i.i = sub nsw i32 %cond.i.i, %conv82.i.i
  %mul84.i.i = mul i32 %sub83.i.i, %div78.i.i
  %div87.i.i = udiv i32 %mul84.i.i, %cond.i.i
  %mul88.i.i = mul i32 %div87.i.i, 100
  %dmaxferrate.i.i = getelementptr %struct.brcms_fifo_info, ptr %fifo_tb.i.i, i32 %conv174.i, i32 6
  %139 = ptrtoint ptr %dmaxferrate.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %mul88.i.i, ptr %dmaxferrate.i.i, align 4
  %140 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %hw.i.i, align 4
  %d11core90.i.i = getelementptr inbounds %struct.brcms_hardware, ptr %141, i32 0, i32 14
  %142 = ptrtoint ptr %d11core90.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %d11core90.i.i, align 4
  %dev91.i.i = getelementptr inbounds %struct.bcma_device, ptr %143, i32 0, i32 2
  call void (ptr, i32, ptr, ptr, ...) @__brcms_dbg(ptr noundef %dev91.i.i, i32 noundef 64, ptr noundef nonnull @__func__.brcms_c_ffpld_check_txfunfl, ptr noundef nonnull @.str.14, i32 noundef %mul88.i.i, i32 noundef %conv82.i.i) #9
  br label %if.end117.i.i

if.else.i.i:                                      ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %114)
  %cmp98.i.i = icmp ugt i8 %114, 1
  br i1 %cmp98.i.i, label %if.then100.i.i, label %if.else.i.i.if.end117.i.i_crit_edge

if.else.i.i.if.end117.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end117.i.i

if.then100.i.i:                                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %114)
  %cmp104.i.i = icmp eq i8 %114, -1
  %sub113.i.i = add i8 %114, -1
  %storemerge.i.i = select i1 %cmp104.i.i, i8 15, i8 %sub113.i.i
  %144 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %storemerge.i.i, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %storemerge.i.i)
  %cmp.i = icmp ult i8 %storemerge.i.i, 16
  %phi.cast.i = zext i8 %storemerge.i.i to i32
  %phi.bo.i = mul nuw nsw i32 %phi.cast.i, 1800
  %cond.i61 = select i1 %cmp.i, i32 %phi.bo.i, i32 28800
  %div.i = udiv i32 %retval.0.i.i.i, 100
  %sub.i = sub nsw i32 %cond.i61, %conv52.i.i
  %mul9.i = mul i32 %sub.i, %div.i
  %div12.i = udiv i32 %mul9.i, %cond.i61
  %mul13.i = mul nuw nsw i32 %div12.i, 100
  %dmaxferrate.i = getelementptr %struct.brcms_fifo_info, ptr %fifo_tb.i.i, i32 %conv174.i, i32 6
  %145 = ptrtoint ptr %dmaxferrate.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %mul13.i, ptr %dmaxferrate.i, align 4
  %shr.i = lshr i32 %mul13.i, 7
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then100.i.i
  %i.057.i = phi i32 [ 0, %if.then100.i.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %phy_rate_40.i.i = getelementptr [0 x %struct.brcms_mcs_info], ptr @mcs_table, i32 0, i32 %i.057.i, i32 1
  %146 = ptrtoint ptr %phy_rate_40.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %retval.0.i56.i = load i32, ptr %phy_rate_40.i.i, align 4
  %shr18.i = lshr i32 %retval.0.i56.i, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %shr18.i, i32 %shr.i)
  %cmp19.i = icmp ugt i32 %shr18.i, %shr.i
  br i1 %cmp19.i, label %if.then.i63, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then.i63:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %147 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %add.ptr.i.i, align 4
  %conv22.i = zext i16 %148 to i32
  %mul23.i = mul i32 %shr18.i, %conv22.i
  %sub24.i = sub nsw i32 %shr18.i, %shr.i
  %mul25.i = mul i32 %sub24.i, 1800
  %div26.i = udiv i32 %mul23.i, %mul25.i
  %add.i = add i32 %div26.i, 1
  %149 = call i32 @llvm.umin.i32(i32 %add.i, i32 255) #9
  %conv34.i = trunc i32 %149 to i8
  %arrayidx36.i = getelementptr %struct.brcms_fifo_info, ptr %fifo_tb.i.i, i32 %conv174.i, i32 1, i32 %i.057.i
  %150 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %conv34.i, ptr %arrayidx36.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i63, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.057.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 23
  br i1 %exitcond.not.i, label %brcms_c_ffpld_calc_mcs2ampdu_table.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

brcms_c_ffpld_calc_mcs2ampdu_table.exit:          ; preds = %for.inc.i
  %151 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %87, align 4
  %max_pdu.i.i = getelementptr inbounds %struct.brcms_c_info, ptr %152, i32 0, i32 66, i32 9, i32 2
  %153 = ptrtoint ptr %max_pdu.i.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 16, ptr %max_pdu.i.i, align 1
  %max_pdu5.i.i = getelementptr inbounds %struct.ampdu_info, ptr %87, i32 0, i32 10
  %154 = ptrtoint ptr %max_pdu5.i.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %max_pdu5.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %155)
  %cmp7.not.i.i = icmp eq i8 %155, -1
  %spec.store.select81.i.i = select i1 %cmp7.not.i.i, i8 16, i8 %155
  %156 = ptrtoint ptr %max_pdu.i.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %spec.store.select81.i.i, ptr %max_pdu.i.i, align 1
  %157 = call i8 @llvm.umin.i8(i8 %spec.store.select81.i.i, i8 20) #9
  %release.i.i = getelementptr inbounds %struct.brcms_c_info, ptr %152, i32 0, i32 66, i32 9, i32 3
  %158 = ptrtoint ptr %release.i.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %157, ptr %release.i.i, align 2
  %max_rx_ampdu_bytes.i.i = getelementptr inbounds %struct.brcms_c_info, ptr %152, i32 0, i32 66, i32 9, i32 5
  %159 = ptrtoint ptr %max_rx_ampdu_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %max_rx_ampdu_bytes.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %tobool.not.i.i60 = icmp eq i32 %160, 0
  br i1 %tobool.not.i.i60, label %brcms_c_ffpld_calc_mcs2ampdu_table.exit.brcms_c_scb_ampdu_update_config_all.exit_crit_edge, label %if.then21.i.i

brcms_c_ffpld_calc_mcs2ampdu_table.exit.brcms_c_scb_ampdu_update_config_all.exit_crit_edge: ; preds = %brcms_c_ffpld_calc_mcs2ampdu_table.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcms_c_scb_ampdu_update_config_all.exit

if.then21.i.i:                                    ; preds = %brcms_c_ffpld_calc_mcs2ampdu_table.exit
  call void @__sanitizer_cov_trace_pc() #11
  %div.i.i = udiv i32 %160, 1600
  %conv26.i.i = zext i8 %157 to i32
  %conv27.i.i = and i32 %div.i.i, 255
  %161 = call i32 @llvm.umin.i32(i32 %conv27.i.i, i32 %conv26.i.i) #9
  %conv36.i.i = trunc i32 %161 to i8
  %162 = ptrtoint ptr %release.i.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %conv36.i.i, ptr %release.i.i, align 2
  br label %brcms_c_scb_ampdu_update_config_all.exit

brcms_c_scb_ampdu_update_config_all.exit:         ; preds = %if.then21.i.i, %brcms_c_ffpld_calc_mcs2ampdu_table.exit.brcms_c_scb_ampdu_update_config_all.exit_crit_edge
  %163 = ptrtoint ptr %release.i.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %release.i.i, align 2
  %arrayidx42.i.i = getelementptr %struct.ampdu_info, ptr %87, i32 0, i32 17, i32 1, i32 1, i32 23
  %165 = ptrtoint ptr %arrayidx42.i.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %arrayidx42.i.i, align 1
  %167 = call i8 @llvm.umin.i8(i8 %164, i8 %166) #9
  %168 = ptrtoint ptr %release.i.i to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %167, ptr %release.i.i, align 2
  br label %if.end117.i.i

if.end117.i.i:                                    ; preds = %brcms_c_scb_ampdu_update_config_all.exit, %if.else.i.i.if.end117.i.i_crit_edge, %brcms_c_scb_ampdu_update_config_all.exit77
  %169 = ptrtoint ptr %accum_txfunfl.i.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 0, ptr %accum_txfunfl.i.i, align 4
  br label %brcms_c_ffpld_check_txfunfl.exit.i

brcms_c_ffpld_check_txfunfl.exit.i:               ; preds = %if.end117.i.i, %if.then57.i.i, %if.end19.i.i.brcms_c_ffpld_check_txfunfl.exit.i_crit_edge, %if.end15.i.i.brcms_c_ffpld_check_txfunfl.exit.i_crit_edge, %if.end10.i.i.brcms_c_ffpld_check_txfunfl.exit.i_crit_edge, %if.end.i.i.brcms_c_ffpld_check_txfunfl.exit.i_crit_edge, %if.then.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xmtfifo_sz.i.i) #9
  br label %if.end189.i

if.else179.i:                                     ; preds = %if.else.i
  %phyerr.i = getelementptr inbounds %struct.tx_status, ptr %txs, i32 0, i32 6
  %170 = ptrtoint ptr %phyerr.i to i32
  call void @__asan_loadN_noabort(i32 %170, i32 2)
  %171 = load i16, ptr %phyerr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %171)
  %tobool180.not.i = icmp eq i16 %171, 0
  br i1 %tobool180.not.i, label %if.else179.i.if.end189.i_crit_edge, label %if.then181.i

if.else179.i.if.end189.i_crit_edge:               ; preds = %if.else179.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end189.i

if.then181.i:                                     ; preds = %if.else179.i
  call void @__sanitizer_cov_trace_pc() #11
  %hw182.i = getelementptr inbounds %struct.brcms_c_info, ptr %37, i32 0, i32 2
  %172 = ptrtoint ptr %hw182.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %hw182.i, align 4
  %d11core183.i = getelementptr inbounds %struct.brcms_hardware, ptr %173, i32 0, i32 14
  %174 = ptrtoint ptr %d11core183.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %d11core183.i, align 4
  %dev184.i = getelementptr inbounds %struct.bcma_device, ptr %175, i32 0, i32 2
  %conv186.i = zext i16 %171 to i32
  tail call void (ptr, i32, ptr, ptr, ...) @__brcms_dbg(ptr noundef %dev184.i, i32 noundef 64, ptr noundef nonnull @__func__.brcms_c_ampdu_dotxstatus_complete, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.brcms_c_ampdu_dotxstatus_complete, i32 noundef %conv186.i) #9
  br label %if.end189.i

if.end189.i:                                      ; preds = %if.then181.i, %if.else179.i.if.end189.i_crit_edge, %brcms_c_ffpld_check_txfunfl.exit.i, %if.then155.i, %if.then147.i, %if.end105.i
  %retry.0.off0.i = phi i1 [ true, %if.end105.i ], [ true, %brcms_c_ffpld_check_txfunfl.exit.i ], [ true, %if.then181.i ], [ true, %if.else179.i.if.end189.i_crit_edge ], [ false, %if.then147.i ], [ %cond.i, %if.then155.i ]
  %start_seq.0.i = phi i32 [ %58, %if.end105.i ], [ 0, %brcms_c_ffpld_check_txfunfl.exit.i ], [ 0, %if.then181.i ], [ 0, %if.else179.i.if.end189.i_crit_edge ], [ 0, %if.then147.i ], [ 0, %if.then155.i ]
  %tobool190.not447.i = icmp eq ptr %p, null
  br i1 %tobool190.not447.i, label %if.end189.i.brcms_c_ampdu_dotxstatus_complete.exit_crit_edge, label %while.body.lr.ph.i

if.end189.i.brcms_c_ampdu_dotxstatus_complete.exit_crit_edge: ; preds = %if.end189.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcms_c_ampdu_dotxstatus_complete.exit

while.body.lr.ph.i:                               ; preds = %if.end189.i
  %hw196.i = getelementptr inbounds %struct.brcms_c_info, ptr %37, i32 0, i32 2
  %176 = trunc i32 %start_seq.0.i to i16
  %conv265.i = zext i8 %conv8.i to i32
  br label %while.body.i

while.body.i:                                     ; preds = %if.end341.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %p.addr.0452.i = phi ptr [ %p, %while.body.lr.ph.i ], [ %call345.i, %if.end341.i.while.body.i_crit_edge ]
  %tot_mpdu.0449.i = phi i8 [ 0, %while.body.lr.ph.i ], [ %inc334.i, %if.end341.i.while.body.i_crit_edge ]
  %mimoantsel.0448.i = phi i16 [ 0, %while.body.lr.ph.i ], [ %mimoantsel.1.i, %if.end341.i.while.body.i_crit_edge ]
  %cb.i434.i = getelementptr inbounds %struct.sk_buff, ptr %p.addr.0452.i, i32 0, i32 3
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %p.addr.0452.i, i32 0, i32 19
  %177 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %data.i, align 4
  %179 = ptrtoint ptr %178 to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %178, align 2
  %seq_ctrl.i = getelementptr %struct.d11txh, ptr %178, i32 1, i32 11, i32 6
  %181 = ptrtoint ptr %seq_ctrl.i to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %seq_ctrl.i, align 2
  %183 = call i16 @llvm.bswap.i16(i16 %182) #9
  %184 = lshr i16 %183, 4
  %185 = ptrtoint ptr %hw196.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %hw196.i, align 4
  %d11core197.i = getelementptr inbounds %struct.brcms_hardware, ptr %186, i32 0, i32 14
  %187 = ptrtoint ptr %d11core197.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %d11core197.i, align 4
  %dev198.i = getelementptr inbounds %struct.bcma_device, ptr %188, i32 0, i32 2
  call fastcc void @trace_brcms_txdesc(ptr noundef %dev198.i, ptr noundef %178) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tot_mpdu.0449.i)
  %cmp200.i = icmp eq i8 %tot_mpdu.0449.i, 0
  br i1 %cmp200.i, label %if.then202.i, label %while.body.i.if.end207.i_crit_edge

while.body.i.if.end207.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end207.i

if.then202.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %ABI_MimoAntSel.i = getelementptr inbounds %struct.d11txh, ptr %178, i32 0, i32 22
  %189 = ptrtoint ptr %ABI_MimoAntSel.i to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %ABI_MimoAntSel.i, align 2
  %191 = call i16 @llvm.bswap.i16(i16 %190) #9
  br label %if.end207.i

if.end207.i:                                      ; preds = %if.then202.i, %while.body.i.if.end207.i_crit_edge
  %mimoantsel.1.i = phi i16 [ %191, %if.then202.i ], [ %mimoantsel.0448.i, %while.body.i.if.end207.i_crit_edge ]
  %conv208.i = zext i16 %184 to i32
  %rem.i = and i16 %184, 63
  br i1 %tobool.not.i, label %if.end207.i.if.then250.i_crit_edge, label %if.then211.i

if.end207.i.if.then250.i_crit_edge:               ; preds = %if.end207.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then250.i

if.then211.i:                                     ; preds = %if.end207.i
  %192 = sub i16 %184, %176
  %conv215.i = and i16 %192, 4095
  %conv216.i = zext i16 %conv215.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %conv215.i)
  %cmp217.i = icmp ult i16 %conv215.i, 64
  br i1 %cmp217.i, label %if.then219.i, label %if.then211.i.if.end229.i_crit_edge

if.then211.i.if.end229.i_crit_edge:               ; preds = %if.then211.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end229.i

if.then219.i:                                     ; preds = %if.then211.i
  call void @__sanitizer_cov_trace_pc() #11
  %div432.i = lshr i32 %conv216.i, 3
  %arrayidx222.i = getelementptr i8, ptr %bitmap.i, i32 %div432.i
  %193 = ptrtoint ptr %arrayidx222.i to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %arrayidx222.i, align 1
  %conv223.i = zext i8 %194 to i32
  %rem225.i = and i32 %conv216.i, 7
  %shl226.i = shl nuw nsw i32 1, %rem225.i
  %and227.i = and i32 %shl226.i, %conv223.i
  br label %if.end229.i

if.end229.i:                                      ; preds = %if.then219.i, %if.then211.i.if.end229.i_crit_edge
  %block_acked.0.i = phi i32 [ %and227.i, %if.then219.i ], [ 0, %if.then211.i.if.end229.i_crit_edge ]
  %195 = ptrtoint ptr %hw196.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %hw196.i, align 4
  %d11core231.i = getelementptr inbounds %struct.brcms_hardware, ptr %196, i32 0, i32 14
  %197 = ptrtoint ptr %d11core231.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %d11core231.i, align 4
  %dev232.i = getelementptr inbounds %struct.bcma_device, ptr %198, i32 0, i32 2
  %conv237.i = zext i16 %rem.i to i32
  call void (ptr, i32, ptr, ptr, ...) @__brcms_dbg(ptr noundef %dev232.i, i32 noundef 64, ptr noundef nonnull @__func__.brcms_c_ampdu_dotxstatus_complete, ptr noundef nonnull @.str.9, i32 noundef %idxprom.i, i32 noundef %conv208.i, i32 noundef %start_seq.0.i, i32 noundef %conv216.i, i32 noundef %block_acked.0.i, i32 noundef %conv237.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %block_acked.0.i)
  %tobool238.not.i = icmp eq i32 %block_acked.0.i, 0
  br i1 %tobool238.not.i, label %if.end229.i.if.then250.i_crit_edge, label %if.end248.i

if.end229.i.if.then250.i_crit_edge:               ; preds = %if.end229.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then250.i

if.end248.i:                                      ; preds = %if.end229.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx241.i = getelementptr %struct.scb, ptr %scb, i32 0, i32 9, i32 6, i32 %idxprom.i, i32 1, i32 %conv237.i
  %199 = ptrtoint ptr %arrayidx241.i to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 0, ptr %arrayidx241.i, align 1
  %arrayidx.i435.i = getelementptr %struct.sk_buff, ptr %p.addr.0452.i, i32 0, i32 3, i32 14
  %200 = ptrtoint ptr %arrayidx.i435.i to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 -1, ptr %arrayidx.i435.i, align 1
  %count.i.i = getelementptr %struct.sk_buff, ptr %p.addr.0452.i, i32 0, i32 3, i32 15
  %201 = ptrtoint ptr %count.i.i to i32
  call void @__asan_loadN_noabort(i32 %201, i32 2)
  %bf.load.i.i = load i16, ptr %count.i.i, align 1
  %bf.clear.i.i = and i16 %bf.load.i.i, 2047
  store i16 %bf.clear.i.i, ptr %count.i.i, align 1
  %arrayidx.1.i.i = getelementptr %struct.sk_buff, ptr %p.addr.0452.i, i32 0, i32 3, i32 17
  %202 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 -1, ptr %arrayidx.1.i.i, align 1
  %count.1.i.i = getelementptr %struct.sk_buff, ptr %p.addr.0452.i, i32 0, i32 3, i32 18
  %203 = ptrtoint ptr %count.1.i.i to i32
  call void @__asan_loadN_noabort(i32 %203, i32 2)
  %bf.load.1.i.i = load i16, ptr %count.1.i.i, align 1
  %bf.clear.1.i.i = and i16 %bf.load.1.i.i, 2047
  store i16 %bf.clear.1.i.i, ptr %count.1.i.i, align 1
  %204 = ptrtoint ptr %cb.i434.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %cb.i434.i, align 8
  %or244.i = or i32 %205, 1536
  store i32 %or244.i, ptr %cb.i434.i, align 8
  %ampdu_len.i = getelementptr inbounds %struct.sk_buff, ptr %p.addr.0452.i, i32 0, i32 3, i32 25
  %206 = ptrtoint ptr %ampdu_len.i to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 1, ptr %ampdu_len.i, align 1
  %ampdu_ack_len.i = getelementptr inbounds %struct.sk_buff, ptr %p.addr.0452.i, i32 0, i32 3, i32 24
  %207 = ptrtoint ptr %ampdu_ack_len.i to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 1, ptr %ampdu_ack_len.i, align 8
  %call245.i = call ptr @skb_pull(ptr noundef nonnull %p.addr.0452.i, i32 noundef 6) #9
  %call246.i = call ptr @skb_pull(ptr noundef nonnull %p.addr.0452.i, i32 noundef 112) #9
  %208 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %37, align 4
  %ieee_hw.i = getelementptr inbounds %struct.brcms_pub, ptr %209, i32 0, i32 1
  %210 = ptrtoint ptr %ieee_hw.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %ieee_hw.i, align 4
  call void @ieee80211_tx_status_irqsafe(ptr noundef %211, ptr noundef nonnull %p.addr.0452.i) #9
  br label %if.end333.i

if.then250.i:                                     ; preds = %if.end229.i.if.then250.i_crit_edge, %if.end207.i.if.then250.i_crit_edge
  br i1 %retry.0.off0.i, label %land.lhs.true.i, label %if.then250.i.if.else319.i_crit_edge

if.then250.i.if.else319.i_crit_edge:              ; preds = %if.then250.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else319.i

land.lhs.true.i:                                  ; preds = %if.then250.i
  %idxprom254.i = zext i16 %rem.i to i32
  %arrayidx255.i = getelementptr %struct.scb, ptr %scb, i32 0, i32 9, i32 6, i32 %idxprom.i, i32 1, i32 %idxprom254.i
  %212 = ptrtoint ptr %arrayidx255.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %arrayidx255.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %213, i8 %48)
  %cmp258.i = icmp ult i8 %213, %48
  br i1 %cmp258.i, label %if.then260.i, label %land.lhs.true.i.if.else319.i_crit_edge

land.lhs.true.i.if.else319.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else319.i

if.then260.i:                                     ; preds = %land.lhs.true.i
  %inc264.i = add nuw i8 %213, 1
  %214 = ptrtoint ptr %arrayidx255.i to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 %inc264.i, ptr %arrayidx255.i, align 1
  %call266.i = call i32 @brcms_c_txfifo(ptr noundef %37, i32 noundef %conv265.i, ptr noundef nonnull %p.addr.0452.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call266.i)
  %tobool267.not.i = icmp eq i32 %call266.i, 0
  br i1 %tobool267.not.i, label %if.then260.i.if.end333.i_crit_edge, label %land.rhs.i

if.then260.i.if.end333.i_crit_edge:               ; preds = %if.then260.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end333.i

land.rhs.i:                                       ; preds = %if.then260.i
  %.b431.i = load i1, ptr @brcms_c_ampdu_dotxstatus_complete.__already_done, align 1
  br i1 %.b431.i, label %land.rhs.i.if.end333.i_crit_edge, label %if.then283.i, !prof !56

land.rhs.i.if.end333.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end333.i

if.then283.i:                                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @brcms_c_ampdu_dotxstatus_complete.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 992, i32 noundef 9, ptr noundef nonnull @.str.10, i32 noundef %conv265.i) #9
  br label %if.end333.i

if.else319.i:                                     ; preds = %land.lhs.true.i.if.else319.i_crit_edge, %if.then250.i.if.else319.i_crit_edge
  %count.i436.i = getelementptr %struct.sk_buff, ptr %p.addr.0452.i, i32 0, i32 3, i32 9
  %215 = ptrtoint ptr %count.i436.i to i32
  call void @__asan_loadN_noabort(i32 %215, i32 2)
  %bf.load.i437.i = load i16, ptr %count.i436.i, align 1
  %bf.clear.i438.i = and i16 %bf.load.i437.i, 2047
  store i16 %bf.clear.i438.i, ptr %count.i436.i, align 1
  %count.1.i439.i = getelementptr %struct.sk_buff, ptr %p.addr.0452.i, i32 0, i32 3, i32 12
  %216 = ptrtoint ptr %count.1.i439.i to i32
  call void @__asan_loadN_noabort(i32 %216, i32 2)
  %bf.load.1.i440.i = load i16, ptr %count.1.i439.i, align 1
  %bf.clear.1.i441.i = and i16 %bf.load.1.i440.i, 2047
  store i16 %bf.clear.1.i441.i, ptr %count.1.i439.i, align 1
  %count.2.i.i = getelementptr %struct.sk_buff, ptr %p.addr.0452.i, i32 0, i32 3, i32 15
  %217 = ptrtoint ptr %count.2.i.i to i32
  call void @__asan_loadN_noabort(i32 %217, i32 2)
  %bf.load.2.i.i = load i16, ptr %count.2.i.i, align 1
  %bf.clear.2.i.i = and i16 %bf.load.2.i.i, 2047
  store i16 %bf.clear.2.i.i, ptr %count.2.i.i, align 1
  %count.3.i.i = getelementptr %struct.sk_buff, ptr %p.addr.0452.i, i32 0, i32 3, i32 18
  %218 = ptrtoint ptr %count.3.i.i to i32
  call void @__asan_loadN_noabort(i32 %218, i32 2)
  %bf.load.3.i.i = load i16, ptr %count.3.i.i, align 1
  %bf.clear.3.i.i = and i16 %bf.load.3.i.i, 2047
  store i16 %bf.clear.3.i.i, ptr %count.3.i.i, align 1
  %add.ptr.i442.i = getelementptr %struct.sk_buff, ptr %p.addr.0452.i, i32 0, i32 3, i32 20
  %ampdu_len321.i = getelementptr inbounds %struct.sk_buff, ptr %p.addr.0452.i, i32 0, i32 3, i32 25
  %219 = call ptr @memset(ptr %add.ptr.i442.i, i32 0, i32 28)
  %220 = ptrtoint ptr %ampdu_len321.i to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 1, ptr %ampdu_len321.i, align 1
  %221 = ptrtoint ptr %cb.i434.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %cb.i434.i, align 8
  %or323.i = or i32 %222, 2048
  store i32 %or323.i, ptr %cb.i434.i, align 8
  %call324.i = call ptr @skb_pull(ptr noundef nonnull %p.addr.0452.i, i32 noundef 6) #9
  %call325.i = call ptr @skb_pull(ptr noundef nonnull %p.addr.0452.i, i32 noundef 112) #9
  %223 = ptrtoint ptr %hw196.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %hw196.i, align 4
  %d11core327.i = getelementptr inbounds %struct.brcms_hardware, ptr %224, i32 0, i32 14
  %225 = ptrtoint ptr %d11core327.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %d11core327.i, align 4
  %dev328.i = getelementptr inbounds %struct.bcma_device, ptr %226, i32 0, i32 2
  call void (ptr, i32, ptr, ptr, ...) @__brcms_dbg(ptr noundef %dev328.i, i32 noundef 64, ptr noundef nonnull @__func__.brcms_c_ampdu_dotxstatus_complete, ptr noundef nonnull @.str.11, i32 noundef %conv208.i) #9
  %227 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %37, align 4
  %ieee_hw331.i = getelementptr inbounds %struct.brcms_pub, ptr %228, i32 0, i32 1
  %229 = ptrtoint ptr %ieee_hw331.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %ieee_hw331.i, align 4
  call void @ieee80211_tx_status_irqsafe(ptr noundef %230, ptr noundef nonnull %p.addr.0452.i) #9
  br label %if.end333.i

if.end333.i:                                      ; preds = %if.else319.i, %if.then283.i, %land.rhs.i.if.end333.i_crit_edge, %if.then260.i.if.end333.i_crit_edge, %if.end248.i
  %231 = and i16 %180, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %231)
  %cmp338.i = icmp eq i16 %231, 6
  br i1 %cmp338.i, label %if.end333.i.brcms_c_ampdu_dotxstatus_complete.exit_crit_edge, label %if.end341.i

if.end333.i.brcms_c_ampdu_dotxstatus_complete.exit_crit_edge: ; preds = %if.end333.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcms_c_ampdu_dotxstatus_complete.exit

if.end341.i:                                      ; preds = %if.end333.i
  %inc334.i = add i8 %tot_mpdu.0449.i, 1
  %232 = ptrtoint ptr %hw196.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %hw196.i, align 4
  %arrayidx344.i = getelementptr %struct.brcms_hardware, ptr %233, i32 0, i32 2, i32 %conv265.i
  %234 = ptrtoint ptr %arrayidx344.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %arrayidx344.i, align 4
  %call345.i = call ptr @dma_getnexttxp(ptr noundef %235, i32 noundef 2) #9
  %tobool190.not.i = icmp eq ptr %call345.i, null
  br i1 %tobool190.not.i, label %if.end341.i.brcms_c_ampdu_dotxstatus_complete.exit_crit_edge, label %if.end341.i.while.body.i_crit_edge

if.end341.i.while.body.i_crit_edge:               ; preds = %if.end341.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end341.i.brcms_c_ampdu_dotxstatus_complete.exit_crit_edge: ; preds = %if.end341.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcms_c_ampdu_dotxstatus_complete.exit

brcms_c_ampdu_dotxstatus_complete.exit:           ; preds = %if.end341.i.brcms_c_ampdu_dotxstatus_complete.exit_crit_edge, %if.end333.i.brcms_c_ampdu_dotxstatus_complete.exit_crit_edge, %if.end189.i.brcms_c_ampdu_dotxstatus_complete.exit_crit_edge
  %mimoantsel.2.i = phi i16 [ 0, %if.end189.i.brcms_c_ampdu_dotxstatus_complete.exit_crit_edge ], [ %mimoantsel.1.i, %if.end341.i.brcms_c_ampdu_dotxstatus_complete.exit_crit_edge ], [ %mimoantsel.1.i, %if.end333.i.brcms_c_ampdu_dotxstatus_complete.exit_crit_edge ]
  %asi.i = getelementptr inbounds %struct.brcms_c_info, ptr %37, i32 0, i32 14
  %236 = ptrtoint ptr %asi.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %asi.i, align 4
  %call346.i = call zeroext i8 @brcms_c_antsel_antsel2id(ptr noundef %237, i16 noundef zeroext %mimoantsel.2.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bitmap.i) #9
  br label %cleanup35

if.else:                                          ; preds = %if.end14
  %frameid = getelementptr inbounds %struct.tx_status, ptr %txs, i32 0, i32 2
  %238 = ptrtoint ptr %frameid to i32
  call void @__asan_loadN_noabort(i32 %238, i32 2)
  %239 = load i16, ptr %frameid, align 1
  %240 = and i16 %239, 7
  %conv19 = zext i16 %240 to i32
  %tobool21.not84 = icmp eq ptr %p, null
  br i1 %tobool21.not84, label %if.else.cleanup35_crit_edge, label %while.body22.lr.ph

if.else.cleanup35_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup35

while.body22.lr.ph:                               ; preds = %if.else
  %hw23 = getelementptr inbounds %struct.brcms_c_info, ptr %1, i32 0, i32 2
  br label %while.body22

while.body22:                                     ; preds = %if.end30.while.body22_crit_edge, %while.body22.lr.ph
  %p.addr.085 = phi ptr [ %p, %while.body22.lr.ph ], [ %call32, %if.end30.while.body22_crit_edge ]
  %data = getelementptr inbounds %struct.sk_buff, ptr %p.addr.085, i32 0, i32 19
  %241 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %data, align 4
  %243 = ptrtoint ptr %hw23 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %hw23, align 4
  %d11core24 = getelementptr inbounds %struct.brcms_hardware, ptr %244, i32 0, i32 14
  %245 = ptrtoint ptr %d11core24 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %d11core24, align 4
  %dev = getelementptr inbounds %struct.bcma_device, ptr %246, i32 0, i32 2
  tail call fastcc void @trace_brcms_txdesc(ptr noundef %dev, ptr noundef %242)
  %247 = ptrtoint ptr %242 to i32
  call void @__asan_load2_noabort(i32 %247)
  %248 = load i16, ptr %242, align 2
  tail call void @brcmu_pkt_buf_free_skb(ptr noundef nonnull %p.addr.085) #9
  %249 = and i16 %248, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %249)
  %cmp27 = icmp eq i16 %249, 6
  br i1 %cmp27, label %while.body22.cleanup35_crit_edge, label %if.end30

while.body22.cleanup35_crit_edge:                 ; preds = %while.body22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup35

if.end30:                                         ; preds = %while.body22
  %250 = ptrtoint ptr %hw23 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %hw23, align 4
  %arrayidx = getelementptr %struct.brcms_hardware, ptr %251, i32 0, i32 2, i32 %conv19
  %252 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %arrayidx, align 4
  %call32 = tail call ptr @dma_getnexttxp(ptr noundef %253, i32 noundef 2) #9
  %tobool21.not = icmp eq ptr %call32, null
  br i1 %tobool21.not, label %if.end30.cleanup35_crit_edge, label %if.end30.while.body22_crit_edge

if.end30.while.body22_crit_edge:                  ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body22

if.end30.cleanup35_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup35

cleanup35:                                        ; preds = %if.end30.cleanup35_crit_edge, %while.body22.cleanup35_crit_edge, %if.else.cleanup35_crit_edge, %brcms_c_ampdu_dotxstatus_complete.exit, %while.body.cleanup35_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_brcms_txdesc(ptr noundef %dev, ptr noundef %txh) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_brcms_txdesc, i32 0, i32 1), ptr blockaddress(@trace_brcms_txdesc, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !58

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !44) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !56

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !44) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !59
  %call42 = tail call i32 @__traceiter_brcms_txdesc(ptr noundef null, ptr noundef %dev, ptr noundef %txh, i32 noundef 112) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !60
  %13 = tail call i32 @llvm.read_register.i32(metadata !44) #9
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !44) #9
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !56

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div1.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !44) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_brcms_txdesc, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_brcms_txdesc, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_brcms_txdesc.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_brcms_txdesc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 38, ptr noundef nonnull @.str.16) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !62
  %31 = tail call i32 @llvm.read_register.i32(metadata !44) #9
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmu_pkt_buf_free_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_getnexttxp(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcms_c_ampdu_macaddr_upd(ptr nocapture noundef readonly %wlc) local_unnamed_addr #0 align 64 {
entry:
  %template = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %template) #9
  %0 = ptrtoint ptr %template to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %template, align 8
  %1 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %wlc, align 4
  %cur_etheraddr = getelementptr inbounds %struct.brcms_pub, ptr %2, i32 0, i32 17
  %3 = call ptr @memcpy(ptr %template, ptr %cur_etheraddr, i32 6)
  %hw = getelementptr inbounds %struct.brcms_c_info, ptr %wlc, i32 0, i32 2
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  call void @brcms_b_write_template_ram(ptr noundef %5, i32 noundef 72, i32 noundef 8, ptr noundef nonnull %template) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %template) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_b_write_template_ram(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @brcms_c_aggregatable(ptr nocapture noundef readonly %wlc, i8 noundef zeroext %tid) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ampdu = getelementptr inbounds %struct.brcms_c_info, ptr %wlc, i32 0, i32 13
  %0 = ptrtoint ptr %ampdu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ampdu, align 4
  %idxprom = zext i8 %tid to i32
  %arrayidx = getelementptr %struct.ampdu_info, ptr %1, i32 0, i32 2, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool = icmp ne i8 %3, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcms_c_ampdu_shm_upd(ptr nocapture noundef readonly %ampdu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ampdu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ampdu, align 4
  %rx_factor = getelementptr inbounds %struct.ampdu_info, ptr %ampdu, i32 0, i32 12
  %2 = ptrtoint ptr %rx_factor to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rx_factor, align 1
  %4 = and i8 %3, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %4)
  %cmp = icmp eq i8 %4, 3
  %hw = getelementptr inbounds %struct.brcms_c_info, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 4
  %. = select i1 %cmp, i16 -1, i16 -32768
  %.11 = select i1 %cmp, i16 10, i16 5
  tail call void @brcms_b_write_shm(ptr noundef %6, i32 noundef 186, i16 noundef zeroext %.) #9
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  tail call void @brcms_b_write_shm(ptr noundef %8, i32 noundef 60, i16 noundef zeroext %.11) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_b_write_shm(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcms_c_ampdu_flush(ptr nocapture noundef readonly %wlc, ptr noundef %sta, i16 noundef zeroext %tid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.brcms_c_info, ptr %wlc, i32 0, i32 2
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  tail call void @brcms_c_inval_dma_pkts(ptr noundef %1, ptr noundef %sta, ptr noundef nonnull @dma_cb_fn_ampdu) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_c_inval_dma_pkts(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dma_cb_fn_ampdu(ptr nocapture noundef %txi, ptr noundef readnone %arg_a) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %txi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %txi, align 8
  %and = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %rate_driver_data = getelementptr inbounds %struct.ieee80211_tx_info, ptr %txi, i32 0, i32 2, i32 1, i32 8
  %2 = ptrtoint ptr %rate_driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rate_driver_data, align 8
  %cmp = icmp eq ptr %3, %arg_a
  %cmp1 = icmp eq ptr %arg_a, null
  %or.cond = or i1 %cmp1, %cmp
  br i1 %or.cond, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %rate_driver_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %rate_driver_data, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_tx_status_irqsafe(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcms_c_txfifo(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @brcms_c_antsel_antsel2id(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @brcms_b_read_shm(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcms_b_xmtfifo_sz_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_brcms_txdesc(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !13, !15, !17, !18, !20, !22, !24, !26, !27, !29, !31, !32, !34, !36, !38, !39, !40, !41, !43}
!llvm.named.register.sp = !{!44}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/ampdu.c", i32 489, i32 3}
!2 = !{ptr @__func__.brcms_c_ampdu_tx_operational, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__func__.brcms_c_ampdu_finalize, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/ampdu.c", i32 813, i32 2}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/ampdu.c", i32 190, i32 4}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/ampdu.c", i32 195, i32 4}
!10 = !{ptr @skb_queue_head_init.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/ampdu.c", i32 870, i32 3}
!15 = !{ptr @__func__.brcms_c_ampdu_dotxstatus_complete, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/ampdu.c", i32 894, i32 5}
!17 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/ampdu.c", i32 900, i32 6}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/ampdu.c", i32 920, i32 4}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/ampdu.c", i32 952, i32 4}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/ampdu.c", i32 992, i32 5}
!26 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/ampdu.c", i32 1002, i32 5}
!29 = !{ptr @__func__.brcms_c_ffpld_check_txfunfl, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/ampdu.c", i32 375, i32 3}
!31 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/ampdu.c", i32 398, i32 2}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/ampdu.c", i32 452, i32 3}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/brcms_trace_brcmsmac_tx.h", i32 25, i32 1}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!40 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!43 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!44 = !{!"sp"}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{i8 0, i8 2}
!55 = !{!"branch_weights", i32 1, i32 2000}
!56 = !{!"branch_weights", i32 2000, i32 1}
!57 = !{!"auto-init"}
!58 = !{i64 2148453878, i64 2148453883, i64 2148453896, i64 2148453940, i64 2148453974, i64 2148453995}
!59 = !{i64 2158447946}
!60 = !{i64 2158448167}
!61 = !{i64 2149962151}
!62 = !{i64 2149963187}
