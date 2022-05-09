; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath6kl/hif.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath6kl/hif.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ath6kl_hif_rw_comp_handler\22, \22a\22\09"
module asm "\09.weak\09__crc_ath6kl_hif_rw_comp_handler\09\09\09\09"
module asm "\09.long\09__crc_ath6kl_hif_rw_comp_handler\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath6kl_hif_rw_comp_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22ath6kl_hif_rw_comp_handler\22\09\09\09\09\09"
module asm "__kstrtabns_ath6kl_hif_rw_comp_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ath6kl_hif_intr_bh_handler\22, \22a\22\09"
module asm "\09.weak\09__crc_ath6kl_hif_intr_bh_handler\09\09\09\09"
module asm "\09.long\09__crc_ath6kl_hif_intr_bh_handler\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath6kl_hif_intr_bh_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22ath6kl_hif_intr_bh_handler\22\09\09\09\09\09"
module asm "__kstrtabns_ath6kl_hif_intr_bh_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.88 }
%struct.atomic_t = type { i32 }
%union.anon.88 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.htc_packet = type { %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, %union.anon, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon = type { %struct.htc_tx_packet_info }
%struct.htc_tx_packet_info = type { i16, i32, i8, i32 }
%struct.ath6kl_device = type { %struct.spinlock, %struct.ath6kl_irq_proc_registers, %struct.ath6kl_irq_enable_reg, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ath6kl_irq_proc_registers = type { i8, i8, i8, i8, i8, i8, i8, i8, [2 x i32], [2 x i32] }
%struct.ath6kl_irq_enable_reg = type { i8, i8, i8, i8 }
%struct.ath6kl = type <{ ptr, ptr, i32, i32, %struct.ath6kl_bmi, ptr, ptr, ptr, [9 x i32], i32, ptr, i32, ptr, %struct.list_head, %struct.spinlock, i8, [3 x i8], i32, i8, i8, [2 x i8], %struct.spinlock, %struct.semaphore, i8, [3 x i8], %struct.ath6kl_version, i32, i8, [15 x %struct.ath6kl_node_mapping], i8, i8, i8, i8, [3 x i8], ptr, i32, [4 x i32], [4 x i8], [4 x i8], i8, [9 x i8], [2 x i8], i32, %struct.ath6kl_htc_credit_info, i32, i32, i8, [3 x i8], [10 x %struct.ath6kl_sta], i8, [3 x i8], %struct.ath6kl_req_key, %struct.sk_buff_head, i32, i16, [2 x i8], %struct.spinlock, i8, %struct.wmi_ap_mode_stat, [3 x i8], %struct.list_head, i8, [3 x i8], i32, [6 x i8], [2 x i8], %struct.anon.131, %struct.ath6kl_hw, i16, i16, i16, [2 x i8], %struct.wait_queue_head, %struct.ath6kl_mbox_info, [198 x %struct.ath6kl_cookie], i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, [1 x i32], ptr, ptr, i8, i8, [2 x i8], %struct.ath6kl_fw_recovery, %struct.anon.132 }>
%struct.ath6kl_bmi = type { i32, i8, ptr, i32, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.ath6kl_version = type { i32, i32, i32 }
%struct.ath6kl_node_mapping = type { [6 x i8], i8, i8 }
%struct.ath6kl_htc_credit_info = type { i32, i32, %struct.list_head }
%struct.ath6kl_sta = type { i16, [6 x i8], i8, i8, i8, i8, [256 x i8], %struct.sk_buff_head, %struct.spinlock, %struct.list_head, i32, i8, %struct.sk_buff_head, ptr }
%struct.ath6kl_req_key = type { i8, i8, i32, [32 x i8], i8 }
%struct.sk_buff_head = type { %union.anon.54, i32, %struct.spinlock }
%union.anon.54 = type { %struct.anon.55 }
%struct.anon.55 = type { ptr, ptr }
%struct.wmi_ap_mode_stat = type { i32, [11 x %struct.wmi_per_sta_stat] }
%struct.wmi_per_sta_stat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.131 = type { ptr, i32 }
%struct.ath6kl_hw = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i32, %struct.ath6kl_hw_fw, ptr, ptr }
%struct.ath6kl_hw_fw = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ath6kl_mbox_info = type { i32, i32, i32, i32, i32, i32 }
%struct.ath6kl_cookie = type { ptr, i32, %struct.htc_packet, ptr }
%struct.ath6kl_fw_recovery = type { %struct.work_struct, i32, i32, %struct.timer_list, i32, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.anon.132 = type { %struct.sk_buff_head, %struct.completion, i8, i32, i32, i32, i32, %struct.anon.133, ptr, i32, i8, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.133 = type { i32 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.106, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.anon.106 = type { i64, i64, i8 }
%struct.hif_scatter_req = type { %struct.list_head, i32, i32, i32, i8, ptr, i32, i32, ptr, ptr, ptr, i32, [0 x %struct.hif_scatter_item] }
%struct.hif_scatter_item = type { ptr, i32, ptr }
%struct.ath6kl_hif_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.htc_target = type { [9 x %struct.htc_endpoint], %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32], %struct.anon.4 }
%struct.htc_endpoint = type { i32, i16, %struct.list_head, %struct.list_head, %struct.htc_endpoint_credit_dist, %struct.htc_ep_callbacks, i32, i32, i32, i32, ptr, i8, i32, %struct.htc_endpoint_stats, i16, %struct.anon }
%struct.htc_endpoint_credit_dist = type { %struct.list_head, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.htc_ep_callbacks = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.htc_endpoint_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon = type { i8, i8, %struct.list_head, i8 }
%struct.anon.4 = type { ptr, [256 x i8], i32, i8, [9 x %struct.htc_pipe_txcredit_alloc] }
%struct.htc_pipe_txcredit_alloc = type { i16, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"hif rw completion pkt 0x%p status %d\0A\00", [58 x i8] zeroinitializer }, align 32
@__kstrtab_ath6kl_hif_rw_comp_handler = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath6kl_hif_rw_comp_handler = external dso_local constant [0 x i8], align 1
@__ksymtab_ath6kl_hif_rw_comp_handler = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath6kl_hif_rw_comp_handler to i32), ptr @__kstrtab_ath6kl_hif_rw_comp_handler, ptr @__kstrtabns_ath6kl_hif_rw_comp_handler }, section "___ksymtab+ath6kl_hif_rw_comp_handler", align 4
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to read reg table\0A\00", [38 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"hif retry mbox poll try %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"timeout waiting for recv message\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hif rx %s\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"hif submit scatter request entries %d len %d mbox 0x%x %s %s\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"async\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sync\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rd\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"wr\00", [29 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__kstrtab_ath6kl_hif_intr_bh_handler = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath6kl_hif_intr_bh_handler = external dso_local constant [0 x i8], align 1
@__ksymtab_ath6kl_hif_intr_bh_handler = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath6kl_hif_intr_bh_handler to i32), ptr @__kstrtab_ath6kl_hif_intr_bh_handler, ptr @__kstrtabns_ath6kl_hif_intr_bh_handler }, section "___ksymtab+ath6kl_hif_intr_bh_handler", align 4
@ath6kl_hif_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dev->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/wireless/ath/ath6kl/hif.c\00", [58 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"hif block size %d mbox addr 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"hif %s sync addr 0x%x buf 0x%p len %d request 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"firmware crashed\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to clear debug interrupt: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"failed to get ptr to register dump area: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"register dump data address 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to get register dump: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"crash dump:\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hw 0x%x fw %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%d: 0x%8.8x 0x%8.8x 0x%8.8x 0x%8.8x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"proc_pending_irqs: (dev: 0x%p)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lookAhead is zero!\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"pending mailbox msg, lk_ahd: 0x%X\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"valid interrupt source(s) for other interrupts: 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"bypassing irq status re-check, forcing done\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"proc_pending_irqs: (done:%d, status=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_ath6kl_sdio_irq = external dso_local global %struct.tracepoint, align 4
@.str.32 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/wireless/ath/ath6kl/trace.h\00", [56 x i8] zeroinitializer }, align 32
@trace_ath6kl_sdio_irq.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.33 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cpu interrupt\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"valid interrupt source(s) in CPU_INT_STATUS: 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"error interrupt\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"valid interrupt source(s) in ERROR_INT_STATUS: 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"error : wakeup\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rx underflow\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tx overflow\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"counter interrupt\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"valid interrupt source(s) in COUNTER_INT_STATUS: 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hif irq enable\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to update interrupt ctl reg err: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hif irq disable\0A\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 57, i32 29 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 156, i32 15 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 177, i32 30 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 181, i32 14 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 205, i32 29 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 206, i32 18 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 206, i32 29 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 248, i32 6 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 250, i32 30 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 250, i32 40 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 251, i32 15 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 251, i32 22 }
@___asan_gen_.84 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 673, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 684, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 692, i32 29 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 28, i32 6 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 29, i32 30 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 29, i32 40 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 122, i32 14 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 131, i32 15 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 84, i32 15 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 89, i32 29 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 97, i32 15 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 101, i32 14 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 102, i32 14 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 108, i32 15 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 396, i32 29 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 454, i32 17 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 468, i32 7 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 492, i32 6 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 528, i32 6 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 534, i32 6 }
@___asan_gen_.151 = private unnamed_addr constant [43 x i8] c"../drivers/net/wireless/ath/ath6kl/trace.h\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 174, i32 1 }
@___asan_gen_.154 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 108, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 349, i32 29 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 359, i32 6 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 305, i32 29 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 314, i32 6 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 318, i32 30 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 321, i32 14 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 324, i32 14 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 279, i32 29 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 285, i32 6 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 48, i32 29 }
@___asan_gen_.187 = private constant [41 x i8] c"../drivers/net/wireless/ath/ath6kl/hif.c\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 610, i32 14 }
@___asan_gen_.189 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [45 x i8] c"../drivers/net/wireless/ath/ath6kl/hif-ops.h\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 55, i32 29 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__ksymtab_ath6kl_hif_intr_bh_handler, ptr @__ksymtab_ath6kl_hif_rw_comp_handler, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @ath6kl_hif_setup.__key, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath6kl_hif_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_hif_rw_comp_handler(ptr noundef %context, i32 noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 64, ptr noundef nonnull @.str, ptr noundef %context, i32 noundef %status) #6
  %status1 = getelementptr inbounds %struct.htc_packet, ptr %context, i32 0, i32 7
  %0 = ptrtoint ptr %status1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %status, ptr %status1, align 4
  %completion = getelementptr inbounds %struct.htc_packet, ptr %context, i32 0, i32 9
  %1 = ptrtoint ptr %completion to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %completion, align 4
  %context2 = getelementptr inbounds %struct.htc_packet, ptr %context, i32 0, i32 10
  %3 = ptrtoint ptr %context2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %context2, align 4
  tail call void %2(ptr noundef %4, ptr noundef %context) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_hif_poll_mboxmsg_rx(ptr noundef %dev, ptr nocapture noundef writeonly %lk_ahd, i32 noundef %timeout) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %timeout)
  %cmp47 = icmp sgt i32 %timeout, 9
  br i1 %cmp47, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %div = sdiv i32 %timeout, 10
  %ar = getelementptr inbounds %struct.ath6kl_device, ptr %dev, i32 0, i32 4
  %irq_proc_reg = getelementptr inbounds %struct.ath6kl_device, ptr %dev, i32 0, i32 1
  %rx_lkahd_valid = getelementptr inbounds %struct.ath6kl_device, ptr %dev, i32 0, i32 1, i32 5
  br label %for.body

for.body:                                         ; preds = %if.end13.for.body_crit_edge, %for.body.lr.ph
  %i.048 = phi i32 [ %div, %for.body.lr.ph ], [ %dec15, %if.end13.for.body_crit_edge ]
  %0 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar, align 4
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 64, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.17, i32 noundef 1024, ptr noundef %irq_proc_reg, i32 noundef 24, i32 noundef 593) #6
  %hif_ops.i = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %hif_ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hif_ops.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call.i = tail call i32 %5(ptr noundef %1, i32 noundef 1024, ptr noundef %irq_proc_reg, i32 noundef 24, i32 noundef 593) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.1) #6
  br label %cleanup

if.end:                                           ; preds = %for.body
  %6 = ptrtoint ptr %irq_proc_reg to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %irq_proc_reg, align 4
  %8 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool3.not = icmp eq i8 %8, 0
  br i1 %tobool3.not, label %if.end.if.end13_crit_edge, label %if.then4

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then4:                                         ; preds = %if.end
  %9 = ptrtoint ptr %rx_lkahd_valid to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %rx_lkahd_valid, align 1
  %11 = and i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool9.not = icmp eq i8 %11, 0
  br i1 %tobool9.not, label %if.then4.if.end13_crit_edge, label %for.end.thread

if.then4.if.end13_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

for.end.thread:                                   ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %rx_lkahd = getelementptr inbounds %struct.ath6kl_device, ptr %dev, i32 0, i32 1, i32 8
  %12 = ptrtoint ptr %rx_lkahd to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %rx_lkahd, align 1
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %15 = ptrtoint ptr %lk_ahd to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %lk_ahd, align 4
  br label %cleanup

if.end13:                                         ; preds = %if.then4.if.end13_crit_edge, %if.end.if.end13_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #6
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 64, ptr noundef nonnull @.str.2, i32 noundef %i.048) #6
  %dec15 = add nsw i32 %i.048, -1
  %cmp = icmp sgt i32 %i.048, 1
  br i1 %cmp, label %if.end13.for.body_crit_edge, label %if.end13.if.then18_crit_edge

if.end13.if.then18_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then18

if.end13.for.body_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %entry
  %timeout.off = add i32 %timeout, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %timeout.off)
  %26 = icmp ult i32 %timeout.off, 19
  br i1 %26, label %for.end.if.then18_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.end.if.then18_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then18

if.then18:                                        ; preds = %for.end.if.then18_crit_edge, %if.end13.if.then18_crit_edge
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.3) #6
  %counter_int_status = getelementptr inbounds %struct.ath6kl_device, ptr %dev, i32 0, i32 1, i32 3
  %27 = ptrtoint ptr %counter_int_status to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %counter_int_status, align 1
  %29 = and i8 %28, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool22.not = icmp eq i8 %29, 0
  br i1 %tobool22.not, label %if.then18.cleanup_crit_edge, label %if.then23

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then23:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  %call24 = tail call fastcc i32 @ath6kl_hif_proc_dbg_intr(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %if.then18.cleanup_crit_edge, %for.end.cleanup_crit_edge, %for.end.thread, %if.then
  %retval.0 = phi i32 [ %call.i, %if.then ], [ -62, %if.then23 ], [ -62, %if.then18.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %for.end.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath6kl_hif_proc_dbg_intr(ptr nocapture noundef readonly %dev) unnamed_addr #0 align 64 {
entry:
  %regdump_val.i = alloca [60 x i32], align 4
  %regdump_addr.i = alloca i32, align 4
  %dummy = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy) #6
  %0 = ptrtoint ptr %dummy to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dummy, align 4, !annotation !111
  tail call void (ptr, ...) @ath6kl_warn(ptr noundef nonnull @.str.18) #6
  %ar = getelementptr inbounds %struct.ath6kl_device, ptr %dev, i32 0, i32 4
  %1 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ar, align 4
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 64, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.17, i32 noundef 1088, ptr noundef nonnull %dummy, i32 noundef 4, i32 noundef 593) #6
  %hif_ops.i = getelementptr inbounds %struct.ath6kl, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %hif_ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hif_ops.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %call.i = call i32 %6(ptr noundef %2, i32 noundef 1088, ptr noundef nonnull %dummy, i32 noundef 4, i32 noundef 593) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @ath6kl_warn(ptr noundef nonnull @.str.19, i32 noundef %call.i) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ar, align 4
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %regdump_val.i) #6
  %9 = call ptr @memset(ptr %regdump_val.i, i32 255, i32 240)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regdump_addr.i) #6
  %10 = ptrtoint ptr %regdump_addr.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %regdump_addr.i, align 4
  %target_type.i.i = getelementptr inbounds %struct.ath6kl, ptr %8, i32 0, i32 26
  %11 = ptrtoint ptr %target_type.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %target_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %12)
  %switch.selectcmp.i.i = icmp eq i32 %12, 5
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 4196356, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %switch.selectcmp1.i.i = icmp eq i32 %12, 3
  %switch.select2.i.i = select i1 %switch.selectcmp1.i.i, i32 5506564, i32 %switch.select.i.i
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %12, label %if.end.cond.end5.i_crit_edge [
    i32 3, label %cond.true.i
    i32 5, label %cond.true3.i
  ]

if.end.cond.end5.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end5.i

cond.true.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %and.i = and i32 %switch.select2.i.i, 1314308
  br label %cond.end5.i

cond.true3.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end5.i

cond.end5.i:                                      ; preds = %cond.true3.i, %cond.true.i, %if.end.cond.end5.i_crit_edge
  %cond6.i = phi i32 [ %and.i, %cond.true.i ], [ %switch.select2.i.i, %cond.true3.i ], [ 0, %if.end.cond.end5.i_crit_edge ]
  %call7.i = call i32 @ath6kl_diag_read32(ptr noundef %8, i32 noundef %cond6.i, ptr noundef nonnull %regdump_addr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %cond.end5.i.if.then.i_crit_edge

cond.end5.i.if.then.i_crit_edge:                  ; preds = %cond.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %cond.end5.i
  %14 = ptrtoint ptr %regdump_addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %regdump_addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool8.not.i = icmp eq i32 %15, 0
  br i1 %tobool8.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %if.end.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %cond.end5.i.if.then.i_crit_edge
  call void (ptr, ...) @ath6kl_warn(ptr noundef nonnull @.str.20, i32 noundef %call7.i) #6
  br label %ath6kl_hif_dump_fw_crash.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 128, ptr noundef nonnull @.str.21, i32 noundef %15) #6
  %16 = ptrtoint ptr %target_type.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %target_type.i.i, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %17, label %if.end.i.cond.end20.i_crit_edge [
    i32 3, label %cond.true11.i
    i32 5, label %cond.true16.i
  ]

if.end.i.cond.end20.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end20.i

cond.true11.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %regdump_addr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %regdump_addr.i, align 4
  %and12.i = and i32 %20, 2097151
  br label %cond.end20.i

cond.true16.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %regdump_addr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %regdump_addr.i, align 4
  br label %cond.end20.i

cond.end20.i:                                     ; preds = %cond.true16.i, %cond.true11.i, %if.end.i.cond.end20.i_crit_edge
  %cond21.i = phi i32 [ %and12.i, %cond.true11.i ], [ %22, %cond.true16.i ], [ 0, %if.end.i.cond.end20.i_crit_edge ]
  %23 = ptrtoint ptr %regdump_addr.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %cond21.i, ptr %regdump_addr.i, align 4
  %call22.i = call i32 @ath6kl_diag_read(ptr noundef %8, i32 noundef %cond21.i, ptr noundef nonnull %regdump_val.i, i32 noundef 240) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.end25.i, label %if.then24.i

if.then24.i:                                      ; preds = %cond.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @ath6kl_warn(ptr noundef nonnull @.str.22, i32 noundef %call22.i) #6
  br label %ath6kl_hif_dump_fw_crash.exit

if.end25.i:                                       ; preds = %cond.end20.i
  call void (ptr, ...) @ath6kl_info(ptr noundef nonnull @.str.23) #6
  %wiphy.i = getelementptr inbounds %struct.ath6kl, ptr %8, i32 0, i32 1
  %24 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wiphy.i, align 4
  %hw_version.i = getelementptr inbounds %struct.wiphy, ptr %25, i32 0, i32 39
  %26 = ptrtoint ptr %hw_version.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hw_version.i, align 4
  %fw_version.i = getelementptr inbounds %struct.wiphy, ptr %25, i32 0, i32 38
  call void (ptr, ...) @ath6kl_info(ptr noundef nonnull @.str.24, i32 noundef %27, ptr noundef %fw_version.i) #6
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end25.i
  %i.060.i = phi i32 [ 0, %if.end25.i ], [ %add34.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx28.i = getelementptr [60 x i32], ptr %regdump_val.i, i32 0, i32 %i.060.i
  %28 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx28.i, align 4
  %30 = call i32 @llvm.bswap.i32(i32 %29) #6
  %add.i = or i32 %i.060.i, 1
  %arrayidx29.i = getelementptr [60 x i32], ptr %regdump_val.i, i32 0, i32 %add.i
  %31 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx29.i, align 4
  %33 = call i32 @llvm.bswap.i32(i32 %32) #6
  %add30.i = or i32 %i.060.i, 2
  %arrayidx31.i = getelementptr [60 x i32], ptr %regdump_val.i, i32 0, i32 %add30.i
  %34 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx31.i, align 4
  %36 = call i32 @llvm.bswap.i32(i32 %35) #6
  %add32.i = or i32 %i.060.i, 3
  %arrayidx33.i = getelementptr [60 x i32], ptr %regdump_val.i, i32 0, i32 %add32.i
  %37 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx33.i, align 4
  %39 = call i32 @llvm.bswap.i32(i32 %38) #6
  call void (ptr, ...) @ath6kl_info(ptr noundef nonnull @.str.25, i32 noundef %i.060.i, i32 noundef %30, i32 noundef %33, i32 noundef %36, i32 noundef %39) #6
  %add34.i = add nuw nsw i32 %i.060.i, 4
  %cmp27.i = icmp ult i32 %i.060.i, 56
  br i1 %cmp27.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.ath6kl_hif_dump_fw_crash.exit_crit_edge

for.body.i.ath6kl_hif_dump_fw_crash.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath6kl_hif_dump_fw_crash.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

ath6kl_hif_dump_fw_crash.exit:                    ; preds = %for.body.i.ath6kl_hif_dump_fw_crash.exit_crit_edge, %if.then24.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regdump_addr.i) #6
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %regdump_val.i) #6
  %40 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ar, align 4
  %call3 = call i32 @ath6kl_read_fwlogs(ptr noundef %41) #6
  %42 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ar, align 4
  call void @ath6kl_recovery_err_notify(ptr noundef %43, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_hif_rx_control(ptr noundef %dev, i1 noundef zeroext %enable_rx) local_unnamed_addr #0 align 64 {
entry:
  %regs = alloca %struct.ath6kl_irq_enable_reg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regs) #6
  %cond = select i1 %enable_rx, ptr @.str.5, ptr @.str.6
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 64, ptr noundef nonnull @.str.4, ptr noundef nonnull %cond) #6
  tail call void @_raw_spin_lock_bh(ptr noundef %dev) #6
  %irq_en_reg = getelementptr inbounds %struct.ath6kl_device, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %irq_en_reg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %irq_en_reg, align 4
  %2 = and i8 %1, -2
  %masksel = zext i1 %enable_rx to i8
  %.sink = or i8 %2, %masksel
  store i8 %.sink, ptr %irq_en_reg, align 4
  %irq_en_reg7 = getelementptr inbounds %struct.ath6kl_device, ptr %dev, i32 0, i32 2
  %3 = ptrtoint ptr %irq_en_reg7 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq_en_reg7, align 4
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %regs, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %dev) #6
  %ar = getelementptr inbounds %struct.ath6kl_device, ptr %dev, i32 0, i32 4
  %6 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ar, align 4
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 64, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 1048, ptr noundef nonnull %regs, i32 noundef 4, i32 noundef 594) #6
  %hif_ops.i = getelementptr inbounds %struct.ath6kl, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %hif_ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hif_ops.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %call.i = call i32 %11(ptr noundef %7, i32 noundef 1048, ptr noundef nonnull %regs, i32 noundef 4, i32 noundef 594) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regs) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_hif_submit_scat_req(ptr nocapture noundef readonly %dev, ptr noundef %scat_req, i1 noundef zeroext %read) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %req = getelementptr inbounds %struct.hif_scatter_req, ptr %scat_req, i32 0, i32 2
  br i1 %read, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 401, ptr %req, align 4
  %ar = getelementptr inbounds %struct.ath6kl_device, ptr %dev, i32 0, i32 4
  %1 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ar, align 4
  %mbox_info = getelementptr inbounds %struct.ath6kl, ptr %2, i32 0, i32 73
  %3 = ptrtoint ptr %mbox_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mbox_info, align 4
  %addr = getelementptr inbounds %struct.hif_scatter_req, ptr %scat_req, i32 0, i32 1
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %addr, align 4
  %scat_entries.c66 = getelementptr inbounds %struct.hif_scatter_req, ptr %scat_req, i32 0, i32 7
  %6 = ptrtoint ptr %scat_entries.c66 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %scat_entries.c66, align 4
  %len8.c67 = getelementptr inbounds %struct.hif_scatter_req, ptr %scat_req, i32 0, i32 3
  %8 = ptrtoint ptr %len8.c67 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len8.c67, align 4
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 64, ptr noundef nonnull @.str.7, i32 noundef %7, i32 noundef %9, i32 noundef %4, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #6
  br label %if.end22

if.else:                                          ; preds = %entry
  %10 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 674, ptr %req, align 4
  %len = getelementptr inbounds %struct.hif_scatter_req, ptr %scat_req, i32 0, i32 3
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %12)
  %cmp = icmp ugt i32 %12, 2048
  %ar2 = getelementptr inbounds %struct.ath6kl_device, ptr %dev, i32 0, i32 4
  %13 = ptrtoint ptr %ar2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ar2, align 4
  %htc_ext_addr = getelementptr inbounds %struct.ath6kl, ptr %14, i32 0, i32 73, i32 1
  %mbox_info5 = getelementptr inbounds %struct.ath6kl, ptr %14, i32 0, i32 73
  %cond.in = select i1 %cmp, ptr %htc_ext_addr, ptr %mbox_info5
  %15 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %15)
  %cond = load i32, ptr %cond.in, align 4
  %addr7 = getelementptr inbounds %struct.hif_scatter_req, ptr %scat_req, i32 0, i32 1
  %16 = ptrtoint ptr %addr7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %cond, ptr %addr7, align 4
  %scat_entries.c = getelementptr inbounds %struct.hif_scatter_req, ptr %scat_req, i32 0, i32 7
  %17 = ptrtoint ptr %scat_entries.c to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %scat_entries.c, align 4
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 64, ptr noundef nonnull @.str.7, i32 noundef %18, i32 noundef %12, i32 noundef %cond, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.11) #6
  %virt_scat = getelementptr inbounds %struct.hif_scatter_req, ptr %scat_req, i32 0, i32 4
  %19 = ptrtoint ptr %virt_scat to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %virt_scat, align 4, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool15.not = icmp eq i8 %20, 0
  br i1 %tobool15.not, label %if.else.if.end22_crit_edge, label %if.then16

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then16:                                        ; preds = %if.else
  %21 = ptrtoint ptr %scat_entries.c to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %scat_entries.c, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp1.i = icmp sgt i32 %22, 0
  br i1 %cmp1.i, label %for.body.preheader.i, label %if.then16.if.end22_crit_edge

if.then16.if.end22_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

for.body.preheader.i:                             ; preds = %if.then16
  %virt_dma_buf.i = getelementptr inbounds %struct.hif_scatter_req, ptr %scat_req, i32 0, i32 10
  %23 = ptrtoint ptr %virt_dma_buf.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %virt_dma_buf.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.04.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %buf.02.i = phi ptr [ %add.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %24, %for.body.preheader.i ]
  %arrayidx.i = getelementptr %struct.hif_scatter_req, ptr %scat_req, i32 0, i32 12, i32 %i.04.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 4
  %len.i = getelementptr %struct.hif_scatter_req, ptr %scat_req, i32 0, i32 12, i32 %i.04.i, i32 1
  %27 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len.i, align 4
  %29 = call ptr @memcpy(ptr %buf.02.i, ptr %26, i32 %28)
  %30 = load i32, ptr %len.i, align 4
  %add.ptr.i = getelementptr i8, ptr %buf.02.i, i32 %30
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %31 = ptrtoint ptr %scat_entries.c to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %scat_entries.c, align 4
  %cmp.i = icmp slt i32 %inc.i, %32
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end22_crit_edge

for.body.i.if.end22_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end22:                                         ; preds = %for.body.i.if.end22_crit_edge, %if.then16.if.end22_crit_edge, %if.else.if.end22_crit_edge, %if.then
  %ar23 = getelementptr inbounds %struct.ath6kl_device, ptr %dev, i32 0, i32 4
  %33 = ptrtoint ptr %ar23 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ar23, align 4
  %hif_ops.i = getelementptr inbounds %struct.ath6kl, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %hif_ops.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hif_ops.i, align 4
  %scat_req_rw.i = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %36, i32 0, i32 7
  %37 = ptrtoint ptr %scat_req_rw.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %scat_req_rw.i, align 4
  %call.i = tail call i32 %38(ptr noundef %34, ptr noundef %scat_req) #6
  br i1 %read, label %if.then26, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then26:                                        ; preds = %if.end22
  %status27 = getelementptr inbounds %struct.hif_scatter_req, ptr %scat_req, i32 0, i32 6
  %39 = ptrtoint ptr %status27 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call.i, ptr %status27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool28.not = icmp eq i32 %call.i, 0
  br i1 %tobool28.not, label %land.lhs.true29, label %if.then26.cleanup_crit_edge

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true29:                                  ; preds = %if.then26
  %virt_scat30 = getelementptr inbounds %struct.hif_scatter_req, ptr %scat_req, i32 0, i32 4
  %40 = ptrtoint ptr %virt_scat30 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %virt_scat30, align 4, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool31.not = icmp eq i8 %41, 0
  br i1 %tobool31.not, label %land.lhs.true29.cleanup_crit_edge, label %if.then32

land.lhs.true29.cleanup_crit_edge:                ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then32:                                        ; preds = %land.lhs.true29
  %scat_entries.i69 = getelementptr inbounds %struct.hif_scatter_req, ptr %scat_req, i32 0, i32 7
  %42 = ptrtoint ptr %scat_entries.i69 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %scat_entries.i69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp1.i70 = icmp sgt i32 %43, 0
  br i1 %cmp1.i70, label %for.body.preheader.i72, label %if.then32.ath6kl_hif_cp_scat_dma_buf.exit82_crit_edge

if.then32.ath6kl_hif_cp_scat_dma_buf.exit82_crit_edge: ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath6kl_hif_cp_scat_dma_buf.exit82

for.body.preheader.i72:                           ; preds = %if.then32
  %virt_dma_buf.i71 = getelementptr inbounds %struct.hif_scatter_req, ptr %scat_req, i32 0, i32 10
  %44 = ptrtoint ptr %virt_dma_buf.i71 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %virt_dma_buf.i71, align 4
  br label %for.body.i77

for.body.i77:                                     ; preds = %for.body.i77.for.body.i77_crit_edge, %for.body.preheader.i72
  %i.04.i73 = phi i32 [ %inc.i80, %for.body.i77.for.body.i77_crit_edge ], [ 0, %for.body.preheader.i72 ]
  %buf.02.i74 = phi ptr [ %add.ptr.i79, %for.body.i77.for.body.i77_crit_edge ], [ %45, %for.body.preheader.i72 ]
  %arrayidx.i75 = getelementptr %struct.hif_scatter_req, ptr %scat_req, i32 0, i32 12, i32 %i.04.i73
  %46 = ptrtoint ptr %arrayidx.i75 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i75, align 4
  %len.i76 = getelementptr %struct.hif_scatter_req, ptr %scat_req, i32 0, i32 12, i32 %i.04.i73, i32 1
  %48 = ptrtoint ptr %len.i76 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %len.i76, align 4
  %50 = call ptr @memcpy(ptr %47, ptr %buf.02.i74, i32 %49)
  %51 = load i32, ptr %len.i76, align 4
  %add.ptr.i79 = getelementptr i8, ptr %buf.02.i74, i32 %51
  %inc.i80 = add nuw nsw i32 %i.04.i73, 1
  %52 = ptrtoint ptr %scat_entries.i69 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %scat_entries.i69, align 4
  %cmp.i81 = icmp slt i32 %inc.i80, %53
  br i1 %cmp.i81, label %for.body.i77.for.body.i77_crit_edge, label %for.body.i77.ath6kl_hif_cp_scat_dma_buf.exit82_crit_edge

for.body.i77.ath6kl_hif_cp_scat_dma_buf.exit82_crit_edge: ; preds = %for.body.i77
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath6kl_hif_cp_scat_dma_buf.exit82

for.body.i77.for.body.i77_crit_edge:              ; preds = %for.body.i77
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i77

ath6kl_hif_cp_scat_dma_buf.exit82:                ; preds = %for.body.i77.ath6kl_hif_cp_scat_dma_buf.exit82_crit_edge, %if.then32.ath6kl_hif_cp_scat_dma_buf.exit82_crit_edge
  %54 = ptrtoint ptr %status27 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %status27, align 4
  br label %cleanup

cleanup:                                          ; preds = %ath6kl_hif_cp_scat_dma_buf.exit82, %land.lhs.true29.cleanup_crit_edge, %if.then26.cleanup_crit_edge, %if.end22.cleanup_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_hif_intr_bh_handler(ptr nocapture noundef readonly %ar) #0 align 64 {
entry:
  %reg_buf.i126.i = alloca [4 x i8], align 1
  %reg_buf.i.i = alloca [4 x i8], align 1
  %fetched.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %htc_target = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 10
  %0 = ptrtoint ptr %htc_target to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %htc_target, align 4
  %dev1 = getelementptr inbounds %struct.htc_target, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %htc_cnxt = getelementptr inbounds %struct.ath6kl_device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %htc_cnxt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %htc_cnxt, align 4
  %chk_irq_status_cnt = getelementptr inbounds %struct.htc_target, ptr %5, i32 0, i32 24
  %6 = ptrtoint ptr %chk_irq_status_cnt to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %chk_irq_status_cnt, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 -100, %7
  %irq_en_reg.i = getelementptr inbounds %struct.ath6kl_device, ptr %3, i32 0, i32 2
  %ar.i = getelementptr inbounds %struct.ath6kl_device, ptr %3, i32 0, i32 4
  %irq_proc_reg.i = getelementptr inbounds %struct.ath6kl_device, ptr %3, i32 0, i32 1
  %rx_lkahd_valid.i = getelementptr inbounds %struct.ath6kl_device, ptr %3, i32 0, i32 1, i32 5
  %rx_lkahd.i = getelementptr inbounds %struct.ath6kl_device, ptr %3, i32 0, i32 1, i32 8
  %cpu_int_status1.i.i = getelementptr inbounds %struct.ath6kl_device, ptr %3, i32 0, i32 1, i32 1
  %cpu_int_status_en.i.i = getelementptr inbounds %struct.ath6kl_device, ptr %3, i32 0, i32 2, i32 1
  %8 = getelementptr inbounds [4 x i8], ptr %reg_buf.i.i, i32 0, i32 3
  %9 = getelementptr inbounds [4 x i8], ptr %reg_buf.i.i, i32 0, i32 2
  %10 = getelementptr inbounds [4 x i8], ptr %reg_buf.i.i, i32 0, i32 1
  %11 = getelementptr inbounds [4 x i8], ptr %reg_buf.i126.i, i32 0, i32 1
  %12 = getelementptr inbounds [4 x i8], ptr %reg_buf.i126.i, i32 0, i32 2
  %13 = getelementptr inbounds [4 x i8], ptr %reg_buf.i126.i, i32 0, i32 3
  %error_int_status1.i.i = getelementptr inbounds %struct.ath6kl_device, ptr %3, i32 0, i32 1, i32 2
  %counter_int_status1.i.i = getelementptr inbounds %struct.ath6kl_device, ptr %3, i32 0, i32 1, i32 3
  %cntr_int_status_en.i.i = getelementptr inbounds %struct.ath6kl_device, ptr %3, i32 0, i32 2, i32 3
  br label %while.cond

while.cond:                                       ; preds = %out.i.while.cond_crit_edge, %entry
  %done.0 = phi i8 [ 0, %entry ], [ %spec.select, %out.i.while.cond_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %done.0)
  %tobool.not = icmp eq i8 %done.0, 0
  %or.cond = and i1 %tobool.not, %cmp
  br i1 %or.cond, label %while.body, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %while.cond
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 128, ptr noundef nonnull @.str.26, ptr noundef %3) #6
  %15 = ptrtoint ptr %irq_en_reg.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %irq_en_reg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i, label %while.body.if.end33.i_crit_edge, label %if.then.i

while.body.if.end33.i_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33.i

if.then.i:                                        ; preds = %while.body
  %17 = ptrtoint ptr %ar.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ar.i, align 4
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 64, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.17, i32 noundef 1024, ptr noundef %irq_proc_reg.i, i32 noundef 24, i32 noundef 593) #6
  %hif_ops.i.i = getelementptr inbounds %struct.ath6kl, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %hif_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hif_ops.i.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %call.i.i = call i32 %22(ptr noundef %18, i32 noundef 1024, ptr noundef %irq_proc_reg.i, i32 noundef 24, i32 noundef 593) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i, label %if.end.i, label %if.then.i.out.i_crit_edge

if.then.i.out.i_crit_edge:                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i

if.end.i:                                         ; preds = %if.then.i
  call void @ath6kl_dump_registers(ptr noundef %3, ptr noundef %irq_proc_reg.i, ptr noundef %irq_en_reg.i) #6
  call fastcc void @trace_ath6kl_sdio_irq(ptr noundef %irq_en_reg.i) #6
  %23 = ptrtoint ptr %irq_proc_reg.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %irq_proc_reg.i, align 4
  %25 = ptrtoint ptr %irq_en_reg.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %irq_en_reg.i, align 4
  %and124.i = and i8 %26, %24
  %27 = and i8 %and124.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool15.not.i = icmp eq i8 %27, 0
  br i1 %tobool15.not.i, label %if.end.i.if.end33.i_crit_edge, label %if.then16.i

if.end.i.if.end33.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33.i

if.then16.i:                                      ; preds = %if.end.i
  %and19.i = and i8 %and124.i, -2
  %28 = ptrtoint ptr %rx_lkahd_valid.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %rx_lkahd_valid.i, align 1
  %30 = and i8 %29, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool25.not.i = icmp eq i8 %30, 0
  br i1 %tobool25.not.i, label %if.then16.i.if.end33.i_crit_edge, label %if.then26.i

if.then16.i.if.end33.i_crit_edge:                 ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33.i

if.then26.i:                                      ; preds = %if.then16.i
  %31 = ptrtoint ptr %rx_lkahd.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %rx_lkahd.i, align 1
  %33 = call i32 @llvm.bswap.i32(i32 %32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool28.not.i = icmp eq i32 %32, 0
  br i1 %tobool28.not.i, label %if.then29.i, label %if.then26.i.if.end33.i_crit_edge

if.then26.i.if.end33.i_crit_edge:                 ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33.i

if.then29.i:                                      ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.27) #6
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then29.i, %if.then26.i.if.end33.i_crit_edge, %if.then16.i.if.end33.i_crit_edge, %if.end.i.if.end33.i_crit_edge, %while.body.if.end33.i_crit_edge
  %host_int_status.0.i = phi i8 [ %and19.i, %if.then26.i.if.end33.i_crit_edge ], [ %and19.i, %if.then29.i ], [ %and19.i, %if.then16.i.if.end33.i_crit_edge ], [ %and124.i, %if.end.i.if.end33.i_crit_edge ], [ 0, %while.body.if.end33.i_crit_edge ]
  %lk_ahd.0.i = phi i32 [ %33, %if.then26.i.if.end33.i_crit_edge ], [ 0, %if.then29.i ], [ 0, %if.then16.i.if.end33.i_crit_edge ], [ 0, %if.end.i.if.end33.i_crit_edge ], [ 0, %while.body.if.end33.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %host_int_status.0.i)
  %tobool34.not.i = icmp eq i8 %host_int_status.0.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lk_ahd.0.i)
  %tobool35.not.i = icmp eq i32 %lk_ahd.0.i, 0
  %or.cond.i = select i1 %tobool34.not.i, i1 %tobool35.not.i, i1 false
  br i1 %or.cond.i, label %if.end33.i.out.i_crit_edge, label %if.end37.i

if.end33.i.out.i_crit_edge:                       ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i

if.end37.i:                                       ; preds = %if.end33.i
  br i1 %tobool35.not.i, label %if.end37.i.if.end48.i_crit_edge, label %if.then39.i

if.end37.i.if.end48.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48.i

if.then39.i:                                      ; preds = %if.end37.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fetched.i) #6
  %34 = ptrtoint ptr %fetched.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %fetched.i, align 4
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 128, ptr noundef nonnull @.str.28, i32 noundef %lk_ahd.0.i) #6
  %35 = ptrtoint ptr %htc_cnxt to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %htc_cnxt, align 4
  %call40.i = call i32 @ath6kl_htc_rxmsg_pending_handler(ptr noundef %36, i32 noundef %lk_ahd.0.i, ptr noundef nonnull %fetched.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %if.end43.i, label %cleanup.i

if.end43.i:                                       ; preds = %if.then39.i
  %37 = ptrtoint ptr %fetched.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %fetched.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool44.not.i = icmp eq i32 %38, 0
  br i1 %tobool44.not.i, label %if.then45.i, label %if.end43.i.cleanup.thread.i_crit_edge

if.end43.i.cleanup.thread.i_crit_edge:            ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread.i

if.then45.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %htc_cnxt to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %htc_cnxt, align 4
  %chk_irq_status_cnt.i = getelementptr inbounds %struct.htc_target, ptr %40, i32 0, i32 24
  %41 = ptrtoint ptr %chk_irq_status_cnt.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %chk_irq_status_cnt.i, align 4
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.then45.i, %if.end43.i.cleanup.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fetched.i) #6
  br label %if.end48.i

cleanup.i:                                        ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fetched.i) #6
  br label %out.i

if.end48.i:                                       ; preds = %cleanup.thread.i, %if.end37.i.if.end48.i_crit_edge
  %conv49.i = zext i8 %host_int_status.0.i to i32
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 128, ptr noundef nonnull @.str.29, i32 noundef %conv49.i) #6
  %42 = and i32 %conv49.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool52.not.i = icmp eq i32 %42, 0
  br i1 %tobool52.not.i, label %if.end48.i.if.end58.i_crit_edge, label %if.then53.i

if.end48.i.if.end58.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58.i

if.then53.i:                                      ; preds = %if.end48.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_buf.i.i) #6
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 128, ptr noundef nonnull @.str.35) #6
  %43 = ptrtoint ptr %cpu_int_status1.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %cpu_int_status1.i.i, align 1
  %45 = ptrtoint ptr %cpu_int_status_en.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %cpu_int_status_en.i.i, align 1
  %and73.i.i = and i8 %46, %44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and73.i.i)
  %tobool.not.i.i = icmp eq i8 %and73.i.i, 0
  br i1 %tobool.not.i.i, label %if.then53.i.ath6kl_hif_proc_cpu_intr.exit.thread.i_crit_edge, label %if.end20.i.i

if.then53.i.ath6kl_hif_proc_cpu_intr.exit.thread.i_crit_edge: ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath6kl_hif_proc_cpu_intr.exit.thread.i

if.end20.i.i:                                     ; preds = %if.then53.i
  %conv21.i.i = zext i8 %and73.i.i to i32
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 128, ptr noundef nonnull @.str.36, i32 noundef %conv21.i.i) #6
  %neg.i.i = xor i8 %and73.i.i, -1
  %47 = ptrtoint ptr %cpu_int_status1.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %cpu_int_status1.i.i, align 1
  %and26.i.i = and i8 %48, %neg.i.i
  store i8 %and26.i.i, ptr %cpu_int_status1.i.i, align 1
  %49 = ptrtoint ptr %reg_buf.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %and73.i.i, ptr %reg_buf.i.i, align 1
  %50 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %10, align 1
  %51 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %9, align 1
  %52 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %8, align 1
  %53 = ptrtoint ptr %ar.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ar.i, align 4
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 64, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 1025, ptr noundef nonnull %reg_buf.i.i, i32 noundef 4, i32 noundef 338) #6
  %hif_ops.i.i.i = getelementptr inbounds %struct.ath6kl, ptr %54, i32 0, i32 5
  %55 = ptrtoint ptr %hif_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hif_ops.i.i.i, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %call.i.i.i = call i32 %58(ptr noundef %54, i32 noundef 1025, ptr noundef nonnull %reg_buf.i.i, i32 noundef 4, i32 noundef 338) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool32.not.i.i, label %ath6kl_hif_proc_cpu_intr.exit.i, label %if.end20.i.i.ath6kl_hif_proc_cpu_intr.exit.thread.i_crit_edge, !prof !113

if.end20.i.i.ath6kl_hif_proc_cpu_intr.exit.thread.i_crit_edge: ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath6kl_hif_proc_cpu_intr.exit.thread.i

ath6kl_hif_proc_cpu_intr.exit.thread.i:           ; preds = %if.end20.i.i.ath6kl_hif_proc_cpu_intr.exit.thread.i_crit_edge, %if.then53.i.ath6kl_hif_proc_cpu_intr.exit.thread.i_crit_edge
  %.sink.i = phi i32 [ 354, %if.then53.i.ath6kl_hif_proc_cpu_intr.exit.thread.i_crit_edge ], [ 382, %if.end20.i.i.ath6kl_hif_proc_cpu_intr.exit.thread.i_crit_edge ]
  %retval.0.i.ph.i = phi i32 [ -5, %if.then53.i.ath6kl_hif_proc_cpu_intr.exit.thread.i_crit_edge ], [ %call.i.i.i, %if.end20.i.i.ath6kl_hif_proc_cpu_intr.exit.thread.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef %.sink.i, i32 noundef 9, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_buf.i.i) #6
  br label %out.i

ath6kl_hif_proc_cpu_intr.exit.i:                  ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_buf.i.i) #6
  br label %if.end58.i

if.end58.i:                                       ; preds = %ath6kl_hif_proc_cpu_intr.exit.i, %if.end48.i.if.end58.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %host_int_status.0.i)
  %tobool62.not.i = icmp sgt i8 %host_int_status.0.i, -1
  br i1 %tobool62.not.i, label %if.end58.i.if.end68.i_crit_edge, label %if.then63.i

if.end58.i.if.end68.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68.i

if.then63.i:                                      ; preds = %if.end58.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_buf.i126.i) #6
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 128, ptr noundef nonnull @.str.37) #6
  %59 = ptrtoint ptr %error_int_status1.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %error_int_status1.i.i, align 2
  %61 = and i8 %60, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool.not.i127.i = icmp eq i8 %61, 0
  br i1 %tobool.not.i127.i, label %if.then63.i.ath6kl_hif_proc_err_intr.exit.thread.i_crit_edge, label %if.end19.i.i

if.then63.i.ath6kl_hif_proc_err_intr.exit.thread.i_crit_edge: ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath6kl_hif_proc_err_intr.exit.thread.i

if.end19.i.i:                                     ; preds = %if.then63.i
  %conv20.i.i = zext i8 %61 to i32
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 128, ptr noundef nonnull @.str.38, i32 noundef %conv20.i.i) #6
  %62 = and i32 %conv20.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool23.not.i.i = icmp eq i32 %62, 0
  br i1 %tobool23.not.i.i, label %if.end19.i.i.if.end25.i.i_crit_edge, label %if.then24.i.i

if.end19.i.i.if.end25.i.i_crit_edge:              ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25.i.i

if.then24.i.i:                                    ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 128, ptr noundef nonnull @.str.39) #6
  br label %if.end25.i.i

if.end25.i.i:                                     ; preds = %if.then24.i.i, %if.end19.i.i.if.end25.i.i_crit_edge
  %63 = and i32 %conv20.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool29.not.i.i = icmp eq i32 %63, 0
  br i1 %tobool29.not.i.i, label %if.end25.i.i.if.end31.i.i_crit_edge, label %if.then30.i.i

if.end25.i.i.if.end31.i.i_crit_edge:              ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31.i.i

if.then30.i.i:                                    ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.40) #6
  br label %if.end31.i.i

if.end31.i.i:                                     ; preds = %if.then30.i.i, %if.end25.i.i.if.end31.i.i_crit_edge
  %and33.i.i = and i32 %conv20.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i.i)
  %tobool35.not.i.i = icmp eq i32 %and33.i.i, 0
  br i1 %tobool35.not.i.i, label %if.end31.i.i.if.end37.i.i_crit_edge, label %if.then36.i.i

if.end31.i.i.if.end37.i.i_crit_edge:              ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37.i.i

if.then36.i.i:                                    ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.41) #6
  br label %if.end37.i.i

if.end37.i.i:                                     ; preds = %if.then36.i.i, %if.end31.i.i.if.end37.i.i_crit_edge
  %neg.i129.i = xor i8 %61, -1
  %64 = ptrtoint ptr %error_int_status1.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %error_int_status1.i.i, align 2
  %and42.i.i = and i8 %65, %neg.i129.i
  store i8 %and42.i.i, ptr %error_int_status1.i.i, align 2
  %66 = ptrtoint ptr %reg_buf.i126.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %61, ptr %reg_buf.i126.i, align 1
  %67 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %11, align 1
  %68 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %12, align 1
  %69 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %13, align 1
  %70 = ptrtoint ptr %ar.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ar.i, align 4
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 64, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 1026, ptr noundef nonnull %reg_buf.i126.i, i32 noundef 4, i32 noundef 338) #6
  %hif_ops.i.i131.i = getelementptr inbounds %struct.ath6kl, ptr %71, i32 0, i32 5
  %72 = ptrtoint ptr %hif_ops.i.i131.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %hif_ops.i.i131.i, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 4
  %call.i.i132.i = call i32 %75(ptr noundef %71, i32 noundef 1026, ptr noundef nonnull %reg_buf.i126.i, i32 noundef 4, i32 noundef 338) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i132.i)
  %tobool48.not.i.i = icmp eq i32 %call.i.i132.i, 0
  br i1 %tobool48.not.i.i, label %ath6kl_hif_proc_err_intr.exit.i, label %if.end37.i.i.ath6kl_hif_proc_err_intr.exit.thread.i_crit_edge, !prof !113

if.end37.i.i.ath6kl_hif_proc_err_intr.exit.thread.i_crit_edge: ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath6kl_hif_proc_err_intr.exit.thread.i

ath6kl_hif_proc_err_intr.exit.thread.i:           ; preds = %if.end37.i.i.ath6kl_hif_proc_err_intr.exit.thread.i_crit_edge, %if.then63.i.ath6kl_hif_proc_err_intr.exit.thread.i_crit_edge
  %.sink143.i = phi i32 [ 309, %if.then63.i.ath6kl_hif_proc_err_intr.exit.thread.i_crit_edge ], [ 338, %if.end37.i.i.ath6kl_hif_proc_err_intr.exit.thread.i_crit_edge ]
  %retval.0.i133.ph.i = phi i32 [ -5, %if.then63.i.ath6kl_hif_proc_err_intr.exit.thread.i_crit_edge ], [ %call.i.i132.i, %if.end37.i.i.ath6kl_hif_proc_err_intr.exit.thread.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef %.sink143.i, i32 noundef 9, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_buf.i126.i) #6
  br label %out.i

ath6kl_hif_proc_err_intr.exit.i:                  ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_buf.i126.i) #6
  br label %if.end68.i

if.end68.i:                                       ; preds = %ath6kl_hif_proc_err_intr.exit.i, %if.end58.i.if.end68.i_crit_edge
  %76 = and i32 %conv49.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool72.not.i = icmp eq i32 %76, 0
  br i1 %tobool72.not.i, label %if.end68.i.out.i_crit_edge, label %if.then73.i

if.end68.i.out.i_crit_edge:                       ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i

if.then73.i:                                      ; preds = %if.end68.i
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 128, ptr noundef nonnull @.str.42) #6
  %77 = ptrtoint ptr %counter_int_status1.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %counter_int_status1.i.i, align 1
  %79 = ptrtoint ptr %cntr_int_status_en.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %cntr_int_status_en.i.i, align 1
  %and10.i.i = and i8 %80, %78
  %conv4.i.i = zext i8 %and10.i.i to i32
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 128, ptr noundef nonnull @.str.43, i32 noundef %conv4.i.i) #6
  %and6.i.i = and i32 %conv4.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool.not.i134.i = icmp eq i32 %and6.i.i, 0
  br i1 %tobool.not.i134.i, label %if.then73.i.out.i_crit_edge, label %if.then.i.i

if.then73.i.out.i_crit_edge:                      ; preds = %if.then73.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i

if.then.i.i:                                      ; preds = %if.then73.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i135.i = call fastcc i32 @ath6kl_hif_proc_dbg_intr(ptr noundef %3) #6
  br label %out.i

out.i:                                            ; preds = %if.then.i.i, %if.then73.i.out.i_crit_edge, %if.end68.i.out.i_crit_edge, %ath6kl_hif_proc_err_intr.exit.thread.i, %ath6kl_hif_proc_cpu_intr.exit.thread.i, %cleanup.i, %if.end33.i.out.i_crit_edge, %if.then.i.out.i_crit_edge
  %done.1 = phi i8 [ 0, %if.end68.i.out.i_crit_edge ], [ 0, %if.then73.i.out.i_crit_edge ], [ 0, %if.then.i.i ], [ 0, %ath6kl_hif_proc_err_intr.exit.thread.i ], [ 0, %ath6kl_hif_proc_cpu_intr.exit.thread.i ], [ 0, %cleanup.i ], [ 0, %if.then.i.out.i_crit_edge ], [ 1, %if.end33.i.out.i_crit_edge ]
  %status.4.i = phi i32 [ 0, %if.end68.i.out.i_crit_edge ], [ 0, %if.then73.i.out.i_crit_edge ], [ %call.i135.i, %if.then.i.i ], [ %retval.0.i133.ph.i, %ath6kl_hif_proc_err_intr.exit.thread.i ], [ %retval.0.i.ph.i, %ath6kl_hif_proc_cpu_intr.exit.thread.i ], [ %call40.i, %cleanup.i ], [ %call.i.i, %if.then.i.out.i_crit_edge ], [ 0, %if.end33.i.out.i_crit_edge ]
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 128, ptr noundef nonnull @.str.30) #6
  %81 = ptrtoint ptr %htc_cnxt to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %htc_cnxt, align 4
  %chk_irq_status_cnt77.i = getelementptr inbounds %struct.htc_target, ptr %82, i32 0, i32 24
  %83 = ptrtoint ptr %chk_irq_status_cnt77.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %chk_irq_status_cnt77.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool78.not.i = icmp eq i32 %84, 0
  %spec.select = select i1 %tobool78.not.i, i8 1, i8 %done.1
  %85 = zext i8 %spec.select to i32
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 128, ptr noundef nonnull @.str.31, i32 noundef %85, i32 noundef %status.4.i) #6
  %tobool3.not = icmp eq i32 %status.4.i, 0
  br i1 %tobool3.not, label %out.i.while.cond_crit_edge, label %out.i.while.end_crit_edge

out.i.while.end_crit_edge:                        ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

out.i.while.cond_crit_edge:                       ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

while.end:                                        ; preds = %out.i.while.end_crit_edge, %while.cond.while.end_crit_edge
  %status.1 = phi i32 [ %status.4.i, %out.i.while.end_crit_edge ], [ 0, %while.cond.while.end_crit_edge ]
  ret i32 %status.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_hif_disable_intrs(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %regs = alloca %struct.ath6kl_irq_enable_reg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regs) #6
  tail call void @_raw_spin_lock_bh(ptr noundef %dev) #6
  %irq_en_reg = getelementptr inbounds %struct.ath6kl_device, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %irq_en_reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %irq_en_reg, align 4
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %regs, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %dev) #6
  %ar = getelementptr inbounds %struct.ath6kl_device, ptr %dev, i32 0, i32 4
  %2 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ar, align 4
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 64, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 1048, ptr noundef nonnull %regs, i32 noundef 4, i32 noundef 594) #6
  %hif_ops.i = getelementptr inbounds %struct.ath6kl, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %hif_ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hif_ops.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call.i = call i32 %7(ptr noundef %3, i32 noundef 1048, ptr noundef nonnull %regs, i32 noundef 4, i32 noundef 594) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regs) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_hif_unmask_intrs(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %regs.i4 = alloca %struct.ath6kl_irq_enable_reg, align 4
  %regs.i = alloca %struct.ath6kl_irq_enable_reg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regs.i) #6
  tail call void @_raw_spin_lock_bh(ptr noundef %dev) #6
  %irq_en_reg.i = getelementptr inbounds %struct.ath6kl_device, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %irq_en_reg.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %irq_en_reg.i, align 4
  %1 = ptrtoint ptr %regs.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %regs.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %dev) #6
  %ar.i = getelementptr inbounds %struct.ath6kl_device, ptr %dev, i32 0, i32 4
  %2 = ptrtoint ptr %ar.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ar.i, align 4
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 64, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 1048, ptr noundef nonnull %regs.i, i32 noundef 4, i32 noundef 594) #6
  %hif_ops.i.i = getelementptr inbounds %struct.ath6kl, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %hif_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hif_ops.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call.i.i = call i32 %7(ptr noundef %3, i32 noundef 1048, ptr noundef nonnull %regs.i, i32 noundef 4, i32 noundef 594) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regs.i) #6
  %8 = ptrtoint ptr %ar.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ar.i, align 4
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 64, ptr noundef nonnull @.str.44) #6
  %hif_ops.i = getelementptr inbounds %struct.ath6kl, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %hif_ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hif_ops.i, align 4
  %irq_enable.i = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %irq_enable.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %irq_enable.i, align 4
  call void %13(ptr noundef %9) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regs.i4) #6
  call void @_raw_spin_lock_bh(ptr noundef %dev) #6
  %14 = ptrtoint ptr %irq_en_reg.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -47, ptr %irq_en_reg.i, align 4
  %cpu_int_status_en.i = getelementptr inbounds %struct.ath6kl_device, ptr %dev, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %cpu_int_status_en.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %cpu_int_status_en.i, align 1
  %err_int_status_en.i = getelementptr inbounds %struct.ath6kl_device, ptr %dev, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %err_int_status_en.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 3, ptr %err_int_status_en.i, align 2
  %cntr_int_status_en.i = getelementptr inbounds %struct.ath6kl_device, ptr %dev, i32 0, i32 2, i32 3
  %17 = ptrtoint ptr %cntr_int_status_en.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %cntr_int_status_en.i, align 1
  %18 = load i32, ptr %irq_en_reg.i, align 4
  %19 = ptrtoint ptr %regs.i4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %regs.i4, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %dev) #6
  %20 = ptrtoint ptr %ar.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ar.i, align 4
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 64, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 1048, ptr noundef nonnull %regs.i4, i32 noundef 4, i32 noundef 594) #6
  %hif_ops.i.i7 = getelementptr inbounds %struct.ath6kl, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %hif_ops.i.i7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hif_ops.i.i7, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %call.i.i8 = call i32 %25(ptr noundef %21, i32 noundef 1048, ptr noundef nonnull %regs.i4, i32 noundef 4, i32 noundef 594) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i8)
  %tobool.not.i = icmp eq i32 %call.i.i8, 0
  br i1 %tobool.not.i, label %entry.ath6kl_hif_enable_intrs.exit_crit_edge, label %if.then.i

entry.ath6kl_hif_enable_intrs.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath6kl_hif_enable_intrs.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.45, i32 noundef %call.i.i8) #6
  br label %ath6kl_hif_enable_intrs.exit

ath6kl_hif_enable_intrs.exit:                     ; preds = %if.then.i, %entry.ath6kl_hif_enable_intrs.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regs.i4) #6
  ret i32 %call.i.i8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_hif_mask_intrs(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %regs.i = alloca %struct.ath6kl_irq_enable_reg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ar = getelementptr inbounds %struct.ath6kl_device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar, align 4
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 64, ptr noundef nonnull @.str.46) #6
  %hif_ops.i = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %hif_ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hif_ops.i, align 4
  %irq_disable.i = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %irq_disable.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_disable.i, align 4
  tail call void %5(ptr noundef %1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regs.i) #6
  tail call void @_raw_spin_lock_bh(ptr noundef %dev) #6
  %irq_en_reg.i = getelementptr inbounds %struct.ath6kl_device, ptr %dev, i32 0, i32 2
  %6 = ptrtoint ptr %irq_en_reg.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %irq_en_reg.i, align 4
  %7 = ptrtoint ptr %regs.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %regs.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %dev) #6
  %8 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ar, align 4
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 64, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 1048, ptr noundef nonnull %regs.i, i32 noundef 4, i32 noundef 594) #6
  %hif_ops.i.i = getelementptr inbounds %struct.ath6kl, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %hif_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hif_ops.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %call.i.i = call i32 %13(ptr noundef %9, i32 noundef 1048, ptr noundef nonnull %regs.i, i32 noundef 4, i32 noundef 594) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regs.i) #6
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_hif_setup(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %regs.i = alloca %struct.ath6kl_irq_enable_reg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__raw_spin_lock_init(ptr noundef %dev, ptr noundef nonnull @.str.12, ptr noundef nonnull @ath6kl_hif_setup.__key, i16 noundef signext 3) #6
  %ar = getelementptr inbounds %struct.ath6kl_device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar, align 4
  %block_size = getelementptr inbounds %struct.ath6kl, ptr %1, i32 0, i32 73, i32 3
  %2 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %block_size, align 4
  %htc_cnxt = getelementptr inbounds %struct.ath6kl_device, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %htc_cnxt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %htc_cnxt, align 4
  %block_sz = getelementptr inbounds %struct.htc_target, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %block_sz to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %block_sz, align 4
  %7 = load ptr, ptr %htc_cnxt, align 4
  %block_sz2 = getelementptr inbounds %struct.htc_target, ptr %7, i32 0, i32 20
  %8 = ptrtoint ptr %block_sz2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %block_sz2, align 4
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9), !range !114
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp.not = icmp ult i32 %10, 2
  br i1 %cmp.not, label %if.end23, label %do.end11

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 684, i32 noundef 9, ptr noundef null) #6
  br label %fail_setup

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sub = add i32 %9, -1
  %block_mask = getelementptr inbounds %struct.htc_target, ptr %7, i32 0, i32 21
  %11 = ptrtoint ptr %block_mask to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub, ptr %block_mask, align 4
  %12 = ptrtoint ptr %htc_cnxt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %htc_cnxt, align 4
  %block_sz29 = getelementptr inbounds %struct.htc_target, ptr %13, i32 0, i32 20
  %14 = ptrtoint ptr %block_sz29 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %block_sz29, align 4
  %16 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ar, align 4
  %mbox_info31 = getelementptr inbounds %struct.ath6kl, ptr %17, i32 0, i32 73
  %18 = ptrtoint ptr %mbox_info31 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mbox_info31, align 4
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 64, ptr noundef nonnull @.str.14, i32 noundef %15, i32 noundef %19) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regs.i) #6
  tail call void @_raw_spin_lock_bh(ptr noundef %dev) #6
  %irq_en_reg.i = getelementptr inbounds %struct.ath6kl_device, ptr %dev, i32 0, i32 2
  %20 = ptrtoint ptr %irq_en_reg.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %irq_en_reg.i, align 4
  %21 = ptrtoint ptr %regs.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %regs.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %dev) #6
  %22 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ar, align 4
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 64, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 1048, ptr noundef nonnull %regs.i, i32 noundef 4, i32 noundef 594) #6
  %hif_ops.i.i = getelementptr inbounds %struct.ath6kl, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %hif_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hif_ops.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %call.i.i = call i32 %27(ptr noundef %23, i32 noundef 1048, ptr noundef nonnull %regs.i, i32 noundef 4, i32 noundef 594) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regs.i) #6
  br label %fail_setup

fail_setup:                                       ; preds = %if.end23, %do.end11
  %status.0 = phi i32 [ -22, %do.end11 ], [ %call.i.i, %if.end23 ]
  ret i32 %status.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_warn(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_read_fwlogs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_recovery_err_notify(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_diag_read32(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_diag_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_info(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_dump_registers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ath6kl_sdio_irq(ptr noundef %buf) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath6kl_sdio_irq, i32 0, i32 1), ptr blockaddress(@trace_ath6kl_sdio_irq, %do.body)) #6
          to label %if.end48 [label %do.body], !srcloc !115

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !101) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !113

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  %9 = tail call i32 @llvm.read_register.i32(metadata !101) #6
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !116
  %call42 = tail call i32 @__traceiter_ath6kl_sdio_irq(ptr noundef null, ptr noundef %buf, i32 noundef 4) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !117
  %13 = tail call i32 @llvm.read_register.i32(metadata !101) #6
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !101) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !113

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !101) #6
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !118
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath6kl_sdio_irq, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath6kl_sdio_irq, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_ath6kl_sdio_irq.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @trace_ath6kl_sdio_irq.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.32, i32 noundef 192, ptr noundef nonnull @.str.33) #6
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !119
  %31 = tail call i32 @llvm.read_register.i32(metadata !101) #6
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
declare dso_local i32 @ath6kl_htc_rxmsg_pending_handler(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ath6kl_sdio_irq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !72, !73, !74, !76, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99}
!llvm.named.register.sp = !{!101}
!llvm.module.flags = !{!102, !103, !104, !105, !106, !107, !108, !109}
!llvm.ident = !{!110}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath6kl/hif.c", i32 57, i32 29}
!2 = !{ptr @__ksymtab_ath6kl_hif_rw_comp_handler, !3, !"__ksymtab_ath6kl_hif_rw_comp_handler", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath6kl/hif.c", i32 65, i32 1}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/ath6kl/hif.c", i32 156, i32 15}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/ath6kl/hif.c", i32 177, i32 30}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/ath6kl/hif.c", i32 181, i32 14}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/ath6kl/hif.c", i32 205, i32 29}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/ath6kl/hif.c", i32 206, i32 18}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ath/ath6kl/hif.c", i32 206, i32 29}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ath/ath6kl/hif.c", i32 248, i32 6}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ath/ath6kl/hif.c", i32 250, i32 30}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ath/ath6kl/hif.c", i32 250, i32 40}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ath/ath6kl/hif.c", i32 251, i32 15}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ath/ath6kl/hif.c", i32 251, i32 22}
!26 = !{ptr @__ksymtab_ath6kl_hif_intr_bh_handler, !27, !"__ksymtab_ath6kl_hif_intr_bh_handler", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ath/ath6kl/hif.c", i32 566, i32 1}
!28 = !{ptr @ath6kl_hif_setup.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ath/ath6kl/hif.c", i32 673, i32 2}
!30 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/ath/ath6kl/hif.c", i32 684, i32 3}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/ath/ath6kl/hif.c", i32 692, i32 29}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/ath/ath6kl/hif-ops.h", i32 28, i32 6}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/ath/ath6kl/hif-ops.h", i32 29, i32 30}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/ath/ath6kl/hif-ops.h", i32 29, i32 40}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/ath/ath6kl/hif.c", i32 122, i32 14}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/ath/ath6kl/hif.c", i32 131, i32 15}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/ath/ath6kl/hif.c", i32 84, i32 15}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/ath/ath6kl/hif.c", i32 89, i32 29}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/ath/ath6kl/hif.c", i32 97, i32 15}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/ath/ath6kl/hif.c", i32 101, i32 14}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/ath/ath6kl/hif.c", i32 102, i32 14}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/ath/ath6kl/hif.c", i32 108, i32 15}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/ath/ath6kl/hif.c", i32 396, i32 29}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/ath/ath6kl/hif.c", i32 454, i32 17}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/ath/ath6kl/hif.c", i32 468, i32 7}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/ath/ath6kl/hif.c", i32 492, i32 6}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/ath/ath6kl/hif.c", i32 528, i32 6}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/ath/ath6kl/hif.c", i32 534, i32 6}
!69 = distinct !{null, !70, !"__already_done", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/ath/ath6kl/trace.h", i32 174, i32 1}
!71 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!72 = distinct !{null, !70, !"__warned", i1 false, i1 false}
!73 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!74 = distinct !{null, !75, !"__already_done", i1 false, i1 false}
!75 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!76 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/ath/ath6kl/hif.c", i32 349, i32 29}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/ath/ath6kl/hif.c", i32 359, i32 6}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/ath/ath6kl/hif.c", i32 305, i32 29}
!83 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/ath/ath6kl/hif.c", i32 314, i32 6}
!85 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/ath/ath6kl/hif.c", i32 318, i32 30}
!87 = !{ptr @.str.40, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/ath/ath6kl/hif.c", i32 321, i32 14}
!89 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/ath/ath6kl/hif.c", i32 324, i32 14}
!91 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/ath/ath6kl/hif.c", i32 279, i32 29}
!93 = !{ptr @.str.43, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/ath/ath6kl/hif.c", i32 285, i32 6}
!95 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/ath/ath6kl/hif-ops.h", i32 48, i32 29}
!97 = !{ptr @.str.45, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/ath/ath6kl/hif.c", i32 610, i32 14}
!99 = !{ptr @.str.46, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/ath/ath6kl/hif-ops.h", i32 55, i32 29}
!101 = !{!"sp"}
!102 = !{i32 1, !"wchar_size", i32 2}
!103 = !{i32 1, !"min_enum_size", i32 4}
!104 = !{i32 8, !"branch-target-enforcement", i32 0}
!105 = !{i32 8, !"sign-return-address", i32 0}
!106 = !{i32 8, !"sign-return-address-all", i32 0}
!107 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!108 = !{i32 7, !"uwtable", i32 1}
!109 = !{i32 7, !"frame-pointer", i32 2}
!110 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!111 = !{!"auto-init"}
!112 = !{i8 0, i8 2}
!113 = !{!"branch_weights", i32 2000, i32 1}
!114 = !{i32 0, i32 33}
!115 = !{i64 2149067928, i64 2149067933, i64 2149067946, i64 2149067990, i64 2149068024, i64 2149068045}
!116 = !{i64 2157354736}
!117 = !{i64 2157354953}
!118 = !{i64 2149625247}
!119 = !{i64 2149626283}
