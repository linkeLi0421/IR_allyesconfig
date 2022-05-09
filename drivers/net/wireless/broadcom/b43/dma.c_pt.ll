; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/b43/dma.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/b43/dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.b43_txstatus = type { i16, i16, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.b43_dma_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.b43_wldev = type { ptr, ptr, %struct.completion, %struct.atomic_t, i8, i8, i8, i8, i8, i8, %struct.b43_phy, %union.anon.137, i8, %struct.b43_stats, i32, [6 x i32], i32, %struct.b43_noise_calculation, i32, %struct.delayed_work, i32, %struct.work_struct, i16, [58 x %struct.b43_key], %struct.b43_firmware, %struct.list_head, ptr, i32, [32 x i32], i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.b43_phy = type { ptr, %struct.anon.135, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i32, i8, i32, ptr, i32, %struct.atomic_t, i8, i8 }
%struct.anon.135 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.137 = type { %struct.b43_dma }
%struct.b43_dma = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.b43_stats = type { i8 }
%struct.b43_noise_calculation = type { i8, i8, [8 x [4 x i8]] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.b43_key = type { ptr, i8 }
%struct.b43_firmware = type { %struct.b43_firmware_file, %struct.b43_firmware_file, %struct.b43_firmware_file, %struct.b43_firmware_file, i16, i16, i32, i8, i8 }
%struct.b43_firmware_file = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.b43_dmaring = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i16, i16, i32, i8, i32, i8, i8, ptr, i32, i32, i64, i64, i64 }
%struct.b43_bus_dev = type { i32, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, i32, i16, i16, i16, i16, i8, i8, ptr, i16, i8 }
%union.anon = type { ptr }
%struct.b43_dmadesc_meta = type { ptr, i32, i8 }
%struct.sk_buff = type { %union.anon.44, %union.anon.47, %union.anon.48, [48 x i8], %union.anon.49, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.51, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.44 = type { %struct.anon.45 }
%struct.anon.45 = type { ptr, ptr, %union.anon.46 }
%union.anon.46 = type { ptr }
%union.anon.47 = type { ptr }
%union.anon.48 = type { i64 }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { i32, ptr }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.53, i32, i32, i32, i16, i16, %union.anon.55, i32, %union.anon.56, %union.anon.57, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.53 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i32 }
%union.anon.57 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.b43_wl = type { ptr, ptr, %struct.mutex, %struct.spinlock, i8, ptr, [6 x i8], [6 x i8], i32, i8, i32, %struct.ieee80211_low_level_stats, %struct.hwrng, i8, [31 x i8], i8, i8, ptr, i8, i8, i8, %struct.work_struct, %struct.spinlock, [4 x %struct.b43_qos_params], %struct.work_struct, %struct.work_struct, [4 x %struct.sk_buff_head], [4 x i8], %struct.work_struct, %struct.b43_leds, [118 x i8], [2 x i8], [4 x i8], [4 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.kref = type { %struct.refcount_struct }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.b43_qos_params = type { %struct.ieee80211_tx_queue_params }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.sk_buff_head = type { %union.anon.65, i32, %struct.spinlock }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { ptr, ptr }
%struct.b43_leds = type { %struct.b43_led, %struct.b43_led, %struct.b43_led, %struct.b43_led, i8, %struct.work_struct }
%struct.b43_led = type { ptr, %struct.led_classdev, i8, i8, [32 x i8], %struct.atomic_t, i8 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.101, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.101 = type { ptr }
%struct.bcma_drv_cc_b = type { ptr, i8, ptr }
%struct.bcma_drv_pci = type { ptr, i8 }
%struct.bcma_drv_pcie2 = type { ptr, i16 }
%struct.bcma_drv_mips = type { ptr, i8 }
%struct.bcma_drv_gmac_cmn = type { ptr, %struct.mutex }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.102, %struct.anon.103, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.102 = type { i8, i8, i8, i8 }
%struct.anon.103 = type { %struct.anon.104, %struct.anon.105 }
%struct.anon.104 = type { i8, i8, i8, i8, i8 }
%struct.anon.105 = type { i8, i8, i8, i8, i8 }
%struct.bcma_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ssb_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ssb_device = type { ptr, ptr, ptr, ptr, %struct.ssb_device_id, i8, i32, ptr, ptr }
%struct.ssb_device_id = type { i16, i16, i8, i8 }
%struct.ssb_bus = type { ptr, ptr, ptr, %union.anon.139, %struct.spinlock, i32, %union.anon.140, i32, %struct.mutex, i16, i8, i16, i16, i8, [16 x %struct.ssb_device], i8, i32, %struct.ssb_chipcommon, %struct.ssb_pcicore, %struct.ssb_mipscore, %struct.ssb_extif, %struct.ssb_boardinfo, %struct.ssb_sprom, i8, %struct.gpio_chip, ptr, %struct.list_head, i8, i32 }
%union.anon.139 = type { i32 }
%union.anon.140 = type { ptr }
%struct.ssb_chipcommon = type { ptr, i32, i32, i16, %struct.spinlock, %struct.ssb_chipcommon_pmu, i32, i32 }
%struct.ssb_chipcommon_pmu = type { i8, i32 }
%struct.ssb_pcicore = type { ptr, i8 }
%struct.ssb_mipscore = type {}
%struct.ssb_extif = type {}
%struct.ssb_boardinfo = type { i16, i16 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.100, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.100 = type { ptr }
%struct.page = type { i32, %union.anon.3, %union.anon.97, %struct.atomic_t, i32 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.97 = type { %struct.atomic_t }
%struct.b43_dmadesc64 = type { i32, i32, i32, i32 }
%struct.b43_dmadesc32 = type { i32, i32 }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rx_ring\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tx_ring_AC_BK\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tx_ring_AC_BE\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tx_ring_AC_VI\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tx_ring_AC_VO\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tx_ring_mcast\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"The machine/kernel does not support the required %u-bit DMA mask\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/wireless/broadcom/b43/dma.c\00", [56 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%u-bit DMA initialized\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Packet after queue stopped\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DMA queue overflow\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DMA tx mapping failure\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Stopped TX ring %d\0A\00", [44 x i8] zeroinitializer }, align 32
@b43_dma_handle_txstatus.fake = internal constant { %struct.b43_txstatus, [20 x i8] } zeroinitializer, align 32
@b43_dma_handle_txstatus.err_out1 = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Skip on DMA ring %d slot %d.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"Out of order TX status report on DMA ring %d. Expected %d, but got %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Out of order TX\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Poisoned TX slot %d (first=%d) on ring %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"TX status unexpected NULL skb at slot %d (first=%d) on ring %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"TX status unexpected non-NULL skb at slot %d (first=%d) on ring %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Woke up TX ring %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"DMA-%u %s: Used slots %d/%d, Failed frames %llu/%llu = %llu.%01llu%%, Average tries %llu.%02llu\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DMA TX reset timed out\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DMA RX reset timed out\0A\00", [40 x i8] zeroinitializer }, align 32
@dma64_ops = internal constant { %struct.b43_dma_ops, [36 x i8] } { %struct.b43_dma_ops { ptr @op64_idx2desc, ptr @op64_fill_descriptor, ptr @op64_poke_tx, ptr @op64_tx_suspend, ptr @op64_tx_resume, ptr @op64_get_current_rxslot, ptr @op64_set_current_rxslot }, [36 x i8] zeroinitializer }, align 32
@dma32_ops = internal constant { %struct.b43_dma_ops, [36 x i8] } { %struct.b43_dma_ops { ptr @op32_idx2desc, ptr @op32_fill_descriptor, ptr @op32_poke_tx, ptr @op32_tx_suspend, ptr @op32_tx_resume, ptr @op32_get_current_rxslot, ptr @op32_set_current_rxslot }, [36 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"TXHDR DMA allocation failed\0A\00", [35 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.26 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to allocate initial descbuffers\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"RX DMA buffer allocation failed\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Injecting TX ring overflow on DMA controller %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"TX-status contains invalid cookie: 0x%04X\0A\00", [53 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"DMA RX: Dropping poisoned buffer.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"DMA RX buffer too small (len: %u, buffer: %u, nr-dropped: %d)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"DMA RX: setup_rx_descbuffer() failed\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"max_used_slots increased to %d on %s ring %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TX\00", [29 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RX\00", [29 x i8] zeroinitializer }, align 32
@b43_dmacontroller_base.map64 = internal constant { [6 x i16], [20 x i8] } { [6 x i16] [i16 512, i16 576, i16 640, i16 704, i16 768, i16 832], [20 x i8] zeroinitializer }, align 32
@b43_dmacontroller_base.map32 = internal constant { [6 x i16], [20 x i8] } { [6 x i16] [i16 512, i16 544, i16 576, i16 608, i16 640, i16 672], [20 x i8] zeroinitializer }, align 32
@switch.table.b43_setup_dmaring = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 118, i32 110, i32 106], [20 x i8] zeroinitializer }, align 32
@switch.table.b43_setup_dmaring.36 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 118, i32 110, i32 106], [20 x i8] zeroinitializer }, align 32
@switch.table.b43_setup_dmaring.37 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 118, i32 110, i32 106], [20 x i8] zeroinitializer }, align 32
@switch.table.b43_setup_dmaring.38 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 118, i32 110, i32 106], [20 x i8] zeroinitializer }, align 32
@switch.table.b43_setup_dmaring.39 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 118, i32 110, i32 106], [20 x i8] zeroinitializer }, align 32
@switch.table.b43_setup_dmaring.40 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 118, i32 110, i32 106], [20 x i8] zeroinitializer }, align 32
@switch.table.b43_setup_dmaring.41 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 118, i32 110, i32 106], [20 x i8] zeroinitializer }, align 32
@switch.table.b43_dma_tx = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 118, i32 110, i32 106], [20 x i8] zeroinitializer }, align 32
@switch.table.b43_dma_handle_txstatus = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 118, i32 110, i32 106], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 536870912, i64 805306368]
@__sancov_gen_cov_switch_values.42 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 8192, i64 12288]
@__sancov_gen_cov_switch_values.43 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 8192, i64 12288]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 536870912, i64 805306368]
@__sancov_gen_cov_switch_values.45 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 8192, i64 12288]
@__sancov_gen_cov_switch_values.46 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 536870912, i64 805306368]
@__sancov_gen_cov_switch_values.47 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 8192, i64 12288]
@__sancov_gen_cov_switch_values.48 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 536870912, i64 805306368]
@__sancov_gen_cov_switch_values.49 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 8192, i64 12288]
@__sancov_gen_cov_switch_values.50 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 536870912, i64 805306368]
@__sancov_gen_cov_switch_values.51 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 8192, i64 12288]
@__sancov_gen_cov_switch_values.52 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 536870912, i64 805306368]
@__sancov_gen_cov_switch_values.53 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 8192, i64 12288]
@__sancov_gen_cov_switch_values.54 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 536870912, i64 805306368]
@__sancov_gen_cov_switch_values.55 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 8192, i64 12288]
@__sancov_gen_cov_switch_values.56 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 536870912, i64 805306368]
@__sancov_gen_cov_switch_values.57 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 8192, i64 12288]
@__sancov_gen_cov_switch_values.58 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 536870912, i64 805306368]
@__sancov_gen_cov_switch_values.59 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 8192, i64 12288]
@__sancov_gen_cov_switch_values.60 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 536870912, i64 805306368]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967284]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.64 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 30, i64 32]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 30, i64 32]
@__sancov_gen_cov_switch_values.67 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 30, i64 32]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 32, i64 30, i64 32]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 32, i64 30, i64 32]
@__sancov_gen_cov_switch_values.71 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967284]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 30, i64 32]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 30, i64 32]
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1025, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1026, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1027, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1028, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1029, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1030, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1060, i32 19 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1114, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1116, i32 18 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1368, i32 20 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1376, i32 19 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1395, i32 19 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1406, i32 20 }
@___asan_gen_.115 = private unnamed_addr constant [5 x i8] c"fake\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1420, i32 35 }
@___asan_gen_.118 = private unnamed_addr constant [33 x i8] c"b43_dma_handle_txstatus.err_out1\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1453, i32 12 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1464, i32 11 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1467, i32 33 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1479, i32 20 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1505, i32 21 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1544, i32 21 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1575, i32 20 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 985, i32 25 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 528, i32 19 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 470, i32 19 }
@___asan_gen_.149 = private unnamed_addr constant [10 x i8] c"dma64_ops\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 247, i32 33 }
@___asan_gen_.152 = private unnamed_addr constant [10 x i8] c"dma32_ops\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 152, i32 33 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 922, i32 12 }
@___asan_gen_.162 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 326, i32 6 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 648, i32 11 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 619, i32 26 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1300, i32 11 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1181, i32 19 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1616, i32 25 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1641, i32 25 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1650, i32 25 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 287, i32 10 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 289, i32 21 }
@___asan_gen_.191 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 289, i32 28 }
@___asan_gen_.194 = private unnamed_addr constant [6 x i8] c"map64\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 319, i32 19 }
@___asan_gen_.197 = private unnamed_addr constant [6 x i8] c"map32\00", align 1
@___asan_gen_.198 = private constant [43 x i8] c"../drivers/net/wireless/broadcom/b43/dma.c\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 327, i32 19 }
@___asan_gen_.200 = private unnamed_addr constant [31 x i8] c"switch.table.b43_setup_dmaring\00", align 1
@___asan_gen_.201 = private unnamed_addr constant [34 x i8] c"switch.table.b43_setup_dmaring.36\00", align 1
@___asan_gen_.202 = private unnamed_addr constant [34 x i8] c"switch.table.b43_setup_dmaring.37\00", align 1
@___asan_gen_.203 = private unnamed_addr constant [34 x i8] c"switch.table.b43_setup_dmaring.38\00", align 1
@___asan_gen_.204 = private unnamed_addr constant [34 x i8] c"switch.table.b43_setup_dmaring.39\00", align 1
@___asan_gen_.205 = private unnamed_addr constant [34 x i8] c"switch.table.b43_setup_dmaring.40\00", align 1
@___asan_gen_.206 = private unnamed_addr constant [34 x i8] c"switch.table.b43_setup_dmaring.41\00", align 1
@___asan_gen_.207 = private unnamed_addr constant [24 x i8] c"switch.table.b43_dma_tx\00", align 1
@___asan_gen_.208 = private unnamed_addr constant [37 x i8] c"switch.table.b43_dma_handle_txstatus\00", align 1
@llvm.compiler.used = appending global [51 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @b43_dma_handle_txstatus.fake, ptr @b43_dma_handle_txstatus.err_out1, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @dma64_ops, ptr @dma32_ops, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @b43_dmacontroller_base.map64, ptr @b43_dmacontroller_base.map32, ptr @switch.table.b43_setup_dmaring, ptr @switch.table.b43_setup_dmaring.36, ptr @switch.table.b43_setup_dmaring.37, ptr @switch.table.b43_setup_dmaring.38, ptr @switch.table.b43_setup_dmaring.39, ptr @switch.table.b43_setup_dmaring.40, ptr @switch.table.b43_setup_dmaring.41, ptr @switch.table.b43_dma_tx, ptr @switch.table.b43_dma_handle_txstatus], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_dma_handle_txstatus.fake to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_dma_handle_txstatus.err_out1 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma64_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma32_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_dmacontroller_base.map64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_dmacontroller_base.map32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.b43_setup_dmaring to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.b43_setup_dmaring.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.b43_setup_dmaring.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.b43_setup_dmaring.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.b43_setup_dmaring.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.b43_setup_dmaring.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.b43_setup_dmaring.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.b43_dma_tx to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.b43_dma_handle_txstatus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_dma_free(ptr nocapture noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %__using_pio_transfers.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %__using_pio_transfers.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %__using_pio_transfers.i, align 4, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.i.not = icmp eq i8 %1, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11
  %rx_ring = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11, i32 0, i32 5
  %3 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rx_ring, align 4
  tail call fastcc void @b43_destroy_dmaring(ptr noundef %4, ptr noundef nonnull @.str)
  %5 = ptrtoint ptr %rx_ring to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %rx_ring, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %2, align 4
  tail call fastcc void @b43_destroy_dmaring(ptr noundef %7, ptr noundef nonnull @.str.1)
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %2, align 4
  %tx_ring_AC_BE = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11, i32 0, i32 1
  %9 = ptrtoint ptr %tx_ring_AC_BE to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tx_ring_AC_BE, align 4
  tail call fastcc void @b43_destroy_dmaring(ptr noundef %10, ptr noundef nonnull @.str.2)
  %11 = ptrtoint ptr %tx_ring_AC_BE to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %tx_ring_AC_BE, align 4
  %tx_ring_AC_VI = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11, i32 0, i32 2
  %12 = ptrtoint ptr %tx_ring_AC_VI to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tx_ring_AC_VI, align 4
  tail call fastcc void @b43_destroy_dmaring(ptr noundef %13, ptr noundef nonnull @.str.3)
  %14 = ptrtoint ptr %tx_ring_AC_VI to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %tx_ring_AC_VI, align 4
  %tx_ring_AC_VO = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11, i32 0, i32 3
  %15 = ptrtoint ptr %tx_ring_AC_VO to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tx_ring_AC_VO, align 4
  tail call fastcc void @b43_destroy_dmaring(ptr noundef %16, ptr noundef nonnull @.str.4)
  %17 = ptrtoint ptr %tx_ring_AC_VO to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %tx_ring_AC_VO, align 4
  %tx_ring_mcast = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11, i32 0, i32 4
  %18 = ptrtoint ptr %tx_ring_mcast to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tx_ring_mcast, align 4
  tail call fastcc void @b43_destroy_dmaring(ptr noundef %19, ptr noundef nonnull @.str.5)
  %20 = ptrtoint ptr %tx_ring_mcast to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %tx_ring_mcast, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @b43_destroy_dmaring(ptr noundef %ring, ptr noundef %ringname) unnamed_addr #0 align 64 {
entry:
  %meta.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ring, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %nr_failed_tx_packets = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 20
  %0 = ptrtoint ptr %nr_failed_tx_packets to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %nr_failed_tx_packets, align 8
  %nr_succeed_tx_packets = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 19
  %2 = ptrtoint ptr %nr_succeed_tx_packets to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %nr_succeed_tx_packets, align 8
  %add = add i64 %3, %1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add)
  %tobool1.not = icmp eq i64 %add, 0
  br i1 %tobool1.not, label %if.end.if.end1310_crit_edge, label %if.then2

if.end.if.end1310_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end1310

if.then2:                                         ; preds = %if.end
  %mul = mul i64 %1, 1000
  %conv = trunc i64 %add to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp173 = icmp ult i64 %mul, 4294967296
  br i1 %cmp173, label %if.then177, label %if.else183, !prof !94

if.then177:                                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %conv178 = trunc i64 %mul to i32
  %div181 = udiv i32 %conv178, %conv
  %conv182 = zext i32 %div181 to i64
  br label %if.else395

if.else183:                                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %4 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv, i64 %mul) #11, !srcloc !95
  %asmresult1.i = extractvalue { i64, i64 } %4, 1
  br label %if.else395

if.else395:                                       ; preds = %if.else183, %if.then177
  %permille_failed.0.ph.ph = phi i64 [ %conv182, %if.then177 ], [ %asmresult1.i, %if.else183 ]
  %nr_total_packet_tries1933 = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 21
  %5 = ptrtoint ptr %nr_total_packet_tries1933 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %nr_total_packet_tries1933, align 8
  %mul1941934 = mul i64 %6, 100
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul1941934)
  %cmp397 = icmp ult i64 %mul1941934, 4294967296
  br i1 %cmp397, label %if.then405, label %if.else411, !prof !94

if.then405:                                       ; preds = %if.else395
  call void @__sanitizer_cov_trace_pc() #10
  %conv406 = trunc i64 %mul1941934 to i32
  %div409 = udiv i32 %conv406, %conv
  %conv410 = zext i32 %div409 to i64
  br label %if.end1310

if.else411:                                       ; preds = %if.else395
  call void @__sanitizer_cov_trace_pc() #10
  %7 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv, i64 %mul1941934) #11, !srcloc !95
  %asmresult1.i1839 = extractvalue { i64, i64 } %7, 1
  br label %if.end1310

if.end1310:                                       ; preds = %if.else411, %if.then405, %if.end.if.end1310_crit_edge
  %permille_failed.01909 = phi i64 [ 0, %if.end.if.end1310_crit_edge ], [ %permille_failed.0.ph.ph, %if.else411 ], [ %permille_failed.0.ph.ph, %if.then405 ]
  %average_tries.0 = phi i64 [ 0, %if.end.if.end1310_crit_edge ], [ %asmresult1.i1839, %if.else411 ], [ %conv410, %if.then405 ]
  %dev = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 16
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %wl = getelementptr inbounds %struct.b43_wldev, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wl, align 4
  %type = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 13
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type, align 8
  %max_used_slots = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 17
  %14 = ptrtoint ptr %max_used_slots to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_used_slots, align 4
  %nr_slots = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 5
  %16 = ptrtoint ptr %nr_slots to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr_slots, align 4
  %div5301808 = lshr i64 %permille_failed.01909, 1
  %18 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div5301808, i64 3689348814741910323) #11
  %19 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div5301808, i64 %18) #11
  %conv677 = trunc i64 %permille_failed.01909 to i32
  %conv840 = trunc i64 %19 to i32
  %mul841.neg = mul i32 %conv840, -10
  %sub842 = add i32 %mul841.neg, %conv677
  %conv865 = zext i32 %sub842 to i64
  %20 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %average_tries.0, i32 0) #11
  %asmresult.i1854 = extractvalue { i64, i32 } %20, 0
  %asmresult4.i1855 = extractvalue { i64, i32 } %20, 1
  %21 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %average_tries.0, i64 %asmresult.i1854, i32 %asmresult4.i1855) #11
  %asmresult10.i1859 = extractvalue { i64, i32 } %21, 0
  %__a866.0 = lshr i64 %asmresult10.i1859, 6
  %conv1124 = trunc i64 %average_tries.0 to i32
  %conv1287 = trunc i64 %__a866.0 to i32
  %mul1288.neg = mul i32 %conv1287, -100
  %sub1289 = add i32 %mul1288.neg, %conv1124
  %conv1312 = zext i32 %sub1289 to i64
  tail call void (ptr, ptr, ...) @b43dbg(ptr noundef %11, ptr noundef nonnull @.str.20, i32 noundef %13, ptr noundef %ringname, i32 noundef %15, i32 noundef %17, i64 noundef %1, i64 noundef %add, i64 noundef %19, i64 noundef %conv865, i64 noundef %__a866.0, i64 noundef %conv1312) #8
  %tx.i = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 12
  %22 = ptrtoint ptr %tx.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %tx.i, align 4, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i = icmp eq i8 %23, 0
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 8
  %mmio_base5.i = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 10
  %26 = ptrtoint ptr %mmio_base5.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %mmio_base5.i, align 2
  %28 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %type, align 8
  br i1 %tobool.not.i, label %if.else3.i, label %if.then.i

if.then.i:                                        ; preds = %if.end1310
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 485) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %29)
  %cmp4.i.i = icmp eq i32 %29, 64
  %conv6.i.i = select i1 %cmp4.i.i, i16 16, i16 12
  %add.i.i = add i16 %conv6.i.i, %27
  %30 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %25, align 4
  %read32.i.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %31, i32 0, i32 8
  %32 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %33(ptr noundef %31, i16 noundef zeroext %add.i.i) #8
  br i1 %cmp4.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then.i
  %and.i.i = and i32 %call.i.i.i, -268435456
  %34 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i.i, label %if.then.i.i.if.end29.i.i_crit_edge [
    i32 0, label %if.then.i.i.for.end.i.i_crit_edge
    i32 536870912, label %if.then.i.i.for.end.i.i_crit_edge1937
    i32 805306368, label %if.then.i.i.for.end.i.i_crit_edge1938
  ]

if.then.i.i.for.end.i.i_crit_edge1938:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.then.i.i.for.end.i.i_crit_edge1937:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.then.i.i.for.end.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.then.i.i.if.end29.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.i.i

if.else.i.i:                                      ; preds = %if.then.i
  %35 = trunc i32 %call.i.i.i to i16
  %trunc.i.i = and i16 %35, -4096
  %36 = zext i16 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.42)
  switch i16 %trunc.i.i, label %if.else.i.i.if.end29.i.i_crit_edge [
    i16 0, label %if.else.i.i.for.end.i.i_crit_edge
    i16 8192, label %if.else.i.i.for.end.i.i_crit_edge1939
    i16 12288, label %if.else.i.i.for.end.i.i_crit_edge1940
  ]

if.else.i.i.for.end.i.i_crit_edge1940:            ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.else.i.i.for.end.i.i_crit_edge1939:            ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.else.i.i.for.end.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.else.i.i.if.end29.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.else.i.i.if.end29.i.i_crit_edge, %if.then.i.i.if.end29.i.i_crit_edge
  tail call void @msleep(i32 noundef 1) #8
  %37 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %25, align 4
  %read32.i.1.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %38, i32 0, i32 8
  %39 = ptrtoint ptr %read32.i.1.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read32.i.1.i.i, align 4
  %call.i.1.i.i = tail call i32 %40(ptr noundef %38, i16 noundef zeroext %add.i.i) #8
  br i1 %cmp4.i.i, label %if.then.1.i.i, label %if.else.1.i.i

if.else.1.i.i:                                    ; preds = %if.end29.i.i
  %41 = trunc i32 %call.i.1.i.i to i16
  %trunc.1.i.i = and i16 %41, -4096
  %42 = zext i16 %trunc.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.43)
  switch i16 %trunc.1.i.i, label %if.else.1.i.i.if.end29.1.i.i_crit_edge [
    i16 0, label %if.else.1.i.i.for.end.i.i_crit_edge
    i16 8192, label %if.else.1.i.i.for.end.i.i_crit_edge1941
    i16 12288, label %if.else.1.i.i.for.end.i.i_crit_edge1942
  ]

if.else.1.i.i.for.end.i.i_crit_edge1942:          ; preds = %if.else.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.else.1.i.i.for.end.i.i_crit_edge1941:          ; preds = %if.else.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.else.1.i.i.for.end.i.i_crit_edge:              ; preds = %if.else.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.else.1.i.i.if.end29.1.i.i_crit_edge:           ; preds = %if.else.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.1.i.i

if.then.1.i.i:                                    ; preds = %if.end29.i.i
  %and.1.i.i = and i32 %call.i.1.i.i, -268435456
  %43 = zext i32 %and.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %and.1.i.i, label %if.then.1.i.i.if.end29.1.i.i_crit_edge [
    i32 0, label %if.then.1.i.i.for.end.i.i_crit_edge
    i32 536870912, label %if.then.1.i.i.for.end.i.i_crit_edge1943
    i32 805306368, label %if.then.1.i.i.for.end.i.i_crit_edge1944
  ]

if.then.1.i.i.for.end.i.i_crit_edge1944:          ; preds = %if.then.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.then.1.i.i.for.end.i.i_crit_edge1943:          ; preds = %if.then.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.then.1.i.i.for.end.i.i_crit_edge:              ; preds = %if.then.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.then.1.i.i.if.end29.1.i.i_crit_edge:           ; preds = %if.then.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.1.i.i

if.end29.1.i.i:                                   ; preds = %if.then.1.i.i.if.end29.1.i.i_crit_edge, %if.else.1.i.i.if.end29.1.i.i_crit_edge
  tail call void @msleep(i32 noundef 1) #8
  %44 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %25, align 4
  %read32.i.2.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %45, i32 0, i32 8
  %46 = ptrtoint ptr %read32.i.2.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %read32.i.2.i.i, align 4
  %call.i.2.i.i = tail call i32 %47(ptr noundef %45, i16 noundef zeroext %add.i.i) #8
  br i1 %cmp4.i.i, label %if.then.2.i.i, label %if.else.2.i.i

if.else.2.i.i:                                    ; preds = %if.end29.1.i.i
  %48 = trunc i32 %call.i.2.i.i to i16
  %trunc.2.i.i = and i16 %48, -4096
  %49 = zext i16 %trunc.2.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.45)
  switch i16 %trunc.2.i.i, label %if.else.2.i.i.if.end29.2.i.i_crit_edge [
    i16 0, label %if.else.2.i.i.for.end.i.i_crit_edge
    i16 8192, label %if.else.2.i.i.for.end.i.i_crit_edge1945
    i16 12288, label %if.else.2.i.i.for.end.i.i_crit_edge1946
  ]

if.else.2.i.i.for.end.i.i_crit_edge1946:          ; preds = %if.else.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.else.2.i.i.for.end.i.i_crit_edge1945:          ; preds = %if.else.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.else.2.i.i.for.end.i.i_crit_edge:              ; preds = %if.else.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.else.2.i.i.if.end29.2.i.i_crit_edge:           ; preds = %if.else.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.2.i.i

if.then.2.i.i:                                    ; preds = %if.end29.1.i.i
  %and.2.i.i = and i32 %call.i.2.i.i, -268435456
  %50 = zext i32 %and.2.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %and.2.i.i, label %if.then.2.i.i.if.end29.2.i.i_crit_edge [
    i32 0, label %if.then.2.i.i.for.end.i.i_crit_edge
    i32 536870912, label %if.then.2.i.i.for.end.i.i_crit_edge1947
    i32 805306368, label %if.then.2.i.i.for.end.i.i_crit_edge1948
  ]

if.then.2.i.i.for.end.i.i_crit_edge1948:          ; preds = %if.then.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.then.2.i.i.for.end.i.i_crit_edge1947:          ; preds = %if.then.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.then.2.i.i.for.end.i.i_crit_edge:              ; preds = %if.then.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.then.2.i.i.if.end29.2.i.i_crit_edge:           ; preds = %if.then.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.2.i.i

if.end29.2.i.i:                                   ; preds = %if.then.2.i.i.if.end29.2.i.i_crit_edge, %if.else.2.i.i.if.end29.2.i.i_crit_edge
  tail call void @msleep(i32 noundef 1) #8
  %51 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %25, align 4
  %read32.i.3.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %52, i32 0, i32 8
  %53 = ptrtoint ptr %read32.i.3.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %read32.i.3.i.i, align 4
  %call.i.3.i.i = tail call i32 %54(ptr noundef %52, i16 noundef zeroext %add.i.i) #8
  br i1 %cmp4.i.i, label %if.then.3.i.i, label %if.else.3.i.i

if.else.3.i.i:                                    ; preds = %if.end29.2.i.i
  %55 = trunc i32 %call.i.3.i.i to i16
  %trunc.3.i.i = and i16 %55, -4096
  %56 = zext i16 %trunc.3.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.47)
  switch i16 %trunc.3.i.i, label %if.else.3.i.i.if.end29.3.i.i_crit_edge [
    i16 0, label %if.else.3.i.i.for.end.i.i_crit_edge
    i16 8192, label %if.else.3.i.i.for.end.i.i_crit_edge1949
    i16 12288, label %if.else.3.i.i.for.end.i.i_crit_edge1950
  ]

if.else.3.i.i.for.end.i.i_crit_edge1950:          ; preds = %if.else.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.else.3.i.i.for.end.i.i_crit_edge1949:          ; preds = %if.else.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.else.3.i.i.for.end.i.i_crit_edge:              ; preds = %if.else.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.else.3.i.i.if.end29.3.i.i_crit_edge:           ; preds = %if.else.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.3.i.i

if.then.3.i.i:                                    ; preds = %if.end29.2.i.i
  %and.3.i.i = and i32 %call.i.3.i.i, -268435456
  %57 = zext i32 %and.3.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %and.3.i.i, label %if.then.3.i.i.if.end29.3.i.i_crit_edge [
    i32 0, label %if.then.3.i.i.for.end.i.i_crit_edge
    i32 536870912, label %if.then.3.i.i.for.end.i.i_crit_edge1951
    i32 805306368, label %if.then.3.i.i.for.end.i.i_crit_edge1952
  ]

if.then.3.i.i.for.end.i.i_crit_edge1952:          ; preds = %if.then.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.then.3.i.i.for.end.i.i_crit_edge1951:          ; preds = %if.then.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.then.3.i.i.for.end.i.i_crit_edge:              ; preds = %if.then.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.then.3.i.i.if.end29.3.i.i_crit_edge:           ; preds = %if.then.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.3.i.i

if.end29.3.i.i:                                   ; preds = %if.then.3.i.i.if.end29.3.i.i_crit_edge, %if.else.3.i.i.if.end29.3.i.i_crit_edge
  tail call void @msleep(i32 noundef 1) #8
  %58 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %25, align 4
  %read32.i.4.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %59, i32 0, i32 8
  %60 = ptrtoint ptr %read32.i.4.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %read32.i.4.i.i, align 4
  %call.i.4.i.i = tail call i32 %61(ptr noundef %59, i16 noundef zeroext %add.i.i) #8
  br i1 %cmp4.i.i, label %if.then.4.i.i, label %if.else.4.i.i

if.else.4.i.i:                                    ; preds = %if.end29.3.i.i
  %62 = trunc i32 %call.i.4.i.i to i16
  %trunc.4.i.i = and i16 %62, -4096
  %63 = zext i16 %trunc.4.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.49)
  switch i16 %trunc.4.i.i, label %if.else.4.i.i.if.end29.4.i.i_crit_edge [
    i16 0, label %if.else.4.i.i.for.end.i.i_crit_edge
    i16 8192, label %if.else.4.i.i.for.end.i.i_crit_edge1953
    i16 12288, label %if.else.4.i.i.for.end.i.i_crit_edge1954
  ]

if.else.4.i.i.for.end.i.i_crit_edge1954:          ; preds = %if.else.4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.else.4.i.i.for.end.i.i_crit_edge1953:          ; preds = %if.else.4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.else.4.i.i.for.end.i.i_crit_edge:              ; preds = %if.else.4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.else.4.i.i.if.end29.4.i.i_crit_edge:           ; preds = %if.else.4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.4.i.i

if.then.4.i.i:                                    ; preds = %if.end29.3.i.i
  %and.4.i.i = and i32 %call.i.4.i.i, -268435456
  %64 = zext i32 %and.4.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %and.4.i.i, label %if.then.4.i.i.if.end29.4.i.i_crit_edge [
    i32 0, label %if.then.4.i.i.for.end.i.i_crit_edge
    i32 536870912, label %if.then.4.i.i.for.end.i.i_crit_edge1955
    i32 805306368, label %if.then.4.i.i.for.end.i.i_crit_edge1956
  ]

if.then.4.i.i.for.end.i.i_crit_edge1956:          ; preds = %if.then.4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.then.4.i.i.for.end.i.i_crit_edge1955:          ; preds = %if.then.4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.then.4.i.i.for.end.i.i_crit_edge:              ; preds = %if.then.4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.then.4.i.i.if.end29.4.i.i_crit_edge:           ; preds = %if.then.4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.4.i.i

if.end29.4.i.i:                                   ; preds = %if.then.4.i.i.if.end29.4.i.i_crit_edge, %if.else.4.i.i.if.end29.4.i.i_crit_edge
  tail call void @msleep(i32 noundef 1) #8
  %65 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %25, align 4
  %read32.i.5.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %66, i32 0, i32 8
  %67 = ptrtoint ptr %read32.i.5.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %read32.i.5.i.i, align 4
  %call.i.5.i.i = tail call i32 %68(ptr noundef %66, i16 noundef zeroext %add.i.i) #8
  br i1 %cmp4.i.i, label %if.then.5.i.i, label %if.else.5.i.i

if.else.5.i.i:                                    ; preds = %if.end29.4.i.i
  %69 = trunc i32 %call.i.5.i.i to i16
  %trunc.5.i.i = and i16 %69, -4096
  %70 = zext i16 %trunc.5.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.51)
  switch i16 %trunc.5.i.i, label %if.else.5.i.i.if.end29.5.i.i_crit_edge [
    i16 0, label %if.else.5.i.i.for.end.i.i_crit_edge
    i16 8192, label %if.else.5.i.i.for.end.i.i_crit_edge1957
    i16 12288, label %if.else.5.i.i.for.end.i.i_crit_edge1958
  ]

if.else.5.i.i.for.end.i.i_crit_edge1958:          ; preds = %if.else.5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.else.5.i.i.for.end.i.i_crit_edge1957:          ; preds = %if.else.5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.else.5.i.i.for.end.i.i_crit_edge:              ; preds = %if.else.5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.else.5.i.i.if.end29.5.i.i_crit_edge:           ; preds = %if.else.5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.5.i.i

if.then.5.i.i:                                    ; preds = %if.end29.4.i.i
  %and.5.i.i = and i32 %call.i.5.i.i, -268435456
  %71 = zext i32 %and.5.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %and.5.i.i, label %if.then.5.i.i.if.end29.5.i.i_crit_edge [
    i32 0, label %if.then.5.i.i.for.end.i.i_crit_edge
    i32 536870912, label %if.then.5.i.i.for.end.i.i_crit_edge1959
    i32 805306368, label %if.then.5.i.i.for.end.i.i_crit_edge1960
  ]

if.then.5.i.i.for.end.i.i_crit_edge1960:          ; preds = %if.then.5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.then.5.i.i.for.end.i.i_crit_edge1959:          ; preds = %if.then.5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.then.5.i.i.for.end.i.i_crit_edge:              ; preds = %if.then.5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.then.5.i.i.if.end29.5.i.i_crit_edge:           ; preds = %if.then.5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.5.i.i

if.end29.5.i.i:                                   ; preds = %if.then.5.i.i.if.end29.5.i.i_crit_edge, %if.else.5.i.i.if.end29.5.i.i_crit_edge
  tail call void @msleep(i32 noundef 1) #8
  %72 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %25, align 4
  %read32.i.6.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %73, i32 0, i32 8
  %74 = ptrtoint ptr %read32.i.6.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %read32.i.6.i.i, align 4
  %call.i.6.i.i = tail call i32 %75(ptr noundef %73, i16 noundef zeroext %add.i.i) #8
  br i1 %cmp4.i.i, label %if.then.6.i.i, label %if.else.6.i.i

if.else.6.i.i:                                    ; preds = %if.end29.5.i.i
  %76 = trunc i32 %call.i.6.i.i to i16
  %trunc.6.i.i = and i16 %76, -4096
  %77 = zext i16 %trunc.6.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.53)
  switch i16 %trunc.6.i.i, label %if.else.6.i.i.if.end29.6.i.i_crit_edge [
    i16 0, label %if.else.6.i.i.for.end.i.i_crit_edge
    i16 8192, label %if.else.6.i.i.for.end.i.i_crit_edge1961
    i16 12288, label %if.else.6.i.i.for.end.i.i_crit_edge1962
  ]

if.else.6.i.i.for.end.i.i_crit_edge1962:          ; preds = %if.else.6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.else.6.i.i.for.end.i.i_crit_edge1961:          ; preds = %if.else.6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.else.6.i.i.for.end.i.i_crit_edge:              ; preds = %if.else.6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.else.6.i.i.if.end29.6.i.i_crit_edge:           ; preds = %if.else.6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.6.i.i

if.then.6.i.i:                                    ; preds = %if.end29.5.i.i
  %and.6.i.i = and i32 %call.i.6.i.i, -268435456
  %78 = zext i32 %and.6.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %and.6.i.i, label %if.then.6.i.i.if.end29.6.i.i_crit_edge [
    i32 0, label %if.then.6.i.i.for.end.i.i_crit_edge
    i32 536870912, label %if.then.6.i.i.for.end.i.i_crit_edge1963
    i32 805306368, label %if.then.6.i.i.for.end.i.i_crit_edge1964
  ]

if.then.6.i.i.for.end.i.i_crit_edge1964:          ; preds = %if.then.6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.then.6.i.i.for.end.i.i_crit_edge1963:          ; preds = %if.then.6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.then.6.i.i.for.end.i.i_crit_edge:              ; preds = %if.then.6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.then.6.i.i.if.end29.6.i.i_crit_edge:           ; preds = %if.then.6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.6.i.i

if.end29.6.i.i:                                   ; preds = %if.then.6.i.i.if.end29.6.i.i_crit_edge, %if.else.6.i.i.if.end29.6.i.i_crit_edge
  tail call void @msleep(i32 noundef 1) #8
  %79 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %25, align 4
  %read32.i.7.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %80, i32 0, i32 8
  %81 = ptrtoint ptr %read32.i.7.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %read32.i.7.i.i, align 4
  %call.i.7.i.i = tail call i32 %82(ptr noundef %80, i16 noundef zeroext %add.i.i) #8
  br i1 %cmp4.i.i, label %if.then.7.i.i, label %if.else.7.i.i

if.else.7.i.i:                                    ; preds = %if.end29.6.i.i
  %83 = trunc i32 %call.i.7.i.i to i16
  %trunc.7.i.i = and i16 %83, -4096
  %84 = zext i16 %trunc.7.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.55)
  switch i16 %trunc.7.i.i, label %if.else.7.i.i.if.end29.7.i.i_crit_edge [
    i16 0, label %if.else.7.i.i.for.end.i.i_crit_edge
    i16 8192, label %if.else.7.i.i.for.end.i.i_crit_edge1965
    i16 12288, label %if.else.7.i.i.for.end.i.i_crit_edge1966
  ]

if.else.7.i.i.for.end.i.i_crit_edge1966:          ; preds = %if.else.7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.else.7.i.i.for.end.i.i_crit_edge1965:          ; preds = %if.else.7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.else.7.i.i.for.end.i.i_crit_edge:              ; preds = %if.else.7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.else.7.i.i.if.end29.7.i.i_crit_edge:           ; preds = %if.else.7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.7.i.i

if.then.7.i.i:                                    ; preds = %if.end29.6.i.i
  %and.7.i.i = and i32 %call.i.7.i.i, -268435456
  %85 = zext i32 %and.7.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %and.7.i.i, label %if.then.7.i.i.if.end29.7.i.i_crit_edge [
    i32 0, label %if.then.7.i.i.for.end.i.i_crit_edge
    i32 536870912, label %if.then.7.i.i.for.end.i.i_crit_edge1967
    i32 805306368, label %if.then.7.i.i.for.end.i.i_crit_edge1968
  ]

if.then.7.i.i.for.end.i.i_crit_edge1968:          ; preds = %if.then.7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.then.7.i.i.for.end.i.i_crit_edge1967:          ; preds = %if.then.7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.then.7.i.i.for.end.i.i_crit_edge:              ; preds = %if.then.7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.then.7.i.i.if.end29.7.i.i_crit_edge:           ; preds = %if.then.7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.7.i.i

if.end29.7.i.i:                                   ; preds = %if.then.7.i.i.if.end29.7.i.i_crit_edge, %if.else.7.i.i.if.end29.7.i.i_crit_edge
  tail call void @msleep(i32 noundef 1) #8
  %86 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %25, align 4
  %read32.i.8.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %87, i32 0, i32 8
  %88 = ptrtoint ptr %read32.i.8.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %read32.i.8.i.i, align 4
  %call.i.8.i.i = tail call i32 %89(ptr noundef %87, i16 noundef zeroext %add.i.i) #8
  br i1 %cmp4.i.i, label %if.then.8.i.i, label %if.else.8.i.i

if.else.8.i.i:                                    ; preds = %if.end29.7.i.i
  %90 = trunc i32 %call.i.8.i.i to i16
  %trunc.8.i.i = and i16 %90, -4096
  %91 = zext i16 %trunc.8.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.57)
  switch i16 %trunc.8.i.i, label %if.else.8.i.i.if.end29.8.i.i_crit_edge [
    i16 0, label %if.else.8.i.i.for.end.i.i_crit_edge
    i16 8192, label %if.else.8.i.i.for.end.i.i_crit_edge1969
    i16 12288, label %if.else.8.i.i.for.end.i.i_crit_edge1970
  ]

if.else.8.i.i.for.end.i.i_crit_edge1970:          ; preds = %if.else.8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.else.8.i.i.for.end.i.i_crit_edge1969:          ; preds = %if.else.8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.else.8.i.i.for.end.i.i_crit_edge:              ; preds = %if.else.8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.else.8.i.i.if.end29.8.i.i_crit_edge:           ; preds = %if.else.8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.8.i.i

if.then.8.i.i:                                    ; preds = %if.end29.7.i.i
  %and.8.i.i = and i32 %call.i.8.i.i, -268435456
  %92 = zext i32 %and.8.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %and.8.i.i, label %if.then.8.i.i.if.end29.8.i.i_crit_edge [
    i32 0, label %if.then.8.i.i.for.end.i.i_crit_edge
    i32 536870912, label %if.then.8.i.i.for.end.i.i_crit_edge1971
    i32 805306368, label %if.then.8.i.i.for.end.i.i_crit_edge1972
  ]

if.then.8.i.i.for.end.i.i_crit_edge1972:          ; preds = %if.then.8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.then.8.i.i.for.end.i.i_crit_edge1971:          ; preds = %if.then.8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.then.8.i.i.for.end.i.i_crit_edge:              ; preds = %if.then.8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.then.8.i.i.if.end29.8.i.i_crit_edge:           ; preds = %if.then.8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.8.i.i

if.end29.8.i.i:                                   ; preds = %if.then.8.i.i.if.end29.8.i.i_crit_edge, %if.else.8.i.i.if.end29.8.i.i_crit_edge
  tail call void @msleep(i32 noundef 1) #8
  %93 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %25, align 4
  %read32.i.9.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %94, i32 0, i32 8
  %95 = ptrtoint ptr %read32.i.9.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %read32.i.9.i.i, align 4
  %call.i.9.i.i = tail call i32 %96(ptr noundef %94, i16 noundef zeroext %add.i.i) #8
  br i1 %cmp4.i.i, label %if.then.9.i.i, label %if.else.9.i.i

if.else.9.i.i:                                    ; preds = %if.end29.8.i.i
  %97 = trunc i32 %call.i.9.i.i to i16
  %trunc.9.i.i = and i16 %97, -4096
  %98 = zext i16 %trunc.9.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.59)
  switch i16 %trunc.9.i.i, label %if.else.9.i.i.if.end29.9.i.i_crit_edge [
    i16 0, label %if.else.9.i.i.for.end.i.i_crit_edge
    i16 8192, label %if.else.9.i.i.for.end.i.i_crit_edge1973
    i16 12288, label %if.else.9.i.i.for.end.i.i_crit_edge1974
  ]

if.else.9.i.i.for.end.i.i_crit_edge1974:          ; preds = %if.else.9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.else.9.i.i.for.end.i.i_crit_edge1973:          ; preds = %if.else.9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.else.9.i.i.for.end.i.i_crit_edge:              ; preds = %if.else.9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.else.9.i.i.if.end29.9.i.i_crit_edge:           ; preds = %if.else.9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.9.i.i

if.then.9.i.i:                                    ; preds = %if.end29.8.i.i
  %and.9.i.i = and i32 %call.i.9.i.i, -268435456
  %99 = zext i32 %and.9.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %and.9.i.i, label %if.then.9.i.i.if.end29.9.i.i_crit_edge [
    i32 0, label %if.then.9.i.i.for.end.i.i_crit_edge
    i32 536870912, label %if.then.9.i.i.for.end.i.i_crit_edge1975
    i32 805306368, label %if.then.9.i.i.for.end.i.i_crit_edge1976
  ]

if.then.9.i.i.for.end.i.i_crit_edge1976:          ; preds = %if.then.9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.then.9.i.i.for.end.i.i_crit_edge1975:          ; preds = %if.then.9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.then.9.i.i.for.end.i.i_crit_edge:              ; preds = %if.then.9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.then.9.i.i.if.end29.9.i.i_crit_edge:           ; preds = %if.then.9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.9.i.i

if.end29.9.i.i:                                   ; preds = %if.then.9.i.i.if.end29.9.i.i_crit_edge, %if.else.9.i.i.if.end29.9.i.i_crit_edge
  tail call void @msleep(i32 noundef 1) #8
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %if.end29.9.i.i, %if.then.9.i.i.for.end.i.i_crit_edge, %if.then.9.i.i.for.end.i.i_crit_edge1975, %if.then.9.i.i.for.end.i.i_crit_edge1976, %if.else.9.i.i.for.end.i.i_crit_edge, %if.else.9.i.i.for.end.i.i_crit_edge1973, %if.else.9.i.i.for.end.i.i_crit_edge1974, %if.then.8.i.i.for.end.i.i_crit_edge, %if.then.8.i.i.for.end.i.i_crit_edge1971, %if.then.8.i.i.for.end.i.i_crit_edge1972, %if.else.8.i.i.for.end.i.i_crit_edge, %if.else.8.i.i.for.end.i.i_crit_edge1969, %if.else.8.i.i.for.end.i.i_crit_edge1970, %if.then.7.i.i.for.end.i.i_crit_edge, %if.then.7.i.i.for.end.i.i_crit_edge1967, %if.then.7.i.i.for.end.i.i_crit_edge1968, %if.else.7.i.i.for.end.i.i_crit_edge, %if.else.7.i.i.for.end.i.i_crit_edge1965, %if.else.7.i.i.for.end.i.i_crit_edge1966, %if.then.6.i.i.for.end.i.i_crit_edge, %if.then.6.i.i.for.end.i.i_crit_edge1963, %if.then.6.i.i.for.end.i.i_crit_edge1964, %if.else.6.i.i.for.end.i.i_crit_edge, %if.else.6.i.i.for.end.i.i_crit_edge1961, %if.else.6.i.i.for.end.i.i_crit_edge1962, %if.then.5.i.i.for.end.i.i_crit_edge, %if.then.5.i.i.for.end.i.i_crit_edge1959, %if.then.5.i.i.for.end.i.i_crit_edge1960, %if.else.5.i.i.for.end.i.i_crit_edge, %if.else.5.i.i.for.end.i.i_crit_edge1957, %if.else.5.i.i.for.end.i.i_crit_edge1958, %if.then.4.i.i.for.end.i.i_crit_edge, %if.then.4.i.i.for.end.i.i_crit_edge1955, %if.then.4.i.i.for.end.i.i_crit_edge1956, %if.else.4.i.i.for.end.i.i_crit_edge, %if.else.4.i.i.for.end.i.i_crit_edge1953, %if.else.4.i.i.for.end.i.i_crit_edge1954, %if.then.3.i.i.for.end.i.i_crit_edge, %if.then.3.i.i.for.end.i.i_crit_edge1951, %if.then.3.i.i.for.end.i.i_crit_edge1952, %if.else.3.i.i.for.end.i.i_crit_edge, %if.else.3.i.i.for.end.i.i_crit_edge1949, %if.else.3.i.i.for.end.i.i_crit_edge1950, %if.then.2.i.i.for.end.i.i_crit_edge, %if.then.2.i.i.for.end.i.i_crit_edge1947, %if.then.2.i.i.for.end.i.i_crit_edge1948, %if.else.2.i.i.for.end.i.i_crit_edge, %if.else.2.i.i.for.end.i.i_crit_edge1945, %if.else.2.i.i.for.end.i.i_crit_edge1946, %if.then.1.i.i.for.end.i.i_crit_edge, %if.then.1.i.i.for.end.i.i_crit_edge1943, %if.then.1.i.i.for.end.i.i_crit_edge1944, %if.else.1.i.i.for.end.i.i_crit_edge, %if.else.1.i.i.for.end.i.i_crit_edge1941, %if.else.1.i.i.for.end.i.i_crit_edge1942, %if.else.i.i.for.end.i.i_crit_edge, %if.else.i.i.for.end.i.i_crit_edge1939, %if.else.i.i.for.end.i.i_crit_edge1940, %if.then.i.i.for.end.i.i_crit_edge, %if.then.i.i.for.end.i.i_crit_edge1937, %if.then.i.i.for.end.i.i_crit_edge1938
  %100 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %25, align 4
  %write32.i.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %101, i32 0, i32 10
  %102 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %103(ptr noundef %101, i16 noundef zeroext %27, i32 noundef 0) #8
  %104 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %25, align 4
  %read32.i1.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %105, i32 0, i32 8
  %106 = ptrtoint ptr %read32.i1.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %read32.i1.i.i, align 4
  %call.i2.i.i = tail call i32 %107(ptr noundef %105, i16 noundef zeroext %add.i.i) #8
  br i1 %cmp4.i.i, label %if.then53.i.i, label %if.else59.i.i

if.then53.i.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %call.i2.i.i)
  %cmp55.i.i = icmp ult i32 %call.i2.i.i, 268435456
  br i1 %cmp55.i.i, label %if.then53.i.i.if.end72.i.i_crit_edge, label %if.then53.i.i.if.end65.i.i_crit_edge

if.then53.i.i.if.end65.i.i_crit_edge:             ; preds = %if.then53.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65.i.i

if.then53.i.i.if.end72.i.i_crit_edge:             ; preds = %if.then53.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.i.i

if.else59.i.i:                                    ; preds = %for.end.i.i
  %and60.i.i = and i32 %call.i2.i.i, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.i.i)
  %cmp61.i.i = icmp eq i32 %and60.i.i, 0
  br i1 %cmp61.i.i, label %if.else59.i.i.if.end72.i.i_crit_edge, label %if.else59.i.i.if.end65.i.i_crit_edge

if.else59.i.i.if.end65.i.i_crit_edge:             ; preds = %if.else59.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65.i.i

if.else59.i.i.if.end72.i.i_crit_edge:             ; preds = %if.else59.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.i.i

if.end65.i.i:                                     ; preds = %if.else59.i.i.if.end65.i.i_crit_edge, %if.then53.i.i.if.end65.i.i_crit_edge
  tail call void @msleep(i32 noundef 1) #8
  %108 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %25, align 4
  %read32.i1.1.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %109, i32 0, i32 8
  %110 = ptrtoint ptr %read32.i1.1.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %read32.i1.1.i.i, align 4
  %call.i2.1.i.i = tail call i32 %111(ptr noundef %109, i16 noundef zeroext %add.i.i) #8
  br i1 %cmp4.i.i, label %if.then53.1.i.i, label %if.else59.1.i.i

if.else59.1.i.i:                                  ; preds = %if.end65.i.i
  %and60.1.i.i = and i32 %call.i2.1.i.i, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.1.i.i)
  %cmp61.1.i.i = icmp eq i32 %and60.1.i.i, 0
  br i1 %cmp61.1.i.i, label %if.else59.1.i.i.if.end72.i.i_crit_edge, label %if.else59.1.i.i.if.end65.1.i.i_crit_edge

if.else59.1.i.i.if.end65.1.i.i_crit_edge:         ; preds = %if.else59.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65.1.i.i

if.else59.1.i.i.if.end72.i.i_crit_edge:           ; preds = %if.else59.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.i.i

if.then53.1.i.i:                                  ; preds = %if.end65.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %call.i2.1.i.i)
  %cmp55.1.i.i = icmp ult i32 %call.i2.1.i.i, 268435456
  br i1 %cmp55.1.i.i, label %if.then53.1.i.i.if.end72.i.i_crit_edge, label %if.then53.1.i.i.if.end65.1.i.i_crit_edge

if.then53.1.i.i.if.end65.1.i.i_crit_edge:         ; preds = %if.then53.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65.1.i.i

if.then53.1.i.i.if.end72.i.i_crit_edge:           ; preds = %if.then53.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.i.i

if.end65.1.i.i:                                   ; preds = %if.then53.1.i.i.if.end65.1.i.i_crit_edge, %if.else59.1.i.i.if.end65.1.i.i_crit_edge
  tail call void @msleep(i32 noundef 1) #8
  %112 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %25, align 4
  %read32.i1.2.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %113, i32 0, i32 8
  %114 = ptrtoint ptr %read32.i1.2.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %read32.i1.2.i.i, align 4
  %call.i2.2.i.i = tail call i32 %115(ptr noundef %113, i16 noundef zeroext %add.i.i) #8
  br i1 %cmp4.i.i, label %if.then53.2.i.i, label %if.else59.2.i.i

if.else59.2.i.i:                                  ; preds = %if.end65.1.i.i
  %and60.2.i.i = and i32 %call.i2.2.i.i, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.2.i.i)
  %cmp61.2.i.i = icmp eq i32 %and60.2.i.i, 0
  br i1 %cmp61.2.i.i, label %if.else59.2.i.i.if.end72.i.i_crit_edge, label %if.else59.2.i.i.if.end65.2.i.i_crit_edge

if.else59.2.i.i.if.end65.2.i.i_crit_edge:         ; preds = %if.else59.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65.2.i.i

if.else59.2.i.i.if.end72.i.i_crit_edge:           ; preds = %if.else59.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.i.i

if.then53.2.i.i:                                  ; preds = %if.end65.1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %call.i2.2.i.i)
  %cmp55.2.i.i = icmp ult i32 %call.i2.2.i.i, 268435456
  br i1 %cmp55.2.i.i, label %if.then53.2.i.i.if.end72.i.i_crit_edge, label %if.then53.2.i.i.if.end65.2.i.i_crit_edge

if.then53.2.i.i.if.end65.2.i.i_crit_edge:         ; preds = %if.then53.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65.2.i.i

if.then53.2.i.i.if.end72.i.i_crit_edge:           ; preds = %if.then53.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.i.i

if.end65.2.i.i:                                   ; preds = %if.then53.2.i.i.if.end65.2.i.i_crit_edge, %if.else59.2.i.i.if.end65.2.i.i_crit_edge
  tail call void @msleep(i32 noundef 1) #8
  %116 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %25, align 4
  %read32.i1.3.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %117, i32 0, i32 8
  %118 = ptrtoint ptr %read32.i1.3.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %read32.i1.3.i.i, align 4
  %call.i2.3.i.i = tail call i32 %119(ptr noundef %117, i16 noundef zeroext %add.i.i) #8
  br i1 %cmp4.i.i, label %if.then53.3.i.i, label %if.else59.3.i.i

if.else59.3.i.i:                                  ; preds = %if.end65.2.i.i
  %and60.3.i.i = and i32 %call.i2.3.i.i, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.3.i.i)
  %cmp61.3.i.i = icmp eq i32 %and60.3.i.i, 0
  br i1 %cmp61.3.i.i, label %if.else59.3.i.i.if.end72.i.i_crit_edge, label %if.else59.3.i.i.if.end65.3.i.i_crit_edge

if.else59.3.i.i.if.end65.3.i.i_crit_edge:         ; preds = %if.else59.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65.3.i.i

if.else59.3.i.i.if.end72.i.i_crit_edge:           ; preds = %if.else59.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.i.i

if.then53.3.i.i:                                  ; preds = %if.end65.2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %call.i2.3.i.i)
  %cmp55.3.i.i = icmp ult i32 %call.i2.3.i.i, 268435456
  br i1 %cmp55.3.i.i, label %if.then53.3.i.i.if.end72.i.i_crit_edge, label %if.then53.3.i.i.if.end65.3.i.i_crit_edge

if.then53.3.i.i.if.end65.3.i.i_crit_edge:         ; preds = %if.then53.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65.3.i.i

if.then53.3.i.i.if.end72.i.i_crit_edge:           ; preds = %if.then53.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.i.i

if.end65.3.i.i:                                   ; preds = %if.then53.3.i.i.if.end65.3.i.i_crit_edge, %if.else59.3.i.i.if.end65.3.i.i_crit_edge
  tail call void @msleep(i32 noundef 1) #8
  %120 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %25, align 4
  %read32.i1.4.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %121, i32 0, i32 8
  %122 = ptrtoint ptr %read32.i1.4.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %read32.i1.4.i.i, align 4
  %call.i2.4.i.i = tail call i32 %123(ptr noundef %121, i16 noundef zeroext %add.i.i) #8
  br i1 %cmp4.i.i, label %if.then53.4.i.i, label %if.else59.4.i.i

if.else59.4.i.i:                                  ; preds = %if.end65.3.i.i
  %and60.4.i.i = and i32 %call.i2.4.i.i, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.4.i.i)
  %cmp61.4.i.i = icmp eq i32 %and60.4.i.i, 0
  br i1 %cmp61.4.i.i, label %if.else59.4.i.i.if.end72.i.i_crit_edge, label %if.else59.4.i.i.if.end65.4.i.i_crit_edge

if.else59.4.i.i.if.end65.4.i.i_crit_edge:         ; preds = %if.else59.4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65.4.i.i

if.else59.4.i.i.if.end72.i.i_crit_edge:           ; preds = %if.else59.4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.i.i

if.then53.4.i.i:                                  ; preds = %if.end65.3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %call.i2.4.i.i)
  %cmp55.4.i.i = icmp ult i32 %call.i2.4.i.i, 268435456
  br i1 %cmp55.4.i.i, label %if.then53.4.i.i.if.end72.i.i_crit_edge, label %if.then53.4.i.i.if.end65.4.i.i_crit_edge

if.then53.4.i.i.if.end65.4.i.i_crit_edge:         ; preds = %if.then53.4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65.4.i.i

if.then53.4.i.i.if.end72.i.i_crit_edge:           ; preds = %if.then53.4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.i.i

if.end65.4.i.i:                                   ; preds = %if.then53.4.i.i.if.end65.4.i.i_crit_edge, %if.else59.4.i.i.if.end65.4.i.i_crit_edge
  tail call void @msleep(i32 noundef 1) #8
  %124 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %25, align 4
  %read32.i1.5.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %125, i32 0, i32 8
  %126 = ptrtoint ptr %read32.i1.5.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %read32.i1.5.i.i, align 4
  %call.i2.5.i.i = tail call i32 %127(ptr noundef %125, i16 noundef zeroext %add.i.i) #8
  br i1 %cmp4.i.i, label %if.then53.5.i.i, label %if.else59.5.i.i

if.else59.5.i.i:                                  ; preds = %if.end65.4.i.i
  %and60.5.i.i = and i32 %call.i2.5.i.i, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.5.i.i)
  %cmp61.5.i.i = icmp eq i32 %and60.5.i.i, 0
  br i1 %cmp61.5.i.i, label %if.else59.5.i.i.if.end72.i.i_crit_edge, label %if.else59.5.i.i.if.end65.5.i.i_crit_edge

if.else59.5.i.i.if.end65.5.i.i_crit_edge:         ; preds = %if.else59.5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65.5.i.i

if.else59.5.i.i.if.end72.i.i_crit_edge:           ; preds = %if.else59.5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.i.i

if.then53.5.i.i:                                  ; preds = %if.end65.4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %call.i2.5.i.i)
  %cmp55.5.i.i = icmp ult i32 %call.i2.5.i.i, 268435456
  br i1 %cmp55.5.i.i, label %if.then53.5.i.i.if.end72.i.i_crit_edge, label %if.then53.5.i.i.if.end65.5.i.i_crit_edge

if.then53.5.i.i.if.end65.5.i.i_crit_edge:         ; preds = %if.then53.5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65.5.i.i

if.then53.5.i.i.if.end72.i.i_crit_edge:           ; preds = %if.then53.5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.i.i

if.end65.5.i.i:                                   ; preds = %if.then53.5.i.i.if.end65.5.i.i_crit_edge, %if.else59.5.i.i.if.end65.5.i.i_crit_edge
  tail call void @msleep(i32 noundef 1) #8
  %128 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %25, align 4
  %read32.i1.6.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %129, i32 0, i32 8
  %130 = ptrtoint ptr %read32.i1.6.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %read32.i1.6.i.i, align 4
  %call.i2.6.i.i = tail call i32 %131(ptr noundef %129, i16 noundef zeroext %add.i.i) #8
  br i1 %cmp4.i.i, label %if.then53.6.i.i, label %if.else59.6.i.i

if.else59.6.i.i:                                  ; preds = %if.end65.5.i.i
  %and60.6.i.i = and i32 %call.i2.6.i.i, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.6.i.i)
  %cmp61.6.i.i = icmp eq i32 %and60.6.i.i, 0
  br i1 %cmp61.6.i.i, label %if.else59.6.i.i.if.end72.i.i_crit_edge, label %if.else59.6.i.i.if.end65.6.i.i_crit_edge

if.else59.6.i.i.if.end65.6.i.i_crit_edge:         ; preds = %if.else59.6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65.6.i.i

if.else59.6.i.i.if.end72.i.i_crit_edge:           ; preds = %if.else59.6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.i.i

if.then53.6.i.i:                                  ; preds = %if.end65.5.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %call.i2.6.i.i)
  %cmp55.6.i.i = icmp ult i32 %call.i2.6.i.i, 268435456
  br i1 %cmp55.6.i.i, label %if.then53.6.i.i.if.end72.i.i_crit_edge, label %if.then53.6.i.i.if.end65.6.i.i_crit_edge

if.then53.6.i.i.if.end65.6.i.i_crit_edge:         ; preds = %if.then53.6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65.6.i.i

if.then53.6.i.i.if.end72.i.i_crit_edge:           ; preds = %if.then53.6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.i.i

if.end65.6.i.i:                                   ; preds = %if.then53.6.i.i.if.end65.6.i.i_crit_edge, %if.else59.6.i.i.if.end65.6.i.i_crit_edge
  tail call void @msleep(i32 noundef 1) #8
  %132 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %25, align 4
  %read32.i1.7.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %133, i32 0, i32 8
  %134 = ptrtoint ptr %read32.i1.7.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %read32.i1.7.i.i, align 4
  %call.i2.7.i.i = tail call i32 %135(ptr noundef %133, i16 noundef zeroext %add.i.i) #8
  br i1 %cmp4.i.i, label %if.then53.7.i.i, label %if.else59.7.i.i

if.else59.7.i.i:                                  ; preds = %if.end65.6.i.i
  %and60.7.i.i = and i32 %call.i2.7.i.i, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.7.i.i)
  %cmp61.7.i.i = icmp eq i32 %and60.7.i.i, 0
  br i1 %cmp61.7.i.i, label %if.else59.7.i.i.if.end72.i.i_crit_edge, label %if.else59.7.i.i.if.end65.7.i.i_crit_edge

if.else59.7.i.i.if.end65.7.i.i_crit_edge:         ; preds = %if.else59.7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65.7.i.i

if.else59.7.i.i.if.end72.i.i_crit_edge:           ; preds = %if.else59.7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.i.i

if.then53.7.i.i:                                  ; preds = %if.end65.6.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %call.i2.7.i.i)
  %cmp55.7.i.i = icmp ult i32 %call.i2.7.i.i, 268435456
  br i1 %cmp55.7.i.i, label %if.then53.7.i.i.if.end72.i.i_crit_edge, label %if.then53.7.i.i.if.end65.7.i.i_crit_edge

if.then53.7.i.i.if.end65.7.i.i_crit_edge:         ; preds = %if.then53.7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65.7.i.i

if.then53.7.i.i.if.end72.i.i_crit_edge:           ; preds = %if.then53.7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.i.i

if.end65.7.i.i:                                   ; preds = %if.then53.7.i.i.if.end65.7.i.i_crit_edge, %if.else59.7.i.i.if.end65.7.i.i_crit_edge
  tail call void @msleep(i32 noundef 1) #8
  %136 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %25, align 4
  %read32.i1.8.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %137, i32 0, i32 8
  %138 = ptrtoint ptr %read32.i1.8.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %read32.i1.8.i.i, align 4
  %call.i2.8.i.i = tail call i32 %139(ptr noundef %137, i16 noundef zeroext %add.i.i) #8
  br i1 %cmp4.i.i, label %if.then53.8.i.i, label %if.else59.8.i.i

if.else59.8.i.i:                                  ; preds = %if.end65.7.i.i
  %and60.8.i.i = and i32 %call.i2.8.i.i, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.8.i.i)
  %cmp61.8.i.i = icmp eq i32 %and60.8.i.i, 0
  br i1 %cmp61.8.i.i, label %if.else59.8.i.i.if.end72.i.i_crit_edge, label %if.else59.8.i.i.if.end65.8.i.i_crit_edge

if.else59.8.i.i.if.end65.8.i.i_crit_edge:         ; preds = %if.else59.8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65.8.i.i

if.else59.8.i.i.if.end72.i.i_crit_edge:           ; preds = %if.else59.8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.i.i

if.then53.8.i.i:                                  ; preds = %if.end65.7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %call.i2.8.i.i)
  %cmp55.8.i.i = icmp ult i32 %call.i2.8.i.i, 268435456
  br i1 %cmp55.8.i.i, label %if.then53.8.i.i.if.end72.i.i_crit_edge, label %if.then53.8.i.i.if.end65.8.i.i_crit_edge

if.then53.8.i.i.if.end65.8.i.i_crit_edge:         ; preds = %if.then53.8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65.8.i.i

if.then53.8.i.i.if.end72.i.i_crit_edge:           ; preds = %if.then53.8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.i.i

if.end65.8.i.i:                                   ; preds = %if.then53.8.i.i.if.end65.8.i.i_crit_edge, %if.else59.8.i.i.if.end65.8.i.i_crit_edge
  tail call void @msleep(i32 noundef 1) #8
  %140 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %25, align 4
  %read32.i1.9.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %141, i32 0, i32 8
  %142 = ptrtoint ptr %read32.i1.9.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %read32.i1.9.i.i, align 4
  %call.i2.9.i.i = tail call i32 %143(ptr noundef %141, i16 noundef zeroext %add.i.i) #8
  br i1 %cmp4.i.i, label %if.then53.9.i.i, label %if.else59.9.i.i

if.else59.9.i.i:                                  ; preds = %if.end65.8.i.i
  %and60.9.i.i = and i32 %call.i2.9.i.i, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.9.i.i)
  %cmp61.9.i.i = icmp eq i32 %and60.9.i.i, 0
  br i1 %cmp61.9.i.i, label %if.else59.9.i.i.if.end72.i.i_crit_edge, label %if.else59.9.i.i.if.end65.9.i.i_crit_edge

if.else59.9.i.i.if.end65.9.i.i_crit_edge:         ; preds = %if.else59.9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65.9.i.i

if.else59.9.i.i.if.end72.i.i_crit_edge:           ; preds = %if.else59.9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.i.i

if.then53.9.i.i:                                  ; preds = %if.end65.8.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %call.i2.9.i.i)
  %cmp55.9.i.i = icmp ult i32 %call.i2.9.i.i, 268435456
  br i1 %cmp55.9.i.i, label %if.then53.9.i.i.if.end72.i.i_crit_edge, label %if.then53.9.i.i.if.end65.9.i.i_crit_edge

if.then53.9.i.i.if.end65.9.i.i_crit_edge:         ; preds = %if.then53.9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65.9.i.i

if.then53.9.i.i.if.end72.i.i_crit_edge:           ; preds = %if.then53.9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.i.i

if.end65.9.i.i:                                   ; preds = %if.then53.9.i.i.if.end65.9.i.i_crit_edge, %if.else59.9.i.i.if.end65.9.i.i_crit_edge
  tail call void @msleep(i32 noundef 1) #8
  %wl.i.i = getelementptr inbounds %struct.b43_wldev, ptr %25, i32 0, i32 1
  %144 = ptrtoint ptr %wl.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %wl.i.i, align 4
  tail call void (ptr, ptr, ...) @b43err(ptr noundef %145, ptr noundef nonnull @.str.21) #8
  br label %b43_dmacontroller_tx_reset.exit.i

if.end72.i.i:                                     ; preds = %if.then53.9.i.i.if.end72.i.i_crit_edge, %if.else59.9.i.i.if.end72.i.i_crit_edge, %if.then53.8.i.i.if.end72.i.i_crit_edge, %if.else59.8.i.i.if.end72.i.i_crit_edge, %if.then53.7.i.i.if.end72.i.i_crit_edge, %if.else59.7.i.i.if.end72.i.i_crit_edge, %if.then53.6.i.i.if.end72.i.i_crit_edge, %if.else59.6.i.i.if.end72.i.i_crit_edge, %if.then53.5.i.i.if.end72.i.i_crit_edge, %if.else59.5.i.i.if.end72.i.i_crit_edge, %if.then53.4.i.i.if.end72.i.i_crit_edge, %if.else59.4.i.i.if.end72.i.i_crit_edge, %if.then53.3.i.i.if.end72.i.i_crit_edge, %if.else59.3.i.i.if.end72.i.i_crit_edge, %if.then53.2.i.i.if.end72.i.i_crit_edge, %if.else59.2.i.i.if.end72.i.i_crit_edge, %if.then53.1.i.i.if.end72.i.i_crit_edge, %if.else59.1.i.i.if.end72.i.i_crit_edge, %if.else59.i.i.if.end72.i.i_crit_edge, %if.then53.i.i.if.end72.i.i_crit_edge
  tail call void @msleep(i32 noundef 1) #8
  br label %b43_dmacontroller_tx_reset.exit.i

b43_dmacontroller_tx_reset.exit.i:                ; preds = %if.end72.i.i, %if.end65.9.i.i
  %146 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %147)
  %cmp.i = icmp eq i32 %147, 64
  %148 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %dev, align 8
  %150 = ptrtoint ptr %mmio_base5.i to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %mmio_base5.i, align 2
  br i1 %cmp.i, label %if.then2.i, label %if.else.i1872

if.then2.i:                                       ; preds = %b43_dmacontroller_tx_reset.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i28.i = add i16 %151, 8
  %152 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %149, align 4
  %write32.i.i29.i = getelementptr inbounds %struct.b43_bus_dev, ptr %153, i32 0, i32 10
  %154 = ptrtoint ptr %write32.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %write32.i.i29.i, align 4
  tail call void %155(ptr noundef %153, i16 noundef zeroext %add.i28.i, i32 noundef 0) #8
  %156 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %dev, align 8
  %158 = ptrtoint ptr %mmio_base5.i to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %mmio_base5.i, align 2
  %add.i32.i = add i16 %159, 12
  %160 = ptrtoint ptr %157 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %157, align 4
  %write32.i.i33.i = getelementptr inbounds %struct.b43_bus_dev, ptr %161, i32 0, i32 10
  %162 = ptrtoint ptr %write32.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %write32.i.i33.i, align 4
  tail call void %163(ptr noundef %161, i16 noundef zeroext %add.i32.i, i32 noundef 0) #8
  br label %dmacontroller_cleanup.exit

if.else.i1872:                                    ; preds = %b43_dmacontroller_tx_reset.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i36.i = add i16 %151, 4
  %164 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %149, align 4
  %write32.i.i37.i = getelementptr inbounds %struct.b43_bus_dev, ptr %165, i32 0, i32 10
  %166 = ptrtoint ptr %write32.i.i37.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %write32.i.i37.i, align 4
  tail call void %167(ptr noundef %165, i16 noundef zeroext %add.i36.i, i32 noundef 0) #8
  br label %dmacontroller_cleanup.exit

if.else3.i:                                       ; preds = %if.end1310
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 446) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %29)
  %cmp.i.i = icmp eq i32 %29, 64
  %conv5.i.i = select i1 %cmp.i.i, i16 32, i16 16
  %add.i38.i = add i16 %conv5.i.i, %27
  %168 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %25, align 4
  %write32.i.i39.i = getelementptr inbounds %struct.b43_bus_dev, ptr %169, i32 0, i32 10
  %170 = ptrtoint ptr %write32.i.i39.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %write32.i.i39.i, align 4
  tail call void %171(ptr noundef %169, i16 noundef zeroext %add.i38.i, i32 noundef 0) #8
  %conv14.i.i = select i1 %cmp.i.i, i16 48, i16 28
  %add15.i.i = add i16 %conv14.i.i, %27
  %172 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %25, align 4
  %read32.i.i40.i = getelementptr inbounds %struct.b43_bus_dev, ptr %173, i32 0, i32 8
  %174 = ptrtoint ptr %read32.i.i40.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %read32.i.i40.i, align 4
  %call.i.i41.i = tail call i32 %175(ptr noundef %173, i16 noundef zeroext %add15.i.i) #8
  br i1 %cmp.i.i, label %if.then.i42.i, label %if.else.i43.i

if.then.i42.i:                                    ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %call.i.i41.i)
  %cmp19.i.i = icmp ult i32 %call.i.i41.i, 268435456
  br i1 %cmp19.i.i, label %if.then.i42.i.b43_dmacontroller_rx_reset.exit.i_crit_edge, label %if.then.i42.i.if.end27.i.i_crit_edge

if.then.i42.i.if.end27.i.i_crit_edge:             ; preds = %if.then.i42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.i.i

if.then.i42.i.b43_dmacontroller_rx_reset.exit.i_crit_edge: ; preds = %if.then.i42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %b43_dmacontroller_rx_reset.exit.i

if.else.i43.i:                                    ; preds = %if.else3.i
  %and22.i.i = and i32 %call.i.i41.i, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i.i)
  %cmp23.i.i = icmp eq i32 %and22.i.i, 0
  br i1 %cmp23.i.i, label %if.else.i43.i.b43_dmacontroller_rx_reset.exit.i_crit_edge, label %if.else.i43.i.if.end27.i.i_crit_edge

if.else.i43.i.if.end27.i.i_crit_edge:             ; preds = %if.else.i43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.i.i

if.else.i43.i.b43_dmacontroller_rx_reset.exit.i_crit_edge: ; preds = %if.else.i43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %b43_dmacontroller_rx_reset.exit.i

if.end27.i.i:                                     ; preds = %if.else.i43.i.if.end27.i.i_crit_edge, %if.then.i42.i.if.end27.i.i_crit_edge
  tail call void @msleep(i32 noundef 1) #8
  %176 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %25, align 4
  %read32.i.1.i44.i = getelementptr inbounds %struct.b43_bus_dev, ptr %177, i32 0, i32 8
  %178 = ptrtoint ptr %read32.i.1.i44.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %read32.i.1.i44.i, align 4
  %call.i.1.i45.i = tail call i32 %179(ptr noundef %177, i16 noundef zeroext %add15.i.i) #8
  br i1 %cmp.i.i, label %if.then.1.i47.i, label %if.else.1.i46.i

if.else.1.i46.i:                                  ; preds = %if.end27.i.i
  %and22.1.i.i = and i32 %call.i.1.i45.i, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.1.i.i)
  %cmp23.1.i.i = icmp eq i32 %and22.1.i.i, 0
  br i1 %cmp23.1.i.i, label %if.else.1.i46.i.b43_dmacontroller_rx_reset.exit.i_crit_edge, label %if.else.1.i46.i.if.end27.1.i.i_crit_edge

if.else.1.i46.i.if.end27.1.i.i_crit_edge:         ; preds = %if.else.1.i46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.1.i.i

if.else.1.i46.i.b43_dmacontroller_rx_reset.exit.i_crit_edge: ; preds = %if.else.1.i46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %b43_dmacontroller_rx_reset.exit.i

if.then.1.i47.i:                                  ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %call.i.1.i45.i)
  %cmp19.1.i.i = icmp ult i32 %call.i.1.i45.i, 268435456
  br i1 %cmp19.1.i.i, label %if.then.1.i47.i.b43_dmacontroller_rx_reset.exit.i_crit_edge, label %if.then.1.i47.i.if.end27.1.i.i_crit_edge

if.then.1.i47.i.if.end27.1.i.i_crit_edge:         ; preds = %if.then.1.i47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.1.i.i

if.then.1.i47.i.b43_dmacontroller_rx_reset.exit.i_crit_edge: ; preds = %if.then.1.i47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %b43_dmacontroller_rx_reset.exit.i

if.end27.1.i.i:                                   ; preds = %if.then.1.i47.i.if.end27.1.i.i_crit_edge, %if.else.1.i46.i.if.end27.1.i.i_crit_edge
  tail call void @msleep(i32 noundef 1) #8
  %180 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %25, align 4
  %read32.i.2.i48.i = getelementptr inbounds %struct.b43_bus_dev, ptr %181, i32 0, i32 8
  %182 = ptrtoint ptr %read32.i.2.i48.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %read32.i.2.i48.i, align 4
  %call.i.2.i49.i = tail call i32 %183(ptr noundef %181, i16 noundef zeroext %add15.i.i) #8
  br i1 %cmp.i.i, label %if.then.2.i51.i, label %if.else.2.i50.i

if.else.2.i50.i:                                  ; preds = %if.end27.1.i.i
  %and22.2.i.i = and i32 %call.i.2.i49.i, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.2.i.i)
  %cmp23.2.i.i = icmp eq i32 %and22.2.i.i, 0
  br i1 %cmp23.2.i.i, label %if.else.2.i50.i.b43_dmacontroller_rx_reset.exit.i_crit_edge, label %if.else.2.i50.i.if.end27.2.i.i_crit_edge

if.else.2.i50.i.if.end27.2.i.i_crit_edge:         ; preds = %if.else.2.i50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.2.i.i

if.else.2.i50.i.b43_dmacontroller_rx_reset.exit.i_crit_edge: ; preds = %if.else.2.i50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %b43_dmacontroller_rx_reset.exit.i

if.then.2.i51.i:                                  ; preds = %if.end27.1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %call.i.2.i49.i)
  %cmp19.2.i.i = icmp ult i32 %call.i.2.i49.i, 268435456
  br i1 %cmp19.2.i.i, label %if.then.2.i51.i.b43_dmacontroller_rx_reset.exit.i_crit_edge, label %if.then.2.i51.i.if.end27.2.i.i_crit_edge

if.then.2.i51.i.if.end27.2.i.i_crit_edge:         ; preds = %if.then.2.i51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.2.i.i

if.then.2.i51.i.b43_dmacontroller_rx_reset.exit.i_crit_edge: ; preds = %if.then.2.i51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %b43_dmacontroller_rx_reset.exit.i

if.end27.2.i.i:                                   ; preds = %if.then.2.i51.i.if.end27.2.i.i_crit_edge, %if.else.2.i50.i.if.end27.2.i.i_crit_edge
  tail call void @msleep(i32 noundef 1) #8
  %184 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %25, align 4
  %read32.i.3.i52.i = getelementptr inbounds %struct.b43_bus_dev, ptr %185, i32 0, i32 8
  %186 = ptrtoint ptr %read32.i.3.i52.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %read32.i.3.i52.i, align 4
  %call.i.3.i53.i = tail call i32 %187(ptr noundef %185, i16 noundef zeroext %add15.i.i) #8
  br i1 %cmp.i.i, label %if.then.3.i55.i, label %if.else.3.i54.i

if.else.3.i54.i:                                  ; preds = %if.end27.2.i.i
  %and22.3.i.i = and i32 %call.i.3.i53.i, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.3.i.i)
  %cmp23.3.i.i = icmp eq i32 %and22.3.i.i, 0
  br i1 %cmp23.3.i.i, label %if.else.3.i54.i.b43_dmacontroller_rx_reset.exit.i_crit_edge, label %if.else.3.i54.i.if.end27.3.i.i_crit_edge

if.else.3.i54.i.if.end27.3.i.i_crit_edge:         ; preds = %if.else.3.i54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.3.i.i

if.else.3.i54.i.b43_dmacontroller_rx_reset.exit.i_crit_edge: ; preds = %if.else.3.i54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %b43_dmacontroller_rx_reset.exit.i

if.then.3.i55.i:                                  ; preds = %if.end27.2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %call.i.3.i53.i)
  %cmp19.3.i.i = icmp ult i32 %call.i.3.i53.i, 268435456
  br i1 %cmp19.3.i.i, label %if.then.3.i55.i.b43_dmacontroller_rx_reset.exit.i_crit_edge, label %if.then.3.i55.i.if.end27.3.i.i_crit_edge

if.then.3.i55.i.if.end27.3.i.i_crit_edge:         ; preds = %if.then.3.i55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.3.i.i

if.then.3.i55.i.b43_dmacontroller_rx_reset.exit.i_crit_edge: ; preds = %if.then.3.i55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %b43_dmacontroller_rx_reset.exit.i

if.end27.3.i.i:                                   ; preds = %if.then.3.i55.i.if.end27.3.i.i_crit_edge, %if.else.3.i54.i.if.end27.3.i.i_crit_edge
  tail call void @msleep(i32 noundef 1) #8
  %188 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %25, align 4
  %read32.i.4.i56.i = getelementptr inbounds %struct.b43_bus_dev, ptr %189, i32 0, i32 8
  %190 = ptrtoint ptr %read32.i.4.i56.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %read32.i.4.i56.i, align 4
  %call.i.4.i57.i = tail call i32 %191(ptr noundef %189, i16 noundef zeroext %add15.i.i) #8
  br i1 %cmp.i.i, label %if.then.4.i59.i, label %if.else.4.i58.i

if.else.4.i58.i:                                  ; preds = %if.end27.3.i.i
  %and22.4.i.i = and i32 %call.i.4.i57.i, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.4.i.i)
  %cmp23.4.i.i = icmp eq i32 %and22.4.i.i, 0
  br i1 %cmp23.4.i.i, label %if.else.4.i58.i.b43_dmacontroller_rx_reset.exit.i_crit_edge, label %if.else.4.i58.i.if.end27.4.i.i_crit_edge

if.else.4.i58.i.if.end27.4.i.i_crit_edge:         ; preds = %if.else.4.i58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.4.i.i

if.else.4.i58.i.b43_dmacontroller_rx_reset.exit.i_crit_edge: ; preds = %if.else.4.i58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %b43_dmacontroller_rx_reset.exit.i

if.then.4.i59.i:                                  ; preds = %if.end27.3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %call.i.4.i57.i)
  %cmp19.4.i.i = icmp ult i32 %call.i.4.i57.i, 268435456
  br i1 %cmp19.4.i.i, label %if.then.4.i59.i.b43_dmacontroller_rx_reset.exit.i_crit_edge, label %if.then.4.i59.i.if.end27.4.i.i_crit_edge

if.then.4.i59.i.if.end27.4.i.i_crit_edge:         ; preds = %if.then.4.i59.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.4.i.i

if.then.4.i59.i.b43_dmacontroller_rx_reset.exit.i_crit_edge: ; preds = %if.then.4.i59.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %b43_dmacontroller_rx_reset.exit.i

if.end27.4.i.i:                                   ; preds = %if.then.4.i59.i.if.end27.4.i.i_crit_edge, %if.else.4.i58.i.if.end27.4.i.i_crit_edge
  tail call void @msleep(i32 noundef 1) #8
  %192 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %25, align 4
  %read32.i.5.i60.i = getelementptr inbounds %struct.b43_bus_dev, ptr %193, i32 0, i32 8
  %194 = ptrtoint ptr %read32.i.5.i60.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %read32.i.5.i60.i, align 4
  %call.i.5.i61.i = tail call i32 %195(ptr noundef %193, i16 noundef zeroext %add15.i.i) #8
  br i1 %cmp.i.i, label %if.then.5.i63.i, label %if.else.5.i62.i

if.else.5.i62.i:                                  ; preds = %if.end27.4.i.i
  %and22.5.i.i = and i32 %call.i.5.i61.i, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.5.i.i)
  %cmp23.5.i.i = icmp eq i32 %and22.5.i.i, 0
  br i1 %cmp23.5.i.i, label %if.else.5.i62.i.b43_dmacontroller_rx_reset.exit.i_crit_edge, label %if.else.5.i62.i.if.end27.5.i.i_crit_edge

if.else.5.i62.i.if.end27.5.i.i_crit_edge:         ; preds = %if.else.5.i62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.5.i.i

if.else.5.i62.i.b43_dmacontroller_rx_reset.exit.i_crit_edge: ; preds = %if.else.5.i62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %b43_dmacontroller_rx_reset.exit.i

if.then.5.i63.i:                                  ; preds = %if.end27.4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %call.i.5.i61.i)
  %cmp19.5.i.i = icmp ult i32 %call.i.5.i61.i, 268435456
  br i1 %cmp19.5.i.i, label %if.then.5.i63.i.b43_dmacontroller_rx_reset.exit.i_crit_edge, label %if.then.5.i63.i.if.end27.5.i.i_crit_edge

if.then.5.i63.i.if.end27.5.i.i_crit_edge:         ; preds = %if.then.5.i63.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.5.i.i

if.then.5.i63.i.b43_dmacontroller_rx_reset.exit.i_crit_edge: ; preds = %if.then.5.i63.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %b43_dmacontroller_rx_reset.exit.i

if.end27.5.i.i:                                   ; preds = %if.then.5.i63.i.if.end27.5.i.i_crit_edge, %if.else.5.i62.i.if.end27.5.i.i_crit_edge
  tail call void @msleep(i32 noundef 1) #8
  %196 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %25, align 4
  %read32.i.6.i64.i = getelementptr inbounds %struct.b43_bus_dev, ptr %197, i32 0, i32 8
  %198 = ptrtoint ptr %read32.i.6.i64.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %read32.i.6.i64.i, align 4
  %call.i.6.i65.i = tail call i32 %199(ptr noundef %197, i16 noundef zeroext %add15.i.i) #8
  br i1 %cmp.i.i, label %if.then.6.i67.i, label %if.else.6.i66.i

if.else.6.i66.i:                                  ; preds = %if.end27.5.i.i
  %and22.6.i.i = and i32 %call.i.6.i65.i, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.6.i.i)
  %cmp23.6.i.i = icmp eq i32 %and22.6.i.i, 0
  br i1 %cmp23.6.i.i, label %if.else.6.i66.i.b43_dmacontroller_rx_reset.exit.i_crit_edge, label %if.else.6.i66.i.if.end27.6.i.i_crit_edge

if.else.6.i66.i.if.end27.6.i.i_crit_edge:         ; preds = %if.else.6.i66.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.6.i.i

if.else.6.i66.i.b43_dmacontroller_rx_reset.exit.i_crit_edge: ; preds = %if.else.6.i66.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %b43_dmacontroller_rx_reset.exit.i

if.then.6.i67.i:                                  ; preds = %if.end27.5.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %call.i.6.i65.i)
  %cmp19.6.i.i = icmp ult i32 %call.i.6.i65.i, 268435456
  br i1 %cmp19.6.i.i, label %if.then.6.i67.i.b43_dmacontroller_rx_reset.exit.i_crit_edge, label %if.then.6.i67.i.if.end27.6.i.i_crit_edge

if.then.6.i67.i.if.end27.6.i.i_crit_edge:         ; preds = %if.then.6.i67.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.6.i.i

if.then.6.i67.i.b43_dmacontroller_rx_reset.exit.i_crit_edge: ; preds = %if.then.6.i67.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %b43_dmacontroller_rx_reset.exit.i

if.end27.6.i.i:                                   ; preds = %if.then.6.i67.i.if.end27.6.i.i_crit_edge, %if.else.6.i66.i.if.end27.6.i.i_crit_edge
  tail call void @msleep(i32 noundef 1) #8
  %200 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %25, align 4
  %read32.i.7.i68.i = getelementptr inbounds %struct.b43_bus_dev, ptr %201, i32 0, i32 8
  %202 = ptrtoint ptr %read32.i.7.i68.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %read32.i.7.i68.i, align 4
  %call.i.7.i69.i = tail call i32 %203(ptr noundef %201, i16 noundef zeroext %add15.i.i) #8
  br i1 %cmp.i.i, label %if.then.7.i71.i, label %if.else.7.i70.i

if.else.7.i70.i:                                  ; preds = %if.end27.6.i.i
  %and22.7.i.i = and i32 %call.i.7.i69.i, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.7.i.i)
  %cmp23.7.i.i = icmp eq i32 %and22.7.i.i, 0
  br i1 %cmp23.7.i.i, label %if.else.7.i70.i.b43_dmacontroller_rx_reset.exit.i_crit_edge, label %if.else.7.i70.i.if.end27.7.i.i_crit_edge

if.else.7.i70.i.if.end27.7.i.i_crit_edge:         ; preds = %if.else.7.i70.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.7.i.i

if.else.7.i70.i.b43_dmacontroller_rx_reset.exit.i_crit_edge: ; preds = %if.else.7.i70.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %b43_dmacontroller_rx_reset.exit.i

if.then.7.i71.i:                                  ; preds = %if.end27.6.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %call.i.7.i69.i)
  %cmp19.7.i.i = icmp ult i32 %call.i.7.i69.i, 268435456
  br i1 %cmp19.7.i.i, label %if.then.7.i71.i.b43_dmacontroller_rx_reset.exit.i_crit_edge, label %if.then.7.i71.i.if.end27.7.i.i_crit_edge

if.then.7.i71.i.if.end27.7.i.i_crit_edge:         ; preds = %if.then.7.i71.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.7.i.i

if.then.7.i71.i.b43_dmacontroller_rx_reset.exit.i_crit_edge: ; preds = %if.then.7.i71.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %b43_dmacontroller_rx_reset.exit.i

if.end27.7.i.i:                                   ; preds = %if.then.7.i71.i.if.end27.7.i.i_crit_edge, %if.else.7.i70.i.if.end27.7.i.i_crit_edge
  tail call void @msleep(i32 noundef 1) #8
  %204 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %25, align 4
  %read32.i.8.i72.i = getelementptr inbounds %struct.b43_bus_dev, ptr %205, i32 0, i32 8
  %206 = ptrtoint ptr %read32.i.8.i72.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %read32.i.8.i72.i, align 4
  %call.i.8.i73.i = tail call i32 %207(ptr noundef %205, i16 noundef zeroext %add15.i.i) #8
  br i1 %cmp.i.i, label %if.then.8.i75.i, label %if.else.8.i74.i

if.else.8.i74.i:                                  ; preds = %if.end27.7.i.i
  %and22.8.i.i = and i32 %call.i.8.i73.i, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.8.i.i)
  %cmp23.8.i.i = icmp eq i32 %and22.8.i.i, 0
  br i1 %cmp23.8.i.i, label %if.else.8.i74.i.b43_dmacontroller_rx_reset.exit.i_crit_edge, label %if.else.8.i74.i.if.end27.8.i.i_crit_edge

if.else.8.i74.i.if.end27.8.i.i_crit_edge:         ; preds = %if.else.8.i74.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.8.i.i

if.else.8.i74.i.b43_dmacontroller_rx_reset.exit.i_crit_edge: ; preds = %if.else.8.i74.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %b43_dmacontroller_rx_reset.exit.i

if.then.8.i75.i:                                  ; preds = %if.end27.7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %call.i.8.i73.i)
  %cmp19.8.i.i = icmp ult i32 %call.i.8.i73.i, 268435456
  br i1 %cmp19.8.i.i, label %if.then.8.i75.i.b43_dmacontroller_rx_reset.exit.i_crit_edge, label %if.then.8.i75.i.if.end27.8.i.i_crit_edge

if.then.8.i75.i.if.end27.8.i.i_crit_edge:         ; preds = %if.then.8.i75.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.8.i.i

if.then.8.i75.i.b43_dmacontroller_rx_reset.exit.i_crit_edge: ; preds = %if.then.8.i75.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %b43_dmacontroller_rx_reset.exit.i

if.end27.8.i.i:                                   ; preds = %if.then.8.i75.i.if.end27.8.i.i_crit_edge, %if.else.8.i74.i.if.end27.8.i.i_crit_edge
  tail call void @msleep(i32 noundef 1) #8
  %208 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %25, align 4
  %read32.i.9.i76.i = getelementptr inbounds %struct.b43_bus_dev, ptr %209, i32 0, i32 8
  %210 = ptrtoint ptr %read32.i.9.i76.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %read32.i.9.i76.i, align 4
  %call.i.9.i77.i = tail call i32 %211(ptr noundef %209, i16 noundef zeroext %add15.i.i) #8
  br i1 %cmp.i.i, label %if.then.9.i79.i, label %if.else.9.i78.i

if.else.9.i78.i:                                  ; preds = %if.end27.8.i.i
  %and22.9.i.i = and i32 %call.i.9.i77.i, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.9.i.i)
  %cmp23.9.i.i = icmp eq i32 %and22.9.i.i, 0
  br i1 %cmp23.9.i.i, label %if.else.9.i78.i.b43_dmacontroller_rx_reset.exit.i_crit_edge, label %if.else.9.i78.i.if.end27.9.i.i_crit_edge

if.else.9.i78.i.if.end27.9.i.i_crit_edge:         ; preds = %if.else.9.i78.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.9.i.i

if.else.9.i78.i.b43_dmacontroller_rx_reset.exit.i_crit_edge: ; preds = %if.else.9.i78.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %b43_dmacontroller_rx_reset.exit.i

if.then.9.i79.i:                                  ; preds = %if.end27.8.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %call.i.9.i77.i)
  %cmp19.9.i.i = icmp ult i32 %call.i.9.i77.i, 268435456
  br i1 %cmp19.9.i.i, label %if.then.9.i79.i.b43_dmacontroller_rx_reset.exit.i_crit_edge, label %if.then.9.i79.i.if.end27.9.i.i_crit_edge

if.then.9.i79.i.if.end27.9.i.i_crit_edge:         ; preds = %if.then.9.i79.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.9.i.i

if.then.9.i79.i.b43_dmacontroller_rx_reset.exit.i_crit_edge: ; preds = %if.then.9.i79.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %b43_dmacontroller_rx_reset.exit.i

if.end27.9.i.i:                                   ; preds = %if.then.9.i79.i.if.end27.9.i.i_crit_edge, %if.else.9.i78.i.if.end27.9.i.i_crit_edge
  tail call void @msleep(i32 noundef 1) #8
  %wl.i80.i = getelementptr inbounds %struct.b43_wldev, ptr %25, i32 0, i32 1
  %212 = ptrtoint ptr %wl.i80.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %wl.i80.i, align 4
  tail call void (ptr, ptr, ...) @b43err(ptr noundef %213, ptr noundef nonnull @.str.22) #8
  br label %b43_dmacontroller_rx_reset.exit.i

b43_dmacontroller_rx_reset.exit.i:                ; preds = %if.end27.9.i.i, %if.then.9.i79.i.b43_dmacontroller_rx_reset.exit.i_crit_edge, %if.else.9.i78.i.b43_dmacontroller_rx_reset.exit.i_crit_edge, %if.then.8.i75.i.b43_dmacontroller_rx_reset.exit.i_crit_edge, %if.else.8.i74.i.b43_dmacontroller_rx_reset.exit.i_crit_edge, %if.then.7.i71.i.b43_dmacontroller_rx_reset.exit.i_crit_edge, %if.else.7.i70.i.b43_dmacontroller_rx_reset.exit.i_crit_edge, %if.then.6.i67.i.b43_dmacontroller_rx_reset.exit.i_crit_edge, %if.else.6.i66.i.b43_dmacontroller_rx_reset.exit.i_crit_edge, %if.then.5.i63.i.b43_dmacontroller_rx_reset.exit.i_crit_edge, %if.else.5.i62.i.b43_dmacontroller_rx_reset.exit.i_crit_edge, %if.then.4.i59.i.b43_dmacontroller_rx_reset.exit.i_crit_edge, %if.else.4.i58.i.b43_dmacontroller_rx_reset.exit.i_crit_edge, %if.then.3.i55.i.b43_dmacontroller_rx_reset.exit.i_crit_edge, %if.else.3.i54.i.b43_dmacontroller_rx_reset.exit.i_crit_edge, %if.then.2.i51.i.b43_dmacontroller_rx_reset.exit.i_crit_edge, %if.else.2.i50.i.b43_dmacontroller_rx_reset.exit.i_crit_edge, %if.then.1.i47.i.b43_dmacontroller_rx_reset.exit.i_crit_edge, %if.else.1.i46.i.b43_dmacontroller_rx_reset.exit.i_crit_edge, %if.else.i43.i.b43_dmacontroller_rx_reset.exit.i_crit_edge, %if.then.i42.i.b43_dmacontroller_rx_reset.exit.i_crit_edge
  %214 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %215)
  %cmp9.i = icmp eq i32 %215, 64
  %216 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %dev, align 8
  %218 = ptrtoint ptr %mmio_base5.i to i32
  call void @__asan_load2_noabort(i32 %218)
  %219 = load i16, ptr %mmio_base5.i, align 2
  br i1 %cmp9.i, label %if.then10.i, label %if.else11.i

if.then10.i:                                      ; preds = %b43_dmacontroller_rx_reset.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i83.i = add i16 %219, 40
  %220 = ptrtoint ptr %217 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %217, align 4
  %write32.i.i84.i = getelementptr inbounds %struct.b43_bus_dev, ptr %221, i32 0, i32 10
  %222 = ptrtoint ptr %write32.i.i84.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %write32.i.i84.i, align 4
  tail call void %223(ptr noundef %221, i16 noundef zeroext %add.i83.i, i32 noundef 0) #8
  %224 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %dev, align 8
  %226 = ptrtoint ptr %mmio_base5.i to i32
  call void @__asan_load2_noabort(i32 %226)
  %227 = load i16, ptr %mmio_base5.i, align 2
  %add.i87.i = add i16 %227, 44
  %228 = ptrtoint ptr %225 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %225, align 4
  %write32.i.i88.i = getelementptr inbounds %struct.b43_bus_dev, ptr %229, i32 0, i32 10
  %230 = ptrtoint ptr %write32.i.i88.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %write32.i.i88.i, align 4
  tail call void %231(ptr noundef %229, i16 noundef zeroext %add.i87.i, i32 noundef 0) #8
  br label %dmacontroller_cleanup.exit

if.else11.i:                                      ; preds = %b43_dmacontroller_rx_reset.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i91.i = add i16 %219, 20
  %232 = ptrtoint ptr %217 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %217, align 4
  %write32.i.i92.i = getelementptr inbounds %struct.b43_bus_dev, ptr %233, i32 0, i32 10
  %234 = ptrtoint ptr %write32.i.i92.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %write32.i.i92.i, align 4
  tail call void %235(ptr noundef %233, i16 noundef zeroext %add.i91.i, i32 noundef 0) #8
  br label %dmacontroller_cleanup.exit

dmacontroller_cleanup.exit:                       ; preds = %if.else11.i, %if.then10.i, %if.else.i1872, %if.then2.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %meta.i) #8
  %236 = ptrtoint ptr %meta.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store ptr inttoptr (i32 -1 to ptr), ptr %meta.i, align 4, !annotation !96
  %used_slots.i = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 6
  %237 = ptrtoint ptr %used_slots.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %used_slots.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %238)
  %tobool.not.i1873 = icmp eq i32 %238, 0
  br i1 %tobool.not.i1873, label %dmacontroller_cleanup.exit.free_all_descbuffers.exit_crit_edge, label %for.cond.preheader.i

dmacontroller_cleanup.exit.free_all_descbuffers.exit_crit_edge: ; preds = %dmacontroller_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_all_descbuffers.exit

for.cond.preheader.i:                             ; preds = %dmacontroller_cleanup.exit
  %239 = ptrtoint ptr %nr_slots to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %nr_slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %240)
  %cmp58.i = icmp sgt i32 %240, 0
  br i1 %cmp58.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.free_all_descbuffers.exit_crit_edge

for.cond.preheader.i.free_all_descbuffers.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_all_descbuffers.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %rx_buffersize.i = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 9
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.059.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %241 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %ring, align 8
  %243 = ptrtoint ptr %242 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %242, align 4
  %call.i = call ptr %244(ptr noundef nonnull %ring, i32 noundef %i.059.i, ptr noundef nonnull %meta.i) #8
  %245 = ptrtoint ptr %meta.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %meta.i, align 4
  %247 = ptrtoint ptr %246 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %246, align 4
  %magicptr.i = ptrtoint ptr %248 to i32
  %249 = zext i32 %magicptr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %249, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %magicptr.i, label %if.end36.i [
    i32 0, label %for.body.i.if.then7.i_crit_edge
    i32 -12, label %for.body.i.if.then7.i_crit_edge1977
  ], !prof !97

for.body.i.if.then7.i_crit_edge1977:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7.i

for.body.i.if.then7.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7.i

if.then7.i:                                       ; preds = %for.body.i.if.then7.i_crit_edge, %for.body.i.if.then7.i_crit_edge1977
  %250 = ptrtoint ptr %tx.i to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %tx.i, align 4, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %251)
  %tobool8.not.i = icmp eq i8 %251, 0
  br i1 %tobool8.not.i, label %do.end.i, label %if.then7.i.for.inc.i_crit_edge, !prof !98

if.then7.i.for.inc.i_crit_edge:                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

do.end.i:                                         ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 786, i32 noundef 9, ptr noundef null) #8
  br label %for.inc.i

if.end36.i:                                       ; preds = %for.body.i
  %252 = ptrtoint ptr %tx.i to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %tx.i, align 4, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %253)
  %tobool38.not.i = icmp eq i8 %253, 0
  %dmaaddr41.i = getelementptr inbounds %struct.b43_dmadesc_meta, ptr %246, i32 0, i32 1
  %254 = ptrtoint ptr %dmaaddr41.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %dmaaddr41.i, align 4
  br i1 %tobool38.not.i, label %if.else.i1875, label %if.then39.i

if.then39.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %248, i32 0, i32 6
  %256 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %len.i, align 4
  %258 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %dev, align 8
  %260 = ptrtoint ptr %259 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %259, align 4
  %dma_dev4.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %261, i32 0, i32 15
  %262 = ptrtoint ptr %dma_dev4.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %dma_dev4.i.i, align 4
  call void @dma_unmap_page_attrs(ptr noundef %263, i32 noundef %255, i32 noundef %257, i32 noundef 1, i32 noundef 0) #8
  br label %if.end42.i

if.else.i1875:                                    ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  %264 = ptrtoint ptr %rx_buffersize.i to i32
  call void @__asan_load2_noabort(i32 %264)
  %265 = load i16, ptr %rx_buffersize.i, align 4
  %conv.i = zext i16 %265 to i32
  %266 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %dev, align 8
  %268 = ptrtoint ptr %267 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %267, align 4
  %dma_dev4.i57.i = getelementptr inbounds %struct.b43_bus_dev, ptr %269, i32 0, i32 15
  %270 = ptrtoint ptr %dma_dev4.i57.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %dma_dev4.i57.i, align 4
  call void @dma_unmap_page_attrs(ptr noundef %271, i32 noundef %255, i32 noundef %conv.i, i32 noundef 2, i32 noundef 0) #8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.else.i1875, %if.then39.i
  %272 = ptrtoint ptr %meta.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %meta.i, align 4
  %274 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %273, align 4
  %tobool.not.i.i = icmp eq ptr %275, null
  br i1 %tobool.not.i.i, label %if.end42.i.for.inc.i_crit_edge, label %if.then.i.i1876

if.end42.i.for.inc.i_crit_edge:                   ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i.i1876:                                  ; preds = %if.end42.i
  %276 = ptrtoint ptr %tx.i to i32
  call void @__asan_load1_noabort(i32 %276)
  %277 = load i8, ptr %tx.i, align 4, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %277)
  %tobool1.not.i.i = icmp eq i8 %277, 0
  br i1 %tobool1.not.i.i, label %if.else.i.i1878, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %if.then.i.i1876
  call void @__sanitizer_cov_trace_pc() #10
  %278 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %dev, align 8
  %wl.i.i1877 = getelementptr inbounds %struct.b43_wldev, ptr %279, i32 0, i32 1
  %280 = ptrtoint ptr %wl.i.i1877 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %wl.i.i1877, align 4
  %hw.i.i = getelementptr inbounds %struct.b43_wl, ptr %281, i32 0, i32 1
  %282 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %hw.i.i, align 4
  call void @ieee80211_free_txskb(ptr noundef %283, ptr noundef nonnull %275) #8
  br label %if.end.i.i

if.else.i.i1878:                                  ; preds = %if.then.i.i1876
  call void @__sanitizer_cov_trace_pc() #10
  call void @__dev_kfree_skb_any(ptr noundef nonnull %275, i32 noundef 1) #8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i1878, %if.then2.i.i
  %284 = ptrtoint ptr %273 to i32
  call void @__asan_store4_noabort(i32 %284)
  store ptr null, ptr %273, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.i, %if.end42.i.for.inc.i_crit_edge, %do.end.i, %if.then7.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.059.i, 1
  %285 = ptrtoint ptr %nr_slots to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %nr_slots, align 4
  %cmp.i1879 = icmp slt i32 %inc.i, %286
  br i1 %cmp.i1879, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.free_all_descbuffers.exit_crit_edge

for.inc.i.free_all_descbuffers.exit_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_all_descbuffers.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

free_all_descbuffers.exit:                        ; preds = %for.inc.i.free_all_descbuffers.exit_crit_edge, %for.cond.preheader.i.free_all_descbuffers.exit_crit_edge, %dmacontroller_cleanup.exit.free_all_descbuffers.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %meta.i) #8
  %287 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %288)
  %cmp.i1880 = icmp eq i32 %288, 64
  %289 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %dev, align 8
  %291 = ptrtoint ptr %290 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %290, align 4
  %dma_dev.i = getelementptr inbounds %struct.b43_bus_dev, ptr %292, i32 0, i32 15
  %293 = ptrtoint ptr %dma_dev.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %dma_dev.i, align 4
  %conv2.i = select i1 %cmp.i1880, i32 8192, i32 4096
  %descbase.i = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 1
  %295 = ptrtoint ptr %descbase.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %descbase.i, align 4
  %dmabase.i = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 4
  %297 = ptrtoint ptr %dmabase.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %dmabase.i, align 8
  call void @dma_free_attrs(ptr noundef %294, i32 noundef %conv2.i, ptr noundef %296, i32 noundef %298, i32 noundef 0) #8
  %txhdr_cache = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 3
  %299 = ptrtoint ptr %txhdr_cache to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %txhdr_cache, align 4
  call void @kfree(ptr noundef %300) #8
  %meta = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 2
  %301 = ptrtoint ptr %meta to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %meta, align 8
  call void @kfree(ptr noundef %302) #8
  call void @kfree(ptr noundef nonnull %ring) #8
  br label %return

return:                                           ; preds = %free_all_descbuffers.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @b43_dma_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %4, label %entry.b43_engine_type.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb3.i
  ]

entry.b43_engine_type.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %b43_engine_type.exit

sw.bb.i:                                          ; preds = %entry
  %6 = getelementptr inbounds %struct.b43_bus_dev, ptr %2, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i.i, align 4
  %aread32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %aread32.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %aread32.i.i, align 4
  %call.i.i = tail call i32 %14(ptr noundef %8, i16 noundef zeroext 1280) #8
  %and.i = and i32 %call.i.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb.i.b43_engine_type.exit_crit_edge, label %sw.bb.i.cond.end_crit_edge

sw.bb.i.cond.end_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

sw.bb.i.b43_engine_type.exit_crit_edge:           ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %b43_engine_type.exit

sw.bb3.i:                                         ; preds = %entry
  %15 = getelementptr inbounds %struct.b43_bus_dev, ptr %2, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %read32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read32.i.i, align 4
  %call.i28.i = tail call i32 %21(ptr noundef %17, i16 noundef zeroext 3996) #8
  %and6.i = and i32 %call.i28.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %sw.bb3.i.b43_engine_type.exit_crit_edge, label %sw.bb3.i.cond.end_crit_edge

sw.bb3.i.cond.end_crit_edge:                      ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

sw.bb3.i.b43_engine_type.exit_crit_edge:          ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %b43_engine_type.exit

b43_engine_type.exit:                             ; preds = %sw.bb3.i.b43_engine_type.exit_crit_edge, %sw.bb.i.b43_engine_type.exit_crit_edge, %entry.b43_engine_type.exit_crit_edge
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  %write32.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %23, i32 0, i32 10
  %24 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write32.i.i, align 4
  tail call void %25(ptr noundef %23, i16 noundef zeroext 512, i32 noundef 196608) #8
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %read32.i29.i = getelementptr inbounds %struct.b43_bus_dev, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %read32.i29.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read32.i29.i, align 4
  %call.i30.i = tail call i32 %29(ptr noundef %27, i16 noundef zeroext 512) #8
  %and16.i = and i32 %call.i30.i, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  %..i = select i1 %tobool17.not.i, i32 30, i32 32
  %sh_prom = zext i32 %..i to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %sub = xor i64 %notmask, -1
  br label %cond.end

cond.end:                                         ; preds = %b43_engine_type.exit, %sw.bb3.i.cond.end_crit_edge, %sw.bb.i.cond.end_crit_edge
  %cmp164 = phi i1 [ false, %b43_engine_type.exit ], [ true, %sw.bb.i.cond.end_crit_edge ], [ true, %sw.bb3.i.cond.end_crit_edge ]
  %retval.0.i163 = phi i32 [ %..i, %b43_engine_type.exit ], [ 64, %sw.bb.i.cond.end_crit_edge ], [ 64, %sw.bb3.i.cond.end_crit_edge ]
  %cond = phi i64 [ %sub, %b43_engine_type.exit ], [ -1, %sw.bb.i.cond.end_crit_edge ], [ -1, %sw.bb3.i.cond.end_crit_edge ]
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn = load ptr, ptr %dev, align 4
  %.in = getelementptr inbounds %struct.b43_bus_dev, ptr %.pn, i32 0, i32 15
  %31 = ptrtoint ptr %.in to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %.in, align 4
  %call.i = tail call i32 @dma_set_mask(ptr noundef %32, i64 noundef %cond) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %wl = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %33 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %wl, align 4
  tail call void (ptr, ptr, ...) @b43err(ptr noundef %34, ptr noundef nonnull @.str.6, i32 noundef %retval.0.i163) #8
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %32, i64 noundef %cond) #8
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %38, label %if.end.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %40 = getelementptr inbounds %struct.b43_bus_dev, ptr %36, i32 0, i32 1
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %call5 = tail call i32 @bcma_core_dma_translation(ptr noundef %42) #8
  br label %sw.epilog.sink.split

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %43 = getelementptr inbounds %struct.b43_bus_dev, ptr %36, i32 0, i32 1
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %call8 = tail call i32 @ssb_dma_translation(ptr noundef %45) #8
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb6, %sw.bb
  %call8.sink = phi i32 [ %call8, %sw.bb6 ], [ %call5, %sw.bb ]
  %translation9 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11, i32 0, i32 6
  %46 = ptrtoint ptr %translation9 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call8.sink, ptr %translation9, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end.sw.epilog_crit_edge
  br i1 %cmp164, label %if.end.i, label %sw.epilog.b43_dma_translation_in_low_word.exit_crit_edge

sw.epilog.b43_dma_translation_in_low_word.exit_crit_edge: ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %b43_dma_translation_in_low_word.exit

if.end.i:                                         ; preds = %sw.epilog
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp2.i = icmp eq i32 %50, 1
  br i1 %cmp2.i, label %land.lhs.true.i, label %if.end.i.if.end12.i_crit_edge

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %51 = getelementptr inbounds %struct.b43_bus_dev, ptr %48, i32 0, i32 1
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %bus.i = getelementptr inbounds %struct.ssb_device, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bus.i, align 4
  %bustype.i = getelementptr inbounds %struct.ssb_bus, ptr %55, i32 0, i32 5
  %56 = ptrtoint ptr %bustype.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %bustype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %57)
  %cmp4.i = icmp eq i32 %57, 1
  br i1 %cmp4.i, label %land.lhs.true5.i, label %land.lhs.true.i.if.end12.i_crit_edge

land.lhs.true.i.if.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %58 = getelementptr inbounds %struct.ssb_bus, ptr %55, i32 0, i32 6
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %pcie_cap.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %60, i32 0, i32 19
  %61 = ptrtoint ptr %pcie_cap.i.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %pcie_cap.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.i.not.i = icmp eq i8 %62, 0
  br i1 %tobool.i.not.i, label %land.lhs.true5.i.b43_dma_translation_in_low_word.exit_crit_edge, label %land.lhs.true8.i

land.lhs.true5.i.b43_dma_translation_in_low_word.exit_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %b43_dma_translation_in_low_word.exit

land.lhs.true8.i:                                 ; preds = %land.lhs.true5.i
  %63 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %53, align 4
  %read32.i.i155 = getelementptr inbounds %struct.ssb_bus_ops, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %read32.i.i155 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %read32.i.i155, align 4
  %call.i.i156 = tail call i32 %66(ptr noundef %53, i16 noundef zeroext 3996) #8
  %and.i157 = and i32 %call.i.i156, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i157)
  %tobool.not.i158 = icmp eq i32 %and.i157, 0
  br i1 %tobool.not.i158, label %land.lhs.true8.i.b43_dma_translation_in_low_word.exit_crit_edge, label %land.lhs.true8.i.if.end12.i_crit_edge

land.lhs.true8.i.if.end12.i_crit_edge:            ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

land.lhs.true8.i.b43_dma_translation_in_low_word.exit_crit_edge: ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %b43_dma_translation_in_low_word.exit

if.end12.i:                                       ; preds = %land.lhs.true8.i.if.end12.i_crit_edge, %land.lhs.true.i.if.end12.i_crit_edge, %if.end.i.if.end12.i_crit_edge
  br label %b43_dma_translation_in_low_word.exit

b43_dma_translation_in_low_word.exit:             ; preds = %if.end12.i, %land.lhs.true8.i.b43_dma_translation_in_low_word.exit_crit_edge, %land.lhs.true5.i.b43_dma_translation_in_low_word.exit_crit_edge, %sw.epilog.b43_dma_translation_in_low_word.exit_crit_edge
  %retval.0.i159 = phi i1 [ false, %if.end12.i ], [ true, %sw.epilog.b43_dma_translation_in_low_word.exit_crit_edge ], [ true, %land.lhs.true8.i.b43_dma_translation_in_low_word.exit_crit_edge ], [ true, %land.lhs.true5.i.b43_dma_translation_in_low_word.exit_crit_edge ]
  %translation_in_low = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11, i32 0, i32 7
  %frombool = zext i1 %retval.0.i159 to i8
  %67 = ptrtoint ptr %translation_in_low to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %frombool, ptr %translation_in_low, align 4
  %parity = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11, i32 0, i32 8
  %68 = ptrtoint ptr %parity to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %parity, align 1
  %69 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp13 = icmp ne i32 %72, 0
  %spec.store.select = zext i1 %cmp13 to i8
  %73 = ptrtoint ptr %parity to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %spec.store.select, ptr %parity, align 1
  %call17 = tail call fastcc ptr @b43_setup_dmaring(ptr noundef %dev, i32 noundef 0, i32 noundef 1, i32 noundef %retval.0.i163)
  %74 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call17, ptr %0, align 4
  %tobool19.not = icmp eq ptr %call17, null
  br i1 %tobool19.not, label %b43_dma_translation_in_low_word.exit.cleanup_crit_edge, label %if.end21

b43_dma_translation_in_low_word.exit.cleanup_crit_edge: ; preds = %b43_dma_translation_in_low_word.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end21:                                         ; preds = %b43_dma_translation_in_low_word.exit
  %call22 = tail call fastcc ptr @b43_setup_dmaring(ptr noundef %dev, i32 noundef 1, i32 noundef 1, i32 noundef %retval.0.i163)
  %tx_ring_AC_BE = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11, i32 0, i32 1
  %75 = ptrtoint ptr %tx_ring_AC_BE to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call22, ptr %tx_ring_AC_BE, align 4
  %tobool24.not = icmp eq ptr %call22, null
  br i1 %tobool24.not, label %if.end21.do.body92_crit_edge, label %if.end26

if.end21.do.body92_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body92

if.end26:                                         ; preds = %if.end21
  %call27 = tail call fastcc ptr @b43_setup_dmaring(ptr noundef %dev, i32 noundef 2, i32 noundef 1, i32 noundef %retval.0.i163)
  %tx_ring_AC_VI = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11, i32 0, i32 2
  %76 = ptrtoint ptr %tx_ring_AC_VI to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call27, ptr %tx_ring_AC_VI, align 4
  %tobool29.not = icmp eq ptr %call27, null
  br i1 %tobool29.not, label %if.end26.do.body87_crit_edge, label %if.end31

if.end26.do.body87_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body87

if.end31:                                         ; preds = %if.end26
  %call32 = tail call fastcc ptr @b43_setup_dmaring(ptr noundef %dev, i32 noundef 3, i32 noundef 1, i32 noundef %retval.0.i163)
  %tx_ring_AC_VO = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11, i32 0, i32 3
  %77 = ptrtoint ptr %tx_ring_AC_VO to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call32, ptr %tx_ring_AC_VO, align 4
  %tobool34.not = icmp eq ptr %call32, null
  br i1 %tobool34.not, label %if.end31.do.body82_crit_edge, label %if.end36

if.end31.do.body82_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body82

if.end36:                                         ; preds = %if.end31
  %call37 = tail call fastcc ptr @b43_setup_dmaring(ptr noundef %dev, i32 noundef 4, i32 noundef 1, i32 noundef %retval.0.i163)
  %tx_ring_mcast = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11, i32 0, i32 4
  %78 = ptrtoint ptr %tx_ring_mcast to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call37, ptr %tx_ring_mcast, align 4
  %tobool39.not = icmp eq ptr %call37, null
  br i1 %tobool39.not, label %if.end36.do.body77_crit_edge, label %if.end41

if.end36.do.body77_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body77

if.end41:                                         ; preds = %if.end36
  %call42 = tail call fastcc ptr @b43_setup_dmaring(ptr noundef %dev, i32 noundef 0, i32 noundef 0, i32 noundef %retval.0.i163)
  %rx_ring = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11, i32 0, i32 5
  %79 = ptrtoint ptr %rx_ring to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call42, ptr %rx_ring, align 4
  %tobool44.not = icmp eq ptr %call42, null
  br i1 %tobool44.not, label %do.body72, label %if.end46

if.end46:                                         ; preds = %if.end41
  %80 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev, align 4
  %core_rev = getelementptr inbounds %struct.b43_bus_dev, ptr %81, i32 0, i32 25
  %82 = ptrtoint ptr %core_rev to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %core_rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %83)
  %cmp48 = icmp ult i8 %83, 5
  br i1 %cmp48, label %do.end, label %if.end46.if.end64_crit_edge, !prof !98

if.end46.if.end64_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

do.end:                                           ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1114, i32 noundef 9, ptr noundef null) #8
  br label %if.end64

if.end64:                                         ; preds = %do.end, %if.end46.if.end64_crit_edge
  %wl71 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %84 = ptrtoint ptr %wl71 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %wl71, align 4
  tail call void (ptr, ptr, ...) @b43dbg(ptr noundef %85, ptr noundef nonnull @.str.8, i32 noundef %retval.0.i163) #8
  br label %cleanup

do.body72:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  %86 = ptrtoint ptr %tx_ring_mcast to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %tx_ring_mcast, align 4
  tail call fastcc void @b43_destroy_dmaring(ptr noundef %87, ptr noundef nonnull @.str.5)
  %88 = ptrtoint ptr %tx_ring_mcast to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr null, ptr %tx_ring_mcast, align 4
  br label %do.body77

do.body77:                                        ; preds = %do.body72, %if.end36.do.body77_crit_edge
  %89 = ptrtoint ptr %tx_ring_AC_VO to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %tx_ring_AC_VO, align 4
  tail call fastcc void @b43_destroy_dmaring(ptr noundef %90, ptr noundef nonnull @.str.4)
  %91 = ptrtoint ptr %tx_ring_AC_VO to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr null, ptr %tx_ring_AC_VO, align 4
  br label %do.body82

do.body82:                                        ; preds = %do.body77, %if.end31.do.body82_crit_edge
  %92 = ptrtoint ptr %tx_ring_AC_VI to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %tx_ring_AC_VI, align 4
  tail call fastcc void @b43_destroy_dmaring(ptr noundef %93, ptr noundef nonnull @.str.3)
  %94 = ptrtoint ptr %tx_ring_AC_VI to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr null, ptr %tx_ring_AC_VI, align 4
  br label %do.body87

do.body87:                                        ; preds = %do.body82, %if.end26.do.body87_crit_edge
  %95 = ptrtoint ptr %tx_ring_AC_BE to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %tx_ring_AC_BE, align 4
  tail call fastcc void @b43_destroy_dmaring(ptr noundef %96, ptr noundef nonnull @.str.2)
  %97 = ptrtoint ptr %tx_ring_AC_BE to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr null, ptr %tx_ring_AC_BE, align 4
  br label %do.body92

do.body92:                                        ; preds = %do.body87, %if.end21.do.body92_crit_edge
  %98 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %0, align 4
  tail call fastcc void @b43_destroy_dmaring(ptr noundef %99, ptr noundef nonnull @.str.1)
  %100 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr null, ptr %0, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body92, %if.end64, %b43_dma_translation_in_low_word.exit.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call.i, %if.then ], [ -12, %do.body92 ], [ 0, %if.end64 ], [ -12, %b43_dma_translation_in_low_word.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_core_dma_translation(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssb_dma_translation(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @b43_setup_dmaring(ptr noundef %dev, i32 noundef %controller_index, i32 noundef %for_tx, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  %meta.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 96) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %nr_slots = getelementptr inbounds %struct.b43_dmaring, ptr %call7.i.i, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %for_tx)
  %tobool1.not = icmp eq i32 %for_tx, 0
  %1 = ptrtoint ptr %nr_slots to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 256, ptr %nr_slots, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 3072) #12
  %meta = getelementptr inbounds %struct.b43_dmaring, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %meta to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i.i, ptr %meta, align 8
  %tobool8.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool8.not, label %if.end.err_kfree_ring_crit_edge, label %for.cond.preheader

if.end.err_kfree_ring_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_kfree_ring

for.cond.preheader:                               ; preds = %if.end
  %4 = ptrtoint ptr %nr_slots to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp328 = icmp sgt i32 %5, 0
  br i1 %cmp328, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0329 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %6 = ptrtoint ptr %meta to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %meta, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -12 to ptr), ptr %7, align 4
  %inc = add nuw nsw i32 %i.0329, 1
  %9 = ptrtoint ptr %nr_slots to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr_slots, align 4
  %cmp = icmp slt i32 %inc, %10
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %type14 = getelementptr inbounds %struct.b43_dmaring, ptr %call7.i.i, i32 0, i32 13
  %11 = ptrtoint ptr %type14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %type, ptr %type14, align 8
  %dev15 = getelementptr inbounds %struct.b43_dmaring, ptr %call7.i.i, i32 0, i32 16
  %12 = ptrtoint ptr %dev15 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev, ptr %dev15, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %type)
  %cmp.i = icmp eq i32 %type, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %controller_index)
  %cmp2.i = icmp ugt i32 %controller_index, 5
  br i1 %cmp2.i, label %return.sink.split.i, label %for.end.b43_dmacontroller_base.exit_crit_edge, !prof !98

for.end.b43_dmacontroller_base.exit_crit_edge:    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %b43_dmacontroller_base.exit

return.sink.split.i:                              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %..i = select i1 %cmp.i, i32 338, i32 342
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef %..i, i32 noundef 9, ptr noundef null) #8
  br label %b43_dmacontroller_base.exit

b43_dmacontroller_base.exit:                      ; preds = %return.sink.split.i, %for.end.b43_dmacontroller_base.exit_crit_edge
  %b43_dmacontroller_base.map64.b43_dmacontroller_base.map32.i = select i1 %cmp.i, ptr @b43_dmacontroller_base.map64, ptr @b43_dmacontroller_base.map32
  %retval.0.in.i = getelementptr [6 x i16], ptr %b43_dmacontroller_base.map64.b43_dmacontroller_base.map32.i, i32 0, i32 %controller_index
  %13 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %retval.0.i = load i16, ptr %retval.0.in.i, align 2
  %mmio_base = getelementptr inbounds %struct.b43_dmaring, ptr %call7.i.i, i32 0, i32 10
  %14 = ptrtoint ptr %mmio_base to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %retval.0.i, ptr %mmio_base, align 2
  %index = getelementptr inbounds %struct.b43_dmaring, ptr %call7.i.i, i32 0, i32 11
  %15 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %controller_index, ptr %index, align 8
  %dma64_ops.dma32_ops = select i1 %cmp.i, ptr @dma64_ops, ptr @dma32_ops
  %16 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %dma64_ops.dma32_ops, ptr %call7.i.i, align 8
  br i1 %tobool1.not, label %if.else23, label %if.then22

if.then22:                                        ; preds = %b43_dmacontroller_base.exit
  %tx = getelementptr inbounds %struct.b43_dmaring, ptr %call7.i.i, i32 0, i32 12
  %17 = ptrtoint ptr %tx to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %tx, align 4
  %current_slot = getelementptr inbounds %struct.b43_dmaring, ptr %call7.i.i, i32 0, i32 7
  %18 = ptrtoint ptr %current_slot to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %current_slot, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %last_injected_overflow.c170 = getelementptr inbounds %struct.b43_dmaring, ptr %call7.i.i, i32 0, i32 18
  %20 = ptrtoint ptr %last_injected_overflow.c170 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %last_injected_overflow.c170, align 8
  %21 = ptrtoint ptr %nr_slots to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nr_slots, align 4
  %div = sdiv i32 %22, 2
  %hdr_format.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 24, i32 6
  %23 = ptrtoint ptr %hdr_format.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hdr_format.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %24)
  %25 = icmp ult i32 %24, 3
  br i1 %25, label %switch.lookup, label %if.then22.b43_txhdr_size.exit_crit_edge

if.then22.b43_txhdr_size.exit_crit_edge:          ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %b43_txhdr_size.exit

switch.lookup:                                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.b43_setup_dmaring, i32 0, i32 %24
  %26 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %26)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %b43_txhdr_size.exit

b43_txhdr_size.exit:                              ; preds = %switch.lookup, %if.then22.b43_txhdr_size.exit_crit_edge
  %retval.0.i171 = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.then22.b43_txhdr_size.exit_crit_edge ]
  %27 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %div, i32 %retval.0.i171) #8
  %28 = extractvalue { i32, i1 } %27, 1
  br i1 %28, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !98

kcalloc.exit.thread:                              ; preds = %b43_txhdr_size.exit
  call void @__sanitizer_cov_trace_pc() #10
  %txhdr_cache306 = getelementptr inbounds %struct.b43_dmaring, ptr %call7.i.i, i32 0, i32 3
  %29 = ptrtoint ptr %txhdr_cache306 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %txhdr_cache306, align 4
  br label %err_kfree_meta

if.end7.i.i:                                      ; preds = %b43_txhdr_size.exit
  %30 = extractvalue { i32, i1 } %27, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %30, i32 noundef 3520) #13
  %txhdr_cache = getelementptr inbounds %struct.b43_dmaring, ptr %call7.i.i, i32 0, i32 3
  %31 = ptrtoint ptr %txhdr_cache to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call8.i.i, ptr %txhdr_cache, align 4
  %tobool59.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool59.not, label %if.end7.i.i.err_kfree_meta_crit_edge, label %if.end61

if.end7.i.i.err_kfree_meta_crit_edge:             ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_kfree_meta

if.else23:                                        ; preds = %b43_dmacontroller_base.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %controller_index)
  %cmp25 = icmp eq i32 %controller_index, 0
  br i1 %cmp25, label %if.then26, label %do.end

if.then26:                                        ; preds = %if.else23
  %hdr_format = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 24, i32 6
  %32 = ptrtoint ptr %hdr_format to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %hdr_format, align 4
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %33, label %if.end92.critedge164 [
    i32 0, label %sw.bb
    i32 1, label %if.then26.sw.bb27_crit_edge
    i32 2, label %if.then26.sw.bb27_crit_edge353
  ]

if.then26.sw.bb27_crit_edge353:                   ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb27

if.then26.sw.bb27_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb27

sw.bb:                                            ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  %rx_buffersize = getelementptr inbounds %struct.b43_dmaring, ptr %call7.i.i, i32 0, i32 9
  %35 = ptrtoint ptr %rx_buffersize to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 2390, ptr %rx_buffersize, align 4
  %frameoffset = getelementptr inbounds %struct.b43_dmaring, ptr %call7.i.i, i32 0, i32 8
  %36 = ptrtoint ptr %frameoffset to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 38, ptr %frameoffset, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %37 = load volatile i32, ptr @jiffies, align 128
  %last_injected_overflow.c169 = getelementptr inbounds %struct.b43_dmaring, ptr %call7.i.i, i32 0, i32 18
  %38 = ptrtoint ptr %last_injected_overflow.c169 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %last_injected_overflow.c169, align 8
  br label %if.end92

sw.bb27:                                          ; preds = %if.then26.sw.bb27_crit_edge, %if.then26.sw.bb27_crit_edge353
  %rx_buffersize28 = getelementptr inbounds %struct.b43_dmaring, ptr %call7.i.i, i32 0, i32 9
  %39 = ptrtoint ptr %rx_buffersize28 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 2382, ptr %rx_buffersize28, align 4
  %frameoffset29 = getelementptr inbounds %struct.b43_dmaring, ptr %call7.i.i, i32 0, i32 8
  %40 = ptrtoint ptr %frameoffset29 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 30, ptr %frameoffset29, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %last_injected_overflow.c167 = getelementptr inbounds %struct.b43_dmaring, ptr %call7.i.i, i32 0, i32 18
  %42 = ptrtoint ptr %last_injected_overflow.c167 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %last_injected_overflow.c167, align 8
  br label %if.end92

do.end:                                           ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 881, i32 noundef 9, ptr noundef null) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %43 = load volatile i32, ptr @jiffies, align 128
  %last_injected_overflow.c = getelementptr inbounds %struct.b43_dmaring, ptr %call7.i.i, i32 0, i32 18
  %44 = ptrtoint ptr %last_injected_overflow.c to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %last_injected_overflow.c, align 8
  br label %if.end92

if.end61:                                         ; preds = %if.end7.i.i
  %45 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev, align 4
  %dma_dev = getelementptr inbounds %struct.b43_bus_dev, ptr %46, i32 0, i32 15
  %47 = ptrtoint ptr %dma_dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dma_dev, align 4
  %49 = ptrtoint ptr %hdr_format.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %hdr_format.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %50)
  %51 = icmp ult i32 %50, 3
  br i1 %51, label %switch.lookup333, label %if.end61.b43_txhdr_size.exit178_crit_edge

if.end61.b43_txhdr_size.exit178_crit_edge:        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %b43_txhdr_size.exit178

switch.lookup333:                                 ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep334 = getelementptr inbounds [3 x i32], ptr @switch.table.b43_setup_dmaring.36, i32 0, i32 %50
  %52 = ptrtoint ptr %switch.gep334 to i32
  call void @__asan_load4_noabort(i32 %52)
  %switch.load335 = load i32, ptr %switch.gep334, align 4
  br label %b43_txhdr_size.exit178

b43_txhdr_size.exit178:                           ; preds = %switch.lookup333, %if.end61.b43_txhdr_size.exit178_crit_edge
  %retval.0.i177 = phi i32 [ %switch.load335, %switch.lookup333 ], [ 0, %if.end61.b43_txhdr_size.exit178_crit_edge ]
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call8.i.i) #8
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %b43_txhdr_size.exit178
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !94

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %48) #8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %48, i32 0, i32 3
  %53 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %54, null
  br i1 %tobool.not.i.i, label %if.end.i.i179, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i

if.end.i.i179:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %48, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i179, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i180 = phi ptr [ %56, %if.end.i.i179 ], [ %54, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.25, ptr noundef %call16.i, ptr noundef %retval.0.i.i180) #8
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %b43_txhdr_size.exit178
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @debug_dma_map_single(ptr noundef %48, ptr noundef nonnull %call8.i.i, i32 noundef %retval.0.i177) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %57 = load ptr, ptr @mem_map, align 4
  %58 = ptrtoint ptr %call8.i.i to i32
  %sub.i = add i32 %58, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %57, i32 %shr.i
  %and.i = and i32 %58, 3968
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %48, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %retval.0.i177, i32 noundef 1, i32 noundef 0) #8
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i181 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %59 = ptrtoint ptr %hdr_format.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %hdr_format.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %60)
  %61 = icmp ult i32 %60, 3
  br i1 %61, label %switch.lookup336, label %dma_map_single_attrs.exit.b43_txhdr_size.exit187_crit_edge

dma_map_single_attrs.exit.b43_txhdr_size.exit187_crit_edge: ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %b43_txhdr_size.exit187

switch.lookup336:                                 ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep337 = getelementptr inbounds [3 x i32], ptr @switch.table.b43_setup_dmaring.37, i32 0, i32 %60
  %62 = ptrtoint ptr %switch.gep337 to i32
  call void @__asan_load4_noabort(i32 %62)
  %switch.load338 = load i32, ptr %switch.gep337, align 4
  br label %b43_txhdr_size.exit187

b43_txhdr_size.exit187:                           ; preds = %switch.lookup336, %dma_map_single_attrs.exit.b43_txhdr_size.exit187_crit_edge
  %retval.0.i186 = phi i32 [ %switch.load338, %switch.lookup336 ], [ 0, %dma_map_single_attrs.exit.b43_txhdr_size.exit187_crit_edge ]
  %63 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev15, align 8
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %dma_dev.i = getelementptr inbounds %struct.b43_bus_dev, ptr %66, i32 0, i32 15
  %67 = ptrtoint ptr %dma_dev.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dma_dev.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %68, i32 noundef %retval.0.i181) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i181)
  %cmp.i.not.i = icmp eq i32 %retval.0.i181, -1
  br i1 %cmp.i.not.i, label %b43_txhdr_size.exit187.if.then68_crit_edge, label %if.end.i, !prof !98

b43_txhdr_size.exit187.if.then68_crit_edge:       ; preds = %b43_txhdr_size.exit187
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then68

if.end.i:                                         ; preds = %b43_txhdr_size.exit187
  %69 = ptrtoint ptr %type14 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %type14, align 8
  %71 = zext i32 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %70, label %if.end.i.if.end88_crit_edge [
    i32 30, label %sw.bb.i
    i32 32, label %sw.bb8.i
  ]

if.end.i.if.end88_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

sw.bb.i:                                          ; preds = %if.end.i
  %conv.i = zext i32 %retval.0.i181 to i64
  %conv4.i = zext i32 %retval.0.i186 to i64
  %add.i = add nuw nsw i64 %conv4.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 1073741824, i64 %add.i)
  %cmp.i188 = icmp ugt i64 %add.i, 1073741824
  br i1 %cmp.i188, label %sw.bb.i.address_error.i_crit_edge, label %sw.bb.i.if.end88_crit_edge

sw.bb.i.if.end88_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

sw.bb.i.address_error.i_crit_edge:                ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %address_error.i

sw.bb8.i:                                         ; preds = %if.end.i
  %conv9.i = zext i32 %retval.0.i181 to i64
  %conv10.i = zext i32 %retval.0.i186 to i64
  %add11.i = add nuw nsw i64 %conv10.i, %conv9.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add11.i)
  %cmp12.i = icmp ugt i64 %add11.i, 4294967296
  br i1 %cmp12.i, label %sw.bb8.i.address_error.i_crit_edge, label %sw.bb8.i.if.end88_crit_edge

sw.bb8.i.if.end88_crit_edge:                      ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

sw.bb8.i.address_error.i_crit_edge:               ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %address_error.i

address_error.i:                                  ; preds = %sw.bb8.i.address_error.i_crit_edge, %sw.bb.i.address_error.i_crit_edge
  %72 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev15, align 8
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 4
  %dma_dev4.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %75, i32 0, i32 15
  %76 = ptrtoint ptr %dma_dev4.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dma_dev4.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %77, i32 noundef %retval.0.i181, i32 noundef %retval.0.i186, i32 noundef 1, i32 noundef 0) #8
  br label %if.then68

if.then68:                                        ; preds = %address_error.i, %b43_txhdr_size.exit187.if.then68_crit_edge
  %78 = ptrtoint ptr %txhdr_cache to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %txhdr_cache, align 4
  tail call void @kfree(ptr noundef %79) #8
  %80 = ptrtoint ptr %nr_slots to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %nr_slots, align 4
  %div71 = sdiv i32 %81, 2
  %82 = ptrtoint ptr %hdr_format.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %hdr_format.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %83)
  %84 = icmp ult i32 %83, 3
  br i1 %84, label %switch.lookup339, label %if.then68.b43_txhdr_size.exit195_crit_edge

if.then68.b43_txhdr_size.exit195_crit_edge:       ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  br label %b43_txhdr_size.exit195

switch.lookup339:                                 ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep340 = getelementptr inbounds [3 x i32], ptr @switch.table.b43_setup_dmaring.38, i32 0, i32 %83
  %85 = ptrtoint ptr %switch.gep340 to i32
  call void @__asan_load4_noabort(i32 %85)
  %switch.load341 = load i32, ptr %switch.gep340, align 4
  br label %b43_txhdr_size.exit195

b43_txhdr_size.exit195:                           ; preds = %switch.lookup339, %if.then68.b43_txhdr_size.exit195_crit_edge
  %retval.0.i194 = phi i32 [ %switch.load341, %switch.lookup339 ], [ 0, %if.then68.b43_txhdr_size.exit195_crit_edge ]
  %86 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %div71, i32 %retval.0.i194) #8
  %87 = extractvalue { i32, i1 } %86, 1
  br i1 %87, label %kcalloc.exit229.thread, label %if.end7.i.i227, !prof !98

kcalloc.exit229.thread:                           ; preds = %b43_txhdr_size.exit195
  call void @__sanitizer_cov_trace_pc() #10
  %88 = ptrtoint ptr %txhdr_cache to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr null, ptr %txhdr_cache, align 4
  br label %err_kfree_meta

if.end7.i.i227:                                   ; preds = %b43_txhdr_size.exit195
  %89 = extractvalue { i32, i1 } %86, 0
  %call8.i.i226 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %89, i32 noundef 3521) #13
  %90 = ptrtoint ptr %txhdr_cache to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call8.i.i226, ptr %txhdr_cache, align 4
  %tobool76.not = icmp eq ptr %call8.i.i226, null
  br i1 %tobool76.not, label %if.end7.i.i227.err_kfree_meta_crit_edge, label %if.end78

if.end7.i.i227.err_kfree_meta_crit_edge:          ; preds = %if.end7.i.i227
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_kfree_meta

if.end78:                                         ; preds = %if.end7.i.i227
  %91 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev, align 4
  %dma_dev80 = getelementptr inbounds %struct.b43_bus_dev, ptr %92, i32 0, i32 15
  %93 = ptrtoint ptr %dma_dev80 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dma_dev80, align 4
  %95 = ptrtoint ptr %hdr_format.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %hdr_format.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %96)
  %97 = icmp ult i32 %96, 3
  br i1 %97, label %switch.lookup342, label %if.end78.b43_txhdr_size.exit235_crit_edge

if.end78.b43_txhdr_size.exit235_crit_edge:        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %b43_txhdr_size.exit235

switch.lookup342:                                 ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep343 = getelementptr inbounds [3 x i32], ptr @switch.table.b43_setup_dmaring.39, i32 0, i32 %96
  %98 = ptrtoint ptr %switch.gep343 to i32
  call void @__asan_load4_noabort(i32 %98)
  %switch.load344 = load i32, ptr %switch.gep343, align 4
  br label %b43_txhdr_size.exit235

b43_txhdr_size.exit235:                           ; preds = %switch.lookup342, %if.end78.b43_txhdr_size.exit235_crit_edge
  %retval.0.i234 = phi i32 [ %switch.load344, %switch.lookup342 ], [ 0, %if.end78.b43_txhdr_size.exit235_crit_edge ]
  %call.i236 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call8.i.i226) #8
  br i1 %call.i236, label %land.rhs.i238, label %if.end39.i251

land.rhs.i238:                                    ; preds = %b43_txhdr_size.exit235
  %.b1.i237 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i237, label %land.rhs.i238.dma_map_single_attrs.exit253_crit_edge, label %if.then.i242, !prof !94

land.rhs.i238.dma_map_single_attrs.exit253_crit_edge: ; preds = %land.rhs.i238
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_map_single_attrs.exit253

if.then.i242:                                     ; preds = %land.rhs.i238
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i239 = tail call ptr @dev_driver_string(ptr noundef %94) #8
  %init_name.i.i240 = getelementptr inbounds %struct.device, ptr %94, i32 0, i32 3
  %99 = ptrtoint ptr %init_name.i.i240 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %init_name.i.i240, align 8
  %tobool.not.i.i241 = icmp eq ptr %100, null
  br i1 %tobool.not.i.i241, label %if.end.i.i243, label %if.then.i242.dev_name.exit.i245_crit_edge

if.then.i242.dev_name.exit.i245_crit_edge:        ; preds = %if.then.i242
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i245

if.end.i.i243:                                    ; preds = %if.then.i242
  call void @__sanitizer_cov_trace_pc() #10
  %101 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %94, align 4
  br label %dev_name.exit.i245

dev_name.exit.i245:                               ; preds = %if.end.i.i243, %if.then.i242.dev_name.exit.i245_crit_edge
  %retval.0.i.i244 = phi ptr [ %102, %if.end.i.i243 ], [ %100, %if.then.i242.dev_name.exit.i245_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.25, ptr noundef %call16.i239, ptr noundef %retval.0.i.i244) #8
  br label %dma_map_single_attrs.exit253

if.end39.i251:                                    ; preds = %b43_txhdr_size.exit235
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @debug_dma_map_single(ptr noundef %94, ptr noundef nonnull %call8.i.i226, i32 noundef %retval.0.i234) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %103 = load ptr, ptr @mem_map, align 4
  %104 = ptrtoint ptr %call8.i.i226 to i32
  %sub.i246 = add i32 %104, 1073741824
  %shr.i247 = lshr i32 %sub.i246, 12
  %add.ptr.i248 = getelementptr %struct.page, ptr %103, i32 %shr.i247
  %and.i249 = and i32 %104, 3968
  %call41.i250 = tail call i32 @dma_map_page_attrs(ptr noundef %94, ptr noundef %add.ptr.i248, i32 noundef %and.i249, i32 noundef %retval.0.i234, i32 noundef 1, i32 noundef 0) #8
  br label %dma_map_single_attrs.exit253

dma_map_single_attrs.exit253:                     ; preds = %if.end39.i251, %dev_name.exit.i245, %land.rhs.i238.dma_map_single_attrs.exit253_crit_edge
  %retval.0.i252 = phi i32 [ %call41.i250, %if.end39.i251 ], [ -1, %dev_name.exit.i245 ], [ -1, %land.rhs.i238.dma_map_single_attrs.exit253_crit_edge ]
  %105 = ptrtoint ptr %hdr_format.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %hdr_format.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %106)
  %107 = icmp ult i32 %106, 3
  br i1 %107, label %switch.lookup345, label %dma_map_single_attrs.exit253.b43_txhdr_size.exit259_crit_edge

dma_map_single_attrs.exit253.b43_txhdr_size.exit259_crit_edge: ; preds = %dma_map_single_attrs.exit253
  call void @__sanitizer_cov_trace_pc() #10
  br label %b43_txhdr_size.exit259

switch.lookup345:                                 ; preds = %dma_map_single_attrs.exit253
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep346 = getelementptr inbounds [3 x i32], ptr @switch.table.b43_setup_dmaring.40, i32 0, i32 %106
  %108 = ptrtoint ptr %switch.gep346 to i32
  call void @__asan_load4_noabort(i32 %108)
  %switch.load347 = load i32, ptr %switch.gep346, align 4
  br label %b43_txhdr_size.exit259

b43_txhdr_size.exit259:                           ; preds = %switch.lookup345, %dma_map_single_attrs.exit253.b43_txhdr_size.exit259_crit_edge
  %retval.0.i258 = phi i32 [ %switch.load347, %switch.lookup345 ], [ 0, %dma_map_single_attrs.exit253.b43_txhdr_size.exit259_crit_edge ]
  %109 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev15, align 8
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %110, align 4
  %dma_dev.i261 = getelementptr inbounds %struct.b43_bus_dev, ptr %112, i32 0, i32 15
  %113 = ptrtoint ptr %dma_dev.i261 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dma_dev.i261, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %114, i32 noundef %retval.0.i252) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i252)
  %cmp.i.not.i262 = icmp eq i32 %retval.0.i252, -1
  br i1 %cmp.i.not.i262, label %b43_txhdr_size.exit259.if.then86_crit_edge, label %if.end.i264, !prof !98

b43_txhdr_size.exit259.if.then86_crit_edge:       ; preds = %b43_txhdr_size.exit259
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then86

if.end.i264:                                      ; preds = %b43_txhdr_size.exit259
  %115 = ptrtoint ptr %type14 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %type14, align 8
  %117 = zext i32 %116 to i64
  call void @__sanitizer_cov_trace_switch(i64 %117, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %116, label %if.end.i264.if.end88_crit_edge [
    i32 30, label %sw.bb.i269
    i32 32, label %sw.bb8.i274
  ]

if.end.i264.if.end88_crit_edge:                   ; preds = %if.end.i264
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

sw.bb.i269:                                       ; preds = %if.end.i264
  %conv.i265 = zext i32 %retval.0.i252 to i64
  %conv4.i266 = zext i32 %retval.0.i258 to i64
  %add.i267 = add nuw nsw i64 %conv4.i266, %conv.i265
  call void @__sanitizer_cov_trace_const_cmp8(i64 1073741824, i64 %add.i267)
  %cmp.i268 = icmp ugt i64 %add.i267, 1073741824
  br i1 %cmp.i268, label %sw.bb.i269.address_error.i276_crit_edge, label %sw.bb.i269.if.end88_crit_edge

sw.bb.i269.if.end88_crit_edge:                    ; preds = %sw.bb.i269
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

sw.bb.i269.address_error.i276_crit_edge:          ; preds = %sw.bb.i269
  call void @__sanitizer_cov_trace_pc() #10
  br label %address_error.i276

sw.bb8.i274:                                      ; preds = %if.end.i264
  %conv9.i270 = zext i32 %retval.0.i252 to i64
  %conv10.i271 = zext i32 %retval.0.i258 to i64
  %add11.i272 = add nuw nsw i64 %conv10.i271, %conv9.i270
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add11.i272)
  %cmp12.i273 = icmp ugt i64 %add11.i272, 4294967296
  br i1 %cmp12.i273, label %sw.bb8.i274.address_error.i276_crit_edge, label %sw.bb8.i274.if.end88_crit_edge

sw.bb8.i274.if.end88_crit_edge:                   ; preds = %sw.bb8.i274
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

sw.bb8.i274.address_error.i276_crit_edge:         ; preds = %sw.bb8.i274
  call void @__sanitizer_cov_trace_pc() #10
  br label %address_error.i276

address_error.i276:                               ; preds = %sw.bb8.i274.address_error.i276_crit_edge, %sw.bb.i269.address_error.i276_crit_edge
  %118 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev15, align 8
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %119, align 4
  %dma_dev4.i.i275 = getelementptr inbounds %struct.b43_bus_dev, ptr %121, i32 0, i32 15
  %122 = ptrtoint ptr %dma_dev4.i.i275 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dma_dev4.i.i275, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %123, i32 noundef %retval.0.i252, i32 noundef %retval.0.i258, i32 noundef 1, i32 noundef 0) #8
  br label %if.then86

if.then86:                                        ; preds = %address_error.i276, %b43_txhdr_size.exit259.if.then86_crit_edge
  %wl = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %124 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %wl, align 4
  tail call void (ptr, ptr, ...) @b43err(ptr noundef %125, ptr noundef nonnull @.str.23) #8
  br label %err_kfree_txhdr_cache

if.end88:                                         ; preds = %sw.bb8.i274.if.end88_crit_edge, %sw.bb.i269.if.end88_crit_edge, %if.end.i264.if.end88_crit_edge, %sw.bb8.i.if.end88_crit_edge, %sw.bb.i.if.end88_crit_edge, %if.end.i.if.end88_crit_edge
  %dma_test.0 = phi i32 [ %retval.0.i181, %sw.bb8.i.if.end88_crit_edge ], [ %retval.0.i181, %sw.bb.i.if.end88_crit_edge ], [ %retval.0.i181, %if.end.i.if.end88_crit_edge ], [ %retval.0.i252, %sw.bb8.i274.if.end88_crit_edge ], [ %retval.0.i252, %sw.bb.i269.if.end88_crit_edge ], [ %retval.0.i252, %if.end.i264.if.end88_crit_edge ]
  %126 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dev, align 4
  %dma_dev90 = getelementptr inbounds %struct.b43_bus_dev, ptr %127, i32 0, i32 15
  %128 = ptrtoint ptr %dma_dev90 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dma_dev90, align 4
  %130 = ptrtoint ptr %hdr_format.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %hdr_format.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %131)
  %132 = icmp ult i32 %131, 3
  br i1 %132, label %switch.lookup348, label %if.end88.b43_txhdr_size.exit284_crit_edge

if.end88.b43_txhdr_size.exit284_crit_edge:        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  br label %b43_txhdr_size.exit284

switch.lookup348:                                 ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep349 = getelementptr inbounds [3 x i32], ptr @switch.table.b43_setup_dmaring.41, i32 0, i32 %131
  %133 = ptrtoint ptr %switch.gep349 to i32
  call void @__asan_load4_noabort(i32 %133)
  %switch.load350 = load i32, ptr %switch.gep349, align 4
  br label %b43_txhdr_size.exit284

b43_txhdr_size.exit284:                           ; preds = %switch.lookup348, %if.end88.b43_txhdr_size.exit284_crit_edge
  %retval.0.i283 = phi i32 [ %switch.load350, %switch.lookup348 ], [ 0, %if.end88.b43_txhdr_size.exit284_crit_edge ]
  tail call void @dma_unmap_page_attrs(ptr noundef %129, i32 noundef %dma_test.0, i32 noundef %retval.0.i283, i32 noundef 1, i32 noundef 0) #8
  br label %if.end92

if.end92.critedge164:                             ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %134 = load volatile i32, ptr @jiffies, align 128
  %last_injected_overflow.c165 = getelementptr inbounds %struct.b43_dmaring, ptr %call7.i.i, i32 0, i32 18
  %135 = ptrtoint ptr %last_injected_overflow.c165 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %last_injected_overflow.c165, align 8
  br label %if.end92

if.end92:                                         ; preds = %if.end92.critedge164, %b43_txhdr_size.exit284, %do.end, %sw.bb27, %sw.bb
  %136 = ptrtoint ptr %type14 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %type14, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %137)
  %cmp.i286 = icmp eq i32 %137, 64
  %138 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dev15, align 8
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %139, align 4
  %dma_dev.i288 = getelementptr inbounds %struct.b43_bus_dev, ptr %141, i32 0, i32 15
  %142 = ptrtoint ptr %dma_dev.i288 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dma_dev.i288, align 4
  %conv2.i = select i1 %cmp.i286, i32 8192, i32 4096
  %dmabase.i = getelementptr inbounds %struct.b43_dmaring, ptr %call7.i.i, i32 0, i32 4
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %143, i32 noundef %conv2.i, ptr noundef %dmabase.i, i32 noundef 3264, i32 noundef 0) #8
  %descbase.i = getelementptr inbounds %struct.b43_dmaring, ptr %call7.i.i, i32 0, i32 1
  %144 = ptrtoint ptr %descbase.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %call.i.i, ptr %descbase.i, align 4
  %tobool.not.i.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.not, label %if.end92.err_kfree_txhdr_cache_crit_edge, label %if.end96

if.end92.err_kfree_txhdr_cache_crit_edge:         ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_kfree_txhdr_cache

if.end96:                                         ; preds = %if.end92
  %145 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %dev15, align 8
  %parity1.i = getelementptr inbounds %struct.b43_wldev, ptr %146, i32 0, i32 11, i32 0, i32 8
  %147 = ptrtoint ptr %parity1.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %parity1.i, align 1, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %tobool.not.i291 = icmp eq i8 %148, 0
  %tx.i = getelementptr inbounds %struct.b43_dmaring, ptr %call7.i.i, i32 0, i32 12
  %149 = ptrtoint ptr %tx.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %tx.i, align 4, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %tobool2.not.i = icmp eq i8 %150, 0
  br i1 %tobool2.not.i, label %if.else29.i, label %if.then.i295

if.then.i295:                                     ; preds = %if.end96
  %151 = ptrtoint ptr %type14 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %type14, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %152)
  %cmp.i293 = icmp eq i32 %152, 64
  %153 = ptrtoint ptr %dmabase.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %dmabase.i, align 8
  %translation_in_low12.i.i = getelementptr inbounds %struct.b43_wldev, ptr %146, i32 0, i32 11, i32 0, i32 7
  %155 = ptrtoint ptr %translation_in_low12.i.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %translation_in_low12.i.i, align 4, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %156)
  %tobool13.not.i.i = icmp eq i8 %156, 0
  br i1 %cmp.i293, label %if.then3.i, label %if.else.i

if.then3.i:                                       ; preds = %if.then.i295
  br i1 %tobool13.not.i.i, label %if.then6.i.i, label %b43_dma_address.exit.i

b43_dma_address.exit.i:                           ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  %and1.i.i = and i32 %154, 1073741823
  %translation.i.i = getelementptr inbounds %struct.b43_wldev, ptr %146, i32 0, i32 11, i32 0, i32 6
  %157 = ptrtoint ptr %translation.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %translation.i.i, align 4
  %or.i.i = or i32 %158, %and1.i.i
  br label %b43_dma_address.exit148.i

if.then6.i.i:                                     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  %translation8.i.i = getelementptr inbounds %struct.b43_wldev, ptr %146, i32 0, i32 11, i32 0, i32 6
  %159 = ptrtoint ptr %translation8.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %translation8.i.i, align 4
  br label %b43_dma_address.exit148.i

b43_dma_address.exit148.i:                        ; preds = %if.then6.i.i, %b43_dma_address.exit.i
  %addr.1.i240.i = phi i32 [ %or.i.i, %b43_dma_address.exit.i ], [ %154, %if.then6.i.i ]
  %addr.1.i147.i = phi i32 [ 0, %b43_dma_address.exit.i ], [ %160, %if.then6.i.i ]
  %161 = lshr i32 %154, 14
  %phi.bo34.i.op.i = and i32 %161, 196608
  %shl.i = select i1 %tobool13.not.i.i, i32 0, i32 %phi.bo34.i.op.i
  %spec.select.v.i = select i1 %tobool.not.i291, i32 2049, i32 1
  %spec.select.i = or i32 %shl.i, %spec.select.v.i
  %162 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %mmio_base, align 2
  %164 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %146, align 4
  %write32.i.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %165, i32 0, i32 10
  %166 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %167(ptr noundef %165, i16 noundef zeroext %163, i32 noundef %spec.select.i) #8
  %168 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %dev15, align 8
  %170 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %mmio_base, align 2
  %add.i.i = add i16 %171, 8
  %172 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %169, align 4
  %write32.i.i151.i = getelementptr inbounds %struct.b43_bus_dev, ptr %173, i32 0, i32 10
  %174 = ptrtoint ptr %write32.i.i151.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %write32.i.i151.i, align 4
  tail call void %175(ptr noundef %173, i16 noundef zeroext %add.i.i, i32 noundef %addr.1.i240.i) #8
  %176 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %dev15, align 8
  %178 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %mmio_base, align 2
  %add.i154.i = add i16 %179, 12
  %180 = ptrtoint ptr %177 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %177, align 4
  %write32.i.i155.i = getelementptr inbounds %struct.b43_bus_dev, ptr %181, i32 0, i32 10
  %182 = ptrtoint ptr %write32.i.i155.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %write32.i.i155.i, align 4
  tail call void %183(ptr noundef %181, i16 noundef zeroext %add.i154.i, i32 noundef %addr.1.i147.i) #8
  br label %out

if.else.i:                                        ; preds = %if.then.i295
  br i1 %tobool13.not.i.i, label %if.else.i.b43_dma_address.exit168.i_crit_edge, label %if.then.i166.i

if.else.i.b43_dma_address.exit168.i_crit_edge:    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %b43_dma_address.exit168.i

if.then.i166.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %and1.i163.i = and i32 %154, 1073741823
  %translation.i164.i = getelementptr inbounds %struct.b43_wldev, ptr %146, i32 0, i32 11, i32 0, i32 6
  %184 = ptrtoint ptr %translation.i164.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %translation.i164.i, align 4
  %or.i165.i = or i32 %185, %and1.i163.i
  br label %b43_dma_address.exit168.i

b43_dma_address.exit168.i:                        ; preds = %if.then.i166.i, %if.else.i.b43_dma_address.exit168.i_crit_edge
  %addr.1.i167.i = phi i32 [ %or.i165.i, %if.then.i166.i ], [ %154, %if.else.i.b43_dma_address.exit168.i_crit_edge ]
  %186 = lshr i32 %154, 14
  %phi.bo34.i158.op.i = and i32 %186, 196608
  %shl21.i = select i1 %tobool13.not.i.i, i32 0, i32 %phi.bo34.i158.op.i
  %spec.select144.v.i = select i1 %tobool.not.i291, i32 2049, i32 1
  %spec.select144.i = or i32 %shl21.i, %spec.select144.v.i
  %187 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %mmio_base, align 2
  %189 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %146, align 4
  %write32.i.i171.i = getelementptr inbounds %struct.b43_bus_dev, ptr %190, i32 0, i32 10
  %191 = ptrtoint ptr %write32.i.i171.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %write32.i.i171.i, align 4
  tail call void %192(ptr noundef %190, i16 noundef zeroext %188, i32 noundef %spec.select144.i) #8
  %193 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %dev15, align 8
  %195 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load2_noabort(i32 %195)
  %196 = load i16, ptr %mmio_base, align 2
  %add.i174.i = add i16 %196, 4
  %197 = ptrtoint ptr %194 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %194, align 4
  %write32.i.i175.i = getelementptr inbounds %struct.b43_bus_dev, ptr %198, i32 0, i32 10
  %199 = ptrtoint ptr %write32.i.i175.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %write32.i.i175.i, align 4
  tail call void %200(ptr noundef %198, i16 noundef zeroext %add.i174.i, i32 noundef %addr.1.i167.i) #8
  br label %out

if.else29.i:                                      ; preds = %if.end96
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %meta.i.i) #8
  %201 = ptrtoint ptr %meta.i.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr inttoptr (i32 -1 to ptr), ptr %meta.i.i, align 4, !annotation !96
  %202 = ptrtoint ptr %nr_slots to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %nr_slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %203)
  %cmp31.i.i = icmp sgt i32 %203, 0
  br i1 %cmp31.i.i, label %if.else29.i.for.body.i.i_crit_edge, label %if.else29.i.alloc_initial_descbuffers.exit.thread.i_crit_edge

if.else29.i.alloc_initial_descbuffers.exit.thread.i_crit_edge: ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %alloc_initial_descbuffers.exit.thread.i

if.else29.i.for.body.i.i_crit_edge:               ; preds = %if.else29.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.else29.i.for.body.i.i_crit_edge
  %i.032.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.else29.i.for.body.i.i_crit_edge ]
  %204 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %call7.i.i, align 8
  %206 = ptrtoint ptr %205 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %205, align 4
  %call.i.i296 = call ptr %207(ptr noundef %call7.i.i, i32 noundef %i.032.i.i, ptr noundef nonnull %meta.i.i) #8
  %208 = ptrtoint ptr %meta.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %meta.i.i, align 4
  %call1.i.i = call fastcc i32 @setup_rx_descbuffer(ptr noundef %call7.i.i, ptr noundef %call.i.i296, ptr noundef %209, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i176.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i176.i, label %for.inc.i.i, label %if.then.i178.i

if.then.i178.i:                                   ; preds = %for.body.i.i
  %210 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %dev15, align 8
  %wl.i.i = getelementptr inbounds %struct.b43_wldev, ptr %211, i32 0, i32 1
  %212 = ptrtoint ptr %wl.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %wl.i.i, align 4
  call void (ptr, ptr, ...) @b43err(ptr noundef %213, ptr noundef nonnull @.str.26) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.032.i.i)
  %cmp434.not.i.i = icmp eq i32 %i.032.i.i, 0
  br i1 %cmp434.not.i.i, label %dmacontroller_setup.exit.thread324, label %for.body5.lr.ph.i.i

dmacontroller_setup.exit.thread324:               ; preds = %if.then.i178.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %meta.i.i) #8
  br label %err_free_ringmemory

for.body5.lr.ph.i.i:                              ; preds = %if.then.i178.i
  %rx_buffersize.i.i = getelementptr inbounds %struct.b43_dmaring, ptr %call7.i.i, i32 0, i32 9
  br label %for.body5.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.032.i.i, 1
  %214 = ptrtoint ptr %nr_slots to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %nr_slots, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %215
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.alloc_initial_descbuffers.exit.thread.i_crit_edge

for.inc.i.i.alloc_initial_descbuffers.exit.thread.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %alloc_initial_descbuffers.exit.thread.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

alloc_initial_descbuffers.exit.thread.i:          ; preds = %for.inc.i.i.alloc_initial_descbuffers.exit.thread.i_crit_edge, %if.else29.i.alloc_initial_descbuffers.exit.thread.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  call void @arm_heavy_mb() #8
  %216 = ptrtoint ptr %nr_slots to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %nr_slots, align 4
  %used_slots.i.i = getelementptr inbounds %struct.b43_dmaring, ptr %call7.i.i, i32 0, i32 6
  %218 = ptrtoint ptr %used_slots.i.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 %217, ptr %used_slots.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %meta.i.i) #8
  %219 = ptrtoint ptr %type14 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %type14, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %220)
  %cmp35.i = icmp eq i32 %220, 64
  %221 = ptrtoint ptr %dmabase.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %dmabase.i, align 8
  %223 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %dev15, align 8
  %translation_in_low12.i179.i = getelementptr inbounds %struct.b43_wldev, ptr %224, i32 0, i32 11, i32 0, i32 7
  %225 = ptrtoint ptr %translation_in_low12.i179.i to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %translation_in_low12.i179.i, align 4, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %226)
  %tobool13.not.i180.i = icmp eq i8 %226, 0
  br i1 %cmp35.i, label %if.then37.i, label %if.else59.i

for.body5.i.i:                                    ; preds = %for.body5.i.i.for.body5.i.i_crit_edge, %for.body5.lr.ph.i.i
  %i.135.in.i.i = phi i32 [ %i.032.i.i, %for.body5.lr.ph.i.i ], [ %i.135.i.i, %for.body5.i.i.for.body5.i.i_crit_edge ]
  %i.135.i.i = add nsw i32 %i.135.in.i.i, -1
  %227 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %call7.i.i, align 8
  %229 = ptrtoint ptr %228 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %228, align 4
  %call8.i.i297 = call ptr %230(ptr noundef %call7.i.i, i32 noundef %i.135.i.i, ptr noundef nonnull %meta.i.i) #8
  %231 = ptrtoint ptr %meta.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %meta.i.i, align 4
  %dmaaddr.i.i = getelementptr inbounds %struct.b43_dmadesc_meta, ptr %232, i32 0, i32 1
  %233 = ptrtoint ptr %dmaaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %dmaaddr.i.i, align 4
  %235 = ptrtoint ptr %rx_buffersize.i.i to i32
  call void @__asan_load2_noabort(i32 %235)
  %236 = load i16, ptr %rx_buffersize.i.i, align 4
  %conv.i.i = zext i16 %236 to i32
  %237 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %dev15, align 8
  %239 = ptrtoint ptr %238 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %238, align 4
  %dma_dev4.i.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %240, i32 0, i32 15
  %241 = ptrtoint ptr %dma_dev4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %dma_dev4.i.i.i, align 4
  call void @dma_unmap_page_attrs(ptr noundef %242, i32 noundef %234, i32 noundef %conv.i.i, i32 noundef 2, i32 noundef 0) #8
  %243 = ptrtoint ptr %meta.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %meta.i.i, align 4
  %245 = ptrtoint ptr %244 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %244, align 4
  call void @consume_skb(ptr noundef %246) #8
  %cmp4.i.i = icmp sgt i32 %i.135.in.i.i, 1
  br i1 %cmp4.i.i, label %for.body5.i.i.for.body5.i.i_crit_edge, label %dmacontroller_setup.exit

for.body5.i.i.for.body5.i.i_crit_edge:            ; preds = %for.body5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body5.i.i

if.then37.i:                                      ; preds = %alloc_initial_descbuffers.exit.thread.i
  br i1 %tobool13.not.i180.i, label %if.then6.i195.i, label %b43_dma_address.exit191.i

b43_dma_address.exit191.i:                        ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #10
  %and1.i186.i = and i32 %222, 1073741823
  %translation.i187.i = getelementptr inbounds %struct.b43_wldev, ptr %224, i32 0, i32 11, i32 0, i32 6
  %247 = ptrtoint ptr %translation.i187.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %translation.i187.i, align 4
  %or.i188.i = or i32 %248, %and1.i186.i
  br label %b43_dma_address.exit197.i

if.then6.i195.i:                                  ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #10
  %translation8.i194.i = getelementptr inbounds %struct.b43_wldev, ptr %224, i32 0, i32 11, i32 0, i32 6
  %249 = ptrtoint ptr %translation8.i194.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %translation8.i194.i, align 4
  br label %b43_dma_address.exit197.i

b43_dma_address.exit197.i:                        ; preds = %if.then6.i195.i, %b43_dma_address.exit191.i
  %addr.1.i190248.i = phi i32 [ %or.i188.i, %b43_dma_address.exit191.i ], [ %222, %if.then6.i195.i ]
  %addr.1.i196.i = phi i32 [ 0, %b43_dma_address.exit191.i ], [ %250, %if.then6.i195.i ]
  %frameoffset.i = getelementptr inbounds %struct.b43_dmaring, ptr %call7.i.i, i32 0, i32 8
  %251 = ptrtoint ptr %frameoffset.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %frameoffset.i, align 8
  %shl50.i = shl i32 %252, 1
  %253 = lshr i32 %222, 14
  %phi.bo34.i181.op.i = and i32 %253, 196608
  %shl52.i = select i1 %tobool13.not.i180.i, i32 0, i32 %phi.bo34.i181.op.i
  %spec.select145.v.i = select i1 %tobool.not.i291, i32 2049, i32 1
  %or51.i = or i32 %shl52.i, %spec.select145.v.i
  %spec.select145.i = or i32 %or51.i, %shl50.i
  %254 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load2_noabort(i32 %254)
  %255 = load i16, ptr %mmio_base, align 2
  %add.i200.i = add i16 %255, 32
  %256 = ptrtoint ptr %224 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %224, align 4
  %write32.i.i201.i = getelementptr inbounds %struct.b43_bus_dev, ptr %257, i32 0, i32 10
  %258 = ptrtoint ptr %write32.i.i201.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %write32.i.i201.i, align 4
  call void %259(ptr noundef %257, i16 noundef zeroext %add.i200.i, i32 noundef %spec.select145.i) #8
  %260 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %dev15, align 8
  %262 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load2_noabort(i32 %262)
  %263 = load i16, ptr %mmio_base, align 2
  %add.i204.i = add i16 %263, 40
  %264 = ptrtoint ptr %261 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %261, align 4
  %write32.i.i205.i = getelementptr inbounds %struct.b43_bus_dev, ptr %265, i32 0, i32 10
  %266 = ptrtoint ptr %write32.i.i205.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %write32.i.i205.i, align 4
  call void %267(ptr noundef %265, i16 noundef zeroext %add.i204.i, i32 noundef %addr.1.i190248.i) #8
  %268 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %dev15, align 8
  %270 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load2_noabort(i32 %270)
  %271 = load i16, ptr %mmio_base, align 2
  %add.i208.i = add i16 %271, 44
  %272 = ptrtoint ptr %269 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %269, align 4
  %write32.i.i209.i = getelementptr inbounds %struct.b43_bus_dev, ptr %273, i32 0, i32 10
  %274 = ptrtoint ptr %write32.i.i209.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %write32.i.i209.i, align 4
  call void %275(ptr noundef %273, i16 noundef zeroext %add.i208.i, i32 noundef %addr.1.i196.i) #8
  %276 = ptrtoint ptr %nr_slots to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %nr_slots, align 4
  %mul.i = shl i32 %277, 4
  %278 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %dev15, align 8
  %280 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load2_noabort(i32 %280)
  %281 = load i16, ptr %mmio_base, align 2
  %add.i212.i = add i16 %281, 36
  %282 = ptrtoint ptr %279 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %279, align 4
  %write32.i.i213.i = getelementptr inbounds %struct.b43_bus_dev, ptr %283, i32 0, i32 10
  %284 = ptrtoint ptr %write32.i.i213.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %write32.i.i213.i, align 4
  call void %285(ptr noundef %283, i16 noundef zeroext %add.i212.i, i32 noundef %mul.i) #8
  br label %out

if.else59.i:                                      ; preds = %alloc_initial_descbuffers.exit.thread.i
  br i1 %tobool13.not.i180.i, label %if.else59.i.b43_dma_address.exit226.i_crit_edge, label %if.then.i224.i

if.else59.i.b43_dma_address.exit226.i_crit_edge:  ; preds = %if.else59.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %b43_dma_address.exit226.i

if.then.i224.i:                                   ; preds = %if.else59.i
  call void @__sanitizer_cov_trace_pc() #10
  %and1.i221.i = and i32 %222, 1073741823
  %translation.i222.i = getelementptr inbounds %struct.b43_wldev, ptr %224, i32 0, i32 11, i32 0, i32 6
  %286 = ptrtoint ptr %translation.i222.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %translation.i222.i, align 4
  %or.i223.i = or i32 %287, %and1.i221.i
  br label %b43_dma_address.exit226.i

b43_dma_address.exit226.i:                        ; preds = %if.then.i224.i, %if.else59.i.b43_dma_address.exit226.i_crit_edge
  %addr.1.i225.i = phi i32 [ %or.i223.i, %if.then.i224.i ], [ %222, %if.else59.i.b43_dma_address.exit226.i_crit_edge ]
  %frameoffset66.i = getelementptr inbounds %struct.b43_dmaring, ptr %call7.i.i, i32 0, i32 8
  %288 = ptrtoint ptr %frameoffset66.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %frameoffset66.i, align 8
  %shl67.i = shl i32 %289, 1
  %290 = lshr i32 %222, 14
  %phi.bo34.i216.op.i = and i32 %290, 196608
  %shl69.i = select i1 %tobool13.not.i180.i, i32 0, i32 %phi.bo34.i216.op.i
  %spec.select146.v.i = select i1 %tobool.not.i291, i32 2049, i32 1
  %or68.i = or i32 %shl69.i, %spec.select146.v.i
  %spec.select146.i = or i32 %or68.i, %shl67.i
  %291 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load2_noabort(i32 %291)
  %292 = load i16, ptr %mmio_base, align 2
  %add.i229.i = add i16 %292, 16
  %293 = ptrtoint ptr %224 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %224, align 4
  %write32.i.i230.i = getelementptr inbounds %struct.b43_bus_dev, ptr %294, i32 0, i32 10
  %295 = ptrtoint ptr %write32.i.i230.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %write32.i.i230.i, align 4
  call void %296(ptr noundef %294, i16 noundef zeroext %add.i229.i, i32 noundef %spec.select146.i) #8
  %297 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %dev15, align 8
  %299 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load2_noabort(i32 %299)
  %300 = load i16, ptr %mmio_base, align 2
  %add.i233.i = add i16 %300, 20
  %301 = ptrtoint ptr %298 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %298, align 4
  %write32.i.i234.i = getelementptr inbounds %struct.b43_bus_dev, ptr %302, i32 0, i32 10
  %303 = ptrtoint ptr %write32.i.i234.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %write32.i.i234.i, align 4
  call void %304(ptr noundef %302, i16 noundef zeroext %add.i233.i, i32 noundef %addr.1.i225.i) #8
  %305 = ptrtoint ptr %nr_slots to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %nr_slots, align 4
  %mul77.i = shl i32 %306, 3
  %307 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %dev15, align 8
  %309 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load2_noabort(i32 %309)
  %310 = load i16, ptr %mmio_base, align 2
  %add.i237.i = add i16 %310, 24
  %311 = ptrtoint ptr %308 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %308, align 4
  %write32.i.i238.i = getelementptr inbounds %struct.b43_bus_dev, ptr %312, i32 0, i32 10
  %313 = ptrtoint ptr %write32.i.i238.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %write32.i.i238.i, align 4
  call void %314(ptr noundef %312, i16 noundef zeroext %add.i237.i, i32 noundef %mul77.i) #8
  br label %out

dmacontroller_setup.exit:                         ; preds = %for.body5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %meta.i.i) #8
  br label %err_free_ringmemory

out:                                              ; preds = %err_kfree_ring, %b43_dma_address.exit226.i, %b43_dma_address.exit197.i, %b43_dma_address.exit168.i, %b43_dma_address.exit148.i, %entry.out_crit_edge
  %ring.0 = phi ptr [ null, %err_kfree_ring ], [ null, %entry.out_crit_edge ], [ %call7.i.i, %b43_dma_address.exit148.i ], [ %call7.i.i, %b43_dma_address.exit168.i ], [ %call7.i.i, %b43_dma_address.exit197.i ], [ %call7.i.i, %b43_dma_address.exit226.i ]
  ret ptr %ring.0

err_free_ringmemory:                              ; preds = %dmacontroller_setup.exit, %dmacontroller_setup.exit.thread324
  %315 = ptrtoint ptr %type14 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %type14, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %316)
  %cmp.i299 = icmp eq i32 %316, 64
  %317 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %dev15, align 8
  %319 = ptrtoint ptr %318 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %318, align 4
  %dma_dev.i301 = getelementptr inbounds %struct.b43_bus_dev, ptr %320, i32 0, i32 15
  %321 = ptrtoint ptr %dma_dev.i301 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %dma_dev.i301, align 4
  %conv2.i302 = select i1 %cmp.i299, i32 8192, i32 4096
  %323 = ptrtoint ptr %descbase.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %descbase.i, align 4
  %325 = ptrtoint ptr %dmabase.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %dmabase.i, align 8
  call void @dma_free_attrs(ptr noundef %322, i32 noundef %conv2.i302, ptr noundef %324, i32 noundef %326, i32 noundef 0) #8
  br label %err_kfree_txhdr_cache

err_kfree_txhdr_cache:                            ; preds = %err_free_ringmemory, %if.end92.err_kfree_txhdr_cache_crit_edge, %if.then86
  %txhdr_cache101 = getelementptr inbounds %struct.b43_dmaring, ptr %call7.i.i, i32 0, i32 3
  %327 = ptrtoint ptr %txhdr_cache101 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %txhdr_cache101, align 4
  call void @kfree(ptr noundef %328) #8
  br label %err_kfree_meta

err_kfree_meta:                                   ; preds = %err_kfree_txhdr_cache, %if.end7.i.i227.err_kfree_meta_crit_edge, %kcalloc.exit229.thread, %if.end7.i.i.err_kfree_meta_crit_edge, %kcalloc.exit.thread
  %329 = ptrtoint ptr %meta to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %meta, align 8
  call void @kfree(ptr noundef %330) #8
  br label %err_kfree_ring

err_kfree_ring:                                   ; preds = %err_kfree_meta, %if.end.err_kfree_ring_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %out
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43dbg(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @b43_dma_tx(ptr noundef %dev, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %meta.i = alloca ptr, align 4
  %meta_hdr.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cb.i, align 8
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %tx_ring_mcast = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11, i32 0, i32 4
  %4 = ptrtoint ptr %tx_ring_mcast to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_ring_mcast, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %3, align 2
  %8 = or i16 %7, 32
  store i16 %8, ptr %3, align 2
  br label %if.end

if.else:                                          ; preds = %entry
  %qos_enabled.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 7
  %9 = ptrtoint ptr %qos_enabled.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %qos_enabled.i, align 1, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.else
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %11 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %queue_mapping.i, align 8
  %conv3 = trunc i16 %12 to i8
  %13 = zext i8 %conv3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.67)
  switch i8 %conv3, label %do.end.i [
    i8 0, label %if.then.i.sw.bb.i_crit_edge
    i8 1, label %sw.bb17.i
    i8 2, label %sw.bb18.i
    i8 3, label %sw.bb19.i
  ]

if.then.i.sw.bb.i_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1319, i32 noundef 9, ptr noundef null) #8
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %do.end.i, %if.then.i.sw.bb.i_crit_edge
  %tx_ring_AC_VO.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11, i32 0, i32 3
  br label %select_ring_by_priority.exit

sw.bb17.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %tx_ring_AC_VI.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11, i32 0, i32 2
  br label %select_ring_by_priority.exit

sw.bb18.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %tx_ring_AC_BE.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11, i32 0, i32 1
  br label %select_ring_by_priority.exit

sw.bb19.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %14 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11
  br label %select_ring_by_priority.exit

if.else.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %tx_ring_AC_BE20.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11, i32 0, i32 1
  br label %select_ring_by_priority.exit

select_ring_by_priority.exit:                     ; preds = %if.else.i, %sw.bb19.i, %sw.bb18.i, %sw.bb17.i, %sw.bb.i
  %ring.0.in.i = phi ptr [ %tx_ring_AC_VO.i, %sw.bb.i ], [ %14, %sw.bb19.i ], [ %tx_ring_AC_BE.i, %sw.bb18.i ], [ %tx_ring_AC_VI.i, %sw.bb17.i ], [ %tx_ring_AC_BE20.i, %if.else.i ]
  %15 = ptrtoint ptr %ring.0.in.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %ring.0.i = load ptr, ptr %ring.0.in.i, align 4
  br label %if.end

if.end:                                           ; preds = %select_ring_by_priority.exit, %if.then
  %ring.0 = phi ptr [ %5, %if.then ], [ %ring.0.i, %select_ring_by_priority.exit ]
  %tx = getelementptr inbounds %struct.b43_dmaring, ptr %ring.0, i32 0, i32 12
  %16 = ptrtoint ptr %tx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %tx, align 4, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool5.not = icmp eq i8 %17, 0
  br i1 %tobool5.not, label %do.end, label %if.end.if.end21_crit_edge, !prof !98

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1360, i32 noundef 9, ptr noundef null) #8
  br label %if.end21

if.end21:                                         ; preds = %do.end, %if.end.if.end21_crit_edge
  %stopped = getelementptr inbounds %struct.b43_dmaring, ptr %ring.0, i32 0, i32 14
  %18 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %stopped, align 4, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool28.not = icmp eq i8 %19, 0
  br i1 %tobool28.not, label %if.end39, label %if.then35, !prof !94

if.then35:                                        ; preds = %if.end21
  %call36 = tail call zeroext i1 @b43_debug(ptr noundef %dev, i32 noundef 2) #8
  br i1 %call36, label %if.then37, label %if.then35.out_crit_edge

if.then35.out_crit_edge:                          ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then37:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  %wl = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %20 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wl, align 4
  tail call void (ptr, ptr, ...) @b43err(ptr noundef %21, ptr noundef nonnull @.str.9) #8
  br label %out

if.end39:                                         ; preds = %if.end21
  %nr_slots.i = getelementptr inbounds %struct.b43_dmaring, ptr %ring.0, i32 0, i32 5
  %22 = ptrtoint ptr %nr_slots.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nr_slots.i, align 4
  %used_slots.i = getelementptr inbounds %struct.b43_dmaring, ptr %ring.0, i32 0, i32 6
  %24 = ptrtoint ptr %used_slots.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %used_slots.i, align 8
  %sub.i = sub i32 %23, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i)
  %cmp = icmp slt i32 %sub.i, 2
  br i1 %cmp, label %do.end58, label %if.end75, !prof !98

do.end58:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1373, i32 noundef 9, ptr noundef null) #8
  %wl74 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %26 = ptrtoint ptr %wl74 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wl74, align 4
  tail call void (ptr, ptr, ...) @b43err(ptr noundef %27, ptr noundef nonnull @.str.10) #8
  br label %out

if.end75:                                         ; preds = %if.end39
  %queue_mapping.i146 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %28 = ptrtoint ptr %queue_mapping.i146 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %queue_mapping.i146, align 8
  %conv77 = trunc i16 %29 to i8
  %queue_prio = getelementptr inbounds %struct.b43_dmaring, ptr %ring.0, i32 0, i32 15
  %30 = ptrtoint ptr %queue_prio to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv77, ptr %queue_prio, align 1
  %31 = ptrtoint ptr %ring.0 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ring.0, align 8
  %rate_driver_data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %meta.i) #8
  %33 = ptrtoint ptr %meta.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 -1 to ptr), ptr %meta.i, align 4, !annotation !96
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %meta_hdr.i) #8
  %34 = ptrtoint ptr %meta_hdr.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 -1 to ptr), ptr %meta_hdr.i, align 4, !annotation !96
  %dev.i = getelementptr inbounds %struct.b43_dmaring, ptr %ring.0, i32 0, i32 16
  %35 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i, align 8
  %hdr_format.i.i = getelementptr inbounds %struct.b43_wldev, ptr %36, i32 0, i32 24, i32 6
  %37 = ptrtoint ptr %hdr_format.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %hdr_format.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %38)
  %39 = icmp ult i32 %38, 3
  br i1 %39, label %switch.lookup, label %if.end75.b43_txhdr_size.exit.i_crit_edge

if.end75.b43_txhdr_size.exit.i_crit_edge:         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %b43_txhdr_size.exit.i

switch.lookup:                                    ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.b43_dma_tx, i32 0, i32 %38
  %40 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %40)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %b43_txhdr_size.exit.i

b43_txhdr_size.exit.i:                            ; preds = %switch.lookup, %if.end75.b43_txhdr_size.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.end75.b43_txhdr_size.exit.i_crit_edge ]
  %current_slot.i = getelementptr inbounds %struct.b43_dmaring, ptr %ring.0, i32 0, i32 7
  %41 = ptrtoint ptr %current_slot.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %current_slot.i, align 4
  %call4.i = tail call fastcc i32 @request_slot(ptr noundef %ring.0) #8
  %43 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %32, align 4
  %call5.i = call ptr %44(ptr noundef %ring.0, i32 noundef %call4.i, ptr noundef nonnull %meta_hdr.i) #8
  %45 = ptrtoint ptr %meta_hdr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %meta_hdr.i, align 4
  %47 = call ptr @memset(ptr %46, i32 0, i32 12)
  %txhdr_cache.i = getelementptr inbounds %struct.b43_dmaring, ptr %ring.0, i32 0, i32 3
  %48 = ptrtoint ptr %txhdr_cache.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %txhdr_cache.i, align 4
  %div.i = sdiv i32 %call4.i, 2
  %mul.i = mul i32 %div.i, %retval.0.i.i
  %arrayidx.i = getelementptr i8, ptr %49, i32 %mul.i
  %index.i.i = getelementptr inbounds %struct.b43_dmaring, ptr %ring.0, i32 0, i32 11
  %50 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %index.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %call4.i)
  %tobool.not.i.i = icmp ult i32 %call4.i, 4096
  br i1 %tobool.not.i.i, label %b43_txhdr_size.exit.i.generate_cookie.exit.i_crit_edge, label %do.end.i.i, !prof !94

b43_txhdr_size.exit.i.generate_cookie.exit.i_crit_edge: ; preds = %b43_txhdr_size.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %generate_cookie.exit.i

do.end.i.i:                                       ; preds = %b43_txhdr_size.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1149, i32 noundef 9, ptr noundef null) #8
  br label %generate_cookie.exit.i

generate_cookie.exit.i:                           ; preds = %do.end.i.i, %b43_txhdr_size.exit.i.generate_cookie.exit.i_crit_edge
  %52 = shl i32 %51, 12
  %conv2.i.i = add i32 %52, 4096
  %or.i.i = or i32 %conv2.i.i, %call4.i
  %conv25.i.i = trunc i32 %or.i.i to i16
  %53 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i, align 8
  %call8.i = call i32 @b43_generate_txhdr(ptr noundef %54, ptr noundef %arrayidx.i, ptr noundef %skb, ptr noundef %cb.i, i16 noundef zeroext %conv25.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool.not.i148 = icmp eq i32 %call8.i, 0
  br i1 %tobool.not.i148, label %if.end.i, label %dma_tx_fragment.exit, !prof !94

if.end.i:                                         ; preds = %generate_cookie.exit.i
  %55 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev.i, align 8
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %dma_dev4.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %58, i32 0, i32 15
  %59 = ptrtoint ptr %dma_dev4.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dma_dev4.i.i, align 4
  %call.i9.i.i = call zeroext i1 @is_vmalloc_addr(ptr noundef %arrayidx.i) #8
  br i1 %call.i9.i.i, label %land.rhs.i.i.i, label %if.end39.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.end.i
  %.b1.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.map_descbuffer.exit.i_crit_edge, label %if.then.i.i.i, !prof !94

land.rhs.i.i.i.map_descbuffer.exit.i_crit_edge:   ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %map_descbuffer.exit.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i = call ptr @dev_driver_string(ptr noundef %60) #8
  %init_name.i.i.i.i = getelementptr inbounds %struct.device, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %62, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge

if.then.i.i.i.dev_name.exit.i.i.i_crit_edge:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %60, align 4
  br label %dev_name.exit.i.i.i

dev_name.exit.i.i.i:                              ; preds = %if.end.i.i.i.i, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %64, %if.end.i.i.i.i ], [ %62, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.25, ptr noundef %call16.i.i.i, ptr noundef %retval.0.i.i.i.i) #8
  br label %map_descbuffer.exit.i

if.end39.i.i.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @debug_dma_map_single(ptr noundef %60, ptr noundef %arrayidx.i, i32 noundef %retval.0.i.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %65 = load ptr, ptr @mem_map, align 4
  %66 = ptrtoint ptr %arrayidx.i to i32
  %sub.i.i.i = add i32 %66, 1073741824
  %shr.i.i.i = lshr i32 %sub.i.i.i, 12
  %add.ptr.i.i.i = getelementptr %struct.page, ptr %65, i32 %shr.i.i.i
  %and.i.i.i = and i32 %66, 4095
  %call41.i.i.i = call i32 @dma_map_page_attrs(ptr noundef %60, ptr noundef %add.ptr.i.i.i, i32 noundef %and.i.i.i, i32 noundef %retval.0.i.i, i32 noundef 1, i32 noundef 0) #8
  br label %map_descbuffer.exit.i

map_descbuffer.exit.i:                            ; preds = %if.end39.i.i.i, %dev_name.exit.i.i.i, %land.rhs.i.i.i.map_descbuffer.exit.i_crit_edge
  %dmaaddr.0.i.i = phi i32 [ %call41.i.i.i, %if.end39.i.i.i ], [ -1, %dev_name.exit.i.i.i ], [ -1, %land.rhs.i.i.i.map_descbuffer.exit.i_crit_edge ]
  %67 = ptrtoint ptr %meta_hdr.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %meta_hdr.i, align 4
  %dmaaddr.i = getelementptr inbounds %struct.b43_dmadesc_meta, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %dmaaddr.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %dmaaddr.0.i.i, ptr %dmaaddr.i, align 4
  %70 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev.i, align 8
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  %dma_dev.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %73, i32 0, i32 15
  %74 = ptrtoint ptr %dma_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dma_dev.i.i, align 4
  call void @debug_dma_mapping_error(ptr noundef %75, i32 noundef %dmaaddr.0.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dmaaddr.0.i.i)
  %cmp.i.not.i.i = icmp eq i32 %dmaaddr.0.i.i, -1
  br i1 %cmp.i.not.i.i, label %map_descbuffer.exit.i.dma_tx_fragment.exit.thread_crit_edge, label %if.end.i.i, !prof !98

map_descbuffer.exit.i.dma_tx_fragment.exit.thread_crit_edge: ; preds = %map_descbuffer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_tx_fragment.exit.thread

if.end.i.i:                                       ; preds = %map_descbuffer.exit.i
  %type.i.i = getelementptr inbounds %struct.b43_dmaring, ptr %ring.0, i32 0, i32 13
  %76 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %type.i.i, align 8
  %78 = zext i32 %77 to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %77, label %if.end.i.i.if.end19.i_crit_edge [
    i32 30, label %sw.bb.i.i
    i32 32, label %sw.bb8.i.i
  ]

if.end.i.i.if.end19.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i

sw.bb.i.i:                                        ; preds = %if.end.i.i
  %conv.i.i = zext i32 %dmaaddr.0.i.i to i64
  %conv4.i.i = zext i32 %retval.0.i.i to i64
  %add.i.i = add nuw nsw i64 %conv.i.i, %conv4.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 1073741824, i64 %add.i.i)
  %cmp.i.i = icmp ugt i64 %add.i.i, 1073741824
  br i1 %cmp.i.i, label %sw.bb.i.i.address_error.i.i_crit_edge, label %sw.bb.i.i.if.end19.i_crit_edge

sw.bb.i.i.if.end19.i_crit_edge:                   ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i

sw.bb.i.i.address_error.i.i_crit_edge:            ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %address_error.i.i

sw.bb8.i.i:                                       ; preds = %if.end.i.i
  %conv9.i.i = zext i32 %dmaaddr.0.i.i to i64
  %conv10.i.i = zext i32 %retval.0.i.i to i64
  %add11.i.i = add nuw nsw i64 %conv9.i.i, %conv10.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add11.i.i)
  %cmp12.i.i = icmp ugt i64 %add11.i.i, 4294967296
  br i1 %cmp12.i.i, label %sw.bb8.i.i.address_error.i.i_crit_edge, label %sw.bb8.i.i.if.end19.i_crit_edge

sw.bb8.i.i.if.end19.i_crit_edge:                  ; preds = %sw.bb8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i

sw.bb8.i.i.address_error.i.i_crit_edge:           ; preds = %sw.bb8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %address_error.i.i

address_error.i.i:                                ; preds = %sw.bb8.i.i.address_error.i.i_crit_edge, %sw.bb.i.i.address_error.i.i_crit_edge
  %79 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev.i, align 8
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 4
  %dma_dev4.i.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %82, i32 0, i32 15
  %83 = ptrtoint ptr %dma_dev4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dma_dev4.i.i.i, align 4
  call void @dma_unmap_page_attrs(ptr noundef %84, i32 noundef %dmaaddr.0.i.i, i32 noundef %retval.0.i.i, i32 noundef 1, i32 noundef 0) #8
  br label %dma_tx_fragment.exit.thread

dma_tx_fragment.exit.thread:                      ; preds = %address_error.i.i, %map_descbuffer.exit.i.dma_tx_fragment.exit.thread_crit_edge
  %85 = ptrtoint ptr %current_slot.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %42, ptr %current_slot.i, align 4
  %86 = ptrtoint ptr %used_slots.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %25, ptr %used_slots.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %meta_hdr.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %meta.i) #8
  br label %if.then97

if.end19.i:                                       ; preds = %sw.bb8.i.i.if.end19.i_crit_edge, %sw.bb.i.i.if.end19.i_crit_edge, %if.end.i.i.if.end19.i_crit_edge
  %fill_descriptor.i = getelementptr inbounds %struct.b43_dma_ops, ptr %32, i32 0, i32 1
  %87 = ptrtoint ptr %fill_descriptor.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %fill_descriptor.i, align 4
  %89 = ptrtoint ptr %meta_hdr.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %meta_hdr.i, align 4
  %dmaaddr20.i = getelementptr inbounds %struct.b43_dmadesc_meta, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %dmaaddr20.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %dmaaddr20.i, align 4
  %conv.i = trunc i32 %retval.0.i.i to i16
  call void %88(ptr noundef %ring.0, ptr noundef %call5.i, i32 noundef %92, i16 noundef zeroext %conv.i, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %call21.i = call fastcc i32 @request_slot(ptr noundef %ring.0) #8
  %93 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %32, align 4
  %call23.i = call ptr %94(ptr noundef %ring.0, i32 noundef %call21.i, ptr noundef nonnull %meta.i) #8
  %95 = ptrtoint ptr %meta.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %meta.i, align 4
  %97 = getelementptr inbounds i8, ptr %96, i32 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_storeN_noabort(i32 %98, i32 8)
  store i64 0, ptr %97, align 4
  %99 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %skb, ptr %96, align 4
  %100 = load ptr, ptr %meta.i, align 4
  %is_last_fragment.i = getelementptr inbounds %struct.b43_dmadesc_meta, ptr %100, i32 0, i32 2
  %101 = ptrtoint ptr %is_last_fragment.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 1, ptr %is_last_fragment.i, align 4
  %102 = ptrtoint ptr %rate_driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr null, ptr %rate_driver_data.i.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %103 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %data.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %105 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %len.i, align 4
  %107 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev.i, align 8
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %108, align 4
  %dma_dev4.i149.i = getelementptr inbounds %struct.b43_bus_dev, ptr %110, i32 0, i32 15
  %111 = ptrtoint ptr %dma_dev4.i149.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dma_dev4.i149.i, align 4
  %call.i9.i150.i = call zeroext i1 @is_vmalloc_addr(ptr noundef %104) #8
  br i1 %call.i9.i150.i, label %land.rhs.i.i152.i, label %if.end39.i.i165.i

land.rhs.i.i152.i:                                ; preds = %if.end19.i
  %.b1.i.i151.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i151.i, label %land.rhs.i.i152.i.map_descbuffer.exit168.i_crit_edge, label %if.then.i.i156.i, !prof !94

land.rhs.i.i152.i.map_descbuffer.exit168.i_crit_edge: ; preds = %land.rhs.i.i152.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %map_descbuffer.exit168.i

if.then.i.i156.i:                                 ; preds = %land.rhs.i.i152.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i153.i = call ptr @dev_driver_string(ptr noundef %112) #8
  %init_name.i.i.i154.i = getelementptr inbounds %struct.device, ptr %112, i32 0, i32 3
  %113 = ptrtoint ptr %init_name.i.i.i154.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %init_name.i.i.i154.i, align 8
  %tobool.not.i.i.i155.i = icmp eq ptr %114, null
  br i1 %tobool.not.i.i.i155.i, label %if.end.i.i.i157.i, label %if.then.i.i156.i.dev_name.exit.i.i159.i_crit_edge

if.then.i.i156.i.dev_name.exit.i.i159.i_crit_edge: ; preds = %if.then.i.i156.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i.i159.i

if.end.i.i.i157.i:                                ; preds = %if.then.i.i156.i
  call void @__sanitizer_cov_trace_pc() #10
  %115 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %112, align 4
  br label %dev_name.exit.i.i159.i

dev_name.exit.i.i159.i:                           ; preds = %if.end.i.i.i157.i, %if.then.i.i156.i.dev_name.exit.i.i159.i_crit_edge
  %retval.0.i.i.i158.i = phi ptr [ %116, %if.end.i.i.i157.i ], [ %114, %if.then.i.i156.i.dev_name.exit.i.i159.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.25, ptr noundef %call16.i.i153.i, ptr noundef %retval.0.i.i.i158.i) #8
  br label %map_descbuffer.exit168.i

if.end39.i.i165.i:                                ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @debug_dma_map_single(ptr noundef %112, ptr noundef %104, i32 noundef %106) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %117 = load ptr, ptr @mem_map, align 4
  %118 = ptrtoint ptr %104 to i32
  %sub.i.i160.i = add i32 %118, 1073741824
  %shr.i.i161.i = lshr i32 %sub.i.i160.i, 12
  %add.ptr.i.i162.i = getelementptr %struct.page, ptr %117, i32 %shr.i.i161.i
  %and.i.i163.i = and i32 %118, 4095
  %call41.i.i164.i = call i32 @dma_map_page_attrs(ptr noundef %112, ptr noundef %add.ptr.i.i162.i, i32 noundef %and.i.i163.i, i32 noundef %106, i32 noundef 1, i32 noundef 0) #8
  br label %map_descbuffer.exit168.i

map_descbuffer.exit168.i:                         ; preds = %if.end39.i.i165.i, %dev_name.exit.i.i159.i, %land.rhs.i.i152.i.map_descbuffer.exit168.i_crit_edge
  %dmaaddr.0.i166.i = phi i32 [ %call41.i.i164.i, %if.end39.i.i165.i ], [ -1, %dev_name.exit.i.i159.i ], [ -1, %land.rhs.i.i152.i.map_descbuffer.exit168.i_crit_edge ]
  %119 = ptrtoint ptr %meta.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %meta.i, align 4
  %dmaaddr26.i = getelementptr inbounds %struct.b43_dmadesc_meta, ptr %120, i32 0, i32 1
  %121 = ptrtoint ptr %dmaaddr26.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %dmaaddr.0.i166.i, ptr %dmaaddr26.i, align 4
  %122 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %len.i, align 4
  %124 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dev.i, align 8
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %125, align 4
  %dma_dev.i170.i = getelementptr inbounds %struct.b43_bus_dev, ptr %127, i32 0, i32 15
  %128 = ptrtoint ptr %dma_dev.i170.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dma_dev.i170.i, align 4
  call void @debug_dma_mapping_error(ptr noundef %129, i32 noundef %dmaaddr.0.i166.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dmaaddr.0.i166.i)
  %cmp.i.not.i171.i = icmp eq i32 %dmaaddr.0.i166.i, -1
  br i1 %cmp.i.not.i171.i, label %map_descbuffer.exit168.i.if.then30.i_crit_edge, label %if.end.i173.i, !prof !98

map_descbuffer.exit168.i.if.then30.i_crit_edge:   ; preds = %map_descbuffer.exit168.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then30.i

if.end.i173.i:                                    ; preds = %map_descbuffer.exit168.i
  %130 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %type.i.i, align 8
  %132 = zext i32 %131 to i64
  call void @__sanitizer_cov_trace_switch(i64 %132, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %131, label %if.end.i173.i.if.end54.i_crit_edge [
    i32 30, label %sw.bb.i178.i
    i32 32, label %sw.bb8.i183.i
  ]

if.end.i173.i.if.end54.i_crit_edge:               ; preds = %if.end.i173.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54.i

sw.bb.i178.i:                                     ; preds = %if.end.i173.i
  %conv.i174.i = zext i32 %dmaaddr.0.i166.i to i64
  %conv4.i175.i = zext i32 %123 to i64
  %add.i176.i = add nuw nsw i64 %conv4.i175.i, %conv.i174.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 1073741824, i64 %add.i176.i)
  %cmp.i177.i = icmp ugt i64 %add.i176.i, 1073741824
  br i1 %cmp.i177.i, label %sw.bb.i178.i.address_error.i185.i_crit_edge, label %sw.bb.i178.i.if.end54.i_crit_edge

sw.bb.i178.i.if.end54.i_crit_edge:                ; preds = %sw.bb.i178.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54.i

sw.bb.i178.i.address_error.i185.i_crit_edge:      ; preds = %sw.bb.i178.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %address_error.i185.i

sw.bb8.i183.i:                                    ; preds = %if.end.i173.i
  %conv9.i179.i = zext i32 %dmaaddr.0.i166.i to i64
  %conv10.i180.i = zext i32 %123 to i64
  %add11.i181.i = add nuw nsw i64 %conv10.i180.i, %conv9.i179.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add11.i181.i)
  %cmp12.i182.i = icmp ugt i64 %add11.i181.i, 4294967296
  br i1 %cmp12.i182.i, label %sw.bb8.i183.i.address_error.i185.i_crit_edge, label %sw.bb8.i183.i.if.end54.i_crit_edge

sw.bb8.i183.i.if.end54.i_crit_edge:               ; preds = %sw.bb8.i183.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54.i

sw.bb8.i183.i.address_error.i185.i_crit_edge:     ; preds = %sw.bb8.i183.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %address_error.i185.i

address_error.i185.i:                             ; preds = %sw.bb8.i183.i.address_error.i185.i_crit_edge, %sw.bb.i178.i.address_error.i185.i_crit_edge
  %133 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dev.i, align 8
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %134, align 4
  %dma_dev4.i.i184.i = getelementptr inbounds %struct.b43_bus_dev, ptr %136, i32 0, i32 15
  %137 = ptrtoint ptr %dma_dev4.i.i184.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dma_dev4.i.i184.i, align 4
  call void @dma_unmap_page_attrs(ptr noundef %138, i32 noundef %dmaaddr.0.i166.i, i32 noundef %123, i32 noundef 1, i32 noundef 0) #8
  br label %if.then30.i

if.then30.i:                                      ; preds = %address_error.i185.i, %map_descbuffer.exit168.i.if.then30.i_crit_edge
  %139 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %data.i, align 4
  %141 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %len.i, align 4
  %call33.i = call ptr @kmemdup(ptr noundef %140, i32 noundef %142, i32 noundef 2593) #8
  %143 = ptrtoint ptr %rate_driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %call33.i, ptr %rate_driver_data.i.i, align 4
  %tobool36.not.i = icmp eq ptr %call33.i, null
  br i1 %tobool36.not.i, label %if.then30.i.dma_tx_fragment.exit.thread163_crit_edge, label %if.end40.i

if.then30.i.dma_tx_fragment.exit.thread163_crit_edge: ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_tx_fragment.exit.thread163

if.end40.i:                                       ; preds = %if.then30.i
  %144 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %len.i, align 4
  %146 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %dev.i, align 8
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %147, align 4
  %dma_dev4.i189.i = getelementptr inbounds %struct.b43_bus_dev, ptr %149, i32 0, i32 15
  %150 = ptrtoint ptr %dma_dev4.i189.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %dma_dev4.i189.i, align 4
  %call.i9.i190.i = call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call33.i) #8
  br i1 %call.i9.i190.i, label %land.rhs.i.i192.i, label %if.end39.i.i205.i

land.rhs.i.i192.i:                                ; preds = %if.end40.i
  %.b1.i.i191.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i191.i, label %land.rhs.i.i192.i.map_descbuffer.exit208.i_crit_edge, label %if.then.i.i196.i, !prof !94

land.rhs.i.i192.i.map_descbuffer.exit208.i_crit_edge: ; preds = %land.rhs.i.i192.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %map_descbuffer.exit208.i

if.then.i.i196.i:                                 ; preds = %land.rhs.i.i192.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i193.i = call ptr @dev_driver_string(ptr noundef %151) #8
  %init_name.i.i.i194.i = getelementptr inbounds %struct.device, ptr %151, i32 0, i32 3
  %152 = ptrtoint ptr %init_name.i.i.i194.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %init_name.i.i.i194.i, align 8
  %tobool.not.i.i.i195.i = icmp eq ptr %153, null
  br i1 %tobool.not.i.i.i195.i, label %if.end.i.i.i197.i, label %if.then.i.i196.i.dev_name.exit.i.i199.i_crit_edge

if.then.i.i196.i.dev_name.exit.i.i199.i_crit_edge: ; preds = %if.then.i.i196.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i.i199.i

if.end.i.i.i197.i:                                ; preds = %if.then.i.i196.i
  call void @__sanitizer_cov_trace_pc() #10
  %154 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %151, align 4
  br label %dev_name.exit.i.i199.i

dev_name.exit.i.i199.i:                           ; preds = %if.end.i.i.i197.i, %if.then.i.i196.i.dev_name.exit.i.i199.i_crit_edge
  %retval.0.i.i.i198.i = phi ptr [ %155, %if.end.i.i.i197.i ], [ %153, %if.then.i.i196.i.dev_name.exit.i.i199.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.25, ptr noundef %call16.i.i193.i, ptr noundef %retval.0.i.i.i198.i) #8
  br label %map_descbuffer.exit208.i

if.end39.i.i205.i:                                ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @debug_dma_map_single(ptr noundef %151, ptr noundef nonnull %call33.i, i32 noundef %145) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %156 = load ptr, ptr @mem_map, align 4
  %157 = ptrtoint ptr %call33.i to i32
  %sub.i.i200.i = add i32 %157, 1073741824
  %shr.i.i201.i = lshr i32 %sub.i.i200.i, 12
  %add.ptr.i.i202.i = getelementptr %struct.page, ptr %156, i32 %shr.i.i201.i
  %and.i.i203.i = and i32 %157, 4095
  %call41.i.i204.i = call i32 @dma_map_page_attrs(ptr noundef %151, ptr noundef %add.ptr.i.i202.i, i32 noundef %and.i.i203.i, i32 noundef %145, i32 noundef 1, i32 noundef 0) #8
  br label %map_descbuffer.exit208.i

map_descbuffer.exit208.i:                         ; preds = %if.end39.i.i205.i, %dev_name.exit.i.i199.i, %land.rhs.i.i192.i.map_descbuffer.exit208.i_crit_edge
  %dmaaddr.0.i206.i = phi i32 [ %call41.i.i204.i, %if.end39.i.i205.i ], [ -1, %dev_name.exit.i.i199.i ], [ -1, %land.rhs.i.i192.i.map_descbuffer.exit208.i_crit_edge ]
  %158 = ptrtoint ptr %meta.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %meta.i, align 4
  %dmaaddr44.i = getelementptr inbounds %struct.b43_dmadesc_meta, ptr %159, i32 0, i32 1
  %160 = ptrtoint ptr %dmaaddr44.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %dmaaddr.0.i206.i, ptr %dmaaddr44.i, align 4
  %161 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %len.i, align 4
  %163 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %dev.i, align 8
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %164, align 4
  %dma_dev.i210.i = getelementptr inbounds %struct.b43_bus_dev, ptr %166, i32 0, i32 15
  %167 = ptrtoint ptr %dma_dev.i210.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %dma_dev.i210.i, align 4
  call void @debug_dma_mapping_error(ptr noundef %168, i32 noundef %dmaaddr.0.i206.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dmaaddr.0.i206.i)
  %cmp.i.not.i211.i = icmp eq i32 %dmaaddr.0.i206.i, -1
  br i1 %cmp.i.not.i211.i, label %map_descbuffer.exit208.i.if.then48.i_crit_edge, label %if.end.i213.i, !prof !98

map_descbuffer.exit208.i.if.then48.i_crit_edge:   ; preds = %map_descbuffer.exit208.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then48.i

if.end.i213.i:                                    ; preds = %map_descbuffer.exit208.i
  %169 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %type.i.i, align 8
  %171 = zext i32 %170 to i64
  call void @__sanitizer_cov_trace_switch(i64 %171, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %170, label %if.end.i213.i.if.end54.i_crit_edge [
    i32 30, label %sw.bb.i218.i
    i32 32, label %sw.bb8.i223.i
  ]

if.end.i213.i.if.end54.i_crit_edge:               ; preds = %if.end.i213.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54.i

sw.bb.i218.i:                                     ; preds = %if.end.i213.i
  %conv.i214.i = zext i32 %dmaaddr.0.i206.i to i64
  %conv4.i215.i = zext i32 %162 to i64
  %add.i216.i = add nuw nsw i64 %conv4.i215.i, %conv.i214.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 1073741824, i64 %add.i216.i)
  %cmp.i217.i = icmp ugt i64 %add.i216.i, 1073741824
  br i1 %cmp.i217.i, label %sw.bb.i218.i.address_error.i225.i_crit_edge, label %sw.bb.i218.i.if.end54.i_crit_edge

sw.bb.i218.i.if.end54.i_crit_edge:                ; preds = %sw.bb.i218.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54.i

sw.bb.i218.i.address_error.i225.i_crit_edge:      ; preds = %sw.bb.i218.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %address_error.i225.i

sw.bb8.i223.i:                                    ; preds = %if.end.i213.i
  %conv9.i219.i = zext i32 %dmaaddr.0.i206.i to i64
  %conv10.i220.i = zext i32 %162 to i64
  %add11.i221.i = add nuw nsw i64 %conv10.i220.i, %conv9.i219.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add11.i221.i)
  %cmp12.i222.i = icmp ugt i64 %add11.i221.i, 4294967296
  br i1 %cmp12.i222.i, label %sw.bb8.i223.i.address_error.i225.i_crit_edge, label %sw.bb8.i223.i.if.end54.i_crit_edge

sw.bb8.i223.i.if.end54.i_crit_edge:               ; preds = %sw.bb8.i223.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54.i

sw.bb8.i223.i.address_error.i225.i_crit_edge:     ; preds = %sw.bb8.i223.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %address_error.i225.i

address_error.i225.i:                             ; preds = %sw.bb8.i223.i.address_error.i225.i_crit_edge, %sw.bb.i218.i.address_error.i225.i_crit_edge
  %172 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %dev.i, align 8
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %173, align 4
  %dma_dev4.i.i224.i = getelementptr inbounds %struct.b43_bus_dev, ptr %175, i32 0, i32 15
  %176 = ptrtoint ptr %dma_dev4.i.i224.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %dma_dev4.i.i224.i, align 4
  call void @dma_unmap_page_attrs(ptr noundef %177, i32 noundef %dmaaddr.0.i206.i, i32 noundef %162, i32 noundef 1, i32 noundef 0) #8
  br label %if.then48.i

if.then48.i:                                      ; preds = %address_error.i225.i, %map_descbuffer.exit208.i.if.then48.i_crit_edge
  %178 = ptrtoint ptr %rate_driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %rate_driver_data.i.i, align 4
  call void @kfree(ptr noundef %179) #8
  %180 = ptrtoint ptr %rate_driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr null, ptr %rate_driver_data.i.i, align 4
  br label %dma_tx_fragment.exit.thread163

if.end54.i:                                       ; preds = %sw.bb8.i223.i.if.end54.i_crit_edge, %sw.bb.i218.i.if.end54.i_crit_edge, %if.end.i213.i.if.end54.i_crit_edge, %sw.bb8.i183.i.if.end54.i_crit_edge, %sw.bb.i178.i.if.end54.i_crit_edge, %if.end.i173.i.if.end54.i_crit_edge
  %181 = ptrtoint ptr %fill_descriptor.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %fill_descriptor.i, align 4
  %183 = ptrtoint ptr %meta.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %meta.i, align 4
  %dmaaddr56.i = getelementptr inbounds %struct.b43_dmadesc_meta, ptr %184, i32 0, i32 1
  %185 = ptrtoint ptr %dmaaddr56.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %dmaaddr56.i, align 4
  %187 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %len.i, align 4
  %conv58.i = trunc i32 %188 to i16
  call void %182(ptr noundef %ring.0, ptr noundef %call23.i, i32 noundef %186, i16 noundef zeroext %conv58.i, i32 noundef 0, i32 noundef 1, i32 noundef 1) #8
  %189 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %cb.i, align 8
  %and.i = and i32 %190, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool59.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool59.not.i, label %if.end54.i.do.body.i_crit_edge, label %if.then60.i

if.end54.i.do.body.i_crit_edge:                   ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.then60.i:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #10
  %191 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %dev.i, align 8
  call void @b43_shm_write16(ptr noundef %192, i16 noundef zeroext 1, i16 noundef zeroext 168, i16 noundef zeroext %conv25.i.i) #8
  br label %do.body.i

do.body.i:                                        ; preds = %if.then60.i, %if.end54.i.do.body.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !100
  call void @arm_heavy_mb() #8
  %poke_tx.i = getelementptr inbounds %struct.b43_dma_ops, ptr %32, i32 0, i32 2
  %193 = ptrtoint ptr %poke_tx.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %poke_tx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call21.i)
  %cmp.i228.i = icmp sgt i32 %call21.i, -2
  br i1 %cmp.i228.i, label %land.rhs.i.i, label %do.body.i.do.end.i229.i_crit_edge

do.body.i.do.end.i229.i_crit_edge:                ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i229.i

land.rhs.i.i:                                     ; preds = %do.body.i
  %195 = ptrtoint ptr %nr_slots.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %nr_slots.i, align 4
  %sub.i.i = add i32 %196, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %call21.i)
  %cmp1.i.i = icmp slt i32 %sub.i.i, %call21.i
  br i1 %cmp1.i.i, label %land.rhs.i.i.do.end.i229.i_crit_edge, label %land.rhs.i.i.dma_tx_fragment.exit.thread159_crit_edge, !prof !98

land.rhs.i.i.dma_tx_fragment.exit.thread159_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_tx_fragment.exit.thread159

land.rhs.i.i.do.end.i229.i_crit_edge:             ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i229.i

do.end.i229.i:                                    ; preds = %land.rhs.i.i.do.end.i229.i_crit_edge, %do.body.i.do.end.i229.i_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 264, i32 noundef 9, ptr noundef null) #8
  br label %dma_tx_fragment.exit.thread159

dma_tx_fragment.exit.thread159:                   ; preds = %do.end.i229.i, %land.rhs.i.i.dma_tx_fragment.exit.thread159_crit_edge
  %197 = ptrtoint ptr %nr_slots.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %nr_slots.i, align 4
  %sub22.i.i = add i32 %198, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub22.i.i, i32 %call21.i)
  %cmp23.i.i = icmp eq i32 %sub22.i.i, %call21.i
  %add.i230.i = add i32 %call21.i, 1
  %retval.0.i231.i = select i1 %cmp23.i.i, i32 0, i32 %add.i230.i
  call void %194(ptr noundef %ring.0, i32 noundef %retval.0.i231.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %meta_hdr.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %meta.i) #8
  %199 = ptrtoint ptr %nr_slots.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %nr_slots.i, align 4
  %201 = ptrtoint ptr %used_slots.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %used_slots.i, align 8
  %sub.i152 = sub i32 %200, %202
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i152)
  %cmp101 = icmp slt i32 %sub.i152, 2
  br i1 %cmp101, label %dma_tx_fragment.exit.thread159.if.then105_crit_edge, label %lor.lhs.false

dma_tx_fragment.exit.thread159.if.then105_crit_edge: ; preds = %dma_tx_fragment.exit.thread159
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then105

dma_tx_fragment.exit.thread163:                   ; preds = %if.then48.i, %if.then30.i.dma_tx_fragment.exit.thread163_crit_edge
  %err.0.i = phi i32 [ -5, %if.then48.i ], [ -12, %if.then30.i.dma_tx_fragment.exit.thread163_crit_edge ]
  %203 = ptrtoint ptr %current_slot.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %42, ptr %current_slot.i, align 4
  %204 = ptrtoint ptr %used_slots.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %25, ptr %used_slots.i, align 8
  %205 = ptrtoint ptr %meta_hdr.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %meta_hdr.i, align 4
  %dmaaddr64.i = getelementptr inbounds %struct.b43_dmadesc_meta, ptr %206, i32 0, i32 1
  %207 = ptrtoint ptr %dmaaddr64.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %dmaaddr64.i, align 4
  %209 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %dev.i, align 8
  %211 = ptrtoint ptr %210 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %210, align 4
  %dma_dev4.i234.i = getelementptr inbounds %struct.b43_bus_dev, ptr %212, i32 0, i32 15
  %213 = ptrtoint ptr %dma_dev4.i234.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %dma_dev4.i234.i, align 4
  call void @dma_unmap_page_attrs(ptr noundef %214, i32 noundef %208, i32 noundef %retval.0.i.i, i32 noundef 1, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %meta_hdr.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %meta.i) #8
  br label %if.then97

dma_tx_fragment.exit:                             ; preds = %generate_cookie.exit.i
  %215 = ptrtoint ptr %current_slot.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %42, ptr %current_slot.i, align 4
  %216 = ptrtoint ptr %used_slots.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %25, ptr %used_slots.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %meta_hdr.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %meta.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -126, i32 %call8.i)
  %cond = icmp eq i32 %call8.i, -126
  br i1 %cond, label %if.then87, label %dma_tx_fragment.exit.if.then97_crit_edge, !prof !101

dma_tx_fragment.exit.if.then97_crit_edge:         ; preds = %dma_tx_fragment.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then97

if.then87:                                        ; preds = %dma_tx_fragment.exit
  call void @__sanitizer_cov_trace_pc() #10
  %wl88 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %217 = ptrtoint ptr %wl88 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %wl88, align 4
  %hw = getelementptr inbounds %struct.b43_wl, ptr %218, i32 0, i32 1
  %219 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %hw, align 4
  call void @ieee80211_free_txskb(ptr noundef %220, ptr noundef %skb) #8
  br label %out

if.then97:                                        ; preds = %dma_tx_fragment.exit.if.then97_crit_edge, %dma_tx_fragment.exit.thread163, %dma_tx_fragment.exit.thread
  %retval.0.i158 = phi i32 [ -5, %dma_tx_fragment.exit.thread ], [ %call8.i, %dma_tx_fragment.exit.if.then97_crit_edge ], [ %err.0.i, %dma_tx_fragment.exit.thread163 ]
  %wl98 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %221 = ptrtoint ptr %wl98 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %wl98, align 4
  call void (ptr, ptr, ...) @b43err(ptr noundef %222, ptr noundef nonnull @.str.11) #8
  br label %out

lor.lhs.false:                                    ; preds = %dma_tx_fragment.exit.thread159
  %223 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %dev.i, align 8
  %call.i = call zeroext i1 @b43_debug(ptr noundef %224, i32 noundef 1) #8
  br i1 %call.i, label %if.then.i155, label %lor.lhs.false.out_crit_edge, !prof !98

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then.i155:                                     ; preds = %lor.lhs.false
  %last_injected_overflow.i = getelementptr inbounds %struct.b43_dmaring, ptr %ring.0, i32 0, i32 18
  %225 = ptrtoint ptr %last_injected_overflow.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %last_injected_overflow.i, align 8
  %add.i = add i32 %226, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %227 = load volatile i32, ptr @jiffies, align 128
  %sub.i154 = sub i32 %add.i, %227
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i154)
  %cmp.i = icmp slt i32 %sub.i154, 0
  br i1 %cmp.i, label %should_inject_overflow.exit, label %if.then.i155.out_crit_edge

if.then.i155.out_crit_edge:                       ; preds = %if.then.i155
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

should_inject_overflow.exit:                      ; preds = %if.then.i155
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %228 = load volatile i32, ptr @jiffies, align 128
  %229 = ptrtoint ptr %last_injected_overflow.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 %228, ptr %last_injected_overflow.i, align 8
  %230 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %dev.i, align 8
  %wl.i = getelementptr inbounds %struct.b43_wldev, ptr %231, i32 0, i32 1
  %232 = ptrtoint ptr %wl.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %wl.i, align 4
  %234 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %index.i.i, align 8
  call void (ptr, ptr, ...) @b43dbg(ptr noundef %233, ptr noundef nonnull @.str.28, i32 noundef %235) #8
  br label %if.then105

if.then105:                                       ; preds = %should_inject_overflow.exit, %dma_tx_fragment.exit.thread159.if.then105_crit_edge
  %236 = ptrtoint ptr %queue_mapping.i146 to i32
  call void @__asan_load2_noabort(i32 %236)
  %237 = load i16, ptr %queue_mapping.i146, align 8
  %conv107 = zext i16 %237 to i32
  %wl108 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %238 = ptrtoint ptr %wl108 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %wl108, align 4
  %hw109 = getelementptr inbounds %struct.b43_wl, ptr %239, i32 0, i32 1
  %240 = ptrtoint ptr %hw109 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %hw109, align 4
  call void @ieee80211_stop_queue(ptr noundef %241, i32 noundef %conv107) #8
  %242 = ptrtoint ptr %wl108 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %wl108, align 4
  %arrayidx = getelementptr %struct.b43_wl, ptr %243, i32 0, i32 27, i32 %conv107
  %244 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 1, ptr %arrayidx, align 1
  %245 = ptrtoint ptr %stopped to i32
  call void @__asan_store1_noabort(i32 %245)
  store i8 1, ptr %stopped, align 4
  %call112 = call zeroext i1 @b43_debug(ptr noundef %dev, i32 noundef 2) #8
  br i1 %call112, label %if.then113, label %if.then105.out_crit_edge

if.then105.out_crit_edge:                         ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then113:                                       ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #10
  %246 = ptrtoint ptr %wl108 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %wl108, align 4
  %248 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %index.i.i, align 8
  call void (ptr, ptr, ...) @b43dbg(ptr noundef %247, ptr noundef nonnull @.str.12, i32 noundef %249) #8
  br label %out

out:                                              ; preds = %if.then113, %if.then105.out_crit_edge, %if.then.i155.out_crit_edge, %lor.lhs.false.out_crit_edge, %if.then97, %if.then87, %do.end58, %if.then37, %if.then35.out_crit_edge
  %err.0 = phi i32 [ -28, %do.end58 ], [ 0, %if.then87 ], [ %retval.0.i158, %if.then97 ], [ -28, %if.then37 ], [ -28, %if.then35.out_crit_edge ], [ 0, %if.then113 ], [ 0, %if.then105.out_crit_edge ], [ 0, %lor.lhs.false.out_crit_edge ], [ 0, %if.then.i155.out_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @b43_debug(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_txskb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_queue(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_dma_handle_txstatus(ptr noundef %dev, ptr noundef %status) local_unnamed_addr #0 align 64 {
entry:
  %meta = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %meta) #8
  %0 = ptrtoint ptr %meta to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %meta, align 4, !annotation !96
  %1 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %status, align 2
  %conv.i = zext i16 %2 to i32
  %and.i = and i32 %conv.i, 61440
  %3 = add nsw i32 %and.i, -4096
  %4 = lshr exact i32 %3, 12
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %4, label %entry.parse_cookie.exit.thread_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb2.i
    i32 3, label %sw.bb3.i
    i32 4, label %sw.bb4.i
  ]

entry.parse_cookie.exit.thread_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %parse_cookie.exit.thread

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %tx_ring_AC_BE.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11, i32 0, i32 1
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %tx_ring_AC_VI.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11, i32 0, i32 2
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %tx_ring_AC_VO.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11, i32 0, i32 3
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %tx_ring_mcast.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11, i32 0, i32 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %sw.bb.i
  %ring.0.in.i = phi ptr [ %tx_ring_mcast.i, %sw.bb4.i ], [ %tx_ring_AC_VO.i, %sw.bb3.i ], [ %tx_ring_AC_VI.i, %sw.bb2.i ], [ %tx_ring_AC_BE.i, %sw.bb1.i ], [ %6, %sw.bb.i ]
  %7 = ptrtoint ptr %ring.0.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %ring.0.i = load ptr, ptr %ring.0.in.i, align 4
  %and6.i = and i32 %conv.i, 4095
  %tobool.not.i = icmp eq ptr %ring.0.i, null
  br i1 %tobool.not.i, label %sw.epilog.i.parse_cookie.exit.thread_crit_edge, label %lor.rhs.i, !prof !98

sw.epilog.i.parse_cookie.exit.thread_crit_edge:   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %parse_cookie.exit.thread

lor.rhs.i:                                        ; preds = %sw.epilog.i
  %nr_slots.i = getelementptr inbounds %struct.b43_dmaring, ptr %ring.0.i, i32 0, i32 5
  %8 = ptrtoint ptr %nr_slots.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_slots.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and6.i, i32 %9)
  %cmp8.not.i = icmp slt i32 %and6.i, %9
  br i1 %cmp8.not.i, label %if.end, label %lor.rhs.i.parse_cookie.exit.thread_crit_edge, !prof !94

lor.rhs.i.parse_cookie.exit.thread_crit_edge:     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %parse_cookie.exit.thread

parse_cookie.exit.thread:                         ; preds = %lor.rhs.i.parse_cookie.exit.thread_crit_edge, %sw.epilog.i.parse_cookie.exit.thread_crit_edge, %entry.parse_cookie.exit.thread_crit_edge
  %wl.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %10 = ptrtoint ptr %wl.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wl.i, align 4
  tail call void (ptr, ptr, ...) @b43dbg(ptr noundef %11, ptr noundef nonnull @.str.29, i32 noundef %conv.i) #8
  br label %cleanup241

if.end:                                           ; preds = %lor.rhs.i
  %tx = getelementptr inbounds %struct.b43_dmaring, ptr %ring.0.i, i32 0, i32 12
  %12 = ptrtoint ptr %tx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tx, align 4, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool4.not = icmp eq i8 %13, 0
  br i1 %tobool4.not, label %do.end, label %if.end.if.end25_crit_edge, !prof !98

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1430, i32 noundef 9, ptr noundef null) #8
  br label %if.end25

if.end25:                                         ; preds = %do.end, %if.end.if.end25_crit_edge
  %current_slot = getelementptr inbounds %struct.b43_dmaring, ptr %ring.0.i, i32 0, i32 7
  %14 = ptrtoint ptr %current_slot to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %current_slot, align 4
  %used_slots = getelementptr inbounds %struct.b43_dmaring, ptr %ring.0.i, i32 0, i32 6
  %16 = ptrtoint ptr %used_slots to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %used_slots, align 8
  %sub = sub i32 %15, %17
  %add = add i32 %sub, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp = icmp slt i32 %add, 0
  br i1 %cmp, label %if.then32, label %if.end25.if.end34_crit_edge

if.end25.if.end34_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then32:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %nr_slots.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nr_slots.i, align 4
  %add33 = add i32 %19, %add
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end25.if.end34_crit_edge
  %firstused.0 = phi i32 [ %add33, %if.then32 ], [ %add, %if.end25.if.end34_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %and6.i, i32 %firstused.0)
  %cmp35.not = icmp eq i32 %and6.i, %firstused.0
  br i1 %cmp35.not, label %if.end34.if.end56_crit_edge, label %if.then42, !prof !94

if.end34.if.end56_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.then42:                                        ; preds = %if.end34
  %call43 = tail call fastcc i32 @next_slot(ptr noundef nonnull %ring.0.i, i32 noundef %firstused.0)
  %call44 = tail call fastcc i32 @next_slot(ptr noundef nonnull %ring.0.i, i32 noundef %call43)
  call void @__sanitizer_cov_trace_cmp4(i32 %and6.i, i32 %call44)
  %cmp45 = icmp eq i32 %and6.i, %call44
  br i1 %cmp45, label %if.then46, label %if.else

if.then46:                                        ; preds = %if.then42
  %.b = load i1, ptr @b43_dma_handle_txstatus.err_out1, align 1
  br i1 %.b, label %if.then46.if.end56_crit_edge, label %if.then48

if.then46.if.end56_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.then48:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  %wl = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %20 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wl, align 4
  %index = getelementptr inbounds %struct.b43_dmaring, ptr %ring.0.i, i32 0, i32 11
  %22 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %index, align 8
  tail call void (ptr, ptr, ...) @b43dbg(ptr noundef %21, ptr noundef nonnull @.str.13, i32 noundef %23, i32 noundef %firstused.0) #8
  store i1 true, ptr @b43_dma_handle_txstatus.err_out1, align 1
  br label %if.end56

if.else:                                          ; preds = %if.then42
  %wl50 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %24 = ptrtoint ptr %wl50 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wl50, align 4
  %index51 = getelementptr inbounds %struct.b43_dmaring, ptr %ring.0.i, i32 0, i32 11
  %26 = ptrtoint ptr %index51 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %index51, align 8
  tail call void (ptr, ptr, ...) @b43dbg(ptr noundef %25, ptr noundef nonnull @.str.14, i32 noundef %27, i32 noundef %firstused.0, i32 noundef %and6.i) #8
  %opensource = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 24, i32 7
  %28 = ptrtoint ptr %opensource to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %opensource, align 4, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool52.not = icmp eq i8 %29, 0
  br i1 %tobool52.not, label %if.else.cleanup241_crit_edge, label %if.then53

if.else.cleanup241_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup241

if.then53:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @b43_controller_restart(ptr noundef %dev, ptr noundef nonnull @.str.15) #8
  br label %cleanup241

if.end56:                                         ; preds = %if.then48, %if.then46.if.end56_crit_edge, %if.end34.if.end56_crit_edge
  %slot.2 = phi i32 [ %and6.i, %if.end34.if.end56_crit_edge ], [ %firstused.0, %if.then46.if.end56_crit_edge ], [ %firstused.0, %if.then48 ]
  %skip.0 = phi i32 [ 0, %if.end34.if.end56_crit_edge ], [ 2, %if.then46.if.end56_crit_edge ], [ 2, %if.then48 ]
  %30 = ptrtoint ptr %ring.0.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ring.0.i, align 8
  %hdr_format.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 24, i32 6
  %dev2.i319 = getelementptr inbounds %struct.b43_dmaring, ptr %ring.0.i, i32 0, i32 16
  %nr_failed_tx_packets = getelementptr inbounds %struct.b43_dmaring, ptr %ring.0.i, i32 0, i32 20
  %nr_succeed_tx_packets = getelementptr inbounds %struct.b43_dmaring, ptr %ring.0.i, i32 0, i32 19
  %frame_count = getelementptr inbounds %struct.b43_txstatus, ptr %status, i32 0, i32 3
  %nr_total_packet_tries = getelementptr inbounds %struct.b43_dmaring, ptr %ring.0.i, i32 0, i32 21
  %wl151 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %next_slot.exit, %if.end56
  %slot.3 = phi i32 [ %slot.2, %if.end56 ], [ %slot.3.be, %next_slot.exit ]
  %skip.1 = phi i32 [ %skip.0, %if.end56 ], [ %spec.select, %next_slot.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot.3)
  %cmp59 = icmp slt i32 %slot.3, 0
  br i1 %cmp59, label %while.cond.do.end77_crit_edge, label %lor.rhs

while.cond.do.end77_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end77

lor.rhs:                                          ; preds = %while.cond
  %32 = ptrtoint ptr %nr_slots.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nr_slots.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %slot.3, i32 %33)
  %cmp61.not = icmp slt i32 %slot.3, %33
  br i1 %cmp61.not, label %lor.rhs.if.end83_crit_edge, label %lor.rhs.do.end77_crit_edge, !prof !94

lor.rhs.do.end77_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end77

lor.rhs.if.end83_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83

do.end77:                                         ; preds = %lor.rhs.do.end77_crit_edge, %while.cond.do.end77_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1474, i32 noundef 9, ptr noundef null) #8
  br label %if.end83

if.end83:                                         ; preds = %do.end77, %lor.rhs.if.end83_crit_edge
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %31, align 4
  %call91 = call ptr %35(ptr noundef nonnull %ring.0.i, i32 noundef %slot.3, ptr noundef nonnull %meta) #8
  %36 = ptrtoint ptr %meta to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %meta, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %magicptr = ptrtoint ptr %39 to i32
  %40 = zext i32 %magicptr to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %magicptr, label %if.then106 [
    i32 -12, label %if.end83.while.end.sink.split_crit_edge
    i32 0, label %if.else112
  ], !prof !102

if.end83.while.end.sink.split_crit_edge:          ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.sink.split

if.then106:                                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  %rate_driver_data.i = getelementptr inbounds %struct.sk_buff, ptr %39, i32 0, i32 3, i32 24
  %dmaaddr = getelementptr inbounds %struct.b43_dmadesc_meta, ptr %37, i32 0, i32 1
  %41 = ptrtoint ptr %dmaaddr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dmaaddr, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %39, i32 0, i32 6
  %43 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len, align 4
  %45 = ptrtoint ptr %dev2.i319 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev2.i319, align 8
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %dma_dev4.i = getelementptr inbounds %struct.b43_bus_dev, ptr %48, i32 0, i32 15
  %49 = ptrtoint ptr %dma_dev4.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dma_dev4.i, align 4
  call void @dma_unmap_page_attrs(ptr noundef %50, i32 noundef %42, i32 noundef %44, i32 noundef 1, i32 noundef 0) #8
  %51 = ptrtoint ptr %rate_driver_data.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rate_driver_data.i, align 4
  call void @kfree(ptr noundef %52) #8
  %53 = ptrtoint ptr %rate_driver_data.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %rate_driver_data.i, align 4
  br label %if.end115

if.else112:                                       ; preds = %if.end83
  %dmaaddr113 = getelementptr inbounds %struct.b43_dmadesc_meta, ptr %37, i32 0, i32 1
  %54 = ptrtoint ptr %dmaaddr113 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dmaaddr113, align 4
  %56 = ptrtoint ptr %hdr_format.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %hdr_format.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %57)
  %58 = icmp ult i32 %57, 3
  br i1 %58, label %switch.lookup, label %if.else112.b43_txhdr_size.exit_crit_edge

if.else112.b43_txhdr_size.exit_crit_edge:         ; preds = %if.else112
  call void @__sanitizer_cov_trace_pc() #10
  br label %b43_txhdr_size.exit

switch.lookup:                                    ; preds = %if.else112
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.b43_dma_handle_txstatus, i32 0, i32 %57
  %59 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %59)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %b43_txhdr_size.exit

b43_txhdr_size.exit:                              ; preds = %switch.lookup, %if.else112.b43_txhdr_size.exit_crit_edge
  %retval.0.i318 = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.else112.b43_txhdr_size.exit_crit_edge ]
  %60 = ptrtoint ptr %dev2.i319 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev2.i319, align 8
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %dma_dev4.i320 = getelementptr inbounds %struct.b43_bus_dev, ptr %63, i32 0, i32 15
  %64 = ptrtoint ptr %dma_dev4.i320 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dma_dev4.i320, align 4
  call void @dma_unmap_page_attrs(ptr noundef %65, i32 noundef %55, i32 noundef %retval.0.i318, i32 noundef 1, i32 noundef 0) #8
  br label %if.end115

if.end115:                                        ; preds = %b43_txhdr_size.exit, %if.then106
  %66 = ptrtoint ptr %meta to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %meta, align 4
  %is_last_fragment = getelementptr inbounds %struct.b43_dmadesc_meta, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %is_last_fragment to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %is_last_fragment, align 4, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool116.not = icmp eq i8 %69, 0
  %70 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %67, align 4
  %tobool157.not = icmp eq ptr %71, null
  br i1 %tobool116.not, label %if.else155, label %if.then117

if.then117:                                       ; preds = %if.end115
  br i1 %tobool157.not, label %if.then117.while.end.sink.split_crit_edge, label %if.end131, !prof !98

if.then117.while.end.sink.split_crit_edge:        ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.sink.split

if.end131:                                        ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #10
  %cb.i321 = getelementptr inbounds %struct.sk_buff, ptr %71, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %skip.1)
  %tobool134.not = icmp eq i32 %skip.1, 0
  %status.b43_dma_handle_txstatus.fake = select i1 %tobool134.not, ptr %status, ptr @b43_dma_handle_txstatus.fake, !prof !94
  %call144 = call zeroext i1 @b43_fill_txstatus_report(ptr noundef %dev, ptr noundef %cb.i321, ptr noundef %status.b43_dma_handle_txstatus.fake) #8
  %nr_succeed_tx_packets.nr_failed_tx_packets = select i1 %call144, ptr %nr_succeed_tx_packets, ptr %nr_failed_tx_packets
  %72 = ptrtoint ptr %nr_succeed_tx_packets.nr_failed_tx_packets to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %nr_succeed_tx_packets.nr_failed_tx_packets, align 8
  %inc = add i64 %73, 1
  store i64 %inc, ptr %nr_succeed_tx_packets.nr_failed_tx_packets, align 8
  %74 = ptrtoint ptr %frame_count to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %frame_count, align 1
  %conv = zext i8 %75 to i64
  %76 = ptrtoint ptr %nr_total_packet_tries to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %nr_total_packet_tries, align 8
  %add150 = add i64 %77, %conv
  store i64 %add150, ptr %nr_total_packet_tries, align 8
  %78 = ptrtoint ptr %wl151 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %wl151, align 4
  %hw = getelementptr inbounds %struct.b43_wl, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hw, align 4
  %82 = ptrtoint ptr %meta to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %meta, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 4
  call void @ieee80211_tx_status(ptr noundef %81, ptr noundef %85) #8
  %86 = ptrtoint ptr %meta to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %meta, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr inttoptr (i32 -12 to ptr), ptr %87, align 4
  br label %if.end168

if.else155:                                       ; preds = %if.end115
  br i1 %tobool157.not, label %if.else155.if.end168_crit_edge, label %if.else155.while.end.sink.split_crit_edge, !prof !94

if.else155.while.end.sink.split_crit_edge:        ; preds = %if.else155
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.sink.split

if.else155.if.end168_crit_edge:                   ; preds = %if.else155
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end168

if.end168:                                        ; preds = %if.else155.if.end168_crit_edge, %if.end131
  %89 = ptrtoint ptr %used_slots to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %used_slots, align 8
  %dec = add i32 %90, -1
  store i32 %dec, ptr %used_slots, align 8
  %91 = ptrtoint ptr %meta to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %meta, align 4
  %is_last_fragment170 = getelementptr inbounds %struct.b43_dmadesc_meta, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %is_last_fragment170 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %is_last_fragment170, align 4, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool171.not = icmp ne i8 %94, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %skip.1)
  %tobool173.not = icmp eq i32 %skip.1, 0
  %or.cond = select i1 %tobool171.not, i1 %tobool173.not, i1 false
  br i1 %or.cond, label %if.end168.while.end_crit_edge, label %if.end175

if.end168.while.end_crit_edge:                    ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end175:                                        ; preds = %if.end168
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %slot.3)
  %cmp.i = icmp sgt i32 %slot.3, -2
  br i1 %cmp.i, label %land.rhs.i, label %if.end175.do.end.i_crit_edge

if.end175.do.end.i_crit_edge:                     ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.rhs.i:                                       ; preds = %if.end175
  %95 = ptrtoint ptr %nr_slots.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %nr_slots.i, align 4
  %sub.i = add i32 %96, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %slot.3)
  %cmp1.i = icmp slt i32 %sub.i, %slot.3
  br i1 %cmp1.i, label %land.rhs.i.do.end.i_crit_edge, label %land.rhs.i.next_slot.exit_crit_edge, !prof !98

land.rhs.i.next_slot.exit_crit_edge:              ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %next_slot.exit

land.rhs.i.do.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %land.rhs.i.do.end.i_crit_edge, %if.end175.do.end.i_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 264, i32 noundef 9, ptr noundef null) #8
  br label %next_slot.exit

next_slot.exit:                                   ; preds = %do.end.i, %land.rhs.i.next_slot.exit_crit_edge
  %97 = ptrtoint ptr %nr_slots.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %nr_slots.i, align 4
  %sub22.i = add i32 %98, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub22.i, i32 %slot.3)
  %cmp23.i = icmp eq i32 %sub22.i, %slot.3
  %add.i = add i32 %slot.3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %skip.1)
  %cmp177 = icmp sgt i32 %skip.1, 0
  %dec180 = add i32 %skip.1, -1
  %spec.select = select i1 %cmp177, i32 %dec180, i32 0
  %slot.3.be = select i1 %cmp23.i, i32 0, i32 %add.i
  br label %while.cond

while.end.sink.split:                             ; preds = %if.else155.while.end.sink.split_crit_edge, %if.then117.while.end.sink.split_crit_edge, %if.end83.while.end.sink.split_crit_edge
  %.str.17.sink = phi ptr [ @.str.16, %if.end83.while.end.sink.split_crit_edge ], [ @.str.17, %if.then117.while.end.sink.split_crit_edge ], [ @.str.18, %if.else155.while.end.sink.split_crit_edge ]
  %99 = ptrtoint ptr %wl151 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %wl151, align 4
  %index130 = getelementptr inbounds %struct.b43_dmaring, ptr %ring.0.i, i32 0, i32 11
  %101 = ptrtoint ptr %index130 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %index130, align 8
  call void (ptr, ptr, ...) @b43dbg(ptr noundef %100, ptr noundef nonnull %.str.17.sink, i32 noundef %slot.3, i32 noundef %firstused.0, i32 noundef %102) #8
  br label %while.end

while.end:                                        ; preds = %while.end.sink.split, %if.end168.while.end_crit_edge
  %stopped = getelementptr inbounds %struct.b43_dmaring, ptr %ring.0.i, i32 0, i32 14
  %103 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %stopped, align 4, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool182.not = icmp eq i8 %104, 0
  br i1 %tobool182.not, label %while.end.if.end218_crit_edge, label %if.then183

while.end.if.end218_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end218

if.then183:                                       ; preds = %while.end
  %105 = ptrtoint ptr %nr_slots.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %nr_slots.i, align 4
  %107 = ptrtoint ptr %used_slots to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %used_slots, align 8
  %sub.i325 = sub i32 %106, %108
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i325)
  %cmp186 = icmp slt i32 %sub.i325, 2
  br i1 %cmp186, label %do.end203, label %if.then183.if.end209_crit_edge, !prof !98

if.then183.if.end209_crit_edge:                   ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end209

do.end203:                                        ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1564, i32 noundef 9, ptr noundef null) #8
  br label %if.end209

if.end209:                                        ; preds = %do.end203, %if.then183.if.end209_crit_edge
  %109 = ptrtoint ptr %stopped to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 0, ptr %stopped, align 4
  br label %if.end218

if.end218:                                        ; preds = %if.end209, %while.end.if.end218_crit_edge
  %110 = ptrtoint ptr %wl151 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %wl151, align 4
  %queue_prio = getelementptr inbounds %struct.b43_dmaring, ptr %ring.0.i, i32 0, i32 15
  %112 = ptrtoint ptr %queue_prio to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %queue_prio, align 1
  %idxprom = zext i8 %113 to i32
  %arrayidx = getelementptr %struct.b43_wl, ptr %111, i32 0, i32 27, i32 %idxprom
  %114 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx, align 1, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool220.not = icmp eq i8 %115, 0
  br i1 %tobool220.not, label %if.else227, label %if.then221

if.then221:                                       ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #10
  %116 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 0, ptr %arrayidx, align 1
  br label %if.end237

if.else227:                                       ; preds = %if.end218
  %hw229 = getelementptr inbounds %struct.b43_wl, ptr %111, i32 0, i32 1
  %117 = ptrtoint ptr %hw229 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %hw229, align 4
  call void @ieee80211_wake_queue(ptr noundef %118, i32 noundef %idxprom) #8
  %call232 = call zeroext i1 @b43_debug(ptr noundef %dev, i32 noundef 2) #8
  br i1 %call232, label %if.then233, label %if.else227.if.end237_crit_edge

if.else227.if.end237_crit_edge:                   ; preds = %if.else227
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end237

if.then233:                                       ; preds = %if.else227
  call void @__sanitizer_cov_trace_pc() #10
  %119 = ptrtoint ptr %wl151 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %wl151, align 4
  %index235 = getelementptr inbounds %struct.b43_dmaring, ptr %ring.0.i, i32 0, i32 11
  %121 = ptrtoint ptr %index235 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %index235, align 8
  call void (ptr, ptr, ...) @b43dbg(ptr noundef %120, ptr noundef nonnull @.str.19, i32 noundef %122) #8
  br label %if.end237

if.end237:                                        ; preds = %if.then233, %if.else227.if.end237_crit_edge, %if.then221
  %123 = ptrtoint ptr %wl151 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %wl151, align 4
  %hw239 = getelementptr inbounds %struct.b43_wl, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %hw239 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %hw239, align 4
  %tx_work = getelementptr inbounds %struct.b43_wl, ptr %124, i32 0, i32 25
  call void @ieee80211_queue_work(ptr noundef %126, ptr noundef %tx_work) #8
  br label %cleanup241

cleanup241:                                       ; preds = %if.end237, %if.then53, %if.else.cleanup241_crit_edge, %parse_cookie.exit.thread
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %meta) #8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @next_slot(ptr nocapture noundef readonly %ring, i32 noundef %slot) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %slot)
  %cmp = icmp sgt i32 %slot, -2
  br i1 %cmp, label %land.rhs, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.rhs:                                         ; preds = %entry
  %nr_slots = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 5
  %0 = ptrtoint ptr %nr_slots to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_slots, align 4
  %sub = add i32 %1, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %slot)
  %cmp1 = icmp slt i32 %sub, %slot
  br i1 %cmp1, label %land.rhs.do.end_crit_edge, label %land.rhs.if.end_crit_edge, !prof !98

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %land.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 264, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge
  %nr_slots21 = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 5
  %2 = ptrtoint ptr %nr_slots21 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_slots21, align 4
  %sub22 = add i32 %3, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub22, i32 %slot)
  %cmp23 = icmp eq i32 %sub22, %slot
  %add = add i32 %slot, 1
  %retval.0 = select i1 %cmp23, i32 0, i32 %add
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_controller_restart(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @b43_fill_txstatus_report(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_tx_status(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_queue(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_dma_handle_rx_overflow(ptr noundef %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 12
  %0 = ptrtoint ptr %tx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tx, align 4, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !94

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1672, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ring, align 8
  %get_current_rxslot = getelementptr inbounds %struct.b43_dma_ops, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %get_current_rxslot to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_current_rxslot, align 4
  %call = tail call i32 %5(ptr noundef %ring) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp.i = icmp sgt i32 %call, -1
  br i1 %cmp.i, label %land.rhs.i, label %if.end.do.end.i_crit_edge

if.end.do.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.rhs.i:                                       ; preds = %if.end
  %nr_slots.i = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 5
  %6 = ptrtoint ptr %nr_slots.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_slots.i, align 4
  %sub.i = add i32 %7, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %call)
  %cmp1.i = icmp slt i32 %sub.i, %call
  br i1 %cmp1.i, label %land.rhs.i.do.end.i_crit_edge, label %land.rhs.i.if.end.i_crit_edge, !prof !98

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.rhs.i.do.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %land.rhs.i.do.end.i_crit_edge, %if.end.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 272, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp21.i = icmp eq i32 %call, 0
  br i1 %cmp21.i, label %if.then22.i, label %if.end.i.prev_slot.exit_crit_edge

if.end.i.prev_slot.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %prev_slot.exit

if.then22.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %nr_slots23.i = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 5
  %8 = ptrtoint ptr %nr_slots23.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_slots23.i, align 4
  br label %prev_slot.exit

prev_slot.exit:                                   ; preds = %if.then22.i, %if.end.i.prev_slot.exit_crit_edge
  %retval.0.in.i = phi i32 [ %9, %if.then22.i ], [ %call, %if.end.i.prev_slot.exit_crit_edge ]
  %retval.0.i = add i32 %retval.0.in.i, -1
  %10 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ring, align 8
  %set_current_rxslot = getelementptr inbounds %struct.b43_dma_ops, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %set_current_rxslot to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set_current_rxslot, align 4
  tail call void %13(ptr noundef %ring, i32 noundef %retval.0.i) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_dma_rx(ptr noundef %ring) local_unnamed_addr #0 align 64 {
entry:
  %meta.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %tx = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 12
  %2 = ptrtoint ptr %tx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tx, align 4, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !94

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1693, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %get_current_rxslot = getelementptr inbounds %struct.b43_dma_ops, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %get_current_rxslot to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_current_rxslot, align 4
  %call = tail call i32 %5(ptr noundef %ring) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %land.rhs, label %if.end.do.end40_crit_edge

if.end.do.end40_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end40

land.rhs:                                         ; preds = %if.end
  %nr_slots = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 5
  %6 = ptrtoint ptr %nr_slots to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_slots, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %7)
  %cmp22.not = icmp slt i32 %call, %7
  br i1 %cmp22.not, label %land.rhs.if.end46_crit_edge, label %land.rhs.do.end40_crit_edge, !prof !94

land.rhs.do.end40_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end40

land.rhs.if.end46_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

do.end40:                                         ; preds = %land.rhs.do.end40_crit_edge, %if.end.do.end40_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1695, i32 noundef 9, ptr noundef null) #8
  br label %if.end46

if.end46:                                         ; preds = %do.end40, %land.rhs.if.end46_crit_edge
  %current_slot54 = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 7
  %8 = ptrtoint ptr %current_slot54 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %current_slot54, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %call)
  %cmp55.not112 = icmp eq i32 %9, %call
  br i1 %cmp55.not112, label %if.end46.do.body57_crit_edge, label %for.body.lr.ph

if.end46.do.body57_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body57

for.body.lr.ph:                                   ; preds = %if.end46
  %rx_buffersize.i = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 9
  %dev.i.i = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 16
  %frameoffset.i.i = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 8
  %nr_slots.i83 = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 5
  %max_used_slots.i = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 17
  %index.i = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %next_slot.exit.for.body_crit_edge, %for.body.lr.ph
  %used_slots.0115 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %next_slot.exit.for.body_crit_edge ]
  %storemerge113 = phi i32 [ %9, %for.body.lr.ph ], [ %retval.0.i, %next_slot.exit.for.body_crit_edge ]
  %10 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ring, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %meta.i) #8
  %12 = ptrtoint ptr %meta.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 -1 to ptr), ptr %meta.i, align 4, !annotation !96
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %11, align 4
  %call.i = call ptr %14(ptr noundef %ring, i32 noundef %storemerge113, ptr noundef nonnull %meta.i) #8
  %15 = ptrtoint ptr %meta.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %meta.i, align 4
  %dmaaddr2.i = getelementptr inbounds %struct.b43_dmadesc_meta, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %dmaaddr2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dmaaddr2.i, align 4
  %19 = ptrtoint ptr %rx_buffersize.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %rx_buffersize.i, align 4
  %conv.i = zext i16 %20 to i32
  %21 = ptrtoint ptr %tx to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %tx, align 4, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i.i, label %for.body.sync_descbuffer_for_cpu.exit.i_crit_edge, label %do.end.i.i, !prof !94

for.body.sync_descbuffer_for_cpu.exit.i_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sync_descbuffer_for_cpu.exit.i

do.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 380, i32 noundef 9, ptr noundef null) #8
  br label %sync_descbuffer_for_cpu.exit.i

sync_descbuffer_for_cpu.exit.i:                   ; preds = %do.end.i.i, %for.body.sync_descbuffer_for_cpu.exit.i_crit_edge
  %23 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i.i, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %dma_dev.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %26, i32 0, i32 15
  %27 = ptrtoint ptr %dma_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dma_dev.i.i, align 4
  call void @dma_sync_single_for_cpu(ptr noundef %28, i32 noundef %18, i32 noundef %conv.i, i32 noundef 2) #8
  %29 = ptrtoint ptr %meta.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %meta.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %32, i32 0, i32 19
  %33 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %34, align 1
  %37 = call i16 @llvm.bswap.i16(i16 %36) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %cmp.i = icmp eq i16 %36, 0
  br i1 %cmp.i, label %do.body.i, label %sync_descbuffer_for_cpu.exit.i.if.end18.i_crit_edge

sync_descbuffer_for_cpu.exit.i.if.end18.i_crit_edge: ; preds = %sync_descbuffer_for_cpu.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i

do.body.i:                                        ; preds = %sync_descbuffer_for_cpu.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %38(i32 noundef 429496) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !103
  %39 = ptrtoint ptr %34 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %34, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %cmp8.i = icmp eq i16 %40, 0
  br i1 %cmp8.i, label %do.body.i.1, label %do.body.i.do.end.i_crit_edge

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.body.i.1:                                      ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %41(i32 noundef 429496) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !103
  %42 = ptrtoint ptr %34 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %43 = load i16, ptr %34, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %cmp8.i.1 = icmp eq i16 %43, 0
  br i1 %cmp8.i.1, label %do.body.i.2, label %do.body.i.1.do.end.i_crit_edge

do.body.i.1.do.end.i_crit_edge:                   ; preds = %do.body.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.body.i.2:                                      ; preds = %do.body.i.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %44(i32 noundef 429496) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !103
  %45 = ptrtoint ptr %34 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %46 = load i16, ptr %34, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %cmp8.i.2 = icmp eq i16 %46, 0
  br i1 %cmp8.i.2, label %do.body.i.3, label %do.body.i.2.do.end.i_crit_edge

do.body.i.2.do.end.i_crit_edge:                   ; preds = %do.body.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.body.i.3:                                      ; preds = %do.body.i.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %47(i32 noundef 429496) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !103
  %48 = ptrtoint ptr %34 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %49 = load i16, ptr %34, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %cmp8.i.3 = icmp eq i16 %49, 0
  br i1 %cmp8.i.3, label %do.body.i.4, label %do.body.i.3.do.end.i_crit_edge

do.body.i.3.do.end.i_crit_edge:                   ; preds = %do.body.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.body.i.4:                                      ; preds = %do.body.i.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %50(i32 noundef 429496) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !103
  %51 = ptrtoint ptr %34 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 2)
  %52 = load i16, ptr %34, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %cmp8.i.4 = icmp eq i16 %52, 0
  br i1 %cmp8.i.4, label %do.body.i.5, label %do.body.i.4.do.end.i_crit_edge

do.body.i.4.do.end.i_crit_edge:                   ; preds = %do.body.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.body.i.5:                                      ; preds = %do.body.i.4
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %53(i32 noundef 429496) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !103
  %54 = ptrtoint ptr %34 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 2)
  %55 = load i16, ptr %34, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %cmp8.i.5 = icmp eq i16 %55, 0
  br label %do.end.i

do.end.i:                                         ; preds = %do.body.i.5, %do.body.i.4.do.end.i_crit_edge, %do.body.i.3.do.end.i_crit_edge, %do.body.i.2.do.end.i_crit_edge, %do.body.i.1.do.end.i_crit_edge, %do.body.i.do.end.i_crit_edge
  %.lcssa = phi i16 [ %40, %do.body.i.do.end.i_crit_edge ], [ %43, %do.body.i.1.do.end.i_crit_edge ], [ %46, %do.body.i.2.do.end.i_crit_edge ], [ %49, %do.body.i.3.do.end.i_crit_edge ], [ %52, %do.body.i.4.do.end.i_crit_edge ], [ %55, %do.body.i.5 ]
  %cmp8.i.lcssa = phi i1 [ %cmp8.i, %do.body.i.do.end.i_crit_edge ], [ %cmp8.i.1, %do.body.i.1.do.end.i_crit_edge ], [ %cmp8.i.2, %do.body.i.2.do.end.i_crit_edge ], [ %cmp8.i.3, %do.body.i.3.do.end.i_crit_edge ], [ %cmp8.i.4, %do.body.i.4.do.end.i_crit_edge ], [ %cmp8.i.5, %do.body.i.5 ]
  %56 = call i16 @llvm.bswap.i16(i16 %.lcssa) #8
  br i1 %cmp8.i.lcssa, label %cleanup.i, label %do.end.i.if.end18.i_crit_edge, !prof !98

do.end.i.if.end18.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i

cleanup.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %meta.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %meta.i, align 4
  %dmaaddr17.i = getelementptr inbounds %struct.b43_dmadesc_meta, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %dmaaddr17.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dmaaddr17.i, align 4
  br label %drop_recycle_buffer.i

if.end18.i:                                       ; preds = %do.end.i.if.end18.i_crit_edge, %sync_descbuffer_for_cpu.exit.i.if.end18.i_crit_edge
  %len.0.i = phi i16 [ %37, %sync_descbuffer_for_cpu.exit.i.if.end18.i_crit_edge ], [ %56, %do.end.i.if.end18.i_crit_edge ]
  %61 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %data.i, align 4
  %63 = ptrtoint ptr %frameoffset.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %frameoffset.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %62, i32 %64
  %65 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %add.ptr.i.i, align 1
  %arrayidx1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 1
  %67 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx1.i.i, align 1
  %and29.i.i = and i8 %68, %66
  %arrayidx3.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 2
  %69 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx3.i.i, align 1
  %and530.i.i = and i8 %and29.i.i, %70
  %arrayidx6.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 3
  %71 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx6.i.i, align 1
  %and831.i.i = and i8 %and530.i.i, %72
  %arrayidx9.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 4
  %73 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx9.i.i, align 1
  %and1132.i.i = and i8 %and831.i.i, %74
  %arrayidx12.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 5
  %75 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx12.i.i, align 1
  %and1433.i.i = and i8 %and1132.i.i, %76
  %arrayidx15.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 6
  %77 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx15.i.i, align 1
  %and1734.i.i = and i8 %and1433.i.i, %78
  %arrayidx18.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 7
  %79 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx18.i.i, align 1
  %and2035.i.i = and i8 %and1734.i.i, %80
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %and2035.i.i)
  %cmp.i.i = icmp eq i8 %and2035.i.i, -1
  br i1 %cmp.i.i, label %if.then26.i, label %if.end28.i, !prof !98

if.then26.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  %81 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev.i.i, align 8
  %wl.i = getelementptr inbounds %struct.b43_wldev, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %wl.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %wl.i, align 4
  call void (ptr, ptr, ...) @b43dbg(ptr noundef %84, ptr noundef nonnull @.str.30) #8
  %85 = ptrtoint ptr %meta.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %meta.i, align 4
  %dmaaddr27.i = getelementptr inbounds %struct.b43_dmadesc_meta, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %dmaaddr27.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %dmaaddr27.i, align 4
  br label %drop_recycle_buffer.i

if.end28.i:                                       ; preds = %if.end18.i
  %conv29.i = zext i16 %len.0.i to i32
  %add.i = add i32 %64, %conv29.i
  %89 = ptrtoint ptr %rx_buffersize.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %rx_buffersize.i, align 4
  %conv31.i = zext i16 %90 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv31.i)
  %cmp32.i = icmp ugt i32 %add.i, %conv31.i
  br i1 %cmp32.i, label %if.end28.i.while.cond.i_crit_edge, label %if.end63.i, !prof !98

if.end28.i.while.cond.i_crit_edge:                ; preds = %if.end28.i
  br label %while.cond.i

while.cond.i:                                     ; preds = %next_slot.exit94.while.cond.i_crit_edge, %if.end28.i.while.cond.i_crit_edge
  %slot.0 = phi i32 [ %retval.0.i92, %next_slot.exit94.while.cond.i_crit_edge ], [ %storemerge113, %if.end28.i.while.cond.i_crit_edge ]
  %cnt.0.i = phi i32 [ %inc49.i, %next_slot.exit94.while.cond.i_crit_edge ], [ 0, %if.end28.i.while.cond.i_crit_edge ]
  %tmp.0.i = phi i32 [ %sub.i, %next_slot.exit94.while.cond.i_crit_edge ], [ %conv29.i, %if.end28.i.while.cond.i_crit_edge ]
  %91 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %11, align 4
  %call43.i = call ptr %92(ptr noundef %ring, i32 noundef %slot.0, ptr noundef nonnull %meta.i) #8
  %93 = ptrtoint ptr %meta.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %meta.i, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %94, align 4
  %data.i100 = getelementptr inbounds %struct.sk_buff, ptr %96, i32 0, i32 19
  %97 = ptrtoint ptr %data.i100 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %data.i100, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_storeN_noabort(i32 %99, i32 2)
  store i16 0, ptr %98, align 1
  %100 = ptrtoint ptr %rx_buffersize.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %rx_buffersize.i, align 4
  %conv.i102 = zext i16 %101 to i32
  %102 = ptrtoint ptr %frameoffset.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %frameoffset.i.i, align 8
  %add1.i = add i32 %103, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i, i32 %conv.i102)
  %cmp.i103 = icmp ugt i32 %add1.i, %conv.i102
  br i1 %cmp.i103, label %do.end.i104, label %while.cond.i.b43_poison_rx_buffer.exit_crit_edge, !prof !98

while.cond.i.b43_poison_rx_buffer.exit_crit_edge: ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %b43_poison_rx_buffer.exit

do.end.i104:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 587, i32 noundef 9, ptr noundef null) #8
  br label %b43_poison_rx_buffer.exit

b43_poison_rx_buffer.exit:                        ; preds = %do.end.i104, %while.cond.i.b43_poison_rx_buffer.exit_crit_edge
  %104 = ptrtoint ptr %data.i100 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %data.i100, align 4
  %106 = ptrtoint ptr %frameoffset.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %frameoffset.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %105, i32 %107
  %108 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %108, i32 8)
  store i64 -1, ptr %add.ptr.i, align 1
  %109 = ptrtoint ptr %meta.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %meta.i, align 4
  %dmaaddr45.i = getelementptr inbounds %struct.b43_dmadesc_meta, ptr %110, i32 0, i32 1
  %111 = ptrtoint ptr %dmaaddr45.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %dmaaddr45.i, align 4
  %113 = ptrtoint ptr %rx_buffersize.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %rx_buffersize.i, align 4
  %conv47.i = zext i16 %114 to i32
  %115 = ptrtoint ptr %tx to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %tx, align 4, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool.not.i96 = icmp eq i8 %116, 0
  br i1 %tobool.not.i96, label %b43_poison_rx_buffer.exit.sync_descbuffer_for_device.exit_crit_edge, label %do.end.i97, !prof !94

b43_poison_rx_buffer.exit.sync_descbuffer_for_device.exit_crit_edge: ; preds = %b43_poison_rx_buffer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sync_descbuffer_for_device.exit

do.end.i97:                                       ; preds = %b43_poison_rx_buffer.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 389, i32 noundef 9, ptr noundef null) #8
  br label %sync_descbuffer_for_device.exit

sync_descbuffer_for_device.exit:                  ; preds = %do.end.i97, %b43_poison_rx_buffer.exit.sync_descbuffer_for_device.exit_crit_edge
  %117 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev.i.i, align 8
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %118, align 4
  %dma_dev.i = getelementptr inbounds %struct.b43_bus_dev, ptr %120, i32 0, i32 15
  %121 = ptrtoint ptr %dma_dev.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dma_dev.i, align 4
  call void @dma_sync_single_for_device(ptr noundef %122, i32 noundef %112, i32 noundef %conv47.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %slot.0)
  %cmp.i82 = icmp sgt i32 %slot.0, -2
  br i1 %cmp.i82, label %land.rhs.i86, label %sync_descbuffer_for_device.exit.do.end.i87_crit_edge

sync_descbuffer_for_device.exit.do.end.i87_crit_edge: ; preds = %sync_descbuffer_for_device.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i87

land.rhs.i86:                                     ; preds = %sync_descbuffer_for_device.exit
  %123 = ptrtoint ptr %nr_slots.i83 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %nr_slots.i83, align 4
  %sub.i84 = add i32 %124, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i84, i32 %slot.0)
  %cmp1.i85 = icmp slt i32 %sub.i84, %slot.0
  br i1 %cmp1.i85, label %land.rhs.i86.do.end.i87_crit_edge, label %land.rhs.i86.next_slot.exit94_crit_edge, !prof !98

land.rhs.i86.next_slot.exit94_crit_edge:          ; preds = %land.rhs.i86
  call void @__sanitizer_cov_trace_pc() #10
  br label %next_slot.exit94

land.rhs.i86.do.end.i87_crit_edge:                ; preds = %land.rhs.i86
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i87

do.end.i87:                                       ; preds = %land.rhs.i86.do.end.i87_crit_edge, %sync_descbuffer_for_device.exit.do.end.i87_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 264, i32 noundef 9, ptr noundef null) #8
  br label %next_slot.exit94

next_slot.exit94:                                 ; preds = %do.end.i87, %land.rhs.i86.next_slot.exit94_crit_edge
  %125 = ptrtoint ptr %nr_slots.i83 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %nr_slots.i83, align 4
  %sub22.i89 = add i32 %126, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub22.i89, i32 %slot.0)
  %cmp23.i90 = icmp eq i32 %sub22.i89, %slot.0
  %add.i91 = add i32 %slot.0, 1
  %retval.0.i92 = select i1 %cmp23.i90, i32 0, i32 %add.i91
  %inc49.i = add i32 %cnt.0.i, 1
  %127 = ptrtoint ptr %rx_buffersize.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %rx_buffersize.i, align 4
  %conv51.i = zext i16 %128 to i32
  %sub.i = sub nsw i32 %tmp.0.i, %conv51.i
  %cmp52.i = icmp slt i32 %sub.i, 1
  br i1 %cmp52.i, label %while.end.i, label %next_slot.exit94.while.cond.i_crit_edge

next_slot.exit94.while.cond.i_crit_edge:          ; preds = %next_slot.exit94
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

while.end.i:                                      ; preds = %next_slot.exit94
  call void @__sanitizer_cov_trace_pc() #10
  %conv51.i.le = zext i16 %128 to i32
  %129 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dev.i.i, align 8
  %wl57.i = getelementptr inbounds %struct.b43_wldev, ptr %130, i32 0, i32 1
  %131 = ptrtoint ptr %wl57.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %wl57.i, align 4
  call void (ptr, ptr, ...) @b43err(ptr noundef %132, ptr noundef nonnull @.str.31, i32 noundef %conv29.i, i32 noundef %conv51.i.le, i32 noundef %inc49.i) #8
  br label %dma_rx.exit

if.end63.i:                                       ; preds = %if.end28.i
  %133 = ptrtoint ptr %meta.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %meta.i, align 4
  %dmaaddr64.i = getelementptr inbounds %struct.b43_dmadesc_meta, ptr %134, i32 0, i32 1
  %135 = ptrtoint ptr %dmaaddr64.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %dmaaddr64.i, align 4
  %call65.i = call fastcc i32 @setup_rx_descbuffer(ptr noundef %ring, ptr noundef %call.i, ptr noundef %134, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.i)
  %tobool66.not.i = icmp eq i32 %call65.i, 0
  br i1 %tobool66.not.i, label %if.end76.i, label %if.then73.i, !prof !94

if.then73.i:                                      ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #10
  %137 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dev.i.i, align 8
  %wl75.i = getelementptr inbounds %struct.b43_wldev, ptr %138, i32 0, i32 1
  %139 = ptrtoint ptr %wl75.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %wl75.i, align 4
  call void (ptr, ptr, ...) @b43dbg(ptr noundef %140, ptr noundef nonnull @.str.32) #8
  br label %drop_recycle_buffer.i

if.end76.i:                                       ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #10
  %141 = ptrtoint ptr %rx_buffersize.i to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %rx_buffersize.i, align 4
  %conv78.i = zext i16 %142 to i32
  %143 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %dev.i.i, align 8
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %144, align 4
  %dma_dev4.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %146, i32 0, i32 15
  %147 = ptrtoint ptr %dma_dev4.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %dma_dev4.i.i, align 4
  call void @dma_unmap_page_attrs(ptr noundef %148, i32 noundef %136, i32 noundef %conv78.i, i32 noundef 2, i32 noundef 0) #8
  %149 = ptrtoint ptr %frameoffset.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %frameoffset.i.i, align 8
  %add81.i = add i32 %150, %conv29.i
  %call82.i = call ptr @skb_put(ptr noundef %32, i32 noundef %add81.i) #8
  %151 = ptrtoint ptr %frameoffset.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %frameoffset.i.i, align 8
  %call84.i = call ptr @skb_pull(ptr noundef %32, i32 noundef %152) #8
  %153 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %dev.i.i, align 8
  call void @b43_rx(ptr noundef %154, ptr noundef %32, ptr noundef %34) #8
  br label %dma_rx.exit

drop_recycle_buffer.i:                            ; preds = %if.then73.i, %if.then26.i, %cleanup.i
  %dmaaddr.1.i = phi i32 [ %60, %cleanup.i ], [ %88, %if.then26.i ], [ %136, %if.then73.i ]
  %155 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %data.i, align 4
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_storeN_noabort(i32 %157, i32 2)
  store i16 0, ptr %156, align 1
  %158 = ptrtoint ptr %rx_buffersize.i to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %rx_buffersize.i, align 4
  %conv.i.i = zext i16 %159 to i32
  %160 = ptrtoint ptr %frameoffset.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %frameoffset.i.i, align 8
  %add1.i.i = add i32 %161, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i.i, i32 %conv.i.i)
  %cmp.i148.i = icmp ugt i32 %add1.i.i, %conv.i.i
  br i1 %cmp.i148.i, label %do.end.i149.i, label %drop_recycle_buffer.i.b43_poison_rx_buffer.exit.i_crit_edge, !prof !98

drop_recycle_buffer.i.b43_poison_rx_buffer.exit.i_crit_edge: ; preds = %drop_recycle_buffer.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %b43_poison_rx_buffer.exit.i

do.end.i149.i:                                    ; preds = %drop_recycle_buffer.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 587, i32 noundef 9, ptr noundef null) #8
  br label %b43_poison_rx_buffer.exit.i

b43_poison_rx_buffer.exit.i:                      ; preds = %do.end.i149.i, %drop_recycle_buffer.i.b43_poison_rx_buffer.exit.i_crit_edge
  %162 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %data.i, align 4
  %164 = ptrtoint ptr %frameoffset.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %frameoffset.i.i, align 8
  %add.ptr.i150.i = getelementptr i8, ptr %163, i32 %165
  %166 = ptrtoint ptr %add.ptr.i150.i to i32
  call void @__asan_storeN_noabort(i32 %166, i32 8)
  store i64 -1, ptr %add.ptr.i150.i, align 1
  %167 = ptrtoint ptr %rx_buffersize.i to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %rx_buffersize.i, align 4
  %conv88.i = zext i16 %168 to i32
  %169 = ptrtoint ptr %tx to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %tx, align 4, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %170)
  %tobool.not.i152.i = icmp eq i8 %170, 0
  br i1 %tobool.not.i152.i, label %b43_poison_rx_buffer.exit.i.sync_descbuffer_for_device.exit.i_crit_edge, label %do.end.i153.i, !prof !94

b43_poison_rx_buffer.exit.i.sync_descbuffer_for_device.exit.i_crit_edge: ; preds = %b43_poison_rx_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sync_descbuffer_for_device.exit.i

do.end.i153.i:                                    ; preds = %b43_poison_rx_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 389, i32 noundef 9, ptr noundef null) #8
  br label %sync_descbuffer_for_device.exit.i

sync_descbuffer_for_device.exit.i:                ; preds = %do.end.i153.i, %b43_poison_rx_buffer.exit.i.sync_descbuffer_for_device.exit.i_crit_edge
  %171 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %dev.i.i, align 8
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %172, align 4
  %dma_dev.i155.i = getelementptr inbounds %struct.b43_bus_dev, ptr %174, i32 0, i32 15
  %175 = ptrtoint ptr %dma_dev.i155.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %dma_dev.i155.i, align 4
  call void @dma_sync_single_for_device(ptr noundef %176, i32 noundef %dmaaddr.1.i, i32 noundef %conv88.i, i32 noundef 2) #8
  br label %dma_rx.exit

dma_rx.exit:                                      ; preds = %sync_descbuffer_for_device.exit.i, %if.end76.i, %while.end.i
  %slot.1 = phi i32 [ %storemerge113, %sync_descbuffer_for_device.exit.i ], [ %retval.0.i92, %while.end.i ], [ %storemerge113, %if.end76.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %meta.i) #8
  %inc = add i32 %used_slots.0115, 1
  %177 = ptrtoint ptr %max_used_slots.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %max_used_slots.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %178, i32 %inc)
  %cmp.not.i = icmp slt i32 %178, %inc
  br i1 %cmp.not.i, label %if.end.i, label %dma_rx.exit.update_max_used_slots.exit_crit_edge

dma_rx.exit.update_max_used_slots.exit_crit_edge: ; preds = %dma_rx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_max_used_slots.exit

if.end.i:                                         ; preds = %dma_rx.exit
  %179 = ptrtoint ptr %max_used_slots.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %inc, ptr %max_used_slots.i, align 4
  %180 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %dev.i.i, align 8
  %call.i75 = call zeroext i1 @b43_debug(ptr noundef %181, i32 noundef 2) #8
  br i1 %call.i75, label %if.then2.i, label %if.end.i.update_max_used_slots.exit_crit_edge

if.end.i.update_max_used_slots.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_max_used_slots.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %182 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %dev.i.i, align 8
  %wl.i76 = getelementptr inbounds %struct.b43_wldev, ptr %183, i32 0, i32 1
  %184 = ptrtoint ptr %wl.i76 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %wl.i76, align 4
  %186 = ptrtoint ptr %max_used_slots.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %max_used_slots.i, align 4
  %188 = ptrtoint ptr %tx to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %tx, align 4, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %189)
  %tobool.not.i = icmp eq i8 %189, 0
  %cond.i = select i1 %tobool.not.i, ptr @.str.35, ptr @.str.34
  %190 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %index.i, align 8
  call void (ptr, ptr, ...) @b43dbg(ptr noundef %185, ptr noundef nonnull @.str.33, i32 noundef %187, ptr noundef nonnull %cond.i, i32 noundef %191) #8
  br label %update_max_used_slots.exit

update_max_used_slots.exit:                       ; preds = %if.then2.i, %if.end.i.update_max_used_slots.exit_crit_edge, %dma_rx.exit.update_max_used_slots.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %slot.1)
  %cmp.i77 = icmp sgt i32 %slot.1, -2
  br i1 %cmp.i77, label %land.rhs.i, label %update_max_used_slots.exit.do.end.i79_crit_edge

update_max_used_slots.exit.do.end.i79_crit_edge:  ; preds = %update_max_used_slots.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i79

land.rhs.i:                                       ; preds = %update_max_used_slots.exit
  %192 = ptrtoint ptr %nr_slots.i83 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %nr_slots.i83, align 4
  %sub.i78 = add i32 %193, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i78, i32 %slot.1)
  %cmp1.i = icmp slt i32 %sub.i78, %slot.1
  br i1 %cmp1.i, label %land.rhs.i.do.end.i79_crit_edge, label %land.rhs.i.next_slot.exit_crit_edge, !prof !98

land.rhs.i.next_slot.exit_crit_edge:              ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %next_slot.exit

land.rhs.i.do.end.i79_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i79

do.end.i79:                                       ; preds = %land.rhs.i.do.end.i79_crit_edge, %update_max_used_slots.exit.do.end.i79_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 264, i32 noundef 9, ptr noundef null) #8
  br label %next_slot.exit

next_slot.exit:                                   ; preds = %do.end.i79, %land.rhs.i.next_slot.exit_crit_edge
  %194 = ptrtoint ptr %nr_slots.i83 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %nr_slots.i83, align 4
  %sub22.i = add i32 %195, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub22.i, i32 %slot.1)
  %cmp23.i = icmp eq i32 %sub22.i, %slot.1
  %add.i80 = add i32 %slot.1, 1
  %retval.0.i = select i1 %cmp23.i, i32 0, i32 %add.i80
  %cmp55.not = icmp eq i32 %retval.0.i, %call
  br i1 %cmp55.not, label %next_slot.exit.do.body57_crit_edge, label %next_slot.exit.for.body_crit_edge

next_slot.exit.for.body_crit_edge:                ; preds = %next_slot.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

next_slot.exit.do.body57_crit_edge:               ; preds = %next_slot.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body57

do.body57:                                        ; preds = %next_slot.exit.do.body57_crit_edge, %if.end46.do.body57_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  call void @arm_heavy_mb() #8
  %set_current_rxslot = getelementptr inbounds %struct.b43_dma_ops, ptr %1, i32 0, i32 6
  %196 = ptrtoint ptr %set_current_rxslot to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %set_current_rxslot, align 4
  call void %197(ptr noundef %ring, i32 noundef %call) #8
  %198 = ptrtoint ptr %current_slot54 to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %call, ptr %current_slot54, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_dma_tx_suspend(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @b43_power_saving_ctl_bits(ptr noundef %dev, i32 noundef 4) #8
  %0 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tx.i = getelementptr inbounds %struct.b43_dmaring, ptr %2, i32 0, i32 12
  %3 = ptrtoint ptr %tx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %tx.i, align 4, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %do.end.i, label %entry.b43_dma_tx_suspend_ring.exit_crit_edge, !prof !98

entry.b43_dma_tx_suspend_ring.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %b43_dma_tx_suspend_ring.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1709, i32 noundef 9, ptr noundef null) #8
  br label %b43_dma_tx_suspend_ring.exit

b43_dma_tx_suspend_ring.exit:                     ; preds = %do.end.i, %entry.b43_dma_tx_suspend_ring.exit_crit_edge
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 8
  %tx_suspend.i = getelementptr inbounds %struct.b43_dma_ops, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %tx_suspend.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tx_suspend.i, align 4
  tail call void %8(ptr noundef %2) #8
  %tx_ring_AC_BE = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11, i32 0, i32 1
  %9 = ptrtoint ptr %tx_ring_AC_BE to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tx_ring_AC_BE, align 4
  %tx.i6 = getelementptr inbounds %struct.b43_dmaring, ptr %10, i32 0, i32 12
  %11 = ptrtoint ptr %tx.i6 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %tx.i6, align 4, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i7 = icmp eq i8 %12, 0
  br i1 %tobool.not.i7, label %do.end.i8, label %b43_dma_tx_suspend_ring.exit.b43_dma_tx_suspend_ring.exit10_crit_edge, !prof !98

b43_dma_tx_suspend_ring.exit.b43_dma_tx_suspend_ring.exit10_crit_edge: ; preds = %b43_dma_tx_suspend_ring.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %b43_dma_tx_suspend_ring.exit10

do.end.i8:                                        ; preds = %b43_dma_tx_suspend_ring.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1709, i32 noundef 9, ptr noundef null) #8
  br label %b43_dma_tx_suspend_ring.exit10

b43_dma_tx_suspend_ring.exit10:                   ; preds = %do.end.i8, %b43_dma_tx_suspend_ring.exit.b43_dma_tx_suspend_ring.exit10_crit_edge
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %10, align 8
  %tx_suspend.i9 = getelementptr inbounds %struct.b43_dma_ops, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %tx_suspend.i9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tx_suspend.i9, align 4
  tail call void %16(ptr noundef %10) #8
  %tx_ring_AC_VI = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11, i32 0, i32 2
  %17 = ptrtoint ptr %tx_ring_AC_VI to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tx_ring_AC_VI, align 4
  %tx.i11 = getelementptr inbounds %struct.b43_dmaring, ptr %18, i32 0, i32 12
  %19 = ptrtoint ptr %tx.i11 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %tx.i11, align 4, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i12 = icmp eq i8 %20, 0
  br i1 %tobool.not.i12, label %do.end.i13, label %b43_dma_tx_suspend_ring.exit10.b43_dma_tx_suspend_ring.exit15_crit_edge, !prof !98

b43_dma_tx_suspend_ring.exit10.b43_dma_tx_suspend_ring.exit15_crit_edge: ; preds = %b43_dma_tx_suspend_ring.exit10
  call void @__sanitizer_cov_trace_pc() #10
  br label %b43_dma_tx_suspend_ring.exit15

do.end.i13:                                       ; preds = %b43_dma_tx_suspend_ring.exit10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1709, i32 noundef 9, ptr noundef null) #8
  br label %b43_dma_tx_suspend_ring.exit15

b43_dma_tx_suspend_ring.exit15:                   ; preds = %do.end.i13, %b43_dma_tx_suspend_ring.exit10.b43_dma_tx_suspend_ring.exit15_crit_edge
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %18, align 8
  %tx_suspend.i14 = getelementptr inbounds %struct.b43_dma_ops, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %tx_suspend.i14 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tx_suspend.i14, align 4
  tail call void %24(ptr noundef %18) #8
  %tx_ring_AC_VO = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11, i32 0, i32 3
  %25 = ptrtoint ptr %tx_ring_AC_VO to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tx_ring_AC_VO, align 4
  %tx.i16 = getelementptr inbounds %struct.b43_dmaring, ptr %26, i32 0, i32 12
  %27 = ptrtoint ptr %tx.i16 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %tx.i16, align 4, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i17 = icmp eq i8 %28, 0
  br i1 %tobool.not.i17, label %do.end.i18, label %b43_dma_tx_suspend_ring.exit15.b43_dma_tx_suspend_ring.exit20_crit_edge, !prof !98

b43_dma_tx_suspend_ring.exit15.b43_dma_tx_suspend_ring.exit20_crit_edge: ; preds = %b43_dma_tx_suspend_ring.exit15
  call void @__sanitizer_cov_trace_pc() #10
  br label %b43_dma_tx_suspend_ring.exit20

do.end.i18:                                       ; preds = %b43_dma_tx_suspend_ring.exit15
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1709, i32 noundef 9, ptr noundef null) #8
  br label %b43_dma_tx_suspend_ring.exit20

b43_dma_tx_suspend_ring.exit20:                   ; preds = %do.end.i18, %b43_dma_tx_suspend_ring.exit15.b43_dma_tx_suspend_ring.exit20_crit_edge
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %26, align 8
  %tx_suspend.i19 = getelementptr inbounds %struct.b43_dma_ops, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %tx_suspend.i19 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tx_suspend.i19, align 4
  tail call void %32(ptr noundef %26) #8
  %tx_ring_mcast = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11, i32 0, i32 4
  %33 = ptrtoint ptr %tx_ring_mcast to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tx_ring_mcast, align 4
  %tx.i21 = getelementptr inbounds %struct.b43_dmaring, ptr %34, i32 0, i32 12
  %35 = ptrtoint ptr %tx.i21 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %tx.i21, align 4, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i22 = icmp eq i8 %36, 0
  br i1 %tobool.not.i22, label %do.end.i23, label %b43_dma_tx_suspend_ring.exit20.b43_dma_tx_suspend_ring.exit25_crit_edge, !prof !98

b43_dma_tx_suspend_ring.exit20.b43_dma_tx_suspend_ring.exit25_crit_edge: ; preds = %b43_dma_tx_suspend_ring.exit20
  call void @__sanitizer_cov_trace_pc() #10
  br label %b43_dma_tx_suspend_ring.exit25

do.end.i23:                                       ; preds = %b43_dma_tx_suspend_ring.exit20
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1709, i32 noundef 9, ptr noundef null) #8
  br label %b43_dma_tx_suspend_ring.exit25

b43_dma_tx_suspend_ring.exit25:                   ; preds = %do.end.i23, %b43_dma_tx_suspend_ring.exit20.b43_dma_tx_suspend_ring.exit25_crit_edge
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %34, align 8
  %tx_suspend.i24 = getelementptr inbounds %struct.b43_dma_ops, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %tx_suspend.i24 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tx_suspend.i24, align 4
  tail call void %40(ptr noundef %34) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_power_saving_ctl_bits(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_dma_tx_resume(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11
  %tx_ring_mcast = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11, i32 0, i32 4
  %1 = ptrtoint ptr %tx_ring_mcast to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tx_ring_mcast, align 4
  %tx.i = getelementptr inbounds %struct.b43_dmaring, ptr %2, i32 0, i32 12
  %3 = ptrtoint ptr %tx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %tx.i, align 4, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %do.end.i, label %entry.b43_dma_tx_resume_ring.exit_crit_edge, !prof !98

entry.b43_dma_tx_resume_ring.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %b43_dma_tx_resume_ring.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1715, i32 noundef 9, ptr noundef null) #8
  br label %b43_dma_tx_resume_ring.exit

b43_dma_tx_resume_ring.exit:                      ; preds = %do.end.i, %entry.b43_dma_tx_resume_ring.exit_crit_edge
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 8
  %tx_resume.i = getelementptr inbounds %struct.b43_dma_ops, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %tx_resume.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tx_resume.i, align 4
  tail call void %8(ptr noundef %2) #8
  %tx_ring_AC_VO = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11, i32 0, i32 3
  %9 = ptrtoint ptr %tx_ring_AC_VO to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tx_ring_AC_VO, align 4
  %tx.i6 = getelementptr inbounds %struct.b43_dmaring, ptr %10, i32 0, i32 12
  %11 = ptrtoint ptr %tx.i6 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %tx.i6, align 4, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i7 = icmp eq i8 %12, 0
  br i1 %tobool.not.i7, label %do.end.i8, label %b43_dma_tx_resume_ring.exit.b43_dma_tx_resume_ring.exit10_crit_edge, !prof !98

b43_dma_tx_resume_ring.exit.b43_dma_tx_resume_ring.exit10_crit_edge: ; preds = %b43_dma_tx_resume_ring.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %b43_dma_tx_resume_ring.exit10

do.end.i8:                                        ; preds = %b43_dma_tx_resume_ring.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1715, i32 noundef 9, ptr noundef null) #8
  br label %b43_dma_tx_resume_ring.exit10

b43_dma_tx_resume_ring.exit10:                    ; preds = %do.end.i8, %b43_dma_tx_resume_ring.exit.b43_dma_tx_resume_ring.exit10_crit_edge
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %10, align 8
  %tx_resume.i9 = getelementptr inbounds %struct.b43_dma_ops, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %tx_resume.i9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tx_resume.i9, align 4
  tail call void %16(ptr noundef %10) #8
  %tx_ring_AC_VI = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11, i32 0, i32 2
  %17 = ptrtoint ptr %tx_ring_AC_VI to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tx_ring_AC_VI, align 4
  %tx.i11 = getelementptr inbounds %struct.b43_dmaring, ptr %18, i32 0, i32 12
  %19 = ptrtoint ptr %tx.i11 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %tx.i11, align 4, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i12 = icmp eq i8 %20, 0
  br i1 %tobool.not.i12, label %do.end.i13, label %b43_dma_tx_resume_ring.exit10.b43_dma_tx_resume_ring.exit15_crit_edge, !prof !98

b43_dma_tx_resume_ring.exit10.b43_dma_tx_resume_ring.exit15_crit_edge: ; preds = %b43_dma_tx_resume_ring.exit10
  call void @__sanitizer_cov_trace_pc() #10
  br label %b43_dma_tx_resume_ring.exit15

do.end.i13:                                       ; preds = %b43_dma_tx_resume_ring.exit10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1715, i32 noundef 9, ptr noundef null) #8
  br label %b43_dma_tx_resume_ring.exit15

b43_dma_tx_resume_ring.exit15:                    ; preds = %do.end.i13, %b43_dma_tx_resume_ring.exit10.b43_dma_tx_resume_ring.exit15_crit_edge
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %18, align 8
  %tx_resume.i14 = getelementptr inbounds %struct.b43_dma_ops, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %tx_resume.i14 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tx_resume.i14, align 4
  tail call void %24(ptr noundef %18) #8
  %tx_ring_AC_BE = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 11, i32 0, i32 1
  %25 = ptrtoint ptr %tx_ring_AC_BE to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tx_ring_AC_BE, align 4
  %tx.i16 = getelementptr inbounds %struct.b43_dmaring, ptr %26, i32 0, i32 12
  %27 = ptrtoint ptr %tx.i16 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %tx.i16, align 4, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i17 = icmp eq i8 %28, 0
  br i1 %tobool.not.i17, label %do.end.i18, label %b43_dma_tx_resume_ring.exit15.b43_dma_tx_resume_ring.exit20_crit_edge, !prof !98

b43_dma_tx_resume_ring.exit15.b43_dma_tx_resume_ring.exit20_crit_edge: ; preds = %b43_dma_tx_resume_ring.exit15
  call void @__sanitizer_cov_trace_pc() #10
  br label %b43_dma_tx_resume_ring.exit20

do.end.i18:                                       ; preds = %b43_dma_tx_resume_ring.exit15
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1715, i32 noundef 9, ptr noundef null) #8
  br label %b43_dma_tx_resume_ring.exit20

b43_dma_tx_resume_ring.exit20:                    ; preds = %do.end.i18, %b43_dma_tx_resume_ring.exit15.b43_dma_tx_resume_ring.exit20_crit_edge
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %26, align 8
  %tx_resume.i19 = getelementptr inbounds %struct.b43_dma_ops, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %tx_resume.i19 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tx_resume.i19, align 4
  tail call void %32(ptr noundef %26) #8
  %33 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %0, align 4
  %tx.i21 = getelementptr inbounds %struct.b43_dmaring, ptr %34, i32 0, i32 12
  %35 = ptrtoint ptr %tx.i21 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %tx.i21, align 4, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i22 = icmp eq i8 %36, 0
  br i1 %tobool.not.i22, label %do.end.i23, label %b43_dma_tx_resume_ring.exit20.b43_dma_tx_resume_ring.exit25_crit_edge, !prof !98

b43_dma_tx_resume_ring.exit20.b43_dma_tx_resume_ring.exit25_crit_edge: ; preds = %b43_dma_tx_resume_ring.exit20
  call void @__sanitizer_cov_trace_pc() #10
  br label %b43_dma_tx_resume_ring.exit25

do.end.i23:                                       ; preds = %b43_dma_tx_resume_ring.exit20
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1715, i32 noundef 9, ptr noundef null) #8
  br label %b43_dma_tx_resume_ring.exit25

b43_dma_tx_resume_ring.exit25:                    ; preds = %do.end.i23, %b43_dma_tx_resume_ring.exit20.b43_dma_tx_resume_ring.exit25_crit_edge
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %34, align 8
  %tx_resume.i24 = getelementptr inbounds %struct.b43_dma_ops, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %tx_resume.i24 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tx_resume.i24, align 4
  tail call void %40(ptr noundef %34) #8
  tail call void @b43_power_saving_ctl_bits(ptr noundef %dev, i32 noundef 0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_dma_direct_fifo_rx(ptr nocapture noundef readonly %dev, i32 noundef %engine_index, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %3, label %entry.sw.epilog.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb3.i
  ]

entry.sw.epilog.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %entry
  %5 = getelementptr inbounds %struct.b43_bus_dev, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i.i, align 4
  %aread32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %aread32.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %aread32.i.i, align 4
  %call.i.i = tail call i32 %13(ptr noundef %7, i16 noundef zeroext 1280) #8
  %and.i = and i32 %call.i.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb.i.sw.epilog.i_crit_edge, label %sw.bb.i.b43_engine_type.exit_crit_edge

sw.bb.i.b43_engine_type.exit_crit_edge:           ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %b43_engine_type.exit

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %entry
  %14 = getelementptr inbounds %struct.b43_bus_dev, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %read32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read32.i.i, align 4
  %call.i28.i = tail call i32 %20(ptr noundef %16, i16 noundef zeroext 3996) #8
  %and6.i = and i32 %call.i28.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %sw.bb3.i.sw.epilog.i_crit_edge, label %sw.bb3.i.b43_engine_type.exit_crit_edge

sw.bb3.i.b43_engine_type.exit_crit_edge:          ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %b43_engine_type.exit

sw.bb3.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb3.i.sw.epilog.i_crit_edge, %sw.bb.i.sw.epilog.i_crit_edge, %entry.sw.epilog.i_crit_edge
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %write32.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %22, i32 0, i32 10
  %23 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write32.i.i, align 4
  tail call void %24(ptr noundef %22, i16 noundef zeroext 512, i32 noundef 196608) #8
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  %read32.i29.i = getelementptr inbounds %struct.b43_bus_dev, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %read32.i29.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read32.i29.i, align 4
  %call.i30.i = tail call i32 %28(ptr noundef %26, i16 noundef zeroext 512) #8
  br label %b43_engine_type.exit

b43_engine_type.exit:                             ; preds = %sw.epilog.i, %sw.bb3.i.b43_engine_type.exit_crit_edge, %sw.bb.i.b43_engine_type.exit_crit_edge
  %retval.0.i = phi i1 [ true, %sw.bb.i.b43_engine_type.exit_crit_edge ], [ true, %sw.bb3.i.b43_engine_type.exit_crit_edge ], [ false, %sw.epilog.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %engine_index)
  %cmp2.i = icmp ugt i32 %engine_index, 5
  br i1 %cmp2.i, label %return.sink.split.i, label %b43_engine_type.exit.b43_dmacontroller_base.exit_crit_edge, !prof !98

b43_engine_type.exit.b43_dmacontroller_base.exit_crit_edge: ; preds = %b43_engine_type.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %b43_dmacontroller_base.exit

return.sink.split.i:                              ; preds = %b43_engine_type.exit
  call void @__sanitizer_cov_trace_pc() #10
  %..i4 = select i1 %retval.0.i, i32 338, i32 342
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef %..i4, i32 noundef 9, ptr noundef null) #8
  br label %b43_dmacontroller_base.exit

b43_dmacontroller_base.exit:                      ; preds = %return.sink.split.i, %b43_engine_type.exit.b43_dmacontroller_base.exit_crit_edge
  %b43_dmacontroller_base.map64.b43_dmacontroller_base.map32.i = select i1 %retval.0.i, ptr @b43_dmacontroller_base.map64, ptr @b43_dmacontroller_base.map32
  %retval.0.in.i = getelementptr [6 x i16], ptr %b43_dmacontroller_base.map64.b43_dmacontroller_base.map32.i, i32 0, i32 %engine_index
  %29 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %retval.0.i5 = load i16, ptr %retval.0.in.i, align 2
  br i1 %retval.0.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %b43_dmacontroller_base.exit
  call void @__sanitizer_cov_trace_pc() #10
  %add.i = add i16 %retval.0.i5, 32
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  %read32.i.i7 = getelementptr inbounds %struct.b43_bus_dev, ptr %31, i32 0, i32 8
  %32 = ptrtoint ptr %read32.i.i7 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read32.i.i7, align 4
  %call.i.i8 = tail call i32 %33(ptr noundef %31, i16 noundef zeroext %add.i) #8
  %and.i9 = and i32 %call.i.i8, -257
  %masksel35.i = select i1 %enable, i32 256, i32 0
  %spec.select.i = or i32 %and.i9, %masksel35.i
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 4
  %write32.i.i10 = getelementptr inbounds %struct.b43_bus_dev, ptr %35, i32 0, i32 10
  %36 = ptrtoint ptr %write32.i.i10 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write32.i.i10, align 4
  tail call void %37(ptr noundef %35, i16 noundef zeroext %add.i, i32 noundef %spec.select.i) #8
  br label %direct_fifo_rx.exit

if.else.i:                                        ; preds = %b43_dmacontroller_base.exit
  call void @__sanitizer_cov_trace_pc() #10
  %add7.i = add i16 %retval.0.i5, 16
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 4
  %read32.i32.i = getelementptr inbounds %struct.b43_bus_dev, ptr %39, i32 0, i32 8
  %40 = ptrtoint ptr %read32.i32.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read32.i32.i, align 4
  %call.i33.i = tail call i32 %41(ptr noundef %39, i16 noundef zeroext %add7.i) #8
  %and10.i = and i32 %call.i33.i, -257
  %masksel.i = select i1 %enable, i32 256, i32 0
  %spec.select31.i = or i32 %and10.i, %masksel.i
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 4
  %write32.i34.i = getelementptr inbounds %struct.b43_bus_dev, ptr %43, i32 0, i32 10
  %44 = ptrtoint ptr %write32.i34.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write32.i34.i, align 4
  tail call void %45(ptr noundef %43, i16 noundef zeroext %add7.i, i32 noundef %spec.select31.i) #8
  br label %direct_fifo_rx.exit

direct_fifo_rx.exit:                              ; preds = %if.else.i, %if.then.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @op64_idx2desc(ptr nocapture noundef readonly %ring, i32 noundef %slot, ptr nocapture noundef writeonly %meta) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %meta1 = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 2
  %0 = ptrtoint ptr %meta1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %meta1, align 8
  %arrayidx = getelementptr %struct.b43_dmadesc_meta, ptr %1, i32 %slot
  %2 = ptrtoint ptr %meta to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %arrayidx, ptr %meta, align 4
  %descbase = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 1
  %3 = ptrtoint ptr %descbase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %descbase, align 4
  %arrayidx2 = getelementptr %struct.b43_dmadesc64, ptr %4, i32 %slot
  ret ptr %arrayidx2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @op64_fill_descriptor(ptr nocapture noundef readonly %ring, ptr noundef %desc, i32 noundef %dmaaddr, i16 noundef zeroext %bufsize, i32 noundef %start, i32 noundef %end, i32 noundef %irq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %descbase1 = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 1
  %0 = ptrtoint ptr %descbase1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %descbase1, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %desc to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %sub.ptr.sub)
  %cmp = icmp sgt i32 %sub.ptr.sub, -16
  br i1 %cmp, label %land.rhs, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.rhs:                                         ; preds = %entry
  %nr_slots = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 5
  %2 = ptrtoint ptr %nr_slots to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_slots, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div, i32 %3)
  %cmp2.not = icmp slt i32 %sub.ptr.div, %3
  br i1 %cmp2.not, label %land.rhs.if.end_crit_edge, label %land.rhs.do.end_crit_edge, !prof !94

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 189, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge
  %dev = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 16
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %translation_in_low.i = getelementptr inbounds %struct.b43_wldev, ptr %5, i32 0, i32 11, i32 0, i32 7
  %6 = ptrtoint ptr %translation_in_low.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %translation_in_low.i, align 4, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.then6.i, label %b43_dma_address.exit

b43_dma_address.exit:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %and1.i = and i32 %dmaaddr, 1073741823
  %translation.i = getelementptr inbounds %struct.b43_wldev, ptr %5, i32 0, i32 11, i32 0, i32 6
  %8 = ptrtoint ptr %translation.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %translation.i, align 4
  %or.i = or i32 %9, %and1.i
  br label %b43_dma_address.exit66

if.then6.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %translation8.i = getelementptr inbounds %struct.b43_wldev, ptr %5, i32 0, i32 11, i32 0, i32 6
  %10 = ptrtoint ptr %translation8.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %translation8.i, align 4
  br label %b43_dma_address.exit66

b43_dma_address.exit66:                           ; preds = %if.then6.i, %b43_dma_address.exit
  %addr.1.i69 = phi i32 [ %or.i, %b43_dma_address.exit ], [ %dmaaddr, %if.then6.i ]
  %addr.1.i65 = phi i32 [ 0, %b43_dma_address.exit ], [ %11, %if.then6.i ]
  %nr_slots26 = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 5
  %12 = ptrtoint ptr %nr_slots26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr_slots26, align 4
  %sub = add i32 %13, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div, i32 %sub)
  %cmp27 = icmp eq i32 %sub.ptr.div, %sub
  %spec.select = select i1 %cmp27, i32 268435456, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %start)
  %tobool30.not = icmp eq i32 %start, 0
  %or32 = or i32 %spec.select, -2147483648
  %ctl0.1 = select i1 %tobool30.not, i32 %spec.select, i32 %or32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %end)
  %tobool34.not = icmp eq i32 %end, 0
  %or36 = or i32 %ctl0.1, 1073741824
  %ctl0.2 = select i1 %tobool34.not, i32 %ctl0.1, i32 %or36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq)
  %tobool38.not = icmp eq i32 %irq, 0
  %or40 = or i32 %ctl0.2, 536870912
  %ctl0.3 = select i1 %tobool38.not, i32 %ctl0.2, i32 %or40
  %14 = and i16 %bufsize, 8191
  %and = zext i16 %14 to i32
  %15 = lshr i32 %dmaaddr, 14
  %phi.bo34.i.op = and i32 %15, 196608
  %shl = select i1 %tobool.not.i, i32 0, i32 %phi.bo34.i.op
  %or44 = or i32 %shl, %and
  %16 = tail call i32 @llvm.bswap.i32(i32 %ctl0.3)
  %17 = ptrtoint ptr %desc to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %16, ptr %desc, align 1
  %18 = tail call i32 @llvm.bswap.i32(i32 %or44)
  %control1 = getelementptr inbounds %struct.b43_dmadesc64, ptr %desc, i32 0, i32 1
  %19 = ptrtoint ptr %control1 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %18, ptr %control1, align 1
  %20 = tail call i32 @llvm.bswap.i32(i32 %addr.1.i69)
  %address_low = getelementptr inbounds %struct.b43_dmadesc64, ptr %desc, i32 0, i32 2
  %21 = ptrtoint ptr %address_low to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %20, ptr %address_low, align 1
  %22 = tail call i32 @llvm.bswap.i32(i32 %addr.1.i65)
  %address_high = getelementptr inbounds %struct.b43_dmadesc64, ptr %desc, i32 0, i32 3
  %23 = ptrtoint ptr %address_high to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %22, ptr %address_high, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @op64_poke_tx(ptr nocapture noundef readonly %ring, i32 noundef %slot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %slot, 4
  %dev.i = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 16
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 8
  %mmio_base.i = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 10
  %2 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mmio_base.i, align 2
  %add.i = add i16 %3, 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %write32.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write32.i.i, align 4
  tail call void %7(ptr noundef %5, i16 noundef zeroext %add.i, i32 noundef %mul) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @op64_tx_suspend(ptr nocapture noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 16
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 8
  %mmio_base.i = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 10
  %2 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mmio_base.i, align 2
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %read32.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %5, i16 noundef zeroext %3) #8
  %or = or i32 %call.i.i, 2
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 8
  %10 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %mmio_base.i, align 2
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  %write32.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %13, i32 0, i32 10
  %14 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write32.i.i, align 4
  tail call void %15(ptr noundef %13, i16 noundef zeroext %11, i32 noundef %or) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @op64_tx_resume(ptr nocapture noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 16
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 8
  %mmio_base.i = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 10
  %2 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mmio_base.i, align 2
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %read32.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %5, i16 noundef zeroext %3) #8
  %and = and i32 %call.i.i, -3
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 8
  %10 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %mmio_base.i, align 2
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  %write32.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %13, i32 0, i32 10
  %14 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write32.i.i, align 4
  tail call void %15(ptr noundef %13, i16 noundef zeroext %11, i32 noundef %and) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @op64_get_current_rxslot(ptr nocapture noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 16
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 8
  %mmio_base.i = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 10
  %2 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mmio_base.i, align 2
  %add.i = add i16 %3, 48
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %read32.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %5, i16 noundef zeroext %add.i) #8
  %and = lshr i32 %call.i.i, 4
  %div2 = and i32 %and, 511
  ret i32 %div2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @op64_set_current_rxslot(ptr nocapture noundef readonly %ring, i32 noundef %slot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %slot, 4
  %dev.i = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 16
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 8
  %mmio_base.i = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 10
  %2 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mmio_base.i, align 2
  %add.i = add i16 %3, 36
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %write32.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write32.i.i, align 4
  tail call void %7(ptr noundef %5, i16 noundef zeroext %add.i, i32 noundef %mul) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @op32_idx2desc(ptr nocapture noundef readonly %ring, i32 noundef %slot, ptr nocapture noundef writeonly %meta) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %meta1 = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 2
  %0 = ptrtoint ptr %meta1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %meta1, align 8
  %arrayidx = getelementptr %struct.b43_dmadesc_meta, ptr %1, i32 %slot
  %2 = ptrtoint ptr %meta to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %arrayidx, ptr %meta, align 4
  %descbase = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 1
  %3 = ptrtoint ptr %descbase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %descbase, align 4
  %arrayidx2 = getelementptr %struct.b43_dmadesc32, ptr %4, i32 %slot
  ret ptr %arrayidx2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @op32_fill_descriptor(ptr nocapture noundef readonly %ring, ptr noundef %desc, i32 noundef %dmaaddr, i16 noundef zeroext %bufsize, i32 noundef %start, i32 noundef %end, i32 noundef %irq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %descbase1 = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 1
  %0 = ptrtoint ptr %descbase1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %descbase1, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %desc to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %sub.ptr.sub)
  %cmp = icmp sgt i32 %sub.ptr.sub, -8
  br i1 %cmp, label %land.rhs, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.rhs:                                         ; preds = %entry
  %nr_slots = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 5
  %2 = ptrtoint ptr %nr_slots to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_slots, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div, i32 %3)
  %cmp2.not = icmp slt i32 %sub.ptr.div, %3
  br i1 %cmp2.not, label %land.rhs.if.end_crit_edge, label %land.rhs.do.end_crit_edge, !prof !94

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 97, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge
  %dev = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 16
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %translation_in_low.i = getelementptr inbounds %struct.b43_wldev, ptr %5, i32 0, i32 11, i32 0, i32 7
  %6 = ptrtoint ptr %translation_in_low.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %translation_in_low.i, align 4, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.end.b43_dma_address.exit_crit_edge, label %if.then.i

if.end.b43_dma_address.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %b43_dma_address.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %and1.i = and i32 %dmaaddr, 1073741823
  %translation.i = getelementptr inbounds %struct.b43_wldev, ptr %5, i32 0, i32 11, i32 0, i32 6
  %8 = ptrtoint ptr %translation.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %translation.i, align 4
  %or.i = or i32 %9, %and1.i
  br label %b43_dma_address.exit

b43_dma_address.exit:                             ; preds = %if.then.i, %if.end.b43_dma_address.exit_crit_edge
  %addr.1.i = phi i32 [ %or.i, %if.then.i ], [ %dmaaddr, %if.end.b43_dma_address.exit_crit_edge ]
  %10 = and i16 %bufsize, 8191
  %and = zext i16 %10 to i32
  %nr_slots24 = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 5
  %11 = ptrtoint ptr %nr_slots24 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr_slots24, align 4
  %sub = add i32 %12, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div, i32 %sub)
  %cmp25 = icmp eq i32 %sub.ptr.div, %sub
  %or = or i32 %and, 268435456
  %spec.select = select i1 %cmp25, i32 %or, i32 %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %start)
  %tobool29.not = icmp eq i32 %start, 0
  %or31 = or i32 %spec.select, -2147483648
  %ctl.1 = select i1 %tobool29.not, i32 %spec.select, i32 %or31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %end)
  %tobool33.not = icmp eq i32 %end, 0
  %or35 = or i32 %ctl.1, 1073741824
  %ctl.2 = select i1 %tobool33.not, i32 %ctl.1, i32 %or35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq)
  %tobool37.not = icmp eq i32 %irq, 0
  %or39 = or i32 %ctl.2, 536870912
  %ctl.3 = select i1 %tobool37.not, i32 %ctl.2, i32 %or39
  %13 = lshr i32 %dmaaddr, 14
  %phi.bo34.i.op = and i32 %13, 196608
  %shl = select i1 %tobool.not.i, i32 0, i32 %phi.bo34.i.op
  %or42 = or i32 %ctl.3, %shl
  %14 = tail call i32 @llvm.bswap.i32(i32 %or42)
  %15 = ptrtoint ptr %desc to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %14, ptr %desc, align 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %addr.1.i)
  %address = getelementptr inbounds %struct.b43_dmadesc32, ptr %desc, i32 0, i32 1
  %17 = ptrtoint ptr %address to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %16, ptr %address, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @op32_poke_tx(ptr nocapture noundef readonly %ring, i32 noundef %slot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %slot, 3
  %dev.i = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 16
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 8
  %mmio_base.i = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 10
  %2 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mmio_base.i, align 2
  %add.i = add i16 %3, 8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %write32.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write32.i.i, align 4
  tail call void %7(ptr noundef %5, i16 noundef zeroext %add.i, i32 noundef %mul) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @op32_tx_suspend(ptr nocapture noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 16
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 8
  %mmio_base.i = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 10
  %2 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mmio_base.i, align 2
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %read32.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %5, i16 noundef zeroext %3) #8
  %or = or i32 %call.i.i, 2
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 8
  %10 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %mmio_base.i, align 2
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  %write32.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %13, i32 0, i32 10
  %14 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write32.i.i, align 4
  tail call void %15(ptr noundef %13, i16 noundef zeroext %11, i32 noundef %or) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @op32_tx_resume(ptr nocapture noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 16
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 8
  %mmio_base.i = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 10
  %2 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mmio_base.i, align 2
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %read32.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %5, i16 noundef zeroext %3) #8
  %and = and i32 %call.i.i, -3
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 8
  %10 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %mmio_base.i, align 2
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  %write32.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %13, i32 0, i32 10
  %14 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write32.i.i, align 4
  tail call void %15(ptr noundef %13, i16 noundef zeroext %11, i32 noundef %and) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @op32_get_current_rxslot(ptr nocapture noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 16
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 8
  %mmio_base.i = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 10
  %2 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mmio_base.i, align 2
  %add.i = add i16 %3, 28
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %read32.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %5, i16 noundef zeroext %add.i) #8
  %and = lshr i32 %call.i.i, 3
  %div2 = and i32 %and, 511
  ret i32 %div2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @op32_set_current_rxslot(ptr nocapture noundef readonly %ring, i32 noundef %slot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %slot, 3
  %dev.i = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 16
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 8
  %mmio_base.i = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 10
  %2 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mmio_base.i, align 2
  %add.i = add i16 %3, 24
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %write32.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write32.i.i, align 4
  tail call void %7(ptr noundef %5, i16 noundef zeroext %add.i, i32 noundef %mul) #8
  ret void
}

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
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @setup_rx_descbuffer(ptr noundef %ring, ptr noundef %desc, ptr nocapture noundef writeonly %meta, i32 noundef %gfp_flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 12
  %0 = ptrtoint ptr %tx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tx, align 4, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !94

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 599, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %rx_buffersize = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 9
  %2 = ptrtoint ptr %rx_buffersize to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %rx_buffersize, align 4
  %conv = zext i16 %3 to i32
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %conv, i32 noundef %gfp_flags) #8
  %tobool20.not = icmp eq ptr %call.i, null
  br i1 %tobool20.not, label %if.end.cleanup_crit_edge, label %if.end30, !prof !98

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end30:                                         ; preds = %if.end
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 0, ptr %5, align 1
  %7 = ptrtoint ptr %rx_buffersize to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %rx_buffersize, align 4
  %conv.i = zext i16 %8 to i32
  %frameoffset.i = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 8
  %9 = ptrtoint ptr %frameoffset.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %frameoffset.i, align 8
  %add1.i = add i32 %10, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i, i32 %conv.i)
  %cmp.i = icmp ugt i32 %add1.i, %conv.i
  br i1 %cmp.i, label %do.end.i, label %if.end30.b43_poison_rx_buffer.exit_crit_edge, !prof !98

if.end30.b43_poison_rx_buffer.exit_crit_edge:     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %b43_poison_rx_buffer.exit

do.end.i:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 587, i32 noundef 9, ptr noundef null) #8
  br label %b43_poison_rx_buffer.exit

b43_poison_rx_buffer.exit:                        ; preds = %do.end.i, %if.end30.b43_poison_rx_buffer.exit_crit_edge
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i, align 4
  %13 = ptrtoint ptr %frameoffset.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %frameoffset.i, align 8
  %add.ptr.i = getelementptr i8, ptr %12, i32 %14
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 8)
  store i64 -1, ptr %add.ptr.i, align 1
  %16 = load ptr, ptr %data.i, align 4
  %17 = ptrtoint ptr %rx_buffersize to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %rx_buffersize, align 4
  %dev2.i = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 16
  %19 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev2.i, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %dma_dev4.i = getelementptr inbounds %struct.b43_bus_dev, ptr %22, i32 0, i32 15
  %23 = ptrtoint ptr %dma_dev4.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dma_dev4.i, align 4
  %call.i9.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %16) #8
  br i1 %call.i9.i, label %land.rhs.i11.i, label %if.end39.i24.i

land.rhs.i11.i:                                   ; preds = %b43_poison_rx_buffer.exit
  %.b1.i10.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i10.i, label %land.rhs.i11.i.map_descbuffer.exit_crit_edge, label %if.then.i15.i, !prof !94

land.rhs.i11.i.map_descbuffer.exit_crit_edge:     ; preds = %land.rhs.i11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %map_descbuffer.exit

if.then.i15.i:                                    ; preds = %land.rhs.i11.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i12.i = tail call ptr @dev_driver_string(ptr noundef %24) #8
  %init_name.i.i13.i = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %init_name.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %init_name.i.i13.i, align 8
  %tobool.not.i.i14.i = icmp eq ptr %26, null
  br i1 %tobool.not.i.i14.i, label %if.end.i.i16.i, label %if.then.i15.i.dev_name.exit.i18.i_crit_edge

if.then.i15.i.dev_name.exit.i18.i_crit_edge:      ; preds = %if.then.i15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i18.i

if.end.i.i16.i:                                   ; preds = %if.then.i15.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %24, align 4
  br label %dev_name.exit.i18.i

dev_name.exit.i18.i:                              ; preds = %if.end.i.i16.i, %if.then.i15.i.dev_name.exit.i18.i_crit_edge
  %retval.0.i.i17.i = phi ptr [ %28, %if.end.i.i16.i ], [ %26, %if.then.i15.i.dev_name.exit.i18.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.25, ptr noundef %call16.i12.i, ptr noundef %retval.0.i.i17.i) #8
  br label %map_descbuffer.exit

if.end39.i24.i:                                   ; preds = %b43_poison_rx_buffer.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv32 = zext i16 %18 to i32
  tail call void @debug_dma_map_single(ptr noundef %24, ptr noundef %16, i32 noundef %conv32) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %29 = load ptr, ptr @mem_map, align 4
  %30 = ptrtoint ptr %16 to i32
  %sub.i19.i = add i32 %30, 1073741824
  %shr.i20.i = lshr i32 %sub.i19.i, 12
  %add.ptr.i21.i = getelementptr %struct.page, ptr %29, i32 %shr.i20.i
  %and.i22.i = and i32 %30, 4095
  %call41.i23.i = tail call i32 @dma_map_page_attrs(ptr noundef %24, ptr noundef %add.ptr.i21.i, i32 noundef %and.i22.i, i32 noundef %conv32, i32 noundef 2, i32 noundef 0) #8
  br label %map_descbuffer.exit

map_descbuffer.exit:                              ; preds = %if.end39.i24.i, %dev_name.exit.i18.i, %land.rhs.i11.i.map_descbuffer.exit_crit_edge
  %dmaaddr.0.i = phi i32 [ %call41.i23.i, %if.end39.i24.i ], [ -1, %dev_name.exit.i18.i ], [ -1, %land.rhs.i11.i.map_descbuffer.exit_crit_edge ]
  %31 = ptrtoint ptr %rx_buffersize to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %rx_buffersize, align 4
  %conv35 = zext i16 %32 to i32
  %33 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev2.i, align 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %dma_dev.i = getelementptr inbounds %struct.b43_bus_dev, ptr %36, i32 0, i32 15
  %37 = ptrtoint ptr %dma_dev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dma_dev.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %38, i32 noundef %dmaaddr.0.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dmaaddr.0.i)
  %cmp.i.not.i = icmp eq i32 %dmaaddr.0.i, -1
  br i1 %cmp.i.not.i, label %map_descbuffer.exit.if.then37_crit_edge, label %if.end.i, !prof !98

map_descbuffer.exit.if.then37_crit_edge:          ; preds = %map_descbuffer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then37

if.end.i:                                         ; preds = %map_descbuffer.exit
  %type.i = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 13
  %39 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %type.i, align 8
  %41 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %40, label %if.end.i.if.end61_crit_edge [
    i32 30, label %sw.bb.i
    i32 32, label %sw.bb8.i
  ]

if.end.i.if.end61_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

sw.bb.i:                                          ; preds = %if.end.i
  %conv.i97 = zext i32 %dmaaddr.0.i to i64
  %conv4.i = zext i16 %32 to i64
  %add.i = add nuw nsw i64 %conv4.i, %conv.i97
  call void @__sanitizer_cov_trace_const_cmp8(i64 1073741824, i64 %add.i)
  %cmp.i98 = icmp ugt i64 %add.i, 1073741824
  br i1 %cmp.i98, label %sw.bb.i.address_error.i_crit_edge, label %sw.bb.i.if.end61_crit_edge

sw.bb.i.if.end61_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

sw.bb.i.address_error.i_crit_edge:                ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %address_error.i

sw.bb8.i:                                         ; preds = %if.end.i
  %conv9.i = zext i32 %dmaaddr.0.i to i64
  %conv10.i = zext i16 %32 to i64
  %add11.i = add nuw nsw i64 %conv10.i, %conv9.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add11.i)
  %cmp12.i = icmp ugt i64 %add11.i, 4294967296
  br i1 %cmp12.i, label %sw.bb8.i.address_error.i_crit_edge, label %sw.bb8.i.if.end61_crit_edge

sw.bb8.i.if.end61_crit_edge:                      ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

sw.bb8.i.address_error.i_crit_edge:               ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %address_error.i

address_error.i:                                  ; preds = %sw.bb8.i.address_error.i_crit_edge, %sw.bb.i.address_error.i_crit_edge
  %42 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev2.i, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %dma_dev4.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %45, i32 0, i32 15
  %46 = ptrtoint ptr %dma_dev4.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dma_dev4.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %47, i32 noundef %dmaaddr.0.i, i32 noundef %conv35, i32 noundef 2, i32 noundef 0) #8
  br label %if.then37

if.then37:                                        ; preds = %address_error.i, %map_descbuffer.exit.if.then37_crit_edge
  %or = or i32 %gfp_flags, 1
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i, i32 noundef 1) #8
  %48 = ptrtoint ptr %rx_buffersize to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %rx_buffersize, align 4
  %conv39 = zext i16 %49 to i32
  %call.i99 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %conv39, i32 noundef %or) #8
  %tobool41.not = icmp eq ptr %call.i99, null
  br i1 %tobool41.not, label %if.then37.cleanup_crit_edge, label %if.end51, !prof !98

if.then37.cleanup_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end51:                                         ; preds = %if.then37
  %data.i100 = getelementptr inbounds %struct.sk_buff, ptr %call.i99, i32 0, i32 19
  %50 = ptrtoint ptr %data.i100 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data.i100, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_storeN_noabort(i32 %52, i32 2)
  store i16 0, ptr %51, align 1
  %53 = ptrtoint ptr %rx_buffersize to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %rx_buffersize, align 4
  %conv.i102 = zext i16 %54 to i32
  %55 = ptrtoint ptr %frameoffset.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %frameoffset.i, align 8
  %add1.i104 = add i32 %56, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i104, i32 %conv.i102)
  %cmp.i105 = icmp ugt i32 %add1.i104, %conv.i102
  br i1 %cmp.i105, label %do.end.i106, label %if.end51.b43_poison_rx_buffer.exit109_crit_edge, !prof !98

if.end51.b43_poison_rx_buffer.exit109_crit_edge:  ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %b43_poison_rx_buffer.exit109

do.end.i106:                                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 587, i32 noundef 9, ptr noundef null) #8
  br label %b43_poison_rx_buffer.exit109

b43_poison_rx_buffer.exit109:                     ; preds = %do.end.i106, %if.end51.b43_poison_rx_buffer.exit109_crit_edge
  %57 = ptrtoint ptr %data.i100 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data.i100, align 4
  %59 = ptrtoint ptr %frameoffset.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %frameoffset.i, align 8
  %add.ptr.i107 = getelementptr i8, ptr %58, i32 %60
  %61 = ptrtoint ptr %add.ptr.i107 to i32
  call void @__asan_storeN_noabort(i32 %61, i32 8)
  store i64 -1, ptr %add.ptr.i107, align 1
  %62 = load ptr, ptr %data.i100, align 4
  %63 = ptrtoint ptr %rx_buffersize to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %rx_buffersize, align 4
  %65 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev2.i, align 8
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  %dma_dev4.i111 = getelementptr inbounds %struct.b43_bus_dev, ptr %68, i32 0, i32 15
  %69 = ptrtoint ptr %dma_dev4.i111 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dma_dev4.i111, align 4
  %call.i9.i112 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %62) #8
  br i1 %call.i9.i112, label %land.rhs.i11.i114, label %if.end39.i24.i127

land.rhs.i11.i114:                                ; preds = %b43_poison_rx_buffer.exit109
  %.b1.i10.i113 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i10.i113, label %land.rhs.i11.i114.map_descbuffer.exit130_crit_edge, label %if.then.i15.i118, !prof !94

land.rhs.i11.i114.map_descbuffer.exit130_crit_edge: ; preds = %land.rhs.i11.i114
  call void @__sanitizer_cov_trace_pc() #10
  br label %map_descbuffer.exit130

if.then.i15.i118:                                 ; preds = %land.rhs.i11.i114
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i12.i115 = tail call ptr @dev_driver_string(ptr noundef %70) #8
  %init_name.i.i13.i116 = getelementptr inbounds %struct.device, ptr %70, i32 0, i32 3
  %71 = ptrtoint ptr %init_name.i.i13.i116 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %init_name.i.i13.i116, align 8
  %tobool.not.i.i14.i117 = icmp eq ptr %72, null
  br i1 %tobool.not.i.i14.i117, label %if.end.i.i16.i119, label %if.then.i15.i118.dev_name.exit.i18.i121_crit_edge

if.then.i15.i118.dev_name.exit.i18.i121_crit_edge: ; preds = %if.then.i15.i118
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i18.i121

if.end.i.i16.i119:                                ; preds = %if.then.i15.i118
  call void @__sanitizer_cov_trace_pc() #10
  %73 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %70, align 4
  br label %dev_name.exit.i18.i121

dev_name.exit.i18.i121:                           ; preds = %if.end.i.i16.i119, %if.then.i15.i118.dev_name.exit.i18.i121_crit_edge
  %retval.0.i.i17.i120 = phi ptr [ %74, %if.end.i.i16.i119 ], [ %72, %if.then.i15.i118.dev_name.exit.i18.i121_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.25, ptr noundef %call16.i12.i115, ptr noundef %retval.0.i.i17.i120) #8
  br label %map_descbuffer.exit130

if.end39.i24.i127:                                ; preds = %b43_poison_rx_buffer.exit109
  call void @__sanitizer_cov_trace_pc() #10
  %conv54 = zext i16 %64 to i32
  tail call void @debug_dma_map_single(ptr noundef %70, ptr noundef %62, i32 noundef %conv54) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %75 = load ptr, ptr @mem_map, align 4
  %76 = ptrtoint ptr %62 to i32
  %sub.i19.i122 = add i32 %76, 1073741824
  %shr.i20.i123 = lshr i32 %sub.i19.i122, 12
  %add.ptr.i21.i124 = getelementptr %struct.page, ptr %75, i32 %shr.i20.i123
  %and.i22.i125 = and i32 %76, 4095
  %call41.i23.i126 = tail call i32 @dma_map_page_attrs(ptr noundef %70, ptr noundef %add.ptr.i21.i124, i32 noundef %and.i22.i125, i32 noundef %conv54, i32 noundef 2, i32 noundef 0) #8
  br label %map_descbuffer.exit130

map_descbuffer.exit130:                           ; preds = %if.end39.i24.i127, %dev_name.exit.i18.i121, %land.rhs.i11.i114.map_descbuffer.exit130_crit_edge
  %dmaaddr.0.i128 = phi i32 [ %call41.i23.i126, %if.end39.i24.i127 ], [ -1, %dev_name.exit.i18.i121 ], [ -1, %land.rhs.i11.i114.map_descbuffer.exit130_crit_edge ]
  %77 = ptrtoint ptr %rx_buffersize to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %rx_buffersize, align 4
  %conv57 = zext i16 %78 to i32
  %79 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev2.i, align 8
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 4
  %dma_dev.i132 = getelementptr inbounds %struct.b43_bus_dev, ptr %82, i32 0, i32 15
  %83 = ptrtoint ptr %dma_dev.i132 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dma_dev.i132, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %84, i32 noundef %dmaaddr.0.i128) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dmaaddr.0.i128)
  %cmp.i.not.i133 = icmp eq i32 %dmaaddr.0.i128, -1
  br i1 %cmp.i.not.i133, label %map_descbuffer.exit130.if.then59_crit_edge, label %if.end.i135, !prof !98

map_descbuffer.exit130.if.then59_crit_edge:       ; preds = %map_descbuffer.exit130
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then59

if.end.i135:                                      ; preds = %map_descbuffer.exit130
  %type.i134 = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 13
  %85 = ptrtoint ptr %type.i134 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %type.i134, align 8
  %87 = zext i32 %86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %86, label %if.end.i135.if.end61_crit_edge [
    i32 30, label %sw.bb.i140
    i32 32, label %sw.bb8.i145
  ]

if.end.i135.if.end61_crit_edge:                   ; preds = %if.end.i135
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

sw.bb.i140:                                       ; preds = %if.end.i135
  %conv.i136 = zext i32 %dmaaddr.0.i128 to i64
  %conv4.i137 = zext i16 %78 to i64
  %add.i138 = add nuw nsw i64 %conv4.i137, %conv.i136
  call void @__sanitizer_cov_trace_const_cmp8(i64 1073741824, i64 %add.i138)
  %cmp.i139 = icmp ugt i64 %add.i138, 1073741824
  br i1 %cmp.i139, label %sw.bb.i140.address_error.i147_crit_edge, label %sw.bb.i140.if.end61_crit_edge

sw.bb.i140.if.end61_crit_edge:                    ; preds = %sw.bb.i140
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

sw.bb.i140.address_error.i147_crit_edge:          ; preds = %sw.bb.i140
  call void @__sanitizer_cov_trace_pc() #10
  br label %address_error.i147

sw.bb8.i145:                                      ; preds = %if.end.i135
  %conv9.i141 = zext i32 %dmaaddr.0.i128 to i64
  %conv10.i142 = zext i16 %78 to i64
  %add11.i143 = add nuw nsw i64 %conv10.i142, %conv9.i141
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add11.i143)
  %cmp12.i144 = icmp ugt i64 %add11.i143, 4294967296
  br i1 %cmp12.i144, label %sw.bb8.i145.address_error.i147_crit_edge, label %sw.bb8.i145.if.end61_crit_edge

sw.bb8.i145.if.end61_crit_edge:                   ; preds = %sw.bb8.i145
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

sw.bb8.i145.address_error.i147_crit_edge:         ; preds = %sw.bb8.i145
  call void @__sanitizer_cov_trace_pc() #10
  br label %address_error.i147

address_error.i147:                               ; preds = %sw.bb8.i145.address_error.i147_crit_edge, %sw.bb.i140.address_error.i147_crit_edge
  %88 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev2.i, align 8
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %89, align 4
  %dma_dev4.i.i146 = getelementptr inbounds %struct.b43_bus_dev, ptr %91, i32 0, i32 15
  %92 = ptrtoint ptr %dma_dev4.i.i146 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dma_dev4.i.i146, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %93, i32 noundef %dmaaddr.0.i128, i32 noundef %conv57, i32 noundef 2, i32 noundef 0) #8
  br label %if.then59

if.then59:                                        ; preds = %address_error.i147, %map_descbuffer.exit130.if.then59_crit_edge
  %94 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev2.i, align 8
  %wl = getelementptr inbounds %struct.b43_wldev, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %wl, align 4
  tail call void (ptr, ptr, ...) @b43err(ptr noundef %97, ptr noundef nonnull @.str.27) #8
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i99, i32 noundef 1) #8
  br label %cleanup

if.end61:                                         ; preds = %sw.bb8.i145.if.end61_crit_edge, %sw.bb.i140.if.end61_crit_edge, %if.end.i135.if.end61_crit_edge, %sw.bb8.i.if.end61_crit_edge, %sw.bb.i.if.end61_crit_edge, %if.end.i.if.end61_crit_edge
  %dmaaddr.0 = phi i32 [ %dmaaddr.0.i, %sw.bb8.i.if.end61_crit_edge ], [ %dmaaddr.0.i, %sw.bb.i.if.end61_crit_edge ], [ %dmaaddr.0.i, %if.end.i.if.end61_crit_edge ], [ %dmaaddr.0.i128, %sw.bb8.i145.if.end61_crit_edge ], [ %dmaaddr.0.i128, %sw.bb.i140.if.end61_crit_edge ], [ %dmaaddr.0.i128, %if.end.i135.if.end61_crit_edge ]
  %skb.0 = phi ptr [ %call.i, %sw.bb8.i.if.end61_crit_edge ], [ %call.i, %sw.bb.i.if.end61_crit_edge ], [ %call.i, %if.end.i.if.end61_crit_edge ], [ %call.i99, %sw.bb8.i145.if.end61_crit_edge ], [ %call.i99, %sw.bb.i140.if.end61_crit_edge ], [ %call.i99, %if.end.i135.if.end61_crit_edge ]
  %98 = ptrtoint ptr %meta to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %skb.0, ptr %meta, align 4
  %dmaaddr63 = getelementptr inbounds %struct.b43_dmadesc_meta, ptr %meta, i32 0, i32 1
  %99 = ptrtoint ptr %dmaaddr63 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %dmaaddr.0, ptr %dmaaddr63, align 4
  %100 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ring, align 8
  %fill_descriptor = getelementptr inbounds %struct.b43_dma_ops, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %fill_descriptor to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %fill_descriptor, align 4
  %104 = ptrtoint ptr %rx_buffersize to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %rx_buffersize, align 4
  tail call void %103(ptr noundef %ring, ptr noundef %desc, i32 noundef %dmaaddr.0, i16 noundef zeroext %105, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.then59, %if.then37.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then59 ], [ 0, %if.end61 ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.then37.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @request_slot(ptr nocapture noundef %ring) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %tx = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 12
  %0 = ptrtoint ptr %tx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tx, align 4, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !98

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 304, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %stopped = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 14
  %2 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %stopped, align 4, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool22.not = icmp eq i8 %3, 0
  br i1 %tobool22.not, label %if.end.if.end44_crit_edge, label %do.end38, !prof !94

if.end.if.end44_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

do.end38:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 305, i32 noundef 9, ptr noundef null) #8
  br label %if.end44

if.end44:                                         ; preds = %do.end38, %if.end.if.end44_crit_edge
  %nr_slots.i = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 5
  %4 = ptrtoint ptr %nr_slots.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_slots.i, align 4
  %used_slots.i = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 6
  %6 = ptrtoint ptr %used_slots.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %used_slots.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp eq i32 %5, %7
  br i1 %cmp, label %do.end68, label %if.end44.if.end74_crit_edge, !prof !98

if.end44.if.end74_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

do.end68:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 306, i32 noundef 9, ptr noundef null) #8
  br label %if.end74

if.end74:                                         ; preds = %do.end68, %if.end44.if.end74_crit_edge
  %current_slot = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 7
  %8 = ptrtoint ptr %current_slot to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %current_slot, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %9)
  %cmp.i = icmp sgt i32 %9, -2
  br i1 %cmp.i, label %land.rhs.i, label %if.end74.do.end.i_crit_edge

if.end74.do.end.i_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.rhs.i:                                       ; preds = %if.end74
  %10 = ptrtoint ptr %nr_slots.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr_slots.i, align 4
  %sub.i98 = add i32 %11, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i98, i32 %9)
  %cmp1.i = icmp slt i32 %sub.i98, %9
  br i1 %cmp1.i, label %land.rhs.i.do.end.i_crit_edge, label %land.rhs.i.next_slot.exit_crit_edge, !prof !98

land.rhs.i.next_slot.exit_crit_edge:              ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %next_slot.exit

land.rhs.i.do.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %land.rhs.i.do.end.i_crit_edge, %if.end74.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 264, i32 noundef 9, ptr noundef null) #8
  br label %next_slot.exit

next_slot.exit:                                   ; preds = %do.end.i, %land.rhs.i.next_slot.exit_crit_edge
  %12 = ptrtoint ptr %nr_slots.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr_slots.i, align 4
  %sub22.i = add i32 %13, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub22.i, i32 %9)
  %cmp23.i = icmp eq i32 %sub22.i, %9
  %add.i = add i32 %9, 1
  %retval.0.i = select i1 %cmp23.i, i32 0, i32 %add.i
  %14 = ptrtoint ptr %current_slot to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %retval.0.i, ptr %current_slot, align 4
  %15 = ptrtoint ptr %used_slots.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %used_slots.i, align 8
  %inc = add i32 %16, 1
  store i32 %inc, ptr %used_slots.i, align 8
  %max_used_slots.i = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 17
  %17 = ptrtoint ptr %max_used_slots.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_used_slots.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %inc)
  %cmp.not.i = icmp slt i32 %18, %inc
  br i1 %cmp.not.i, label %if.end.i, label %next_slot.exit.update_max_used_slots.exit_crit_edge

next_slot.exit.update_max_used_slots.exit_crit_edge: ; preds = %next_slot.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_max_used_slots.exit

if.end.i:                                         ; preds = %next_slot.exit
  %19 = ptrtoint ptr %max_used_slots.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %inc, ptr %max_used_slots.i, align 4
  %dev.i = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 16
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 8
  %call.i = tail call zeroext i1 @b43_debug(ptr noundef %21, i32 noundef 2) #8
  br i1 %call.i, label %if.then2.i, label %if.end.i.update_max_used_slots.exit_crit_edge

if.end.i.update_max_used_slots.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_max_used_slots.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 8
  %wl.i = getelementptr inbounds %struct.b43_wldev, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %wl.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wl.i, align 4
  %26 = ptrtoint ptr %max_used_slots.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_used_slots.i, align 4
  %28 = ptrtoint ptr %tx to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %tx, align 4, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i = icmp eq i8 %29, 0
  %cond.i = select i1 %tobool.not.i, ptr @.str.35, ptr @.str.34
  %index.i = getelementptr inbounds %struct.b43_dmaring, ptr %ring, i32 0, i32 11
  %30 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %index.i, align 8
  tail call void (ptr, ptr, ...) @b43dbg(ptr noundef %25, ptr noundef nonnull @.str.33, i32 noundef %27, ptr noundef nonnull %cond.i, i32 noundef %31) #8
  br label %update_max_used_slots.exit

update_max_used_slots.exit:                       ; preds = %if.then2.i, %if.end.i.update_max_used_slots.exit_crit_edge, %next_slot.exit.update_max_used_slots.exit_crit_edge
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b43_generate_txhdr(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_shm_write16(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_rx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !59, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/broadcom/b43/dma.c", i32 1025, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/broadcom/b43/dma.c", i32 1026, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/broadcom/b43/dma.c", i32 1027, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/broadcom/b43/dma.c", i32 1028, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/broadcom/b43/dma.c", i32 1029, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/broadcom/b43/dma.c", i32 1030, i32 2}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/broadcom/b43/dma.c", i32 1060, i32 19}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/broadcom/b43/dma.c", i32 1114, i32 2}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/broadcom/b43/dma.c", i32 1116, i32 18}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/broadcom/b43/dma.c", i32 1368, i32 20}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/broadcom/b43/dma.c", i32 1376, i32 19}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/broadcom/b43/dma.c", i32 1395, i32 19}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/broadcom/b43/dma.c", i32 1406, i32 20}
!26 = !{ptr @b43_dma_handle_txstatus.fake, !27, !"fake", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/broadcom/b43/dma.c", i32 1420, i32 35}
!28 = distinct !{null, !29, !"err_out1", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/broadcom/b43/dma.c", i32 1425, i32 12}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/broadcom/b43/dma.c", i32 1453, i32 12}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/broadcom/b43/dma.c", i32 1464, i32 11}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/broadcom/b43/dma.c", i32 1467, i32 33}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/broadcom/b43/dma.c", i32 1479, i32 20}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/broadcom/b43/dma.c", i32 1505, i32 21}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/broadcom/b43/dma.c", i32 1544, i32 21}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/broadcom/b43/dma.c", i32 1575, i32 20}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/broadcom/b43/dma.c", i32 985, i32 25}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/broadcom/b43/dma.c", i32 528, i32 19}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/broadcom/b43/dma.c", i32 470, i32 19}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/broadcom/b43/dma.c", i32 922, i32 12}
!52 = !{ptr @dma64_ops, !53, !"dma64_ops", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/broadcom/b43/dma.c", i32 247, i32 33}
!54 = !{ptr @dma32_ops, !55, !"dma32_ops", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/broadcom/b43/dma.c", i32 152, i32 33}
!56 = distinct !{null, !57, !"__already_done", i1 false, i1 false}
!57 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!58 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/broadcom/b43/dma.c", i32 648, i32 11}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/broadcom/b43/dma.c", i32 619, i32 26}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/broadcom/b43/dma.c", i32 1300, i32 11}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/broadcom/b43/dma.c", i32 1181, i32 19}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/broadcom/b43/dma.c", i32 1616, i32 25}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/broadcom/b43/dma.c", i32 1641, i32 25}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/broadcom/b43/dma.c", i32 1650, i32 25}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/broadcom/b43/dma.c", i32 287, i32 10}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/broadcom/b43/dma.c", i32 289, i32 21}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/broadcom/b43/dma.c", i32 289, i32 28}
!80 = !{ptr @b43_dmacontroller_base.map64, !81, !"map64", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/broadcom/b43/dma.c", i32 319, i32 19}
!82 = !{ptr @b43_dmacontroller_base.map32, !83, !"map32", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/broadcom/b43/dma.c", i32 327, i32 19}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{i8 0, i8 2}
!94 = !{!"branch_weights", i32 2000, i32 1}
!95 = !{i64 2148688373, i64 2148688653, i64 2148688987, i64 2148689321}
!96 = !{!"auto-init"}
!97 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!98 = !{!"branch_weights", i32 1, i32 2000}
!99 = !{i64 2158242956}
!100 = !{i64 2158282062}
!101 = !{!"branch_weights", i32 2001, i32 2000}
!102 = !{!"branch_weights", i32 2000, i32 2, i32 2000}
!103 = !{i64 2158287342}
!104 = !{i64 2158289649}
