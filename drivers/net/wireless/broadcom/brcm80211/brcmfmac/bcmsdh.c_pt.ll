; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.sdio_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sdio_device_id = type { i8, i16, i16, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.brcmf_sdio_dev = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spinlock, i8, i32, i16, i32, i32, %struct.sg_table, [320 x i8], [320 x i8], i8, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.brcmf_mp_device = type { i8, i32, i32, i8, i8, i8, ptr, ptr, %union.anon.131 }
%union.anon.131 = type { %struct.brcmfmac_sdio_pd }
%struct.brcmfmac_sdio_pd = type { i32, i32, i8, i32, i32, i8, i16, i16, ptr }
%struct.sdio_func = type { ptr, %struct.device, ptr, i32, i8, i16, i16, i32, i32, i32, i32, ptr, i8, i8, i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.brcmf_bus = type { %union.anon.103, i32, ptr, ptr, i32, %struct.brcmf_bus_stats, i32, i32, i32, i8, i8, ptr, ptr }
%union.anon.103 = type { ptr }
%struct.brcmf_bus_stats = type { %struct.atomic_t, %struct.atomic_t }
%struct.brcmf_core = type { i16, i16, i32 }
%struct.sk_buff = type { %union.anon.42, %union.anon.45, %union.anon.46, [48 x i8], %union.anon.47, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.49, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.42 = type { %struct.anon.43 }
%struct.anon.43 = type { ptr, ptr, %union.anon.44 }
%union.anon.44 = type { ptr }
%union.anon.45 = type { ptr }
%union.anon.46 = type { i64 }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type { i32, ptr }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.51, i32, i32, i32, i16, i16, %union.anon.53, i32, %union.anon.54, %union.anon.55, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.51 = type { i32 }
%union.anon.53 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i16 }
%struct.sk_buff_head = type { %union.anon.63, i32, %struct.spinlock }
%union.anon.63 = type { %struct.anon.64 }
%struct.anon.64 = type { ptr, ptr }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32, ptr, i32 }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.100, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.100 = type { %struct.atomic_t }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, %struct.fault_attr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, %struct.blk_crypto_profile, i8, [15 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.mmc_supply = type { ptr, ptr }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.brcmf_sdiod_freezer = type { %struct.atomic_t, %struct.atomic_t, i32, %struct.wait_queue_head, %struct.completion }
%struct.mmc_card = type { ptr, %struct.device, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i8, [4 x i32], [4 x i32], [2 x i32], [16 x i32], %struct.mmc_cid, %struct.mmc_csd, %struct.mmc_ext_csd, %struct.sd_scr, %struct.sd_ssr, %struct.sd_switch_caps, %struct.sd_ext_reg, %struct.sd_ext_reg, i32, %struct.atomic_t, %struct.sdio_cccr, %struct.sdio_cis, [7 x ptr], ptr, i8, i8, i32, ptr, ptr, i32, i32, i32, ptr, [7 x %struct.mmc_part], i32, ptr }
%struct.mmc_cid = type { i32, [8 x i8], i8, i32, i16, i16, i8, i8, i8 }
%struct.mmc_csd = type { i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.mmc_ext_csd = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i8, i8, i32, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, i8, i32 }
%struct.sd_scr = type { i8, i8, i8, i8, i8, i8 }
%struct.sd_ssr = type { i32, i32, i32 }
%struct.sd_switch_caps = type { i32, i32, i32, i32, i32 }
%struct.sd_ext_reg = type { i8, i8, i16, i8, i8, i8 }
%struct.sdio_cccr = type { i32, i32, i8 }
%struct.sdio_cis = type { i16, i16, i16, i32 }
%struct.mmc_part = type { i64, i32, [20 x i8], i8, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__func__.brcmf_sdiod_intr_register = private unnamed_addr constant [26 x i8] c"brcmf_sdiod_intr_register\00", align 1
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Enter, register OOB IRQ %d\0A\00", [36 x i8] zeroinitializer }, align 32
@brcmf_sdiod_intr_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&sdiodev->irq_en_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"brcmf_oob_intr\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"request_irq failed %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"enable_irq_wake failed %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Entering\0A\00", [22 x i8] zeroinitializer }, align 32
@__func__.brcmf_sdiod_intr_unregister = private unnamed_addr constant [28 x i8] c"brcmf_sdiod_intr_unregister\00", align 1
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Entering oob=%d sd=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@__func__.brcmf_sdiod_change_state = private unnamed_addr constant [25 x i8] c"brcmf_sdiod_change_state\00", align 1
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%d -> %d\0A\00", [22 x i8] zeroinitializer }, align 32
@__func__.brcmf_sdiod_recv_buf = private unnamed_addr constant [21 x i8] c"brcmf_sdiod_recv_buf\00", align 1
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"brcmu_pkt_buf_get_skb failed: len %d\0A\00", [58 x i8] zeroinitializer }, align 32
@__func__.brcmf_sdiod_recv_pkt = private unnamed_addr constant [21 x i8] c"brcmf_sdiod_recv_pkt\00", align 1
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"addr = 0x%x, size = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@__func__.brcmf_sdiod_recv_chain = private unnamed_addr constant [23 x i8] c"brcmf_sdiod_recv_chain\00", align 1
@__func__.brcmf_sdiod_send_buf = private unnamed_addr constant [21 x i8] c"brcmf_sdiod_send_buf\00", align 1
@__func__.brcmf_sdiod_send_pkt = private unnamed_addr constant [21 x i8] c"brcmf_sdiod_send_pkt\00", align 1
@__func__.brcmf_sdiod_ramrw = private unnamed_addr constant [18 x i8] c"brcmf_sdiod_ramrw\00", align 1
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dev_alloc_skb failed: len %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s %d bytes at offset 0x%08x in window 0x%08x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"membytes transfer failed\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.brcmf_sdiod_abort = private unnamed_addr constant [18 x i8] c"brcmf_sdiod_abort\00", align 1
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Enter\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Exit\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c\00", [38 x i8] zeroinitializer }, align 32
@__func__.brcmf_sdiod_sgtable_alloc = private unnamed_addr constant [26 x i8] c"brcmf_sdiod_sgtable_alloc\00", align 1
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nents=%d\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"allocation failed: disable scatter-gather\00", [54 x i8] zeroinitializer }, align 32
@__func__.brcmf_sdiod_probe = private unnamed_addr constant [18 x i8] c"brcmf_sdiod_probe\00", align 1
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to set F1 blocksize\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to set F2 blocksize\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"set F2 blocksize to %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to enable F1: err=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@__func__.brcmf_sdio_wowl_config = private unnamed_addr constant [23 x i8] c"brcmf_sdio_wowl_config\00", align 1
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Configuring WOWL, enabled=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@brcmf_sdmmc_driver = internal global { %struct.sdio_driver, [36 x i8] } { %struct.sdio_driver { ptr @.str.31, ptr @brcmf_sdmmc_ids, ptr @brcmf_ops_sdio_probe, ptr @brcmf_ops_sdio_remove, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @brcmf_sdio_pm_ops, ptr @brcmf_dev_coredump, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__func__.brcmf_sdio_exit = private unnamed_addr constant [16 x i8] c"brcmf_sdio_exit\00", align 1
@__func__.brcmf_sdiod_oob_irqhandler = private unnamed_addr constant [27 x i8] c"brcmf_sdiod_oob_irqhandler\00", align 1
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"OOB intr triggered\0A\00", [44 x i8] zeroinitializer }, align 32
@__func__.brcmf_sdiod_ib_irqhandler = private unnamed_addr constant [26 x i8] c"brcmf_sdiod_ib_irqhandler\00", align 1
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IB intr triggered\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"invalid sdio function number: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__func__.mmc_submit_one = private unnamed_addr constant [15 x i8] c"mmc_submit_one\00", align 1
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"CMD53 sg block %s failed %d\0A\00", [35 x i8] zeroinitializer }, align 32
@brcmf_sdiod_freezer_attach.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"&sdiodev->freezer->thread_freeze\00", [63 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"brcmfmac\00", [23 x i8] zeroinitializer }, align 32
@brcmf_sdmmc_ids = internal constant { [22 x %struct.sdio_device_id], [88 x i8] } { [22 x %struct.sdio_device_id] [%struct.sdio_device_id { i8 -1, i16 720, i16 -22393, i32 0 }, %struct.sdio_device_id { i8 -1, i16 720, i16 17188, i32 0 }, %struct.sdio_device_id { i8 -1, i16 720, i16 17193, i32 0 }, %struct.sdio_device_id { i8 -1, i16 720, i16 17200, i32 0 }, %struct.sdio_device_id { i8 -1, i16 720, i16 17204, i32 0 }, %struct.sdio_device_id { i8 -1, i16 720, i16 -22196, i32 0 }, %struct.sdio_device_id { i8 -1, i16 720, i16 -22195, i32 0 }, %struct.sdio_device_id { i8 -1, i16 720, i16 -22174, i32 0 }, %struct.sdio_device_id { i8 -1, i16 720, i16 -22108, i32 0 }, %struct.sdio_device_id { i8 -1, i16 720, i16 17205, i32 0 }, %struct.sdio_device_id { i8 -1, i16 720, i16 17209, i32 0 }, %struct.sdio_device_id { i8 -1, i16 720, i16 -22106, i32 0 }, %struct.sdio_device_id { i8 -1, i16 720, i16 17221, i32 0 }, %struct.sdio_device_id { i8 -1, i16 720, i16 -22081, i32 0 }, %struct.sdio_device_id { i8 -1, i16 720, i16 17236, i32 0 }, %struct.sdio_device_id { i8 -1, i16 720, i16 17238, i32 0 }, %struct.sdio_device_id { i8 -1, i16 720, i16 17241, i32 0 }, %struct.sdio_device_id { i8 -1, i16 720, i16 17267, i32 0 }, %struct.sdio_device_id { i8 -1, i16 720, i16 -22524, i32 0 }, %struct.sdio_device_id { i8 -1, i16 720, i16 -21784, i32 0 }, %struct.sdio_device_id { i8 -1, i16 720, i16 17237, i32 0 }, %struct.sdio_device_id zeroinitializer], [88 x i8] zeroinitializer }, align 32
@brcmf_sdio_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @brcmf_ops_sdio_suspend, ptr @brcmf_ops_sdio_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__func__.brcmf_ops_sdio_probe = private unnamed_addr constant [21 x i8] c"brcmf_ops_sdio_probe\00", align 1
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Class=%x\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sdio vendor ID: 0x%04x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sdio device ID: 0x%04x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Function#: %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"F2 found, calling brcmf_sdiod_probe...\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"F2 error, probe failed %d...\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"F2 init completed...\0A\00", [42 x i8] zeroinitializer }, align 32
@__func__.brcmf_ops_sdio_remove = private unnamed_addr constant [22 x i8] c"brcmf_ops_sdio_remove\00", align 1
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Function: %d\0A\00", [18 x i8] zeroinitializer }, align 32
@__func__.brcmf_ops_sdio_suspend = private unnamed_addr constant [23 x i8] c"brcmf_ops_sdio_suspend\00", align 1
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Enter: F%d\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to set pm_flags %x\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__.brcmf_ops_sdio_resume = private unnamed_addr constant [22 x i8] c"brcmf_ops_sdio_resume\00", align 1
@.str.43 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to probe device on resume\0A\00", [62 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967173]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967173]
@__sancov_gen_cov_switch_values.47 = internal global [7 x i64] [i64 5, i64 16, i64 17193, i64 17236, i64 17238, i64 17241, i64 17267]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967173]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 106, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 108, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 112, i32 29 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 115, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 122, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 157, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 171, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 206, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 526, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 544, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 675, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 696, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 715, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 741, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 746, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 775, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 777, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 780, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 912, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 934, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 938, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 948, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 1123, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant [19 x i8] c"brcmf_sdmmc_driver\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 1208, i32 27 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 67, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 87, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 305, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 357, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 795, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.154 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 87, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 1211, i32 10 }
@___asan_gen_.159 = private unnamed_addr constant [16 x i8] c"brcmf_sdmmc_ids\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 974, i32 36 }
@___asan_gen_.162 = private unnamed_addr constant [18 x i8] c"brcmf_sdio_pm_ops\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 1202, i32 32 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 1022, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 1023, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 1024, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 1025, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 1067, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 1070, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 1074, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 1093, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 1137, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 1161, i32 4 }
@___asan_gen_.195 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.196 = private constant [61 x i8] c"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 1190, i32 4 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @.str, ptr @brcmf_sdiod_intr_register.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @brcmf_sdmmc_driver, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @brcmf_sdiod_freezer_attach.__key, ptr @.str.29, ptr @init_completion.__key, ptr @.str.30, ptr @.str.31, ptr @brcmf_sdmmc_ids, ptr @brcmf_sdio_pm_ops, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_sdiod_intr_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_sdmmc_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_sdiod_freezer_attach.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_sdmmc_ids to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_sdio_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_sdiod_intr_register(ptr noundef %sdiodev) local_unnamed_addr #0 align 64 {
entry:
  %retval.i = alloca i32, align 4
  %retval1.i = alloca i32, align 4
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #7
  %settings = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 7
  %0 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %settings, align 4
  %oob_irq_supported = getelementptr inbounds %struct.brcmf_mp_device, ptr %1, i32 0, i32 8, i32 0, i32 2
  %2 = ptrtoint ptr %oob_irq_supported to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %oob_irq_supported, align 4, !range !132
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %do.body44, label %do.body

do.body:                                          ; preds = %entry
  %oob_irq_nr = getelementptr inbounds %struct.brcmf_mp_device, ptr %1, i32 0, i32 8, i32 0, i32 3
  %4 = ptrtoint ptr %oob_irq_nr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %oob_irq_nr, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_sdiod_intr_register, ptr noundef nonnull @.str, i32 noundef %5) #7
  %irq_en_lock = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 11
  tail call void @__raw_spin_lock_init(ptr noundef %irq_en_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @brcmf_sdiod_intr_register.__key, i16 noundef signext 3) #7
  %irq_en = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 10
  %6 = ptrtoint ptr %irq_en to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %irq_en, align 2
  %7 = ptrtoint ptr %oob_irq_nr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %oob_irq_nr, align 4
  %oob_irq_flags = getelementptr inbounds %struct.brcmf_mp_device, ptr %1, i32 0, i32 8, i32 0, i32 4
  %9 = ptrtoint ptr %oob_irq_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %oob_irq_flags, align 4
  %11 = ptrtoint ptr %sdiodev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sdiodev, align 4
  %dev = getelementptr inbounds %struct.sdio_func, ptr %12, i32 0, i32 1
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %8, ptr noundef nonnull @brcmf_sdiod_oob_irqhandler, ptr noundef null, i32 noundef %10, ptr noundef nonnull @.str.2, ptr noundef %dev) #7
  %13 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call.i, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %if.end, label %do.body7

do.body7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdiod_intr_register, ptr noundef nonnull @.str.3, i32 noundef %call.i) #7
  %14 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ret, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body
  %oob_irq_requested = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 8
  %16 = ptrtoint ptr %oob_irq_requested to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %oob_irq_requested, align 4
  %17 = ptrtoint ptr %oob_irq_nr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %oob_irq_nr, align 4
  %call.i90 = tail call i32 @irq_set_irq_wake(i32 noundef %18, i32 noundef 1) #7
  %19 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call.i90, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i90)
  %cmp12.not = icmp eq i32 %call.i90, 0
  br i1 %cmp12.not, label %if.end17, label %do.body14

do.body14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdiod_intr_register, ptr noundef nonnull @.str.4, i32 noundef %call.i90) #7
  %20 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ret, align 4
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %22 = ptrtoint ptr %oob_irq_nr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %oob_irq_nr, align 4
  %call.i91 = tail call i32 @irq_set_irq_wake(i32 noundef %23, i32 noundef 0) #7
  %24 = ptrtoint ptr %sdiodev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sdiodev, align 4
  tail call void @sdio_claim_host(ptr noundef %25) #7
  %bus_if = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 6
  %26 = ptrtoint ptr %bus_if to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bus_if, align 4
  %chip = getelementptr inbounds %struct.brcmf_bus, ptr %27, i32 0, i32 7
  %28 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 43362, i32 %29)
  %cmp21 = icmp eq i32 %29, 43362
  br i1 %cmp21, label %if.then22, label %if.end17.if.end29_crit_edge

if.end17.if.end29_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then22:                                        ; preds = %if.end17
  %30 = ptrtoint ptr %sdiodev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sdiodev, align 4
  %device = getelementptr inbounds %struct.sdio_func, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %device, align 4
  %call24 = tail call i32 @brcmf_chip_enum_base(i16 noundef zeroext %33) #7
  %add = add i32 %call24, 108
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval1.i) #7
  %call.i92 = tail call fastcc i32 @brcmf_sdiod_set_backplane_window(ptr noundef %sdiodev, i32 noundef %add) #7
  %34 = ptrtoint ptr %retval1.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call.i92, ptr %retval1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92)
  %tobool.not.i = icmp eq i32 %call.i92, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then22.brcmf_sdiod_readl.exit_crit_edge

if.then22.brcmf_sdiod_readl.exit_crit_edge:       ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %brcmf_sdiod_readl.exit

if.end.i:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  %and.i = and i32 %add, 32767
  %or.i = or i32 %and.i, 32768
  %35 = ptrtoint ptr %sdiodev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sdiodev, align 4
  %call2.i = call i32 @sdio_readl(ptr noundef %36, i32 noundef %or.i, ptr noundef nonnull %retval1.i) #7
  %phi.bo = or i32 %call2.i, 2
  br label %brcmf_sdiod_readl.exit

brcmf_sdiod_readl.exit:                           ; preds = %if.end.i, %if.then22.brcmf_sdiod_readl.exit_crit_edge
  %data.0.i = phi i32 [ 2, %if.then22.brcmf_sdiod_readl.exit_crit_edge ], [ %phi.bo, %if.end.i ]
  %37 = ptrtoint ptr %retval1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %retval1.i, align 4
  %39 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %ret, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval1.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i) #7
  %call.i93 = call fastcc i32 @brcmf_sdiod_set_backplane_window(ptr noundef %sdiodev, i32 noundef %add) #7
  %40 = ptrtoint ptr %retval.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call.i93, ptr %retval.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93)
  %tobool.not.i94 = icmp eq i32 %call.i93, 0
  br i1 %tobool.not.i94, label %if.end.i97, label %brcmf_sdiod_readl.exit.brcmf_sdiod_writel.exit_crit_edge

brcmf_sdiod_readl.exit.brcmf_sdiod_writel.exit_crit_edge: ; preds = %brcmf_sdiod_readl.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %brcmf_sdiod_writel.exit

if.end.i97:                                       ; preds = %brcmf_sdiod_readl.exit
  call void @__sanitizer_cov_trace_pc() #9
  %and.i95 = and i32 %add, 32767
  %or.i96 = or i32 %and.i95, 32768
  %41 = ptrtoint ptr %sdiodev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sdiodev, align 4
  call void @sdio_writel(ptr noundef %42, i32 noundef %data.0.i, i32 noundef %or.i96, ptr noundef nonnull %retval.i) #7
  br label %brcmf_sdiod_writel.exit

brcmf_sdiod_writel.exit:                          ; preds = %if.end.i97, %brcmf_sdiod_readl.exit.brcmf_sdiod_writel.exit_crit_edge
  %43 = ptrtoint ptr %retval.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %retval.i, align 4
  %45 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %ret, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i) #7
  %46 = ptrtoint ptr %sdiodev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sdiodev, align 4
  call void @sdio_writeb(ptr noundef %47, i8 noundef zeroext 15, i32 noundef 65541, ptr noundef nonnull %ret) #7
  %48 = ptrtoint ptr %sdiodev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sdiodev, align 4
  call void @sdio_writeb(ptr noundef %49, i8 noundef zeroext 0, i32 noundef 65542, ptr noundef nonnull %ret) #7
  %50 = ptrtoint ptr %sdiodev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sdiodev, align 4
  call void @sdio_writeb(ptr noundef %51, i8 noundef zeroext 2, i32 noundef 65543, ptr noundef nonnull %ret) #7
  br label %if.end29

if.end29:                                         ; preds = %brcmf_sdiod_writel.exit, %if.end17.if.end29_crit_edge
  %52 = ptrtoint ptr %sdiodev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sdiodev, align 4
  %call31 = call zeroext i8 @sdio_f0_readb(ptr noundef %53, i32 noundef 4, ptr noundef nonnull %ret) #7
  %54 = or i8 %call31, 7
  %55 = ptrtoint ptr %sdiodev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %sdiodev, align 4
  call void @sdio_f0_writeb(ptr noundef %56, i8 noundef zeroext %54, i32 noundef 4, ptr noundef nonnull %ret) #7
  %57 = ptrtoint ptr %oob_irq_flags to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %oob_irq_flags, align 4
  %and = and i32 %58, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool36.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool36.not, i8 3, i8 7
  %59 = ptrtoint ptr %sdiodev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %sdiodev, align 4
  call void @sdio_f0_writeb(ptr noundef %60, i8 noundef zeroext %spec.select, i32 noundef 242, ptr noundef nonnull %ret) #7
  %61 = ptrtoint ptr %sdiodev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sdiodev, align 4
  call void @sdio_release_host(ptr noundef %62) #7
  br label %cleanup

do.body44:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_sdiod_intr_register, ptr noundef nonnull @.str.5) #7
  %63 = ptrtoint ptr %sdiodev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %sdiodev, align 4
  tail call void @sdio_claim_host(ptr noundef %64) #7
  %65 = ptrtoint ptr %sdiodev to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %sdiodev, align 4
  %call49 = tail call i32 @sdio_claim_irq(ptr noundef %66, ptr noundef nonnull @brcmf_sdiod_ib_irqhandler) #7
  %func2 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 1
  %67 = ptrtoint ptr %func2 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %func2, align 4
  %call50 = tail call i32 @sdio_claim_irq(ptr noundef %68, ptr noundef nonnull @brcmf_sdiod_dummy_irqhandler) #7
  %69 = ptrtoint ptr %sdiodev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %sdiodev, align 4
  tail call void @sdio_release_host(ptr noundef %70) #7
  %sd_irq_requested = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 9
  %71 = ptrtoint ptr %sd_irq_requested to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %sd_irq_requested, align 1
  br label %cleanup

cleanup:                                          ; preds = %do.body44, %if.end29, %do.body14, %do.body7
  %retval.0 = phi i32 [ %15, %do.body7 ], [ %21, %do.body14 ], [ 0, %do.body44 ], [ 0, %if.end29 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brcmf_dbg(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_sdiod_oob_irqhandler(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev_id, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 256, ptr noundef nonnull @__func__.brcmf_sdiod_oob_irqhandler, ptr noundef nonnull @.str.25) #7
  %irq_en = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %irq_en to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %irq_en, align 2, !range !132
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @disable_irq_nosync(i32 noundef %irq) #7
  %6 = ptrtoint ptr %irq_en to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %irq_en, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %bus = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus, align 4
  tail call void @brcmf_sdio_isr(ptr noundef %8, i1 noundef zeroext true) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brcmf_err(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_claim_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_chip_enum_base(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_sdiod_readl(ptr nocapture noundef %sdiodev, i32 noundef %addr, ptr noundef writeonly %ret) local_unnamed_addr #0 align 64 {
entry:
  %retval1 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval1) #7
  %call = tail call fastcc i32 @brcmf_sdiod_set_backplane_window(ptr noundef %sdiodev, i32 noundef %addr)
  %0 = ptrtoint ptr %retval1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %retval1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and = and i32 %addr, 32767
  %or = or i32 %and, 32768
  %1 = ptrtoint ptr %sdiodev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sdiodev, align 4
  %call2 = call i32 @sdio_readl(ptr noundef %2, i32 noundef %or, ptr noundef nonnull %retval1) #7
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %data.0 = phi i32 [ 0, %entry.out_crit_edge ], [ %call2, %if.end ]
  %tobool3.not = icmp eq ptr %ret, null
  br i1 %tobool3.not, label %out.if.end5_crit_edge, label %if.then4

out.if.end5_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then4:                                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %retval1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %retval1, align 4
  %5 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %ret, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %out.if.end5_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval1) #7
  ret i32 %data.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_sdiod_writel(ptr nocapture noundef %sdiodev, i32 noundef %addr, i32 noundef %data, ptr noundef writeonly %ret) local_unnamed_addr #0 align 64 {
entry:
  %retval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval) #7
  %call = tail call fastcc i32 @brcmf_sdiod_set_backplane_window(ptr noundef %sdiodev, i32 noundef %addr)
  %0 = ptrtoint ptr %retval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %retval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and = and i32 %addr, 32767
  %or = or i32 %and, 32768
  %1 = ptrtoint ptr %sdiodev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sdiodev, align 4
  call void @sdio_writel(ptr noundef %2, i32 noundef %data, i32 noundef %or, ptr noundef nonnull %retval) #7
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %tobool1.not = icmp eq ptr %ret, null
  br i1 %tobool1.not, label %out.if.end3_crit_edge, label %if.then2

out.if.end3_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then2:                                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %retval to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %retval, align 4
  %5 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %ret, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %out.if.end3_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_writeb(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @sdio_f0_readb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_f0_writeb(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_release_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_claim_irq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmf_sdiod_ib_irqhandler(ptr nocapture noundef readonly %func) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 256, ptr noundef nonnull @__func__.brcmf_sdiod_ib_irqhandler, ptr noundef nonnull @.str.26) #7
  %bus = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 4
  tail call void @brcmf_sdio_isr(ptr noundef %5, i1 noundef zeroext false) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @brcmf_sdiod_dummy_irqhandler(ptr nocapture noundef %func) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_sdiod_intr_unregister(ptr nocapture noundef %sdiodev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %oob_irq_requested = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 8
  %0 = ptrtoint ptr %oob_irq_requested to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %oob_irq_requested, align 4, !range !132
  %2 = zext i8 %1 to i32
  %sd_irq_requested = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 9
  %3 = ptrtoint ptr %sd_irq_requested to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %sd_irq_requested, align 1, !range !132
  %5 = zext i8 %4 to i32
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_sdiod_intr_unregister, ptr noundef nonnull @.str.6, i32 noundef %2, i32 noundef %5) #7
  %6 = ptrtoint ptr %oob_irq_requested to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %oob_irq_requested, align 4, !range !132
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %settings = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 7
  %8 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %settings, align 4
  %10 = ptrtoint ptr %sdiodev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sdiodev, align 4
  tail call void @sdio_claim_host(ptr noundef %11) #7
  %12 = ptrtoint ptr %sdiodev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sdiodev, align 4
  tail call void @sdio_f0_writeb(ptr noundef %13, i8 noundef zeroext 0, i32 noundef 242, ptr noundef null) #7
  %14 = ptrtoint ptr %sdiodev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sdiodev, align 4
  tail call void @sdio_f0_writeb(ptr noundef %15, i8 noundef zeroext 0, i32 noundef 4, ptr noundef null) #7
  %16 = ptrtoint ptr %sdiodev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sdiodev, align 4
  tail call void @sdio_release_host(ptr noundef %17) #7
  %18 = ptrtoint ptr %oob_irq_requested to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %oob_irq_requested, align 4
  %oob_irq_nr = getelementptr inbounds %struct.brcmf_mp_device, ptr %9, i32 0, i32 8, i32 0, i32 3
  %19 = ptrtoint ptr %oob_irq_nr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %oob_irq_nr, align 4
  %21 = ptrtoint ptr %sdiodev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sdiodev, align 4
  %dev = getelementptr inbounds %struct.sdio_func, ptr %22, i32 0, i32 1
  %call = tail call ptr @free_irq(i32 noundef %20, ptr noundef %dev) #7
  %irq_en = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 10
  %23 = ptrtoint ptr %irq_en to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %irq_en, align 2
  %24 = ptrtoint ptr %oob_irq_requested to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %oob_irq_requested, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %25 = ptrtoint ptr %sd_irq_requested to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %sd_irq_requested, align 1, !range !132
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool12.not = icmp eq i8 %26, 0
  br i1 %tobool12.not, label %if.end.if.end20_crit_edge, label %if.then13

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %sdiodev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sdiodev, align 4
  tail call void @sdio_claim_host(ptr noundef %28) #7
  %func2 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 1
  %29 = ptrtoint ptr %func2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %func2, align 4
  %call15 = tail call i32 @sdio_release_irq(ptr noundef %30) #7
  %31 = ptrtoint ptr %sdiodev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sdiodev, align 4
  %call17 = tail call i32 @sdio_release_irq(ptr noundef %32) #7
  %33 = ptrtoint ptr %sdiodev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sdiodev, align 4
  tail call void @sdio_release_host(ptr noundef %34) #7
  %35 = ptrtoint ptr %sd_irq_requested to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %sd_irq_requested, align 1
  br label %if.end20

if.end20:                                         ; preds = %if.then13, %if.end.if.end20_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_release_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_sdiod_change_state(ptr nocapture noundef %sdiodev, i32 noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 21
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %state)
  %cmp3 = icmp eq i32 %1, %state
  %or.cond = or i1 %cmp, %cmp3
  br i1 %or.cond, label %entry.return_crit_edge, label %do.body

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

do.body:                                          ; preds = %entry
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_sdiod_change_state, ptr noundef nonnull @.str.7, i32 noundef %1, i32 noundef %state) #7
  %2 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state1, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.body.sw.epilog_crit_edge [
    i32 1, label %do.body.sw.epilog.sink.split_crit_edge
    i32 0, label %sw.bb6
  ]

do.body.sw.epilog.sink.split_crit_edge:           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

do.body.sw.epilog_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb6:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %state)
  %cmp7 = icmp eq i32 %state, 1
  br i1 %cmp7, label %sw.bb6.sw.epilog.sink.split_crit_edge, label %sw.bb6.sw.epilog_crit_edge

sw.bb6.sw.epilog_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb6.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb6.sw.epilog.sink.split_crit_edge, %do.body.sw.epilog.sink.split_crit_edge
  %.sink21 = phi i32 [ 0, %do.body.sw.epilog.sink.split_crit_edge ], [ 1, %sw.bb6.sw.epilog.sink.split_crit_edge ]
  %bus_if9 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 6
  %5 = ptrtoint ptr %bus_if9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus_if9, align 4
  tail call void @brcmf_bus_change_state(ptr noundef %6, i32 noundef %.sink21) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb6.sw.epilog_crit_edge, %do.body.sw.epilog_crit_edge
  %7 = ptrtoint ptr %state1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %state, ptr %state1, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_bus_change_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @brcmf_sdiod_set_backplane_window(ptr nocapture noundef %sdiodev, i32 noundef %addr) unnamed_addr #0 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %addr, -32768
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #7
  %0 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %err, align 4
  %sbwad = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 2
  %1 = ptrtoint ptr %sbwad to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %sbwad, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %2)
  %cmp = icmp eq i32 %and, %2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %3 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %for.body, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.cond.preheader
  %v.021 = lshr exact i32 %and, 8
  %5 = ptrtoint ptr %sdiodev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sdiodev, align 4
  %conv = trunc i32 %v.021 to i8
  call void @sdio_writeb(ptr noundef %6, i8 noundef zeroext %conv, i32 noundef 65546, ptr noundef nonnull %err) #7
  %7 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.1 = icmp eq i32 %8, 0
  br i1 %tobool.not.1, label %for.body.1, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.1:                                       ; preds = %for.body
  %v.021.1 = lshr i32 %addr, 16
  %9 = ptrtoint ptr %sdiodev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sdiodev, align 4
  %conv.1 = trunc i32 %v.021.1 to i8
  call void @sdio_writeb(ptr noundef %10, i8 noundef zeroext %conv.1, i32 noundef 65547, ptr noundef nonnull %err) #7
  %11 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.2 = icmp eq i32 %12, 0
  br i1 %tobool.not.2, label %for.body.2, label %for.body.1.cleanup_crit_edge

for.body.1.cleanup_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.2:                                       ; preds = %for.body.1
  %v.021.2 = lshr i32 %addr, 24
  %13 = ptrtoint ptr %sdiodev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sdiodev, align 4
  %conv.2 = trunc i32 %v.021.2 to i8
  call void @sdio_writeb(ptr noundef %14, i8 noundef zeroext %conv.2, i32 noundef 65548, ptr noundef nonnull %err) #7
  %15 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool4.not = icmp eq i32 %.pr, 0
  br i1 %tobool4.not, label %if.then5, label %for.body.2.cleanup_crit_edge

for.body.2.cleanup_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then5:                                         ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %sbwad to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and, ptr %sbwad, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %for.body.2.cleanup_crit_edge, %for.body.1.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then5 ], [ %.pr, %for.body.2.cleanup_crit_edge ], [ %4, %for.cond.preheader.cleanup_crit_edge ], [ %8, %for.body.cleanup_crit_edge ], [ %12, %for.body.1.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_readl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_writel(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_sdiod_recv_buf(ptr nocapture noundef %sdiodev, ptr nocapture noundef writeonly %buf, i32 noundef %nbytes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @brcmu_pkt_buf_get_skb(i32 noundef %nbytes) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdiod_recv_buf, ptr noundef nonnull @.str.8, i32 noundef %nbytes) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %cc_core.i = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 3
  %0 = ptrtoint ptr %cc_core.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc_core.i, align 4
  %base.i = getelementptr inbounds %struct.brcmf_core, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 6
  %4 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len.i, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_sdiod_recv_pkt, ptr noundef nonnull @.str.9, i32 noundef %3, i32 noundef %5) #7
  %call.i = tail call fastcc i32 @brcmf_sdiod_set_backplane_window(ptr noundef %sdiodev, i32 noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %brcmf_sdiod_recv_pkt.exit, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

brcmf_sdiod_recv_pkt.exit:                        ; preds = %if.end
  %and.i = and i32 %3, 32767
  %or.i = or i32 %and.i, 32768
  %func2.i = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 1
  %6 = ptrtoint ptr %func2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %func2.i, align 4
  %call1.i = tail call fastcc i32 @brcmf_sdiod_skbuff_read(ptr noundef %sdiodev, ptr noundef %7, i32 noundef %or.i, ptr noundef nonnull %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not, label %if.then3, label %brcmf_sdiod_recv_pkt.exit.if.end4_crit_edge

brcmf_sdiod_recv_pkt.exit.if.end4_crit_edge:      ; preds = %brcmf_sdiod_recv_pkt.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then3:                                         ; preds = %brcmf_sdiod_recv_pkt.exit
  call void @__sanitizer_cov_trace_pc() #9
  %data = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %10 = call ptr @memcpy(ptr %buf, ptr %9, i32 %nbytes)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %brcmf_sdiod_recv_pkt.exit.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %err.0.i14 = phi i32 [ 0, %if.then3 ], [ %call1.i, %brcmf_sdiod_recv_pkt.exit.if.end4_crit_edge ], [ %call.i, %if.end.if.end4_crit_edge ]
  tail call void @brcmu_pkt_buf_free_skb(ptr noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %do.body
  %retval.0 = phi i32 [ %err.0.i14, %if.end4 ], [ -5, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmu_pkt_buf_get_skb(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_sdiod_recv_pkt(ptr nocapture noundef %sdiodev, ptr nocapture noundef readonly %pkt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cc_core = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 3
  %0 = ptrtoint ptr %cc_core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc_core, align 4
  %base = getelementptr inbounds %struct.brcmf_core, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_sdiod_recv_pkt, ptr noundef nonnull @.str.9, i32 noundef %3, i32 noundef %5) #7
  %call = tail call fastcc i32 @brcmf_sdiod_set_backplane_window(ptr noundef %sdiodev, i32 noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.done_crit_edge

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and = and i32 %3, 32767
  %or = or i32 %and, 32768
  %func2 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 1
  %6 = ptrtoint ptr %func2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %func2, align 4
  %call1 = tail call fastcc i32 @brcmf_sdiod_skbuff_read(ptr noundef %sdiodev, ptr noundef %7, i32 noundef %or, ptr noundef %pkt)
  br label %done

done:                                             ; preds = %if.end, %entry.done_crit_edge
  %err.0 = phi i32 [ %call, %entry.done_crit_edge ], [ %call1, %if.end ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmu_pkt_buf_free_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @brcmf_sdiod_skbuff_read(ptr nocapture noundef %sdiodev, ptr noundef %func, i32 noundef %addr, ptr nocapture noundef readonly %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %add = add i32 %1, 3
  %and = and i32 %add, -4
  %num = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 3
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %3, label %sw.epilog.thread [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %call = tail call i32 @sdio_memcpy_fromio(ptr noundef %func, ptr noundef %6, i32 noundef %addr, i32 noundef %and) #7
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %data2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %7 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data2, align 4
  %call3 = tail call i32 @sdio_readsb(ptr noundef %func, ptr noundef %8, i32 noundef %addr, i32 noundef %and) #7
  br label %sw.epilog

sw.epilog.thread:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 305, i32 noundef 9, ptr noundef nonnull @.str.27, i32 noundef %3) #7
  br label %if.then19

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %err.0 = phi i32 [ %call3, %sw.bb1 ], [ %call, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -123, i32 %err.0)
  %cmp = icmp eq i32 %err.0, -123
  br i1 %cmp, label %sw.epilog.if.then19_crit_edge, label %sw.epilog.if.end20_crit_edge

sw.epilog.if.end20_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

sw.epilog.if.then19_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then19

if.then19:                                        ; preds = %sw.epilog.if.then19_crit_edge, %sw.epilog.thread
  %state1.i = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 21
  %9 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp3.i = icmp eq i32 %10, 2
  br i1 %cmp3.i, label %if.then19.if.end20_crit_edge, label %do.body.i

if.then19.if.end20_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

do.body.i:                                        ; preds = %if.then19
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_sdiod_change_state, ptr noundef nonnull @.str.7, i32 noundef %10, i32 noundef 2) #7
  %11 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cond = icmp eq i32 %12, 1
  br i1 %cond, label %sw.epilog.sink.split.i, label %do.body.i.sw.epilog.i_crit_edge

do.body.i.sw.epilog.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.epilog.sink.split.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %bus_if9.i = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 6
  %13 = ptrtoint ptr %bus_if9.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bus_if9.i, align 4
  tail call void @brcmf_bus_change_state(ptr noundef %14, i32 noundef 0) #7
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %do.body.i.sw.epilog.i_crit_edge
  %15 = ptrtoint ptr %state1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %state1.i, align 4
  br label %if.end20

if.end20:                                         ; preds = %sw.epilog.i, %if.then19.if.end20_crit_edge, %sw.epilog.if.end20_crit_edge
  %err.033 = phi i32 [ %err.0, %sw.epilog.if.end20_crit_edge ], [ -123, %if.then19.if.end20_crit_edge ], [ -123, %sw.epilog.i ]
  ret i32 %err.033
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_sdiod_recv_chain(ptr nocapture noundef %sdiodev, ptr noundef %pktq, i32 noundef %totlen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cc_core = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 3
  %0 = ptrtoint ptr %cc_core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc_core, align 4
  %base = getelementptr inbounds %struct.brcmf_core, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base, align 4
  %qlen = getelementptr inbounds %struct.sk_buff_head, ptr %pktq, i32 0, i32 1
  %4 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qlen, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_sdiod_recv_chain, ptr noundef nonnull @.str.9, i32 noundef %3, i32 noundef %5) #7
  %call = tail call fastcc i32 @brcmf_sdiod_set_backplane_window(ptr noundef %sdiodev, i32 noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.done_crit_edge

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.end:                                           ; preds = %entry
  %and = and i32 %3, 32767
  %or = or i32 %and, 32768
  %6 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %qlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %func2 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 1
  %8 = ptrtoint ptr %func2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %func2, align 4
  %10 = ptrtoint ptr %pktq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pktq, align 4
  %call4 = tail call fastcc i32 @brcmf_sdiod_skbuff_read(ptr noundef %sdiodev, ptr noundef %9, i32 noundef %or, ptr noundef %11)
  br label %done

if.else:                                          ; preds = %if.end
  %sg_support = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 12
  %12 = ptrtoint ptr %sg_support to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %sg_support, align 4, !range !132
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool5.not = icmp eq i8 %13, 0
  br i1 %tobool5.not, label %if.then6, label %if.else21

if.then6:                                         ; preds = %if.else
  %call7 = tail call ptr @brcmu_pkt_buf_get_skb(i32 noundef %totlen) #7
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.then6.cleanup_crit_edge, label %if.end10

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.then6
  %func211 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 1
  %14 = ptrtoint ptr %func211 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %func211, align 4
  %call12 = tail call fastcc i32 @brcmf_sdiod_skbuff_read(ptr noundef %sdiodev, ptr noundef %15, i32 noundef %or, ptr noundef nonnull %call7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %for.cond.preheader, label %if.end10.done_crit_edge

if.end10.done_crit_edge:                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

for.cond.preheader:                               ; preds = %if.end10
  %16 = ptrtoint ptr %pktq to i32
  call void @__asan_load4_noabort(i32 %16)
  %skb.058 = load ptr, ptr %pktq, align 4
  %cmp16.not59 = icmp eq ptr %skb.058, %pktq
  br i1 %cmp16.not59, label %for.cond.preheader.done_crit_edge, label %for.body.lr.ph

for.cond.preheader.done_crit_edge:                ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %data17 = getelementptr inbounds %struct.sk_buff, ptr %call7, i32 0, i32 19
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %skb.060 = phi ptr [ %skb.058, %for.body.lr.ph ], [ %skb.0, %for.body.for.body_crit_edge ]
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb.060, i32 0, i32 19
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %19 = ptrtoint ptr %data17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data17, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb.060, i32 0, i32 6
  %21 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len, align 4
  %23 = call ptr @memcpy(ptr %18, ptr %20, i32 %22)
  %24 = load i32, ptr %len, align 4
  %call19 = tail call ptr @skb_pull(ptr noundef nonnull %call7, i32 noundef %24) #7
  %25 = ptrtoint ptr %skb.060 to i32
  call void @__asan_load4_noabort(i32 %25)
  %skb.0 = load ptr, ptr %skb.060, align 4
  %cmp16.not = icmp eq ptr %skb.0, %pktq
  br i1 %cmp16.not, label %for.body.done_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.done_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.else21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %func222 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 1
  %26 = ptrtoint ptr %func222 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %func222, align 4
  %call23 = tail call fastcc i32 @brcmf_sdiod_sglist_rw(ptr noundef %sdiodev, ptr noundef %27, i1 noundef zeroext false, i32 noundef %or, ptr noundef %pktq)
  br label %done

done:                                             ; preds = %if.else21, %for.body.done_crit_edge, %for.cond.preheader.done_crit_edge, %if.end10.done_crit_edge, %if.then2, %entry.done_crit_edge
  %glom_skb.0 = phi ptr [ null, %entry.done_crit_edge ], [ null, %if.then2 ], [ null, %if.else21 ], [ %call7, %if.end10.done_crit_edge ], [ %call7, %for.cond.preheader.done_crit_edge ], [ %call7, %for.body.done_crit_edge ]
  %err.0 = phi i32 [ %call, %entry.done_crit_edge ], [ %call4, %if.then2 ], [ %call23, %if.else21 ], [ %call12, %if.end10.done_crit_edge ], [ 0, %for.cond.preheader.done_crit_edge ], [ 0, %for.body.done_crit_edge ]
  tail call void @brcmu_pkt_buf_free_skb(ptr noundef %glom_skb.0) #7
  br label %cleanup

cleanup:                                          ; preds = %done, %if.then6.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %done ], [ -12, %if.then6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @brcmf_sdiod_sglist_rw(ptr nocapture noundef %sdiodev, ptr nocapture noundef readonly %func, i1 noundef zeroext %write, i32 noundef %addr, ptr noundef readonly %pktlist) unnamed_addr #0 align 64 {
entry:
  %addr.addr = alloca i32, align 4
  %local_list = alloca %struct.sk_buff_head, align 4
  %mmc_req = alloca %struct.mmc_request, align 4
  %mmc_cmd = alloca %struct.mmc_command, align 4
  %mmc_dat = alloca %struct.mmc_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %addr, ptr %addr.addr, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %local_list) #7
  %1 = getelementptr inbounds i8, ptr %local_list, i32 12
  %2 = call ptr @memset(ptr %1, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %mmc_req) #7
  %3 = call ptr @memset(ptr %mmc_req, i32 255, i32 156)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %mmc_cmd) #7
  %4 = call ptr @memset(ptr %mmc_cmd, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %mmc_dat) #7
  %5 = call ptr @memset(ptr %mmc_dat, i32 255, i32 56)
  %qlen = getelementptr inbounds %struct.sk_buff_head, ptr %pktlist, i32 0, i32 1
  %6 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %qlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %local_list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %local_list, ptr %local_list, align 4
  %prev.i = getelementptr inbounds %struct.anon.64, ptr %local_list, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %local_list, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %local_list, i32 0, i32 1
  %10 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %qlen.i, align 4
  br i1 %write, label %if.end.if.end17_crit_edge, label %land.lhs.true

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end
  %settings = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 7
  %11 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %settings, align 4
  %broken_sg_support = getelementptr inbounds %struct.brcmf_mp_device, ptr %12, i32 0, i32 8, i32 0, i32 5
  %13 = ptrtoint ptr %broken_sg_support to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %broken_sg_support, align 4, !range !132
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool2.not = icmp eq i8 %14, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end17_crit_edge, label %for.cond.preheader

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

for.cond.preheader:                               ; preds = %land.lhs.true
  %15 = ptrtoint ptr %pktlist to i32
  call void @__asan_load4_noabort(i32 %15)
  %pkt_next.0297 = load ptr, ptr %pktlist, align 4
  %cmp.not298 = icmp eq ptr %pkt_next.0297, %pktlist
  br i1 %cmp.not298, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %pkt_next.0300 = phi ptr [ %pkt_next.0, %for.body.for.body_crit_edge ], [ %pkt_next.0297, %for.cond.preheader.for.body_crit_edge ]
  %req_sz.0299 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %len = getelementptr inbounds %struct.sk_buff, ptr %pkt_next.0300, i32 0, i32 6
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 4
  %add = add i32 %17, %req_sz.0299
  %18 = ptrtoint ptr %pkt_next.0300 to i32
  call void @__asan_load4_noabort(i32 %18)
  %pkt_next.0 = load ptr, ptr %pkt_next.0300, align 4
  %cmp.not = icmp eq ptr %pkt_next.0, %pktlist
  br i1 %cmp.not, label %for.end.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %phi.bo = add i32 %add, -1
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.cond.preheader.for.end_crit_edge
  %req_sz.0.lcssa = phi i32 [ -1, %for.cond.preheader.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %cur_blksize = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 8
  %19 = ptrtoint ptr %cur_blksize to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cur_blksize, align 4
  %add5 = add i32 %req_sz.0.lcssa, %20
  %neg = sub i32 0, %20
  %and = and i32 %add5, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %and)
  %cmp8301 = icmp ugt i32 %and, 4096
  br i1 %cmp8301, label %for.end.while.body_crit_edge, label %for.end.while.end_crit_edge

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

for.end.while.body_crit_edge:                     ; preds = %for.end
  br label %while.body

while.body:                                       ; preds = %if.end11.while.body_crit_edge, %for.end.while.body_crit_edge
  %req_sz.1302 = phi i32 [ %sub12, %if.end11.while.body_crit_edge ], [ %and, %for.end.while.body_crit_edge ]
  %call = call ptr @brcmu_pkt_buf_get_skb(i32 noundef 4096) #7
  %cmp9 = icmp eq ptr %call, null
  br i1 %cmp9, label %while.body.exit_crit_edge, label %if.end11

while.body.exit_crit_edge:                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end11:                                         ; preds = %while.body
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i, align 4
  %23 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %local_list, ptr %call, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.43, ptr %call, i32 0, i32 1
  %24 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %prev10.i.i.i, align 4
  store volatile ptr %call, ptr %prev.i, align 4
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %call, ptr %22, align 4
  %26 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %qlen.i, align 4
  %add.i.i.i = add i32 %27, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i, align 4
  %sub12 = add i32 %req_sz.1302, -4096
  %cmp8 = icmp ugt i32 %sub12, 4096
  br i1 %cmp8, label %if.end11.while.body_crit_edge, label %if.end11.while.end_crit_edge

if.end11.while.end_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end11.while.body_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %if.end11.while.end_crit_edge, %for.end.while.end_crit_edge
  %req_sz.1.lcssa = phi i32 [ %and, %for.end.while.end_crit_edge ], [ %sub12, %if.end11.while.end_crit_edge ]
  %call13 = call ptr @brcmu_pkt_buf_get_skb(i32 noundef %req_sz.1.lcssa) #7
  %cmp14 = icmp eq ptr %call13, null
  br i1 %cmp14, label %while.end.exit_crit_edge, label %if.end16

while.end.exit_crit_edge:                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end16:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i, align 4
  %30 = ptrtoint ptr %call13 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %local_list, ptr %call13, align 8
  %prev10.i.i.i270 = getelementptr inbounds %struct.anon.43, ptr %call13, i32 0, i32 1
  %31 = ptrtoint ptr %prev10.i.i.i270 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %prev10.i.i.i270, align 4
  store volatile ptr %call13, ptr %prev.i, align 4
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %call13, ptr %29, align 4
  %33 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %qlen.i, align 4
  %add.i.i.i272 = add i32 %34, 1
  store volatile i32 %add.i.i.i272, ptr %qlen.i, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %land.lhs.true.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %cond33 = phi i32 [ 0, %if.end16 ], [ 0, %land.lhs.true.if.end17_crit_edge ], [ -2147483648, %if.end.if.end17_crit_edge ]
  %cond30 = phi i32 [ 512, %if.end16 ], [ 512, %land.lhs.true.if.end17_crit_edge ], [ 256, %if.end.if.end17_crit_edge ]
  %target_list.0 = phi ptr [ %local_list, %if.end16 ], [ %pktlist, %land.lhs.true.if.end17_crit_edge ], [ %pktlist, %if.end.if.end17_crit_edge ]
  %cur_blksize18 = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 8
  %35 = ptrtoint ptr %cur_blksize18 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cur_blksize18, align 4
  %max_request_size = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 13
  %37 = ptrtoint ptr %max_request_size to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %max_request_size, align 4
  %max_segment_count = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 14
  %39 = ptrtoint ptr %max_segment_count to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %max_segment_count, align 4
  %qlen19 = getelementptr inbounds %struct.sk_buff_head, ptr %target_list.0, i32 0, i32 1
  %41 = ptrtoint ptr %qlen19 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %qlen19, align 4
  %conv20 = zext i16 %40 to i32
  %conv21 = and i32 %42, 65535
  %43 = call i32 @llvm.umin.i32(i32 %conv21, i32 %conv20)
  %44 = call ptr @memset(ptr %mmc_req, i32 0, i32 156)
  %45 = getelementptr inbounds i8, ptr %mmc_cmd, i32 8
  %46 = call ptr @memset(ptr %45, i32 0, i32 40)
  %47 = call ptr @memset(ptr %mmc_dat, i32 0, i32 56)
  %sgtable = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 17
  %48 = ptrtoint ptr %sgtable to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sgtable, align 4
  %sg = getelementptr inbounds %struct.mmc_data, ptr %mmc_dat, i32 0, i32 12
  %50 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %sg, align 4
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %mmc_dat, i32 0, i32 2
  %51 = ptrtoint ptr %blksz to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %36, ptr %blksz, align 4
  %flags = getelementptr inbounds %struct.mmc_data, ptr %mmc_dat, i32 0, i32 6
  %52 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %cond30, ptr %flags, align 4
  %53 = ptrtoint ptr %mmc_cmd to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 53, ptr %mmc_cmd, align 4
  %arg = getelementptr inbounds %struct.mmc_command, ptr %mmc_cmd, i32 0, i32 1
  %num = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 3
  %54 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num, align 4
  %and34 = shl i32 %55, 28
  %shl = and i32 %and34, 1879048192
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %55)
  %cmp39 = icmp eq i32 %55, 1
  %cond41 = select i1 %cmp39, i32 67108864, i32 0
  %or = or i32 %cond33, %shl
  %or37 = or i32 %or, %cond41
  %or43 = or i32 %or37, 134217728
  %56 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %or43, ptr %arg, align 4
  %flags44 = getelementptr inbounds %struct.mmc_command, ptr %mmc_cmd, i32 0, i32 3
  %57 = ptrtoint ptr %flags44 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 437, ptr %flags44, align 4
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %mmc_req, i32 0, i32 1
  %58 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %mmc_cmd, ptr %cmd, align 4
  %data = getelementptr inbounds %struct.mmc_request, ptr %mmc_req, i32 0, i32 2
  %59 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %mmc_dat, ptr %data, align 4
  %60 = ptrtoint ptr %target_list.0 to i32
  call void @__asan_load4_noabort(i32 %60)
  %pkt_next.1312 = load ptr, ptr %target_list.0, align 4
  %cmp49.not313 = icmp eq ptr %pkt_next.1312, %target_list.0
  br i1 %cmp49.not313, label %if.end17.exit_queue_walk_crit_edge, label %while.cond52.preheader.lr.ph

if.end17.exit_queue_walk_crit_edge:               ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_queue_walk

while.cond52.preheader.lr.ph:                     ; preds = %if.end17
  %max_segment_size = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 15
  %conv81 = zext i1 %write to i32
  br label %while.cond52.preheader

for.cond48.loopexit:                              ; preds = %if.end88.for.cond48.loopexit_crit_edge, %while.cond52.preheader.for.cond48.loopexit_crit_edge
  %req_sz.3.lcssa = phi i32 [ %req_sz.2314, %while.cond52.preheader.for.cond48.loopexit_crit_edge ], [ %req_sz.4, %if.end88.for.cond48.loopexit_crit_edge ]
  %sg_cnt.1.lcssa = phi i32 [ %sg_cnt.0315, %while.cond52.preheader.for.cond48.loopexit_crit_edge ], [ %sg_cnt.2, %if.end88.for.cond48.loopexit_crit_edge ]
  %sgl.1.lcssa = phi ptr [ %sgl.0316, %while.cond52.preheader.for.cond48.loopexit_crit_edge ], [ %sgl.2, %if.end88.for.cond48.loopexit_crit_edge ]
  %61 = ptrtoint ptr %pkt_next.1317 to i32
  call void @__asan_load4_noabort(i32 %61)
  %pkt_next.1 = load ptr, ptr %pkt_next.1317, align 4
  %cmp49.not = icmp eq ptr %pkt_next.1, %target_list.0
  br i1 %cmp49.not, label %for.end92, label %for.cond48.loopexit.while.cond52.preheader_crit_edge

for.cond48.loopexit.while.cond52.preheader_crit_edge: ; preds = %for.cond48.loopexit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond52.preheader

while.cond52.preheader:                           ; preds = %for.cond48.loopexit.while.cond52.preheader_crit_edge, %while.cond52.preheader.lr.ph
  %pkt_next.1317 = phi ptr [ %pkt_next.1312, %while.cond52.preheader.lr.ph ], [ %pkt_next.1, %for.cond48.loopexit.while.cond52.preheader_crit_edge ]
  %sgl.0316 = phi ptr [ %49, %while.cond52.preheader.lr.ph ], [ %sgl.1.lcssa, %for.cond48.loopexit.while.cond52.preheader_crit_edge ]
  %sg_cnt.0315 = phi i32 [ 0, %while.cond52.preheader.lr.ph ], [ %sg_cnt.1.lcssa, %for.cond48.loopexit.while.cond52.preheader_crit_edge ]
  %req_sz.2314 = phi i32 [ 0, %while.cond52.preheader.lr.ph ], [ %req_sz.3.lcssa, %for.cond48.loopexit.while.cond52.preheader_crit_edge ]
  %len53 = getelementptr inbounds %struct.sk_buff, ptr %pkt_next.1317, i32 0, i32 6
  %62 = ptrtoint ptr %len53 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %len53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp54304.not = icmp eq i32 %63, 0
  br i1 %cmp54304.not, label %while.cond52.preheader.for.cond48.loopexit_crit_edge, label %while.body56.lr.ph

while.cond52.preheader.for.cond48.loopexit_crit_edge: ; preds = %while.cond52.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond48.loopexit

while.body56.lr.ph:                               ; preds = %while.cond52.preheader
  %data57 = getelementptr inbounds %struct.sk_buff, ptr %pkt_next.1317, i32 0, i32 19
  br label %while.body56

while.body56:                                     ; preds = %if.end88.while.body56_crit_edge, %while.body56.lr.ph
  %64 = phi i32 [ %63, %while.body56.lr.ph ], [ %84, %if.end88.while.body56_crit_edge ]
  %sgl.1308 = phi ptr [ %sgl.0316, %while.body56.lr.ph ], [ %sgl.2, %if.end88.while.body56_crit_edge ]
  %pkt_offset.0307 = phi i32 [ 0, %while.body56.lr.ph ], [ %add73, %if.end88.while.body56_crit_edge ]
  %sg_cnt.1306 = phi i32 [ %sg_cnt.0315, %while.body56.lr.ph ], [ %sg_cnt.2, %if.end88.while.body56_crit_edge ]
  %req_sz.3305 = phi i32 [ %req_sz.2314, %while.body56.lr.ph ], [ %req_sz.4, %if.end88.while.body56_crit_edge ]
  %65 = ptrtoint ptr %data57 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %data57, align 4
  %add.ptr = getelementptr i8, ptr %66, i32 %pkt_offset.0307
  %sub59 = sub i32 %64, %pkt_offset.0307
  %67 = ptrtoint ptr %max_segment_size to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %max_segment_size, align 4
  %69 = call i32 @llvm.umin.i32(i32 %sub59, i32 %68)
  %sub65 = sub i32 %38, %req_sz.3305
  %70 = call i32 @llvm.umin.i32(i32 %69, i32 %sub65)
  %71 = ptrtoint ptr %add.ptr to i32
  %cmp.i = icmp ugt ptr %add.ptr, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i, label %land.lhs.true.i, label %while.body56.do.body5.i_crit_edge, !prof !133

while.body56.do.body5.i_crit_edge:                ; preds = %while.body56
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body5.i

land.lhs.true.i:                                  ; preds = %while.body56
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %72 = load ptr, ptr @high_memory, align 4
  %cmp1.i = icmp ugt ptr %72, %add.ptr
  br i1 %cmp1.i, label %land.rhs.i, label %land.lhs.true.i.do.body5.i_crit_edge, !prof !133

land.lhs.true.i.do.body5.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body5.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %sub.i = add i32 %71, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %73 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %73, %shr.i
  %call.i = call i32 @pfn_valid(i32 noundef %add.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i = icmp eq i32 %call.i, 0
  br i1 %tobool.i, label %land.rhs.i.do.body5.i_crit_edge, label %do.end8.i, !prof !134

land.rhs.i.do.body5.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body5.i

do.body5.i:                                       ; preds = %land.rhs.i.do.body5.i_crit_edge, %land.lhs.true.i.do.body5.i_crit_edge, %while.body56.do.body5.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #7, !srcloc !135
  unreachable

do.end8.i:                                        ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %74 = load ptr, ptr @mem_map, align 4
  %add.ptr.i = getelementptr %struct.page, ptr %74, i32 %shr.i
  %75 = ptrtoint ptr %sgl.1308 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %sgl.1308, align 4
  %77 = ptrtoint ptr %add.ptr.i to i32
  %and2.i.i.i = and i32 %77, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !133

do.body5.i.i.i:                                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #7, !srcloc !136
  unreachable

do.body11.i.i.i:                                  ; preds = %do.end8.i
  %and.i.i.i.i = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_set_buf.exit, label %do.body19.i.i.i, !prof !133

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #7, !srcloc !137
  unreachable

sg_set_buf.exit:                                  ; preds = %do.body11.i.i.i
  %and.i = and i32 %71, 4095
  %and.i.i.i = and i32 %76, 3
  %or.i.i.i = or i32 %and.i.i.i, %77
  %78 = ptrtoint ptr %sgl.1308 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %or.i.i.i, ptr %sgl.1308, align 4
  %offset1.i.i = getelementptr inbounds %struct.scatterlist, ptr %sgl.1308, i32 0, i32 1
  %79 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %and.i, ptr %offset1.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.scatterlist, ptr %sgl.1308, i32 0, i32 2
  %80 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %70, ptr %length.i.i, align 4
  %inc = add i32 %sg_cnt.1306, 1
  %call71 = call ptr @sg_next(ptr noundef %sgl.1308) #7
  %add72 = add i32 %70, %req_sz.3305
  %add73 = add i32 %70, %pkt_offset.0307
  call void @__sanitizer_cov_trace_cmp4(i32 %add72, i32 %38)
  %cmp74.not = icmp ult i32 %add72, %38
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %43)
  %cmp77.not = icmp ult i32 %inc, %43
  %or.cond = select i1 %cmp74.not, i1 %cmp77.not, i1 false
  br i1 %or.cond, label %sg_set_buf.exit.if.end88_crit_edge, label %if.then79

sg_set_buf.exit.if.end88_crit_edge:               ; preds = %sg_set_buf.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

if.then79:                                        ; preds = %sg_set_buf.exit
  %call82 = call fastcc i32 @mmc_submit_one(ptr noundef nonnull %mmc_dat, ptr noundef nonnull %mmc_req, ptr noundef nonnull %mmc_cmd, i32 noundef %inc, i32 noundef %add72, i32 noundef %36, ptr noundef nonnull %addr.addr, ptr noundef %sdiodev, ptr noundef %func, i32 noundef %conv81)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end85, label %if.then79.exit_queue_walk_crit_edge

if.then79.exit_queue_walk_crit_edge:              ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_queue_walk

if.end85:                                         ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #9
  %81 = ptrtoint ptr %sgtable to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %sgtable, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.end85, %sg_set_buf.exit.if.end88_crit_edge
  %req_sz.4 = phi i32 [ 0, %if.end85 ], [ %add72, %sg_set_buf.exit.if.end88_crit_edge ]
  %sg_cnt.2 = phi i32 [ 0, %if.end85 ], [ %inc, %sg_set_buf.exit.if.end88_crit_edge ]
  %sgl.2 = phi ptr [ %82, %if.end85 ], [ %call71, %sg_set_buf.exit.if.end88_crit_edge ]
  %83 = ptrtoint ptr %len53 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %len53, align 4
  %cmp54 = icmp ugt i32 %84, %add73
  br i1 %cmp54, label %if.end88.while.body56_crit_edge, label %if.end88.for.cond48.loopexit_crit_edge

if.end88.for.cond48.loopexit_crit_edge:           ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond48.loopexit

if.end88.while.body56_crit_edge:                  ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body56

for.end92:                                        ; preds = %for.cond48.loopexit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sg_cnt.1.lcssa)
  %tobool93.not = icmp eq i32 %sg_cnt.1.lcssa, 0
  br i1 %tobool93.not, label %for.end92.exit_queue_walk_crit_edge, label %if.then94

for.end92.exit_queue_walk_crit_edge:              ; preds = %for.end92
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_queue_walk

if.then94:                                        ; preds = %for.end92
  call void @__sanitizer_cov_trace_pc() #9
  %conv96 = zext i1 %write to i32
  %call97 = call fastcc i32 @mmc_submit_one(ptr noundef nonnull %mmc_dat, ptr noundef nonnull %mmc_req, ptr noundef nonnull %mmc_cmd, i32 noundef %sg_cnt.1.lcssa, i32 noundef %req_sz.3.lcssa, i32 noundef %36, ptr noundef nonnull %addr.addr, ptr noundef %sdiodev, ptr noundef %func, i32 noundef %conv96)
  br label %exit_queue_walk

exit_queue_walk:                                  ; preds = %if.then94, %for.end92.exit_queue_walk_crit_edge, %if.then79.exit_queue_walk_crit_edge, %if.end17.exit_queue_walk_crit_edge
  %ret.3 = phi i32 [ %call97, %if.then94 ], [ 0, %for.end92.exit_queue_walk_crit_edge ], [ 0, %if.end17.exit_queue_walk_crit_edge ], [ %call82, %if.then79.exit_queue_walk_crit_edge ]
  br i1 %write, label %exit_queue_walk.exit_crit_edge, label %land.lhs.true100

exit_queue_walk.exit_crit_edge:                   ; preds = %exit_queue_walk
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

land.lhs.true100:                                 ; preds = %exit_queue_walk
  %settings101 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 7
  %85 = ptrtoint ptr %settings101 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %settings101, align 4
  %broken_sg_support103 = getelementptr inbounds %struct.brcmf_mp_device, ptr %86, i32 0, i32 8, i32 0, i32 5
  %87 = ptrtoint ptr %broken_sg_support103 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %broken_sg_support103, align 4, !range !132
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool104.not = icmp eq i8 %88, 0
  br i1 %tobool104.not, label %land.lhs.true100.exit_crit_edge, label %if.then106

land.lhs.true100.exit_crit_edge:                  ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.then106:                                       ; preds = %land.lhs.true100
  %89 = ptrtoint ptr %pktlist to i32
  call void @__asan_load4_noabort(i32 %89)
  %pkt_next.2320 = load ptr, ptr %pktlist, align 4
  %cmp110.not321 = icmp eq ptr %pkt_next.2320, %pktlist
  br i1 %cmp110.not321, label %if.then106.exit_crit_edge, label %while.cond113.preheader.preheader

if.then106.exit_crit_edge:                        ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

while.cond113.preheader.preheader:                ; preds = %if.then106
  %90 = ptrtoint ptr %local_list to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %local_list, align 4
  br label %while.cond113.preheader

for.cond109.loopexit:                             ; preds = %if.end135
  %92 = ptrtoint ptr %pkt_next.2324 to i32
  call void @__asan_load4_noabort(i32 %92)
  %pkt_next.2 = load ptr, ptr %pkt_next.2324, align 4
  %cmp110.not = icmp eq ptr %pkt_next.2, %pktlist
  br i1 %cmp110.not, label %for.cond109.loopexit.exit_crit_edge, label %for.cond109.loopexit.while.cond113.preheader_crit_edge

for.cond109.loopexit.while.cond113.preheader_crit_edge: ; preds = %for.cond109.loopexit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond113.preheader

for.cond109.loopexit.exit_crit_edge:              ; preds = %for.cond109.loopexit
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

while.cond113.preheader:                          ; preds = %for.cond109.loopexit.while.cond113.preheader_crit_edge, %while.cond113.preheader.preheader
  %pkt_next.2324 = phi ptr [ %pkt_next.2, %for.cond109.loopexit.while.cond113.preheader_crit_edge ], [ %pkt_next.2320, %while.cond113.preheader.preheader ]
  %src.0323 = phi ptr [ %src.2, %for.cond109.loopexit.while.cond113.preheader_crit_edge ], [ %91, %while.cond113.preheader.preheader ]
  %src_offset.0322 = phi i32 [ %src_offset.2, %for.cond109.loopexit.while.cond113.preheader_crit_edge ], [ 0, %while.cond113.preheader.preheader ]
  %len115 = getelementptr inbounds %struct.sk_buff, ptr %pkt_next.2324, i32 0, i32 6
  %data127 = getelementptr inbounds %struct.sk_buff, ptr %pkt_next.2324, i32 0, i32 19
  br label %while.cond113

while.cond113:                                    ; preds = %if.end135.while.cond113_crit_edge, %while.cond113.preheader
  %src_offset.1 = phi i32 [ %src_offset.2, %if.end135.while.cond113_crit_edge ], [ %src_offset.0322, %while.cond113.preheader ]
  %dst_offset.0 = phi i32 [ %add136, %if.end135.while.cond113_crit_edge ], [ 0, %while.cond113.preheader ]
  %src.1 = phi ptr [ %src.2, %if.end135.while.cond113_crit_edge ], [ %src.0323, %while.cond113.preheader ]
  %93 = ptrtoint ptr %len115 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %len115, align 4
  %sub116 = sub i32 %94, %dst_offset.0
  %len117 = getelementptr inbounds %struct.sk_buff, ptr %src.1, i32 0, i32 6
  %95 = ptrtoint ptr %len117 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %len117, align 4
  %sub118 = sub i32 %96, %src_offset.1
  %97 = call i32 @llvm.umin.i32(i32 %sub116, i32 %sub118)
  %data125 = getelementptr inbounds %struct.sk_buff, ptr %src.1, i32 0, i32 19
  %98 = ptrtoint ptr %data125 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %data125, align 4
  %add.ptr126 = getelementptr i8, ptr %99, i32 %src_offset.1
  %100 = ptrtoint ptr %data127 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %data127, align 4
  %add.ptr128 = getelementptr i8, ptr %101, i32 %dst_offset.0
  %102 = call ptr @memcpy(ptr %add.ptr128, ptr %add.ptr126, i32 %97)
  %add129 = add i32 %97, %src_offset.1
  %103 = ptrtoint ptr %len117 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %len117, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add129, i32 %104)
  %cmp131 = icmp eq i32 %add129, %104
  br i1 %cmp131, label %if.then133, label %while.cond113.if.end135_crit_edge

while.cond113.if.end135_crit_edge:                ; preds = %while.cond113
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end135

if.then133:                                       ; preds = %while.cond113
  call void @__sanitizer_cov_trace_pc() #9
  %105 = ptrtoint ptr %src.1 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %src.1, align 8
  %cmp.i273 = icmp eq ptr %106, %local_list
  %spec.store.select.i = select i1 %cmp.i273, ptr null, ptr %106
  br label %if.end135

if.end135:                                        ; preds = %if.then133, %while.cond113.if.end135_crit_edge
  %src_offset.2 = phi i32 [ 0, %if.then133 ], [ %add129, %while.cond113.if.end135_crit_edge ]
  %src.2 = phi ptr [ %spec.store.select.i, %if.then133 ], [ %src.1, %while.cond113.if.end135_crit_edge ]
  %add136 = add i32 %97, %dst_offset.0
  %107 = ptrtoint ptr %len115 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %len115, align 4
  %cmp138 = icmp eq i32 %add136, %108
  br i1 %cmp138, label %for.cond109.loopexit, label %if.end135.while.cond113_crit_edge

if.end135.while.cond113_crit_edge:                ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond113

exit:                                             ; preds = %for.cond109.loopexit.exit_crit_edge, %if.then106.exit_crit_edge, %land.lhs.true100.exit_crit_edge, %exit_queue_walk.exit_crit_edge, %while.end.exit_crit_edge, %while.body.exit_crit_edge
  %ret.4 = phi i32 [ %ret.3, %exit_queue_walk.exit_crit_edge ], [ %ret.3, %land.lhs.true100.exit_crit_edge ], [ -12, %while.end.exit_crit_edge ], [ %ret.3, %if.then106.exit_crit_edge ], [ %ret.3, %for.cond109.loopexit.exit_crit_edge ], [ -12, %while.body.exit_crit_edge ]
  %sgtable147 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 17
  %109 = ptrtoint ptr %sgtable147 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %sgtable147, align 4
  %orig_nents = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 17, i32 2
  %111 = ptrtoint ptr %orig_nents to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %orig_nents, align 4
  call void @sg_init_table(ptr noundef %110, i32 noundef %112) #7
  %113 = ptrtoint ptr %local_list to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %local_list, align 4
  %cmp.i.i325 = icmp eq ptr %114, %local_list
  %tobool.not.i274326 = icmp eq ptr %114, null
  %tobool.not.i327 = or i1 %cmp.i.i325, %tobool.not.i274326
  br i1 %tobool.not.i327, label %exit.cleanup_crit_edge, label %exit.while.body154_crit_edge

exit.while.body154_crit_edge:                     ; preds = %exit
  br label %while.body154

exit.cleanup_crit_edge:                           ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body154:                                    ; preds = %while.body154.while.body154_crit_edge, %exit.while.body154_crit_edge
  %115 = phi ptr [ %125, %while.body154.while.body154_crit_edge ], [ %114, %exit.while.body154_crit_edge ]
  %116 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %qlen.i, align 4
  %sub.i.i = add i32 %117, -1
  store volatile i32 %sub.i.i, ptr %qlen.i, align 4
  %118 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %115, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.43, ptr %115, i32 0, i32 1
  %120 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %115, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.43, ptr %119, i32 0, i32 1
  %122 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile ptr %121, ptr %prev17.i.i, align 4
  %123 = ptrtoint ptr %121 to i32
  call void @__asan_store4_noabort(i32 %123)
  store volatile ptr %119, ptr %121, align 8
  call void @brcmu_pkt_buf_free_skb(ptr noundef nonnull %115) #7
  %124 = ptrtoint ptr %local_list to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %local_list, align 4
  %cmp.i.i = icmp eq ptr %125, %local_list
  %tobool.not.i274 = icmp eq ptr %125, null
  %tobool.not.i = or i1 %cmp.i.i, %tobool.not.i274
  br i1 %tobool.not.i, label %while.body154.cleanup_crit_edge, label %while.body154.while.body154_crit_edge

while.body154.while.body154_crit_edge:            ; preds = %while.body154
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body154

while.body154.cleanup_crit_edge:                  ; preds = %while.body154
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %while.body154.cleanup_crit_edge, %exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %ret.4, %exit.cleanup_crit_edge ], [ %ret.4, %while.body154.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %mmc_dat) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %mmc_cmd) #7
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %mmc_req) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %local_list) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_sdiod_send_buf(ptr nocapture noundef %sdiodev, ptr nocapture noundef readonly %buf, i32 noundef %nbytes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cc_core = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 3
  %0 = ptrtoint ptr %cc_core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc_core, align 4
  %base = getelementptr inbounds %struct.brcmf_core, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base, align 4
  %call = tail call ptr @brcmu_pkt_buf_get_skb(i32 noundef %nbytes) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdiod_send_buf, ptr noundef nonnull @.str.8, i32 noundef %nbytes) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = call ptr @memcpy(ptr %5, ptr %buf, i32 %nbytes)
  %call1 = tail call fastcc i32 @brcmf_sdiod_set_backplane_window(ptr noundef %sdiodev, i32 noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end4:                                          ; preds = %if.end
  %and = and i32 %3, 32767
  %or = or i32 %and, 32768
  %func2 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 1
  %7 = ptrtoint ptr %func2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %func2, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 6
  %9 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len.i, align 4
  %add.i = add i32 %10, 3
  %and.i = and i32 %add.i, -4
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %call.i = tail call i32 @sdio_memcpy_toio(ptr noundef %8, i32 noundef %or, ptr noundef %12, i32 noundef %and.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -123, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, -123
  br i1 %cmp.i, label %if.then.i, label %if.end4.out_crit_edge

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then.i:                                        ; preds = %if.end4
  %state1.i.i = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 21
  %13 = ptrtoint ptr %state1.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp3.i.i = icmp eq i32 %14, 2
  br i1 %cmp3.i.i, label %if.then.i.out_crit_edge, label %do.body.i.i

if.then.i.out_crit_edge:                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.body.i.i:                                      ; preds = %if.then.i
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_sdiod_change_state, ptr noundef nonnull @.str.7, i32 noundef %14, i32 noundef 2) #7
  %15 = ptrtoint ptr %state1.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %state1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cond.i = icmp eq i32 %16, 1
  br i1 %cond.i, label %sw.epilog.sink.split.i.i, label %do.body.i.i.sw.epilog.i.i_crit_edge

do.body.i.i.sw.epilog.i.i_crit_edge:              ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

sw.epilog.sink.split.i.i:                         ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %bus_if9.i.i = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 6
  %17 = ptrtoint ptr %bus_if9.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bus_if9.i.i, align 4
  tail call void @brcmf_bus_change_state(ptr noundef %18, i32 noundef 0) #7
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.epilog.sink.split.i.i, %do.body.i.i.sw.epilog.i.i_crit_edge
  %19 = ptrtoint ptr %state1.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %state1.i.i, align 4
  br label %out

out:                                              ; preds = %sw.epilog.i.i, %if.then.i.out_crit_edge, %if.end4.out_crit_edge, %if.end.out_crit_edge
  %err.0 = phi i32 [ %call1, %if.end.out_crit_edge ], [ %call.i, %if.end4.out_crit_edge ], [ -123, %if.then.i.out_crit_edge ], [ -123, %sw.epilog.i.i ]
  tail call void @brcmu_pkt_buf_free_skb(ptr noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %do.body
  %retval.0 = phi i32 [ %err.0, %out ], [ -5, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_sdiod_send_pkt(ptr nocapture noundef %sdiodev, ptr noundef %pktq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cc_core = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 3
  %0 = ptrtoint ptr %cc_core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc_core, align 4
  %base = getelementptr inbounds %struct.brcmf_core, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base, align 4
  %qlen = getelementptr inbounds %struct.sk_buff_head, ptr %pktq, i32 0, i32 1
  %4 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qlen, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_sdiod_send_pkt, ptr noundef nonnull @.str.9, i32 noundef %3, i32 noundef %5) #7
  %call = tail call fastcc i32 @brcmf_sdiod_set_backplane_window(ptr noundef %sdiodev, i32 noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %3, 32767
  %or = or i32 %and, 32768
  %6 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %qlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %if.end.if.then3_crit_edge, label %lor.lhs.false

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

lor.lhs.false:                                    ; preds = %if.end
  %sg_support = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 12
  %8 = ptrtoint ptr %sg_support to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sg_support, align 4, !range !132
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool2.not = icmp eq i8 %9, 0
  br i1 %tobool2.not, label %lor.lhs.false.if.then3_crit_edge, label %if.else

lor.lhs.false.if.then3_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

if.then3:                                         ; preds = %lor.lhs.false.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %func2 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.then3
  %skb.0.in = phi ptr [ %pktq, %if.then3 ], [ %skb.0, %for.body.for.cond_crit_edge ]
  %10 = ptrtoint ptr %skb.0.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %skb.0 = load ptr, ptr %skb.0.in, align 4
  %cmp4.not = icmp eq ptr %skb.0, %pktq
  br i1 %cmp4.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %11 = ptrtoint ptr %func2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %func2, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 6
  %13 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len.i, align 4
  %add.i = add i32 %14, 3
  %and.i = and i32 %add.i, -4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 19
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i, align 4
  %call.i = tail call i32 @sdio_memcpy_toio(ptr noundef %12, i32 noundef %or, ptr noundef %16, i32 noundef %and.i) #7
  %17 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %call.i, label %for.body.cleanup_crit_edge [
    i32 -123, label %if.then.i
    i32 0, label %for.body.for.cond_crit_edge
  ]

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %for.body
  %state1.i.i = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 21
  %18 = ptrtoint ptr %state1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp3.i.i = icmp eq i32 %19, 2
  br i1 %cmp3.i.i, label %if.then.i.cleanup_crit_edge, label %do.body.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body.i.i:                                      ; preds = %if.then.i
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_sdiod_change_state, ptr noundef nonnull @.str.7, i32 noundef %19, i32 noundef 2) #7
  %20 = ptrtoint ptr %state1.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %state1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cond.i = icmp eq i32 %21, 1
  br i1 %cond.i, label %sw.epilog.sink.split.i.i, label %do.body.i.i.sw.epilog.i.i_crit_edge

do.body.i.i.sw.epilog.i.i_crit_edge:              ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

sw.epilog.sink.split.i.i:                         ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %bus_if9.i.i = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 6
  %22 = ptrtoint ptr %bus_if9.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus_if9.i.i, align 4
  tail call void @brcmf_bus_change_state(ptr noundef %23, i32 noundef 0) #7
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.epilog.sink.split.i.i, %do.body.i.i.sw.epilog.i.i_crit_edge
  %24 = ptrtoint ptr %state1.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %state1.i.i, align 4
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %func210 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 1
  %25 = ptrtoint ptr %func210 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %func210, align 4
  %call11 = tail call fastcc i32 @brcmf_sdiod_sglist_rw(ptr noundef %sdiodev, ptr noundef %26, i1 noundef zeroext true, i32 noundef %or, ptr noundef %pktq)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %sw.epilog.i.i, %if.then.i.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call11, %if.else ], [ -123, %if.then.i.cleanup_crit_edge ], [ -123, %sw.epilog.i.i ], [ %call.i, %for.body.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_sdiod_ramrw(ptr nocapture noundef %sdiodev, i1 noundef zeroext %write, i32 noundef %address, ptr nocapture noundef %data, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.umin.i32(i32 %size, i32 32768)
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %0, i32 noundef 2592) #7
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %do.body, label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdiod_ramrw, ptr noundef nonnull @.str.10, i32 noundef %0) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %priority = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 6
  %1 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %priority, align 4
  %2 = ptrtoint ptr %sdiodev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sdiodev, align 4
  tail call void @sdio_claim_host(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool5.not105 = icmp eq i32 %size, 0
  br i1 %tobool5.not105, label %if.end.while.end_crit_edge, label %while.body.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %cond12 = select i1 %write, ptr @.str.12, ptr @.str.13
  %data35 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %call6118 = tail call fastcc i32 @brcmf_sdiod_set_backplane_window(ptr noundef %sdiodev, i32 noundef %address)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6118)
  %tobool7.not119 = icmp eq i32 %call6118, 0
  br i1 %tobool7.not119, label %do.body10.lr.ph, label %while.body.lr.ph.while.end_crit_edge

while.body.lr.ph.while.end_crit_edge:             ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

do.body10.lr.ph:                                  ; preds = %while.body.lr.ph
  %and = and i32 %address, 32767
  %add = add i32 %and, %size
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %add)
  %tobool2.not = icmp ult i32 %add, 32768
  %sub = sub nuw nsw i32 32768, %and
  %dsize.0 = select i1 %tobool2.not, i32 %size, i32 %sub
  br label %do.body10

do.body10:                                        ; preds = %if.end47.do.body10_crit_edge, %do.body10.lr.ph
  %data.addr.0106124 = phi ptr [ %data, %do.body10.lr.ph ], [ %add.ptr, %if.end47.do.body10_crit_edge ]
  %size.addr.0108123 = phi i32 [ %size, %do.body10.lr.ph ], [ %sub37, %if.end47.do.body10_crit_edge ]
  %sdaddr.0109122 = phi i32 [ %and, %do.body10.lr.ph ], [ 0, %if.end47.do.body10_crit_edge ]
  %dsize.1110121 = phi i32 [ %dsize.0, %do.body10.lr.ph ], [ %25, %if.end47.do.body10_crit_edge ]
  %address.addr.0112120 = phi i32 [ %address, %do.body10.lr.ph ], [ %add40, %if.end47.do.body10_crit_edge ]
  %and13 = and i32 %address.addr.0112120, -32768
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_sdiod_ramrw, ptr noundef nonnull @.str.11, ptr noundef nonnull %cond12, i32 noundef %dsize.1110121, i32 noundef %sdaddr.0109122, i32 noundef %and13) #7
  %or = or i32 %sdaddr.0109122, 32768
  %call17 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %dsize.1110121) #7
  br i1 %write, label %if.then19, label %if.end26.thread102

if.then19:                                        ; preds = %do.body10
  %4 = ptrtoint ptr %data35 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data35, align 4
  %6 = call ptr @memcpy(ptr %5, ptr %data.addr.0106124, i32 %dsize.1110121)
  %7 = ptrtoint ptr %sdiodev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sdiodev, align 4
  %9 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len.i, align 4
  %add.i = add i32 %10, 3
  %and.i = and i32 %add.i, -4
  %11 = load ptr, ptr %data35, align 4
  %call.i = tail call i32 @sdio_memcpy_toio(ptr noundef %8, i32 noundef %or, ptr noundef %11, i32 noundef %and.i) #7
  %12 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %call.i, label %if.then19.do.body29_crit_edge [
    i32 -123, label %if.then.i
    i32 0, label %if.then19.if.end36_crit_edge
  ]

if.then19.if.end36_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then19.do.body29_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body29

if.then.i:                                        ; preds = %if.then19
  %state1.i.i = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 21
  %13 = ptrtoint ptr %state1.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp3.i.i = icmp eq i32 %14, 2
  br i1 %cmp3.i.i, label %if.then.i.do.body29_crit_edge, label %do.body.i.i

if.then.i.do.body29_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body29

do.body.i.i:                                      ; preds = %if.then.i
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_sdiod_change_state, ptr noundef nonnull @.str.7, i32 noundef %14, i32 noundef 2) #7
  %15 = ptrtoint ptr %state1.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %state1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cond.i = icmp eq i32 %16, 1
  br i1 %cond.i, label %sw.epilog.sink.split.i.i, label %do.body.i.i.sw.epilog.i.i_crit_edge

do.body.i.i.sw.epilog.i.i_crit_edge:              ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

sw.epilog.sink.split.i.i:                         ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %bus_if9.i.i = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 6
  %17 = ptrtoint ptr %bus_if9.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bus_if9.i.i, align 4
  tail call void @brcmf_bus_change_state(ptr noundef %18, i32 noundef 0) #7
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.epilog.sink.split.i.i, %do.body.i.i.sw.epilog.i.i_crit_edge
  %19 = ptrtoint ptr %state1.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %state1.i.i, align 4
  br label %do.body29

if.end26.thread102:                               ; preds = %do.body10
  %20 = ptrtoint ptr %sdiodev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sdiodev, align 4
  %call25 = tail call fastcc i32 @brcmf_sdiod_skbuff_read(ptr noundef %sdiodev, ptr noundef %21, i32 noundef %or, ptr noundef nonnull %call.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool27.not104 = icmp eq i32 %call25, 0
  br i1 %tobool27.not104, label %if.then34, label %if.end26.thread102.do.body29_crit_edge

if.end26.thread102.do.body29_crit_edge:           ; preds = %if.end26.thread102
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body29

do.body29:                                        ; preds = %if.end26.thread102.do.body29_crit_edge, %sw.epilog.i.i, %if.then.i.do.body29_crit_edge, %if.then19.do.body29_crit_edge
  %err.1101 = phi i32 [ -123, %if.then.i.do.body29_crit_edge ], [ -123, %sw.epilog.i.i ], [ %call.i, %if.then19.do.body29_crit_edge ], [ %call25, %if.end26.thread102.do.body29_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdiod_ramrw, ptr noundef nonnull @.str.14) #7
  br label %while.end

if.then34:                                        ; preds = %if.end26.thread102
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %data35 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data35, align 4
  %24 = call ptr @memcpy(ptr %data.addr.0106124, ptr %23, i32 %dsize.1110121)
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.then19.if.end36_crit_edge
  tail call void @skb_trim(ptr noundef nonnull %call.i.i, i32 noundef 0) #7
  %sub37 = sub i32 %size.addr.0108123, %dsize.1110121
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub37)
  %tobool38.not = icmp eq i32 %sub37, 0
  br i1 %tobool38.not, label %if.end36.while.end_crit_edge, label %if.end47

if.end36.while.end_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end47:                                         ; preds = %if.end36
  %add.ptr = getelementptr i8, ptr %data.addr.0106124, i32 %dsize.1110121
  %add40 = add i32 %address.addr.0112120, %dsize.1110121
  %25 = tail call i32 @llvm.umin.i32(i32 %sub37, i32 32768)
  %call6 = tail call fastcc i32 @brcmf_sdiod_set_backplane_window(ptr noundef %sdiodev, i32 noundef %add40)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end47.do.body10_crit_edge, label %if.end47.while.end_crit_edge

if.end47.while.end_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end47.do.body10_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body10

while.end:                                        ; preds = %if.end47.while.end_crit_edge, %if.end36.while.end_crit_edge, %do.body29, %while.body.lr.ph.while.end_crit_edge, %if.end.while.end_crit_edge
  %err.2 = phi i32 [ %err.1101, %do.body29 ], [ 0, %if.end.while.end_crit_edge ], [ %call6118, %while.body.lr.ph.while.end_crit_edge ], [ 0, %if.end36.while.end_crit_edge ], [ %call6, %if.end47.while.end_crit_edge ]
  tail call void @consume_skb(ptr noundef nonnull %call.i.i) #7
  %26 = ptrtoint ptr %sdiodev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sdiodev, align 4
  tail call void @sdio_release_host(ptr noundef %27) #7
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.body
  %retval.0 = phi i32 [ %err.2, %while.end ], [ -5, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_sdiod_abort(ptr nocapture noundef readonly %sdiodev, ptr nocapture noundef readonly %func) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_sdiod_abort, ptr noundef nonnull @.str.15) #7
  %0 = ptrtoint ptr %sdiodev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdiodev, align 4
  %num = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 3
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num, align 4
  %conv = trunc i32 %3 to i8
  tail call void @sdio_f0_writeb(ptr noundef %1, i8 noundef zeroext %conv, i32 noundef 6, ptr noundef null) #7
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_sdiod_abort, ptr noundef nonnull @.str.16) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_sdiod_sgtable_alloc(ptr noundef %sdiodev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %func2 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 1
  %0 = ptrtoint ptr %func2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %func2, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %max_segs = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 21
  %6 = ptrtoint ptr %max_segs to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %max_segs, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %7)
  %cmp = icmp ugt i16 %7, 1
  %sg_support = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 12
  %frombool = zext i1 %cmp to i8
  %8 = ptrtoint ptr %sg_support to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool, ptr %sg_support, align 4
  %max_blk_count = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 25
  %9 = ptrtoint ptr %max_blk_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_blk_count, align 128
  %11 = tail call i32 @llvm.umin.i32(i32 %10, i32 511)
  %max_req_size = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 23
  %12 = ptrtoint ptr %max_req_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_req_size, align 8
  %cur_blksize = getelementptr inbounds %struct.sdio_func, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %cur_blksize to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cur_blksize, align 4
  %mul = mul i32 %15, %11
  %16 = tail call i32 @llvm.umin.i32(i32 %13, i32 %mul)
  %max_request_size = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 13
  %17 = ptrtoint ptr %max_request_size to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %max_request_size, align 4
  %18 = ptrtoint ptr %max_segs to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %max_segs, align 4
  %20 = tail call i16 @llvm.umin.i16(i16 %19, i16 204)
  %max_segment_count = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 14
  %21 = ptrtoint ptr %max_segment_count to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %max_segment_count, align 4
  %max_seg_size = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 20
  %22 = ptrtoint ptr %max_seg_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_seg_size, align 16
  %max_segment_size = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 15
  %24 = ptrtoint ptr %max_segment_size to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %max_segment_size, align 4
  br i1 %cmp, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %settings = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 7
  %25 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %settings, align 4
  %bus = getelementptr inbounds %struct.brcmf_mp_device, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bus, align 4
  %29 = tail call i32 @llvm.umax.i32(i32 %28, i32 32)
  %shr = lshr i32 %29, 4
  %add = add i32 %29, 1
  %add30 = add i32 %add, %shr
  %conv32 = zext i16 %20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add30, i32 %conv32)
  %cmp33 = icmp ugt i32 %add30, %conv32
  br i1 %cmp33, label %do.end, label %if.end.if.end49_crit_edge, !prof !134

if.end.if.end49_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 775, i32 noundef 9, ptr noundef null) #7
  br label %if.end49

if.end49:                                         ; preds = %do.end, %if.end.if.end49_crit_edge
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_sdiod_sgtable_alloc, ptr noundef nonnull @.str.18, i32 noundef %add30) #7
  %sgtable = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 17
  %call = tail call i32 @sg_alloc_table(ptr noundef %sgtable, i32 noundef %add30, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp60 = icmp slt i32 %call, 0
  br i1 %cmp60, label %do.body63, label %if.end49.if.end67_crit_edge

if.end49.if.end67_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67

do.body63:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdiod_sgtable_alloc, ptr noundef nonnull @.str.19) #7
  %30 = ptrtoint ptr %sg_support to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %sg_support, align 4
  br label %if.end67

if.end67:                                         ; preds = %do.body63, %if.end49.if.end67_crit_edge
  %31 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %settings, align 4
  %bus69 = getelementptr inbounds %struct.brcmf_mp_device, ptr %32, i32 0, i32 8
  %33 = ptrtoint ptr %bus69 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bus69, align 4
  %txglomsz71 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 16
  %35 = ptrtoint ptr %txglomsz71 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %txglomsz71, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end67, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @brcmf_sdiod_freezing(ptr nocapture noundef readonly %sdiodev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %freezer = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 22
  %0 = ptrtoint ptr %freezer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %freezer, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %1, i32 noundef 4) #7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool = icmp ne i32 %3, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_sdiod_try_freeze(ptr nocapture noundef readonly %sdiodev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %freezer.i = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 22
  %0 = ptrtoint ptr %freezer.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %freezer.i, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %1, i32 noundef 4) #7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not = icmp eq i32 %3, 0
  br i1 %tobool.i.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %freezer.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %freezer.i, align 4
  %frozen_count = getelementptr inbounds %struct.brcmf_sdiod_freezer, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %frozen_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %frozen_count, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %frozen_count, align 4
  %8 = load ptr, ptr %freezer.i, align 4
  %thread_freeze = getelementptr inbounds %struct.brcmf_sdiod_freezer, ptr %8, i32 0, i32 3
  tail call void @__wake_up(ptr noundef %thread_freeze, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  %9 = ptrtoint ptr %freezer.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %freezer.i, align 4
  %resumed = getelementptr inbounds %struct.brcmf_sdiod_freezer, ptr %10, i32 0, i32 4
  tail call void @wait_for_completion(ptr noundef %resumed) #7
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_sdiod_freezer_count(ptr nocapture noundef readonly %sdiodev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %freezer = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 22
  %0 = ptrtoint ptr %freezer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %freezer, align 4
  %thread_count = getelementptr inbounds %struct.brcmf_sdiod_freezer, ptr %1, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %thread_count, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %thread_count, i32 1, i32 3, i32 1) #7
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %thread_count, ptr %thread_count, i32 1, ptr elementtype(i32) %thread_count) #7, !srcloc !138
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_sdiod_freezer_uncount(ptr nocapture noundef readonly %sdiodev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %freezer = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 22
  %0 = ptrtoint ptr %freezer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %freezer, align 4
  %thread_count = getelementptr inbounds %struct.brcmf_sdiod_freezer, ptr %1, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %thread_count, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %thread_count, i32 1, i32 3, i32 1) #7
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %thread_count, ptr %thread_count, i32 1, ptr elementtype(i32) %thread_count) #7, !srcloc !139
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_sdiod_remove(ptr noundef %sdiodev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 21
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %state, align 4
  %bus = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 4
  %1 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bus, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @brcmf_sdio_remove(ptr noundef nonnull %2) #7
  %3 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %bus, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %freezer.i = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 22
  %4 = ptrtoint ptr %freezer.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %freezer.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.brcmf_sdiod_freezer_detach.exit_crit_edge, label %if.then.i

if.end.brcmf_sdiod_freezer_detach.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %brcmf_sdiod_freezer_detach.exit

if.then.i:                                        ; preds = %if.end
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %5, i32 noundef 4) #7
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not.i = icmp eq i32 %7, 0
  br i1 %tobool2.not.i, label %if.then.i.if.end.i_crit_edge, label %do.end.i, !prof !133

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 803, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %8 = ptrtoint ptr %freezer.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %freezer.i, align 4
  tail call void @kfree(ptr noundef %9) #7
  br label %brcmf_sdiod_freezer_detach.exit

brcmf_sdiod_freezer_detach.exit:                  ; preds = %if.end.i, %if.end.brcmf_sdiod_freezer_detach.exit_crit_edge
  %func2 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 1
  %10 = ptrtoint ptr %func2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %func2, align 4
  tail call void @sdio_claim_host(ptr noundef %11) #7
  %12 = ptrtoint ptr %func2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %func2, align 4
  %call = tail call i32 @sdio_disable_func(ptr noundef %13) #7
  %14 = ptrtoint ptr %func2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %func2, align 4
  tail call void @sdio_release_host(ptr noundef %15) #7
  %16 = ptrtoint ptr %sdiodev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sdiodev, align 4
  tail call void @sdio_claim_host(ptr noundef %17) #7
  %18 = ptrtoint ptr %sdiodev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sdiodev, align 4
  %call6 = tail call i32 @sdio_disable_func(ptr noundef %19) #7
  %20 = ptrtoint ptr %sdiodev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sdiodev, align 4
  tail call void @sdio_release_host(ptr noundef %21) #7
  %sgtable = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 17
  tail call void @sg_free_table(ptr noundef %sgtable) #7
  %sbwad = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 2
  %22 = ptrtoint ptr %sbwad to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %sbwad, align 4
  %23 = ptrtoint ptr %sdiodev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sdiodev, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 128
  tail call void @pm_runtime_allow(ptr noundef %30) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_sdio_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_disable_func(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_allow(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_sdiod_probe(ptr noundef %sdiodev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdiodev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdiodev, align 4
  tail call void @sdio_claim_host(ptr noundef %1) #7
  %2 = ptrtoint ptr %sdiodev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sdiodev, align 4
  %call = tail call i32 @sdio_set_block_size(ptr noundef %3, i32 noundef 64) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdiod_probe, ptr noundef nonnull @.str.20) #7
  %4 = ptrtoint ptr %sdiodev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sdiodev, align 4
  tail call void @sdio_release_host(ptr noundef %5) #7
  br label %if.then38

if.end:                                           ; preds = %entry
  %func2 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 1
  %6 = ptrtoint ptr %func2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %func2, align 4
  %device = getelementptr inbounds %struct.sdio_func, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %device, align 4
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.47)
  switch i16 %9, label %if.end.sw.epilog_crit_edge [
    i16 17267, label %sw.bb
    i16 17241, label %if.end.sw.bb3_crit_edge
    i16 17236, label %if.end.sw.bb3_crit_edge68
    i16 17238, label %if.end.sw.bb3_crit_edge69
    i16 17193, label %sw.bb4
  ]

if.end.sw.bb3_crit_edge69:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

if.end.sw.bb3_crit_edge68:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

if.end.sw.bb3_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end.sw.bb3_crit_edge, %if.end.sw.bb3_crit_edge68, %if.end.sw.bb3_crit_edge69
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb3, %sw.bb, %if.end.sw.epilog_crit_edge
  %f2_blksz.0 = phi i32 [ 512, %if.end.sw.epilog_crit_edge ], [ 128, %sw.bb4 ], [ 256, %sw.bb3 ], [ 256, %sw.bb ]
  %call6 = tail call i32 @sdio_set_block_size(ptr noundef %7, i32 noundef %f2_blksz.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.body13, label %do.body9

do.body9:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdiod_probe, ptr noundef nonnull @.str.21) #7
  %11 = ptrtoint ptr %sdiodev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sdiodev, align 4
  tail call void @sdio_release_host(ptr noundef %12) #7
  br label %if.then38

do.body13:                                        ; preds = %sw.epilog
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_sdiod_probe, ptr noundef nonnull @.str.22, i32 noundef %f2_blksz.0) #7
  %13 = ptrtoint ptr %func2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %func2, align 4
  %enable_timeout = getelementptr inbounds %struct.sdio_func, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %enable_timeout to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 3000, ptr %enable_timeout, align 8
  %16 = ptrtoint ptr %sdiodev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sdiodev, align 4
  %call19 = tail call i32 @sdio_enable_func(ptr noundef %17) #7
  %18 = ptrtoint ptr %sdiodev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sdiodev, align 4
  tail call void @sdio_release_host(ptr noundef %19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool21.not = icmp eq i32 %call19, 0
  br i1 %tobool21.not, label %if.end26, label %do.body23

do.body23:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdiod_probe, ptr noundef nonnull @.str.23, i32 noundef %call19) #7
  br label %if.then38

if.end26:                                         ; preds = %do.body13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 120) #10
  %freezer.i = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 22
  %21 = ptrtoint ptr %freezer.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i.i, ptr %freezer.i, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end26.if.then38_crit_edge, label %if.end30

if.end26.if.then38_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then38

if.end30:                                         ; preds = %if.end26
  %thread_count.i = getelementptr inbounds %struct.brcmf_sdiod_freezer, ptr %call7.i.i.i, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %thread_count.i, i32 noundef 4) #7
  %22 = ptrtoint ptr %thread_count.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 0, ptr %thread_count.i, align 4
  %23 = ptrtoint ptr %freezer.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %freezer.i, align 4
  %call.i.i11.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %24, i32 noundef 4) #7
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 0, ptr %24, align 4
  %26 = ptrtoint ptr %freezer.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %freezer.i, align 4
  %thread_freeze.i = getelementptr inbounds %struct.brcmf_sdiod_freezer, ptr %27, i32 0, i32 3
  tail call void @__init_waitqueue_head(ptr noundef %thread_freeze.i, ptr noundef nonnull @.str.29, ptr noundef nonnull @brcmf_sdiod_freezer_attach.__key) #7
  %28 = ptrtoint ptr %freezer.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %freezer.i, align 4
  %resumed.i = getelementptr inbounds %struct.brcmf_sdiod_freezer, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %resumed.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %resumed.i, align 4
  %wait.i.i = getelementptr inbounds %struct.brcmf_sdiod_freezer, ptr %29, i32 0, i32 4, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.30, ptr noundef nonnull @init_completion.__key) #7
  %call31 = tail call ptr @brcmf_sdio_probe(ptr noundef %sdiodev) #7
  %bus = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 4
  %31 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call31, ptr %bus, align 4
  %tobool33.not = icmp eq ptr %call31, null
  br i1 %tobool33.not, label %if.end30.if.then38_crit_edge, label %out

if.end30.if.then38_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then38

out:                                              ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %func2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %func2, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 128
  tail call void @pm_runtime_forbid(ptr noundef %39) #7
  %caps.i = getelementptr inbounds %struct.mmc_host, ptr %37, i32 0, i32 16
  %40 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %caps.i, align 32
  %or.i = or i32 %41, 256
  store i32 %or.i, ptr %caps.i, align 32
  br label %if.end40

if.then38:                                        ; preds = %if.end30.if.then38_crit_edge, %if.end26.if.then38_crit_edge, %do.body23, %do.body9, %do.body
  %ret.0.ph = phi i32 [ -12, %if.end26.if.then38_crit_edge ], [ -19, %if.end30.if.then38_crit_edge ], [ %call19, %do.body23 ], [ %call6, %do.body9 ], [ %call, %do.body ]
  %call39 = tail call i32 @brcmf_sdiod_remove(ptr noundef %sdiodev)
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %out
  %ret.067 = phi i32 [ %ret.0.ph, %if.then38 ], [ 0, %out ]
  ret i32 %ret.067
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_set_block_size(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_enable_func(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmf_sdio_probe(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_sdio_wowl_config(ptr nocapture noundef readonly %dev, i1 noundef zeroext %enabled) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %enabled to i8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %conv = zext i1 %enabled to i32
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_sdio_wowl_config, ptr noundef nonnull @.str.24, i32 noundef %conv) #7
  %wowl_enabled = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %wowl_enabled to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %wowl_enabled, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_sdio_register() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sdio_register_driver(ptr noundef nonnull @brcmf_sdmmc_driver) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_register_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_sdio_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_sdio_exit, ptr noundef nonnull @.str.15) #7
  tail call void @sdio_unregister_driver(ptr noundef nonnull @brcmf_sdmmc_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_sdio_isr(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_memcpy_fromio(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_readsb(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmc_submit_one(ptr noundef %md, ptr noundef %mr, ptr nocapture noundef %mc, i32 noundef %sg_cnt, i32 noundef %req_sz, i32 noundef %func_blk_sz, ptr nocapture noundef %addr, ptr nocapture noundef %sdiodev, ptr nocapture noundef readonly %func, i32 noundef %write) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sg_len = getelementptr inbounds %struct.mmc_data, ptr %md, i32 0, i32 10
  %0 = ptrtoint ptr %sg_len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %sg_cnt, ptr %sg_len, align 4
  %div = sdiv i32 %req_sz, %func_blk_sz
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %md, i32 0, i32 3
  %1 = ptrtoint ptr %blocks to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %div, ptr %blocks, align 4
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr, align 4
  %and = shl i32 %3, 9
  %shl = and i32 %and, 67108352
  %arg = getelementptr inbounds %struct.mmc_command, ptr %mc, i32 0, i32 1
  %4 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arg, align 4
  %or = or i32 %shl, %5
  store i32 %or, ptr %arg, align 4
  %6 = load i32, ptr %blocks, align 4
  %and2 = and i32 %6, 511
  %or4 = or i32 %and2, %or
  store i32 %or4, ptr %arg, align 4
  %num = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 3
  %7 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp eq i32 %8, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %addr, align 4
  %add = add i32 %10, %req_sz
  store i32 %add, ptr %addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %11 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %func, align 8
  tail call void @mmc_set_data_timeout(ptr noundef %md, ptr noundef %12) #7
  %13 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %func, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  tail call void @mmc_wait_for_req(ptr noundef %16, ptr noundef %mr) #7
  %error = getelementptr inbounds %struct.mmc_command, ptr %mc, i32 0, i32 5
  %17 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %cond.false, label %if.end.cond.end_crit_edge

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %error7 = getelementptr inbounds %struct.mmc_data, ptr %md, i32 0, i32 5
  %19 = ptrtoint ptr %error7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %error7, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %20, %cond.false ], [ %18, %if.end.cond.end_crit_edge ]
  %21 = zext i32 %cond to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %cond, label %do.body [
    i32 -123, label %if.then9
    i32 0, label %cond.end.if.end15_crit_edge
  ]

cond.end.if.end15_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then9:                                         ; preds = %cond.end
  %state1.i = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 21
  %22 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %state1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp3.i = icmp eq i32 %23, 2
  br i1 %cmp3.i, label %if.then9.if.end15_crit_edge, label %do.body.i

if.then9.if.end15_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

do.body.i:                                        ; preds = %if.then9
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_sdiod_change_state, ptr noundef nonnull @.str.7, i32 noundef %23, i32 noundef 2) #7
  %24 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %state1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cond30 = icmp eq i32 %25, 1
  br i1 %cond30, label %sw.epilog.sink.split.i, label %do.body.i.sw.epilog.i_crit_edge

do.body.i.sw.epilog.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.epilog.sink.split.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %bus_if9.i = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %sdiodev, i32 0, i32 6
  %26 = ptrtoint ptr %bus_if9.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bus_if9.i, align 4
  tail call void @brcmf_bus_change_state(ptr noundef %27, i32 noundef 0) #7
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %do.body.i.sw.epilog.i_crit_edge
  %28 = ptrtoint ptr %state1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2, ptr %state1.i, align 4
  br label %if.end15

do.body:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool12.not = icmp eq i32 %write, 0
  %cond13 = select i1 %tobool12.not, ptr @.str.13, ptr @.str.12
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.mmc_submit_one, ptr noundef nonnull @.str.28, ptr noundef nonnull %cond13, i32 noundef %cond) #7
  br label %if.end15

if.end15:                                         ; preds = %do.body, %sw.epilog.i, %if.then9.if.end15_crit_edge, %cond.end.if.end15_crit_edge
  %ret.0 = phi i32 [ -5, %do.body ], [ %cond, %cond.end.if.end15_crit_edge ], [ -123, %if.then9.if.end15_crit_edge ], [ -123, %sw.epilog.i ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_set_data_timeout(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_wait_for_req(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_memcpy_toio(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_forbid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_ops_sdio_probe(ptr noundef %func, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_ops_sdio_probe, ptr noundef nonnull @.str.15) #7
  %class = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 4
  %0 = ptrtoint ptr %class to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %class, align 8
  %conv = zext i8 %1 to i32
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_ops_sdio_probe, ptr noundef nonnull @.str.32, i32 noundef %conv) #7
  %vendor = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 5
  %2 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vendor, align 2
  %conv5 = zext i16 %3 to i32
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_ops_sdio_probe, ptr noundef nonnull @.str.33, i32 noundef %conv5) #7
  %device = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 6
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device, align 4
  %conv9 = zext i16 %5 to i32
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_ops_sdio_probe, ptr noundef nonnull @.str.34, i32 noundef %conv9) #7
  %num = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 3
  %6 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_ops_sdio_probe, ptr noundef nonnull @.str.35, i32 noundef %7) #7
  %8 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %func, align 8
  %quirks = getelementptr inbounds %struct.mmc_card, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %quirks, align 8
  %or = or i32 %11, 1
  store i32 %or, ptr %quirks, align 8
  %12 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %13, label %if.then21 [
    i32 1, label %entry.cleanup_crit_edge
    i32 2, label %if.end22
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then21:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 52) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end22.cleanup_crit_edge, label %if.end24

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24:                                         ; preds = %if.end22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i87 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 764) #10
  %tobool26.not = icmp eq ptr %call7.i.i87, null
  br i1 %tobool26.not, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  %17 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %func, align 8
  %sdio_func = getelementptr inbounds %struct.mmc_card, ptr %18, i32 0, i32 31
  %19 = ptrtoint ptr %sdio_func to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sdio_func, align 8
  %21 = ptrtoint ptr %call7.i.i87 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %call7.i.i87, align 8
  %func2 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %call7.i.i87, i32 0, i32 1
  %22 = ptrtoint ptr %func2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %func, ptr %func2, align 4
  %bus_if30 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %call7.i.i87, i32 0, i32 6
  %23 = ptrtoint ptr %bus_if30 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i.i, ptr %bus_if30, align 8
  %24 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i.i87, ptr %call7.i.i, align 8
  %proto_type = getelementptr inbounds %struct.brcmf_bus, ptr %call7.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %proto_type to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %proto_type, align 4
  %driver_data.i = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 8
  %26 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i.i, ptr %driver_data.i, align 4
  %driver_data.i88 = getelementptr inbounds %struct.sdio_func, ptr %20, i32 0, i32 1, i32 8
  %27 = ptrtoint ptr %driver_data.i88 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i.i, ptr %driver_data.i88, align 4
  %28 = load ptr, ptr %call7.i.i87, align 8
  %dev35 = getelementptr inbounds %struct.sdio_func, ptr %28, i32 0, i32 1
  %dev36 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %call7.i.i87, i32 0, i32 5
  %29 = ptrtoint ptr %dev36 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %dev35, ptr %dev36, align 4
  %state1.i = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %call7.i.i87, i32 0, i32 21
  %30 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %state1.i, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %31, label %do.body.i [
    i32 2, label %if.end28.brcmf_sdiod_change_state.exit_crit_edge
    i32 0, label %if.end28.brcmf_sdiod_change_state.exit_crit_edge91
  ]

if.end28.brcmf_sdiod_change_state.exit_crit_edge91: ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %brcmf_sdiod_change_state.exit

if.end28.brcmf_sdiod_change_state.exit_crit_edge: ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %brcmf_sdiod_change_state.exit

do.body.i:                                        ; preds = %if.end28
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_sdiod_change_state, ptr noundef nonnull @.str.7, i32 noundef %31, i32 noundef 0) #7
  %33 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %state1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cond = icmp eq i32 %34, 1
  br i1 %cond, label %sw.epilog.sink.split.i, label %do.body.i.sw.epilog.i_crit_edge

do.body.i.sw.epilog.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.epilog.sink.split.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %bus_if30 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bus_if30, align 8
  tail call void @brcmf_bus_change_state(ptr noundef %36, i32 noundef 0) #7
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %do.body.i.sw.epilog.i_crit_edge
  %37 = ptrtoint ptr %state1.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %state1.i, align 4
  br label %brcmf_sdiod_change_state.exit

brcmf_sdiod_change_state.exit:                    ; preds = %sw.epilog.i, %if.end28.brcmf_sdiod_change_state.exit_crit_edge, %if.end28.brcmf_sdiod_change_state.exit_crit_edge91
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_ops_sdio_probe, ptr noundef nonnull @.str.36) #7
  %call40 = tail call i32 @brcmf_sdiod_probe(ptr noundef nonnull %call7.i.i87)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %do.body47, label %do.body43

do.body43:                                        ; preds = %brcmf_sdiod_change_state.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_ops_sdio_probe, ptr noundef nonnull @.str.37, i32 noundef %call40) #7
  %38 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %driver_data.i, align 4
  %39 = ptrtoint ptr %call7.i.i87 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call7.i.i87, align 8
  %driver_data.i90 = getelementptr inbounds %struct.sdio_func, ptr %40, i32 0, i32 1, i32 8
  %41 = ptrtoint ptr %driver_data.i90 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %driver_data.i90, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i87) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

do.body47:                                        ; preds = %brcmf_sdiod_change_state.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_ops_sdio_probe, ptr noundef nonnull @.str.38) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body47, %do.body43, %if.then27, %if.end22.cleanup_crit_edge, %if.then21, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %if.then21 ], [ %call40, %do.body43 ], [ 0, %do.body47 ], [ -12, %if.then27 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmf_ops_sdio_remove(ptr nocapture noundef readonly %func) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_ops_sdio_remove, ptr noundef nonnull @.str.15) #7
  %vendor = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 5
  %0 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vendor, align 2
  %conv = zext i16 %1 to i32
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_ops_sdio_remove, ptr noundef nonnull @.str.33, i32 noundef %conv) #7
  %device = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 6
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device, align 4
  %conv5 = zext i16 %3 to i32
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_ops_sdio_remove, ptr noundef nonnull @.str.34, i32 noundef %conv5) #7
  %num = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 3
  %4 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_ops_sdio_remove, ptr noundef nonnull @.str.39, i32 noundef %5) #7
  %driver_data.i = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 8
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.do.body18_crit_edge, label %if.then

entry.do.body18_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body18

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  tail call void @brcmf_sdiod_intr_unregister(ptr noundef %9)
  %10 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.not = icmp eq i32 %11, 1
  br i1 %cmp.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call14 = tail call i32 @brcmf_sdiod_remove(ptr noundef %9)
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  %driver_data.i32 = getelementptr inbounds %struct.sdio_func, ptr %13, i32 0, i32 1, i32 8
  %14 = ptrtoint ptr %driver_data.i32 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %driver_data.i32, align 4
  %func2 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %9, i32 0, i32 1
  %15 = ptrtoint ptr %func2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %func2, align 4
  %driver_data.i33 = getelementptr inbounds %struct.sdio_func, ptr %16, i32 0, i32 1, i32 8
  %17 = ptrtoint ptr %driver_data.i33 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %driver_data.i33, align 4
  tail call void @kfree(ptr noundef nonnull %7) #7
  tail call void @kfree(ptr noundef %9) #7
  br label %do.body18

do.body18:                                        ; preds = %if.end, %entry.do.body18_crit_edge
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_ops_sdio_remove, ptr noundef nonnull @.str.16) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body18, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_dev_coredump(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_ops_sdio_suspend(ptr noundef %dev) #0 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %num = getelementptr i8, ptr %dev, i32 932
  %0 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_ops_sdio_suspend, ptr noundef nonnull @.str.40, i32 noundef %1) #7
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %dev, i32 -8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call2 = tail call i32 @sdio_get_host_pm_caps(ptr noundef %add.ptr) #7
  %and = and i32 %call2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else22, label %if.then3

if.then3:                                         ; preds = %if.end
  %freezer.i = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %7, i32 0, i32 22
  %8 = ptrtoint ptr %freezer.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %freezer.i, align 4
  %thread_count.i = getelementptr inbounds %struct.brcmf_sdiod_freezer, ptr %9, i32 0, i32 1
  %frozen_count.i = getelementptr inbounds %struct.brcmf_sdiod_freezer, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %frozen_count.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %frozen_count.i, align 4
  %11 = load ptr, ptr %freezer.i, align 4
  %resumed.i = getelementptr inbounds %struct.brcmf_sdiod_freezer, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %resumed.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %resumed.i, align 4
  %13 = load ptr, ptr %freezer.i, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %13, i32 noundef 4) #7
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 1, ptr %13, align 4
  %bus.i = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %7, i32 0, i32 4
  %15 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus.i, align 4
  tail call void @brcmf_sdio_trigger_dpc(ptr noundef %16) #7
  tail call void @__might_sleep(ptr noundef nonnull @.str.17, i32 noundef 818) #7
  %call.i.i1.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %thread_count.i, i32 noundef 4) #7
  %17 = ptrtoint ptr %thread_count.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %thread_count.i, align 4
  %19 = ptrtoint ptr %freezer.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %freezer.i, align 4
  %frozen_count9.i = getelementptr inbounds %struct.brcmf_sdiod_freezer, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %frozen_count9.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %frozen_count9.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %22)
  %cmp.i = icmp eq i32 %18, %22
  br i1 %cmp.i, label %if.then3.brcmf_sdiod_freezer_on.exit_crit_edge, label %if.end.i

if.then3.brcmf_sdiod_freezer_on.exit_crit_edge:   ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %brcmf_sdiod_freezer_on.exit

if.end.i:                                         ; preds = %if.then3
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #7
  %23 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #7
  %24 = ptrtoint ptr %freezer.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %freezer.i, align 4
  %thread_freeze5.i = getelementptr inbounds %struct.brcmf_sdiod_freezer, ptr %25, i32 0, i32 3
  %call116.i = call i32 @prepare_to_wait_event(ptr noundef %thread_freeze5.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #7
  %call.i.i27.i = call zeroext i1 @__kasan_check_read(ptr noundef %thread_count.i, i32 noundef 4) #7
  %26 = ptrtoint ptr %thread_count.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %thread_count.i, align 4
  %28 = ptrtoint ptr %freezer.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %freezer.i, align 4
  %frozen_count148.i = getelementptr inbounds %struct.brcmf_sdiod_freezer, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %frozen_count148.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %frozen_count148.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %31)
  %cmp159.i = icmp eq i32 %27, %31
  br i1 %cmp159.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.cleanup.i_crit_edge

if.end.i.cleanup.i_crit_edge:                     ; preds = %if.end.i
  br label %cleanup.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %if.end.i.cleanup.i_crit_edge
  call void @schedule() #7
  %32 = ptrtoint ptr %freezer.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %freezer.i, align 4
  %thread_freeze.i = getelementptr inbounds %struct.brcmf_sdiod_freezer, ptr %33, i32 0, i32 3
  %call11.i = call i32 @prepare_to_wait_event(ptr noundef %thread_freeze.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #7
  %call.i.i2.i = call zeroext i1 @__kasan_check_read(ptr noundef %thread_count.i, i32 noundef 4) #7
  %34 = ptrtoint ptr %thread_count.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %thread_count.i, align 4
  %36 = ptrtoint ptr %freezer.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %freezer.i, align 4
  %frozen_count14.i = getelementptr inbounds %struct.brcmf_sdiod_freezer, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %frozen_count14.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %frozen_count14.i, align 4
  %cmp15.i = icmp eq i32 %35, %39
  br i1 %cmp15.i, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.cleanup.i_crit_edge

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %40 = ptrtoint ptr %freezer.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %freezer.i, align 4
  %thread_freeze19.i = getelementptr inbounds %struct.brcmf_sdiod_freezer, ptr %41, i32 0, i32 3
  call void @finish_wait(ptr noundef %thread_freeze19.i, ptr noundef nonnull %__wq_entry.i) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #7
  br label %brcmf_sdiod_freezer_on.exit

brcmf_sdiod_freezer_on.exit:                      ; preds = %for.end.i, %if.then3.brcmf_sdiod_freezer_on.exit_crit_edge
  %42 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %7, align 4
  call void @sdio_claim_host(ptr noundef %43) #7
  %44 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bus.i, align 4
  %call23.i = call i32 @brcmf_sdio_sleep(ptr noundef %45, i1 noundef zeroext true) #7
  %46 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %7, align 4
  call void @sdio_release_host(ptr noundef %47) #7
  %48 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bus.i, align 4
  call void @brcmf_sdio_wd_timer(ptr noundef %49, i1 noundef zeroext false) #7
  %wowl_enabled = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %7, i32 0, i32 20
  %50 = ptrtoint ptr %wowl_enabled to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %wowl_enabled, align 4, !range !132
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool5.not = icmp eq i8 %51, 0
  br i1 %tobool5.not, label %brcmf_sdiod_freezer_on.exit.if.end14_crit_edge, label %if.then6

brcmf_sdiod_freezer_on.exit.if.end14_crit_edge:   ; preds = %brcmf_sdiod_freezer_on.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then6:                                         ; preds = %brcmf_sdiod_freezer_on.exit
  %settings = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %7, i32 0, i32 7
  %52 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %settings, align 4
  %oob_irq_supported = getelementptr inbounds %struct.brcmf_mp_device, ptr %53, i32 0, i32 8, i32 0, i32 2
  %54 = ptrtoint ptr %oob_irq_supported to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %oob_irq_supported, align 4, !range !132
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool8.not = icmp eq i8 %55, 0
  br i1 %tobool8.not, label %if.then6.if.end14_crit_edge, label %if.then9

if.then6.if.end14_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %oob_irq_nr = getelementptr inbounds %struct.brcmf_mp_device, ptr %53, i32 0, i32 8, i32 0, i32 3
  %56 = ptrtoint ptr %oob_irq_nr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %oob_irq_nr, align 4
  %call.i = call i32 @irq_set_irq_wake(i32 noundef %57, i32 noundef 1) #7
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %if.then6.if.end14_crit_edge, %brcmf_sdiod_freezer_on.exit.if.end14_crit_edge
  %sdio_flags.0 = phi i32 [ 1, %if.then9 ], [ 1, %brcmf_sdiod_freezer_on.exit.if.end14_crit_edge ], [ 3, %if.then6.if.end14_crit_edge ]
  %58 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %7, align 4
  %call15 = call i32 @sdio_set_host_pm_flags(ptr noundef %59, i32 noundef %sdio_flags.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end14.cleanup_crit_edge, label %do.body18

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_ops_sdio_suspend, ptr noundef nonnull @.str.41, i32 noundef %sdio_flags.0) #7
  br label %cleanup

if.else22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @brcmf_sdiod_intr_unregister(ptr noundef %7)
  %call23 = tail call i32 @brcmf_sdiod_remove(ptr noundef %7)
  br label %cleanup

cleanup:                                          ; preds = %if.else22, %do.body18, %if.end14.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_ops_sdio_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %dev, i32 -8
  %call1 = tail call i32 @sdio_get_host_pm_caps(ptr noundef %add.ptr) #7
  %num = getelementptr i8, ptr %dev, i32 932
  %4 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 131072, ptr noundef nonnull @__func__.brcmf_ops_sdio_resume, ptr noundef nonnull @.str.40, i32 noundef %5) #7
  %6 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.not = icmp eq i32 %7, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %call1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %call4 = tail call i32 @brcmf_sdiod_probe(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then3.cleanup_crit_edge, label %do.body7

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body7:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_ops_sdio_resume, ptr noundef nonnull @.str.43) #7
  br label %cleanup

if.else:                                          ; preds = %if.end
  %wowl_enabled = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %3, i32 0, i32 20
  %8 = ptrtoint ptr %wowl_enabled to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %wowl_enabled, align 4, !range !132
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool11.not = icmp eq i8 %9, 0
  br i1 %tobool11.not, label %if.else.if.end17_crit_edge, label %land.lhs.true

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

land.lhs.true:                                    ; preds = %if.else
  %settings = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %3, i32 0, i32 7
  %10 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %settings, align 4
  %oob_irq_supported = getelementptr inbounds %struct.brcmf_mp_device, ptr %11, i32 0, i32 8, i32 0, i32 2
  %12 = ptrtoint ptr %oob_irq_supported to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %oob_irq_supported, align 4, !range !132
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool12.not = icmp eq i8 %13, 0
  br i1 %tobool12.not, label %land.lhs.true.if.end17_crit_edge, label %if.then13

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %oob_irq_nr = getelementptr inbounds %struct.brcmf_mp_device, ptr %11, i32 0, i32 8, i32 0, i32 3
  %14 = ptrtoint ptr %oob_irq_nr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %oob_irq_nr, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %15, i32 noundef 0) #7
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %land.lhs.true.if.end17_crit_edge, %if.else.if.end17_crit_edge
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  tail call void @sdio_claim_host(ptr noundef %17) #7
  %bus.i = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %3, i32 0, i32 4
  %18 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus.i, align 4
  %call.i31 = tail call i32 @brcmf_sdio_sleep(ptr noundef %19, i1 noundef zeroext false) #7
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  tail call void @sdio_release_host(ptr noundef %21) #7
  %freezer.i = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %3, i32 0, i32 22
  %22 = ptrtoint ptr %freezer.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %freezer.i, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %23, i32 noundef 4) #7
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 0, ptr %23, align 4
  %25 = ptrtoint ptr %freezer.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %freezer.i, align 4
  %resumed.i = getelementptr inbounds %struct.brcmf_sdiod_freezer, ptr %26, i32 0, i32 4
  tail call void @complete_all(ptr noundef %resumed.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %do.body7, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end17 ], [ %call4, %do.body7 ], [ 0, %if.then3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_get_host_pm_caps(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_sdio_wd_timer(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_set_host_pm_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_sdio_trigger_dpc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_sdio_sleep(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !19, !20, !22, !23, !25, !26, !28, !30, !32, !34, !35, !37, !38, !39, !41, !43, !44, !46, !48, !50, !51, !53, !55, !56, !58, !60, !62, !64, !65, !67, !69, !70, !72, !73, !75, !77, !78, !80, !81, !83, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !115, !117, !119, !121}
!llvm.module.flags = !{!123, !124, !125, !126, !127, !128, !129, !130}
!llvm.ident = !{!131}

!0 = !{ptr @__func__.brcmf_sdiod_intr_register, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c", i32 106, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @brcmf_sdiod_intr_register.__key, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c", i32 108, i32 3}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c", i32 112, i32 29}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c", i32 115, i32 4}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c", i32 122, i32 4}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c", i32 157, i32 3}
!14 = !{ptr @__func__.brcmf_sdiod_intr_unregister, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c", i32 171, i32 2}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @__func__.brcmf_sdiod_change_state, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c", i32 206, i32 2}
!19 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @__func__.brcmf_sdiod_recv_buf, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c", i32 526, i32 3}
!22 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @__func__.brcmf_sdiod_recv_pkt, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c", i32 544, i32 2}
!25 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @__func__.brcmf_sdiod_recv_chain, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c", i32 567, i32 2}
!28 = !{ptr @__func__.brcmf_sdiod_send_buf, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c", i32 611, i32 3}
!30 = !{ptr @__func__.brcmf_sdiod_send_pkt, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c", i32 639, i32 2}
!32 = !{ptr @__func__.brcmf_sdiod_ramrw, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c", i32 675, i32 3}
!34 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c", i32 696, i32 3}
!37 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c", i32 715, i32 4}
!41 = !{ptr @__func__.brcmf_sdiod_abort, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c", i32 741, i32 2}
!43 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c", i32 746, i32 2}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c", i32 775, i32 2}
!48 = !{ptr @__func__.brcmf_sdiod_sgtable_alloc, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c", i32 777, i32 2}
!50 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c", i32 780, i32 3}
!53 = !{ptr @__func__.brcmf_sdiod_probe, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c", i32 912, i32 3}
!55 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c", i32 934, i32 3}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c", i32 938, i32 3}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c", i32 948, i32 3}
!62 = !{ptr @__func__.brcmf_sdio_wowl_config, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c", i32 1123, i32 2}
!64 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @__func__.brcmf_sdio_exit, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c", i32 1229, i32 2}
!67 = !{ptr @__func__.brcmf_sdiod_oob_irqhandler, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c", i32 67, i32 2}
!69 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @__func__.brcmf_sdiod_ib_irqhandler, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c", i32 87, i32 2}
!72 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c", i32 305, i32 3}
!75 = !{ptr @__func__.mmc_submit_one, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c", i32 357, i32 3}
!77 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @brcmf_sdiod_freezer_attach.__key, !79, !"__key", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c", i32 795, i32 2}
!80 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @init_completion.__key, !82, !"__key", i1 false, i1 false}
!82 = !{!"../include/linux/completion.h", i32 87, i32 2}
!83 = !{ptr @.str.30, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.31, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c", i32 1211, i32 10}
!86 = !{ptr @brcmf_sdmmc_driver, !87, !"brcmf_sdmmc_driver", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c", i32 1208, i32 27}
!88 = !{ptr @brcmf_sdmmc_ids, !89, !"brcmf_sdmmc_ids", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c", i32 974, i32 36}
!90 = !{ptr @__func__.brcmf_ops_sdio_probe, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c", i32 1021, i32 2}
!92 = !{ptr @.str.32, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c", i32 1022, i32 2}
!94 = !{ptr @.str.33, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c", i32 1023, i32 2}
!96 = !{ptr @.str.34, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c", i32 1024, i32 2}
!98 = !{ptr @.str.35, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c", i32 1025, i32 2}
!100 = !{ptr @.str.36, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c", i32 1067, i32 2}
!102 = !{ptr @.str.37, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c", i32 1070, i32 3}
!104 = !{ptr @.str.38, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c", i32 1074, i32 2}
!106 = !{ptr @__func__.brcmf_ops_sdio_remove, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c", i32 1090, i32 2}
!108 = !{ptr @.str.39, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c", i32 1093, i32 2}
!110 = !{ptr @brcmf_sdio_pm_ops, !111, !"brcmf_sdio_pm_ops", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c", i32 1202, i32 32}
!112 = !{ptr @__func__.brcmf_ops_sdio_suspend, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c", i32 1137, i32 2}
!114 = !{ptr @.str.40, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.41, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c", i32 1161, i32 4}
!117 = distinct !{null, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c", i32 1168, i32 4}
!119 = !{ptr @__func__.brcmf_ops_sdio_resume, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c", i32 1182, i32 2}
!121 = !{ptr @.str.43, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c", i32 1190, i32 4}
!123 = !{i32 1, !"wchar_size", i32 2}
!124 = !{i32 1, !"min_enum_size", i32 4}
!125 = !{i32 8, !"branch-target-enforcement", i32 0}
!126 = !{i32 8, !"sign-return-address", i32 0}
!127 = !{i32 8, !"sign-return-address-all", i32 0}
!128 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!129 = !{i32 7, !"uwtable", i32 1}
!130 = !{i32 7, !"frame-pointer", i32 2}
!131 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!132 = !{i8 0, i8 2}
!133 = !{!"branch_weights", i32 2000, i32 1}
!134 = !{!"branch_weights", i32 1, i32 2000}
!135 = !{i64 2154785788, i64 2154786280, i64 2154785825, i64 2154785881, i64 2154785915, i64 2154785939, i64 2154785980, i64 2154786001, i64 2154786029, i64 2154786063}
!136 = !{i64 2154779469, i64 2154779961, i64 2154779506, i64 2154779562, i64 2154779596, i64 2154779620, i64 2154779661, i64 2154779682, i64 2154779710, i64 2154779744}
!137 = !{i64 2154781079, i64 2154781571, i64 2154781116, i64 2154781172, i64 2154781206, i64 2154781230, i64 2154781271, i64 2154781292, i64 2154781320, i64 2154781354}
!138 = !{i64 2148511734, i64 2148511760, i64 2148511789, i64 2148511823, i64 2148511854, i64 2148511877}
!139 = !{i64 2148514199, i64 2148514225, i64 2148514254, i64 2148514288, i64 2148514319, i64 2148514342}
