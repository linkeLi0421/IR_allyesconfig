; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/brcm80211/brcmsmac/dma.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/brcm80211/brcmsmac/dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.91 }
%struct.atomic_t = type { i32 }
%union.anon.91 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.brcms_c_info = type { ptr, ptr, ptr, i16, i32, i32, i32, i8, ptr, ptr, ptr, [2 x ptr], i32, ptr, ptr, ptr, i16, i16, i32, [6 x i8], i8, i8, i8, i8, i8, ptr, ptr, i32, i8, i8, i8, i8, i32, [4 x i16], [4 x i16], ptr, ptr, i8, i8, i8, i8, ptr, i16, [4 x i8], [4 x i8], i16, i16, i16, i16, [6 x i16], i16, i16, i16, i16, i16, i8, i8, i8, ptr, i8, ptr, i32, i32, i16, i16, ptr, %struct.scb, ptr, ptr, i16, i16, ptr }
%struct.scb = type { i32, i32, i32, i8, [6 x i8], [8 x i32], [8 x i16], i16, [8 x i16], %struct.scb_ampdu }
%struct.scb_ampdu = type { ptr, i8, i8, i8, i16, i32, [8 x %struct.scb_ampdu_tid_ini] }
%struct.scb_ampdu_tid_ini = type { i8, [64 x i8], ptr, i8 }
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
%struct.dma_info = type { %struct.dma_pub, [8 x i8], ptr, ptr, %struct.brcms_ampdu_session, i8, i8, i32, i32, ptr, ptr, i16, i16, i16, i16, ptr, i32, i32, i16, i32, i32, i16, i16, i16, ptr, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.dma_pub = type { i32, i32, i32, i32, i32 }
%struct.brcms_ampdu_session = type { ptr, %struct.sk_buff_head, i32, i16, i16, i16 }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.si_info = type { %struct.si_pub, ptr, ptr, i32 }
%struct.si_pub = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.dma64desc = type { i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.17, %union.anon.86, %struct.atomic_t, i32 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.86 = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__func__.dma_attach = private unnamed_addr constant [11 x i8] c"dma_attach\00", align 1
@.str = internal constant { [114 x i8], [46 x i8] } { [114 x i8] c"%s: %s flags 0x%x ntxd %d nrxd %d rxbufsize %d rxextheadroom %d nrxpost %d rxoffset %d txregbase %u rxregbase %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMA64\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"DMA descriptor align_needed %d, align %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: txdpa 0x%x: addrext not supported\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: rxdpa 0x%x: addrext not supported\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"ddoffsetlow 0x%x ddoffsethigh 0x%x dataoffsetlow 0x%x dataoffsethigh 0x%x addrext %d\0A\00", [42 x i8] zeroinitializer }, align 32
@__func__.dma_detach = private unnamed_addr constant [11 x i8] c"dma_detach\00", align 1
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s:\0A\00", [27 x i8] zeroinitializer }, align 32
@__func__.dma_rxinit = private unnamed_addr constant [11 x i8] c"dma_rxinit\00", align 1
@__func__.dma_rx = private unnamed_addr constant [7 x i8] c"dma_rx\00", align 1
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: dma_rx len %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rxin %d rxout %d, hw_curr %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: bad frame length (%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__.dma_rxfill = private unnamed_addr constant [11 x i8] c"dma_rxfill\00", align 1
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: post %d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: out of rxbufs\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: ring is empty !\0A\00", [43 x i8] zeroinitializer }, align 32
@__func__.dma_rxreclaim = private unnamed_addr constant [14 x i8] c"dma_rxreclaim\00", align 1
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&txavail\00", [23 x i8] zeroinitializer }, align 32
@__func__.dma_txinit = private unnamed_addr constant [11 x i8] c"dma_txinit\00", align 1
@__func__.dma_txsuspend = private unnamed_addr constant [14 x i8] c"dma_txsuspend\00", align 1
@__func__.dma_txresume = private unnamed_addr constant [13 x i8] c"dma_txresume\00", align 1
@__func__.dma_txreclaim = private unnamed_addr constant [14 x i8] c"dma_txreclaim\00", align 1
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: %s\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"all\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"transmitted\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"transferred\00", [20 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__func__.dma_txfast = private unnamed_addr constant [11 x i8] c"dma_txfast\00", align 1
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: out of txds !!!\0A\00", [43 x i8] zeroinitializer }, align 32
@__func__.dma_getnexttxp = private unnamed_addr constant [15 x i8] c"dma_getnexttxp\00", align 1
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"bogus curr: start %d end %d txout %d\0A\00", [58 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__func__._dma_isaddrext = private unnamed_addr constant [15 x i8] c"_dma_isaddrext\00", align 1
@.str.20 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: DMA64 tx doesn't have AE set\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: DMA64 rx doesn't have AE set\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.dma64_alloc = private unnamed_addr constant [12 x i8] c"dma64_alloc\00", align 1
@.str.22 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: DMA_ALLOC_CONSISTENT(ntxd) failed\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: DMA_ALLOC_CONSISTENT(nrxd) failed\0A\00", [57 x i8] zeroinitializer }, align 32
@__func__._dma_rxenable = private unnamed_addr constant [14 x i8] c"_dma_rxenable\00", align 1
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@__func__.dma64_rxidle = private unnamed_addr constant [13 x i8] c"dma64_rxidle\00", align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.28 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"drivers/net/wireless/broadcom/brcm80211/brcmsmac/dma.c\00", [41 x i8] zeroinitializer }, align 32
@__tracepoint_brcms_ampdu_session = external dso_local global %struct.tracepoint, align 4
@.str.29 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"drivers/net/wireless/broadcom/brcm80211/brcmsmac/brcms_trace_brcmsmac_tx.h\00", [53 x i8] zeroinitializer }, align 32
@trace_brcms_ampdu_session.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.30 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 536870912, i64 805306368]
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 580, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 646, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 685, i32 4 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 691, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 701, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 751, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 942, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 969, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 976, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 1048, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 1061, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 1064, i32 5 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 1133, i32 20 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 1212, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 1423, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 1538, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 403, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 409, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 512, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 527, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 1984, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 2789, i32 6 }
@___asan_gen_.117 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 326, i32 6 }
@___asan_gen_.120 = private constant [58 x i8] c"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/dma.c\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 1359, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant [78 x i8] c"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/brcms_trace_brcmsmac_tx.h\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 73, i32 1 }
@___asan_gen_.128 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 108, i32 2 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @skb_queue_head_init.__key, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 114, i32 160, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dma_attach(ptr noundef %name, ptr noundef %wlc, i32 noundef %txregbase, i32 noundef %rxregbase, i32 noundef %ntxd, i32 noundef %nrxd, i32 noundef %rxbufsize, i32 noundef %rxextheadroom, i32 noundef %nrxpost, i32 noundef %rxoffset) local_unnamed_addr #0 align 64 {
entry:
  %alloced.i.i309 = alloca i32, align 4
  %align_bits.i.i310 = alloca i16, align 2
  %alloced.i.i = alloca i32, align 4
  %align_bits.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.brcms_c_info, ptr %wlc, i32 0, i32 2
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %sih1 = getelementptr inbounds %struct.brcms_hardware, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %sih1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sih1, align 4
  %d11core = getelementptr inbounds %struct.brcms_hardware, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d11core, align 4
  %rev3 = getelementptr inbounds %struct.bcma_device, ptr %5, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %rev3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rev3, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 2848, i32 noundef 228) #16
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %_dma_ctrlflags.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

_dma_ctrlflags.exit:                              ; preds = %entry
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %5, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %aread32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %aread32.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %aread32.i, align 4
  %call.i = tail call i32 %14(ptr noundef %5, i16 noundef zeroext 1280) #13
  %dma64 = getelementptr inbounds %struct.dma_info, ptr %call7.i.i, i32 0, i32 5
  %and = lshr i32 %call.i, 12
  %15 = trunc i32 %and to i8
  %16 = and i8 %15, 1
  %17 = ptrtoint ptr %dma64 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %dma64, align 4
  %core6 = getelementptr inbounds %struct.dma_info, ptr %call7.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %core6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %5, ptr %core6, align 4
  %d64txregbase = getelementptr inbounds %struct.dma_info, ptr %call7.i.i, i32 0, i32 7
  %19 = ptrtoint ptr %d64txregbase to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %txregbase, ptr %d64txregbase, align 8
  %d64rxregbase = getelementptr inbounds %struct.dma_info, ptr %call7.i.i, i32 0, i32 8
  %20 = ptrtoint ptr %d64rxregbase to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %rxregbase, ptr %d64rxregbase, align 4
  %dmactrlflags1.i = getelementptr inbounds %struct.dma_pub, ptr %call7.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %dmactrlflags1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dmactrlflags1.i, align 4
  %and.i = and i32 %22, -4
  store i32 %and.i, ptr %dmactrlflags1.i, align 4
  %dev = getelementptr inbounds %struct.bcma_device, ptr %5, i32 0, i32 2
  tail call void (ptr, i32, ptr, ptr, ...) @__brcms_dbg(ptr noundef %dev, i32 noundef 32, ptr noundef nonnull @__func__.dma_attach, ptr noundef nonnull @.str, ptr noundef %name, ptr noundef nonnull @.str.1, i32 noundef %and.i, i32 noundef %ntxd, i32 noundef %nrxd, i32 noundef %rxbufsize, i32 noundef %rxextheadroom, i32 noundef %nrxpost, i32 noundef %rxoffset, i32 noundef %txregbase, i32 noundef %rxregbase) #13
  %name9 = getelementptr inbounds %struct.dma_info, ptr %call7.i.i, i32 0, i32 1
  %call10 = tail call ptr @strncpy(ptr noundef %name9, ptr noundef %name, i32 noundef 8)
  %arrayidx = getelementptr %struct.dma_info, ptr %call7.i.i, i32 0, i32 1, i32 7
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %arrayidx, align 1
  %dma_dev = getelementptr inbounds %struct.bcma_device, ptr %5, i32 0, i32 3
  %24 = ptrtoint ptr %dma_dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dma_dev, align 8
  %dmadev = getelementptr inbounds %struct.dma_info, ptr %call7.i.i, i32 0, i32 3
  %26 = ptrtoint ptr %dmadev to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %dmadev, align 8
  %conv = trunc i32 %ntxd to i16
  %ntxd12 = getelementptr inbounds %struct.dma_info, ptr %call7.i.i, i32 0, i32 12
  %27 = ptrtoint ptr %ntxd12 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv, ptr %ntxd12, align 2
  %conv13 = trunc i32 %nrxd to i16
  %nrxd14 = getelementptr inbounds %struct.dma_info, ptr %call7.i.i, i32 0, i32 21
  %28 = ptrtoint ptr %nrxd14 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv13, ptr %nrxd14, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %rxextheadroom)
  %cmp15 = icmp eq i32 %rxextheadroom, -1
  %spec.select = select i1 %cmp15, i32 172, i32 %rxextheadroom
  %rxextrahdrroom = getelementptr inbounds %struct.dma_info, ptr %call7.i.i, i32 0, i32 31
  %29 = ptrtoint ptr %rxextrahdrroom to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %spec.select, ptr %rxextrahdrroom, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 172, i32 %rxbufsize)
  %cmp17 = icmp ugt i32 %rxbufsize, 172
  %sub = sub i32 %rxbufsize, %spec.select
  %conv22 = and i32 %sub, 65535
  %rxbufsize.sink = select i1 %cmp17, i32 %conv22, i32 %rxbufsize
  %30 = getelementptr inbounds %struct.dma_info, ptr %call7.i.i, i32 0, i32 30
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %rxbufsize.sink, ptr %30, align 8
  %conv29 = and i32 %nrxpost, 65535
  %nrxpost30 = getelementptr inbounds %struct.dma_info, ptr %call7.i.i, i32 0, i32 32
  %32 = ptrtoint ptr %nrxpost30 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv29, ptr %nrxpost30, align 8
  %conv32 = and i32 %rxoffset, 255
  %rxoffset33 = getelementptr inbounds %struct.dma_info, ptr %call7.i.i, i32 0, i32 33
  %33 = ptrtoint ptr %rxoffset33 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv32, ptr %rxoffset33, align 4
  %ddoffsetlow = getelementptr inbounds %struct.dma_info, ptr %call7.i.i, i32 0, i32 34
  %34 = ptrtoint ptr %ddoffsetlow to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %ddoffsetlow, align 8
  %dataoffsetlow = getelementptr inbounds %struct.dma_info, ptr %call7.i.i, i32 0, i32 36
  %35 = ptrtoint ptr %dataoffsetlow to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %dataoffsetlow, align 8
  %icbus = getelementptr inbounds %struct.si_info, ptr %3, i32 0, i32 1
  %36 = ptrtoint ptr %icbus to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %icbus, align 4
  %hosttype = getelementptr inbounds %struct.bcma_bus, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %hosttype to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %hosttype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp34 = icmp eq i32 %39, 0
  br i1 %cmp34, label %if.then36, label %_dma_ctrlflags.exit.if.end38_crit_edge

_dma_ctrlflags.exit.if.end38_crit_edge:           ; preds = %_dma_ctrlflags.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

if.then36:                                        ; preds = %_dma_ctrlflags.exit
  call void @__sanitizer_cov_trace_pc() #15
  %ddoffsethigh = getelementptr inbounds %struct.dma_info, ptr %call7.i.i, i32 0, i32 35
  %40 = ptrtoint ptr %ddoffsethigh to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -2147483648, ptr %ddoffsethigh, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %_dma_ctrlflags.exit.if.end38_crit_edge
  %41 = ptrtoint ptr %ddoffsetlow to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ddoffsetlow, align 8
  %43 = ptrtoint ptr %dataoffsetlow to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %dataoffsetlow, align 8
  %ddoffsethigh41 = getelementptr inbounds %struct.dma_info, ptr %call7.i.i, i32 0, i32 35
  %44 = ptrtoint ptr %ddoffsethigh41 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ddoffsethigh41, align 4
  %dataoffsethigh = getelementptr inbounds %struct.dma_info, ptr %call7.i.i, i32 0, i32 37
  %46 = ptrtoint ptr %dataoffsethigh to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %dataoffsethigh, align 4
  %id43 = getelementptr inbounds %struct.bcma_device, ptr %5, i32 0, i32 1, i32 1
  %47 = ptrtoint ptr %id43 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %id43, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2089, i16 %48)
  %cmp45 = icmp eq i16 %48, 2089
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp48.not = icmp ne i8 %7, 0
  %or.cond = select i1 %cmp45, i1 %cmp48.not, i1 false
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp52 = icmp ult i8 %7, 3
  %or.cond265 = select i1 %or.cond, i1 %cmp52, i1 false
  br i1 %or.cond265, label %if.then54, label %if.else55

if.then54:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  %addrext = getelementptr inbounds %struct.dma_info, ptr %call7.i.i, i32 0, i32 6
  %49 = ptrtoint ptr %addrext to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %addrext, align 1
  br label %if.end75

if.else55:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_const_cmp2(i16 2100, i16 %48)
  %cmp59 = icmp eq i16 %48, 2100
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %switch = icmp ult i8 %7, 2
  %or.cond267 = select i1 %cmp59, i1 %switch, i1 false
  br i1 %or.cond267, label %if.then68, label %if.else70

if.then68:                                        ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #15
  %addrext69 = getelementptr inbounds %struct.dma_info, ptr %call7.i.i, i32 0, i32 6
  %50 = ptrtoint ptr %addrext69 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %addrext69, align 1
  br label %if.end75

if.else70:                                        ; preds = %if.else55
  %51 = ptrtoint ptr %d64txregbase to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %d64txregbase, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp.not.i = icmp eq i32 %52, 0
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.else70
  %53 = ptrtoint ptr %core6 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %core6, align 4
  %conv.i.i = trunc i32 %52 to i16
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 8
  %ops.i.i.i.i = getelementptr inbounds %struct.bcma_bus, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ops.i.i.i.i, align 4
  %read32.i.i.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %read32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %read32.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %60(ptr noundef %54, i16 noundef zeroext %conv.i.i) #13
  %or.i.i.i = or i32 %call.i.i.i.i, 196608
  %61 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %54, align 8
  %ops.i3.i.i.i = getelementptr inbounds %struct.bcma_bus, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %ops.i3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ops.i3.i.i.i, align 4
  %write32.i.i.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %64, i32 0, i32 5
  %65 = ptrtoint ptr %write32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %write32.i.i.i.i, align 4
  tail call void %66(ptr noundef %54, i16 noundef zeroext %conv.i.i, i32 noundef %or.i.i.i) #13
  %67 = ptrtoint ptr %core6 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %core6, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 8
  %ops.i.i.i = getelementptr inbounds %struct.bcma_bus, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ops.i.i.i, align 4
  %read32.i.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %74(ptr noundef %68, i16 noundef zeroext %conv.i.i) #13
  %75 = ptrtoint ptr %core6 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %core6, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 8
  %ops.i.i10.i.i = getelementptr inbounds %struct.bcma_bus, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %ops.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ops.i.i10.i.i, align 4
  %read32.i.i11.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %read32.i.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %read32.i.i11.i.i, align 4
  %call.i.i12.i.i = tail call i32 %82(ptr noundef %76, i16 noundef zeroext %conv.i.i) #13
  %and.i.i.i = and i32 %call.i.i12.i.i, -196609
  %83 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %76, align 8
  %ops.i3.i13.i.i = getelementptr inbounds %struct.bcma_bus, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %ops.i3.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ops.i3.i13.i.i, align 4
  %write32.i.i14.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %86, i32 0, i32 5
  %87 = ptrtoint ptr %write32.i.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %write32.i.i14.i.i, align 4
  tail call void %88(ptr noundef %76, i16 noundef zeroext %conv.i.i, i32 noundef %and.i.i.i) #13
  %and.i.i = and i32 %call.i.i.i, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 196608, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 196608
  br i1 %cmp.i.i, label %if.then.i._dma_isaddrext.exit_crit_edge, label %if.then.i.return.sink.split.i_crit_edge

if.then.i.return.sink.split.i_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %return.sink.split.i

if.then.i._dma_isaddrext.exit_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %_dma_isaddrext.exit

if.else.i:                                        ; preds = %if.else70
  %89 = ptrtoint ptr %d64rxregbase to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %d64rxregbase, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp3.not.i = icmp eq i32 %90, 0
  br i1 %cmp3.not.i, label %if.else.i._dma_isaddrext.exit_crit_edge, label %if.then4.i

if.else.i._dma_isaddrext.exit_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %_dma_isaddrext.exit

if.then4.i:                                       ; preds = %if.else.i
  %91 = ptrtoint ptr %core6 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %core6, align 4
  %conv.i27.i = trunc i32 %90 to i16
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %92, align 8
  %ops.i.i.i28.i = getelementptr inbounds %struct.bcma_bus, ptr %94, i32 0, i32 2
  %95 = ptrtoint ptr %ops.i.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ops.i.i.i28.i, align 4
  %read32.i.i.i29.i = getelementptr inbounds %struct.bcma_host_ops, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %read32.i.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %read32.i.i.i29.i, align 4
  %call.i.i.i30.i = tail call i32 %98(ptr noundef %92, i16 noundef zeroext %conv.i27.i) #13
  %or.i.i31.i = or i32 %call.i.i.i30.i, 196608
  %99 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %92, align 8
  %ops.i3.i.i32.i = getelementptr inbounds %struct.bcma_bus, ptr %100, i32 0, i32 2
  %101 = ptrtoint ptr %ops.i3.i.i32.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ops.i3.i.i32.i, align 4
  %write32.i.i.i33.i = getelementptr inbounds %struct.bcma_host_ops, ptr %102, i32 0, i32 5
  %103 = ptrtoint ptr %write32.i.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %write32.i.i.i33.i, align 4
  tail call void %104(ptr noundef %92, i16 noundef zeroext %conv.i27.i, i32 noundef %or.i.i31.i) #13
  %105 = ptrtoint ptr %core6 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %core6, align 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %106, align 8
  %ops.i.i34.i = getelementptr inbounds %struct.bcma_bus, ptr %108, i32 0, i32 2
  %109 = ptrtoint ptr %ops.i.i34.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ops.i.i34.i, align 4
  %read32.i.i35.i = getelementptr inbounds %struct.bcma_host_ops, ptr %110, i32 0, i32 2
  %111 = ptrtoint ptr %read32.i.i35.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %read32.i.i35.i, align 4
  %call.i.i36.i = tail call i32 %112(ptr noundef %106, i16 noundef zeroext %conv.i27.i) #13
  %113 = ptrtoint ptr %core6 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %core6, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %114, align 8
  %ops.i.i10.i37.i = getelementptr inbounds %struct.bcma_bus, ptr %116, i32 0, i32 2
  %117 = ptrtoint ptr %ops.i.i10.i37.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %ops.i.i10.i37.i, align 4
  %read32.i.i11.i38.i = getelementptr inbounds %struct.bcma_host_ops, ptr %118, i32 0, i32 2
  %119 = ptrtoint ptr %read32.i.i11.i38.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %read32.i.i11.i38.i, align 4
  %call.i.i12.i39.i = tail call i32 %120(ptr noundef %114, i16 noundef zeroext %conv.i27.i) #13
  %and.i.i40.i = and i32 %call.i.i12.i39.i, -196609
  %121 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %114, align 8
  %ops.i3.i13.i41.i = getelementptr inbounds %struct.bcma_bus, ptr %122, i32 0, i32 2
  %123 = ptrtoint ptr %ops.i3.i13.i41.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %ops.i3.i13.i41.i, align 4
  %write32.i.i14.i42.i = getelementptr inbounds %struct.bcma_host_ops, ptr %124, i32 0, i32 5
  %125 = ptrtoint ptr %write32.i.i14.i42.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %write32.i.i14.i42.i, align 4
  tail call void %126(ptr noundef %114, i16 noundef zeroext %conv.i27.i, i32 noundef %and.i.i40.i) #13
  %and.i43.i = and i32 %call.i.i36.i, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 196608, i32 %and.i43.i)
  %cmp.i44.i = icmp eq i32 %and.i43.i, 196608
  br i1 %cmp.i44.i, label %if.then4.i._dma_isaddrext.exit_crit_edge, label %if.then4.i.return.sink.split.i_crit_edge

if.then4.i.return.sink.split.i_crit_edge:         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %return.sink.split.i

if.then4.i._dma_isaddrext.exit_crit_edge:         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %_dma_isaddrext.exit

return.sink.split.i:                              ; preds = %if.then4.i.return.sink.split.i_crit_edge, %if.then.i.return.sink.split.i_crit_edge
  %.str.21.sink.i = phi ptr [ @.str.20, %if.then.i.return.sink.split.i_crit_edge ], [ @.str.21, %if.then4.i.return.sink.split.i_crit_edge ]
  %127 = ptrtoint ptr %core6 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %core6, align 4
  %dev10.i = getelementptr inbounds %struct.bcma_device, ptr %128, i32 0, i32 2
  tail call void (ptr, i32, ptr, ptr, ...) @__brcms_dbg(ptr noundef %dev10.i, i32 noundef 32, ptr noundef nonnull @__func__._dma_isaddrext, ptr noundef nonnull %.str.21.sink.i, ptr noundef %name9) #13
  br label %_dma_isaddrext.exit

_dma_isaddrext.exit:                              ; preds = %return.sink.split.i, %if.then4.i._dma_isaddrext.exit_crit_edge, %if.else.i._dma_isaddrext.exit_crit_edge, %if.then.i._dma_isaddrext.exit_crit_edge
  %retval.0.i = phi i1 [ true, %if.then.i._dma_isaddrext.exit_crit_edge ], [ true, %if.then4.i._dma_isaddrext.exit_crit_edge ], [ false, %if.else.i._dma_isaddrext.exit_crit_edge ], [ true, %return.sink.split.i ]
  %addrext72 = getelementptr inbounds %struct.dma_info, ptr %call7.i.i, i32 0, i32 6
  %frombool73 = zext i1 %retval.0.i to i8
  %129 = ptrtoint ptr %addrext72 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %frombool73, ptr %addrext72, align 1
  br label %if.end75

if.end75:                                         ; preds = %_dma_isaddrext.exit, %if.then68, %if.then54
  %130 = ptrtoint ptr %d64txregbase to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %d64txregbase, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %cmp.not.i269 = icmp eq i32 %131, 0
  br i1 %cmp.not.i269, label %if.else.i272, label %if.then.i270

if.then.i270:                                     ; preds = %if.end75
  %132 = ptrtoint ptr %core6 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %core6, align 4
  %134 = trunc i32 %131 to i16
  %conv.i = add i16 %134, 8
  %135 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %133, align 8
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %136, i32 0, i32 2
  %137 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %ops.i.i, align 4
  %write32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %138, i32 0, i32 5
  %139 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %write32.i.i, align 4
  tail call void %140(ptr noundef %133, i16 noundef zeroext %conv.i, i32 noundef 4080) #13
  %141 = ptrtoint ptr %core6 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %core6, align 4
  %143 = ptrtoint ptr %d64txregbase to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %d64txregbase, align 8
  %145 = trunc i32 %144 to i16
  %conv5.i = add i16 %145, 8
  %146 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %142, align 8
  %ops.i38.i = getelementptr inbounds %struct.bcma_bus, ptr %147, i32 0, i32 2
  %148 = ptrtoint ptr %ops.i38.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %ops.i38.i, align 4
  %read32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %149, i32 0, i32 2
  %150 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %151(ptr noundef %142, i16 noundef zeroext %conv5.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp6.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp6.not.i, label %if.then.i270.if.then79_crit_edge, label %if.then.i270.if.else88_crit_edge

if.then.i270.if.else88_crit_edge:                 ; preds = %if.then.i270
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else88

if.then.i270.if.then79_crit_edge:                 ; preds = %if.then.i270
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then79

if.else.i272:                                     ; preds = %if.end75
  %152 = ptrtoint ptr %d64rxregbase to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %d64rxregbase, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %cmp9.not.i = icmp eq i32 %153, 0
  br i1 %cmp9.not.i, label %if.else.i272.if.then79_crit_edge, label %if.then11.i

if.else.i272.if.then79_crit_edge:                 ; preds = %if.else.i272
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then79

if.then11.i:                                      ; preds = %if.else.i272
  %154 = ptrtoint ptr %core6 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %core6, align 4
  %156 = trunc i32 %153 to i16
  %conv15.i = add i16 %156, 8
  %157 = ptrtoint ptr %155 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %155, align 8
  %ops.i39.i = getelementptr inbounds %struct.bcma_bus, ptr %158, i32 0, i32 2
  %159 = ptrtoint ptr %ops.i39.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %ops.i39.i, align 4
  %write32.i40.i = getelementptr inbounds %struct.bcma_host_ops, ptr %160, i32 0, i32 5
  %161 = ptrtoint ptr %write32.i40.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %write32.i40.i, align 4
  tail call void %162(ptr noundef %155, i16 noundef zeroext %conv15.i, i32 noundef 4080) #13
  %163 = ptrtoint ptr %core6 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %core6, align 4
  %165 = ptrtoint ptr %d64rxregbase to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %d64rxregbase, align 4
  %167 = trunc i32 %166 to i16
  %conv19.i = add i16 %167, 8
  %168 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %164, align 8
  %ops.i41.i = getelementptr inbounds %struct.bcma_bus, ptr %169, i32 0, i32 2
  %170 = ptrtoint ptr %ops.i41.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %ops.i41.i, align 4
  %read32.i42.i = getelementptr inbounds %struct.bcma_host_ops, ptr %171, i32 0, i32 2
  %172 = ptrtoint ptr %read32.i42.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %read32.i42.i, align 4
  %call.i43.i = tail call i32 %173(ptr noundef %164, i16 noundef zeroext %conv19.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43.i)
  %cmp21.not.i = icmp eq i32 %call.i43.i, 0
  br i1 %cmp21.not.i, label %if.then11.i.if.then79_crit_edge, label %if.then11.i.if.else88_crit_edge

if.then11.i.if.else88_crit_edge:                  ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else88

if.then11.i.if.then79_crit_edge:                  ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then79

if.then79:                                        ; preds = %if.then11.i.if.then79_crit_edge, %if.else.i272.if.then79_crit_edge, %if.then.i270.if.then79_crit_edge
  %aligndesc_4k = getelementptr inbounds %struct.dma_info, ptr %call7.i.i, i32 0, i32 38
  %174 = ptrtoint ptr %aligndesc_4k to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 1, ptr %aligndesc_4k, align 8
  %dmadesc_align = getelementptr inbounds %struct.dma_info, ptr %call7.i.i, i32 0, i32 11
  %175 = or i32 %nrxd, %ntxd
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %175)
  %176 = icmp ult i32 %175, 256
  %spec.store.select = select i1 %176, i16 12, i16 13
  %177 = ptrtoint ptr %dmadesc_align to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 %spec.store.select, ptr %dmadesc_align, align 8
  br label %if.end90

if.else88:                                        ; preds = %if.then11.i.if.else88_crit_edge, %if.then.i270.if.else88_crit_edge
  %aligndesc_4k320 = getelementptr inbounds %struct.dma_info, ptr %call7.i.i, i32 0, i32 38
  %178 = ptrtoint ptr %aligndesc_4k320 to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 0, ptr %aligndesc_4k320, align 8
  %dmadesc_align89 = getelementptr inbounds %struct.dma_info, ptr %call7.i.i, i32 0, i32 11
  %179 = ptrtoint ptr %dmadesc_align89 to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 4, ptr %dmadesc_align89, align 8
  br label %if.end90

if.end90:                                         ; preds = %if.else88, %if.then79
  %aligndesc_4k322 = phi ptr [ %aligndesc_4k, %if.then79 ], [ %aligndesc_4k320, %if.else88 ]
  %180 = ptrtoint ptr %core6 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %core6, align 4
  %dev92 = getelementptr inbounds %struct.bcma_device, ptr %181, i32 0, i32 2
  %182 = ptrtoint ptr %aligndesc_4k322 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %aligndesc_4k322, align 4, !range !97
  %184 = zext i8 %183 to i32
  %dmadesc_align96 = getelementptr inbounds %struct.dma_info, ptr %call7.i.i, i32 0, i32 11
  %185 = ptrtoint ptr %dmadesc_align96 to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %dmadesc_align96, align 8
  %conv97 = zext i16 %186 to i32
  tail call void (ptr, i32, ptr, ptr, ...) @__brcms_dbg(ptr noundef %dev92, i32 noundef 32, ptr noundef nonnull @__func__.dma_attach, ptr noundef nonnull @.str.2, i32 noundef %184, i32 noundef %conv97) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ntxd)
  %tobool98.not = icmp eq i32 %ntxd, 0
  br i1 %tobool98.not, label %if.end90.if.end106_crit_edge, label %if.end8.i.i

if.end90.if.end106_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end106

if.end8.i.i:                                      ; preds = %if.end90
  %mul = shl i32 %ntxd, 2
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 2848) #17
  %txp = getelementptr inbounds %struct.dma_info, ptr %call7.i.i, i32 0, i32 15
  %187 = ptrtoint ptr %txp to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr %call9.i.i, ptr %txp, align 8
  %cmp102 = icmp eq ptr %call9.i.i, null
  br i1 %cmp102, label %if.end8.i.i.fail_crit_edge, label %if.end8.i.i.if.end106_crit_edge

if.end8.i.i.if.end106_crit_edge:                  ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end106

if.end8.i.i.fail_crit_edge:                       ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail

if.end106:                                        ; preds = %if.end8.i.i.if.end106_crit_edge, %if.end90.if.end106_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nrxd)
  %tobool107.not = icmp eq i32 %nrxd, 0
  br i1 %tobool107.not, label %if.end106.if.end116_crit_edge, label %if.end8.i.i302

if.end106.if.end116_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end116

if.end8.i.i302:                                   ; preds = %if.end106
  %mul109 = shl i32 %nrxd, 2
  %call9.i.i301 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul109, i32 noundef 2848) #17
  %rxp = getelementptr inbounds %struct.dma_info, ptr %call7.i.i, i32 0, i32 24
  %188 = ptrtoint ptr %rxp to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %call9.i.i301, ptr %rxp, align 8
  %cmp112 = icmp eq ptr %call9.i.i301, null
  br i1 %cmp112, label %if.end8.i.i302.fail_crit_edge, label %if.end8.i.i302.if.end116_crit_edge

if.end8.i.i302.if.end116_crit_edge:               ; preds = %if.end8.i.i302
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end116

if.end8.i.i302.fail_crit_edge:                    ; preds = %if.end8.i.i302
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail

if.end116:                                        ; preds = %if.end8.i.i302.if.end116_crit_edge, %if.end106.if.end116_crit_edge
  br i1 %tobool98.not, label %if.end116.if.end122_crit_edge, label %if.then118

if.end116.if.end122_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end122

if.then118:                                       ; preds = %if.end116
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alloced.i.i) #13
  %189 = ptrtoint ptr %alloced.i.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 0, ptr %alloced.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %align_bits.i.i) #13
  %190 = ptrtoint ptr %ntxd12 to i32
  call void @__asan_load2_noabort(i32 %190)
  %cond.in.i.i = load i16, ptr %ntxd12, align 2
  %cond.i.i = shl i16 %cond.in.i.i, 4
  %191 = ptrtoint ptr %dmadesc_align96 to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %dmadesc_align96, align 8
  %193 = ptrtoint ptr %align_bits.i.i to i32
  call void @__asan_store2_noabort(i32 %193)
  store i16 %192, ptr %align_bits.i.i, align 2
  %conv8.i.i = zext i16 %cond.i.i to i32
  %txdpaorig.i.i = getelementptr inbounds %struct.dma_info, ptr %call7.i.i, i32 0, i32 17
  %call.i.i305 = call fastcc ptr @dma_ringalloc(ptr noundef nonnull %call7.i.i, i32 noundef %conv8.i.i, ptr noundef nonnull %align_bits.i.i, ptr noundef nonnull %alloced.i.i, ptr noundef %txdpaorig.i.i) #13
  %cmp9.i.i = icmp eq ptr %call.i.i305, null
  br i1 %cmp9.i.i, label %_dma_alloc.exit, label %_dma_alloc.exit.thread

_dma_alloc.exit.thread:                           ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #15
  %194 = ptrtoint ptr %align_bits.i.i to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %align_bits.i.i, align 2
  %conv12.i.i = zext i16 %195 to i32
  %shl13.i.i = shl nuw i32 1, %conv12.i.i
  %196 = ptrtoint ptr %call.i.i305 to i32
  %conv15.i.i = and i32 %shl13.i.i, 65535
  %sub.i.i = add i32 %196, -1
  %add.i.i = add i32 %sub.i.i, %conv15.i.i
  %.not99.i.i = sub nsw i32 0, %conv15.i.i
  %mul18.i.i = and i32 %add.i.i, %.not99.i.i
  %197 = inttoptr i32 %mul18.i.i to ptr
  %txd64.i.i = getelementptr inbounds %struct.dma_info, ptr %call7.i.i, i32 0, i32 9
  %198 = ptrtoint ptr %txd64.i.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %197, ptr %txd64.i.i, align 8
  %sub.ptr.sub.i.i = sub i32 %mul18.i.i, %196
  %conv20.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %txdalign.i.i = getelementptr inbounds %struct.dma_info, ptr %call7.i.i, i32 0, i32 18
  %199 = ptrtoint ptr %txdalign.i.i to i32
  call void @__asan_store2_noabort(i32 %199)
  store i16 %conv20.i.i, ptr %txdalign.i.i, align 4
  %200 = ptrtoint ptr %txdpaorig.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %txdpaorig.i.i, align 8
  %conv23.i.i = and i32 %sub.ptr.sub.i.i, 65535
  %add24.i.i = add i32 %conv23.i.i, %201
  %txdpa.i.i = getelementptr inbounds %struct.dma_info, ptr %call7.i.i, i32 0, i32 16
  %202 = ptrtoint ptr %txdpa.i.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %add24.i.i, ptr %txdpa.i.i, align 4
  %203 = ptrtoint ptr %alloced.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %alloced.i.i, align 4
  %txdalloc.i.i = getelementptr inbounds %struct.dma_info, ptr %call7.i.i, i32 0, i32 19
  %205 = ptrtoint ptr %txdalloc.i.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %204, ptr %txdalloc.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %align_bits.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alloced.i.i) #13
  br label %if.end122

_dma_alloc.exit:                                  ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #15
  %206 = ptrtoint ptr %core6 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %core6, align 4
  %dev.i.i = getelementptr inbounds %struct.bcma_device, ptr %207, i32 0, i32 2
  tail call void (ptr, i32, ptr, ptr, ...) @__brcms_dbg(ptr noundef %dev.i.i, i32 noundef 32, ptr noundef nonnull @__func__.dma64_alloc, ptr noundef nonnull @.str.22, ptr noundef %name9) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %align_bits.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alloced.i.i) #13
  br label %fail

if.end122:                                        ; preds = %_dma_alloc.exit.thread, %if.end116.if.end122_crit_edge
  br i1 %tobool107.not, label %if.end122.if.end128_crit_edge, label %if.then124

if.end122.if.end128_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end128

if.then124:                                       ; preds = %if.end122
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alloced.i.i309) #13
  %208 = ptrtoint ptr %alloced.i.i309 to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 0, ptr %alloced.i.i309, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %align_bits.i.i310) #13
  %209 = ptrtoint ptr %nrxd14 to i32
  call void @__asan_load2_noabort(i32 %209)
  %cond.in.i.i313 = load i16, ptr %nrxd14, align 8
  %cond.i.i314 = shl i16 %cond.in.i.i313, 4
  %210 = ptrtoint ptr %dmadesc_align96 to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %dmadesc_align96, align 8
  %212 = ptrtoint ptr %align_bits.i.i310 to i32
  call void @__asan_store2_noabort(i32 %212)
  store i16 %211, ptr %align_bits.i.i310, align 2
  %conv8.i.i316 = zext i16 %cond.i.i314 to i32
  %rxdpaorig.i.i = getelementptr inbounds %struct.dma_info, ptr %call7.i.i, i32 0, i32 26
  %call26.i.i = call fastcc ptr @dma_ringalloc(ptr noundef nonnull %call7.i.i, i32 noundef %conv8.i.i316, ptr noundef nonnull %align_bits.i.i310, ptr noundef nonnull %alloced.i.i309, ptr noundef %rxdpaorig.i.i) #13
  %cmp27.i.i = icmp eq ptr %call26.i.i, null
  br i1 %cmp27.i.i, label %_dma_alloc.exit318, label %_dma_alloc.exit318.thread

_dma_alloc.exit318.thread:                        ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #15
  %213 = ptrtoint ptr %align_bits.i.i310 to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %align_bits.i.i310, align 2
  %conv35.i.i = zext i16 %214 to i32
  %shl36.i.i = shl nuw i32 1, %conv35.i.i
  %215 = ptrtoint ptr %call26.i.i to i32
  %conv40.i.i = and i32 %shl36.i.i, 65535
  %sub41.i.i = add i32 %215, -1
  %add42.i.i = add i32 %sub41.i.i, %conv40.i.i
  %.not.i.i = sub nsw i32 0, %conv40.i.i
  %mul46.i.i = and i32 %add42.i.i, %.not.i.i
  %216 = inttoptr i32 %mul46.i.i to ptr
  %rxd64.i.i = getelementptr inbounds %struct.dma_info, ptr %call7.i.i, i32 0, i32 10
  %217 = ptrtoint ptr %rxd64.i.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr %216, ptr %rxd64.i.i, align 4
  %sub.ptr.sub50.i.i = sub i32 %mul46.i.i, %215
  %conv51.i.i = trunc i32 %sub.ptr.sub50.i.i to i16
  %rxdalign.i.i = getelementptr inbounds %struct.dma_info, ptr %call7.i.i, i32 0, i32 27
  %218 = ptrtoint ptr %rxdalign.i.i to i32
  call void @__asan_store2_noabort(i32 %218)
  store i16 %conv51.i.i, ptr %rxdalign.i.i, align 4
  %219 = ptrtoint ptr %rxdpaorig.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %rxdpaorig.i.i, align 8
  %conv54.i.i = and i32 %sub.ptr.sub50.i.i, 65535
  %add55.i.i = add i32 %conv54.i.i, %220
  %rxdpa.i.i = getelementptr inbounds %struct.dma_info, ptr %call7.i.i, i32 0, i32 25
  %221 = ptrtoint ptr %rxdpa.i.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %add55.i.i, ptr %rxdpa.i.i, align 4
  %222 = ptrtoint ptr %alloced.i.i309 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %alloced.i.i309, align 4
  %rxdalloc.i.i = getelementptr inbounds %struct.dma_info, ptr %call7.i.i, i32 0, i32 28
  %224 = ptrtoint ptr %rxdalloc.i.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %223, ptr %rxdalloc.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %align_bits.i.i310) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alloced.i.i309) #13
  br label %if.end128

_dma_alloc.exit318:                               ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #15
  %225 = ptrtoint ptr %core6 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %core6, align 4
  %dev31.i.i = getelementptr inbounds %struct.bcma_device, ptr %226, i32 0, i32 2
  tail call void (ptr, i32, ptr, ptr, ...) @__brcms_dbg(ptr noundef %dev31.i.i, i32 noundef 32, ptr noundef nonnull @__func__.dma64_alloc, ptr noundef nonnull @.str.23, ptr noundef %name9) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %align_bits.i.i310) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alloced.i.i309) #13
  br label %fail

if.end128:                                        ; preds = %_dma_alloc.exit318.thread, %if.end122.if.end128_crit_edge
  %227 = ptrtoint ptr %ddoffsetlow to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %ddoffsetlow, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %228)
  %cmp130.not = icmp eq i32 %228, 0
  br i1 %cmp130.not, label %if.end128.if.end154_crit_edge, label %land.lhs.true132

if.end128.if.end154_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end154

land.lhs.true132:                                 ; preds = %if.end128
  %addrext133 = getelementptr inbounds %struct.dma_info, ptr %call7.i.i, i32 0, i32 6
  %229 = ptrtoint ptr %addrext133 to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %addrext133, align 1, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %230)
  %tobool134.not = icmp eq i8 %230, 0
  br i1 %tobool134.not, label %if.then135, label %land.lhs.true132.if.end154_crit_edge

land.lhs.true132.if.end154_crit_edge:             ; preds = %land.lhs.true132
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end154

if.then135:                                       ; preds = %land.lhs.true132
  %txdpa = getelementptr inbounds %struct.dma_info, ptr %call7.i.i, i32 0, i32 16
  %231 = ptrtoint ptr %txdpa to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %txdpa, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %232)
  %cmp136 = icmp ugt i32 %232, 1073741824
  br i1 %cmp136, label %if.then138, label %if.end144

if.then138:                                       ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #15
  %233 = ptrtoint ptr %core6 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %core6, align 4
  %dev140 = getelementptr inbounds %struct.bcma_device, ptr %234, i32 0, i32 2
  tail call void (ptr, i32, ptr, ptr, ...) @__brcms_dbg(ptr noundef %dev140, i32 noundef 32, ptr noundef nonnull @__func__.dma_attach, ptr noundef nonnull @.str.3, ptr noundef %name9, i32 noundef %232) #13
  br label %fail

if.end144:                                        ; preds = %if.then135
  %rxdpa = getelementptr inbounds %struct.dma_info, ptr %call7.i.i, i32 0, i32 25
  %235 = ptrtoint ptr %rxdpa to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %rxdpa, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %236)
  %cmp145 = icmp ugt i32 %236, 1073741824
  br i1 %cmp145, label %if.then147, label %if.end144.if.end154_crit_edge

if.end144.if.end154_crit_edge:                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end154

if.then147:                                       ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #15
  %237 = ptrtoint ptr %core6 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %core6, align 4
  %dev149 = getelementptr inbounds %struct.bcma_device, ptr %238, i32 0, i32 2
  tail call void (ptr, i32, ptr, ptr, ...) @__brcms_dbg(ptr noundef %dev149, i32 noundef 32, ptr noundef nonnull @__func__.dma_attach, ptr noundef nonnull @.str.4, ptr noundef %name9, i32 noundef %236) #13
  br label %fail

if.end154:                                        ; preds = %if.end144.if.end154_crit_edge, %land.lhs.true132.if.end154_crit_edge, %if.end128.if.end154_crit_edge
  %ampdu_session = getelementptr inbounds %struct.dma_info, ptr %call7.i.i, i32 0, i32 4
  tail call void @brcms_c_ampdu_reset_session(ptr noundef %ampdu_session, ptr noundef %wlc) #13
  %239 = ptrtoint ptr %core6 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %core6, align 4
  %dev156 = getelementptr inbounds %struct.bcma_device, ptr %240, i32 0, i32 2
  %241 = ptrtoint ptr %ddoffsetlow to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %ddoffsetlow, align 8
  %243 = ptrtoint ptr %ddoffsethigh41 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %ddoffsethigh41, align 4
  %245 = ptrtoint ptr %dataoffsetlow to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %dataoffsetlow, align 8
  %247 = ptrtoint ptr %dataoffsethigh to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %dataoffsethigh, align 4
  %addrext161 = getelementptr inbounds %struct.dma_info, ptr %call7.i.i, i32 0, i32 6
  %249 = ptrtoint ptr %addrext161 to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %addrext161, align 1, !range !97
  %251 = zext i8 %250 to i32
  tail call void (ptr, i32, ptr, ptr, ...) @__brcms_dbg(ptr noundef %dev156, i32 noundef 32, ptr noundef nonnull @__func__.dma_attach, ptr noundef nonnull @.str.5, i32 noundef %242, i32 noundef %244, i32 noundef %246, i32 noundef %248, i32 noundef %251) #13
  br label %cleanup

fail:                                             ; preds = %if.then147, %if.then138, %_dma_alloc.exit318, %_dma_alloc.exit, %if.end8.i.i302.fail_crit_edge, %if.end8.i.i.fail_crit_edge
  tail call void @dma_detach(ptr noundef nonnull %call7.i.i)
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end154, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %fail ], [ %call7.i.i, %if.end154 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brcms_dbg(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_c_ampdu_reset_session(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dma_detach(ptr noundef %pub) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %core = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 2
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %dev = getelementptr inbounds %struct.bcma_device, ptr %1, i32 0, i32 2
  %name = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 1
  tail call void (ptr, i32, ptr, ptr, ...) @__brcms_dbg(ptr noundef %dev, i32 noundef 32, ptr noundef nonnull @__func__.dma_detach, ptr noundef nonnull @.str.6, ptr noundef %name) #13
  %txd64 = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 9
  %2 = ptrtoint ptr %txd64 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %txd64, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dmadev = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 3
  %4 = ptrtoint ptr %dmadev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dmadev, align 4
  %txdalloc = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 19
  %6 = ptrtoint ptr %txdalloc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %txdalloc, align 4
  %txdalign = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 18
  %8 = ptrtoint ptr %txdalign to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %txdalign, align 4
  %conv = zext i16 %9 to i32
  %idx.neg = sub nsw i32 0, %conv
  %add.ptr2 = getelementptr i8, ptr %3, i32 %idx.neg
  %txdpaorig = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 17
  %10 = ptrtoint ptr %txdpaorig to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %txdpaorig, align 4
  tail call void @dma_free_attrs(ptr noundef %5, i32 noundef %7, ptr noundef %add.ptr2, i32 noundef %11, i32 noundef 0) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rxd64 = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 10
  %12 = ptrtoint ptr %rxd64 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rxd64, align 4
  %tobool3.not = icmp eq ptr %13, null
  br i1 %tobool3.not, label %if.end.if.end10_crit_edge, label %if.then4

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %dmadev5 = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 3
  %14 = ptrtoint ptr %dmadev5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dmadev5, align 4
  %rxdalloc = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 28
  %16 = ptrtoint ptr %rxdalloc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rxdalloc, align 4
  %rxdalign = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 27
  %18 = ptrtoint ptr %rxdalign to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %rxdalign, align 4
  %conv7 = zext i16 %19 to i32
  %idx.neg8 = sub nsw i32 0, %conv7
  %add.ptr9 = getelementptr i8, ptr %13, i32 %idx.neg8
  %rxdpaorig = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 26
  %20 = ptrtoint ptr %rxdpaorig to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rxdpaorig, align 4
  tail call void @dma_free_attrs(ptr noundef %15, i32 noundef %17, ptr noundef %add.ptr9, i32 noundef %21, i32 noundef 0) #13
  br label %if.end10

if.end10:                                         ; preds = %if.then4, %if.end.if.end10_crit_edge
  %txp = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 15
  %22 = ptrtoint ptr %txp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %txp, align 4
  tail call void @kfree(ptr noundef %23) #13
  %rxp = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 24
  %24 = ptrtoint ptr %rxp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rxp, align 4
  tail call void @kfree(ptr noundef %25) #13
  tail call void @kfree(ptr noundef %pub) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dma_rxinit(ptr noundef %pub) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %core = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 2
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %dev = getelementptr inbounds %struct.bcma_device, ptr %1, i32 0, i32 2
  %name = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 1
  tail call void (ptr, i32, ptr, ptr, ...) @__brcms_dbg(ptr noundef %dev, i32 noundef 32, ptr noundef nonnull @__func__.dma_rxinit, ptr noundef nonnull @.str.6, ptr noundef %name) #13
  %nrxd = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 21
  %2 = ptrtoint ptr %nrxd to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %nrxd, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp = icmp eq i16 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %rxout = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 23
  %4 = ptrtoint ptr %rxout to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %rxout, align 4
  %rxin = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 22
  %5 = ptrtoint ptr %rxin to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %rxin, align 2
  %rxd64 = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 10
  %6 = ptrtoint ptr %rxd64 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rxd64, align 4
  %conv3 = zext i16 %3 to i32
  %mul = shl nuw nsw i32 %conv3, 4
  %8 = call ptr @memset(ptr %7, i32 0, i32 %mul)
  %aligndesc_4k = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 38
  %9 = ptrtoint ptr %aligndesc_4k to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %aligndesc_4k, align 4, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %rxdpa = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 25
  %11 = ptrtoint ptr %rxdpa to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rxdpa, align 4
  tail call fastcc void @_dma_ddtable_init(ptr noundef %pub, i32 noundef 2, i32 noundef %12)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %dmactrlflags1.i = getelementptr inbounds %struct.dma_pub, ptr %pub, i32 0, i32 1
  %13 = ptrtoint ptr %dmactrlflags1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dmactrlflags1.i, align 4
  %15 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %core, align 4
  %dev.i = getelementptr inbounds %struct.bcma_device, ptr %16, i32 0, i32 2
  tail call void (ptr, i32, ptr, ptr, ...) @__brcms_dbg(ptr noundef %dev.i, i32 noundef 32, ptr noundef nonnull @__func__._dma_rxenable, ptr noundef nonnull @.str.6, ptr noundef %name) #13
  %17 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %core, align 4
  %d64rxregbase.i = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 8
  %19 = ptrtoint ptr %d64rxregbase.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %d64rxregbase.i, align 4
  %conv.i = trunc i32 %20 to i16
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %18, align 8
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i.i, align 4
  %read32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %26(ptr noundef %18, i16 noundef zeroext %conv.i) #13
  %and.i = and i32 %call.i.i, 196608
  %and3.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %cmp.i = icmp eq i32 %and3.i, 0
  %spec.select.v.i = select i1 %cmp.i, i32 2049, i32 1
  %and6.i = shl i32 %14, 9
  %27 = and i32 %and6.i, 1024
  %28 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %core, align 4
  %30 = ptrtoint ptr %d64rxregbase.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %d64rxregbase.i, align 4
  %conv13.i = trunc i32 %31 to i16
  %rxoffset.i = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 33
  %32 = ptrtoint ptr %rxoffset.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rxoffset.i, align 4
  %shl.i = shl i32 %33, 1
  %spec.select.i = or i32 %spec.select.v.i, %27
  %34 = or i32 %spec.select.i, %and.i
  %or14.i = or i32 %34, %shl.i
  %35 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %29, align 8
  %ops.i25.i = getelementptr inbounds %struct.bcma_bus, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %ops.i25.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops.i25.i, align 4
  %write32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write32.i.i, align 4
  tail call void %40(ptr noundef %29, i16 noundef zeroext %conv13.i, i32 noundef %or14.i) #13
  %41 = ptrtoint ptr %aligndesc_4k to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %aligndesc_4k, align 4, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool7.not = icmp eq i8 %42, 0
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.then8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %rxdpa9 = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 25
  %43 = ptrtoint ptr %rxdpa9 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rxdpa9, align 4
  tail call fastcc void @_dma_ddtable_init(ptr noundef %pub, i32 noundef 2, i32 noundef %44)
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_dma_ddtable_init(ptr nocapture noundef %di, i32 noundef %direction, i32 noundef %pa) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %aligndesc_4k = getelementptr inbounds %struct.dma_info, ptr %di, i32 0, i32 38
  %0 = ptrtoint ptr %aligndesc_4k to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %aligndesc_4k, align 4, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end2_crit_edge

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end2

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %direction)
  %cmp = icmp eq i32 %direction, 1
  br i1 %cmp, label %if.end2.thread, label %if.else

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %rcvptrbase = getelementptr inbounds %struct.dma_info, ptr %di, i32 0, i32 29
  %2 = ptrtoint ptr %rcvptrbase to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %pa, ptr %rcvptrbase, align 4
  br label %if.end2

if.end2:                                          ; preds = %if.else, %entry.if.end2_crit_edge
  %ddoffsetlow = getelementptr inbounds %struct.dma_info, ptr %di, i32 0, i32 34
  %3 = ptrtoint ptr %ddoffsetlow to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ddoffsetlow, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp3 = icmp eq i32 %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %pa)
  %tobool4.not = icmp ult i32 %pa, 1073741824
  %or.cond = or i1 %tobool4.not, %cmp3
  br i1 %or.cond, label %if.then5, label %if.else26

if.end2.thread:                                   ; preds = %if.then
  %xmtptrbase = getelementptr inbounds %struct.dma_info, ptr %di, i32 0, i32 20
  %5 = ptrtoint ptr %xmtptrbase to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %pa, ptr %xmtptrbase, align 4
  %ddoffsetlow129 = getelementptr inbounds %struct.dma_info, ptr %di, i32 0, i32 34
  %6 = ptrtoint ptr %ddoffsetlow129 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ddoffsetlow129, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp3130 = icmp eq i32 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %pa)
  %tobool4.not131 = icmp ult i32 %pa, 1073741824
  %or.cond132 = or i1 %tobool4.not131, %cmp3130
  br i1 %or.cond132, label %if.end2.thread.if.then7_crit_edge, label %if.else26.thread

if.end2.thread.if.then7_crit_edge:                ; preds = %if.end2.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then7

if.else26.thread:                                 ; preds = %if.end2.thread
  call void @__sanitizer_cov_trace_pc() #15
  %shr134 = lshr i32 %pa, 30
  %and28135 = and i32 %pa, 1073741823
  br label %if.then31

if.then5:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %direction)
  %cmp6 = icmp eq i32 %direction, 1
  br i1 %cmp6, label %if.then5.if.then7_crit_edge, label %if.else14

if.then5.if.then7_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then7

if.then7:                                         ; preds = %if.then5.if.then7_crit_edge, %if.end2.thread.if.then7_crit_edge
  %8 = phi i32 [ %4, %if.then5.if.then7_crit_edge ], [ %7, %if.end2.thread.if.then7_crit_edge ]
  %core = getelementptr inbounds %struct.dma_info, ptr %di, i32 0, i32 2
  %9 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %core, align 4
  %d64txregbase = getelementptr inbounds %struct.dma_info, ptr %di, i32 0, i32 7
  %11 = ptrtoint ptr %d64txregbase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %d64txregbase, align 4
  %13 = trunc i32 %12 to i16
  %conv = add i16 %13, 8
  %add9 = add i32 %8, %pa
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %10, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i, align 4
  %write32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write32.i, align 4
  tail call void %19(ptr noundef %10, i16 noundef zeroext %conv, i32 noundef %add9) #13
  %20 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %core, align 4
  %22 = ptrtoint ptr %d64txregbase to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %d64txregbase, align 4
  %24 = trunc i32 %23 to i16
  %conv13 = add i16 %24, 12
  %ddoffsethigh = getelementptr inbounds %struct.dma_info, ptr %di, i32 0, i32 35
  %25 = ptrtoint ptr %ddoffsethigh to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ddoffsethigh, align 4
  %27 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %21, align 8
  %ops.i108 = getelementptr inbounds %struct.bcma_bus, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %ops.i108 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops.i108, align 4
  %write32.i109 = getelementptr inbounds %struct.bcma_host_ops, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %write32.i109 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write32.i109, align 4
  tail call void %32(ptr noundef %21, i16 noundef zeroext %conv13, i32 noundef %26) #13
  br label %if.end65

if.else14:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  %core15 = getelementptr inbounds %struct.dma_info, ptr %di, i32 0, i32 2
  %33 = ptrtoint ptr %core15 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %core15, align 4
  %d64rxregbase = getelementptr inbounds %struct.dma_info, ptr %di, i32 0, i32 8
  %35 = ptrtoint ptr %d64rxregbase to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %d64rxregbase, align 4
  %37 = trunc i32 %36 to i16
  %conv17 = add i16 %37, 8
  %add19 = add i32 %4, %pa
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %34, align 8
  %ops.i110 = getelementptr inbounds %struct.bcma_bus, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %ops.i110 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops.i110, align 4
  %write32.i111 = getelementptr inbounds %struct.bcma_host_ops, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %write32.i111 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write32.i111, align 4
  tail call void %43(ptr noundef %34, i16 noundef zeroext %conv17, i32 noundef %add19) #13
  %44 = ptrtoint ptr %core15 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %core15, align 4
  %46 = ptrtoint ptr %d64rxregbase to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %d64rxregbase, align 4
  %48 = trunc i32 %47 to i16
  %conv23 = add i16 %48, 12
  %ddoffsethigh24 = getelementptr inbounds %struct.dma_info, ptr %di, i32 0, i32 35
  %49 = ptrtoint ptr %ddoffsethigh24 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ddoffsethigh24, align 4
  %51 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %45, align 8
  %ops.i112 = getelementptr inbounds %struct.bcma_bus, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %ops.i112 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ops.i112, align 4
  %write32.i113 = getelementptr inbounds %struct.bcma_host_ops, ptr %54, i32 0, i32 5
  %55 = ptrtoint ptr %write32.i113 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %write32.i113, align 4
  tail call void %56(ptr noundef %45, i16 noundef zeroext %conv23, i32 noundef %50) #13
  br label %if.end65

if.else26:                                        ; preds = %if.end2
  %shr = lshr i32 %pa, 30
  %and28 = and i32 %pa, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %direction)
  %cmp29 = icmp eq i32 %direction, 1
  br i1 %cmp29, label %if.else26.if.then31_crit_edge, label %if.else47

if.else26.if.then31_crit_edge:                    ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then31

if.then31:                                        ; preds = %if.else26.if.then31_crit_edge, %if.else26.thread
  %and28138 = phi i32 [ %and28135, %if.else26.thread ], [ %and28, %if.else26.if.then31_crit_edge ]
  %shr137 = phi i32 [ %shr134, %if.else26.thread ], [ %shr, %if.else26.if.then31_crit_edge ]
  %57 = phi i32 [ %7, %if.else26.thread ], [ %4, %if.else26.if.then31_crit_edge ]
  %core32 = getelementptr inbounds %struct.dma_info, ptr %di, i32 0, i32 2
  %58 = ptrtoint ptr %core32 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %core32, align 4
  %d64txregbase33 = getelementptr inbounds %struct.dma_info, ptr %di, i32 0, i32 7
  %60 = ptrtoint ptr %d64txregbase33 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %d64txregbase33, align 4
  %62 = trunc i32 %61 to i16
  %conv35 = add i16 %62, 8
  %add37 = add i32 %57, %and28138
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %59, align 8
  %ops.i114 = getelementptr inbounds %struct.bcma_bus, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %ops.i114 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ops.i114, align 4
  %write32.i115 = getelementptr inbounds %struct.bcma_host_ops, ptr %66, i32 0, i32 5
  %67 = ptrtoint ptr %write32.i115 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %write32.i115, align 4
  tail call void %68(ptr noundef %59, i16 noundef zeroext %conv35, i32 noundef %add37) #13
  %69 = ptrtoint ptr %core32 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %core32, align 4
  %71 = ptrtoint ptr %d64txregbase33 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %d64txregbase33, align 4
  %73 = trunc i32 %72 to i16
  %conv41 = add i16 %73, 12
  %ddoffsethigh42 = getelementptr inbounds %struct.dma_info, ptr %di, i32 0, i32 35
  %74 = ptrtoint ptr %ddoffsethigh42 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %ddoffsethigh42, align 4
  %76 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %70, align 8
  %ops.i116 = getelementptr inbounds %struct.bcma_bus, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %ops.i116 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ops.i116, align 4
  %write32.i117 = getelementptr inbounds %struct.bcma_host_ops, ptr %79, i32 0, i32 5
  %80 = ptrtoint ptr %write32.i117 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %write32.i117, align 4
  tail call void %81(ptr noundef %70, i16 noundef zeroext %conv41, i32 noundef %75) #13
  %82 = ptrtoint ptr %core32 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %core32, align 4
  %84 = ptrtoint ptr %d64txregbase33 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %d64txregbase33, align 4
  %conv46 = trunc i32 %85 to i16
  %shl = shl nuw nsw i32 %shr137, 16
  %86 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %83, align 8
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ops.i.i, align 4
  %read32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %91(ptr noundef %83, i16 noundef zeroext %conv46) #13
  %and.i = and i32 %call.i.i, 196608
  %or.i = or i32 %and.i, %shl
  %92 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %83, align 8
  %ops.i1.i = getelementptr inbounds %struct.bcma_bus, ptr %93, i32 0, i32 2
  %94 = ptrtoint ptr %ops.i1.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ops.i1.i, align 4
  %write32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %95, i32 0, i32 5
  %96 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %write32.i.i, align 4
  tail call void %97(ptr noundef %83, i16 noundef zeroext %conv46, i32 noundef %or.i) #13
  br label %if.end65

if.else47:                                        ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #15
  %core48 = getelementptr inbounds %struct.dma_info, ptr %di, i32 0, i32 2
  %98 = ptrtoint ptr %core48 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %core48, align 4
  %d64rxregbase49 = getelementptr inbounds %struct.dma_info, ptr %di, i32 0, i32 8
  %100 = ptrtoint ptr %d64rxregbase49 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %d64rxregbase49, align 4
  %102 = trunc i32 %101 to i16
  %conv51 = add i16 %102, 8
  %add53 = add i32 %4, %and28
  %103 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %99, align 8
  %ops.i118 = getelementptr inbounds %struct.bcma_bus, ptr %104, i32 0, i32 2
  %105 = ptrtoint ptr %ops.i118 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ops.i118, align 4
  %write32.i119 = getelementptr inbounds %struct.bcma_host_ops, ptr %106, i32 0, i32 5
  %107 = ptrtoint ptr %write32.i119 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %write32.i119, align 4
  tail call void %108(ptr noundef %99, i16 noundef zeroext %conv51, i32 noundef %add53) #13
  %109 = ptrtoint ptr %core48 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %core48, align 4
  %111 = ptrtoint ptr %d64rxregbase49 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %d64rxregbase49, align 4
  %113 = trunc i32 %112 to i16
  %conv57 = add i16 %113, 12
  %ddoffsethigh58 = getelementptr inbounds %struct.dma_info, ptr %di, i32 0, i32 35
  %114 = ptrtoint ptr %ddoffsethigh58 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %ddoffsethigh58, align 4
  %116 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %110, align 8
  %ops.i120 = getelementptr inbounds %struct.bcma_bus, ptr %117, i32 0, i32 2
  %118 = ptrtoint ptr %ops.i120 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ops.i120, align 4
  %write32.i121 = getelementptr inbounds %struct.bcma_host_ops, ptr %119, i32 0, i32 5
  %120 = ptrtoint ptr %write32.i121 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %write32.i121, align 4
  tail call void %121(ptr noundef %110, i16 noundef zeroext %conv57, i32 noundef %115) #13
  %122 = ptrtoint ptr %core48 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %core48, align 4
  %124 = ptrtoint ptr %d64rxregbase49 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %d64rxregbase49, align 4
  %conv62 = trunc i32 %125 to i16
  %shl63 = shl nuw nsw i32 %shr, 16
  %126 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %123, align 8
  %ops.i.i122 = getelementptr inbounds %struct.bcma_bus, ptr %127, i32 0, i32 2
  %128 = ptrtoint ptr %ops.i.i122 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %ops.i.i122, align 4
  %read32.i.i123 = getelementptr inbounds %struct.bcma_host_ops, ptr %129, i32 0, i32 2
  %130 = ptrtoint ptr %read32.i.i123 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %read32.i.i123, align 4
  %call.i.i124 = tail call i32 %131(ptr noundef %123, i16 noundef zeroext %conv62) #13
  %and.i125 = and i32 %call.i.i124, 196608
  %or.i126 = or i32 %and.i125, %shl63
  %132 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %123, align 8
  %ops.i1.i127 = getelementptr inbounds %struct.bcma_bus, ptr %133, i32 0, i32 2
  %134 = ptrtoint ptr %ops.i1.i127 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %ops.i1.i127, align 4
  %write32.i.i128 = getelementptr inbounds %struct.bcma_host_ops, ptr %135, i32 0, i32 5
  %136 = ptrtoint ptr %write32.i.i128 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %write32.i.i128, align 4
  tail call void %137(ptr noundef %123, i16 noundef zeroext %conv62, i32 noundef %or.i126) #13
  br label %if.end65

if.end65:                                         ; preds = %if.else47, %if.then31, %if.else14, %if.then7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dma_rx(ptr noundef %pub, ptr noundef %skb_list) local_unnamed_addr #0 align 64 {
entry:
  %dma_frames = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %dma_frames) #13
  %0 = call ptr @memset(ptr %dma_frames, i32 255, i32 56)
  %lock.i = getelementptr inbounds %struct.sk_buff_head, ptr %dma_frames, i32 0, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #13
  %1 = ptrtoint ptr %dma_frames to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dma_frames, ptr %dma_frames, align 4
  %prev.i.i = getelementptr inbounds %struct.anon.62, ptr %dma_frames, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dma_frames, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %dma_frames, i32 0, i32 1
  %3 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %qlen.i.i, align 4
  %call124 = call fastcc ptr @_dma_getnextrxp(ptr noundef %pub, i1 noundef zeroext false)
  %cmp125 = icmp eq ptr %call124, null
  br i1 %cmp125, label %entry.cleanup_crit_edge, label %if.end.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.lr.ph:                                     ; preds = %entry
  %core = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 2
  %name = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 1
  %rxoffset = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 33
  %rxbufsize = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 30
  %d64rxregbase = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 8
  %rcvptrbase = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 29
  %rxin = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 22
  %rxout = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 23
  %dmactrlflags = getelementptr inbounds %struct.dma_pub, ptr %pub, i32 0, i32 1
  %rxgiants = getelementptr inbounds %struct.dma_pub, ptr %pub, i32 0, i32 2
  br label %if.end

if.end:                                           ; preds = %for.end.if.end_crit_edge, %if.end.lr.ph
  %call126 = phi ptr [ %call124, %if.end.lr.ph ], [ %call, %for.end.if.end_crit_edge ]
  %data = getelementptr inbounds %struct.sk_buff, ptr %call126, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %5, align 2
  %8 = call i16 @llvm.bswap.i16(i16 %7)
  %conv = zext i16 %8 to i32
  %9 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %core, align 4
  %dev = getelementptr inbounds %struct.bcma_device, ptr %10, i32 0, i32 2
  call void (ptr, i32, ptr, ptr, ...) @__brcms_dbg(ptr noundef %dev, i32 noundef 32, ptr noundef nonnull @__func__.dma_rx, ptr noundef nonnull @.str.7, ptr noundef %name, i32 noundef %conv) #13
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call126, i32 0, i32 7
  %11 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not.i.i = icmp eq i32 %12, 0
  br i1 %tobool.i.not.i.i, label %if.end21.critedge.i.i, label %do.end.i.i, !prof !98

do.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 2789, i32 noundef 9, ptr noundef null) #13
  br label %__skb_trim.exit

if.end21.critedge.i.i:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %rxoffset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rxoffset, align 4
  %add = add i32 %14, %conv
  %15 = ptrtoint ptr %rxbufsize to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rxbufsize, align 4
  %17 = call i32 @llvm.umin.i32(i32 %add, i32 %16)
  %len22.i.i = getelementptr inbounds %struct.sk_buff, ptr %call126, i32 0, i32 6
  %18 = ptrtoint ptr %len22.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %len22.i.i, align 4
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %20, i32 %17
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call126, i32 0, i32 16
  %21 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr.i.i.i, ptr %tail.i.i.i, align 8
  br label %__skb_trim.exit

__skb_trim.exit:                                  ; preds = %if.end21.critedge.i.i, %do.end.i.i
  call void @skb_queue_tail(ptr noundef nonnull %dma_frames, ptr noundef nonnull %call126) #13
  %22 = ptrtoint ptr %rxbufsize to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rxbufsize, align 4
  %24 = ptrtoint ptr %rxoffset to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rxoffset, align 4
  %sub.neg = sub i32 %25, %23
  %sub6 = add i32 %sub.neg, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub6)
  %cmp7 = icmp sgt i32 %sub6, 0
  br i1 %cmp7, label %__skb_trim.exit.land.rhs_crit_edge, label %__skb_trim.exit.if.end53_crit_edge

__skb_trim.exit.if.end53_crit_edge:               ; preds = %__skb_trim.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53

__skb_trim.exit.land.rhs_crit_edge:               ; preds = %__skb_trim.exit
  br label %land.rhs

land.rhs:                                         ; preds = %__skb_trim.exit115.land.rhs_crit_edge, %__skb_trim.exit.land.rhs_crit_edge
  %pktcnt.1121 = phi i32 [ %inc, %__skb_trim.exit115.land.rhs_crit_edge ], [ 1, %__skb_trim.exit.land.rhs_crit_edge ]
  %resid.0119 = phi i32 [ %sub22, %__skb_trim.exit115.land.rhs_crit_edge ], [ %sub6, %__skb_trim.exit.land.rhs_crit_edge ]
  %call12 = call fastcc ptr @_dma_getnextrxp(ptr noundef %pub, i1 noundef zeroext false)
  %tobool.not = icmp eq ptr %call12, null
  br i1 %tobool.not, label %if.then25.critedge, label %while.body

while.body:                                       ; preds = %land.rhs
  %data_len.i.i.i107 = getelementptr inbounds %struct.sk_buff, ptr %call12, i32 0, i32 7
  %26 = ptrtoint ptr %data_len.i.i.i107 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %data_len.i.i.i107, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.i.not.i.i108 = icmp eq i32 %27, 0
  br i1 %tobool.i.not.i.i108, label %if.end21.critedge.i.i114, label %do.end.i.i109, !prof !98

do.end.i.i109:                                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 2789, i32 noundef 9, ptr noundef null) #13
  br label %__skb_trim.exit115

if.end21.critedge.i.i114:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %28 = ptrtoint ptr %rxbufsize to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rxbufsize, align 4
  %30 = call i32 @llvm.umin.i32(i32 %resid.0119, i32 %29)
  %len22.i.i110 = getelementptr inbounds %struct.sk_buff, ptr %call12, i32 0, i32 6
  %31 = ptrtoint ptr %len22.i.i110 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %len22.i.i110, align 4
  %data.i.i.i111 = getelementptr inbounds %struct.sk_buff, ptr %call12, i32 0, i32 19
  %32 = ptrtoint ptr %data.i.i.i111 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data.i.i.i111, align 4
  %add.ptr.i.i.i112 = getelementptr i8, ptr %33, i32 %30
  %tail.i.i.i113 = getelementptr inbounds %struct.sk_buff, ptr %call12, i32 0, i32 16
  %34 = ptrtoint ptr %tail.i.i.i113 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %add.ptr.i.i.i112, ptr %tail.i.i.i113, align 8
  br label %__skb_trim.exit115

__skb_trim.exit115:                               ; preds = %if.end21.critedge.i.i114, %do.end.i.i109
  call void @skb_queue_tail(ptr noundef nonnull %dma_frames, ptr noundef nonnull %call12) #13
  %35 = ptrtoint ptr %rxbufsize to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rxbufsize, align 4
  %sub22 = sub i32 %resid.0119, %36
  %inc = add i32 %pktcnt.1121, 1
  %cmp10 = icmp sgt i32 %sub22, 0
  br i1 %cmp10, label %__skb_trim.exit115.land.rhs_crit_edge, label %__skb_trim.exit115.if.end36_crit_edge

__skb_trim.exit115.if.end36_crit_edge:            ; preds = %__skb_trim.exit115
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

__skb_trim.exit115.land.rhs_crit_edge:            ; preds = %__skb_trim.exit115
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

if.then25.critedge:                               ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  %37 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %core, align 4
  %39 = ptrtoint ptr %d64rxregbase to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %d64rxregbase, align 4
  %41 = trunc i32 %40 to i16
  %conv28 = add i16 %41, 16
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %38, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops.i, align 4
  %read32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %read32.i, align 4
  %call.i = call i32 %47(ptr noundef %38, i16 noundef zeroext %conv28) #13
  %48 = ptrtoint ptr %rcvptrbase to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rcvptrbase, align 4
  %sub30 = sub i32 %call.i, %49
  %and31 = lshr i32 %sub30, 4
  %div106 = and i32 %and31, 511
  %50 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %core, align 4
  %dev33 = getelementptr inbounds %struct.bcma_device, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %rxin to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %rxin, align 2
  %conv34 = zext i16 %53 to i32
  %54 = ptrtoint ptr %rxout to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %rxout, align 4
  %conv35 = zext i16 %55 to i32
  call void (ptr, i32, ptr, ptr, ...) @__brcms_dbg(ptr noundef %dev33, i32 noundef 32, ptr noundef nonnull @__func__.dma_rx, ptr noundef nonnull @.str.8, i32 noundef %conv34, i32 noundef %conv35, i32 noundef %div106) #13
  br label %if.end36

if.end36:                                         ; preds = %if.then25.critedge, %__skb_trim.exit115.if.end36_crit_edge
  %pktcnt.1117 = phi i32 [ %pktcnt.1121, %if.then25.critedge ], [ %inc, %__skb_trim.exit115.if.end36_crit_edge ]
  %56 = ptrtoint ptr %dmactrlflags to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dmactrlflags, align 4
  %and37 = and i32 %57, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %cmp38 = icmp eq i32 %and37, 0
  br i1 %cmp38, label %if.then40, label %if.end36.if.end53_crit_edge

if.end36.if.end53_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53

if.then40:                                        ; preds = %if.end36
  %58 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %core, align 4
  %dev42 = getelementptr inbounds %struct.bcma_device, ptr %59, i32 0, i32 2
  call void (ptr, i32, ptr, ptr, ...) @__brcms_dbg(ptr noundef %dev42, i32 noundef 32, ptr noundef nonnull @__func__.dma_rx, ptr noundef nonnull @.str.9, ptr noundef %name, i32 noundef %conv) #13
  %60 = ptrtoint ptr %dma_frames to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dma_frames, align 4
  %cmp47.not122 = icmp eq ptr %61, %dma_frames
  br i1 %cmp47.not122, label %if.then40.for.end_crit_edge, label %if.then40.for.body_crit_edge

if.then40.for.body_crit_edge:                     ; preds = %if.then40
  br label %for.body

if.then40.for.end_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then40.for.body_crit_edge
  %p.0123 = phi ptr [ %next.0, %for.body.for.body_crit_edge ], [ %61, %if.then40.for.body_crit_edge ]
  %62 = ptrtoint ptr %p.0123 to i32
  call void @__asan_load4_noabort(i32 %62)
  %next.0 = load ptr, ptr %p.0123, align 8
  call void @skb_unlink(ptr noundef %p.0123, ptr noundef nonnull %dma_frames) #13
  call void @brcmu_pkt_buf_free_skb(ptr noundef %p.0123) #13
  %cmp47.not = icmp eq ptr %next.0, %dma_frames
  br i1 %cmp47.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then40.for.end_crit_edge
  %63 = ptrtoint ptr %rxgiants to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rxgiants, align 4
  %inc51 = add i32 %64, 1
  store i32 %inc51, ptr %rxgiants, align 4
  %call = call fastcc ptr @_dma_getnextrxp(ptr noundef %pub, i1 noundef zeroext false)
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %for.end.cleanup_crit_edge, label %for.end.if.end_crit_edge

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end53:                                         ; preds = %if.end36.if.end53_crit_edge, %__skb_trim.exit.if.end53_crit_edge
  %pktcnt.2 = phi i32 [ %pktcnt.1117, %if.end36.if.end53_crit_edge ], [ 1, %__skb_trim.exit.if.end53_crit_edge ]
  %65 = ptrtoint ptr %dma_frames to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dma_frames, align 4
  %cmp.i.not.i = icmp eq ptr %66, %dma_frames
  br i1 %cmp.i.not.i, label %if.end53.cleanup_crit_edge, label %if.then.i

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i = getelementptr inbounds %struct.anon.62, ptr %skb_list, i32 0, i32 1
  %67 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %prev.i, align 4
  %69 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %prev.i.i, align 4
  %prev5.i.i = getelementptr inbounds %struct.anon.41, ptr %66, i32 0, i32 1
  %71 = ptrtoint ptr %prev5.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %68, ptr %prev5.i.i, align 4
  %72 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %66, ptr %68, align 8
  %73 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %skb_list, ptr %70, align 8
  store volatile ptr %70, ptr %prev.i, align 4
  %74 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %qlen.i.i, align 4
  %qlen1.i = getelementptr inbounds %struct.sk_buff_head, ptr %skb_list, i32 0, i32 1
  %76 = ptrtoint ptr %qlen1.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %qlen1.i, align 4
  %add.i = add i32 %77, %75
  store i32 %add.i, ptr %qlen1.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end53.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %pktcnt.2, %if.end53.cleanup_crit_edge ], [ %pktcnt.2, %if.then.i ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %dma_frames) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @_dma_getnextrxp(ptr nocapture noundef %di, i1 noundef zeroext %forceall) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %nrxd = getelementptr inbounds %struct.dma_info, ptr %di, i32 0, i32 21
  %0 = ptrtoint ptr %nrxd to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %nrxd, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp = icmp eq i16 %1, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  %rxin.i = getelementptr inbounds %struct.dma_info, ptr %di, i32 0, i32 22
  %2 = ptrtoint ptr %rxin.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %rxin.i, align 2
  %conv.i = zext i16 %3 to i32
  %rxout.i = getelementptr inbounds %struct.dma_info, ptr %di, i32 0, i32 23
  %4 = ptrtoint ptr %rxout.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %rxout.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %5)
  %cmp.i = icmp eq i16 %3, %5
  br i1 %cmp.i, label %if.end.return_crit_edge, label %if.end.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end.i:                                         ; preds = %if.end
  %core.i = getelementptr inbounds %struct.dma_info, ptr %di, i32 0, i32 2
  %6 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %core.i, align 4
  %d64rxregbase.i = getelementptr inbounds %struct.dma_info, ptr %di, i32 0, i32 8
  %8 = ptrtoint ptr %d64rxregbase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %d64rxregbase.i, align 4
  %10 = trunc i32 %9 to i16
  %conv3.i = add i16 %10, 16
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %7, align 8
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i.i, align 4
  %read32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %16(ptr noundef %7, i16 noundef zeroext %conv3.i) #13
  br i1 %forceall, label %if.end.i.if.end8.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %rcvptrbase.i = getelementptr inbounds %struct.dma_info, ptr %di, i32 0, i32 29
  %17 = ptrtoint ptr %rcvptrbase.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rcvptrbase.i, align 4
  %sub.i = sub i32 %call.i.i, %18
  %and4.i = lshr i32 %sub.i, 4
  %div46.i = and i32 %and4.i, 511
  call void @__sanitizer_cov_trace_cmp4(i32 %div46.i, i32 %conv.i)
  %cmp5.i = icmp eq i32 %div46.i, %conv.i
  br i1 %cmp5.i, label %land.lhs.true.i.return_crit_edge, label %land.lhs.true.i.if.end8.i_crit_edge

land.lhs.true.i.if.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i

land.lhs.true.i.return_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end8.i:                                        ; preds = %land.lhs.true.i.if.end8.i_crit_edge, %if.end.i.if.end8.i_crit_edge
  %rxp9.i = getelementptr inbounds %struct.dma_info, ptr %di, i32 0, i32 24
  %19 = ptrtoint ptr %rxp9.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rxp9.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %20, i32 %conv.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i, align 4
  store ptr null, ptr %arrayidx.i, align 4
  %rxd64.i = getelementptr inbounds %struct.dma_info, ptr %di, i32 0, i32 10
  %23 = ptrtoint ptr %rxd64.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rxd64.i, align 4
  %addrlow.i = getelementptr %struct.dma64desc, ptr %24, i32 %conv.i, i32 2
  %25 = ptrtoint ptr %addrlow.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %addrlow.i, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #13
  %dataoffsetlow.i = getelementptr inbounds %struct.dma_info, ptr %di, i32 0, i32 36
  %28 = ptrtoint ptr %dataoffsetlow.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dataoffsetlow.i, align 4
  %sub13.i = sub i32 %27, %29
  %dmadev.i = getelementptr inbounds %struct.dma_info, ptr %di, i32 0, i32 3
  %30 = ptrtoint ptr %dmadev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dmadev.i, align 4
  %rxbufsize.i = getelementptr inbounds %struct.dma_info, ptr %di, i32 0, i32 30
  %32 = ptrtoint ptr %rxbufsize.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rxbufsize.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %31, i32 noundef %sub13.i, i32 noundef %33, i32 noundef 2, i32 noundef 0) #13
  %34 = ptrtoint ptr %rxd64.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rxd64.i, align 4
  %addrlow16.i = getelementptr %struct.dma64desc, ptr %35, i32 %conv.i, i32 2
  %36 = ptrtoint ptr %addrlow16.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -272716322, ptr %addrlow16.i, align 4
  %37 = load ptr, ptr %rxd64.i, align 4
  %addrhigh.i = getelementptr %struct.dma64desc, ptr %37, i32 %conv.i, i32 3
  %38 = ptrtoint ptr %addrhigh.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -272716322, ptr %addrhigh.i, align 4
  %add.i.i = add i16 %3, 1
  %39 = ptrtoint ptr %nrxd to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %nrxd, align 4
  %sub.i.i.i.i = add i16 %40, -1
  %and.i.i.i.i = and i16 %sub.i.i.i.i, %add.i.i
  %41 = ptrtoint ptr %rxin.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %and.i.i.i.i, ptr %rxin.i, align 2
  br label %return

return:                                           ; preds = %if.end8.i, %land.lhs.true.i.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ null, %entry.return_crit_edge ], [ %22, %if.end8.i ], [ null, %if.end.return_crit_edge ], [ null, %land.lhs.true.i.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_unlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmu_pkt_buf_free_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dma_rxfill(ptr noundef %pub) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rxin1 = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 22
  %0 = ptrtoint ptr %rxin1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %rxin1, align 2
  %rxout2 = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 23
  %2 = ptrtoint ptr %rxout2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %rxout2, align 4
  %nrxpost = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 32
  %4 = ptrtoint ptr %nrxpost to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nrxpost, align 4
  %conv = zext i16 %1 to i32
  %conv3 = zext i16 %3 to i32
  %sub.i = sub nsw i32 %conv3, %conv
  %nrxd.i.i = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 21
  %6 = ptrtoint ptr %nrxd.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %nrxd.i.i, align 4
  %conv.i.i = zext i16 %7 to i32
  %sub.i.i.i = add nsw i32 %conv.i.i, -1
  %and.i.i.i = and i32 %sub.i.i.i, %sub.i
  %sub = sub i32 %5, %and.i.i.i
  %core = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 2
  %8 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core, align 4
  %dev = getelementptr inbounds %struct.bcma_device, ptr %9, i32 0, i32 2
  %name = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 1
  tail call void (ptr, i32, ptr, ptr, ...) @__brcms_dbg(ptr noundef %dev, i32 noundef 32, ptr noundef nonnull @__func__.dma_rxfill, ptr noundef nonnull @.str.10, ptr noundef %name, i32 noundef %sub) #13
  %rxbufsize = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 30
  %10 = ptrtoint ptr %rxbufsize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rxbufsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 172, i32 %11)
  %cmp = icmp ugt i32 %11, 172
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %rxextrahdrroom = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 31
  %12 = ptrtoint ptr %rxextrahdrroom to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rxextrahdrroom, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %extra_offset.0 = phi i32 [ %13, %if.then ], [ 0, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %and.i.i.i)
  %cmp5141.not = icmp eq i32 %5, %and.i.i.i
  br i1 %cmp5141.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %extra_offset.0)
  %tobool.not = icmp eq i32 %extra_offset.0, 0
  %dmadev = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 3
  %rxp = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 24
  %rxd64 = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 10
  %dataoffsetlow.i = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 36
  %dataoffsethigh14.i = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 37
  %dmactrlflags.i = getelementptr inbounds %struct.dma_pub, ptr %pub, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %dma64_dd_upd.exit.for.body_crit_edge, %for.body.lr.ph
  %i.0143 = phi i32 [ 0, %for.body.lr.ph ], [ %inc50, %dma64_dd_upd.exit.for.body_crit_edge ]
  %rxout.0142 = phi i16 [ %3, %for.body.lr.ph ], [ %and.i.i.i120, %dma64_dd_upd.exit.for.body_crit_edge ]
  %14 = ptrtoint ptr %rxbufsize to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rxbufsize, align 4
  %add = add i32 %15, %extra_offset.0
  %call8 = tail call ptr @brcmu_pkt_buf_get_skb(i32 noundef %add) #13
  %cmp9 = icmp eq ptr %call8, null
  br i1 %cmp9, label %if.then11, label %if.end26

if.then11:                                        ; preds = %for.body
  %16 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %core, align 4
  %dev13 = getelementptr inbounds %struct.bcma_device, ptr %17, i32 0, i32 2
  tail call void (ptr, i32, ptr, ptr, ...) @__brcms_dbg(ptr noundef %dev13, i32 noundef 32, ptr noundef nonnull @__func__.dma_rxfill, ptr noundef nonnull @.str.11, ptr noundef %name) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0143)
  %cmp16 = icmp eq i32 %i.0143, 0
  br i1 %cmp16, label %land.lhs.true, label %if.then11.if.end25_crit_edge

if.then11.if.end25_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

land.lhs.true:                                    ; preds = %if.then11
  %18 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %core, align 4
  %dev.i = getelementptr inbounds %struct.bcma_device, ptr %19, i32 0, i32 2
  tail call void (ptr, i32, ptr, ptr, ...) @__brcms_dbg(ptr noundef %dev.i, i32 noundef 32, ptr noundef nonnull @__func__.dma64_rxidle, ptr noundef nonnull @.str.6, ptr noundef %name) #13
  %20 = ptrtoint ptr %nrxd.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %nrxd.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %cmp.i = icmp eq i16 %21, 0
  br i1 %cmp.i, label %land.lhs.true.if.then20_crit_edge, label %dma64_rxidle.exit

land.lhs.true.if.then20_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then20

dma64_rxidle.exit:                                ; preds = %land.lhs.true
  %22 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %core, align 4
  %d64rxregbase.i = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 8
  %24 = ptrtoint ptr %d64rxregbase.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %d64rxregbase.i, align 4
  %26 = trunc i32 %25 to i16
  %conv3.i = add i16 %26, 16
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %23, align 8
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops.i.i, align 4
  %read32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %32(ptr noundef %23, i16 noundef zeroext %conv3.i) #13
  %33 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %core, align 4
  %35 = ptrtoint ptr %d64rxregbase.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %d64rxregbase.i, align 4
  %37 = trunc i32 %36 to i16
  %conv7.i = add i16 %37, 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %34, align 8
  %ops.i18.i = getelementptr inbounds %struct.bcma_bus, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %ops.i18.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops.i18.i, align 4
  %read32.i19.i = getelementptr inbounds %struct.bcma_host_ops, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %read32.i19.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %read32.i19.i, align 4
  %call.i20.i = tail call i32 %43(ptr noundef %34, i16 noundef zeroext %conv7.i) #13
  %44 = xor i32 %call.i20.i, %call.i.i
  %45 = and i32 %44, 8191
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp10.i = icmp eq i32 %45, 0
  br i1 %cmp10.i, label %dma64_rxidle.exit.if.then20_crit_edge, label %dma64_rxidle.exit.if.end25_crit_edge

dma64_rxidle.exit.if.end25_crit_edge:             ; preds = %dma64_rxidle.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

dma64_rxidle.exit.if.then20_crit_edge:            ; preds = %dma64_rxidle.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then20

if.then20:                                        ; preds = %dma64_rxidle.exit.if.then20_crit_edge, %land.lhs.true.if.then20_crit_edge
  %46 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %core, align 4
  %dev22 = getelementptr inbounds %struct.bcma_device, ptr %47, i32 0, i32 2
  tail call void (ptr, i32, ptr, ptr, ...) @__brcms_dbg(ptr noundef %dev22, i32 noundef 32, ptr noundef nonnull @__func__.dma_rxfill, ptr noundef nonnull @.str.12, ptr noundef %name) #13
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %dma64_rxidle.exit.if.end25_crit_edge, %if.then11.if.end25_crit_edge
  %ring_empty.0 = phi i1 [ true, %if.then20 ], [ false, %dma64_rxidle.exit.if.end25_crit_edge ], [ false, %if.then11.if.end25_crit_edge ]
  %rxnobuf = getelementptr inbounds %struct.dma_pub, ptr %pub, i32 0, i32 3
  %48 = ptrtoint ptr %rxnobuf to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rxnobuf, align 4
  %inc = add i32 %49, 1
  store i32 %inc, ptr %rxnobuf, align 4
  br label %for.end

if.end26:                                         ; preds = %for.body
  br i1 %tobool.not, label %if.end26.if.end29_crit_edge, label %if.then27

if.end26.if.end29_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.then27:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  %call28 = tail call ptr @skb_pull(ptr noundef nonnull %call8, i32 noundef %extra_offset.0) #13
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end26.if.end29_crit_edge
  %data = getelementptr inbounds %struct.sk_buff, ptr %call8, i32 0, i32 19
  %50 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %51, align 4
  %53 = ptrtoint ptr %dmadev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dmadev, align 4
  %55 = load ptr, ptr %data, align 4
  %56 = ptrtoint ptr %rxbufsize to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rxbufsize, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %55) #13
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end29
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !98

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %54) #13
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %54, i32 0, i32 3
  %58 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %59, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %60 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %54, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %61, %if.end.i.i ], [ %59, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.27, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #13
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %62 = ptrtoint ptr %dmadev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dmadev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %63, i32 noundef -1) #13
  br label %if.then36

dma_map_single_attrs.exit:                        ; preds = %if.end29
  tail call void @debug_dma_map_single(ptr noundef %54, ptr noundef %55, i32 noundef %57) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %64 = load ptr, ptr @mem_map, align 4
  %65 = ptrtoint ptr %55 to i32
  %sub.i111 = add i32 %65, 1073741824
  %shr.i = lshr i32 %sub.i111, 12
  %add.ptr.i = getelementptr %struct.page, ptr %64, i32 %shr.i
  %and.i = and i32 %65, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %54, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %57, i32 noundef 2, i32 noundef 0) #13
  %66 = ptrtoint ptr %dmadev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dmadev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %67, i32 noundef %call41.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i113 = icmp eq i32 %call41.i, -1
  br i1 %cmp.i113, label %dma_map_single_attrs.exit.if.then36_crit_edge, label %if.end37

dma_map_single_attrs.exit.if.then36_crit_edge:    ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then36

if.then36:                                        ; preds = %dma_map_single_attrs.exit.if.then36_crit_edge, %dma_map_single_attrs.exit.thread
  tail call void @brcmu_pkt_buf_free_skb(ptr noundef nonnull %call8) #13
  br label %cleanup

if.end37:                                         ; preds = %dma_map_single_attrs.exit
  %68 = ptrtoint ptr %rxp to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rxp, align 4
  %idxprom = zext i16 %rxout.0142 to i32
  %arrayidx = getelementptr ptr, ptr %69, i32 %idxprom
  %70 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call8, ptr %arrayidx, align 4
  %71 = ptrtoint ptr %nrxd.i.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %nrxd.i.i, align 4
  %conv39 = zext i16 %72 to i32
  %sub40 = add nsw i32 %conv39, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub40, i32 %idxprom)
  %cmp41 = icmp eq i32 %sub40, %idxprom
  %spec.store.select = select i1 %cmp41, i32 16, i32 0
  %73 = ptrtoint ptr %rxd64 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %rxd64, align 4
  %75 = ptrtoint ptr %rxbufsize to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %rxbufsize, align 4
  %and.i114 = and i32 %76, 32767
  %77 = ptrtoint ptr %dataoffsetlow.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %dataoffsetlow.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp.i115 = icmp eq i32 %78, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call41.i)
  %tobool.not.i = icmp ult i32 %call41.i, 1073741824
  %or.cond.i = or i1 %tobool.not.i, %cmp.i115
  %and8.i = and i32 %call41.i, 1073741823
  %79 = lshr i32 %call41.i, 14
  %shl.i = and i32 %79, 196608
  %and8.sink.i = select i1 %or.cond.i, i32 %call41.i, i32 %and8.i
  %or.i = select i1 %or.cond.i, i32 0, i32 %shl.i
  %or.sink.i = or i32 %or.i, %and.i114
  %add11.i = add i32 %and8.sink.i, %78
  %80 = tail call i32 @llvm.bswap.i32(i32 %add11.i) #13
  %addrlow13.i = getelementptr %struct.dma64desc, ptr %74, i32 %idxprom, i32 2
  %81 = ptrtoint ptr %addrlow13.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %addrlow13.i, align 4
  %82 = ptrtoint ptr %dataoffsethigh14.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %dataoffsethigh14.i, align 4
  %84 = tail call i32 @llvm.bswap.i32(i32 %83) #13
  %addrhigh16.i = getelementptr %struct.dma64desc, ptr %74, i32 %idxprom, i32 3
  %85 = ptrtoint ptr %addrhigh16.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %addrhigh16.i, align 4
  %86 = tail call i32 @llvm.bswap.i32(i32 %or.sink.i) #13
  %87 = getelementptr %struct.dma64desc, ptr %74, i32 %idxprom
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %spec.store.select, ptr %87, align 4
  %89 = getelementptr %struct.dma64desc, ptr %74, i32 %idxprom, i32 1
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %86, ptr %89, align 4
  %91 = ptrtoint ptr %dmactrlflags.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %dmactrlflags.i, align 4
  %and21.i = and i32 %92, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %if.end37.dma64_dd_upd.exit_crit_edge, label %if.then23.i

if.end37.dma64_dd_upd.exit_crit_edge:             ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma64_dd_upd.exit

if.then23.i:                                      ; preds = %if.end37
  %xor.i.i = xor i32 %84, %spec.store.select
  %xor1.i.i = xor i32 %xor.i.i, %80
  %xor2.i.i = xor i32 %xor1.i.i, %86
  %shr.i.i.i = lshr i32 %xor2.i.i, 16
  %xor.i.i.i = xor i32 %shr.i.i.i, %xor2.i.i
  %shr1.i.i.i = lshr i32 %xor.i.i.i, 8
  %xor2.i.i.i = xor i32 %shr1.i.i.i, %xor.i.i.i
  %shr3.i.i.i = lshr i32 %xor2.i.i.i, 4
  %xor4.i.i.i = xor i32 %shr3.i.i.i, %xor2.i.i.i
  %shr5.i.i.i = lshr i32 %xor4.i.i.i, 2
  %xor6.i.i.i = xor i32 %shr5.i.i.i, %xor4.i.i.i
  %shr7.i.i.i = lshr i32 %xor6.i.i.i, 1
  %xor8.i.i.i = xor i32 %shr7.i.i.i, %xor6.i.i.i
  %and.i.i.i116 = and i32 %xor8.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i116)
  %tobool.i.not.i = icmp eq i32 %and.i.i.i116, 0
  br i1 %tobool.i.not.i, label %if.then23.i.dma64_dd_upd.exit_crit_edge, label %if.then25.i

if.then23.i.dma64_dd_upd.exit_crit_edge:          ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma64_dd_upd.exit

if.then25.i:                                      ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #15
  %or26.i = or i32 %or.sink.i, 262144
  %93 = tail call i32 @llvm.bswap.i32(i32 %or26.i) #13
  %94 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %89, align 4
  br label %dma64_dd_upd.exit

dma64_dd_upd.exit:                                ; preds = %if.then25.i, %if.then23.i.dma64_dd_upd.exit_crit_edge, %if.end37.dma64_dd_upd.exit_crit_edge
  %add.i = add i16 %rxout.0142, 1
  %95 = ptrtoint ptr %nrxd.i.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %nrxd.i.i, align 4
  %sub.i.i.i119 = add i16 %96, -1
  %and.i.i.i120 = and i16 %sub.i.i.i119, %add.i
  %inc50 = add nuw i32 %i.0143, 1
  %exitcond.not = icmp eq i32 %inc50, %sub
  br i1 %exitcond.not, label %dma64_dd_upd.exit.for.end_crit_edge, label %dma64_dd_upd.exit.for.body_crit_edge

dma64_dd_upd.exit.for.body_crit_edge:             ; preds = %dma64_dd_upd.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

dma64_dd_upd.exit.for.end_crit_edge:              ; preds = %dma64_dd_upd.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %dma64_dd_upd.exit.for.end_crit_edge, %if.end25, %if.end.for.end_crit_edge
  %rxout.0135 = phi i16 [ %rxout.0142, %if.end25 ], [ %3, %if.end.for.end_crit_edge ], [ %and.i.i.i120, %dma64_dd_upd.exit.for.end_crit_edge ]
  %ring_empty.1.off0 = phi i1 [ %ring_empty.0, %if.end25 ], [ false, %if.end.for.end_crit_edge ], [ false, %dma64_dd_upd.exit.for.end_crit_edge ]
  %97 = ptrtoint ptr %rxout2 to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %rxout.0135, ptr %rxout2, align 4
  %98 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %core, align 4
  %d64rxregbase = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 8
  %100 = ptrtoint ptr %d64rxregbase to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %d64rxregbase, align 4
  %102 = trunc i32 %101 to i16
  %conv54 = add i16 %102, 4
  %rcvptrbase = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 29
  %103 = ptrtoint ptr %rcvptrbase to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %rcvptrbase, align 4
  %conv55 = zext i16 %rxout.0135 to i32
  %mul = shl nuw nsw i32 %conv55, 4
  %add56 = add i32 %104, %mul
  %105 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %99, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %106, i32 0, i32 2
  %107 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ops.i, align 4
  %write32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %108, i32 0, i32 5
  %109 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %write32.i, align 4
  tail call void %110(ptr noundef %99, i16 noundef zeroext %conv54, i32 noundef %add56) #13
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then36
  %retval.0 = phi i1 [ %ring_empty.1.off0, %for.end ], [ false, %if.then36 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmu_pkt_buf_get_skb(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dma_rxreclaim(ptr noundef %pub) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %core = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 2
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %dev = getelementptr inbounds %struct.bcma_device, ptr %1, i32 0, i32 2
  %name = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 1
  tail call void (ptr, i32, ptr, ptr, ...) @__brcms_dbg(ptr noundef %dev, i32 noundef 32, ptr noundef nonnull @__func__.dma_rxreclaim, ptr noundef nonnull @.str.6, ptr noundef %name) #13
  %rxin.i.i = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 22
  %nrxd.i = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 21
  %2 = ptrtoint ptr %nrxd.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %nrxd.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp.i5 = icmp eq i16 %3, 0
  br i1 %cmp.i5, label %entry.while.end_crit_edge, label %if.end.i.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end.i.lr.ph:                                   ; preds = %entry
  %rxout.i.i = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 23
  %d64rxregbase.i.i = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 8
  %rxp9.i.i = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 24
  %rxd64.i.i = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 10
  %dataoffsetlow.i.i = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 36
  %dmadev.i.i = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 3
  %rxbufsize.i.i = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 30
  br label %if.end.i

if.end.i:                                         ; preds = %while.body.if.end.i_crit_edge, %if.end.i.lr.ph
  %4 = ptrtoint ptr %rxin.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %rxin.i.i, align 2
  %6 = ptrtoint ptr %rxout.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %rxout.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %7)
  %cmp.i.i = icmp eq i16 %5, %7
  br i1 %cmp.i.i, label %if.end.i.while.end_crit_edge, label %_dma_getnextrxp.exit

if.end.i.while.end_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

_dma_getnextrxp.exit:                             ; preds = %if.end.i
  %conv.i.i = zext i16 %5 to i32
  %8 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core, align 4
  %10 = ptrtoint ptr %d64rxregbase.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %d64rxregbase.i.i, align 4
  %12 = trunc i32 %11 to i16
  %conv3.i.i = add i16 %12, 16
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %9, align 8
  %ops.i.i.i = getelementptr inbounds %struct.bcma_bus, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i.i.i, align 4
  %read32.i.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %18(ptr noundef %9, i16 noundef zeroext %conv3.i.i) #13
  %19 = ptrtoint ptr %rxp9.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rxp9.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %20, i32 %conv.i.i
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i.i, align 4
  store ptr null, ptr %arrayidx.i.i, align 4
  %23 = ptrtoint ptr %rxd64.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rxd64.i.i, align 4
  %addrlow.i.i = getelementptr %struct.dma64desc, ptr %24, i32 %conv.i.i, i32 2
  %25 = ptrtoint ptr %addrlow.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %addrlow.i.i, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #13
  %28 = ptrtoint ptr %dataoffsetlow.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dataoffsetlow.i.i, align 4
  %sub13.i.i = sub i32 %27, %29
  %30 = ptrtoint ptr %dmadev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dmadev.i.i, align 4
  %32 = ptrtoint ptr %rxbufsize.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rxbufsize.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %31, i32 noundef %sub13.i.i, i32 noundef %33, i32 noundef 2, i32 noundef 0) #13
  %34 = ptrtoint ptr %rxd64.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rxd64.i.i, align 4
  %addrlow16.i.i = getelementptr %struct.dma64desc, ptr %35, i32 %conv.i.i, i32 2
  %36 = ptrtoint ptr %addrlow16.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -272716322, ptr %addrlow16.i.i, align 4
  %37 = load ptr, ptr %rxd64.i.i, align 4
  %addrhigh.i.i = getelementptr %struct.dma64desc, ptr %37, i32 %conv.i.i, i32 3
  %38 = ptrtoint ptr %addrhigh.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -272716322, ptr %addrhigh.i.i, align 4
  %add.i.i.i = add i16 %5, 1
  %39 = ptrtoint ptr %nrxd.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %nrxd.i, align 4
  %sub.i.i.i.i.i = add i16 %40, -1
  %and.i.i.i.i.i = and i16 %sub.i.i.i.i.i, %add.i.i.i
  %41 = ptrtoint ptr %rxin.i.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %and.i.i.i.i.i, ptr %rxin.i.i, align 2
  %tobool.not = icmp eq ptr %22, null
  br i1 %tobool.not, label %_dma_getnextrxp.exit.while.end_crit_edge, label %while.body

_dma_getnextrxp.exit.while.end_crit_edge:         ; preds = %_dma_getnextrxp.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %_dma_getnextrxp.exit
  tail call void @brcmu_pkt_buf_free_skb(ptr noundef nonnull %22) #13
  %42 = ptrtoint ptr %nrxd.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %nrxd.i, align 4
  %cmp.i = icmp eq i16 %43, 0
  br i1 %cmp.i, label %while.body.while.end_crit_edge, label %while.body.if.end.i_crit_edge

while.body.if.end.i_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %_dma_getnextrxp.exit.while.end_crit_edge, %if.end.i.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @dma_counterreset(ptr nocapture noundef writeonly %pub) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rxgiants = getelementptr inbounds %struct.dma_pub, ptr %pub, i32 0, i32 2
  %0 = ptrtoint ptr %rxgiants to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %rxgiants, align 4
  %rxnobuf = getelementptr inbounds %struct.dma_pub, ptr %pub, i32 0, i32 3
  %1 = ptrtoint ptr %rxnobuf to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %rxnobuf, align 4
  %txnobuf = getelementptr inbounds %struct.dma_pub, ptr %pub, i32 0, i32 4
  %2 = ptrtoint ptr %txnobuf to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %txnobuf, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dma_getvar(ptr noundef %pub, ptr nocapture noundef readonly %name) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(9) @.str.13) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %0 = ptrtoint ptr %pub to i32
  %retval.0 = select i1 %tobool.not, i32 %0, i32 0
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dma_txinit(ptr noundef %pub) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %core = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 2
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %dev = getelementptr inbounds %struct.bcma_device, ptr %1, i32 0, i32 2
  %name = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 1
  tail call void (ptr, i32, ptr, ptr, ...) @__brcms_dbg(ptr noundef %dev, i32 noundef 32, ptr noundef nonnull @__func__.dma_txinit, ptr noundef nonnull @.str.6, ptr noundef %name) #13
  %ntxd = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 12
  %2 = ptrtoint ptr %ntxd to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ntxd, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp = icmp eq i16 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %txout = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 14
  %4 = ptrtoint ptr %txout to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %txout, align 2
  %txin = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 13
  %5 = ptrtoint ptr %txin to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %txin, align 4
  %conv3 = zext i16 %3 to i32
  %sub = add nsw i32 %conv3, -1
  %6 = ptrtoint ptr %pub to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sub, ptr %pub, align 4
  %txd64 = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 9
  %7 = ptrtoint ptr %txd64 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %txd64, align 4
  %mul = shl nuw nsw i32 %conv3, 4
  %9 = call ptr @memset(ptr %8, i32 0, i32 %mul)
  %aligndesc_4k = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 38
  %10 = ptrtoint ptr %aligndesc_4k to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %aligndesc_4k, align 4, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.then6, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %txdpa = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 16
  %12 = ptrtoint ptr %txdpa to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %txdpa, align 4
  tail call fastcc void @_dma_ddtable_init(ptr noundef %pub, i32 noundef 1, i32 noundef %13)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  %dmactrlflags = getelementptr inbounds %struct.dma_pub, ptr %pub, i32 0, i32 1
  %14 = ptrtoint ptr %dmactrlflags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dmactrlflags, align 4
  %and = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp9 = icmp eq i32 %and, 0
  %spec.select = select i1 %cmp9, i32 2049, i32 1
  %16 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %core, align 4
  %d64txregbase = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 7
  %18 = ptrtoint ptr %d64txregbase to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %d64txregbase, align 4
  %conv14 = trunc i32 %19 to i16
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %17, align 8
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i.i, align 4
  %read32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %25(ptr noundef %17, i16 noundef zeroext %conv14) #13
  %or.i = or i32 %call.i.i, %spec.select
  %26 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %17, align 8
  %ops.i3.i = getelementptr inbounds %struct.bcma_bus, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %ops.i3.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops.i3.i, align 4
  %write32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write32.i.i, align 4
  tail call void %31(ptr noundef %17, i16 noundef zeroext %conv14, i32 noundef %or.i) #13
  %32 = ptrtoint ptr %aligndesc_4k to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %aligndesc_4k, align 4, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool16.not = icmp eq i8 %33, 0
  br i1 %tobool16.not, label %if.end7.cleanup_crit_edge, label %if.then17

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then17:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %txdpa18 = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 16
  %34 = ptrtoint ptr %txdpa18 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %txdpa18, align 4
  tail call fastcc void @_dma_ddtable_init(ptr noundef %pub, i32 noundef 1, i32 noundef %35)
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dma_txsuspend(ptr noundef %pub) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %core = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 2
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %dev = getelementptr inbounds %struct.bcma_device, ptr %1, i32 0, i32 2
  %name = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 1
  tail call void (ptr, i32, ptr, ptr, ...) @__brcms_dbg(ptr noundef %dev, i32 noundef 32, ptr noundef nonnull @__func__.dma_txsuspend, ptr noundef nonnull @.str.6, ptr noundef %name) #13
  %ntxd = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 12
  %2 = ptrtoint ptr %ntxd to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ntxd, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp = icmp eq i16 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %core, align 4
  %d64txregbase = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 7
  %6 = ptrtoint ptr %d64txregbase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %d64txregbase, align 4
  %conv3 = trunc i32 %7 to i16
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 8
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i.i, align 4
  %read32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %13(ptr noundef %5, i16 noundef zeroext %conv3) #13
  %or.i = or i32 %call.i.i, 2
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %5, align 8
  %ops.i3.i = getelementptr inbounds %struct.bcma_bus, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %ops.i3.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i3.i, align 4
  %write32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write32.i.i, align 4
  tail call void %19(ptr noundef %5, i16 noundef zeroext %conv3, i32 noundef %or.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dma_txresume(ptr noundef %pub) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %core = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 2
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %dev = getelementptr inbounds %struct.bcma_device, ptr %1, i32 0, i32 2
  %name = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 1
  tail call void (ptr, i32, ptr, ptr, ...) @__brcms_dbg(ptr noundef %dev, i32 noundef 32, ptr noundef nonnull @__func__.dma_txresume, ptr noundef nonnull @.str.6, ptr noundef %name) #13
  %ntxd = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 12
  %2 = ptrtoint ptr %ntxd to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ntxd, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp = icmp eq i16 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %core, align 4
  %d64txregbase = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 7
  %6 = ptrtoint ptr %d64txregbase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %d64txregbase, align 4
  %conv3 = trunc i32 %7 to i16
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 8
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i.i, align 4
  %read32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %13(ptr noundef %5, i16 noundef zeroext %conv3) #13
  %and.i = and i32 %call.i.i, -3
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %5, align 8
  %ops.i3.i = getelementptr inbounds %struct.bcma_bus, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %ops.i3.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i3.i, align 4
  %write32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write32.i.i, align 4
  tail call void %19(ptr noundef %5, i16 noundef zeroext %conv3, i32 noundef %and.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dma_txsuspended(ptr nocapture noundef readonly %pub) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ntxd = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 12
  %0 = ptrtoint ptr %ntxd to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ntxd, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp = icmp eq i16 %1, 0
  br i1 %cmp, label %entry.lor.end_crit_edge, label %lor.rhs

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %core = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 2
  %2 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core, align 4
  %d64txregbase = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 7
  %4 = ptrtoint ptr %d64txregbase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %d64txregbase, align 4
  %conv2 = trunc i32 %5 to i16
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %read32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %11(ptr noundef %3, i16 noundef zeroext %conv2) #13
  %and = and i32 %call.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp3 = icmp ne i32 %and, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %12 = phi i1 [ true, %entry.lor.end_crit_edge ], [ %cmp3, %lor.rhs ]
  ret i1 %12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dma_txreclaim(ptr noundef %pub, i32 noundef %range) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %core = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 2
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %dev = getelementptr inbounds %struct.bcma_device, ptr %1, i32 0, i32 2
  %name = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %range)
  %cmp = icmp eq i32 %range, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %range)
  %cmp1 = icmp eq i32 %range, 2
  %cond = select i1 %cmp1, ptr @.str.16, ptr @.str.17
  %cond2 = select i1 %cmp, ptr @.str.15, ptr %cond
  tail call void (ptr, i32, ptr, ptr, ...) @__brcms_dbg(ptr noundef %dev, i32 noundef 32, ptr noundef nonnull @__func__.dma_txreclaim, ptr noundef nonnull @.str.14, ptr noundef %name, ptr noundef nonnull %cond2) #13
  %txin = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 13
  %2 = ptrtoint ptr %txin to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %txin, align 4
  %txout = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 14
  %4 = ptrtoint ptr %txout to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %txout, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %5)
  %cmp4 = icmp eq i16 %3, %5
  br i1 %cmp4, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %call17 = tail call ptr @dma_getnexttxp(ptr noundef %pub, i32 noundef %range)
  %tobool.not18 = icmp eq ptr %call17, null
  br i1 %tobool.not18, label %while.cond.preheader.cleanup_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %dmactrlflags = getelementptr inbounds %struct.dma_pub, ptr %pub, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end8.while.body_crit_edge, %while.body.lr.ph
  %call19 = phi ptr [ %call17, %while.body.lr.ph ], [ %call, %if.end8.while.body_crit_edge ]
  %6 = ptrtoint ptr %dmactrlflags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dmactrlflags, align 4
  %and = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.then7, label %while.body.if.end8_crit_edge

while.body.if.end8_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then7:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @brcmu_pkt_buf_free_skb(ptr noundef nonnull %call19) #13
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %while.body.if.end8_crit_edge
  %call = tail call ptr @dma_getnexttxp(ptr noundef %pub, i32 noundef %range)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end8.cleanup_crit_edge, label %if.end8.while.body_crit_edge

if.end8.while.body_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %if.end8.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dma_getnexttxp(ptr noundef %pub, i32 noundef %range) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %core = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 2
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %dev = getelementptr inbounds %struct.bcma_device, ptr %1, i32 0, i32 2
  %name = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %range)
  %cmp = icmp eq i32 %range, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %range)
  %cmp1 = icmp eq i32 %range, 2
  %cond = select i1 %cmp1, ptr @.str.16, ptr @.str.17
  %cond2 = select i1 %cmp, ptr @.str.15, ptr %cond
  tail call void (ptr, i32, ptr, ptr, ...) @__brcms_dbg(ptr noundef %dev, i32 noundef 32, ptr noundef nonnull @__func__.dma_getnexttxp, ptr noundef nonnull @.str.14, ptr noundef %name, ptr noundef nonnull %cond2) #13
  %ntxd = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 12
  %2 = ptrtoint ptr %ntxd to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ntxd, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp3 = icmp eq i16 %3, 0
  br i1 %cmp3, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %txin = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 13
  %4 = ptrtoint ptr %txin to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %txin, align 4
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %txout = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 14
  %6 = ptrtoint ptr %txout to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %txout, align 2
  br label %if.end40

if.else:                                          ; preds = %if.end
  %8 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core, align 4
  %d64txregbase = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 7
  %10 = ptrtoint ptr %d64txregbase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %d64txregbase, align 4
  %12 = trunc i32 %11 to i16
  %conv9 = add i16 %12, 16
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %9, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i, align 4
  %read32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %18(ptr noundef %9, i16 noundef zeroext %conv9) #13
  %xmtptrbase = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 20
  %19 = ptrtoint ptr %xmtptrbase to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %xmtptrbase, align 4
  %sub = sub i32 %call.i, %20
  %21 = trunc i32 %sub to i16
  %22 = lshr i16 %21, 4
  %conv11 = and i16 %22, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %range)
  %cmp12 = icmp eq i32 %range, 3
  br i1 %cmp12, label %if.then14, label %if.else.if.end40_crit_edge

if.else.if.end40_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

if.then14:                                        ; preds = %if.else
  %23 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %core, align 4
  %25 = ptrtoint ptr %d64txregbase to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %d64txregbase, align 4
  %27 = trunc i32 %26 to i16
  %conv18 = add i16 %27, 20
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %24, align 8
  %ops.i135 = getelementptr inbounds %struct.bcma_bus, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %ops.i135 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.i135, align 4
  %read32.i136 = getelementptr inbounds %struct.bcma_host_ops, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %read32.i136 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read32.i136, align 4
  %call.i137 = tail call i32 %33(ptr noundef %24, i16 noundef zeroext %conv18) #13
  %34 = ptrtoint ptr %xmtptrbase to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %xmtptrbase, align 4
  %sub24 = sub i32 %call.i137, %35
  %36 = lshr i32 %sub24, 4
  %conv29 = and i32 %36, 511
  %conv30 = zext i16 %conv11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv29, i32 %conv30)
  %cmp32.not = icmp eq i32 %conv29, %conv30
  br i1 %cmp32.not, label %if.then14.if.end40_crit_edge, label %if.then34

if.then14.if.end40_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

if.then34:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i = add nuw nsw i32 %conv29, 65535
  %37 = ptrtoint ptr %ntxd to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %ntxd, align 2
  %conv.i.i = zext i16 %38 to i32
  %sub.i.i.i = add nuw nsw i32 %conv.i.i, 65535
  %and.i.i.i = and i32 %sub.i.i.i, %sub.i
  %conv37 = trunc i32 %and.i.i.i to i16
  br label %if.end40

if.end40:                                         ; preds = %if.then34, %if.then14.if.end40_crit_edge, %if.else.if.end40_crit_edge, %if.then7
  %end.0 = phi i16 [ %7, %if.then7 ], [ %conv37, %if.then34 ], [ %conv11, %if.then14.if.end40_crit_edge ], [ %conv11, %if.else.if.end40_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp42 = icmp eq i16 %5, 0
  br i1 %cmp42, label %land.lhs.true, label %if.end40.if.end50_crit_edge

if.end40.if.end50_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50

land.lhs.true:                                    ; preds = %if.end40
  %txout45 = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 14
  %39 = ptrtoint ptr %txout45 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %txout45, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %end.0, i16 %40)
  %cmp47 = icmp ugt i16 %end.0, %40
  br i1 %cmp47, label %bogus, label %land.lhs.true.if.end50_crit_edge

land.lhs.true.if.end50_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50

if.end50:                                         ; preds = %land.lhs.true.if.end50_crit_edge, %if.end40.if.end50_crit_edge
  %conv51142 = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %end.0)
  %cmp53.not143.not = icmp eq i16 %5, %end.0
  br i1 %cmp53.not143.not, label %if.end50.for.end_crit_edge, label %for.body.lr.ph

if.end50.for.end_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end50
  %txd64 = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 9
  %dataoffsetlow = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 36
  %txp67 = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 15
  %dmadev = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %conv51145 = phi i32 [ %conv51142, %for.body.lr.ph ], [ %conv51, %for.body.for.body_crit_edge ]
  %i.0144 = phi i16 [ %5, %for.body.lr.ph ], [ %and.i.i.i141, %for.body.for.body_crit_edge ]
  %41 = ptrtoint ptr %txd64 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %txd64, align 4
  %addrlow = getelementptr %struct.dma64desc, ptr %42, i32 %conv51145, i32 2
  %43 = ptrtoint ptr %addrlow to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %addrlow, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  %46 = ptrtoint ptr %dataoffsetlow to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dataoffsetlow, align 4
  %sub55 = sub i32 %45, %47
  %ctrl2 = getelementptr %struct.dma64desc, ptr %42, i32 %conv51145, i32 1
  %48 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ctrl2, align 4
  %50 = and i32 %49, -8454144
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  %52 = ptrtoint ptr %addrlow to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -272716322, ptr %addrlow, align 4
  %53 = ptrtoint ptr %txd64 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %txd64, align 4
  %addrhigh = getelementptr %struct.dma64desc, ptr %54, i32 %conv51145, i32 3
  %55 = ptrtoint ptr %addrhigh to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -272716322, ptr %addrhigh, align 4
  %56 = ptrtoint ptr %txp67 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %txp67, align 4
  %arrayidx69 = getelementptr ptr, ptr %57, i32 %conv51145
  %58 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx69, align 4
  store ptr null, ptr %arrayidx69, align 4
  %60 = ptrtoint ptr %dmadev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dmadev, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %61, i32 noundef %sub55, i32 noundef %51, i32 noundef 1, i32 noundef 0) #13
  %add.i = add i16 %i.0144, 1
  %62 = ptrtoint ptr %ntxd to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %ntxd, align 2
  %sub.i.i.i140 = add i16 %63, -1
  %and.i.i.i141 = and i16 %sub.i.i.i140, %add.i
  %conv51 = zext i16 %and.i.i.i141 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %and.i.i.i141, i16 %end.0)
  %cmp53.not = icmp ne i16 %and.i.i.i141, %end.0
  %tobool.not = icmp eq ptr %59, null
  %or.cond = select i1 %cmp53.not, i1 %tobool.not, i1 false
  br i1 %or.cond, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end50.for.end_crit_edge
  %i.0.lcssa = phi i16 [ %5, %if.end50.for.end_crit_edge ], [ %and.i.i.i141, %for.body.for.end_crit_edge ]
  %txp.0.lcssa = phi ptr [ null, %if.end50.for.end_crit_edge ], [ %59, %for.body.for.end_crit_edge ]
  %conv51.lcssa = phi i32 [ %conv51142, %if.end50.for.end_crit_edge ], [ %conv51, %for.body.for.end_crit_edge ]
  %64 = ptrtoint ptr %txin to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %i.0.lcssa, ptr %txin, align 4
  %65 = ptrtoint ptr %ntxd to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %ntxd, align 2
  %conv.i = zext i16 %66 to i32
  %txout.i = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 14
  %67 = ptrtoint ptr %txout.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %txout.i, align 2
  %conv2.i = zext i16 %68 to i32
  %sub.i.i = sub nsw i32 %conv2.i, %conv51.lcssa
  %sub.i.i.i.i = add nsw i32 %conv.i, -1
  %and.i.i.i.i = and i32 %sub.i.i, %sub.i.i.i.i
  %qlen.i.i = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 4, i32 1, i32 1
  %69 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %qlen.i.i, align 4
  %71 = add i32 %and.i.i.i.i, %70
  %72 = xor i32 %71, -1
  %sub5.i = add i32 %72, %conv.i
  %73 = ptrtoint ptr %pub to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %sub5.i, ptr %pub, align 4
  br label %cleanup

bogus:                                            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %conv46 = zext i16 %40 to i32
  %conv44 = zext i16 %end.0 to i32
  %74 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %core, align 4
  %dev78 = getelementptr inbounds %struct.bcma_device, ptr %75, i32 0, i32 2
  tail call void (ptr, i32, ptr, ptr, ...) @__brcms_dbg(ptr noundef %dev78, i32 noundef 32, ptr noundef nonnull @__func__.dma_getnexttxp, ptr noundef nonnull @.str.19, i32 noundef 0, i32 noundef %conv44, i32 noundef %conv46) #13
  br label %cleanup

cleanup:                                          ; preds = %bogus, %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %bogus ], [ %txp.0.lcssa, %for.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dma_txreset(ptr nocapture noundef readonly %pub) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ntxd = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 12
  %0 = ptrtoint ptr %ntxd to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ntxd, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp = icmp eq i16 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %core = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 2
  %2 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core, align 4
  %d64txregbase = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 7
  %4 = ptrtoint ptr %d64txregbase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %d64txregbase, align 4
  %conv2 = trunc i32 %5 to i16
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %write32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write32.i, align 4
  tail call void %11(ptr noundef %3, i16 noundef zeroext %conv2, i32 noundef 2) #13
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %countdown.0 = phi i32 [ 10009, %if.end ], [ %sub, %while.body ]
  %12 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %core, align 4
  %14 = ptrtoint ptr %d64txregbase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %d64txregbase, align 4
  %16 = trunc i32 %15 to i16
  %conv6 = add i16 %16, 16
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %13, align 8
  %ops.i54 = getelementptr inbounds %struct.bcma_bus, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %ops.i54 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i54, align 4
  %read32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %22(ptr noundef %13, i16 noundef zeroext %conv6) #13
  %and = and i32 %call.i, -268435456
  %23 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %land.rhs [
    i32 0, label %while.cond.while.end_crit_edge
    i32 536870912, label %while.cond.while.end_crit_edge72
    i32 805306368, label %while.cond.while.end_crit_edge73
  ]

while.cond.while.end_crit_edge73:                 ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.cond.while.end_crit_edge72:                 ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

land.rhs:                                         ; preds = %while.cond
  %cmp14 = icmp ugt i32 %countdown.0, 9
  br i1 %cmp14, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 2147480) #13
  %sub = add nsw i32 %countdown.0, -10
  br label %while.cond

while.end:                                        ; preds = %land.rhs.while.end_crit_edge, %while.cond.while.end_crit_edge, %while.cond.while.end_crit_edge72, %while.cond.while.end_crit_edge73
  %25 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %core, align 4
  %27 = ptrtoint ptr %d64txregbase to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %d64txregbase, align 4
  %conv19 = trunc i32 %28 to i16
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %26, align 8
  %ops.i55 = getelementptr inbounds %struct.bcma_bus, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %ops.i55 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops.i55, align 4
  %write32.i56 = getelementptr inbounds %struct.bcma_host_ops, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %write32.i56 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write32.i56, align 4
  tail call void %34(ptr noundef %26, i16 noundef zeroext %conv19, i32 noundef 0) #13
  %35 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %core, align 4
  %37 = ptrtoint ptr %d64txregbase to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %d64txregbase, align 4
  %39 = trunc i32 %38 to i16
  %conv2560 = add i16 %39, 16
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %36, align 8
  %ops.i5761 = getelementptr inbounds %struct.bcma_bus, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %ops.i5761 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops.i5761, align 4
  %read32.i5862 = getelementptr inbounds %struct.bcma_host_ops, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %read32.i5862 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %read32.i5862, align 4
  %call.i5963 = tail call i32 %45(ptr noundef %36, i16 noundef zeroext %conv2560) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %call.i5963)
  %cmp28.not65.not = icmp ult i32 %call.i5963, 268435456
  br i1 %cmp28.not65.not, label %while.end.while.end36_crit_edge, label %while.end.while.body34_crit_edge

while.end.while.body34_crit_edge:                 ; preds = %while.end
  br label %while.body34

while.end.while.end36_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end36

while.body34:                                     ; preds = %while.body34.while.body34_crit_edge, %while.end.while.body34_crit_edge
  %countdown20.066 = phi i32 [ %sub35, %while.body34.while.body34_crit_edge ], [ 10009, %while.end.while.body34_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 2147480) #13
  %sub35 = add nsw i32 %countdown20.066, -10
  %47 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %core, align 4
  %49 = ptrtoint ptr %d64txregbase to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %d64txregbase, align 4
  %51 = trunc i32 %50 to i16
  %conv25 = add i16 %51, 16
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %48, align 8
  %ops.i57 = getelementptr inbounds %struct.bcma_bus, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %ops.i57 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ops.i57, align 4
  %read32.i58 = getelementptr inbounds %struct.bcma_host_ops, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %read32.i58 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %read32.i58, align 4
  %call.i59 = tail call i32 %57(ptr noundef %48, i16 noundef zeroext %conv25) #13
  %and27 = and i32 %call.i59, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %cmp28.not = icmp ne i32 %and27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %sub35)
  %cmp31 = icmp ugt i32 %sub35, 9
  %or.cond = select i1 %cmp28.not, i1 %cmp31, i1 false
  br i1 %or.cond, label %while.body34.while.body34_crit_edge, label %while.end36.loopexit

while.body34.while.body34_crit_edge:              ; preds = %while.body34
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body34

while.end36.loopexit:                             ; preds = %while.body34
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %phi.cmp = icmp eq i32 %and27, 0
  br label %while.end36

while.end36:                                      ; preds = %while.end36.loopexit, %while.end.while.end36_crit_edge
  %and27.lcssa = phi i1 [ true, %while.end.while.end36_crit_edge ], [ %phi.cmp, %while.end36.loopexit ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 64424400) #13
  br label %cleanup

cleanup:                                          ; preds = %while.end36, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %and27.lcssa, %while.end36 ], [ true, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dma_rxreset(ptr nocapture noundef readonly %pub) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %nrxd = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 21
  %0 = ptrtoint ptr %nrxd to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %nrxd, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp = icmp eq i16 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %core = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 2
  %2 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core, align 4
  %d64rxregbase = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 8
  %4 = ptrtoint ptr %d64rxregbase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %d64rxregbase, align 4
  %conv2 = trunc i32 %5 to i16
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %write32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write32.i, align 4
  tail call void %11(ptr noundef %3, i16 noundef zeroext %conv2, i32 noundef 0) #13
  %12 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %core, align 4
  %14 = ptrtoint ptr %d64rxregbase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %d64rxregbase, align 4
  %16 = trunc i32 %15 to i16
  %conv620 = add i16 %16, 16
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %13, align 8
  %ops.i1921 = getelementptr inbounds %struct.bcma_bus, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %ops.i1921 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i1921, align 4
  %read32.i22 = getelementptr inbounds %struct.bcma_host_ops, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %read32.i22 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read32.i22, align 4
  %call.i23 = tail call i32 %22(ptr noundef %13, i16 noundef zeroext %conv620) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %call.i23)
  %cmp7.not25.not = icmp ult i32 %call.i23, 268435456
  br i1 %cmp7.not25.not, label %if.end.cleanup_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end.while.body_crit_edge
  %countdown.026 = phi i32 [ %sub, %while.body.while.body_crit_edge ], [ 10009, %if.end.while.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 2147480) #13
  %sub = add nsw i32 %countdown.026, -10
  %24 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %core, align 4
  %26 = ptrtoint ptr %d64rxregbase to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %d64rxregbase, align 4
  %28 = trunc i32 %27 to i16
  %conv6 = add i16 %28, 16
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %25, align 8
  %ops.i19 = getelementptr inbounds %struct.bcma_bus, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %ops.i19 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops.i19, align 4
  %read32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %34(ptr noundef %25, i16 noundef zeroext %conv6) #13
  %and = and i32 %call.i, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp7.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %sub)
  %cmp9 = icmp ugt i32 %sub, 9
  %or.cond = select i1 %cmp7.not, i1 %cmp9, i1 false
  br i1 %or.cond, label %while.body.while.body_crit_edge, label %while.end.loopexit

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.end.loopexit:                               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %phi.cmp = icmp eq i32 %and, 0
  br label %cleanup

cleanup:                                          ; preds = %while.end.loopexit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %entry.cleanup_crit_edge ], [ true, %if.end.cleanup_crit_edge ], [ %phi.cmp, %while.end.loopexit ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dma_txfast(ptr nocapture noundef readnone %wlc, ptr noundef %pub, ptr noundef %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %p, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %pub to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pub, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.end.outoftxd_crit_edge, label %lor.lhs.false

if.end.outoftxd_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %outoftxd

lor.lhs.false:                                    ; preds = %if.end
  %txout = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 14
  %4 = ptrtoint ptr %txout to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %txout, align 2
  %conv = zext i16 %5 to i32
  %add.i = add nuw nsw i32 %conv, 1
  %ntxd.i.i = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 12
  %6 = ptrtoint ptr %ntxd.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ntxd.i.i, align 2
  %conv.i.i = zext i16 %7 to i32
  %sub.i.i.i = add nuw nsw i32 %conv.i.i, 131071
  %and.i.i.i = and i32 %sub.i.i.i, %add.i
  %txin = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 13
  %8 = ptrtoint ptr %txin to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %txin, align 4
  %conv2 = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i.i, i32 %conv2)
  %cmp3 = icmp eq i32 %and.i.i.i, %conv2
  br i1 %cmp3, label %lor.lhs.false.outoftxd_crit_edge, label %if.end6

lor.lhs.false.outoftxd_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %outoftxd

if.end6:                                          ; preds = %lor.lhs.false
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %p, i32 0, i32 3
  %10 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cb.i, align 8
  %and = and i32 %11, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end6
  %ampdu_session.i = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 4
  %call.i = tail call i32 @brcms_c_ampdu_add_frame(ptr noundef %ampdu_session.i, ptr noundef %p) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, -28
  br i1 %cmp.i, label %if.then.i, label %if.then9.if.end.i_crit_edge

if.then9.if.end.i_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @ampdu_finalize(ptr noundef %pub) #13
  %call1.i = tail call i32 @brcms_c_ampdu_add_frame(ptr noundef %ampdu_session.i, ptr noundef %p) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then9.if.end.i_crit_edge
  %ret.0.i = phi i32 [ %call1.i, %if.then.i ], [ %call.i, %if.then9.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool.not.i = icmp eq i32 %ret.0.i, 0
  br i1 %tobool.not.i, label %if.end.i.prep_ampdu_frame.exit_crit_edge, label %do.end.i, !prof !98

if.end.i.prep_ampdu_frame.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %prep_ampdu_frame.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 1359, i32 noundef 9, ptr noundef null) #13
  br label %prep_ampdu_frame.exit

prep_ampdu_frame.exit:                            ; preds = %do.end.i, %if.end.i.prep_ampdu_frame.exit_crit_edge
  %12 = ptrtoint ptr %ntxd.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %ntxd.i.i, align 2
  %conv.i = zext i16 %13 to i32
  %14 = ptrtoint ptr %txin to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %txin, align 4
  %conv1.i = zext i16 %15 to i32
  %16 = ptrtoint ptr %txout to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %txout, align 2
  %conv2.i = zext i16 %17 to i32
  %sub.i.i = sub nsw i32 %conv2.i, %conv1.i
  %sub.i.i.i.i = add nsw i32 %conv.i, -1
  %and.i.i.i.i = and i32 %sub.i.i, %sub.i.i.i.i
  %qlen.i.i = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 4, i32 1, i32 1
  %18 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %qlen.i.i, align 4
  %20 = add i32 %and.i.i.i.i, %19
  %21 = xor i32 %20, -1
  %sub5.i = add i32 %21, %conv.i
  %22 = ptrtoint ptr %pub to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub5.i, ptr %pub, align 4
  %max_ampdu_frames = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 4, i32 3
  %23 = ptrtoint ptr %max_ampdu_frames to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %max_ampdu_frames, align 4
  %conv14 = zext i16 %24 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv14)
  %cmp15 = icmp eq i32 %19, %conv14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub5.i)
  %cmp20 = icmp eq i32 %sub5.i, 0
  %or.cond = select i1 %cmp15, i1 true, i1 %cmp20
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp.i76 = icmp eq i16 %13, 0
  %or.cond80 = select i1 %or.cond, i1 true, i1 %cmp.i76
  br i1 %or.cond80, label %prep_ampdu_frame.exit.if.then25_crit_edge, label %dma64_txidle.exit

prep_ampdu_frame.exit.if.then25_crit_edge:        ; preds = %prep_ampdu_frame.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then25

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @dma_txenq(ptr noundef %pub, ptr noundef %p)
  %25 = ptrtoint ptr %ntxd.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %ntxd.i.i, align 2
  %conv.i65 = zext i16 %26 to i32
  %27 = ptrtoint ptr %txin to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %txin, align 4
  %conv1.i67 = zext i16 %28 to i32
  %29 = ptrtoint ptr %txout to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %txout, align 2
  %conv2.i69 = zext i16 %30 to i32
  %sub.i.i70 = sub nsw i32 %conv2.i69, %conv1.i67
  %sub.i.i.i.i71 = add nsw i32 %conv.i65, -1
  %and.i.i.i.i72 = and i32 %sub.i.i70, %sub.i.i.i.i71
  %qlen.i.i73 = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 4, i32 1, i32 1
  %31 = ptrtoint ptr %qlen.i.i73 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %qlen.i.i73, align 4
  %33 = add i32 %and.i.i.i.i72, %32
  %34 = xor i32 %33, -1
  %sub5.i74 = add i32 %34, %conv.i65
  %35 = ptrtoint ptr %pub to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %sub5.i74, ptr %pub, align 4
  %core = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 2
  %36 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %core, align 4
  %d64txregbase = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 7
  %38 = ptrtoint ptr %d64txregbase to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %d64txregbase, align 4
  %40 = trunc i32 %39 to i16
  %conv28 = add i16 %40, 4
  %xmtptrbase = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 20
  %41 = ptrtoint ptr %xmtptrbase to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %xmtptrbase, align 4
  %mul = shl nuw nsw i32 %conv2.i69, 4
  %add31 = add i32 %42, %mul
  %43 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %37, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops.i, align 4
  %write32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write32.i, align 4
  tail call void %48(ptr noundef %37, i16 noundef zeroext %conv28, i32 noundef %add31) #13
  br label %cleanup

dma64_txidle.exit:                                ; preds = %prep_ampdu_frame.exit
  %core.i = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 2
  %49 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %core.i, align 4
  %d64txregbase.i = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 7
  %51 = ptrtoint ptr %d64txregbase.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %d64txregbase.i, align 4
  %53 = trunc i32 %52 to i16
  %conv2.i77 = add i16 %53, 16
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %50, align 8
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ops.i.i, align 4
  %read32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %59(ptr noundef %50, i16 noundef zeroext %conv2.i77) #13
  %60 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %core.i, align 4
  %62 = ptrtoint ptr %d64txregbase.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %d64txregbase.i, align 4
  %64 = trunc i32 %63 to i16
  %conv6.i = add i16 %64, 4
  %65 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %61, align 8
  %ops.i15.i = getelementptr inbounds %struct.bcma_bus, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %ops.i15.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ops.i15.i, align 4
  %read32.i16.i = getelementptr inbounds %struct.bcma_host_ops, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %read32.i16.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %read32.i16.i, align 4
  %call.i17.i = tail call i32 %70(ptr noundef %61, i16 noundef zeroext %conv6.i) #13
  %71 = xor i32 %call.i17.i, %call.i.i
  %72 = and i32 %71, 8191
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp9.i = icmp eq i32 %72, 0
  br i1 %cmp9.i, label %dma64_txidle.exit.if.then25_crit_edge, label %dma64_txidle.exit.cleanup_crit_edge

dma64_txidle.exit.cleanup_crit_edge:              ; preds = %dma64_txidle.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

dma64_txidle.exit.if.then25_crit_edge:            ; preds = %dma64_txidle.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then25

if.then25:                                        ; preds = %dma64_txidle.exit.if.then25_crit_edge, %prep_ampdu_frame.exit.if.then25_crit_edge
  tail call fastcc void @ampdu_finalize(ptr noundef %pub)
  br label %cleanup

outoftxd:                                         ; preds = %lor.lhs.false.outoftxd_crit_edge, %if.end.outoftxd_crit_edge
  %core33 = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 2
  %73 = ptrtoint ptr %core33 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %core33, align 4
  %dev = getelementptr inbounds %struct.bcma_device, ptr %74, i32 0, i32 2
  %name = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 1
  tail call void (ptr, i32, ptr, ptr, ...) @__brcms_dbg(ptr noundef %dev, i32 noundef 32, ptr noundef nonnull @__func__.dma_txfast, ptr noundef nonnull @.str.18, ptr noundef %name) #13
  tail call void @brcmu_pkt_buf_free_skb(ptr noundef %p) #13
  %75 = ptrtoint ptr %pub to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %pub, align 4
  %txnobuf = getelementptr inbounds %struct.dma_pub, ptr %pub, i32 0, i32 4
  %76 = ptrtoint ptr %txnobuf to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %txnobuf, align 4
  %inc = add i32 %77, 1
  store i32 %inc, ptr %txnobuf, align 4
  br label %cleanup

cleanup:                                          ; preds = %outoftxd, %if.then25, %dma64_txidle.exit.cleanup_crit_edge, %if.else, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -28, %outoftxd ], [ 0, %entry.cleanup_crit_edge ], [ 0, %dma64_txidle.exit.cleanup_crit_edge ], [ 0, %if.then25 ], [ 0, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dma_txenq(ptr nocapture noundef %di, ptr noundef %p) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %txout1 = getelementptr inbounds %struct.dma_info, ptr %di, i32 0, i32 14
  %0 = ptrtoint ptr %txout1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %txout1, align 2
  %conv = zext i16 %1 to i32
  %add.i = add nuw nsw i32 %conv, 1
  %ntxd.i.i = getelementptr inbounds %struct.dma_info, ptr %di, i32 0, i32 12
  %2 = ptrtoint ptr %ntxd.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ntxd.i.i, align 2
  %conv.i.i = zext i16 %3 to i32
  %sub.i.i.i = add nuw nsw i32 %conv.i.i, 131071
  %and.i.i.i = and i32 %sub.i.i.i, %add.i
  %txin = getelementptr inbounds %struct.dma_info, ptr %di, i32 0, i32 13
  %4 = ptrtoint ptr %txin to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %txin, align 4
  %conv2 = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i.i, i32 %conv2)
  %cmp = icmp eq i32 %and.i.i.i, %conv2
  br i1 %cmp, label %do.end, label %if.end24, !prof !99

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 1281, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end24:                                         ; preds = %entry
  %data25 = getelementptr inbounds %struct.sk_buff, ptr %p, i32 0, i32 19
  %6 = ptrtoint ptr %data25 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data25, align 4
  %len26 = getelementptr inbounds %struct.sk_buff, ptr %p, i32 0, i32 6
  %8 = ptrtoint ptr %len26 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len26, align 4
  %dmadev = getelementptr inbounds %struct.dma_info, ptr %di, i32 0, i32 3
  %10 = ptrtoint ptr %dmadev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dmadev, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %7) #13
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end24
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !98

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %11) #13
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %15, %if.end.i.i ], [ %13, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.27, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #13
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %16 = ptrtoint ptr %dmadev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dmadev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %17, i32 noundef -1) #13
  br label %if.then31

dma_map_single_attrs.exit:                        ; preds = %if.end24
  tail call void @debug_dma_map_single(ptr noundef %11, ptr noundef %7, i32 noundef %9) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %18 = load ptr, ptr @mem_map, align 4
  %19 = ptrtoint ptr %7 to i32
  %sub.i = add i32 %19, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %18, i32 %shr.i
  %and.i = and i32 %19, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %11, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %9, i32 noundef 1, i32 noundef 0) #13
  %20 = ptrtoint ptr %dmadev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dmadev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %21, i32 noundef %call41.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.if.then31_crit_edge, label %if.end32

dma_map_single_attrs.exit.if.then31_crit_edge:    ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then31

if.then31:                                        ; preds = %dma_map_single_attrs.exit.if.then31_crit_edge, %dma_map_single_attrs.exit.thread
  tail call void @brcmu_pkt_buf_free_skb(ptr noundef %p) #13
  br label %cleanup

if.end32:                                         ; preds = %dma_map_single_attrs.exit
  %22 = ptrtoint ptr %ntxd.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %ntxd.i.i, align 2
  %conv34 = zext i16 %23 to i32
  %sub = add nsw i32 %conv34, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv)
  %cmp35 = icmp eq i32 %sub, %conv
  %spec.store.select = select i1 %cmp35, i32 240, i32 224
  %txd64 = getelementptr inbounds %struct.dma_info, ptr %di, i32 0, i32 9
  %24 = ptrtoint ptr %txd64 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %txd64, align 4
  %and.i72 = and i32 %9, 32767
  %dataoffsetlow.i = getelementptr inbounds %struct.dma_info, ptr %di, i32 0, i32 36
  %26 = ptrtoint ptr %dataoffsetlow.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dataoffsetlow.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i73 = icmp eq i32 %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call41.i)
  %tobool.not.i = icmp ult i32 %call41.i, 1073741824
  %or.cond.i = or i1 %tobool.not.i, %cmp.i73
  %and8.i = and i32 %call41.i, 1073741823
  %28 = lshr i32 %call41.i, 14
  %shl.i = and i32 %28, 196608
  %and8.sink.i = select i1 %or.cond.i, i32 %call41.i, i32 %and8.i
  %or.i = select i1 %or.cond.i, i32 0, i32 %shl.i
  %or.sink.i = or i32 %or.i, %and.i72
  %add11.i = add i32 %and8.sink.i, %27
  %29 = tail call i32 @llvm.bswap.i32(i32 %add11.i) #13
  %addrlow13.i = getelementptr %struct.dma64desc, ptr %25, i32 %conv, i32 2
  %30 = ptrtoint ptr %addrlow13.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %addrlow13.i, align 4
  %dataoffsethigh14.i = getelementptr inbounds %struct.dma_info, ptr %di, i32 0, i32 37
  %31 = ptrtoint ptr %dataoffsethigh14.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dataoffsethigh14.i, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #13
  %addrhigh16.i = getelementptr %struct.dma64desc, ptr %25, i32 %conv, i32 3
  %34 = ptrtoint ptr %addrhigh16.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %addrhigh16.i, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %or.sink.i) #13
  %36 = getelementptr %struct.dma64desc, ptr %25, i32 %conv
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %spec.store.select, ptr %36, align 4
  %38 = getelementptr %struct.dma64desc, ptr %25, i32 %conv, i32 1
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %35, ptr %38, align 4
  %dmactrlflags.i = getelementptr inbounds %struct.dma_pub, ptr %di, i32 0, i32 1
  %40 = ptrtoint ptr %dmactrlflags.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dmactrlflags.i, align 4
  %and21.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %if.end32.dma64_dd_upd.exit_crit_edge, label %if.then23.i

if.end32.dma64_dd_upd.exit_crit_edge:             ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma64_dd_upd.exit

if.then23.i:                                      ; preds = %if.end32
  %xor.i.i = xor i32 %33, %spec.store.select
  %xor1.i.i = xor i32 %xor.i.i, %29
  %xor2.i.i = xor i32 %xor1.i.i, %35
  %shr.i.i.i = lshr i32 %xor2.i.i, 16
  %xor.i.i.i = xor i32 %shr.i.i.i, %xor2.i.i
  %shr1.i.i.i = lshr i32 %xor.i.i.i, 8
  %xor2.i.i.i = xor i32 %shr1.i.i.i, %xor.i.i.i
  %shr3.i.i.i = lshr i32 %xor2.i.i.i, 4
  %xor4.i.i.i = xor i32 %shr3.i.i.i, %xor2.i.i.i
  %shr5.i.i.i = lshr i32 %xor4.i.i.i, 2
  %xor6.i.i.i = xor i32 %shr5.i.i.i, %xor4.i.i.i
  %shr7.i.i.i = lshr i32 %xor6.i.i.i, 1
  %xor8.i.i.i = xor i32 %shr7.i.i.i, %xor6.i.i.i
  %and.i.i.i74 = and i32 %xor8.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i74)
  %tobool.i.not.i = icmp eq i32 %and.i.i.i74, 0
  br i1 %tobool.i.not.i, label %if.then23.i.dma64_dd_upd.exit_crit_edge, label %if.then25.i

if.then23.i.dma64_dd_upd.exit_crit_edge:          ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma64_dd_upd.exit

if.then25.i:                                      ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #15
  %or26.i = or i32 %or.sink.i, 262144
  %42 = tail call i32 @llvm.bswap.i32(i32 %or26.i) #13
  %43 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %38, align 4
  br label %dma64_dd_upd.exit

dma64_dd_upd.exit:                                ; preds = %if.then25.i, %if.then23.i.dma64_dd_upd.exit_crit_edge, %if.end32.dma64_dd_upd.exit_crit_edge
  %44 = ptrtoint ptr %ntxd.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %ntxd.i.i, align 2
  %conv.i.i77 = zext i16 %45 to i32
  %sub.i.i.i78 = add nsw i32 %conv.i.i77, -1
  %and.i.i.i79 = and i32 %sub.i.i.i78, %add.i
  %conv42 = trunc i32 %and.i.i.i79 to i16
  %txp = getelementptr inbounds %struct.dma_info, ptr %di, i32 0, i32 15
  %46 = ptrtoint ptr %txp to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %txp, align 4
  %conv43 = and i32 %and.i.i.i79, 65535
  %sub.i80 = add nsw i32 %conv43, -1
  %and.i.i.i84 = and i32 %sub.i80, %sub.i.i.i78
  %arrayidx = getelementptr ptr, ptr %47, i32 %and.i.i.i84
  %48 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %p, ptr %arrayidx, align 4
  %49 = ptrtoint ptr %txout1 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv42, ptr %txout1, align 2
  br label %cleanup

cleanup:                                          ; preds = %dma64_dd_upd.exit, %if.then31, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ampdu_finalize(ptr noundef %di) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ampdu_session = getelementptr inbounds %struct.dma_info, ptr %di, i32 0, i32 4
  %0 = ptrtoint ptr %ampdu_session to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ampdu_session, align 4
  %hw = getelementptr inbounds %struct.brcms_c_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %d11core = getelementptr inbounds %struct.brcms_hardware, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d11core, align 4
  %dev = getelementptr inbounds %struct.bcma_device, ptr %5, i32 0, i32 2
  %max_ampdu_len = getelementptr inbounds %struct.dma_info, ptr %di, i32 0, i32 4, i32 2
  %6 = ptrtoint ptr %max_ampdu_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_ampdu_len, align 4
  %max_ampdu_frames = getelementptr inbounds %struct.dma_info, ptr %di, i32 0, i32 4, i32 3
  %8 = ptrtoint ptr %max_ampdu_frames to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %max_ampdu_frames, align 4
  %ampdu_len = getelementptr inbounds %struct.dma_info, ptr %di, i32 0, i32 4, i32 4
  %10 = ptrtoint ptr %ampdu_len to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %ampdu_len, align 2
  %skb_list = getelementptr inbounds %struct.dma_info, ptr %di, i32 0, i32 4, i32 1
  %qlen.i = getelementptr inbounds %struct.dma_info, ptr %di, i32 0, i32 4, i32 1, i32 1
  %12 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %qlen.i, align 4
  %conv = trunc i32 %13 to i16
  %dma_len = getelementptr inbounds %struct.dma_info, ptr %di, i32 0, i32 4, i32 5
  %14 = ptrtoint ptr %dma_len to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %dma_len, align 4
  tail call fastcc void @trace_brcms_ampdu_session(ptr noundef %dev, i32 noundef %7, i16 noundef zeroext %9, i16 noundef zeroext %11, i16 noundef zeroext %conv, i16 noundef zeroext %15)
  %16 = ptrtoint ptr %skb_list to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %skb_list, align 4
  %cmp.i.not = icmp eq ptr %17, %skb_list
  br i1 %cmp.i.not, label %do.end, label %if.end24, !prof !99

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 1329, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end24:                                         ; preds = %entry
  tail call void @brcms_c_ampdu_finalize(ptr noundef %ampdu_session) #13
  %18 = ptrtoint ptr %skb_list to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %skb_list, align 4
  %cmp.i54.not56 = icmp eq ptr %19, %skb_list
  br i1 %cmp.i54.not56, label %if.end24.while.end_crit_edge, label %if.end24.while.body_crit_edge

if.end24.while.body_crit_edge:                    ; preds = %if.end24
  br label %while.body

if.end24.while.end_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end24.while.body_crit_edge
  %call31 = tail call ptr @skb_dequeue(ptr noundef %skb_list) #13
  tail call fastcc void @dma_txenq(ptr noundef %di, ptr noundef %call31)
  %20 = ptrtoint ptr %skb_list to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %skb_list, align 4
  %cmp.i54.not = icmp eq ptr %21, %skb_list
  br i1 %cmp.i54.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end24.while.end_crit_edge
  %core = getelementptr inbounds %struct.dma_info, ptr %di, i32 0, i32 2
  %22 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %core, align 4
  %d64txregbase = getelementptr inbounds %struct.dma_info, ptr %di, i32 0, i32 7
  %24 = ptrtoint ptr %d64txregbase to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %d64txregbase, align 4
  %26 = trunc i32 %25 to i16
  %conv32 = add i16 %26, 4
  %xmtptrbase = getelementptr inbounds %struct.dma_info, ptr %di, i32 0, i32 20
  %27 = ptrtoint ptr %xmtptrbase to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %xmtptrbase, align 4
  %txout = getelementptr inbounds %struct.dma_info, ptr %di, i32 0, i32 14
  %29 = ptrtoint ptr %txout to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %txout, align 2
  %conv33 = zext i16 %30 to i32
  %mul = shl nuw nsw i32 %conv33, 4
  %add34 = add i32 %mul, %28
  %31 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %23, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops.i, align 4
  %write32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write32.i, align 4
  tail call void %36(ptr noundef %23, i16 noundef zeroext %conv32, i32 noundef %add34) #13
  %37 = ptrtoint ptr %ampdu_session to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ampdu_session, align 4
  tail call void @brcms_c_ampdu_reset_session(ptr noundef %ampdu_session, ptr noundef %38) #13
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dma_txflush(ptr noundef %pub) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %skb_list = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %skb_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb_list, align 4
  %cmp.i.not = icmp eq ptr %1, %skb_list
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @ampdu_finalize(ptr noundef %pub)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dma_txpending(ptr nocapture noundef readonly %pub) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %txin = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 13
  %0 = ptrtoint ptr %txin to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %txin, align 4
  %conv = zext i16 %1 to i32
  %txout = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 14
  %2 = ptrtoint ptr %txout to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %txout, align 2
  %conv1 = zext i16 %3 to i32
  %sub.i = sub nsw i32 %conv1, %conv
  %ntxd.i.i = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 12
  %4 = ptrtoint ptr %ntxd.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ntxd.i.i, align 2
  %conv.i.i = zext i16 %5 to i32
  %sub.i.i.i = add nsw i32 %conv.i.i, -1
  %and.i.i.i = and i32 %sub.i.i.i, %sub.i
  ret i32 %and.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dma_kick_tx(ptr noundef %pub) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %skb_list = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %skb_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb_list, align 4
  %cmp.i.not = icmp eq ptr %1, %skb_list
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %ntxd.i = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 12
  %2 = ptrtoint ptr %ntxd.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ntxd.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp.i4 = icmp eq i16 %3, 0
  br i1 %cmp.i4, label %land.lhs.true.if.then_crit_edge, label %dma64_txidle.exit

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

dma64_txidle.exit:                                ; preds = %land.lhs.true
  %core.i = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 2
  %4 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %core.i, align 4
  %d64txregbase.i = getelementptr inbounds %struct.dma_info, ptr %pub, i32 0, i32 7
  %6 = ptrtoint ptr %d64txregbase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %d64txregbase.i, align 4
  %8 = trunc i32 %7 to i16
  %conv2.i = add i16 %8, 16
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %5, align 8
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i.i, align 4
  %read32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %14(ptr noundef %5, i16 noundef zeroext %conv2.i) #13
  %15 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %core.i, align 4
  %17 = ptrtoint ptr %d64txregbase.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %d64txregbase.i, align 4
  %19 = trunc i32 %18 to i16
  %conv6.i = add i16 %19, 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %16, align 8
  %ops.i15.i = getelementptr inbounds %struct.bcma_bus, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %ops.i15.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i15.i, align 4
  %read32.i16.i = getelementptr inbounds %struct.bcma_host_ops, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %read32.i16.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read32.i16.i, align 4
  %call.i17.i = tail call i32 %25(ptr noundef %16, i16 noundef zeroext %conv6.i) #13
  %26 = xor i32 %call.i17.i, %call.i.i
  %27 = and i32 %26, 8191
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp9.i = icmp eq i32 %27, 0
  br i1 %cmp9.i, label %dma64_txidle.exit.if.then_crit_edge, label %dma64_txidle.exit.if.end_crit_edge

dma64_txidle.exit.if.end_crit_edge:               ; preds = %dma64_txidle.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

dma64_txidle.exit.if.then_crit_edge:              ; preds = %dma64_txidle.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %dma64_txidle.exit.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  tail call fastcc void @ampdu_finalize(ptr noundef %pub)
  br label %if.end

if.end:                                           ; preds = %if.then, %dma64_txidle.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dma_walk_packets(ptr nocapture noundef readonly %dmah, ptr nocapture noundef readonly %callback_fnc, ptr noundef %arg_a) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %txin = getelementptr inbounds %struct.dma_info, ptr %dmah, i32 0, i32 13
  %0 = ptrtoint ptr %txin to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %txin, align 4
  %txout = getelementptr inbounds %struct.dma_info, ptr %dmah, i32 0, i32 14
  %2 = ptrtoint ptr %txout to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %txout, align 2
  %conv1 = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %3)
  %cmp.not11 = icmp eq i16 %1, %3
  br i1 %cmp.not11, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %conv = zext i16 %1 to i32
  %txp = getelementptr inbounds %struct.dma_info, ptr %dmah, i32 0, i32 15
  %ntxd.i.i = getelementptr inbounds %struct.dma_info, ptr %dmah, i32 0, i32 12
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %i.012 = phi i32 [ %conv, %while.body.lr.ph ], [ %and.i.i.i, %if.end.while.body_crit_edge ]
  %4 = ptrtoint ptr %txp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %txp, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 %i.012
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %cmp3.not = icmp eq ptr %7, null
  br i1 %cmp3.not, label %while.body.if.end_crit_edge, label %if.then

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %cb = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3
  tail call void %callback_fnc(ptr noundef %cb, ptr noundef %arg_a) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %add.i = add i32 %i.012, 1
  %8 = ptrtoint ptr %ntxd.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %ntxd.i.i, align 2
  %conv.i.i = zext i16 %9 to i32
  %sub.i.i.i = add nsw i32 %conv.i.i, -1
  %and.i.i.i = and i32 %sub.i.i.i, %add.i
  %cmp.not = icmp eq i32 %and.i.i.i, %conv1
  br i1 %cmp.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @dma_ringalloc(ptr nocapture noundef readonly %di, i32 noundef %size, ptr nocapture noundef %alignbits, ptr nocapture noundef writeonly %alloced, ptr noundef %descpa) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %alignbits to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %alignbits, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not.i = icmp eq i16 %1, 0
  br i1 %tobool.not.i, label %entry.dma_alloc_consistent.exit_crit_edge, label %if.then.i

entry.dma_alloc_consistent.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma_alloc_consistent.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i = zext i16 %1 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %sub.i = add nuw i32 %shl.i, 8191
  %and.i = and i32 %sub.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  %conv2.i = and i32 %shl.i, 65535
  %add.i = select i1 %cmp.i, i32 0, i32 %conv2.i
  %size.addr.0.i = add i32 %add.i, %size
  %2 = ptrtoint ptr %alloced to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %size.addr.0.i, ptr %alloced, align 4
  br label %dma_alloc_consistent.exit

dma_alloc_consistent.exit:                        ; preds = %if.then.i, %entry.dma_alloc_consistent.exit_crit_edge
  %size.addr.1.i = phi i32 [ %size.addr.0.i, %if.then.i ], [ %size, %entry.dma_alloc_consistent.exit_crit_edge ]
  %dmadev.i = getelementptr inbounds %struct.dma_info, ptr %di, i32 0, i32 3
  %3 = ptrtoint ptr %dmadev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dmadev.i, align 4
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %4, i32 noundef %size.addr.1.i, ptr noundef %descpa, i32 noundef 2592, i32 noundef 0) #13
  %cmp = icmp eq ptr %call.i.i, null
  br i1 %cmp, label %dma_alloc_consistent.exit.cleanup_crit_edge, label %if.end

dma_alloc_consistent.exit.cleanup_crit_edge:      ; preds = %dma_alloc_consistent.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %dma_alloc_consistent.exit
  %conv = zext i16 %1 to i32
  %5 = ptrtoint ptr %call.i.i to i32
  %notmask = shl nsw i32 -1, %conv
  %sub = xor i32 %notmask, -1
  %add = add i32 %5, %sub
  %mul = and i32 %add, %notmask
  %add2 = add i32 %size, 16383
  %sub3 = add i32 %add2, %mul
  %6 = xor i32 %sub3, %mul
  %7 = and i32 %6, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp5.not = icmp eq i32 %7, 0
  br i1 %cmp5.not, label %if.end.cleanup_crit_edge, label %if.then7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %size)
  %tobool.not2.i = icmp ult i32 %size, 2
  br i1 %tobool.not2.i, label %if.then7.dma_align_sizetobits.exit_crit_edge, label %if.then7.while.body.i_crit_edge

if.then7.while.body.i_crit_edge:                  ; preds = %if.then7
  br label %while.body.i

if.then7.dma_align_sizetobits.exit_crit_edge:     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma_align_sizetobits.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then7.while.body.i_crit_edge
  %bitpos.04.i = phi i8 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 0, %if.then7.while.body.i_crit_edge ]
  %size.addr.03.i = phi i32 [ %shr.i, %while.body.i.while.body.i_crit_edge ], [ %size, %if.then7.while.body.i_crit_edge ]
  %shr.i = lshr i32 %size.addr.03.i, 1
  %inc.i = add nuw nsw i8 %bitpos.04.i, 1
  %tobool.not.i2 = icmp ult i32 %size.addr.03.i, 4
  br i1 %tobool.not.i2, label %while.body.i.dma_align_sizetobits.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.body.i.dma_align_sizetobits.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma_align_sizetobits.exit

dma_align_sizetobits.exit:                        ; preds = %while.body.i.dma_align_sizetobits.exit_crit_edge, %if.then7.dma_align_sizetobits.exit_crit_edge
  %bitpos.0.lcssa.i = phi i8 [ 0, %if.then7.dma_align_sizetobits.exit_crit_edge ], [ %inc.i, %while.body.i.dma_align_sizetobits.exit_crit_edge ]
  %conv9 = zext i8 %bitpos.0.lcssa.i to i16
  %8 = ptrtoint ptr %alignbits to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv9, ptr %alignbits, align 2
  %9 = ptrtoint ptr %dmadev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dmadev.i, align 4
  %11 = ptrtoint ptr %descpa to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %descpa, align 4
  tail call void @dma_free_attrs(ptr noundef %10, i32 noundef %size, ptr noundef nonnull %call.i.i, i32 noundef %12, i32 noundef 0) #13
  %13 = ptrtoint ptr %alignbits to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %alignbits, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool.not.i3 = icmp eq i16 %14, 0
  br i1 %tobool.not.i3, label %dma_align_sizetobits.exit.dma_alloc_consistent.exit16_crit_edge, label %if.then.i12

dma_align_sizetobits.exit.dma_alloc_consistent.exit16_crit_edge: ; preds = %dma_align_sizetobits.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma_alloc_consistent.exit16

if.then.i12:                                      ; preds = %dma_align_sizetobits.exit
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i4 = zext i16 %14 to i32
  %shl.i5 = shl nuw i32 1, %conv.i4
  %sub.i6 = add nuw i32 %shl.i5, 8191
  %and.i7 = and i32 %sub.i6, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i7)
  %cmp.i8 = icmp eq i32 %and.i7, 0
  %conv2.i9 = and i32 %shl.i5, 65535
  %add.i10 = select i1 %cmp.i8, i32 0, i32 %conv2.i9
  %size.addr.0.i11 = add i32 %add.i10, %size
  %15 = ptrtoint ptr %alloced to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %size.addr.0.i11, ptr %alloced, align 4
  br label %dma_alloc_consistent.exit16

dma_alloc_consistent.exit16:                      ; preds = %if.then.i12, %dma_align_sizetobits.exit.dma_alloc_consistent.exit16_crit_edge
  %size.addr.1.i13 = phi i32 [ %size.addr.0.i11, %if.then.i12 ], [ %size, %dma_align_sizetobits.exit.dma_alloc_consistent.exit16_crit_edge ]
  %16 = ptrtoint ptr %dmadev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dmadev.i, align 4
  %call.i.i15 = tail call ptr @dma_alloc_attrs(ptr noundef %17, i32 noundef %size.addr.1.i13, ptr noundef %descpa, i32 noundef 2592, i32 noundef 0) #13
  br label %cleanup

cleanup:                                          ; preds = %dma_alloc_consistent.exit16, %if.end.cleanup_crit_edge, %dma_alloc_consistent.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %dma_alloc_consistent.exit.cleanup_crit_edge ], [ %call.i.i15, %dma_alloc_consistent.exit16 ], [ %call.i.i, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcms_c_ampdu_add_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_brcms_ampdu_session(ptr noundef %dev, i32 noundef %max_ampdu_len, i16 noundef zeroext %max_ampdu_frames, i16 noundef zeroext %ampdu_len, i16 noundef zeroext %ampdu_frames, i16 noundef zeroext %dma_len) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_brcms_ampdu_session, i32 0, i32 1), ptr blockaddress(@trace_brcms_ampdu_session, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !100

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !87) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !98

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !87) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !101
  %call42 = tail call i32 @__traceiter_brcms_ampdu_session(ptr noundef null, ptr noundef %dev, i32 noundef %max_ampdu_len, i16 noundef zeroext %max_ampdu_frames, i16 noundef zeroext %ampdu_len, i16 noundef zeroext %ampdu_frames, i16 noundef zeroext %dma_len) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !102
  %13 = tail call i32 @llvm.read_register.i32(metadata !87) #13
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !87) #13
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !98

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !87) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !103
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_brcms_ampdu_session, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_brcms_ampdu_session, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_brcms_ampdu_session.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_brcms_ampdu_session.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.29, i32 noundef 99, ptr noundef nonnull @.str.30) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !104
  %31 = tail call i32 @llvm.read_register.i32(metadata !87) #13
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_c_ampdu_finalize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_brcms_ampdu_session(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind readonly }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !14, !15, !17, !19, !20, !22, !24, !26, !27, !29, !31, !33, !35, !37, !39, !41, !43, !44, !45, !46, !47, !49, !50, !52, !54, !56, !57, !59, !61, !62, !64, !66, !68, !69, !71, !73, !75, !76, !77, !79, !81, !82, !83, !84, !86}
!llvm.named.register.sp = !{!87}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !{ptr @__func__.dma_attach, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/dma.c", i32 580, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/dma.c", i32 646, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/dma.c", i32 685, i32 4}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/dma.c", i32 691, i32 4}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/dma.c", i32 701, i32 2}
!12 = !{ptr @__func__.dma_detach, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/dma.c", i32 751, i32 2}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__func__.dma_rxinit, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/dma.c", i32 847, i32 2}
!17 = !{ptr @__func__.dma_rx, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/dma.c", i32 942, i32 2}
!19 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/dma.c", i32 969, i32 4}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/dma.c", i32 976, i32 4}
!24 = !{ptr @__func__.dma_rxfill, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/dma.c", i32 1048, i32 2}
!26 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/dma.c", i32 1061, i32 4}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/dma.c", i32 1064, i32 5}
!31 = !{ptr @__func__.dma_rxreclaim, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/dma.c", i32 1114, i32 2}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/dma.c", i32 1133, i32 20}
!35 = !{ptr @__func__.dma_txinit, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/dma.c", i32 1145, i32 2}
!37 = !{ptr @__func__.dma_txsuspend, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/dma.c", i32 1177, i32 2}
!39 = !{ptr @__func__.dma_txresume, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/dma.c", i32 1189, i32 2}
!41 = !{ptr @__func__.dma_txreclaim, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/dma.c", i32 1212, i32 2}
!43 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @__func__.dma_txfast, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/dma.c", i32 1423, i32 2}
!49 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @__func__.dma_getnexttxp, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/dma.c", i32 1475, i32 2}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/dma.c", i32 1538, i32 2}
!54 = !{ptr @__func__._dma_isaddrext, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/dma.c", i32 403, i32 4}
!56 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/dma.c", i32 409, i32 4}
!59 = !{ptr @__func__.dma64_alloc, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/dma.c", i32 512, i32 4}
!61 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/dma.c", i32 527, i32 4}
!64 = !{ptr @__func__._dma_rxenable, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/dma.c", i32 827, i32 2}
!66 = !{ptr @skb_queue_head_init.__key, !67, !"__key", i1 false, i1 false}
!67 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!68 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../include/linux/skbuff.h", i32 2789, i32 6}
!71 = !{ptr @__func__.dma64_rxidle, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/dma.c", i32 994, i32 2}
!73 = distinct !{null, !74, !"__already_done", i1 false, i1 false}
!74 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!75 = !{ptr @.str.26, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.28, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/dma.c", i32 1359, i32 2}
!79 = distinct !{null, !80, !"__already_done", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/brcms_trace_brcmsmac_tx.h", i32 73, i32 1}
!81 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!82 = distinct !{null, !80, !"__warned", i1 false, i1 false}
!83 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!84 = distinct !{null, !85, !"__already_done", i1 false, i1 false}
!85 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!86 = !{ptr @.str.31, !85, !"<string literal>", i1 false, i1 false}
!87 = !{!"sp"}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 8, !"branch-target-enforcement", i32 0}
!91 = !{i32 8, !"sign-return-address", i32 0}
!92 = !{i32 8, !"sign-return-address-all", i32 0}
!93 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!97 = !{i8 0, i8 2}
!98 = !{!"branch_weights", i32 2000, i32 1}
!99 = !{!"branch_weights", i32 1, i32 2000}
!100 = !{i64 2148243280, i64 2148243285, i64 2148243298, i64 2148243342, i64 2148243376, i64 2148243397}
!101 = !{i64 2158476346}
!102 = !{i64 2158476691}
!103 = !{i64 2149967984}
!104 = !{i64 2149969020}
