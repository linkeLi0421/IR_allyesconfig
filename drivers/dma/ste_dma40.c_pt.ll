; ModuleID = '/llk/IR_all_yes/drivers/dma/ste_dma40.c_pt.bc'
source_filename = "../drivers/dma/ste_dma40.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+stedma40_filter\22, \22a\22\09"
module asm "\09.weak\09__crc_stedma40_filter\09\09\09\09"
module asm "\09.long\09__crc_stedma40_filter\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stedma40_filter:\09\09\09\09\09"
module asm "\09.asciz \09\22stedma40_filter\22\09\09\09\09\09"
module asm "__kstrtabns_stedma40_filter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.stedma40_chan_cfg = type { i32, i8, i8, i32, i32, i32, %struct.stedma40_half_channel_info, %struct.stedma40_half_channel_info, i8, i32 }
%struct.stedma40_half_channel_info = type { i8, i32, i32, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.d40_interrupt_lookup = type { i32, i32, i8, i32 }
%struct.d40_reg_val = type { i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
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
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.d40_base = type { %struct.spinlock, %struct.spinlock, ptr, ptr, i8, ptr, i32, i32, i32, i32, i32, i32, %struct.dma_device, %struct.dma_device, %struct.dma_device, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.d40_lcla_pool, ptr, i32, i32, ptr, [6 x i32], [20 x i32], ptr, ptr, i16, %struct.d40_gen_dmac }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.d40_lcla_pool = type { ptr, i32, ptr, i32, %struct.spinlock, ptr }
%struct.d40_gen_dmac = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.stedma40_platform_data = type { [32 x i32], ptr, i32, i8, i32, i32 }
%struct.d40_phy_res = type { %struct.spinlock, i8, i32, i32, i32, i8 }
%struct.d40_chan = type { %struct.spinlock, i32, i32, i8, ptr, %struct.dma_chan, %struct.tasklet_struct, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.stedma40_chan_cfg, %struct.dma_slave_config, i8, ptr, i32, i32, %struct.d40_def_lcsp, ptr, i32, i32 }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.84, i32 }
%union.anon.84 = type { ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.d40_def_lcsp = type { i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.75, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.75 = type { %struct.atomic_t }
%struct.d40_log_lli_full = type { i32, i32, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.d40_phy_lli_bidir = type { ptr, ptr }
%struct.d40_phy_lli = type { i32, i32, i32, i32 }
%struct.d40_desc = type { %struct.d40_phy_lli_bidir, %struct.d40_log_lli_bidir, %struct.d40_lli_pool, i32, i32, i32, %struct.dma_async_tx_descriptor, %struct.list_head, i8, i8 }
%struct.d40_log_lli_bidir = type { ptr, ptr }
%struct.d40_lli_pool = type { ptr, i32, i32, [48 x i8] }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.d40_log_lli = type { i32, i32 }
%struct.dmaengine_result = type { i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }

@__kstrtab_stedma40_filter = external dso_local constant [0 x i8], align 1
@__kstrtabns_stedma40_filter = external dso_local constant [0 x i8], align 1
@__ksymtab_stedma40_filter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stedma40_filter to i32), ptr @__kstrtab_stedma40_filter, ptr @__kstrtabns_stedma40_filter }, section "___ksymtab+stedma40_filter", align 4
@__initcall__kmod_ste_dma40__304_3724_stedma40_init4 = internal global ptr @stedma40_init, section ".initcall4.init", align 4
@d40_validate_conf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1708, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[%s] Invalid direction.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"d40_validate_conf\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/dma/ste_dma40.c\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@d40_validate_conf._entry_ptr = internal global ptr @d40_validate_conf._entry, section ".printk_index", align 4
@d40_validate_conf._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 1715, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[%s] Invalid device type (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@d40_validate_conf._entry_ptr.7 = internal global ptr @d40_validate_conf._entry.5, section ".printk_index", align 4
@d40_validate_conf._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 1724, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[%s] periph to periph not supported\0A\00", [59 x i8] zeroinitializer }, align 32
@d40_validate_conf._entry_ptr.10 = internal global ptr @d40_validate_conf._entry.8, section ".printk_index", align 4
@d40_validate_conf._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 1737, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"[%s] src (burst x width) != dst (burst x width)\0A\00", [47 x i8] zeroinitializer }, align 32
@d40_validate_conf._entry_ptr.13 = internal global ptr @d40_validate_conf._entry.11, section ".printk_index", align 4
@dma40_memcpy_conf_log = internal constant { %struct.stedma40_chan_cfg, [36 x i8] } { %struct.stedma40_chan_cfg { i32 0, i8 0, i8 0, i32 0, i32 0, i32 0, %struct.stedma40_half_channel_info { i8 0, i32 1, i32 0, i32 0 }, %struct.stedma40_half_channel_info { i8 0, i32 1, i32 0, i32 0 }, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@dma40_memcpy_channels = internal global { [6 x i32], [40 x i8] } { [6 x i32] [i32 51, i32 56, i32 57, i32 58, i32 59, i32 60], [40 x i8] zeroinitializer }, align 32
@dma40_memcpy_conf_phy = internal constant { %struct.stedma40_chan_cfg, [36 x i8] } { %struct.stedma40_chan_cfg { i32 0, i8 0, i8 0, i32 1, i32 0, i32 0, %struct.stedma40_half_channel_info { i8 0, i32 1, i32 4, i32 0 }, %struct.stedma40_half_channel_info { i8 0, i32 1, i32 4, i32 0 }, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@d40_config_memcpy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 1981, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"[%s] No memcpy\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"d40_config_memcpy\00", [46 x i8] zeroinitializer }, align 32
@d40_config_memcpy._entry_ptr = internal global ptr @d40_config_memcpy._entry, section ".printk_index", align 4
@d40_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.16, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @d40_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dma40_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dma40\00", [26 x i8] zeroinitializer }, align 32
@d40_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"stericsson,dma40\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@dma40_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dma40_suspend, ptr @dma40_resume, ptr @dma40_suspend, ptr @dma40_resume, ptr @dma40_suspend, ptr @dma40_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dma40_runtime_suspend, ptr @dma40_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@d40_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 3522, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[%s] No pdata or Device Tree provided\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"d40_probe\00", [22 x i8] zeroinitializer }, align 32
@d40_probe._entry_ptr = internal global ptr @d40_probe._entry, section ".printk_index", align 4
@d40_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&base->interrupt_lock\00", [42 x i8] zeroinitializer }, align 32
@d40_probe.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&base->execmd_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lcpa\00", [27 x i8] zeroinitializer }, align 32
@d40_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.18, ptr @.str.2, i32 3542, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[%s] No \22lcpa\22 memory resource\0A\00", [32 x i8] zeroinitializer }, align 32
@d40_probe._entry_ptr.25 = internal global ptr @d40_probe._entry.23, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dma40 I/O lcpa\00", [17 x i8] zeroinitializer }, align 32
@d40_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.18, ptr @.str.2, i32 3551, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"[%s] Failed to request LCPA region %pR\0A\00", [56 x i8] zeroinitializer }, align 32
@d40_probe._entry_ptr.29 = internal global ptr @d40_probe._entry.27, section ".printk_index", align 4
@d40_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.18, ptr @.str.2, i32 3560, ptr @.str.32, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"[%s] Mismatch LCPA dma 0x%x, def %pa\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@d40_probe._entry_ptr.33 = internal global ptr @d40_probe._entry.30, section ".printk_index", align 4
@d40_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.18, ptr @.str.2, i32 3567, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[%s] Failed to ioremap LCPA region\0A\00", [60 x i8] zeroinitializer }, align 32
@d40_probe._entry_ptr.36 = internal global ptr @d40_probe._entry.34, section ".printk_index", align 4
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lcla_esram\00", [21 x i8] zeroinitializer }, align 32
@d40_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.18, ptr @.str.2, i32 3577, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"[%s] No \22lcla_esram\22 memory resource\0A\00", [58 x i8] zeroinitializer }, align 32
@d40_probe._entry_ptr.40 = internal global ptr @d40_probe._entry.38, section ".printk_index", align 4
@d40_probe._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.18, ptr @.str.2, i32 3584, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[%s] Failed to ioremap LCLA region\0A\00", [60 x i8] zeroinitializer }, align 32
@d40_probe._entry_ptr.43 = internal global ptr @d40_probe._entry.41, section ".printk_index", align 4
@d40_probe._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.18, ptr @.str.2, i32 3592, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[%s] Failed to allocate LCLA area\0A\00", [61 x i8] zeroinitializer }, align 32
@d40_probe._entry_ptr.46 = internal global ptr @d40_probe._entry.44, section ".printk_index", align 4
@d40_probe.__key.47 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&base->lcla_pool.lock\00", [42 x i8] zeroinitializer }, align 32
@d40_probe._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.18, ptr @.str.2, i32 3603, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[%s] No IRQ defined\0A\00", [43 x i8] zeroinitializer }, align 32
@d40_probe._entry_ptr.51 = internal global ptr @d40_probe._entry.49, section ".printk_index", align 4
@d40_probe._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.18, ptr @.str.2, i32 3611, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[%s] Failed to get lcpa_regulator\0A\00", [61 x i8] zeroinitializer }, align 32
@d40_probe._entry_ptr.54 = internal global ptr @d40_probe._entry.52, section ".printk_index", align 4
@d40_probe._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.18, ptr @.str.2, i32 3620, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"[%s] Failed to enable lcpa_regulator\0A\00", [58 x i8] zeroinitializer }, align 32
@d40_probe._entry_ptr.57 = internal global ptr @d40_probe._entry.55, section ".printk_index", align 4
@d40_probe._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.18, ptr @.str.2, i32 3642, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[%s] Failed to set dma max seg size\0A\00", [59 x i8] zeroinitializer }, align 32
@d40_probe._entry_ptr.60 = internal global ptr @d40_probe._entry.58, section ".printk_index", align 4
@d40_probe._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.18, ptr @.str.2, i32 3652, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"could not register of_dma_controller\0A\00", [58 x i8] zeroinitializer }, align 32
@d40_probe._entry_ptr.63 = internal global ptr @d40_probe._entry.61, section ".printk_index", align 4
@d40_probe._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.18, ptr @.str.2, i32 3655, ptr @.str.66, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"initialized\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@d40_probe._entry_ptr.67 = internal global ptr @d40_probe._entry.64, section ".printk_index", align 4
@d40_probe._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.18, ptr @.str.2, i32 3703, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%s] probe failed\0A\00", [45 x i8] zeroinitializer }, align 32
@d40_probe._entry_ptr.70 = internal global ptr @d40_probe._entry.68, section ".printk_index", align 4
@.str.71 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dma-channels\00", [19 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"memcpy-channels\00", [16 x i8] zeroinitializer }, align 32
@d40_of_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.2, i32 3476, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"[%s] Invalid number of memcpy channels specified (%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"d40_of_probe\00", [19 x i8] zeroinitializer }, align 32
@d40_of_probe._entry_ptr = internal global ptr @d40_of_probe._entry, section ".printk_index", align 4
@.str.75 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"disabled-channels\00", [46 x i8] zeroinitializer }, align 32
@d40_of_probe._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.74, ptr @.str.2, i32 3491, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"[%s] Invalid number of disabled channels specified (%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@d40_of_probe._entry_ptr.78 = internal global ptr @d40_of_probe._entry.76, section ".printk_index", align 4
@d40_hw_detect_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.2, i32 3121, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%s] No matching clock found\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"d40_hw_detect_init\00", [45 x i8] zeroinitializer }, align 32
@d40_hw_detect_init._entry_ptr = internal global ptr @d40_hw_detect_init._entry, section ".printk_index", align 4
@d40_hw_detect_init._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str.2, i32 3127, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[%s] Failed to prepare/enable clock\0A\00", [59 x i8] zeroinitializer }, align 32
@d40_hw_detect_init._entry_ptr.83 = internal global ptr @d40_hw_detect_init._entry.81, section ".printk_index", align 4
@.str.84 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"base\00", [27 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dma40 I/O base\00", [17 x i8] zeroinitializer }, align 32
@d40_hw_detect_init._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.80, ptr @.str.2, i32 3153, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"[%s] Unknown hardware! No PrimeCell ID\0A\00", [56 x i8] zeroinitializer }, align 32
@d40_hw_detect_init._entry_ptr.88 = internal global ptr @d40_hw_detect_init._entry.86, section ".printk_index", align 4
@d40_hw_detect_init._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.80, ptr @.str.2, i32 3159, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[%s] Unknown designer! Got %x wanted %x\0A\00", [55 x i8] zeroinitializer }, align 32
@d40_hw_detect_init._entry_ptr.91 = internal global ptr @d40_hw_detect_init._entry.89, section ".printk_index", align 4
@d40_hw_detect_init._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.80, ptr @.str.2, i32 3173, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[%s] hardware revision: %d is not supported\00", [52 x i8] zeroinitializer }, align 32
@d40_hw_detect_init._entry_ptr.94 = internal global ptr @d40_hw_detect_init._entry.92, section ".printk_index", align 4
@d40_hw_detect_init._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.80, ptr @.str.2, i32 3193, ptr @.str.66, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"hardware rev: %d @ %pa with %d physical and %d logical channels\0A\00", [63 x i8] zeroinitializer }, align 32
@d40_hw_detect_init._entry_ptr.97 = internal global ptr @d40_hw_detect_init._entry.95, section ".printk_index", align 4
@d40_backup_regs_v4b = internal global { [20 x i32], [48 x i8] } { [20 x i32] [i32 512, i32 516, i32 520, i32 524, i32 528, i32 544, i32 548, i32 552, i32 556, i32 560, i32 576, i32 580, i32 584, i32 588, i32 592, i32 608, i32 612, i32 616, i32 620, i32 624], [48 x i8] zeroinitializer }, align 32
@il_v4b = internal global { [12 x %struct.d40_interrupt_lookup], [32 x i8] } { [12 x %struct.d40_interrupt_lookup] [%struct.d40_interrupt_lookup { i32 832, i32 800, i8 0, i32 0 }, %struct.d40_interrupt_lookup { i32 836, i32 804, i8 0, i32 32 }, %struct.d40_interrupt_lookup { i32 840, i32 808, i8 0, i32 64 }, %struct.d40_interrupt_lookup { i32 844, i32 812, i8 0, i32 96 }, %struct.d40_interrupt_lookup { i32 848, i32 816, i8 0, i32 128 }, %struct.d40_interrupt_lookup { i32 864, i32 800, i8 1, i32 0 }, %struct.d40_interrupt_lookup { i32 868, i32 804, i8 1, i32 32 }, %struct.d40_interrupt_lookup { i32 872, i32 808, i8 1, i32 64 }, %struct.d40_interrupt_lookup { i32 876, i32 812, i8 1, i32 96 }, %struct.d40_interrupt_lookup { i32 880, i32 816, i8 1, i32 128 }, %struct.d40_interrupt_lookup { i32 904, i32 900, i8 0, i32 -1 }, %struct.d40_interrupt_lookup { i32 908, i32 900, i8 1, i32 -1 }], [32 x i8] zeroinitializer }, align 32
@dma_init_reg_v4b = internal global [16 x %struct.d40_reg_val] [%struct.d40_reg_val { i32 0, i32 261889 }, %struct.d40_reg_val { i32 768, i32 -1 }, %struct.d40_reg_val { i32 772, i32 -1 }, %struct.d40_reg_val { i32 776, i32 -1 }, %struct.d40_reg_val { i32 780, i32 -1 }, %struct.d40_reg_val { i32 784, i32 -1 }, %struct.d40_reg_val { i32 800, i32 -1 }, %struct.d40_reg_val { i32 804, i32 -1 }, %struct.d40_reg_val { i32 808, i32 -1 }, %struct.d40_reg_val { i32 812, i32 -1 }, %struct.d40_reg_val { i32 816, i32 -1 }, %struct.d40_reg_val { i32 832, i32 -1 }, %struct.d40_reg_val { i32 836, i32 -1 }, %struct.d40_reg_val { i32 840, i32 -1 }, %struct.d40_reg_val { i32 844, i32 -1 }, %struct.d40_reg_val { i32 848, i32 -1 }], section ".init.data", align 4
@d40_backup_regs_v4a = internal global { [16 x i32], [32 x i8] } { [16 x i32] [i32 272, i32 276, i32 280, i32 284, i32 288, i32 292, i32 296, i32 300, i32 304, i32 308, i32 312, i32 316, i32 320, i32 324, i32 328, i32 332], [32 x i8] zeroinitializer }, align 32
@il_v4a = internal global { [10 x %struct.d40_interrupt_lookup], [32 x i8] } { [10 x %struct.d40_interrupt_lookup] [%struct.d40_interrupt_lookup { i32 160, i32 144, i8 0, i32 0 }, %struct.d40_interrupt_lookup { i32 164, i32 148, i8 0, i32 32 }, %struct.d40_interrupt_lookup { i32 168, i32 152, i8 0, i32 64 }, %struct.d40_interrupt_lookup { i32 172, i32 156, i8 0, i32 96 }, %struct.d40_interrupt_lookup { i32 176, i32 144, i8 1, i32 0 }, %struct.d40_interrupt_lookup { i32 180, i32 148, i8 1, i32 32 }, %struct.d40_interrupt_lookup { i32 184, i32 152, i8 1, i32 64 }, %struct.d40_interrupt_lookup { i32 188, i32 156, i8 1, i32 96 }, %struct.d40_interrupt_lookup { i32 104, i32 100, i8 0, i32 -1 }, %struct.d40_interrupt_lookup { i32 108, i32 100, i8 1, i32 -1 }], [32 x i8] zeroinitializer }, align 32
@dma_init_reg_v4a = internal global [13 x %struct.d40_reg_val] [%struct.d40_reg_val { i32 0, i32 261889 }, %struct.d40_reg_val { i32 128, i32 -1 }, %struct.d40_reg_val { i32 132, i32 -1 }, %struct.d40_reg_val { i32 136, i32 -1 }, %struct.d40_reg_val { i32 140, i32 -1 }, %struct.d40_reg_val { i32 144, i32 -1 }, %struct.d40_reg_val { i32 148, i32 -1 }, %struct.d40_reg_val { i32 152, i32 -1 }, %struct.d40_reg_val { i32 156, i32 -1 }, %struct.d40_reg_val { i32 160, i32 -1 }, %struct.d40_reg_val { i32 164, i32 -1 }, %struct.d40_reg_val { i32 168, i32 -1 }, %struct.d40_reg_val { i32 172, i32 -1 }], section ".init.data", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@d40_phy_res_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.98 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&base->phy_res[i].lock\00", [41 x i8] zeroinitializer }, align 32
@d40_phy_res_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.2, i32 3075, ptr @.str.66, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%d of %d physical DMA channels available\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"d40_phy_res_init\00", [47 x i8] zeroinitializer }, align 32
@d40_phy_res_init._entry_ptr = internal global ptr @d40_phy_res_init._entry, section ".printk_index", align 4
@d40_phy_res_init._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.100, ptr @.str.2, i32 3086, ptr @.str.66, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[%s] INFO: channel %d is misconfigured (%d)\0A\00", [51 x i8] zeroinitializer }, align 32
@d40_phy_res_init._entry_ptr.103 = internal global ptr @d40_phy_res_init._entry.101, section ".printk_index", align 4
@d40_lcla_allocate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.2, i32 3398, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[%s] Failed to allocate %d pages.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"d40_lcla_allocate\00", [46 x i8] zeroinitializer }, align 32
@d40_lcla_allocate._entry_ptr = internal global ptr @d40_lcla_allocate._entry, section ".printk_index", align 4
@d40_lcla_allocate._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.105, ptr @.str.2, i32 3423, ptr @.str.32, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[%s] Failed to get %d pages @ 18 bit align.\0A\00", [51 x i8] zeroinitializer }, align 32
@d40_lcla_allocate._entry_ptr.108 = internal global ptr @d40_lcla_allocate._entry.106, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.109 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@d40_handle_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.2, i32 1691, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[%s] IRQ chan: %ld offset %d idx %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"d40_handle_interrupt\00", [43 x i8] zeroinitializer }, align 32
@d40_handle_interrupt._entry_ptr = internal global ptr @d40_handle_interrupt._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__d40_config_set_event._entry = internal constant %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.2, i32 1202, ptr @.str.3, ptr @.str.4 }, align 1
@.str.113 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"[%s] unable to stop the event_line chl %d (log: %d)status %x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"__d40_config_set_event\00", [41 x i8] zeroinitializer }, align 32
@__d40_config_set_event._entry_ptr = internal global ptr @__d40_config_set_event._entry, section ".printk_index", align 4
@__d40_config_set_event.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.115, ptr @.str.114, ptr @.str.2, ptr @.str.116, i8 1, i8 50, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ste_dma40\00", [22 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[%s] workaround enable S%cLNK (%d tries)\0A\00", [54 x i8] zeroinitializer }, align 32
@__d40_execute_command_phy._entry = internal constant %struct.pi_entry { ptr @.str.117, ptr @.str.118, ptr @.str.2, i32 1097, ptr @.str.3, ptr @.str.4 }, align 1
@.str.117 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"[%s] unable to suspend the chl %d (log: %d) status %x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"__d40_execute_command_phy\00", [38 x i8] zeroinitializer }, align 32
@__d40_execute_command_phy._entry_ptr = internal global ptr @__d40_execute_command_phy._entry, section ".printk_index", align 4
@d40_dmaengine_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.120, ptr @.str.2, i32 2862, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"[%s] Failed to register slave channels\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"d40_dmaengine_init\00", [45 x i8] zeroinitializer }, align 32
@d40_dmaengine_init._entry_ptr = internal global ptr @d40_dmaengine_init._entry, section ".printk_index", align 4
@d40_dmaengine_init._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.120, ptr @.str.2, i32 2878, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"[%s] Failed to register memcpy only channels\0A\00", [50 x i8] zeroinitializer }, align 32
@d40_dmaengine_init._entry_ptr.123 = internal global ptr @d40_dmaengine_init._entry.121, section ".printk_index", align 4
@d40_dmaengine_init._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.120, ptr @.str.2, i32 2895, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"[%s] Failed to register logical and physical capable channels\0A\00", [33 x i8] zeroinitializer }, align 32
@d40_dmaengine_init._entry_ptr.126 = internal global ptr @d40_dmaengine_init._entry.124, section ".printk_index", align 4
@d40_chan_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.127 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&d40c->lock\00", [20 x i8] zeroinitializer }, align 32
@d40_prep_sg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.129, ptr @.str.2, i32 2220, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[%s] Cannot prepare unallocated channel\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"d40_prep_sg\00", [20 x i8] zeroinitializer }, align 32
@d40_prep_sg._entry_ptr = internal global ptr @d40_prep_sg._entry, section ".printk_index", align 4
@d40_prep_sg._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.129, ptr @.str.2, i32 2251, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"[%s] Failed to prepare %s sg job: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@d40_prep_sg._entry_ptr.132 = internal global ptr @d40_prep_sg._entry.130, section ".printk_index", align 4
@.str.133 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"log\00", [28 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"phy\00", [28 x i8] zeroinitializer }, align 32
@d40_set_runtime_config_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.136, ptr @.str.2, i32 2667, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[%s] Channel is not allocated!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"d40_set_runtime_config_write\00", [35 x i8] zeroinitializer }, align 32
@d40_set_runtime_config_write._entry_ptr = internal global ptr @d40_set_runtime_config_write._entry, section ".printk_index", align 4
@d40_set_runtime_config_write.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.115, ptr @.str.136, ptr @.str.2, ptr @.str.137, i8 2, i8 -98, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.137 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"channel was not configured for peripheral to memory transfer (%d) overriding\0A\00", [50 x i8] zeroinitializer }, align 32
@d40_set_runtime_config_write.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.115, ptr @.str.136, ptr @.str.2, ptr @.str.138, i8 2, i8 -94, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.138 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"channel was not configured for memory to peripheral transfer (%d) overriding\0A\00", [50 x i8] zeroinitializer }, align 32
@d40_set_runtime_config_write._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.136, ptr @.str.2, i32 2710, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"unrecognized channel direction %d\0A\00", [61 x i8] zeroinitializer }, align 32
@d40_set_runtime_config_write._entry_ptr.141 = internal global ptr @d40_set_runtime_config_write._entry.139, section ".printk_index", align 4
@d40_set_runtime_config_write._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.136, ptr @.str.2, i32 2715, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"no address supplied\0A\00", [43 x i8] zeroinitializer }, align 32
@d40_set_runtime_config_write._entry_ptr.144 = internal global ptr @d40_set_runtime_config_write._entry.142, section ".printk_index", align 4
@d40_set_runtime_config_write._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.136, ptr @.str.2, i32 2725, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"src/dst width/maxburst mismatch: %d*%d != %d*%d\0A\00", [47 x i8] zeroinitializer }, align 32
@d40_set_runtime_config_write._entry_ptr.147 = internal global ptr @d40_set_runtime_config_write._entry.145, section ".printk_index", align 4
@d40_set_runtime_config_write.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.115, ptr @.str.136, ptr @.str.2, ptr @.str.148, i8 2, i8 -75, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.148 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"configured channel %s for %s, data width %d/%d, maxburst %d/%d elements, LE, no flow control\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RX\00", [29 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TX\00", [29 x i8] zeroinitializer }, align 32
@d40_prep_desc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.152, ptr @.str.2, i32 2185, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[%s] Unaligned size\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"d40_prep_desc\00", [18 x i8] zeroinitializer }, align 32
@d40_prep_desc._entry_ptr = internal global ptr @d40_prep_desc._entry, section ".printk_index", align 4
@d40_prep_desc._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.152, ptr @.str.2, i32 2191, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[%s] Could not allocate lli\0A\00", [35 x i8] zeroinitializer }, align 32
@d40_prep_desc._entry_ptr.155 = internal global ptr @d40_prep_desc._entry.153, section ".printk_index", align 4
@d40_alloc_chan_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.157, ptr @.str.2, i32 2403, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[%s] Failed to configure memcpy channel\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"d40_alloc_chan_resources\00", [39 x i8] zeroinitializer }, align 32
@d40_alloc_chan_resources._entry_ptr = internal global ptr @d40_alloc_chan_resources._entry, section ".printk_index", align 4
@d40_alloc_chan_resources._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.157, ptr @.str.2, i32 2410, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[%s] Failed to allocate channel\0A\00", [63 x i8] zeroinitializer }, align 32
@d40_alloc_chan_resources._entry_ptr.160 = internal global ptr @d40_alloc_chan_resources._entry.158, section ".printk_index", align 4
@d40_alloc_chan_resources.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.115, ptr @.str.157, ptr @.str.2, ptr @.str.161, i8 2, i8 97, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.161 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"allocated %s channel (phy %d%s)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"logical\00", [24 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"physical\00", [23 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c", fixed\00", [24 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@d40_allocate_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.167, ptr @.str.2, i32 1908, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"invalid fixed phy channel %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"d40_allocate_channel\00", [43 x i8] zeroinitializer }, align 32
@d40_allocate_channel._entry_ptr = internal global ptr @d40_allocate_channel._entry, section ".printk_index", align 4
@d40_allocate_channel._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.167, ptr @.str.2, i32 1917, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"could not allocate fixed phy channel %d\0A\00", [55 x i8] zeroinitializer }, align 32
@d40_allocate_channel._entry_ptr.170 = internal global ptr @d40_allocate_channel._entry.168, section ".printk_index", align 4
@d40_get_prmo.phy_map = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 2, i32 3], [20 x i8] zeroinitializer }, align 32
@d40_get_prmo.log_map = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 3, i32 0, i32 0, i32 1, i32 2], [44 x i8] zeroinitializer }, align 32
@d40_free_chan_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.172, ptr @.str.2, i32 2461, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"[%s] Cannot free unallocated channel\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"d40_free_chan_resources\00", [40 x i8] zeroinitializer }, align 32
@d40_free_chan_resources._entry_ptr = internal global ptr @d40_free_chan_resources._entry, section ".printk_index", align 4
@d40_free_chan_resources._entry.173 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.172, ptr @.str.2, i32 2470, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[%s] Failed to free channel\0A\00", [35 x i8] zeroinitializer }, align 32
@d40_free_chan_resources._entry_ptr.175 = internal global ptr @d40_free_chan_resources._entry.173, section ".printk_index", align 4
@d40_free_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.177, ptr @.str.2, i32 2000, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"[%s] phy == null\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"d40_free_dma\00", [19 x i8] zeroinitializer }, align 32
@d40_free_dma._entry_ptr = internal global ptr @d40_free_dma._entry, section ".printk_index", align 4
@d40_free_dma._entry.178 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.177, ptr @.str.2, i32 2006, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[%s] channel already free\0A\00", [37 x i8] zeroinitializer }, align 32
@d40_free_dma._entry_ptr.180 = internal global ptr @d40_free_dma._entry.178, section ".printk_index", align 4
@d40_free_dma._entry.181 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.177, ptr @.str.2, i32 2016, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%s] Unknown direction\0A\00", [40 x i8] zeroinitializer }, align 32
@d40_free_dma._entry_ptr.183 = internal global ptr @d40_free_dma._entry.181, section ".printk_index", align 4
@d40_free_dma._entry.184 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.185, ptr @.str.177, ptr @.str.2, i32 2023, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"[%s] stop failed\0A\00", [46 x i8] zeroinitializer }, align 32
@d40_free_dma._entry_ptr.186 = internal global ptr @d40_free_dma._entry.184, section ".printk_index", align 4
@d40_issue_pending._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.187, ptr @.str.2, i32 2565, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"d40_issue_pending\00", [46 x i8] zeroinitializer }, align 32
@d40_issue_pending._entry_ptr = internal global ptr @d40_issue_pending._entry, section ".printk_index", align 4
@d40_tx_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.188, ptr @.str.189, ptr @.str.2, i32 2545, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[%s] Cannot read status of unallocated channel\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"d40_tx_status\00", [18 x i8] zeroinitializer }, align 32
@d40_tx_status._entry_ptr = internal global ptr @d40_tx_status._entry, section ".printk_index", align 4
@d40_is_paused._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.190, ptr @.str.2, i32 2079, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"d40_is_paused\00", [18 x i8] zeroinitializer }, align 32
@d40_is_paused._entry_ptr = internal global ptr @d40_is_paused._entry, section ".printk_index", align 4
@d40_pause._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.191, ptr @.str.2, i32 1420, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"d40_pause\00", [22 x i8] zeroinitializer }, align 32
@d40_pause._entry_ptr = internal global ptr @d40_pause._entry, section ".printk_index", align 4
@d40_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.192, ptr @.str.2, i32 1445, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"d40_resume\00", [21 x i8] zeroinitializer }, align 32
@d40_resume._entry_ptr = internal global ptr @d40_resume._entry, section ".printk_index", align 4
@d40_terminate_all._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.193, ptr @.str.2, i32 2587, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"d40_terminate_all\00", [46 x i8] zeroinitializer }, align 32
@d40_terminate_all._entry_ptr = internal global ptr @d40_terminate_all._entry, section ".printk_index", align 4
@d40_terminate_all._entry.194 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.195, ptr @.str.193, ptr @.str.2, i32 2596, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[%s] Failed to stop channel\0A\00", [35 x i8] zeroinitializer }, align 32
@d40_terminate_all._entry_ptr.196 = internal global ptr @d40_terminate_all._entry.194, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.197 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.198 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.199 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.200 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.201 = internal global [4 x i64] [i64 2, i64 32, i64 1073741824, i64 2147483648]
@__sancov_gen_cov_switch_values.202 = internal global [4 x i64] [i64 2, i64 32, i64 1073741824, i64 2147483648]
@__sancov_gen_cov_switch_values.203 = internal global [4 x i64] [i64 2, i64 32, i64 1073741824, i64 2147483648]
@__sancov_gen_cov_switch_values.204 = internal global [4 x i64] [i64 2, i64 32, i64 1073741824, i64 2147483648]
@__sancov_gen_cov_switch_values.205 = internal global [4 x i64] [i64 2, i64 32, i64 1073741824, i64 2147483648]
@__sancov_gen_cov_switch_values.206 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.207 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.208 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.209 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 1708, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 1715, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 1724, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 1737, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant [22 x i8] c"dma40_memcpy_conf_log\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 96, i32 39 }
@___asan_gen_.249 = private unnamed_addr constant [22 x i8] c"dma40_memcpy_channels\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 72, i32 12 }
@___asan_gen_.252 = private unnamed_addr constant [22 x i8] c"dma40_memcpy_conf_phy\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 82, i32 39 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 1981, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant [11 x i8] c"d40_driver\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 3712, i32 31 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 3714, i32 12 }
@___asan_gen_.270 = private unnamed_addr constant [10 x i8] c"d40_match\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 3707, i32 34 }
@___asan_gen_.273 = private unnamed_addr constant [13 x i8] c"dma40_pm_ops\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 3010, i32 32 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 3522, i32 4 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 3535, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 3536, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 3539, i32 59 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 3542, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 3548, i32 6 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 3551, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 3558, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 3567, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 3573, i32 8 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 3576, i32 4 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 3584, i32 4 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 3592, i32 4 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 3597, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 3603, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 3611, i32 4 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 3619, i32 4 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 3642, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 3651, i32 4 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 3655, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 3703, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 3466, i32 27 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 3470, i32 29 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 3474, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 3485, i32 29 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 3489, i32 3 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 3121, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 3127, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 3132, i32 59 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 3136, i32 6 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 3153, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 3157, i32 3 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 3173, i32 3 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 3191, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant [20 x i8] c"d40_backup_regs_v4b\00", align 1
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 189, i32 12 }
@___asan_gen_.474 = private unnamed_addr constant [7 x i8] c"il_v4b\00", align 1
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 258, i32 36 }
@___asan_gen_.477 = private unnamed_addr constant [20 x i8] c"d40_backup_regs_v4a\00", align 1
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 168, i32 12 }
@___asan_gen_.480 = private unnamed_addr constant [7 x i8] c"il_v4a\00", align 1
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 245, i32 36 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 3050, i32 3 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 3074, i32 2 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 3084, i32 4 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 3397, i32 4 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 3421, i32 3 }
@___asan_gen_.523 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.523, i32 326, i32 6 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 1690, i32 4 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 1199, i32 4 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 1223, i32 4 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 1094, i32 4 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 2862, i32 3 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 2877, i32 3 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 2894, i32 3 }
@___asan_gen_.573 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 2795, i32 3 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 2220, i32 3 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 2250, i32 3 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 2667, i32 3 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 2680, i32 4 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 2696, i32 4 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 2708, i32 3 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 2715, i32 3 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 2720, i32 3 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 2768, i32 2 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 2185, i32 3 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 2191, i32 3 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 2403, i32 4 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 2410, i32 3 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 2433, i32 2 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 1907, i32 5 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 1916, i32 4 }
@___asan_gen_.702 = private unnamed_addr constant [8 x i8] c"phy_map\00", align 1
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 1325, i32 28 }
@___asan_gen_.705 = private unnamed_addr constant [8 x i8] c"log_map\00", align 1
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 1333, i32 28 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 2461, i32 3 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 2470, i32 3 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 2000, i32 3 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 2006, i32 3 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 2016, i32 3 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 2023, i32 3 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 2565, i32 3 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 2545, i32 3 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 2079, i32 3 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 1420, i32 3 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 1445, i32 3 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 2587, i32 3 }
@___asan_gen_.789 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.792 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.793 = private constant [27 x i8] c"../drivers/dma/ste_dma40.c\00", align 1
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.793, i32 2596, i32 3 }
@llvm.compiler.used = appending global [262 x ptr] [ptr @__d40_config_set_event._entry, ptr @__d40_config_set_event._entry_ptr, ptr @__d40_execute_command_phy._entry, ptr @__d40_execute_command_phy._entry_ptr, ptr @__initcall__kmod_ste_dma40__304_3724_stedma40_init4, ptr @__ksymtab_stedma40_filter, ptr @d40_alloc_chan_resources._entry, ptr @d40_alloc_chan_resources._entry.158, ptr @d40_alloc_chan_resources._entry_ptr, ptr @d40_alloc_chan_resources._entry_ptr.160, ptr @d40_allocate_channel._entry, ptr @d40_allocate_channel._entry.168, ptr @d40_allocate_channel._entry_ptr, ptr @d40_allocate_channel._entry_ptr.170, ptr @d40_config_memcpy._entry, ptr @d40_config_memcpy._entry_ptr, ptr @d40_dmaengine_init._entry, ptr @d40_dmaengine_init._entry.121, ptr @d40_dmaengine_init._entry.124, ptr @d40_dmaengine_init._entry_ptr, ptr @d40_dmaengine_init._entry_ptr.123, ptr @d40_dmaengine_init._entry_ptr.126, ptr @d40_free_chan_resources._entry, ptr @d40_free_chan_resources._entry.173, ptr @d40_free_chan_resources._entry_ptr, ptr @d40_free_chan_resources._entry_ptr.175, ptr @d40_free_dma._entry, ptr @d40_free_dma._entry.178, ptr @d40_free_dma._entry.181, ptr @d40_free_dma._entry.184, ptr @d40_free_dma._entry_ptr, ptr @d40_free_dma._entry_ptr.180, ptr @d40_free_dma._entry_ptr.183, ptr @d40_free_dma._entry_ptr.186, ptr @d40_handle_interrupt._entry, ptr @d40_handle_interrupt._entry_ptr, ptr @d40_hw_detect_init._entry, ptr @d40_hw_detect_init._entry.81, ptr @d40_hw_detect_init._entry.86, ptr @d40_hw_detect_init._entry.89, ptr @d40_hw_detect_init._entry.92, ptr @d40_hw_detect_init._entry.95, ptr @d40_hw_detect_init._entry_ptr, ptr @d40_hw_detect_init._entry_ptr.83, ptr @d40_hw_detect_init._entry_ptr.88, ptr @d40_hw_detect_init._entry_ptr.91, ptr @d40_hw_detect_init._entry_ptr.94, ptr @d40_hw_detect_init._entry_ptr.97, ptr @d40_is_paused._entry, ptr @d40_is_paused._entry_ptr, ptr @d40_issue_pending._entry, ptr @d40_issue_pending._entry_ptr, ptr @d40_lcla_allocate._entry, ptr @d40_lcla_allocate._entry.106, ptr @d40_lcla_allocate._entry_ptr, ptr @d40_lcla_allocate._entry_ptr.108, ptr @d40_of_probe._entry, ptr @d40_of_probe._entry.76, ptr @d40_of_probe._entry_ptr, ptr @d40_of_probe._entry_ptr.78, ptr @d40_pause._entry, ptr @d40_pause._entry_ptr, ptr @d40_phy_res_init._entry, ptr @d40_phy_res_init._entry.101, ptr @d40_phy_res_init._entry_ptr, ptr @d40_phy_res_init._entry_ptr.103, ptr @d40_prep_desc._entry, ptr @d40_prep_desc._entry.153, ptr @d40_prep_desc._entry_ptr, ptr @d40_prep_desc._entry_ptr.155, ptr @d40_prep_sg._entry, ptr @d40_prep_sg._entry.130, ptr @d40_prep_sg._entry_ptr, ptr @d40_prep_sg._entry_ptr.132, ptr @d40_probe._entry, ptr @d40_probe._entry.23, ptr @d40_probe._entry.27, ptr @d40_probe._entry.30, ptr @d40_probe._entry.34, ptr @d40_probe._entry.38, ptr @d40_probe._entry.41, ptr @d40_probe._entry.44, ptr @d40_probe._entry.49, ptr @d40_probe._entry.52, ptr @d40_probe._entry.55, ptr @d40_probe._entry.58, ptr @d40_probe._entry.61, ptr @d40_probe._entry.64, ptr @d40_probe._entry.68, ptr @d40_probe._entry_ptr, ptr @d40_probe._entry_ptr.25, ptr @d40_probe._entry_ptr.29, ptr @d40_probe._entry_ptr.33, ptr @d40_probe._entry_ptr.36, ptr @d40_probe._entry_ptr.40, ptr @d40_probe._entry_ptr.43, ptr @d40_probe._entry_ptr.46, ptr @d40_probe._entry_ptr.51, ptr @d40_probe._entry_ptr.54, ptr @d40_probe._entry_ptr.57, ptr @d40_probe._entry_ptr.60, ptr @d40_probe._entry_ptr.63, ptr @d40_probe._entry_ptr.67, ptr @d40_probe._entry_ptr.70, ptr @d40_resume._entry, ptr @d40_resume._entry_ptr, ptr @d40_set_runtime_config_write._entry, ptr @d40_set_runtime_config_write._entry.139, ptr @d40_set_runtime_config_write._entry.142, ptr @d40_set_runtime_config_write._entry.145, ptr @d40_set_runtime_config_write._entry_ptr, ptr @d40_set_runtime_config_write._entry_ptr.141, ptr @d40_set_runtime_config_write._entry_ptr.144, ptr @d40_set_runtime_config_write._entry_ptr.147, ptr @d40_terminate_all._entry, ptr @d40_terminate_all._entry.194, ptr @d40_terminate_all._entry_ptr, ptr @d40_terminate_all._entry_ptr.196, ptr @d40_tx_status._entry, ptr @d40_tx_status._entry_ptr, ptr @d40_validate_conf._entry, ptr @d40_validate_conf._entry.11, ptr @d40_validate_conf._entry.5, ptr @d40_validate_conf._entry.8, ptr @d40_validate_conf._entry_ptr, ptr @d40_validate_conf._entry_ptr.10, ptr @d40_validate_conf._entry_ptr.13, ptr @d40_validate_conf._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @dma40_memcpy_conf_log, ptr @dma40_memcpy_channels, ptr @dma40_memcpy_conf_phy, ptr @.str.14, ptr @.str.15, ptr @d40_driver, ptr @.str.16, ptr @d40_match, ptr @dma40_pm_ops, ptr @.str.17, ptr @.str.18, ptr @d40_probe.__key, ptr @.str.19, ptr @d40_probe.__key.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @d40_probe.__key.47, ptr @.str.48, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.66, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.82, ptr @.str.84, ptr @.str.85, ptr @.str.87, ptr @.str.90, ptr @.str.93, ptr @.str.96, ptr @d40_backup_regs_v4b, ptr @il_v4b, ptr @d40_backup_regs_v4a, ptr @il_v4a, ptr @d40_phy_res_init.__key, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.102, ptr @.str.104, ptr @.str.105, ptr @.str.107, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.122, ptr @.str.125, ptr @d40_chan_init.__key, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.131, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.140, ptr @.str.143, ptr @.str.146, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.154, ptr @.str.156, ptr @.str.157, ptr @.str.159, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.169, ptr @d40_get_prmo.phy_map, ptr @d40_get_prmo.log_map, ptr @.str.171, ptr @.str.172, ptr @.str.174, ptr @.str.176, ptr @.str.177, ptr @.str.179, ptr @.str.182, ptr @.str.185, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.195], section "llvm.metadata"
@0 = internal global [195 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_validate_conf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_validate_conf._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_validate_conf._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_validate_conf._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma40_memcpy_conf_log to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma40_memcpy_channels to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma40_memcpy_conf_phy to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_config_memcpy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma40_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_probe.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_probe._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_probe._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_probe.__key.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_probe._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_probe._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_probe._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_probe._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_probe._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_probe._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_probe._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_of_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_of_probe._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_hw_detect_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_hw_detect_init._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_hw_detect_init._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_hw_detect_init._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_hw_detect_init._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_hw_detect_init._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_backup_regs_v4b to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il_v4b to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_backup_regs_v4a to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il_v4a to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_phy_res_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_phy_res_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_phy_res_init._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_lcla_allocate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_lcla_allocate._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_handle_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_dmaengine_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_dmaengine_init._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_dmaengine_init._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_chan_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_prep_sg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_prep_sg._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_set_runtime_config_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_set_runtime_config_write._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_set_runtime_config_write._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_set_runtime_config_write._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_prep_desc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_prep_desc._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_alloc_chan_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_alloc_chan_resources._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_allocate_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_allocate_channel._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_get_prmo.phy_map to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_get_prmo.log_map to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_free_chan_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_free_chan_resources._entry.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_free_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_free_dma._entry.178 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_free_dma._entry.181 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_free_dma._entry.184 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_issue_pending._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_tx_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_is_paused._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_pause._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_terminate_all._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d40_terminate_all._entry.194 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @stedma40_filter(ptr noundef %chan, ptr noundef readonly %data) #0 align 64 {
entry:
  %cap.sroa.0.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %mode.i = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.then.if.end.i_crit_edge

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i.i = getelementptr i8, ptr %chan, i32 20
  %4 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i.i, align 4
  %device.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %5, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.if.end.i_crit_edge
  %res.0.i = phi i32 [ 0, %if.then.if.end.i_crit_edge ], [ -22, %do.end.i ]
  %dev_type.i = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %data, i32 0, i32 5
  %6 = ptrtoint ptr %dev_type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev_type.i, align 4
  %base.i = getelementptr i8, ptr %chan, i32 248
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  br i1 %cmp.i, label %land.lhs.true.i, label %land.lhs.true4.critedge.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %num_log_chans.i = getelementptr inbounds %struct.d40_base, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %num_log_chans.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_log_chans.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %11)
  %cmp2.i = icmp sgt i32 %7, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp10.i.old = icmp slt i32 %7, 0
  %or.cond34 = or i1 %cmp10.i.old, %cmp2.i
  br i1 %or.cond34, label %land.lhs.true.i.do.end14.i_crit_edge, label %land.lhs.true.i.if.end17.i_crit_edge

land.lhs.true.i.if.end17.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.i

land.lhs.true.i.do.end14.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14.i

land.lhs.true4.critedge.i:                        ; preds = %if.end.i
  %num_phy_chans.i = getelementptr inbounds %struct.d40_base, ptr %9, i32 0, i32 10
  %12 = ptrtoint ptr %num_phy_chans.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_phy_chans.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %13)
  %cmp7.i = icmp sgt i32 %7, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp10.i = icmp slt i32 %7, 0
  %or.cond = or i1 %cmp10.i, %cmp7.i
  br i1 %or.cond, label %land.lhs.true4.critedge.i.do.end14.i_crit_edge, label %land.lhs.true4.critedge.i.if.end17.i_crit_edge

land.lhs.true4.critedge.i.if.end17.i_crit_edge:   ; preds = %land.lhs.true4.critedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.i

land.lhs.true4.critedge.i.do.end14.i_crit_edge:   ; preds = %land.lhs.true4.critedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14.i

do.end14.i:                                       ; preds = %land.lhs.true4.critedge.i.do.end14.i_crit_edge, %land.lhs.true.i.do.end14.i_crit_edge
  %dev.i60.i = getelementptr i8, ptr %chan, i32 20
  %14 = ptrtoint ptr %dev.i60.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i60.i, align 4
  %device.i61.i = getelementptr inbounds %struct.dma_chan_dev, ptr %15, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i61.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef %7) #13
  br label %if.end17.i

if.end17.i:                                       ; preds = %do.end14.i, %land.lhs.true4.critedge.i.if.end17.i_crit_edge, %land.lhs.true.i.if.end17.i_crit_edge
  %res.1.i = phi i32 [ -22, %do.end14.i ], [ %res.0.i, %land.lhs.true4.critedge.i.if.end17.i_crit_edge ], [ %res.0.i, %land.lhs.true.i.if.end17.i_crit_edge ]
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %cmp19.i = icmp eq i32 %17, 3
  br i1 %cmp19.i, label %do.end23.i, label %if.end17.i.if.end25.i_crit_edge

if.end17.i.if.end25.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25.i

do.end23.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i62.i = getelementptr i8, ptr %chan, i32 20
  %18 = ptrtoint ptr %dev.i62.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i62.i, align 4
  %device.i63.i = getelementptr inbounds %struct.dma_chan_dev, ptr %19, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i63.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1) #13
  br label %if.end25.i

if.end25.i:                                       ; preds = %do.end23.i, %if.end17.i.if.end25.i_crit_edge
  %res.2.i = phi i32 [ -22, %do.end23.i ], [ %res.1.i, %if.end17.i.if.end25.i_crit_edge ]
  %psize.i = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %data, i32 0, i32 6, i32 2
  %20 = ptrtoint ptr %psize.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %psize.i, align 4
  br i1 %cmp.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i.i = icmp eq i32 %21, 0
  br i1 %cmp.i.i, label %d40_psize_2_burst_size.exit.thread.i, label %d40_psize_2_burst_size.exit.thread87.i

d40_psize_2_burst_size.exit.thread87.i:           ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %shl.i88.i = shl i32 2, %21
  %data_width89.i = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %data, i32 0, i32 6, i32 1
  %22 = ptrtoint ptr %data_width89.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %data_width89.i, align 4
  %mul90.i = mul i32 %23, %shl.i88.i
  br label %if.then.i65.i

d40_psize_2_burst_size.exit.thread.i:             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %data_width75.i = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %data, i32 0, i32 6, i32 1
  %24 = ptrtoint ptr %data_width75.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %data_width75.i, align 4
  br label %if.then.i65.i

if.else.i.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %21)
  %cmp2.i.i = icmp eq i32 %21, 4
  br i1 %cmp2.i.i, label %d40_psize_2_burst_size.exit.thread81.i, label %d40_psize_2_burst_size.exit.i

d40_psize_2_burst_size.exit.thread81.i:           ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %data_width83.i = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %data, i32 0, i32 6, i32 1
  %26 = ptrtoint ptr %data_width83.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %data_width83.i, align 4
  br label %if.else.i67.i

d40_psize_2_burst_size.exit.i:                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %shl.i.i = shl i32 2, %21
  %data_width.i = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %data, i32 0, i32 6, i32 1
  %28 = ptrtoint ptr %data_width.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %data_width.i, align 4
  %mul.i = mul i32 %29, %shl.i.i
  br label %if.else.i67.i

if.then.i65.i:                                    ; preds = %d40_psize_2_burst_size.exit.thread.i, %d40_psize_2_burst_size.exit.thread87.i
  %mul80.i = phi i32 [ %25, %d40_psize_2_burst_size.exit.thread.i ], [ %mul90.i, %d40_psize_2_burst_size.exit.thread87.i ]
  %.in92.i = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %data, i32 0, i32 7, i32 2
  %30 = ptrtoint ptr %.in92.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %.in92.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i64.i = icmp eq i32 %31, 0
  br i1 %cmp.i64.i, label %if.then.i65.i.d40_psize_2_burst_size.exit71.i_crit_edge, label %if.then.i65.i.if.end5.i69.i_crit_edge

if.then.i65.i.if.end5.i69.i_crit_edge:            ; preds = %if.then.i65.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i69.i

if.then.i65.i.d40_psize_2_burst_size.exit71.i_crit_edge: ; preds = %if.then.i65.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %d40_psize_2_burst_size.exit71.i

if.else.i67.i:                                    ; preds = %d40_psize_2_burst_size.exit.i, %d40_psize_2_burst_size.exit.thread81.i
  %mul86.i = phi i32 [ %27, %d40_psize_2_burst_size.exit.thread81.i ], [ %mul.i, %d40_psize_2_burst_size.exit.i ]
  %.in.i = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %data, i32 0, i32 7, i32 2
  %32 = ptrtoint ptr %.in.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %.in.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %33)
  %cmp2.i66.i = icmp eq i32 %33, 4
  br i1 %cmp2.i66.i, label %if.else.i67.i.d40_psize_2_burst_size.exit71.i_crit_edge, label %if.else.i67.i.if.end5.i69.i_crit_edge

if.else.i67.i.if.end5.i69.i_crit_edge:            ; preds = %if.else.i67.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i69.i

if.else.i67.i.d40_psize_2_burst_size.exit71.i_crit_edge: ; preds = %if.else.i67.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %d40_psize_2_burst_size.exit71.i

if.end5.i69.i:                                    ; preds = %if.else.i67.i.if.end5.i69.i_crit_edge, %if.then.i65.i.if.end5.i69.i_crit_edge
  %34 = phi i32 [ %33, %if.else.i67.i.if.end5.i69.i_crit_edge ], [ %31, %if.then.i65.i.if.end5.i69.i_crit_edge ]
  %mul78.i = phi i32 [ %mul86.i, %if.else.i67.i.if.end5.i69.i_crit_edge ], [ %mul80.i, %if.then.i65.i.if.end5.i69.i_crit_edge ]
  %shl.i68.i = shl i32 2, %34
  br label %d40_psize_2_burst_size.exit71.i

d40_psize_2_burst_size.exit71.i:                  ; preds = %if.end5.i69.i, %if.else.i67.i.d40_psize_2_burst_size.exit71.i_crit_edge, %if.then.i65.i.d40_psize_2_burst_size.exit71.i_crit_edge
  %mul79.i = phi i32 [ %mul78.i, %if.end5.i69.i ], [ %mul80.i, %if.then.i65.i.d40_psize_2_burst_size.exit71.i_crit_edge ], [ %mul86.i, %if.else.i67.i.d40_psize_2_burst_size.exit71.i_crit_edge ]
  %retval.0.i70.i = phi i32 [ %shl.i68.i, %if.end5.i69.i ], [ 1, %if.then.i65.i.d40_psize_2_burst_size.exit71.i_crit_edge ], [ 1, %if.else.i67.i.d40_psize_2_burst_size.exit71.i_crit_edge ]
  %data_width33.i = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %data, i32 0, i32 7, i32 1
  %35 = ptrtoint ptr %data_width33.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %data_width33.i, align 4
  %mul34.i = mul i32 %36, %retval.0.i70.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul79.i, i32 %mul34.i)
  %cmp35.not.i = icmp eq i32 %mul79.i, %mul34.i
  br i1 %cmp35.not.i, label %d40_validate_conf.exit, label %d40_validate_conf.exit.thread

d40_validate_conf.exit.thread:                    ; preds = %d40_psize_2_burst_size.exit71.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i72.i = getelementptr i8, ptr %chan, i32 20
  %37 = ptrtoint ptr %dev.i72.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i72.i, align 4
  %device.i73.i = getelementptr inbounds %struct.dma_chan_dev, ptr %38, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i73.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1) #13
  br label %if.end7

d40_validate_conf.exit:                           ; preds = %d40_psize_2_burst_size.exit71.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.2.i)
  %tobool1.not = icmp eq i32 %res.2.i, 0
  br i1 %tobool1.not, label %if.end4.thread26, label %d40_validate_conf.exit.if.end7_crit_edge

d40_validate_conf.exit.if.end7_crit_edge:         ; preds = %d40_validate_conf.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.end4.thread26:                                 ; preds = %d40_validate_conf.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dma_cfg = getelementptr i8, ptr %chan, i32 136
  %39 = call ptr @memcpy(ptr %dma_cfg, ptr %data, i32 60)
  br label %if.then6

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cap.sroa.0.i)
  %40 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %chan, align 4
  %cap_mask.i = getelementptr inbounds %struct.dma_device, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %cap_mask.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cap_mask.i, align 4
  %44 = ptrtoint ptr %cap.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %cap.sroa.0.i, align 4
  %cap.sroa.0.i.0.cap.sroa.0.i.0.cap.sroa.0.0.cap.sroa.0.0.cap.sroa.0.0..i = load volatile i32, ptr %cap.sroa.0.i, align 4
  %and1.i.i.i = and i32 %cap.sroa.0.i.0.cap.sroa.0.i.0.cap.sroa.0.0.cap.sroa.0.0.cap.sroa.0.0..i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i15 = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i15, label %if.else.if.else.i_crit_edge, label %land.lhs.true.i16

if.else.if.else.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true.i16:                                ; preds = %if.else
  %45 = ptrtoint ptr %cap.sroa.0.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %cap.sroa.0.i.0.cap.sroa.0.i.0.cap.sroa.0.0.cap.sroa.0.0.cap.sroa.0.0.35.i = load volatile i32, ptr %cap.sroa.0.i, align 4
  %46 = and i32 %cap.sroa.0.i.0.cap.sroa.0.i.0.cap.sroa.0.0.cap.sroa.0.0.cap.sroa.0.0.35.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool2.not.i = icmp eq i32 %46, 0
  br i1 %tobool2.not.i, label %if.then.i, label %land.lhs.true.i16.if.else.i_crit_edge

land.lhs.true.i16.if.else.i_crit_edge:            ; preds = %land.lhs.true.i16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i16
  call void @__sanitizer_cov_trace_pc() #12
  %dma_cfg.i = getelementptr i8, ptr %chan, i32 136
  %47 = call ptr @memcpy(ptr %dma_cfg.i, ptr @dma40_memcpy_conf_log, i32 60)
  %chan_id.i = getelementptr i8, ptr %chan, i32 16
  %48 = ptrtoint ptr %chan_id.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %chan_id.i, align 4
  %arrayidx.i = getelementptr [6 x i32], ptr @dma40_memcpy_channels, i32 0, i32 %49
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i, align 4
  %dev_type.i17 = getelementptr i8, ptr %chan, i32 152
  %52 = ptrtoint ptr %dev_type.i17 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %dev_type.i17, align 4
  %log_def.i = getelementptr i8, ptr %chan, i32 260
  %lcsp1.i = getelementptr i8, ptr %chan, i32 264
  tail call void @d40_log_cfg(ptr noundef %dma_cfg.i, ptr noundef %lcsp1.i, ptr noundef %log_def.i) #10
  br label %if.end4.thread31

if.else.i:                                        ; preds = %land.lhs.true.i16.if.else.i_crit_edge, %if.else.if.else.i_crit_edge
  %53 = ptrtoint ptr %cap.sroa.0.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %cap.sroa.0.i.0.cap.sroa.0.i.0.cap.sroa.0.0.cap.sroa.0.0.cap.sroa.0.0.36.i = load volatile i32, ptr %cap.sroa.0.i, align 4
  %and1.i.i32.i = and i32 %cap.sroa.0.i.0.cap.sroa.0.i.0.cap.sroa.0.0.cap.sroa.0.0.cap.sroa.0.0.36.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i32.i)
  %tobool8.not.i = icmp eq i32 %and1.i.i32.i, 0
  br i1 %tobool8.not.i, label %if.else.i.if.end4_crit_edge, label %land.lhs.true9.i

if.else.i.if.end4_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

land.lhs.true9.i:                                 ; preds = %if.else.i
  %54 = ptrtoint ptr %cap.sroa.0.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %cap.sroa.0.i.0.cap.sroa.0.i.0.cap.sroa.0.0.cap.sroa.0.0.cap.sroa.0.0.37.i = load volatile i32, ptr %cap.sroa.0.i, align 4
  %55 = and i32 %cap.sroa.0.i.0.cap.sroa.0.i.0.cap.sroa.0.0.cap.sroa.0.0.cap.sroa.0.0.37.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool11.not.i = icmp eq i32 %55, 0
  br i1 %tobool11.not.i, label %land.lhs.true9.i.if.end4_crit_edge, label %if.then12.i

land.lhs.true9.i.if.end4_crit_edge:               ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then12.i:                                      ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #12
  %dma_cfg13.i = getelementptr i8, ptr %chan, i32 136
  %56 = call ptr @memcpy(ptr %dma_cfg13.i, ptr @dma40_memcpy_conf_phy, i32 60)
  %dst_def_cfg.i = getelementptr i8, ptr %chan, i32 256
  %57 = ptrtoint ptr %dst_def_cfg.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %dst_def_cfg.i, align 4
  %src_def_cfg.i = getelementptr i8, ptr %chan, i32 252
  %59 = ptrtoint ptr %src_def_cfg.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %src_def_cfg.i, align 4
  %or14.i = or i32 %60, 8192
  store i32 %or14.i, ptr %src_def_cfg.i, align 4
  %or16.i = or i32 %58, 24576
  store i32 %or16.i, ptr %dst_def_cfg.i, align 4
  br label %if.end4.thread31

if.end4.thread31:                                 ; preds = %if.then12.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cap.sroa.0.i)
  br label %if.then6

if.end4:                                          ; preds = %land.lhs.true9.i.if.end4_crit_edge, %if.else.i.if.end4_crit_edge
  %dev.i.i18 = getelementptr i8, ptr %chan, i32 20
  %61 = ptrtoint ptr %dev.i.i18 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev.i.i18, align 4
  %device.i.i19 = getelementptr inbounds %struct.dma_chan_dev, ptr %62, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i.i19, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cap.sroa.0.i)
  br label %if.end7

if.then6:                                         ; preds = %if.end4.thread31, %if.end4.thread26
  %configured = getelementptr i8, ptr %chan, i32 244
  %63 = ptrtoint ptr %configured to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %configured, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4, %d40_validate_conf.exit.if.end7_crit_edge, %d40_validate_conf.exit.thread
  %tobool5.not25 = phi i1 [ true, %if.then6 ], [ false, %if.end4 ], [ false, %d40_validate_conf.exit.if.end7_crit_edge ], [ false, %d40_validate_conf.exit.thread ]
  ret i1 %tobool5.not25
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stedma40_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @d40_driver, ptr noundef nonnull @d40_probe, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @d40_log_cfg(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @d40_probe(ptr noundef %pdev) #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then:                                          ; preds = %entry
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %do.end, label %if.then3

if.then3:                                         ; preds = %if.then
  %call4 = tail call fastcc i32 @d40_of_probe(ptr noundef %pdev, ptr noundef nonnull %3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then3.if.end9_crit_edge, label %if.then3.do.end260_crit_edge

if.then3.do.end260_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end260

if.then3.if.end9_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #13
  br label %do.end260

if.end9:                                          ; preds = %if.then3.if.end9_crit_edge, %entry.if.end9_crit_edge
  %call10 = tail call fastcc ptr @d40_hw_detect_init(ptr noundef %pdev) #14
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end9.do.end260_crit_edge, label %if.end13

if.end9.do.end260_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end260

if.end13:                                         ; preds = %if.end9
  %call14 = tail call fastcc i32 @d40_phy_res_init(ptr noundef nonnull %call10) #14
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call10, ptr %driver_data.i.i, align 4
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call10, ptr noundef nonnull @.str.19, ptr noundef nonnull @d40_probe.__key, i16 noundef signext 3) #10
  %execmd_lock = getelementptr inbounds %struct.d40_base, ptr %call10, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %execmd_lock, ptr noundef nonnull @.str.21, ptr noundef nonnull @d40_probe.__key.20, i16 noundef signext 3) #10
  %call23 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.22) #10
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %if.then25, label %if.end30

if.then25:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.18) #13
  br label %destroy_cache

if.end30:                                         ; preds = %if.end13
  %end.i = getelementptr inbounds %struct.resource, ptr %call23, i32 0, i32 1
  %5 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %end.i, align 4
  %7 = ptrtoint ptr %call23 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call23, align 4
  %sub.i = add i32 %6, 1
  %add.i = sub i32 %sub.i, %8
  %lcpa_size = getelementptr inbounds %struct.d40_base, ptr %call10, i32 0, i32 25
  %9 = ptrtoint ptr %lcpa_size to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add.i, ptr %lcpa_size, align 4
  %10 = load i32, ptr %call23, align 4
  %phy_lcpa = getelementptr inbounds %struct.d40_base, ptr %call10, i32 0, i32 24
  %11 = ptrtoint ptr %phy_lcpa to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %phy_lcpa, align 4
  %12 = load i32, ptr %call23, align 4
  %13 = load i32, ptr %end.i, align 4
  %sub.i399 = sub i32 1, %12
  %add.i400 = add i32 %sub.i399, %13
  %call34 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %12, i32 noundef %add.i400, ptr noundef nonnull @.str.26, i32 noundef 0) #10
  %cmp = icmp eq ptr %call34, null
  br i1 %cmp, label %if.then35, label %if.end40

if.then35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.18, ptr noundef nonnull %call23) #13
  br label %destroy_cache

if.end40:                                         ; preds = %if.end30
  %virtbase = getelementptr inbounds %struct.d40_base, ptr %call10, i32 0, i32 3
  %14 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %virtbase, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 32
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !382
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !383
  %18 = ptrtoint ptr %call23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %call23, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %17)
  %cmp44.not = icmp eq i32 %19, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp45.not = icmp eq i32 %16, 0
  %or.cond = select i1 %cmp44.not, i1 true, i1 %cmp45.not
  br i1 %or.cond, label %do.body53, label %do.end49

do.end49:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.18, i32 noundef %17, ptr noundef nonnull %call23) #13
  br label %if.end59

do.body53:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !384
  tail call void @arm_heavy_mb() #10
  %20 = ptrtoint ptr %call23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %call23, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %23 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %virtbase, align 4
  %add.ptr58 = getelementptr i8, ptr %24, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 %22) #10, !srcloc !385
  br label %if.end59

if.end59:                                         ; preds = %do.body53, %do.end49
  %25 = ptrtoint ptr %call23 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %call23, align 4
  %27 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %end.i, align 4
  %sub.i402 = sub i32 1, %26
  %add.i403 = add i32 %sub.i402, %28
  %call62 = tail call ptr @ioremap(i32 noundef %26, i32 noundef %add.i403) #10
  %lcpa_base = getelementptr inbounds %struct.d40_base, ptr %call10, i32 0, i32 23
  %29 = ptrtoint ptr %lcpa_base to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call62, ptr %lcpa_base, align 4
  %tobool64.not = icmp eq ptr %call62, null
  br i1 %tobool64.not, label %if.then65, label %if.end70

if.then65:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.18) #13
  br label %destroy_cache

if.end70:                                         ; preds = %if.end59
  %plat_data71 = getelementptr inbounds %struct.d40_base, ptr %call10, i32 0, i32 19
  %30 = ptrtoint ptr %plat_data71 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %plat_data71, align 4
  %use_esram_lcla = getelementptr inbounds %struct.stedma40_platform_data, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %use_esram_lcla to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %use_esram_lcla, align 4, !range !386
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool72.not = icmp eq i8 %33, 0
  br i1 %tobool72.not, label %if.else101, label %if.then73

if.then73:                                        ; preds = %if.end70
  %call74 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.37) #10
  %tobool75.not = icmp eq ptr %call74, null
  br i1 %tobool75.not, label %if.then76, label %if.end81

if.then76:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.18) #13
  br label %destroy_cache

if.end81:                                         ; preds = %if.then73
  %34 = ptrtoint ptr %call74 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %call74, align 4
  %end.i404 = getelementptr inbounds %struct.resource, ptr %call74, i32 0, i32 1
  %36 = ptrtoint ptr %end.i404 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %end.i404, align 4
  %sub.i405 = sub i32 1, %35
  %add.i406 = add i32 %sub.i405, %37
  %call84 = tail call ptr @ioremap(i32 noundef %35, i32 noundef %add.i406) #10
  %lcla_pool = getelementptr inbounds %struct.d40_base, ptr %call10, i32 0, i32 22
  %38 = ptrtoint ptr %lcla_pool to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call84, ptr %lcla_pool, align 4
  %tobool88.not = icmp eq ptr %call84, null
  br i1 %tobool88.not, label %if.then89, label %do.body95

if.then89:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.18) #13
  br label %destroy_cache

do.body95:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !387
  tail call void @arm_heavy_mb() #10
  %39 = ptrtoint ptr %call74 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %call74, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %42 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %virtbase, align 4
  %add.ptr100 = getelementptr i8, ptr %43, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr100, i32 %41) #10, !srcloc !385
  br label %do.body111

if.else101:                                       ; preds = %if.end70
  %call102 = tail call fastcc i32 @d40_lcla_allocate(ptr noundef nonnull %call10) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.else101.do.body111_crit_edge, label %do.end107

if.else101.do.body111_crit_edge:                  ; preds = %if.else101
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body111

do.end107:                                        ; preds = %if.else101
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.18) #13
  br label %destroy_cache

do.body111:                                       ; preds = %if.else101.do.body111_crit_edge, %do.body95
  %lock = getelementptr inbounds %struct.d40_base, ptr %call10, i32 0, i32 22, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.48, ptr noundef nonnull @d40_probe.__key.47, i16 noundef signext 3) #10
  %call116 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #10
  %irq = getelementptr inbounds %struct.d40_base, ptr %call10, i32 0, i32 8
  %44 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call116, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %call116, ptr noundef nonnull @d40_handle_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef nonnull %call10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool119.not = icmp eq i32 %call.i, 0
  br i1 %tobool119.not, label %if.end125, label %do.end123

do.end123:                                        ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.18) #13
  br label %destroy_cache

if.end125:                                        ; preds = %do.body111
  %45 = ptrtoint ptr %plat_data71 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %plat_data71, align 4
  %use_esram_lcla127 = getelementptr inbounds %struct.stedma40_platform_data, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %use_esram_lcla127 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %use_esram_lcla127, align 4, !range !386
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool128.not = icmp eq i8 %48, 0
  br i1 %tobool128.not, label %if.end125.if.end154_crit_edge, label %if.then129

if.end125.if.end154_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end154

if.then129:                                       ; preds = %if.end125
  %dev130 = getelementptr inbounds %struct.d40_base, ptr %call10, i32 0, i32 2
  %49 = ptrtoint ptr %dev130 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev130, align 4
  %call131 = tail call ptr @regulator_get(ptr noundef %50, ptr noundef nonnull @.str.37) #10
  %lcpa_regulator = getelementptr inbounds %struct.d40_base, ptr %call10, i32 0, i32 20
  %51 = ptrtoint ptr %lcpa_regulator to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call131, ptr %lcpa_regulator, align 4
  %cmp.i = icmp ugt ptr %call131, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end137, label %if.end142

do.end137:                                        ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.18) #13
  %52 = ptrtoint ptr %lcpa_regulator to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %lcpa_regulator, align 4
  %54 = ptrtoint ptr %53 to i32
  store ptr null, ptr %lcpa_regulator, align 4
  br label %destroy_cache

if.end142:                                        ; preds = %if.then129
  %call144 = tail call i32 @regulator_enable(ptr noundef %call131) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %if.end142.if.end154_crit_edge, label %do.end149

if.end142.if.end154_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end154

do.end149:                                        ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.18) #13
  %55 = ptrtoint ptr %lcpa_regulator to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %lcpa_regulator, align 4
  tail call void @regulator_put(ptr noundef %56) #10
  %57 = ptrtoint ptr %lcpa_regulator to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %lcpa_regulator, align 4
  br label %destroy_cache

if.end154:                                        ; preds = %if.end142.if.end154_crit_edge, %if.end125.if.end154_crit_edge
  %58 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %virtbase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 33489664) #10, !srcloc !385
  %dev157 = getelementptr inbounds %struct.d40_base, ptr %call10, i32 0, i32 2
  %60 = ptrtoint ptr %dev157 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev157, align 4
  tail call void @pm_runtime_irq_safe(ptr noundef %61) #10
  %62 = ptrtoint ptr %dev157 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev157, align 4
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %63, i32 noundef 100) #10
  %64 = ptrtoint ptr %dev157 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev157, align 4
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %65, i1 noundef zeroext true) #10
  %66 = ptrtoint ptr %dev157 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev157, align 4
  %call.i407 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %67, i32 0, i32 12, i32 22
  %68 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %68)
  store volatile i64 %call.i407, ptr %last_busy.i, align 8
  %69 = ptrtoint ptr %dev157 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev157, align 4
  %call.i408 = tail call i32 @__pm_runtime_set_status(ptr noundef %70, i32 noundef 0) #10
  %71 = ptrtoint ptr %dev157 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev157, align 4
  tail call void @pm_runtime_enable(ptr noundef %72) #10
  %call164 = tail call fastcc i32 @d40_dmaengine_init(ptr noundef nonnull %call10, i32 noundef %call14) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164)
  %tobool165.not = icmp eq i32 %call164, 0
  br i1 %tobool165.not, label %if.end167, label %if.end154.destroy_cache_crit_edge

if.end154.destroy_cache_crit_edge:                ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #12
  br label %destroy_cache

if.end167:                                        ; preds = %if.end154
  %73 = ptrtoint ptr %dev157 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev157, align 4
  %dma_parms.i = getelementptr inbounds %struct.device, ptr %74, i32 0, i32 22
  %75 = ptrtoint ptr %dma_parms.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dma_parms.i, align 4
  %tobool.not.i = icmp eq ptr %76, null
  br i1 %tobool.not.i, label %do.end174, label %if.end176

do.end174:                                        ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.18) #13
  br label %destroy_cache

if.end176:                                        ; preds = %if.end167
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 65535, ptr %76, align 4
  tail call fastcc void @d40_hw_init(ptr noundef nonnull %call10) #14
  %tobool177.not = icmp eq ptr %3, null
  br i1 %tobool177.not, label %if.end176.do.end190_crit_edge, label %if.then178

if.end176.do.end190_crit_edge:                    ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end190

if.then178:                                       ; preds = %if.end176
  %call179 = tail call i32 @of_dma_controller_register(ptr noundef nonnull %3, ptr noundef nonnull @d40_xlate, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call179)
  %tobool180.not = icmp eq i32 %call179, 0
  br i1 %tobool180.not, label %if.then178.do.end190_crit_edge, label %do.end184

if.then178.do.end190_crit_edge:                   ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end190

do.end184:                                        ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.62) #13
  br label %do.end190

do.end190:                                        ; preds = %do.end184, %if.then178.do.end190_crit_edge, %if.end176.do.end190_crit_edge
  %78 = ptrtoint ptr %dev157 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev157, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %79, ptr noundef nonnull @.str.65) #13
  br label %cleanup

destroy_cache:                                    ; preds = %do.end174, %if.end154.destroy_cache_crit_edge, %do.end149, %do.end137, %do.end123, %do.end107, %if.then89, %if.then76, %if.then65, %if.then35, %if.then25
  %ret.0 = phi i32 [ -16, %if.then35 ], [ %call.i, %do.end123 ], [ %54, %do.end137 ], [ %call144, %do.end149 ], [ %call164, %if.end154.destroy_cache_crit_edge ], [ -5, %do.end174 ], [ -12, %if.then89 ], [ -2, %if.then76 ], [ %call102, %do.end107 ], [ -12, %if.then65 ], [ -2, %if.then25 ]
  %desc_slab = getelementptr inbounds %struct.d40_base, ptr %call10, i32 0, i32 26
  %80 = ptrtoint ptr %desc_slab to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %desc_slab, align 4
  tail call void @kmem_cache_destroy(ptr noundef %81) #10
  %virtbase192 = getelementptr inbounds %struct.d40_base, ptr %call10, i32 0, i32 3
  %82 = ptrtoint ptr %virtbase192 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %virtbase192, align 4
  %tobool193.not = icmp eq ptr %83, null
  br i1 %tobool193.not, label %destroy_cache.if.end196_crit_edge, label %if.then194

destroy_cache.if.end196_crit_edge:                ; preds = %destroy_cache
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end196

if.then194:                                       ; preds = %destroy_cache
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iounmap(ptr noundef nonnull %83) #10
  br label %if.end196

if.end196:                                        ; preds = %if.then194, %destroy_cache.if.end196_crit_edge
  %lcla_pool197 = getelementptr inbounds %struct.d40_base, ptr %call10, i32 0, i32 22
  %84 = ptrtoint ptr %lcla_pool197 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %lcla_pool197, align 4
  %tobool199.not = icmp eq ptr %85, null
  br i1 %tobool199.not, label %if.end196.if.end209_crit_edge, label %land.lhs.true200

if.end196.if.end209_crit_edge:                    ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end209

land.lhs.true200:                                 ; preds = %if.end196
  %plat_data201 = getelementptr inbounds %struct.d40_base, ptr %call10, i32 0, i32 19
  %86 = ptrtoint ptr %plat_data201 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %plat_data201, align 4
  %use_esram_lcla202 = getelementptr inbounds %struct.stedma40_platform_data, ptr %87, i32 0, i32 3
  %88 = ptrtoint ptr %use_esram_lcla202 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %use_esram_lcla202, align 4, !range !386
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool203.not = icmp eq i8 %89, 0
  br i1 %tobool203.not, label %land.lhs.true200.if.end209_crit_edge, label %if.then204

land.lhs.true200.if.end209_crit_edge:             ; preds = %land.lhs.true200
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end209

if.then204:                                       ; preds = %land.lhs.true200
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iounmap(ptr noundef nonnull %85) #10
  %90 = ptrtoint ptr %lcla_pool197 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %lcla_pool197, align 4
  br label %if.end209

if.end209:                                        ; preds = %if.then204, %land.lhs.true200.if.end209_crit_edge, %if.end196.if.end209_crit_edge
  %dma_addr = getelementptr inbounds %struct.d40_base, ptr %call10, i32 0, i32 22, i32 1
  %91 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %dma_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool211.not = icmp eq i32 %92, 0
  br i1 %tobool211.not, label %if.end209.if.end216_crit_edge, label %if.then212

if.end209.if.end216_crit_edge:                    ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end216

if.then212:                                       ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #12
  %dev213 = getelementptr inbounds %struct.d40_base, ptr %call10, i32 0, i32 2
  %93 = ptrtoint ptr %dev213 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev213, align 4
  %num_phy_chans = getelementptr inbounds %struct.d40_base, ptr %call10, i32 0, i32 10
  %95 = ptrtoint ptr %num_phy_chans to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %num_phy_chans, align 4
  %mul = shl i32 %96, 10
  tail call void @dma_unmap_page_attrs(ptr noundef %94, i32 noundef %92, i32 noundef %mul, i32 noundef 1, i32 noundef 0) #10
  br label %if.end216

if.end216:                                        ; preds = %if.then212, %if.end209.if.end216_crit_edge
  %base_unaligned = getelementptr inbounds %struct.d40_base, ptr %call10, i32 0, i32 22, i32 2
  %97 = ptrtoint ptr %base_unaligned to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %base_unaligned, align 4
  %tobool218.not = icmp eq ptr %98, null
  br i1 %tobool218.not, label %land.lhs.true219, label %if.end216.if.end227_crit_edge

if.end216.if.end227_crit_edge:                    ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end227

land.lhs.true219:                                 ; preds = %if.end216
  %99 = ptrtoint ptr %lcla_pool197 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %lcla_pool197, align 4
  %tobool222.not = icmp eq ptr %100, null
  br i1 %tobool222.not, label %land.lhs.true219.if.end227_crit_edge, label %if.then223

land.lhs.true219.if.end227_crit_edge:             ; preds = %land.lhs.true219
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end227

if.then223:                                       ; preds = %land.lhs.true219
  call void @__sanitizer_cov_trace_pc() #12
  %101 = ptrtoint ptr %100 to i32
  %pages = getelementptr inbounds %struct.d40_base, ptr %call10, i32 0, i32 22, i32 3
  %102 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %pages, align 4
  tail call void @free_pages(i32 noundef %101, i32 noundef %103) #10
  br label %if.end227

if.end227:                                        ; preds = %if.then223, %land.lhs.true219.if.end227_crit_edge, %if.end216.if.end227_crit_edge
  %104 = ptrtoint ptr %base_unaligned to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %base_unaligned, align 4
  tail call void @kfree(ptr noundef %105) #10
  %lcpa_base230 = getelementptr inbounds %struct.d40_base, ptr %call10, i32 0, i32 23
  %106 = ptrtoint ptr %lcpa_base230 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %lcpa_base230, align 4
  %tobool231.not = icmp eq ptr %107, null
  br i1 %tobool231.not, label %if.end227.if.end234_crit_edge, label %if.then232

if.end227.if.end234_crit_edge:                    ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end234

if.then232:                                       ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iounmap(ptr noundef nonnull %107) #10
  br label %if.end234

if.end234:                                        ; preds = %if.then232, %if.end227.if.end234_crit_edge
  %phy_lcpa235 = getelementptr inbounds %struct.d40_base, ptr %call10, i32 0, i32 24
  %108 = ptrtoint ptr %phy_lcpa235 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %phy_lcpa235, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool236.not = icmp eq i32 %109, 0
  br i1 %tobool236.not, label %if.end234.if.end240_crit_edge, label %if.then237

if.end234.if.end240_crit_edge:                    ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end240

if.then237:                                       ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #12
  %lcpa_size239 = getelementptr inbounds %struct.d40_base, ptr %call10, i32 0, i32 25
  %110 = ptrtoint ptr %lcpa_size239 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %lcpa_size239, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %109, i32 noundef %111) #10
  br label %if.end240

if.end240:                                        ; preds = %if.then237, %if.end234.if.end240_crit_edge
  %phy_start = getelementptr inbounds %struct.d40_base, ptr %call10, i32 0, i32 6
  %112 = ptrtoint ptr %phy_start to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %phy_start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool241.not = icmp eq i32 %113, 0
  br i1 %tobool241.not, label %if.end240.if.end244_crit_edge, label %if.then242

if.end240.if.end244_crit_edge:                    ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end244

if.then242:                                       ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #12
  %phy_size = getelementptr inbounds %struct.d40_base, ptr %call10, i32 0, i32 7
  %114 = ptrtoint ptr %phy_size to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %phy_size, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %113, i32 noundef %115) #10
  br label %if.end244

if.end244:                                        ; preds = %if.then242, %if.end240.if.end244_crit_edge
  %clk = getelementptr inbounds %struct.d40_base, ptr %call10, i32 0, i32 5
  %116 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %clk, align 4
  %tobool245.not = icmp eq ptr %117, null
  br i1 %tobool245.not, label %if.end244.if.end249_crit_edge, label %if.then246

if.end244.if.end249_crit_edge:                    ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end249

if.then246:                                       ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_disable(ptr noundef nonnull %117) #10
  tail call void @clk_unprepare(ptr noundef nonnull %117) #10
  %118 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %clk, align 4
  tail call void @clk_put(ptr noundef %119) #10
  br label %if.end249

if.end249:                                        ; preds = %if.then246, %if.end244.if.end249_crit_edge
  %lcpa_regulator250 = getelementptr inbounds %struct.d40_base, ptr %call10, i32 0, i32 20
  %120 = ptrtoint ptr %lcpa_regulator250 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %lcpa_regulator250, align 4
  %tobool251.not = icmp eq ptr %121, null
  br i1 %tobool251.not, label %if.end249.if.end256_crit_edge, label %if.then252

if.end249.if.end256_crit_edge:                    ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end256

if.then252:                                       ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #12
  %call254 = tail call i32 @regulator_disable(ptr noundef nonnull %121) #10
  %122 = ptrtoint ptr %lcpa_regulator250 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %lcpa_regulator250, align 4
  tail call void @regulator_put(ptr noundef %123) #10
  br label %if.end256

if.end256:                                        ; preds = %if.then252, %if.end249.if.end256_crit_edge
  %alloc_map = getelementptr inbounds %struct.d40_base, ptr %call10, i32 0, i32 22, i32 5
  %124 = ptrtoint ptr %alloc_map to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %alloc_map, align 4
  tail call void @kfree(ptr noundef %125) #10
  %lookup_log_chans = getelementptr inbounds %struct.d40_base, ptr %call10, i32 0, i32 17
  %126 = ptrtoint ptr %lookup_log_chans to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %lookup_log_chans, align 4
  tail call void @kfree(ptr noundef %127) #10
  %lookup_phy_chans = getelementptr inbounds %struct.d40_base, ptr %call10, i32 0, i32 18
  %128 = ptrtoint ptr %lookup_phy_chans to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %lookup_phy_chans, align 4
  tail call void @kfree(ptr noundef %129) #10
  %phy_res = getelementptr inbounds %struct.d40_base, ptr %call10, i32 0, i32 21
  %130 = ptrtoint ptr %phy_res to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %phy_res, align 4
  tail call void @kfree(ptr noundef %131) #10
  tail call void @kfree(ptr noundef nonnull %call10) #10
  br label %do.end260

do.end260:                                        ; preds = %if.end256, %if.end9.do.end260_crit_edge, %do.end, %if.then3.do.end260_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.end256 ], [ -2, %if.end9.do.end260_crit_edge ], [ -2, %do.end ], [ -12, %if.then3.do.end260_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.18) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end260, %do.end190
  %retval.0 = phi i32 [ %ret.1, %do.end260 ], [ 0, %do.end190 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dma40_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @pm_runtime_force_suspend(ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %lcpa_regulator = getelementptr inbounds %struct.d40_base, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %lcpa_regulator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lcpa_regulator, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call i32 @regulator_disable(ptr noundef nonnull %3) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call5, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dma40_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lcpa_regulator = getelementptr inbounds %struct.d40_base, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %lcpa_regulator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lcpa_regulator, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @regulator_enable(ptr noundef nonnull %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then.if.end5_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %call6 = tail call i32 @pm_runtime_force_resume(ptr noundef %dev) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ %call2, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dma40_runtime_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call fastcc void @d40_save_restore_registers(ptr noundef %1, i1 noundef zeroext true)
  %rev = getelementptr inbounds %struct.d40_base, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %rev, align 4
  %bf.lshr.mask = and i8 %bf.load, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %bf.lshr.mask)
  %cmp.not = icmp eq i8 %bf.lshr.mask, 16
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %gcc_pwr_off_mask = getelementptr inbounds %struct.d40_base, ptr %1, i32 0, i32 31
  %3 = ptrtoint ptr %gcc_pwr_off_mask to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %gcc_pwr_off_mask, align 4
  %conv2 = zext i16 %4 to i32
  %5 = tail call i32 @llvm.bswap.i32(i32 %conv2)
  %virtbase = getelementptr inbounds %struct.d40_base, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %virtbase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #10, !srcloc !385
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dma40_runtime_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call fastcc void @d40_save_restore_registers(ptr noundef %1, i1 noundef zeroext false)
  %virtbase = getelementptr inbounds %struct.d40_base, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %virtbase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 33489664) #10, !srcloc !385
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @d40_save_restore_registers(ptr nocapture noundef %base, i1 noundef zeroext %save) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %num_phy_chans = getelementptr inbounds %struct.d40_base, ptr %base, i32 0, i32 10
  %0 = ptrtoint ptr %num_phy_chans to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_phy_chans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp57 = icmp sgt i32 %1, 0
  br i1 %cmp57, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %phy_res = getelementptr inbounds %struct.d40_base, ptr %base, i32 0, i32 21
  %virtbase = getelementptr inbounds %struct.d40_base, ptr %base, i32 0, i32 3
  %reg_val_backup_chan = getelementptr inbounds %struct.d40_base, ptr %base, i32 0, i32 29
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.058 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %2 = ptrtoint ptr %phy_res to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_res, align 4
  %reserved = getelementptr %struct.d40_phy_res, ptr %3, i32 %i.058, i32 1
  %4 = ptrtoint ptr %reserved to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %reserved, align 4, !range !386
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %for.body
  %6 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %virtbase, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 1024
  %mul = shl i32 %i.058, 5
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %mul
  %mul2 = shl i32 %i.058, 3
  %8 = ptrtoint ptr %reg_val_backup_chan to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_val_backup_chan, align 4
  %arrayidx3 = getelementptr i32, ptr %9, i32 %mul2
  br i1 %save, label %if.then.i.7, label %if.else.i.7

if.else.i.7:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx3, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %12) #10, !srcloc !385
  %add.ptr.i.1 = getelementptr i8, ptr %add.ptr1, i32 4
  %arrayidx2.i.1 = getelementptr i32, ptr %arrayidx3, i32 1
  %13 = ptrtoint ptr %arrayidx2.i.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx2.i.1, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1, i32 %15) #10, !srcloc !385
  %add.ptr.i.2 = getelementptr i8, ptr %add.ptr1, i32 8
  %arrayidx2.i.2 = getelementptr i32, ptr %arrayidx3, i32 2
  %16 = ptrtoint ptr %arrayidx2.i.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx2.i.2, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2, i32 %18) #10, !srcloc !385
  %add.ptr.i.3 = getelementptr i8, ptr %add.ptr1, i32 12
  %arrayidx2.i.3 = getelementptr i32, ptr %arrayidx3, i32 3
  %19 = ptrtoint ptr %arrayidx2.i.3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx2.i.3, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.3, i32 %21) #10, !srcloc !385
  %add.ptr.i.4 = getelementptr i8, ptr %add.ptr1, i32 16
  %arrayidx2.i.4 = getelementptr i32, ptr %arrayidx3, i32 4
  %22 = ptrtoint ptr %arrayidx2.i.4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx2.i.4, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.4, i32 %24) #10, !srcloc !385
  %add.ptr.i.5 = getelementptr i8, ptr %add.ptr1, i32 20
  %arrayidx2.i.5 = getelementptr i32, ptr %arrayidx3, i32 5
  %25 = ptrtoint ptr %arrayidx2.i.5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx2.i.5, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.5, i32 %27) #10, !srcloc !385
  %add.ptr.i.6 = getelementptr i8, ptr %add.ptr1, i32 24
  %arrayidx2.i.6 = getelementptr i32, ptr %arrayidx3, i32 6
  %28 = ptrtoint ptr %arrayidx2.i.6 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx2.i.6, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.6, i32 %30) #10, !srcloc !385
  %add.ptr.i.7 = getelementptr i8, ptr %add.ptr1, i32 28
  %arrayidx2.i.7 = getelementptr i32, ptr %arrayidx3, i32 7
  %31 = ptrtoint ptr %arrayidx2.i.7 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx2.i.7, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.7, i32 %33) #10, !srcloc !385
  br label %cleanup

if.then.i.7:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #10, !srcloc !382
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #10
  %36 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %arrayidx3, align 4
  %add.ptr.i.160 = getelementptr i8, ptr %add.ptr1, i32 4
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.160) #10, !srcloc !382
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #10
  %arrayidx1.i.1 = getelementptr i32, ptr %arrayidx3, i32 1
  %39 = ptrtoint ptr %arrayidx1.i.1 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %arrayidx1.i.1, align 4
  %add.ptr.i.262 = getelementptr i8, ptr %add.ptr1, i32 8
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.262) #10, !srcloc !382
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #10
  %arrayidx1.i.2 = getelementptr i32, ptr %arrayidx3, i32 2
  %42 = ptrtoint ptr %arrayidx1.i.2 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %arrayidx1.i.2, align 4
  %add.ptr.i.364 = getelementptr i8, ptr %add.ptr1, i32 12
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.364) #10, !srcloc !382
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #10
  %arrayidx1.i.3 = getelementptr i32, ptr %arrayidx3, i32 3
  %45 = ptrtoint ptr %arrayidx1.i.3 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %arrayidx1.i.3, align 4
  %add.ptr.i.466 = getelementptr i8, ptr %add.ptr1, i32 16
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.466) #10, !srcloc !382
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #10
  %arrayidx1.i.4 = getelementptr i32, ptr %arrayidx3, i32 4
  %48 = ptrtoint ptr %arrayidx1.i.4 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %arrayidx1.i.4, align 4
  %add.ptr.i.568 = getelementptr i8, ptr %add.ptr1, i32 20
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.568) #10, !srcloc !382
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #10
  %arrayidx1.i.5 = getelementptr i32, ptr %arrayidx3, i32 5
  %51 = ptrtoint ptr %arrayidx1.i.5 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %arrayidx1.i.5, align 4
  %add.ptr.i.670 = getelementptr i8, ptr %add.ptr1, i32 24
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.670) #10, !srcloc !382
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #10
  %arrayidx1.i.6 = getelementptr i32, ptr %arrayidx3, i32 6
  %54 = ptrtoint ptr %arrayidx1.i.6 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %arrayidx1.i.6, align 4
  %add.ptr.i.772 = getelementptr i8, ptr %add.ptr1, i32 28
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.772) #10, !srcloc !382
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #10
  %arrayidx1.i.7 = getelementptr i32, ptr %arrayidx3, i32 7
  %57 = ptrtoint ptr %arrayidx1.i.7 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %arrayidx1.i.7, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.7, %if.else.i.7, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.058, 1
  %58 = ptrtoint ptr %num_phy_chans to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %num_phy_chans, align 4
  %cmp = icmp slt i32 %inc, %59
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %virtbase6 = getelementptr inbounds %struct.d40_base, ptr %base, i32 0, i32 3
  %60 = ptrtoint ptr %virtbase6 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %virtbase6, align 4
  %reg_val_backup = getelementptr inbounds %struct.d40_base, ptr %base, i32 0, i32 27
  %add.ptr.i35 = getelementptr i8, ptr %61, i32 32
  br i1 %save, label %if.then.i38.5, label %if.else.i40.5

if.else.i40.5:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %reg_val_backup to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %reg_val_backup, align 4
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 %64) #10, !srcloc !385
  %add.ptr.i35.1 = getelementptr i8, ptr %61, i32 36
  %arrayidx2.i39.1 = getelementptr %struct.d40_base, ptr %base, i32 0, i32 27, i32 1
  %65 = ptrtoint ptr %arrayidx2.i39.1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx2.i39.1, align 4
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35.1, i32 %67) #10, !srcloc !385
  %add.ptr.i35.2 = getelementptr i8, ptr %61, i32 16
  %arrayidx2.i39.2 = getelementptr %struct.d40_base, ptr %base, i32 0, i32 27, i32 2
  %68 = ptrtoint ptr %arrayidx2.i39.2 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx2.i39.2, align 4
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35.2, i32 %70) #10, !srcloc !385
  %add.ptr.i35.3 = getelementptr i8, ptr %61, i32 20
  %arrayidx2.i39.3 = getelementptr %struct.d40_base, ptr %base, i32 0, i32 27, i32 3
  %71 = ptrtoint ptr %arrayidx2.i39.3 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx2.i39.3, align 4
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35.3, i32 %73) #10, !srcloc !385
  %add.ptr.i35.4 = getelementptr i8, ptr %61, i32 24
  %arrayidx2.i39.4 = getelementptr %struct.d40_base, ptr %base, i32 0, i32 27, i32 4
  %74 = ptrtoint ptr %arrayidx2.i39.4 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx2.i39.4, align 4
  %76 = tail call i32 @llvm.bswap.i32(i32 %75) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35.4, i32 %76) #10, !srcloc !385
  %add.ptr.i35.5 = getelementptr i8, ptr %61, i32 28
  %arrayidx2.i39.5 = getelementptr %struct.d40_base, ptr %base, i32 0, i32 27, i32 5
  %77 = ptrtoint ptr %arrayidx2.i39.5 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx2.i39.5, align 4
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35.5, i32 %79) #10, !srcloc !385
  br label %if.end.i43.5

if.then.i38.5:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i35) #10, !srcloc !382
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #10
  %82 = ptrtoint ptr %reg_val_backup to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %reg_val_backup, align 4
  %add.ptr.i35.174 = getelementptr i8, ptr %61, i32 36
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i35.174) #10, !srcloc !382
  %84 = tail call i32 @llvm.bswap.i32(i32 %83) #10
  %arrayidx1.i37.1 = getelementptr %struct.d40_base, ptr %base, i32 0, i32 27, i32 1
  %85 = ptrtoint ptr %arrayidx1.i37.1 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %arrayidx1.i37.1, align 4
  %add.ptr.i35.276 = getelementptr i8, ptr %61, i32 16
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i35.276) #10, !srcloc !382
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #10
  %arrayidx1.i37.2 = getelementptr %struct.d40_base, ptr %base, i32 0, i32 27, i32 2
  %88 = ptrtoint ptr %arrayidx1.i37.2 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %arrayidx1.i37.2, align 4
  %add.ptr.i35.378 = getelementptr i8, ptr %61, i32 20
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i35.378) #10, !srcloc !382
  %90 = tail call i32 @llvm.bswap.i32(i32 %89) #10
  %arrayidx1.i37.3 = getelementptr %struct.d40_base, ptr %base, i32 0, i32 27, i32 3
  %91 = ptrtoint ptr %arrayidx1.i37.3 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %arrayidx1.i37.3, align 4
  %add.ptr.i35.480 = getelementptr i8, ptr %61, i32 24
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i35.480) #10, !srcloc !382
  %93 = tail call i32 @llvm.bswap.i32(i32 %92) #10
  %arrayidx1.i37.4 = getelementptr %struct.d40_base, ptr %base, i32 0, i32 27, i32 4
  %94 = ptrtoint ptr %arrayidx1.i37.4 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %arrayidx1.i37.4, align 4
  %add.ptr.i35.582 = getelementptr i8, ptr %61, i32 28
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i35.582) #10, !srcloc !382
  %96 = tail call i32 @llvm.bswap.i32(i32 %95) #10
  %arrayidx1.i37.5 = getelementptr %struct.d40_base, ptr %base, i32 0, i32 27, i32 5
  %97 = ptrtoint ptr %arrayidx1.i37.5 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %arrayidx1.i37.5, align 4
  br label %if.end.i43.5

if.end.i43.5:                                     ; preds = %if.then.i38.5, %if.else.i40.5
  %gen_dmac = getelementptr inbounds %struct.d40_base, ptr %base, i32 0, i32 32
  %98 = ptrtoint ptr %gen_dmac to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %gen_dmac, align 4
  %tobool8.not = icmp eq ptr %99, null
  br i1 %tobool8.not, label %if.end.i43.5.if.end16_crit_edge, label %if.then9

if.end.i43.5.if.end16_crit_edge:                  ; preds = %if.end.i43.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then9:                                         ; preds = %if.end.i43.5
  %100 = ptrtoint ptr %virtbase6 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %virtbase6, align 4
  %reg_val_backup_v4 = getelementptr inbounds %struct.d40_base, ptr %base, i32 0, i32 28
  %backup_size = getelementptr inbounds %struct.d40_base, ptr %base, i32 0, i32 32, i32 1
  %102 = ptrtoint ptr %backup_size to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %backup_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp9.i = icmp sgt i32 %103, 0
  br i1 %cmp9.i, label %if.then9.for.body.i48_crit_edge, label %if.then9.if.end16_crit_edge

if.then9.if.end16_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then9.for.body.i48_crit_edge:                  ; preds = %if.then9
  br label %for.body.i48

for.body.i48:                                     ; preds = %if.end.i55.for.body.i48_crit_edge, %if.then9.for.body.i48_crit_edge
  %i.010.i45 = phi i32 [ %inc.i53, %if.end.i55.for.body.i48_crit_edge ], [ 0, %if.then9.for.body.i48_crit_edge ]
  %arrayidx.i46 = getelementptr i32, ptr %99, i32 %i.010.i45
  %104 = ptrtoint ptr %arrayidx.i46 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx.i46, align 4
  %add.ptr.i47 = getelementptr i8, ptr %101, i32 %105
  br i1 %save, label %if.then.i50, label %if.else.i52

if.then.i50:                                      ; preds = %for.body.i48
  call void @__sanitizer_cov_trace_pc() #12
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47) #10, !srcloc !382
  %107 = tail call i32 @llvm.bswap.i32(i32 %106) #10
  %arrayidx1.i49 = getelementptr i32, ptr %reg_val_backup_v4, i32 %i.010.i45
  %108 = ptrtoint ptr %arrayidx1.i49 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %arrayidx1.i49, align 4
  br label %if.end.i55

if.else.i52:                                      ; preds = %for.body.i48
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx2.i51 = getelementptr i32, ptr %reg_val_backup_v4, i32 %i.010.i45
  %109 = ptrtoint ptr %arrayidx2.i51 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx2.i51, align 4
  %111 = tail call i32 @llvm.bswap.i32(i32 %110) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47, i32 %111) #10, !srcloc !385
  br label %if.end.i55

if.end.i55:                                       ; preds = %if.else.i52, %if.then.i50
  %inc.i53 = add nuw nsw i32 %i.010.i45, 1
  %exitcond.not.i54 = icmp eq i32 %inc.i53, %103
  br i1 %exitcond.not.i54, label %if.end.i55.if.end16_crit_edge, label %if.end.i55.for.body.i48_crit_edge

if.end.i55.for.body.i48_crit_edge:                ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i48

if.end.i55.if.end16_crit_edge:                    ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.end16:                                         ; preds = %if.end.i55.if.end16_crit_edge, %if.then9.if.end16_crit_edge, %if.end.i43.5.if.end16_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @d40_of_probe(ptr noundef %pdev, ptr noundef %np) unnamed_addr #2 section ".init.text" align 64 {
entry:
  %num_phy = alloca i32, align 4
  %num_memcpy = alloca i32, align 4
  %num_disabled = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_phy) #10
  %0 = ptrtoint ptr %num_phy to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %num_phy, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_memcpy) #10
  %1 = ptrtoint ptr %num_memcpy to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %num_memcpy, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_disabled) #10
  %2 = ptrtoint ptr %num_disabled to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %num_disabled, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 148, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.71, ptr noundef nonnull %num_phy, i32 noundef 1, i32 noundef 0) #10
  %3 = ptrtoint ptr %num_phy to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_phy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %num_of_phy_chans = getelementptr inbounds %struct.stedma40_platform_data, ptr %call.i, i32 0, i32 5
  %5 = ptrtoint ptr %num_of_phy_chans to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %num_of_phy_chans, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %call4 = call ptr @of_get_property(ptr noundef %np, ptr noundef nonnull @.str.72, ptr noundef nonnull %num_memcpy) #10
  %6 = ptrtoint ptr %num_memcpy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_memcpy, align 4
  %div41 = lshr i32 %7, 2
  store i32 %div41, ptr %num_memcpy, align 4
  %8 = add i32 %7, -36
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32, i32 %8)
  %9 = icmp ult i32 %8, -32
  br i1 %9, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.74, i32 noundef %div41) #13
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  %num_of_memcpy_chans = getelementptr inbounds %struct.stedma40_platform_data, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %num_of_memcpy_chans to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div41, ptr %num_of_memcpy_chans, align 4
  %call.i43 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.72, ptr noundef nonnull @dma40_memcpy_channels, i32 noundef %div41, i32 noundef 0) #10
  %call11 = call ptr @of_get_property(ptr noundef %np, ptr noundef nonnull @.str.75, ptr noundef nonnull %num_disabled) #10
  %11 = ptrtoint ptr %num_disabled to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_disabled, align 4
  %div1242 = lshr i32 %12, 2
  store i32 %div1242, ptr %num_disabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %12)
  %cmp13 = icmp ugt i32 %12, 127
  br i1 %cmp13, label %do.end19, label %if.end21

do.end19:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.74, i32 noundef %div1242) #13
  br label %cleanup

if.end21:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %call.i44 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.75, ptr noundef nonnull %call.i, i32 noundef %div1242, i32 noundef 0) #10
  %13 = ptrtoint ptr %num_disabled to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_disabled, align 4
  %arrayidx = getelementptr [32 x i32], ptr %call.i, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %arrayidx, align 4
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %16 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %platform_data, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %do.end19, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end19 ], [ 0, %if.end21 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_disabled) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_memcpy) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_phy) #10
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @d40_hw_detect_init(ptr noundef %pdev) unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %call2 = tail call ptr @clk_get(ptr noundef %dev, ptr noundef null) #10
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %check_prepare_enabled.thread, label %if.end

check_prepare_enabled.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.80) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @clk_prepare(ptr noundef %call2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.do.end9_crit_edge

if.end.do.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %call2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end11, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %call2) #10
  br label %do.end9

do.end9:                                          ; preds = %if.then3.i, %if.end.do.end9_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.80) #13
  br label %if.then231

if.end11:                                         ; preds = %if.end.i
  %call12 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.84) #10
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end11.if.then231_crit_edge, label %if.end15

if.end11.if.then231_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then231

if.end15:                                         ; preds = %if.end11
  %2 = ptrtoint ptr %call12 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call12, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call12, i32 0, i32 1
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %3
  %add.i = add i32 %sub.i, %5
  %call17 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %3, i32 noundef %add.i, ptr noundef nonnull @.str.85, i32 noundef 0) #10
  %cmp = icmp eq ptr %call17, null
  br i1 %cmp, label %if.end15.check_prepare_enabled_crit_edge, label %if.end19

if.end15.check_prepare_enabled_crit_edge:         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %check_prepare_enabled

if.end19:                                         ; preds = %if.end15
  %6 = ptrtoint ptr %call12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call12, align 4
  %8 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end.i, align 4
  %sub.i371 = sub i32 1, %7
  %add.i372 = add i32 %sub.i371, %9
  %call22 = tail call ptr @ioremap(i32 noundef %7, i32 noundef %add.i372) #10
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.end19.check_prepare_enabled_crit_edge, label %for.body.preheader

if.end19.check_prepare_enabled_crit_edge:         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %check_prepare_enabled

for.body.preheader:                               ; preds = %if.end19
  %add.ptr = getelementptr i8, ptr %call22, i32 -32
  br label %for.body

for.cond33.preheader:                             ; preds = %for.body
  %add.ptr39 = getelementptr i8, ptr %call22, i32 -16
  br label %for.body35

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0611 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %pid.0610 = phi i32 [ %or, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %10 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %end.i, align 4
  %12 = ptrtoint ptr %call12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call12, align 4
  %sub.i374 = add i32 %11, 1
  %add.i375 = sub i32 %sub.i374, %13
  %add.ptr28 = getelementptr i8, ptr %add.ptr, i32 %add.i375
  %mul = shl i32 %i.0611, 2
  %add.ptr29 = getelementptr i8, ptr %add.ptr28, i32 %mul
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29) #10, !srcloc !382
  %15 = lshr i32 %14, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !388
  %mul32 = shl i32 %i.0611, 3
  %shl = shl i32 %15, %mul32
  %or = or i32 %shl, %pid.0610
  %inc = add nuw nsw i32 %i.0611, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.cond33.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body35:                                       ; preds = %for.body35.for.body35_crit_edge, %for.cond33.preheader
  %i.1613 = phi i32 [ 0, %for.cond33.preheader ], [ %inc51, %for.body35.for.body35_crit_edge ]
  %cid.0612 = phi i32 [ 0, %for.cond33.preheader ], [ %or49, %for.body35.for.body35_crit_edge ]
  %16 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %end.i, align 4
  %18 = ptrtoint ptr %call12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %call12, align 4
  %sub.i377 = add i32 %17, 1
  %add.i378 = sub i32 %sub.i377, %19
  %add.ptr40 = getelementptr i8, ptr %add.ptr39, i32 %add.i378
  %mul41 = shl i32 %i.1613, 2
  %add.ptr42 = getelementptr i8, ptr %add.ptr40, i32 %mul41
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42) #10, !srcloc !382
  %21 = lshr i32 %20, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !389
  %mul47 = shl i32 %i.1613, 3
  %shl48 = shl i32 %21, %mul47
  %or49 = or i32 %shl48, %cid.0612
  %inc51 = add nuw nsw i32 %i.1613, 1
  %exitcond614.not = icmp eq i32 %inc51, 4
  br i1 %exitcond614.not, label %for.end52, label %for.body35.for.body35_crit_edge

for.body35.for.body35_crit_edge:                  ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body35

for.end52:                                        ; preds = %for.body35
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1325010931, i32 %or49)
  %cmp53.not = icmp eq i32 %or49, -1325010931
  br i1 %cmp53.not, label %if.end59, label %do.end57

do.end57:                                         ; preds = %for.end52
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.80) #13
  br label %unmap_io

if.end59:                                         ; preds = %for.end52
  %shr = lshr i32 %or, 12
  %and60 = and i32 %shr, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %and60)
  %cmp61.not = icmp eq i32 %and60, 128
  br i1 %cmp61.not, label %if.end69, label %do.end65

do.end65:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.80, i32 noundef %and60, i32 noundef 128) #13
  br label %unmap_io

if.end69:                                         ; preds = %if.end59
  %shr70 = lshr i32 %or, 20
  %22 = trunc i32 %shr70 to i8
  %conv = and i8 %22, 15
  %conv72 = zext i8 %conv to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %conv)
  %cmp73 = icmp ult i8 %conv, 2
  br i1 %cmp73, label %do.end78, label %if.end81

do.end78:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.80, i32 noundef %conv72) #13
  br label %unmap_io

if.end81:                                         ; preds = %if.end69
  %num_of_phy_chans = getelementptr inbounds %struct.stedma40_platform_data, ptr %1, i32 0, i32 5
  %23 = ptrtoint ptr %num_of_phy_chans to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_of_phy_chans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool82.not = icmp eq i32 %24, 0
  br i1 %tobool82.not, label %if.else, label %if.end81.if.end93_crit_edge

if.end81.if.end93_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end93

if.else:                                          ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr87 = getelementptr i8, ptr %call22, i32 4044
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr87) #10, !srcloc !382
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !390
  %26 = lshr i32 %25, 22
  %mul92 = and i32 %26, 28
  %add = add nuw nsw i32 %mul92, 4
  br label %if.end93

if.end93:                                         ; preds = %if.else, %if.end81.if.end93_crit_edge
  %num_phy_chans.0 = phi i32 [ %add, %if.else ], [ %24, %if.end81.if.end93_crit_edge ]
  %num_of_memcpy_chans = getelementptr inbounds %struct.stedma40_platform_data, ptr %1, i32 0, i32 4
  %27 = ptrtoint ptr %num_of_memcpy_chans to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_of_memcpy_chans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool94.not = icmp eq i32 %28, 0
  %. = select i1 %tobool94.not, i32 6, i32 %28
  %mul99 = shl i32 %num_phy_chans.0, 5
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.96, i32 noundef %conv72, ptr noundef nonnull %call12, i32 noundef %num_phy_chans.0, i32 noundef %mul99) #13
  %add106 = mul i32 %num_phy_chans.0, 33
  %add107 = add i32 %., %add106
  %mul108 = mul i32 %add107, 340
  %add109 = add i32 %mul108, 1492
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add109, i32 noundef 3520) #15
  %cmp111 = icmp eq ptr %call9.i.i, null
  br i1 %cmp111, label %if.end93.unmap_io_crit_edge, label %if.end114

if.end93.unmap_io_crit_edge:                      ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #12
  br label %unmap_io

if.end114:                                        ; preds = %if.end93
  %rev115 = getelementptr inbounds %struct.d40_base, ptr %call9.i.i, i32 0, i32 4
  %29 = ptrtoint ptr %rev115 to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load = load i8, ptr %rev115, align 32
  %bf.shl = shl i8 %22, 4
  %bf.clear = and i8 %bf.load, 15
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %rev115, align 32
  %clk116 = getelementptr inbounds %struct.d40_base, ptr %call9.i.i, i32 0, i32 5
  %30 = ptrtoint ptr %clk116 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call2, ptr %clk116, align 4
  %num_memcpy_chans117 = getelementptr inbounds %struct.d40_base, ptr %call9.i.i, i32 0, i32 9
  %31 = ptrtoint ptr %num_memcpy_chans117 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %., ptr %num_memcpy_chans117, align 4
  %num_phy_chans118 = getelementptr inbounds %struct.d40_base, ptr %call9.i.i, i32 0, i32 10
  %32 = ptrtoint ptr %num_phy_chans118 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %num_phy_chans.0, ptr %num_phy_chans118, align 8
  %num_log_chans119 = getelementptr inbounds %struct.d40_base, ptr %call9.i.i, i32 0, i32 11
  %33 = ptrtoint ptr %num_log_chans119 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %mul99, ptr %num_log_chans119, align 4
  %34 = ptrtoint ptr %call12 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %call12, align 4
  %phy_start = getelementptr inbounds %struct.d40_base, ptr %call9.i.i, i32 0, i32 6
  %36 = ptrtoint ptr %phy_start to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %phy_start, align 8
  %37 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %end.i, align 4
  %39 = load i32, ptr %call12, align 4
  %sub.i380 = add i32 %38, 1
  %add.i381 = sub i32 %sub.i380, %39
  %phy_size = getelementptr inbounds %struct.d40_base, ptr %call9.i.i, i32 0, i32 7
  %40 = ptrtoint ptr %phy_size to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add.i381, ptr %phy_size, align 4
  %virtbase122 = getelementptr inbounds %struct.d40_base, ptr %call9.i.i, i32 0, i32 3
  %41 = ptrtoint ptr %virtbase122 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call22, ptr %virtbase122, align 4
  %plat_data123 = getelementptr inbounds %struct.d40_base, ptr %call9.i.i, i32 0, i32 19
  %42 = ptrtoint ptr %plat_data123 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %1, ptr %plat_data123, align 4
  %dev125 = getelementptr inbounds %struct.d40_base, ptr %call9.i.i, i32 0, i32 2
  %43 = ptrtoint ptr %dev125 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %dev, ptr %dev125, align 8
  %add.ptr126 = getelementptr i8, ptr %call9.i.i, i32 1492
  %phy_chans = getelementptr inbounds %struct.d40_base, ptr %call9.i.i, i32 0, i32 15
  %44 = ptrtoint ptr %phy_chans to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %add.ptr126, ptr %phy_chans, align 4
  %arrayidx = getelementptr %struct.d40_chan, ptr %add.ptr126, i32 %num_phy_chans.0
  %log_chans = getelementptr inbounds %struct.d40_base, ptr %call9.i.i, i32 0, i32 16
  %45 = ptrtoint ptr %log_chans to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %arrayidx, ptr %log_chans, align 8
  %46 = ptrtoint ptr %num_of_phy_chans to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_of_phy_chans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %47)
  %cmp130 = icmp eq i32 %47, 14
  br i1 %cmp130, label %if.end114.if.end176.sink.split_crit_edge, label %if.else144

if.end114.if.end176.sink.split_crit_edge:         ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end176.sink.split

if.else144:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %bf.set)
  %cmp148 = icmp ugt i8 %bf.set, 47
  br i1 %cmp148, label %if.else144.if.end176.sink.split_crit_edge, label %if.else144.if.end176_crit_edge

if.else144.if.end176_crit_edge:                   ; preds = %if.else144
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end176

if.else144.if.end176.sink.split_crit_edge:        ; preds = %if.else144
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end176.sink.split

if.end176.sink.split:                             ; preds = %if.else144.if.end176.sink.split_crit_edge, %if.end114.if.end176.sink.split_crit_edge
  %d40_backup_regs_v4a.sink = phi ptr [ @d40_backup_regs_v4b, %if.end114.if.end176.sink.split_crit_edge ], [ @d40_backup_regs_v4a, %if.else144.if.end176.sink.split_crit_edge ]
  %.sink632 = phi i32 [ 20, %if.end114.if.end176.sink.split_crit_edge ], [ 16, %if.else144.if.end176.sink.split_crit_edge ]
  %.sink631.ph = phi i32 [ 896, %if.end114.if.end176.sink.split_crit_edge ], [ 96, %if.else144.if.end176.sink.split_crit_edge ]
  %.sink630.ph = phi i32 [ 900, %if.end114.if.end176.sink.split_crit_edge ], [ 100, %if.else144.if.end176.sink.split_crit_edge ]
  %.sink629.ph = phi i32 [ 576, %if.end114.if.end176.sink.split_crit_edge ], [ 304, %if.else144.if.end176.sink.split_crit_edge ]
  %.sink628.ph = phi i32 [ 608, %if.end114.if.end176.sink.split_crit_edge ], [ 320, %if.else144.if.end176.sink.split_crit_edge ]
  %.sink627.ph = phi i32 [ 512, %if.end114.if.end176.sink.split_crit_edge ], [ 272, %if.else144.if.end176.sink.split_crit_edge ]
  %.sink626.ph = phi i32 [ 544, %if.end114.if.end176.sink.split_crit_edge ], [ 288, %if.else144.if.end176.sink.split_crit_edge ]
  %il_v4a.sink.ph = phi ptr [ @il_v4b, %if.end114.if.end176.sink.split_crit_edge ], [ @il_v4a, %if.else144.if.end176.sink.split_crit_edge ]
  %.sink625.ph = phi i32 [ 12, %if.end114.if.end176.sink.split_crit_edge ], [ 10, %if.else144.if.end176.sink.split_crit_edge ]
  %dma_init_reg_v4a.sink.ph = phi ptr [ @dma_init_reg_v4b, %if.end114.if.end176.sink.split_crit_edge ], [ @dma_init_reg_v4a, %if.else144.if.end176.sink.split_crit_edge ]
  %.sink.ph = phi i32 [ 16, %if.end114.if.end176.sink.split_crit_edge ], [ 13, %if.else144.if.end176.sink.split_crit_edge ]
  %gen_dmac151 = getelementptr inbounds %struct.d40_base, ptr %call9.i.i, i32 0, i32 32
  %48 = ptrtoint ptr %gen_dmac151 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %d40_backup_regs_v4a.sink, ptr %gen_dmac151, align 4
  %backup_size154 = getelementptr inbounds %struct.d40_base, ptr %call9.i.i, i32 0, i32 32, i32 1
  %49 = ptrtoint ptr %backup_size154 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %.sink632, ptr %backup_size154, align 8
  br label %if.end176

if.end176:                                        ; preds = %if.end176.sink.split, %if.else144.if.end176_crit_edge
  %.sink631 = phi i32 [ 96, %if.else144.if.end176_crit_edge ], [ %.sink631.ph, %if.end176.sink.split ]
  %.sink630 = phi i32 [ 100, %if.else144.if.end176_crit_edge ], [ %.sink630.ph, %if.end176.sink.split ]
  %.sink629 = phi i32 [ 304, %if.else144.if.end176_crit_edge ], [ %.sink629.ph, %if.end176.sink.split ]
  %.sink628 = phi i32 [ 320, %if.else144.if.end176_crit_edge ], [ %.sink628.ph, %if.end176.sink.split ]
  %.sink627 = phi i32 [ 272, %if.else144.if.end176_crit_edge ], [ %.sink627.ph, %if.end176.sink.split ]
  %.sink626 = phi i32 [ 288, %if.else144.if.end176_crit_edge ], [ %.sink626.ph, %if.end176.sink.split ]
  %il_v4a.sink = phi ptr [ @il_v4a, %if.else144.if.end176_crit_edge ], [ %il_v4a.sink.ph, %if.end176.sink.split ]
  %.sink625 = phi i32 [ 10, %if.else144.if.end176_crit_edge ], [ %.sink625.ph, %if.end176.sink.split ]
  %dma_init_reg_v4a.sink = phi ptr [ @dma_init_reg_v4a, %if.else144.if.end176_crit_edge ], [ %dma_init_reg_v4a.sink.ph, %if.end176.sink.split ]
  %.sink = phi i32 [ 13, %if.else144.if.end176_crit_edge ], [ %.sink.ph, %if.end176.sink.split ]
  %interrupt_en157 = getelementptr inbounds %struct.d40_base, ptr %call9.i.i, i32 0, i32 32, i32 6
  %50 = ptrtoint ptr %interrupt_en157 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %.sink631, ptr %interrupt_en157, align 4
  %interrupt_clear159 = getelementptr inbounds %struct.d40_base, ptr %call9.i.i, i32 0, i32 32, i32 7
  %51 = ptrtoint ptr %interrupt_clear159 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %.sink630, ptr %interrupt_clear159, align 64
  %realtime_en161 = getelementptr inbounds %struct.d40_base, ptr %call9.i.i, i32 0, i32 32, i32 2
  %52 = ptrtoint ptr %realtime_en161 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %.sink629, ptr %realtime_en161, align 4
  %realtime_clear163 = getelementptr inbounds %struct.d40_base, ptr %call9.i.i, i32 0, i32 32, i32 3
  %53 = ptrtoint ptr %realtime_clear163 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %.sink628, ptr %realtime_clear163, align 16
  %high_prio_en165 = getelementptr inbounds %struct.d40_base, ptr %call9.i.i, i32 0, i32 32, i32 4
  %54 = ptrtoint ptr %high_prio_en165 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %.sink627, ptr %high_prio_en165, align 4
  %high_prio_clear167 = getelementptr inbounds %struct.d40_base, ptr %call9.i.i, i32 0, i32 32, i32 5
  %55 = ptrtoint ptr %high_prio_clear167 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %.sink626, ptr %high_prio_clear167, align 8
  %il169 = getelementptr inbounds %struct.d40_base, ptr %call9.i.i, i32 0, i32 32, i32 8
  %56 = ptrtoint ptr %il169 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %il_v4a.sink, ptr %il169, align 4
  %il_size171 = getelementptr inbounds %struct.d40_base, ptr %call9.i.i, i32 0, i32 32, i32 9
  %57 = ptrtoint ptr %il_size171 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %.sink625, ptr %il_size171, align 8
  %init_reg173 = getelementptr inbounds %struct.d40_base, ptr %call9.i.i, i32 0, i32 32, i32 10
  %58 = ptrtoint ptr %init_reg173 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %dma_init_reg_v4a.sink, ptr %init_reg173, align 4
  %init_reg_size175 = getelementptr inbounds %struct.d40_base, ptr %call9.i.i, i32 0, i32 32, i32 11
  %59 = ptrtoint ptr %init_reg_size175 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %.sink, ptr %init_reg_size175, align 16
  %60 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_phy_chans.0, i32 64) #10
  %61 = extractvalue { i32, i1 } %60, 1
  br i1 %61, label %kcalloc.exit.thread, label %kcalloc.exit.thread618, !prof !391

kcalloc.exit.thread:                              ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #12
  %phy_res563 = getelementptr inbounds %struct.d40_base, ptr %call9.i.i, i32 0, i32 21
  %62 = ptrtoint ptr %phy_res563 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %phy_res563, align 4
  br label %free_base

kcalloc.exit.thread618:                           ; preds = %if.end176
  %63 = extractvalue { i32, i1 } %60, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %63, i32 noundef 3520) #15
  %phy_res620 = getelementptr inbounds %struct.d40_base, ptr %call9.i.i, i32 0, i32 21
  %64 = ptrtoint ptr %phy_res620 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call8.i.i, ptr %phy_res620, align 4
  %tobool179.not621 = icmp eq ptr %call8.i.i, null
  br i1 %tobool179.not621, label %kcalloc.exit.thread618.free_base_crit_edge, label %if.end7.i.i416

kcalloc.exit.thread618.free_base_crit_edge:       ; preds = %kcalloc.exit.thread618
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_base

if.end7.i.i416:                                   ; preds = %kcalloc.exit.thread618
  %65 = shl nuw nsw i32 %num_phy_chans.0, 2
  %call8.i.i415 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %65, i32 noundef 3520) #15
  %lookup_phy_chans = getelementptr inbounds %struct.d40_base, ptr %call9.i.i, i32 0, i32 18
  %66 = ptrtoint ptr %lookup_phy_chans to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call8.i.i415, ptr %lookup_phy_chans, align 16
  %tobool184.not = icmp eq ptr %call8.i.i415, null
  br i1 %tobool184.not, label %if.end7.i.i416.free_phy_res_crit_edge, label %if.end186

if.end7.i.i416.free_phy_res_crit_edge:            ; preds = %if.end7.i.i416
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_phy_res

if.end186:                                        ; preds = %if.end7.i.i416
  %67 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %mul99, i32 4) #10
  %68 = extractvalue { i32, i1 } %67, 1
  br i1 %68, label %kcalloc.exit451.thread, label %if.end7.i.i449, !prof !391

kcalloc.exit451.thread:                           ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #12
  %lookup_log_chans574 = getelementptr inbounds %struct.d40_base, ptr %call9.i.i, i32 0, i32 17
  %69 = ptrtoint ptr %lookup_log_chans574 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %lookup_log_chans574, align 4
  br label %free_phy_chans

if.end7.i.i449:                                   ; preds = %if.end186
  %70 = extractvalue { i32, i1 } %67, 0
  %call8.i.i448 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %70, i32 noundef 3520) #15
  %lookup_log_chans = getelementptr inbounds %struct.d40_base, ptr %call9.i.i, i32 0, i32 17
  %71 = ptrtoint ptr %lookup_log_chans to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call8.i.i448, ptr %lookup_log_chans, align 4
  %tobool189.not = icmp eq ptr %call8.i.i448, null
  br i1 %tobool189.not, label %if.end7.i.i449.free_phy_chans_crit_edge, label %if.end191

if.end7.i.i449.free_phy_chans_crit_edge:          ; preds = %if.end7.i.i449
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_phy_chans

if.end191:                                        ; preds = %if.end7.i.i449
  %72 = ptrtoint ptr %num_phy_chans118 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %num_phy_chans118, align 8
  %74 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %73, i32 32) #10
  %75 = extractvalue { i32, i1 } %74, 1
  br i1 %75, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !391

kmalloc_array.exit.thread:                        ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #12
  %reg_val_backup_chan582 = getelementptr inbounds %struct.d40_base, ptr %call9.i.i, i32 0, i32 29
  %76 = ptrtoint ptr %reg_val_backup_chan582 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %reg_val_backup_chan582, align 8
  br label %free_log_chans

if.end7.i:                                        ; preds = %if.end191
  %77 = extractvalue { i32, i1 } %74, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %77, i32 noundef 3264) #15
  %reg_val_backup_chan = getelementptr inbounds %struct.d40_base, ptr %call9.i.i, i32 0, i32 29
  %78 = ptrtoint ptr %reg_val_backup_chan to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call8.i, ptr %reg_val_backup_chan, align 8
  %tobool195.not = icmp eq ptr %call8.i, null
  br i1 %tobool195.not, label %if.end7.i.free_log_chans_crit_edge, label %if.end197

if.end7.i.free_log_chans_crit_edge:               ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_log_chans

if.end197:                                        ; preds = %if.end7.i
  %mul198 = shl i32 %num_phy_chans.0, 7
  %79 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %mul198, i32 4) #10
  %80 = extractvalue { i32, i1 } %79, 1
  br i1 %80, label %kcalloc.exit513.thread, label %if.end7.i.i511, !prof !391

kcalloc.exit513.thread:                           ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #12
  %alloc_map590 = getelementptr inbounds %struct.d40_base, ptr %call9.i.i, i32 0, i32 22, i32 5
  %81 = ptrtoint ptr %alloc_map590 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %alloc_map590, align 4
  br label %free_backup_chan

if.end7.i.i511:                                   ; preds = %if.end197
  %82 = extractvalue { i32, i1 } %79, 0
  %call8.i.i510 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %82, i32 noundef 3520) #15
  %alloc_map = getelementptr inbounds %struct.d40_base, ptr %call9.i.i, i32 0, i32 22, i32 5
  %83 = ptrtoint ptr %alloc_map to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call8.i.i510, ptr %alloc_map, align 4
  %tobool202.not = icmp eq ptr %call8.i.i510, null
  br i1 %tobool202.not, label %if.end7.i.i511.free_backup_chan_crit_edge, label %if.end204

if.end7.i.i511.free_backup_chan_crit_edge:        ; preds = %if.end7.i.i511
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_backup_chan

if.end204:                                        ; preds = %if.end7.i.i511
  %il_size206 = getelementptr inbounds %struct.d40_base, ptr %call9.i.i, i32 0, i32 32, i32 9
  %84 = ptrtoint ptr %il_size206 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %il_size206, align 8
  %86 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %85, i32 4) #10
  %87 = extractvalue { i32, i1 } %86, 1
  br i1 %87, label %kmalloc_array.exit546.thread, label %if.end7.i544, !prof !391

kmalloc_array.exit546.thread:                     ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #12
  %regs_interrupt598 = getelementptr inbounds %struct.d40_base, ptr %call9.i.i, i32 0, i32 30
  %88 = ptrtoint ptr %regs_interrupt598 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr null, ptr %regs_interrupt598, align 4
  br label %free_map

if.end7.i544:                                     ; preds = %if.end204
  %89 = extractvalue { i32, i1 } %86, 0
  %call8.i543 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %89, i32 noundef 3264) #15
  %regs_interrupt = getelementptr inbounds %struct.d40_base, ptr %call9.i.i, i32 0, i32 30
  %90 = ptrtoint ptr %regs_interrupt to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call8.i543, ptr %regs_interrupt, align 4
  %tobool209.not = icmp eq ptr %call8.i543, null
  br i1 %tobool209.not, label %if.end7.i544.free_map_crit_edge, label %if.end211

if.end7.i544.free_map_crit_edge:                  ; preds = %if.end7.i544
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_map

if.end211:                                        ; preds = %if.end7.i544
  %call212 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.16, i32 noundef 200, i32 noundef 0, i32 noundef 8192, ptr noundef null) #10
  %desc_slab = getelementptr inbounds %struct.d40_base, ptr %call9.i.i, i32 0, i32 26
  %91 = ptrtoint ptr %desc_slab to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call212, ptr %desc_slab, align 4
  %cmp214 = icmp eq ptr %call212, null
  br i1 %cmp214, label %free_regs, label %if.end211.cleanup_crit_edge

if.end211.cleanup_crit_edge:                      ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

free_regs:                                        ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #12
  %92 = ptrtoint ptr %regs_interrupt to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regs_interrupt, align 4
  tail call void @kfree(ptr noundef %93) #10
  br label %free_map

free_map:                                         ; preds = %free_regs, %if.end7.i544.free_map_crit_edge, %kmalloc_array.exit546.thread
  %94 = ptrtoint ptr %alloc_map to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %alloc_map, align 4
  tail call void @kfree(ptr noundef %95) #10
  br label %free_backup_chan

free_backup_chan:                                 ; preds = %free_map, %if.end7.i.i511.free_backup_chan_crit_edge, %kcalloc.exit513.thread
  %96 = ptrtoint ptr %reg_val_backup_chan to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %reg_val_backup_chan, align 8
  tail call void @kfree(ptr noundef %97) #10
  br label %free_log_chans

free_log_chans:                                   ; preds = %free_backup_chan, %if.end7.i.free_log_chans_crit_edge, %kmalloc_array.exit.thread
  %98 = ptrtoint ptr %lookup_log_chans to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %lookup_log_chans, align 4
  tail call void @kfree(ptr noundef %99) #10
  br label %free_phy_chans

free_phy_chans:                                   ; preds = %free_log_chans, %if.end7.i.i449.free_phy_chans_crit_edge, %kcalloc.exit451.thread
  %100 = ptrtoint ptr %lookup_phy_chans to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %lookup_phy_chans, align 16
  tail call void @kfree(ptr noundef %101) #10
  br label %free_phy_res

free_phy_res:                                     ; preds = %free_phy_chans, %if.end7.i.i416.free_phy_res_crit_edge
  %102 = ptrtoint ptr %phy_res620 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %phy_res620, align 4
  tail call void @kfree(ptr noundef %103) #10
  br label %free_base

free_base:                                        ; preds = %free_phy_res, %kcalloc.exit.thread618.free_base_crit_edge, %kcalloc.exit.thread
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #10
  br label %unmap_io

unmap_io:                                         ; preds = %free_base, %if.end93.unmap_io_crit_edge, %do.end78, %do.end65, %do.end57
  tail call void @iounmap(ptr noundef nonnull %call22) #10
  br label %check_prepare_enabled

check_prepare_enabled:                            ; preds = %unmap_io, %if.end19.check_prepare_enabled_crit_edge, %if.end15.check_prepare_enabled_crit_edge
  %104 = ptrtoint ptr %call12 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %call12, align 4
  %106 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %end.i, align 4
  %sub.i548 = sub i32 1, %105
  %add.i549 = add i32 %sub.i548, %107
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %105, i32 noundef %add.i549) #10
  br label %if.then231

if.then231:                                       ; preds = %check_prepare_enabled, %if.end11.if.then231_crit_edge, %do.end9
  tail call void @clk_disable(ptr noundef %call2) #10
  tail call void @clk_unprepare(ptr noundef %call2) #10
  tail call void @clk_put(ptr noundef %call2) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then231, %if.end211.cleanup_crit_edge, %check_prepare_enabled.thread
  %retval.0 = phi ptr [ %call9.i.i, %if.end211.cleanup_crit_edge ], [ null, %if.then231 ], [ null, %check_prepare_enabled.thread ]
  ret ptr %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @d40_phy_res_init(ptr nocapture noundef %base) unnamed_addr #2 section ".init.text" align 64 {
entry:
  %val = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val) #10
  %0 = getelementptr inbounds [2 x i32], ptr %val, i32 0, i32 1
  %virtbase = getelementptr inbounds %struct.d40_base, ptr %base, i32 0, i32 3
  %1 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %virtbase, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 8
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !382
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !392
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %val, align 4
  %6 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %virtbase, align 4
  %add.ptr5 = getelementptr i8, ptr %7, i32 12
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #10, !srcloc !382
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %0, align 4
  %num_phy_chans = getelementptr inbounds %struct.d40_base, ptr %base, i32 0, i32 10
  %11 = ptrtoint ptr %num_phy_chans to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_phy_chans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp203 = icmp sgt i32 %12, 0
  br i1 %cmp203, label %for.body.lr.ph, label %entry.for.cond46.preheader_crit_edge

entry.for.cond46.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond46.preheader

for.body.lr.ph:                                   ; preds = %entry
  %phy_res = getelementptr inbounds %struct.d40_base, ptr %base, i32 0, i32 21
  br label %for.body

for.cond46.preheader:                             ; preds = %do.body.for.cond46.preheader_crit_edge, %entry.for.cond46.preheader_crit_edge
  %gcc.0.lcssa = phi i32 [ 1, %entry.for.cond46.preheader_crit_edge ], [ %gcc.1, %do.body.for.cond46.preheader_crit_edge ]
  %num_phy_chans_avail.0.lcssa = phi i32 [ 0, %entry.for.cond46.preheader_crit_edge ], [ %num_phy_chans_avail.1, %do.body.for.cond46.preheader_crit_edge ]
  %plat_data = getelementptr inbounds %struct.d40_base, ptr %base, i32 0, i32 19
  %13 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %plat_data, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %cmp48.not210 = icmp eq i32 %16, -1
  br i1 %cmp48.not210, label %for.cond46.preheader.for.cond80.preheader_crit_edge, label %for.body50.lr.ph

for.cond46.preheader.for.cond80.preheader_crit_edge: ; preds = %for.cond46.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond80.preheader

for.body50.lr.ph:                                 ; preds = %for.cond46.preheader
  %phy_res54 = getelementptr inbounds %struct.d40_base, ptr %base, i32 0, i32 21
  br label %for.body50

for.body:                                         ; preds = %do.body.for.body_crit_edge, %for.body.lr.ph
  %i.0207 = phi i32 [ 0, %for.body.lr.ph ], [ %inc45, %do.body.for.body_crit_edge ]
  %num_phy_chans_avail.0206 = phi i32 [ 0, %for.body.lr.ph ], [ %num_phy_chans_avail.1, %do.body.for.body_crit_edge ]
  %odd_even_bit.0205 = phi i32 [ -2, %for.body.lr.ph ], [ %add, %do.body.for.body_crit_edge ]
  %gcc.0204 = phi i32 [ 1, %for.body.lr.ph ], [ %gcc.1, %do.body.for.body_crit_edge ]
  %17 = ptrtoint ptr %phy_res to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %phy_res, align 4
  %num = getelementptr %struct.d40_phy_res, ptr %18, i32 %i.0207, i32 2
  %19 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %i.0207, ptr %num, align 4
  %rem.urem = and i32 %i.0207, 1
  %20 = shl nuw nsw i32 %rem.urem, 1
  %21 = xor i32 %20, 2
  %add = add i32 %21, %odd_even_bit.0205
  %arrayidx13 = getelementptr [2 x i32], ptr %val, i32 0, i32 %rem.urem
  %22 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx13, align 4
  %shr = lshr i32 %23, %add
  %and = and i32 %shr, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp14 = icmp eq i32 %and, 1
  %24 = ptrtoint ptr %phy_res to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %phy_res, align 4
  %allocated_src = getelementptr %struct.d40_phy_res, ptr %25, i32 %i.0207, i32 3
  br i1 %cmp14, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %allocated_src to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1073741824, ptr %allocated_src, align 4
  %27 = ptrtoint ptr %phy_res to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %phy_res, align 4
  %allocated_dst = getelementptr %struct.d40_phy_res, ptr %28, i32 %i.0207, i32 4
  %29 = ptrtoint ptr %allocated_dst to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1073741824, ptr %allocated_dst, align 4
  %30 = load ptr, ptr %phy_res, align 4
  %reserved = getelementptr %struct.d40_phy_res, ptr %30, i32 %i.0207, i32 1
  %31 = ptrtoint ptr %reserved to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %reserved, align 4
  %div202 = and i32 %i.0207, 6
  %add24 = or i32 %div202, 8
  %shl = shl nuw i32 1, %add24
  %or = or i32 %shl, %gcc.0204
  %add30 = or i32 %div202, 9
  %shl31 = shl nuw i32 1, %add30
  %or32 = or i32 %or, %shl31
  br label %do.body

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %allocated_src to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -2147483648, ptr %allocated_src, align 4
  %33 = ptrtoint ptr %phy_res to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %phy_res, align 4
  %allocated_dst38 = getelementptr %struct.d40_phy_res, ptr %34, i32 %i.0207, i32 4
  %35 = ptrtoint ptr %allocated_dst38 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -2147483648, ptr %allocated_dst38, align 4
  %36 = load ptr, ptr %phy_res, align 4
  %reserved41 = getelementptr %struct.d40_phy_res, ptr %36, i32 %i.0207, i32 1
  %37 = ptrtoint ptr %reserved41 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %reserved41, align 4
  %inc = add i32 %num_phy_chans_avail.0206, 1
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then
  %gcc.1 = phi i32 [ %or32, %if.then ], [ %gcc.0204, %if.else ]
  %num_phy_chans_avail.1 = phi i32 [ %num_phy_chans_avail.0206, %if.then ], [ %inc, %if.else ]
  %38 = ptrtoint ptr %phy_res to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %phy_res, align 4
  %arrayidx43 = getelementptr %struct.d40_phy_res, ptr %39, i32 %i.0207
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx43, ptr noundef nonnull @.str.98, ptr noundef nonnull @d40_phy_res_init.__key, i16 noundef signext 3) #10
  %inc45 = add nuw nsw i32 %i.0207, 1
  %40 = ptrtoint ptr %num_phy_chans to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_phy_chans, align 4
  %cmp = icmp slt i32 %inc45, %41
  br i1 %cmp, label %do.body.for.body_crit_edge, label %do.body.for.cond46.preheader_crit_edge

do.body.for.cond46.preheader_crit_edge:           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond46.preheader

do.body.for.body_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond80.preheader:                             ; preds = %for.body50.for.cond80.preheader_crit_edge, %for.cond46.preheader.for.cond80.preheader_crit_edge
  %gcc.2.lcssa = phi i32 [ %gcc.0.lcssa, %for.cond46.preheader.for.cond80.preheader_crit_edge ], [ %or76, %for.body50.for.cond80.preheader_crit_edge ]
  %num_phy_chans_avail.2.lcssa = phi i32 [ %num_phy_chans_avail.0.lcssa, %for.cond46.preheader.for.cond80.preheader_crit_edge ], [ %dec, %for.body50.for.cond80.preheader_crit_edge ]
  %42 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %plat_data, align 4
  %num_of_soft_lli_chans216 = getelementptr inbounds %struct.stedma40_platform_data, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %num_of_soft_lli_chans216 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_of_soft_lli_chans216, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp82217 = icmp sgt i32 %45, 0
  br i1 %cmp82217, label %for.body84.lr.ph, label %for.cond80.preheader.do.end95_crit_edge

for.cond80.preheader.do.end95_crit_edge:          ; preds = %for.cond80.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end95

for.body84.lr.ph:                                 ; preds = %for.cond80.preheader
  %phy_res88 = getelementptr inbounds %struct.d40_base, ptr %base, i32 0, i32 21
  br label %for.body84

for.body50:                                       ; preds = %for.body50.for.body50_crit_edge, %for.body50.lr.ph
  %46 = phi i32 [ %16, %for.body50.lr.ph ], [ %57, %for.body50.for.body50_crit_edge ]
  %i.1213 = phi i32 [ 0, %for.body50.lr.ph ], [ %inc78, %for.body50.for.body50_crit_edge ]
  %num_phy_chans_avail.2212 = phi i32 [ %num_phy_chans_avail.0.lcssa, %for.body50.lr.ph ], [ %dec, %for.body50.for.body50_crit_edge ]
  %gcc.2211 = phi i32 [ %gcc.0.lcssa, %for.body50.lr.ph ], [ %or76, %for.body50.for.body50_crit_edge ]
  %47 = ptrtoint ptr %phy_res54 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %phy_res54, align 4
  %allocated_src56 = getelementptr %struct.d40_phy_res, ptr %48, i32 %46, i32 3
  %49 = ptrtoint ptr %allocated_src56 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1073741824, ptr %allocated_src56, align 4
  %50 = load ptr, ptr %phy_res54, align 4
  %allocated_dst59 = getelementptr %struct.d40_phy_res, ptr %50, i32 %46, i32 4
  %51 = ptrtoint ptr %allocated_dst59 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1073741824, ptr %allocated_dst59, align 4
  %52 = load ptr, ptr %phy_res54, align 4
  %reserved62 = getelementptr %struct.d40_phy_res, ptr %52, i32 %46, i32 1
  %53 = ptrtoint ptr %reserved62 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %reserved62, align 4
  %div64201 = and i32 %46, 6
  %add66 = or i32 %div64201, 8
  %shl68 = shl nuw i32 1, %add66
  %or69 = or i32 %shl68, %gcc.2211
  %add74 = or i32 %div64201, 9
  %shl75 = shl nuw i32 1, %add74
  %or76 = or i32 %or69, %shl75
  %dec = add i32 %num_phy_chans_avail.2212, -1
  %inc78 = add i32 %i.1213, 1
  %54 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %plat_data, align 4
  %arrayidx47 = getelementptr [32 x i32], ptr %55, i32 0, i32 %inc78
  %56 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx47, align 4
  %cmp48.not = icmp eq i32 %57, -1
  br i1 %cmp48.not, label %for.body50.for.cond80.preheader_crit_edge, label %for.body50.for.body50_crit_edge

for.body50.for.body50_crit_edge:                  ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body50

for.body50.for.cond80.preheader_crit_edge:        ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond80.preheader

for.body84:                                       ; preds = %for.body84.for.body84_crit_edge, %for.body84.lr.ph
  %58 = phi ptr [ %43, %for.body84.lr.ph ], [ %67, %for.body84.for.body84_crit_edge ]
  %i.2218 = phi i32 [ 0, %for.body84.lr.ph ], [ %inc91, %for.body84.for.body84_crit_edge ]
  %soft_lli_chans = getelementptr inbounds %struct.stedma40_platform_data, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %soft_lli_chans to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %soft_lli_chans, align 4
  %arrayidx87 = getelementptr i32, ptr %60, i32 %i.2218
  %61 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx87, align 4
  %63 = ptrtoint ptr %phy_res88 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %phy_res88, align 4
  %use_soft_lli = getelementptr %struct.d40_phy_res, ptr %64, i32 %62, i32 5
  %65 = ptrtoint ptr %use_soft_lli to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %use_soft_lli, align 4
  %inc91 = add nuw nsw i32 %i.2218, 1
  %66 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %plat_data, align 4
  %num_of_soft_lli_chans = getelementptr inbounds %struct.stedma40_platform_data, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %num_of_soft_lli_chans to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %num_of_soft_lli_chans, align 4
  %cmp82 = icmp slt i32 %inc91, %69
  br i1 %cmp82, label %for.body84.for.body84_crit_edge, label %for.body84.do.end95_crit_edge

for.body84.do.end95_crit_edge:                    ; preds = %for.body84
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end95

for.body84.for.body84_crit_edge:                  ; preds = %for.body84
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body84

do.end95:                                         ; preds = %for.body84.do.end95_crit_edge, %for.cond80.preheader.do.end95_crit_edge
  %dev = getelementptr inbounds %struct.d40_base, ptr %base, i32 0, i32 2
  %70 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev, align 4
  %72 = ptrtoint ptr %num_phy_chans to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %num_phy_chans, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %71, ptr noundef nonnull @.str.99, i32 noundef %num_phy_chans_avail.2.lcssa, i32 noundef %73) #13
  %74 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %virtbase, align 4
  %add.ptr100 = getelementptr i8, ptr %75, i32 4
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr100) #10, !srcloc !382
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !394
  %77 = ptrtoint ptr %num_phy_chans to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %num_phy_chans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp107220 = icmp sgt i32 %78, 0
  br i1 %cmp107220, label %for.body109.lr.ph, label %do.end95.do.body133_crit_edge

do.end95.do.body133_crit_edge:                    ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body133

for.body109.lr.ph:                                ; preds = %do.end95
  %79 = tail call i32 @llvm.bswap.i32(i32 %76)
  %phy_res110 = getelementptr inbounds %struct.d40_base, ptr %base, i32 0, i32 21
  br label %for.body109

for.body109:                                      ; preds = %if.end126.for.body109_crit_edge, %for.body109.lr.ph
  %i.3223 = phi i32 [ 0, %for.body109.lr.ph ], [ %inc131, %if.end126.for.body109_crit_edge ]
  %shr128219221 = phi i32 [ %79, %for.body109.lr.ph ], [ %shr128, %if.end126.for.body109_crit_edge ]
  %80 = ptrtoint ptr %phy_res110 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %phy_res110, align 4
  %allocated_src112 = getelementptr %struct.d40_phy_res, ptr %81, i32 %i.3223, i32 3
  %82 = ptrtoint ptr %allocated_src112 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %allocated_src112, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %83)
  %cmp113 = icmp eq i32 %83, -2147483648
  br i1 %cmp113, label %land.lhs.true, label %for.body109.if.end126_crit_edge

for.body109.if.end126_crit_edge:                  ; preds = %for.body109
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end126

land.lhs.true:                                    ; preds = %for.body109
  %and116 = and i32 %shr128219221, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and116)
  %cmp117.not = icmp eq i32 %and116, 1
  br i1 %cmp117.not, label %land.lhs.true.if.end126_crit_edge, label %do.end122

land.lhs.true.if.end126_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end126

do.end122:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %84 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %85, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.100, i32 noundef %i.3223, i32 noundef %and116) #13
  br label %if.end126

if.end126:                                        ; preds = %do.end122, %land.lhs.true.if.end126_crit_edge, %for.body109.if.end126_crit_edge
  %shr128 = lshr i32 %shr128219221, 2
  %inc131 = add nuw nsw i32 %i.3223, 1
  %86 = ptrtoint ptr %num_phy_chans to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %num_phy_chans, align 4
  %cmp107 = icmp slt i32 %inc131, %87
  br i1 %cmp107, label %if.end126.for.body109_crit_edge, label %if.end126.do.body133_crit_edge

if.end126.do.body133_crit_edge:                   ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body133

if.end126.for.body109_crit_edge:                  ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body109

do.body133:                                       ; preds = %if.end126.do.body133_crit_edge, %do.end95.do.body133_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !395
  tail call void @arm_heavy_mb() #10
  %88 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %virtbase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 33489664) #10, !srcloc !385
  %conv138 = trunc i32 %gcc.2.lcssa to i16
  %gcc_pwr_off_mask = getelementptr inbounds %struct.d40_base, ptr %base, i32 0, i32 31
  %90 = ptrtoint ptr %gcc_pwr_off_mask to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %conv138, ptr %gcc_pwr_off_mask, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val) #10
  ret i32 %num_phy_chans_avail.2.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @d40_lcla_allocate(ptr nocapture noundef %base) unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lcla_pool = getelementptr inbounds %struct.d40_base, ptr %base, i32 0, i32 22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 1024) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_phy_chans = getelementptr inbounds %struct.d40_base, ptr %base, i32 0, i32 10
  %1 = ptrtoint ptr %num_phy_chans to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_phy_chans, align 4
  %3 = lshr i32 %2, 2
  %div126 = and i32 %3, 1048575
  %pages = getelementptr inbounds %struct.d40_base, ptr %base, i32 0, i32 22, i32 3
  %4 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %div126, ptr %pages, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc22.for.body_crit_edge, %if.end
  %cmp143 = phi i1 [ true, %if.end ], [ %cmp, %for.inc22.for.body_crit_edge ]
  %i.0142 = phi i32 [ 0, %if.end ], [ %inc23, %for.inc22.for.body_crit_edge ]
  %5 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pages, align 4
  %call4 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef %6) #10
  %arrayidx = getelementptr i32, ptr %call7.i.i, i32 %i.0142
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call4, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool6.not = icmp eq i32 %call4, 0
  br i1 %tobool6.not, label %do.end, label %if.end16

do.end:                                           ; preds = %for.body
  %dev = getelementptr inbounds %struct.d40_base, ptr %base, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %10 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pages, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.105, i32 noundef %11) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0142)
  %cmp11146.not = icmp eq i32 %i.0142, 0
  br i1 %cmp11146.not, label %do.end.free_page_list_crit_edge, label %do.end.for.body12_crit_edge

do.end.for.body12_crit_edge:                      ; preds = %do.end
  br label %for.body12

do.end.free_page_list_crit_edge:                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_page_list

for.body12:                                       ; preds = %for.body12.for.body12_crit_edge, %do.end.for.body12_crit_edge
  %j.0147 = phi i32 [ %inc, %for.body12.for.body12_crit_edge ], [ 0, %do.end.for.body12_crit_edge ]
  %arrayidx13 = getelementptr i32, ptr %call7.i.i, i32 %j.0147
  %12 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx13, align 4
  %14 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pages, align 4
  tail call void @free_pages(i32 noundef %13, i32 noundef %15) #10
  %inc = add nuw nsw i32 %j.0147, 1
  %exitcond150.not = icmp eq i32 %inc, %i.0142
  br i1 %exitcond150.not, label %for.body12.free_page_list_crit_edge, label %for.body12.for.body12_crit_edge

for.body12.for.body12_crit_edge:                  ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body12

for.body12.free_page_list_crit_edge:              ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_page_list

if.end16:                                         ; preds = %for.body
  %call.i = tail call i32 @__virt_to_phys(i32 noundef %call4) #10
  %and = and i32 %call.i, 262143
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp19 = icmp eq i32 %and, 0
  br i1 %cmp19, label %for.end24, label %for.inc22

for.inc22:                                        ; preds = %if.end16
  %inc23 = add nuw nsw i32 %i.0142, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %i.0142)
  %cmp = icmp ult i32 %i.0142, 255
  %exitcond.not = icmp eq i32 %inc23, 256
  br i1 %exitcond.not, label %for.inc22.for.body27.preheader_crit_edge, label %for.inc22.for.body_crit_edge

for.inc22.for.body_crit_edge:                     ; preds = %for.inc22
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc22.for.body27.preheader_crit_edge:         ; preds = %for.inc22
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body27.preheader

for.end24:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0142)
  %cmp26144.not = icmp eq i32 %i.0142, 0
  br i1 %cmp26144.not, label %for.end24.for.end33_crit_edge, label %for.end24.for.body27.preheader_crit_edge

for.end24.for.body27.preheader_crit_edge:         ; preds = %for.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body27.preheader

for.end24.for.end33_crit_edge:                    ; preds = %for.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end33

for.body27.preheader:                             ; preds = %for.end24.for.body27.preheader_crit_edge, %for.inc22.for.body27.preheader_crit_edge
  %cmp.lcssa156 = phi i1 [ %cmp143, %for.end24.for.body27.preheader_crit_edge ], [ %cmp, %for.inc22.for.body27.preheader_crit_edge ]
  %i.0.lcssa154 = phi i32 [ %i.0142, %for.end24.for.body27.preheader_crit_edge ], [ 256, %for.inc22.for.body27.preheader_crit_edge ]
  br label %for.body27

for.body27:                                       ; preds = %for.body27.for.body27_crit_edge, %for.body27.preheader
  %j.1145 = phi i32 [ %inc32, %for.body27.for.body27_crit_edge ], [ 0, %for.body27.preheader ]
  %arrayidx28 = getelementptr i32, ptr %call7.i.i, i32 %j.1145
  %16 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx28, align 4
  %18 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pages, align 4
  tail call void @free_pages(i32 noundef %17, i32 noundef %19) #10
  %inc32 = add nuw nsw i32 %j.1145, 1
  %exitcond149.not = icmp eq i32 %inc32, %i.0.lcssa154
  br i1 %exitcond149.not, label %for.body27.for.end33_crit_edge, label %for.body27.for.body27_crit_edge

for.body27.for.body27_crit_edge:                  ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body27

for.body27.for.end33_crit_edge:                   ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end33

for.end33:                                        ; preds = %for.body27.for.end33_crit_edge, %for.end24.for.end33_crit_edge
  %cmp.lcssa157 = phi i1 [ %cmp143, %for.end24.for.end33_crit_edge ], [ %cmp.lcssa156, %for.body27.for.end33_crit_edge ]
  %i.0.lcssa155 = phi i32 [ 0, %for.end24.for.end33_crit_edge ], [ %i.0.lcssa154, %for.body27.for.end33_crit_edge ]
  br i1 %cmp.lcssa157, label %if.then35, label %do.end41

if.then35:                                        ; preds = %for.end33
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx36 = getelementptr i32, ptr %call7.i.i, i32 %i.0.lcssa155
  %20 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx36, align 4
  br label %if.end60

do.end41:                                         ; preds = %for.end33
  %dev42 = getelementptr inbounds %struct.d40_base, ptr %base, i32 0, i32 2
  %22 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev42, align 4
  %24 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pages, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.105, i32 noundef %25) #13
  %26 = ptrtoint ptr %num_phy_chans to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_phy_chans, align 4
  %mul46 = shl i32 %27, 10
  %add = add i32 %mul46, 262144
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #15
  %base_unaligned = getelementptr inbounds %struct.d40_base, ptr %base, i32 0, i32 22, i32 2
  %28 = ptrtoint ptr %base_unaligned to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call9.i, ptr %base_unaligned, align 4
  %tobool51.not = icmp eq ptr %call9.i, null
  br i1 %tobool51.not, label %do.end41.free_page_list_crit_edge, label %if.end53

do.end41.free_page_list_crit_edge:                ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_page_list

if.end53:                                         ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %call9.i to i32
  %add56 = add i32 %29, 262143
  %and57 = and i32 %add56, -262144
  br label %if.end60

if.end60:                                         ; preds = %if.end53, %if.then35
  %storemerge.in = phi i32 [ %and57, %if.end53 ], [ %21, %if.then35 ]
  %storemerge = inttoptr i32 %storemerge.in to ptr
  %30 = ptrtoint ptr %lcla_pool to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %storemerge, ptr %lcla_pool, align 4
  %dev61 = getelementptr inbounds %struct.d40_base, ptr %base, i32 0, i32 2
  %31 = ptrtoint ptr %dev61 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev61, align 4
  %33 = ptrtoint ptr %num_phy_chans to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_phy_chans, align 4
  %call.i129 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %storemerge) #10
  br i1 %call.i129, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end60
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i131, !prof !396

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_map_single_attrs.exit

if.then.i131:                                     ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %32) #10
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %32, i32 0, i32 3
  %35 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i130 = icmp eq ptr %36, null
  br i1 %tobool.not.i.i130, label %if.end.i.i132, label %if.then.i131.dev_name.exit.i_crit_edge

if.then.i131.dev_name.exit.i_crit_edge:           ; preds = %if.then.i131
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i

if.end.i.i132:                                    ; preds = %if.then.i131
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %32, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i132, %if.then.i131.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %38, %if.end.i.i132 ], [ %36, %if.then.i131.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.109, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.110, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #10
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  %mul64 = shl i32 %34, 10
  tail call void @debug_dma_map_single(ptr noundef %32, ptr noundef %storemerge, i32 noundef %mul64) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %39 = load ptr, ptr @mem_map, align 4
  %sub.i = add i32 %storemerge.in, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %39, i32 %shr.i
  %and.i = and i32 %storemerge.in, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %32, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %mul64, i32 noundef 1, i32 noundef 0) #10
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %dma_addr = getelementptr inbounds %struct.d40_base, ptr %base, i32 0, i32 22, i32 1
  %40 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %retval.0.i, ptr %dma_addr, align 4
  %41 = ptrtoint ptr %dev61 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev61, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %42, i32 noundef %retval.0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i133 = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i133, label %if.then70, label %do.body73

if.then70:                                        ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %dma_addr, align 4
  br label %free_page_list

do.body73:                                        ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !397
  tail call void @arm_heavy_mb() #10
  %44 = ptrtoint ptr %lcla_pool to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %lcla_pool, align 4
  %46 = ptrtoint ptr %45 to i32
  %call.i134 = tail call i32 @__virt_to_phys(i32 noundef %46) #10
  %47 = tail call i32 @llvm.bswap.i32(i32 %call.i134)
  %virtbase = getelementptr inbounds %struct.d40_base, ptr %base, i32 0, i32 3
  %48 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %virtbase, align 4
  %add.ptr = getelementptr i8, ptr %49, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %47) #10, !srcloc !385
  br label %free_page_list

free_page_list:                                   ; preds = %do.body73, %if.then70, %do.end41.free_page_list_crit_edge, %for.body12.free_page_list_crit_edge, %do.end.free_page_list_crit_edge
  %ret.0 = phi i32 [ -12, %if.then70 ], [ 0, %do.body73 ], [ -12, %do.end41.free_page_list_crit_edge ], [ -12, %do.end.free_page_list_crit_edge ], [ -12, %for.body12.free_page_list_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %free_page_list, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %free_page_list ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @d40_handle_interrupt(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %regs_interrupt = getelementptr inbounds %struct.d40_base, ptr %data, i32 0, i32 30
  %0 = ptrtoint ptr %regs_interrupt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs_interrupt, align 4
  %il1 = getelementptr inbounds %struct.d40_base, ptr %data, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %il1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %il1, align 4
  %il_size3 = getelementptr inbounds %struct.d40_base, ptr %data, i32 0, i32 32, i32 9
  %4 = ptrtoint ptr %il_size3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %il_size3, align 4
  tail call void @_raw_spin_lock(ptr noundef %data) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp71.not = icmp eq i32 %5, 0
  br i1 %cmp71.not, label %entry.for.cond6.preheader_crit_edge, label %for.body.lr.ph

entry.for.cond6.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond6.preheader

for.body.lr.ph:                                   ; preds = %entry
  %virtbase = getelementptr inbounds %struct.d40_base, ptr %data, i32 0, i32 3
  br label %for.body

for.cond6.preheader:                              ; preds = %for.body.for.cond6.preheader_crit_edge, %entry.for.cond6.preheader_crit_edge
  %mul = shl i32 %5, 5
  %call773 = tail call i32 @_find_next_bit_be(ptr noundef %1, i32 noundef %mul, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call773, i32 %mul)
  %cmp974 = icmp eq i32 %call773, %mul
  br i1 %cmp974, label %for.cond6.preheader.for.end35_crit_edge, label %if.end.lr.ph

for.cond6.preheader.for.end35_crit_edge:          ; preds = %for.cond6.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end35

if.end.lr.ph:                                     ; preds = %for.cond6.preheader
  %lookup_log_chans = getelementptr inbounds %struct.d40_base, ptr %data, i32 0, i32 17
  %lookup_phy_chans = getelementptr inbounds %struct.d40_base, ptr %data, i32 0, i32 18
  %virtbase21 = getelementptr inbounds %struct.d40_base, ptr %data, i32 0, i32 3
  %dev = getelementptr inbounds %struct.d40_base, ptr %data, i32 0, i32 2
  br label %if.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.072 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %virtbase, align 4
  %arrayidx = getelementptr %struct.d40_interrupt_lookup, ptr %3, i32 %i.072
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %9
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !382
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !398
  %arrayidx5 = getelementptr i32, ptr %1, i32 %i.072
  %12 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %arrayidx5, align 4
  %inc = add nuw i32 %i.072, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.body.for.cond6.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.cond6.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond6.preheader

if.end:                                           ; preds = %for.cond6.backedge.if.end_crit_edge, %if.end.lr.ph
  %call775 = phi i32 [ %call773, %if.end.lr.ph ], [ %call7, %for.cond6.backedge.if.end_crit_edge ]
  %div = sdiv i32 %call775, 32
  %and = and i32 %call775, 31
  %offset = getelementptr %struct.d40_interrupt_lookup, ptr %3, i32 %div, i32 3
  %13 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp11 = icmp eq i32 %14, -1
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %lookup_phy_chans to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lookup_phy_chans, align 4
  %arrayidx13 = getelementptr ptr, ptr %16, i32 %and
  br label %if.end18

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %lookup_log_chans to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lookup_log_chans, align 4
  %add16 = add i32 %14, %and
  %arrayidx17 = getelementptr ptr, ptr %18, i32 %add16
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then12
  %d40c.0.in = phi ptr [ %arrayidx13, %if.then12 ], [ %arrayidx17, %if.else ]
  %19 = ptrtoint ptr %d40c.0.in to i32
  call void @__asan_load4_noabort(i32 %19)
  %d40c.0 = load ptr, ptr %d40c.0.in, align 4
  %tobool.not = icmp eq ptr %d40c.0, null
  br i1 %tobool.not, label %if.end18.for.cond6.backedge_crit_edge, label %do.body

if.end18.for.cond6.backedge_crit_edge:            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond6.backedge

do.body:                                          ; preds = %if.end18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !399
  tail call void @arm_heavy_mb() #10
  %shl = shl nuw i32 1, %and
  %20 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %21 = ptrtoint ptr %virtbase21 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %virtbase21, align 4
  %clr = getelementptr %struct.d40_interrupt_lookup, ptr %3, i32 %div, i32 1
  %23 = ptrtoint ptr %clr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %clr, align 4
  %add.ptr23 = getelementptr i8, ptr %22, i32 %24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %20) #10, !srcloc !385
  tail call void @_raw_spin_lock(ptr noundef nonnull %d40c.0) #10
  %is_error = getelementptr %struct.d40_interrupt_lookup, ptr %3, i32 %div, i32 2
  %25 = ptrtoint ptr %is_error to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %is_error, align 4, !range !386
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool25.not = icmp eq i8 %26, 0
  br i1 %tobool25.not, label %if.then26, label %do.end30

if.then26:                                        ; preds = %do.body
  %active.i.i = getelementptr inbounds %struct.d40_chan, ptr %d40c.0, i32 0, i32 9
  %27 = ptrtoint ptr %active.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %active.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %28, %active.i.i
  %add.ptr.i.i = getelementptr i8, ptr %28, i32 -188
  %cmp113.i = icmp eq ptr %add.ptr.i.i, null
  %cmp.i = or i1 %cmp.not.i.i, %cmp113.i
  br i1 %cmp.i, label %if.then26.if.end33_crit_edge, label %if.end.i

if.then26.if.end33_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.end.i:                                         ; preds = %if.then26
  %cyclic.i = getelementptr i8, ptr %28, i32 9
  %29 = ptrtoint ptr %cyclic.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %cyclic.i, align 1, !range !386
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i = icmp eq i8 %30, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.end.i
  %lli_current.i = getelementptr i8, ptr %28, i32 -108
  %31 = ptrtoint ptr %lli_current.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %lli_current.i, align 4
  %lli_len.i = getelementptr i8, ptr %28, i32 -112
  %33 = ptrtoint ptr %lli_len.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %lli_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp2.i = icmp slt i32 %32, %34
  br i1 %cmp2.i, label %land.lhs.true.i, label %if.then1.i.if.end31.i_crit_edge

if.then1.i.if.end31.i_crit_edge:                  ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.i

land.lhs.true.i:                                  ; preds = %if.then1.i
  %log_num.i.i.i.i = getelementptr inbounds %struct.d40_chan, ptr %d40c.0, i32 0, i32 1
  %35 = ptrtoint ptr %log_num.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %log_num.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %cmp.i.i.not.i.i = icmp eq i32 %36, -1
  br i1 %cmp.i.i.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %lcpa.i.i = getelementptr inbounds %struct.d40_chan, ptr %d40c.0, i32 0, i32 20
  %37 = ptrtoint ptr %lcpa.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %lcpa.i.i, align 4
  %lcsp3.i.i = getelementptr inbounds %struct.d40_log_lli_full, ptr %38, i32 0, i32 3
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %lcsp3.i.i) #10, !srcloc !382
  %40 = lshr i32 %39, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !400
  %and.i.i = and i32 %40, 254
  br label %d40_tx_is_linked.exit.i

if.else.i.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %base.i.i.i = getelementptr inbounds %struct.d40_chan, ptr %d40c.0, i32 0, i32 16
  %41 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i.i.i, align 4
  %virtbase.i.i.i = getelementptr inbounds %struct.d40_base, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %virtbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %virtbase.i.i.i, align 4
  %phy_chan.i.i.i = getelementptr inbounds %struct.d40_chan, ptr %d40c.0, i32 0, i32 4
  %45 = ptrtoint ptr %phy_chan.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %phy_chan.i.i.i, align 4
  %num.i.i.i = getelementptr inbounds %struct.d40_phy_res, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %num.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num.i.i.i, align 4
  %mul.i.i.i = shl i32 %48, 5
  %add.ptr1.i.i.i = getelementptr i8, ptr %44, i32 1052
  %add.ptr.i61.i = getelementptr i8, ptr %add.ptr1.i.i.i, i32 %mul.i.i.i
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i61.i) #10, !srcloc !382
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  %50 = and i32 %49, -117440513
  br label %d40_tx_is_linked.exit.i

d40_tx_is_linked.exit.i:                          ; preds = %if.else.i.i, %if.then.i.i
  %is_link.0.in.in.i.i = phi i32 [ %and.i.i, %if.then.i.i ], [ %50, %if.else.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_link.0.in.in.i.i)
  %is_link.0.in.i.not.i = icmp eq i32 %is_link.0.in.in.i.i, 0
  br i1 %is_link.0.in.i.not.i, label %land.lhs.true4.i, label %d40_tx_is_linked.exit.i.if.end31.i_crit_edge

d40_tx_is_linked.exit.i.if.end31.i_crit_edge:     ; preds = %d40_tx_is_linked.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.i

land.lhs.true4.i:                                 ; preds = %d40_tx_is_linked.exit.i
  %51 = ptrtoint ptr %log_num.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %log_num.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %52)
  %cmp.i.i.not.i63.i = icmp eq i32 %52, -1
  br i1 %cmp.i.i.not.i63.i, label %if.else.i74.i, label %if.then.i65.i

if.then.i65.i:                                    ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  %lcpa.i64.i = getelementptr inbounds %struct.d40_chan, ptr %d40c.0, i32 0, i32 20
  %53 = ptrtoint ptr %lcpa.i64.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %lcpa.i64.i, align 4
  %lcsp2.i.i = getelementptr inbounds %struct.d40_log_lli_full, ptr %54, i32 0, i32 2
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %lcsp2.i.i) #10, !srcloc !382
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  br label %d40_residue.exit.i

if.else.i74.i:                                    ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  %base.i.i66.i = getelementptr inbounds %struct.d40_chan, ptr %d40c.0, i32 0, i32 16
  %56 = ptrtoint ptr %base.i.i66.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base.i.i66.i, align 4
  %virtbase.i.i67.i = getelementptr inbounds %struct.d40_base, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %virtbase.i.i67.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %virtbase.i.i67.i, align 4
  %phy_chan.i.i69.i = getelementptr inbounds %struct.d40_chan, ptr %d40c.0, i32 0, i32 4
  %60 = ptrtoint ptr %phy_chan.i.i69.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %phy_chan.i.i69.i, align 4
  %num.i.i70.i = getelementptr inbounds %struct.d40_phy_res, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %num.i.i70.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %num.i.i70.i, align 4
  %mul.i.i71.i = shl i32 %63, 5
  %add.ptr1.i.i72.i = getelementptr i8, ptr %59, i32 1044
  %add.ptr.i73.i = getelementptr i8, ptr %add.ptr1.i.i72.i, i32 %mul.i.i71.i
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i73.i) #10, !srcloc !382
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !403
  br label %d40_residue.exit.i

d40_residue.exit.i:                               ; preds = %if.else.i74.i, %if.then.i65.i
  %.sink14.i.i = phi i32 [ %64, %if.else.i74.i ], [ %55, %if.then.i65.i ]
  %65 = and i32 %.sink14.i.i, 65535
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #10
  %num_elt.0.i.i = lshr exact i32 %66, 16
  %data_width.i.i = getelementptr inbounds %struct.d40_chan, ptr %d40c.0, i32 0, i32 13, i32 7, i32 1
  %67 = ptrtoint ptr %data_width.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %data_width.i.i, align 4
  %mul.i.i = mul i32 %num_elt.0.i.i, %68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i.i)
  %tobool6.not.i = icmp eq i32 %mul.i.i, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %d40_residue.exit.i.if.end31.i_crit_edge

d40_residue.exit.i.if.end31.i_crit_edge:          ; preds = %d40_residue.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.i

if.then7.i:                                       ; preds = %d40_residue.exit.i
  %69 = ptrtoint ptr %log_num.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %log_num.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %70)
  %cmp.i.i.i = icmp eq i32 %70, -1
  br i1 %cmp.i.i.i, label %if.then7.i.d40_lcla_free_all.exit.i_crit_edge, label %do.body1.i.i

if.then7.i.d40_lcla_free_all.exit.i_crit_edge:    ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %d40_lcla_free_all.exit.i

do.body1.i.i:                                     ; preds = %if.then7.i
  %base.i.i = getelementptr inbounds %struct.d40_chan, ptr %d40c.0, i32 0, i32 16
  %71 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base.i.i, align 4
  %lock.i.i = getelementptr inbounds %struct.d40_base, ptr %72, i32 0, i32 22, i32 4
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #10
  %phy_chan.i.i = getelementptr inbounds %struct.d40_chan, ptr %d40c.0, i32 0, i32 4
  %lcla_alloc.i.i = getelementptr i8, ptr %28, i32 -104
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.backedge.i.i, %do.body1.i.i
  %i.03.i.i = phi i32 [ 1, %do.body1.i.i ], [ %i.03.be.i.i, %for.body.backedge.i.i ]
  %73 = ptrtoint ptr %phy_chan.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %phy_chan.i.i, align 4
  %num.i.i = getelementptr inbounds %struct.d40_phy_res, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %num.i.i, align 4
  %mul.i75.i = shl i32 %76, 7
  %add.i.i = add nuw i32 %mul.i75.i, %i.03.i.i
  %77 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %base.i.i, align 4
  %alloc_map.i.i = getelementptr inbounds %struct.d40_base, ptr %78, i32 0, i32 22, i32 5
  %79 = ptrtoint ptr %alloc_map.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %alloc_map.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %80, i32 %add.i.i
  %81 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx.i.i, align 4
  %cmp10.i.i = icmp eq ptr %82, %add.ptr.i.i
  br i1 %cmp10.i.i, label %if.then12.i.i, label %for.inc.i.i

if.then12.i.i:                                    ; preds = %for.body.i.i
  %83 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %arrayidx.i.i, align 4
  %84 = ptrtoint ptr %lcla_alloc.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %lcla_alloc.i.i, align 4
  %dec.i.i = add i32 %85, -1
  store i32 %dec.i.i, ptr %lcla_alloc.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %cmp18.i.i = icmp ne i32 %dec.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %i.03.i.i)
  %cmp6.i.i = icmp ult i32 %i.03.i.i, 63
  %or.cond.i.i = select i1 %cmp18.i.i, i1 %cmp6.i.i, i1 false
  br i1 %or.cond.i.i, label %if.then12.i.i.for.body.backedge.i.i_crit_edge, label %if.then12.i.i.for.end.i.i_crit_edge

if.then12.i.i.for.end.i.i_crit_edge:              ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

if.then12.i.i.for.body.backedge.i.i_crit_edge:    ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.backedge.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %i.03.i.i)
  %cmp6.old.i.i = icmp ult i32 %i.03.i.i, 63
  br i1 %cmp6.old.i.i, label %for.inc.i.i.for.body.backedge.i.i_crit_edge, label %for.inc.i.i.for.end.i.i_crit_edge

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.inc.i.i.for.body.backedge.i.i_crit_edge:      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.backedge.i.i

for.body.backedge.i.i:                            ; preds = %for.inc.i.i.for.body.backedge.i.i_crit_edge, %if.then12.i.i.for.body.backedge.i.i_crit_edge
  %i.03.be.i.i = add nuw nsw i32 %i.03.i.i, 1
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %if.then12.i.i.for.end.i.i_crit_edge
  %86 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %base.i.i, align 4
  %lock25.i.i = getelementptr inbounds %struct.d40_base, ptr %87, i32 0, i32 22, i32 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock25.i.i, i32 noundef %call3.i.i) #10
  br label %d40_lcla_free_all.exit.i

d40_lcla_free_all.exit.i:                         ; preds = %for.end.i.i, %if.then7.i.d40_lcla_free_all.exit.i_crit_edge
  tail call fastcc void @d40_desc_load(ptr noundef %d40c.0, ptr noundef nonnull %add.ptr.i.i) #10
  %call.i.i = tail call fastcc i32 @d40_channel_execute_command(ptr noundef %d40c.0, i32 noundef 1) #10
  %88 = ptrtoint ptr %lli_current.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %lli_current.i, align 4
  %90 = ptrtoint ptr %lli_len.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %lli_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %89, i32 %91)
  %cmp12.i = icmp eq i32 %89, %91
  br i1 %cmp12.i, label %if.then13.i, label %d40_lcla_free_all.exit.i.if.end31.i_crit_edge

d40_lcla_free_all.exit.i.if.end31.i_crit_edge:    ; preds = %d40_lcla_free_all.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.i

if.then13.i:                                      ; preds = %d40_lcla_free_all.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %92 = ptrtoint ptr %lli_current.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %lli_current.i, align 4
  br label %if.end31.i

if.else.i:                                        ; preds = %if.end.i
  %log_num.i.i76.i = getelementptr inbounds %struct.d40_chan, ptr %d40c.0, i32 0, i32 1
  %93 = ptrtoint ptr %log_num.i.i76.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %log_num.i.i76.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %94)
  %cmp.i.i77.i = icmp eq i32 %94, -1
  br i1 %cmp.i.i77.i, label %if.else.i.d40_lcla_free_all.exit103.i_crit_edge, label %do.body1.i83.i

if.else.i.d40_lcla_free_all.exit103.i_crit_edge:  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %d40_lcla_free_all.exit103.i

do.body1.i83.i:                                   ; preds = %if.else.i
  %base.i78.i = getelementptr inbounds %struct.d40_chan, ptr %d40c.0, i32 0, i32 16
  %95 = ptrtoint ptr %base.i78.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %base.i78.i, align 4
  %lock.i79.i = getelementptr inbounds %struct.d40_base, ptr %96, i32 0, i32 22, i32 4
  %call3.i80.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i79.i) #10
  %phy_chan.i81.i = getelementptr inbounds %struct.d40_chan, ptr %d40c.0, i32 0, i32 4
  %lcla_alloc.i82.i = getelementptr i8, ptr %28, i32 -104
  br label %for.body.i91.i

for.body.i91.i:                                   ; preds = %for.body.backedge.i100.i, %do.body1.i83.i
  %i.03.i84.i = phi i32 [ 1, %do.body1.i83.i ], [ %i.03.be.i99.i, %for.body.backedge.i100.i ]
  %97 = ptrtoint ptr %phy_chan.i81.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %phy_chan.i81.i, align 4
  %num.i85.i = getelementptr inbounds %struct.d40_phy_res, ptr %98, i32 0, i32 2
  %99 = ptrtoint ptr %num.i85.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %num.i85.i, align 4
  %mul.i86.i = shl i32 %100, 7
  %add.i87.i = add nuw i32 %mul.i86.i, %i.03.i84.i
  %101 = ptrtoint ptr %base.i78.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %base.i78.i, align 4
  %alloc_map.i88.i = getelementptr inbounds %struct.d40_base, ptr %102, i32 0, i32 22, i32 5
  %103 = ptrtoint ptr %alloc_map.i88.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %alloc_map.i88.i, align 4
  %arrayidx.i89.i = getelementptr ptr, ptr %104, i32 %add.i87.i
  %105 = ptrtoint ptr %arrayidx.i89.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx.i89.i, align 4
  %cmp10.i90.i = icmp eq ptr %106, %add.ptr.i.i
  br i1 %cmp10.i90.i, label %if.then12.i96.i, label %for.inc.i98.i

if.then12.i96.i:                                  ; preds = %for.body.i91.i
  %107 = ptrtoint ptr %arrayidx.i89.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr null, ptr %arrayidx.i89.i, align 4
  %108 = ptrtoint ptr %lcla_alloc.i82.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %lcla_alloc.i82.i, align 4
  %dec.i92.i = add i32 %109, -1
  store i32 %dec.i92.i, ptr %lcla_alloc.i82.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i92.i)
  %cmp18.i93.i = icmp ne i32 %dec.i92.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %i.03.i84.i)
  %cmp6.i94.i = icmp ult i32 %i.03.i84.i, 63
  %or.cond.i95.i = select i1 %cmp18.i93.i, i1 %cmp6.i94.i, i1 false
  br i1 %or.cond.i95.i, label %if.then12.i96.i.for.body.backedge.i100.i_crit_edge, label %if.then12.i96.i.for.end.i102.i_crit_edge

if.then12.i96.i.for.end.i102.i_crit_edge:         ; preds = %if.then12.i96.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i102.i

if.then12.i96.i.for.body.backedge.i100.i_crit_edge: ; preds = %if.then12.i96.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.backedge.i100.i

for.inc.i98.i:                                    ; preds = %for.body.i91.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %i.03.i84.i)
  %cmp6.old.i97.i = icmp ult i32 %i.03.i84.i, 63
  br i1 %cmp6.old.i97.i, label %for.inc.i98.i.for.body.backedge.i100.i_crit_edge, label %for.inc.i98.i.for.end.i102.i_crit_edge

for.inc.i98.i.for.end.i102.i_crit_edge:           ; preds = %for.inc.i98.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i102.i

for.inc.i98.i.for.body.backedge.i100.i_crit_edge: ; preds = %for.inc.i98.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.backedge.i100.i

for.body.backedge.i100.i:                         ; preds = %for.inc.i98.i.for.body.backedge.i100.i_crit_edge, %if.then12.i96.i.for.body.backedge.i100.i_crit_edge
  %i.03.be.i99.i = add nuw nsw i32 %i.03.i84.i, 1
  br label %for.body.i91.i

for.end.i102.i:                                   ; preds = %for.inc.i98.i.for.end.i102.i_crit_edge, %if.then12.i96.i.for.end.i102.i_crit_edge
  %110 = ptrtoint ptr %base.i78.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %base.i78.i, align 4
  %lock25.i101.i = getelementptr inbounds %struct.d40_base, ptr %111, i32 0, i32 22, i32 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock25.i101.i, i32 noundef %call3.i80.i) #10
  br label %d40_lcla_free_all.exit103.i

d40_lcla_free_all.exit103.i:                      ; preds = %for.end.i102.i, %if.else.i.d40_lcla_free_all.exit103.i_crit_edge
  %lli_current18.i = getelementptr i8, ptr %28, i32 -108
  %112 = ptrtoint ptr %lli_current18.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %lli_current18.i, align 4
  %lli_len19.i = getelementptr i8, ptr %28, i32 -112
  %114 = ptrtoint ptr %lli_len19.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %lli_len19.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %113, i32 %115)
  %cmp20.i = icmp slt i32 %113, %115
  br i1 %cmp20.i, label %if.then21.i, label %if.end23.i

if.then21.i:                                      ; preds = %d40_lcla_free_all.exit103.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @d40_desc_load(ptr noundef %d40c.0, ptr noundef nonnull %add.ptr.i.i) #10
  %call.i104.i = tail call fastcc i32 @d40_channel_execute_command(ptr noundef %d40c.0, i32 noundef 1) #10
  br label %if.end33

if.end23.i:                                       ; preds = %d40_lcla_free_all.exit103.i
  %call24.i = tail call fastcc ptr @d40_queue_start(ptr noundef %d40c.0) #10
  %cmp25.i = icmp eq ptr %call24.i, null
  br i1 %cmp25.i, label %if.then26.i, label %if.end23.i.if.end30.i_crit_edge

if.end23.i.if.end30.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30.i

if.then26.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  %busy.i = getelementptr inbounds %struct.d40_chan, ptr %d40c.0, i32 0, i32 3
  %116 = ptrtoint ptr %busy.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 0, ptr %busy.i, align 4
  %base.i = getelementptr inbounds %struct.d40_chan, ptr %d40c.0, i32 0, i32 16
  %117 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %base.i, align 4
  %dev.i = getelementptr inbounds %struct.d40_base, ptr %118, i32 0, i32 2
  %119 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dev.i, align 4
  %call.i105.i = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %120, i32 0, i32 12, i32 22
  %121 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %121)
  store volatile i64 %call.i105.i, ptr %last_busy.i.i, align 8
  %122 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %base.i, align 4
  %dev28.i = getelementptr inbounds %struct.d40_base, ptr %123, i32 0, i32 2
  %124 = ptrtoint ptr %dev28.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dev28.i, align 4
  %call.i106.i = tail call i32 @__pm_runtime_suspend(ptr noundef %125, i32 noundef 13) #10
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then26.i, %if.end23.i.if.end30.i_crit_edge
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %28) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end30.i.d40_desc_remove.exit.i_crit_edge

if.end30.i.d40_desc_remove.exit.i_crit_edge:      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %d40_desc_remove.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i = getelementptr i8, ptr %28, i32 4
  %126 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %prev.i.i.i.i, align 4
  %128 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %28, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %129, i32 0, i32 1
  %130 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %127, ptr %prev1.i.i.i.i.i, align 4
  %131 = ptrtoint ptr %127 to i32
  call void @__asan_store4_noabort(i32 %131)
  store volatile ptr %129, ptr %127, align 4
  br label %d40_desc_remove.exit.i

d40_desc_remove.exit.i:                           ; preds = %if.end.i.i.i.i, %if.end30.i.d40_desc_remove.exit.i_crit_edge
  %132 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr inttoptr (i32 256 to ptr), ptr %28, align 4
  %prev.i.i.i = getelementptr i8, ptr %28, i32 4
  %133 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %done.i.i = getelementptr inbounds %struct.d40_chan, ptr %d40c.0, i32 0, i32 10
  %prev.i.i108.i = getelementptr inbounds %struct.d40_chan, ptr %d40c.0, i32 0, i32 10, i32 1
  %134 = ptrtoint ptr %prev.i.i108.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %prev.i.i108.i, align 4
  %call.i.i.i109.i = tail call zeroext i1 @__list_add_valid(ptr noundef %28, ptr noundef %135, ptr noundef %done.i.i) #10
  br i1 %call.i.i.i109.i, label %if.end.i.i.i110.i, label %d40_desc_remove.exit.i.if.end31.i_crit_edge

d40_desc_remove.exit.i.if.end31.i_crit_edge:      ; preds = %d40_desc_remove.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.i

if.end.i.i.i110.i:                                ; preds = %d40_desc_remove.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %136 = ptrtoint ptr %prev.i.i108.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %28, ptr %prev.i.i108.i, align 4
  %137 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %done.i.i, ptr %28, align 4
  %138 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %135, ptr %prev.i.i.i, align 4
  %139 = ptrtoint ptr %135 to i32
  call void @__asan_store4_noabort(i32 %139)
  store volatile ptr %28, ptr %135, align 4
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.end.i.i.i110.i, %d40_desc_remove.exit.i.if.end31.i_crit_edge, %if.then13.i, %d40_lcla_free_all.exit.i.if.end31.i_crit_edge, %d40_residue.exit.i.if.end31.i_crit_edge, %d40_tx_is_linked.exit.i.if.end31.i_crit_edge, %if.then1.i.if.end31.i_crit_edge
  %pending_tx.i = getelementptr inbounds %struct.d40_chan, ptr %d40c.0, i32 0, i32 2
  %140 = ptrtoint ptr %pending_tx.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %pending_tx.i, align 4
  %inc.i = add i32 %141, 1
  store i32 %inc.i, ptr %pending_tx.i, align 4
  %state.i.i = getelementptr inbounds %struct.d40_chan, ptr %d40c.0, i32 0, i32 6, i32 1
  %call.i111.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i111.i)
  %tobool.not.i.i = icmp eq i32 %call.i111.i, 0
  br i1 %tobool.not.i.i, label %if.then.i112.i, label %if.end31.i.if.end33_crit_edge

if.end31.i.if.end33_crit_edge:                    ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then.i112.i:                                   ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  %tasklet.i = getelementptr inbounds %struct.d40_chan, ptr %d40c.0, i32 0, i32 6
  tail call void @__tasklet_schedule(ptr noundef %tasklet.i) #10
  br label %if.end33

do.end30:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %142 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dev, align 4
  %144 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %offset, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %143, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.112, i32 noundef %call775, i32 noundef %145, i32 noundef %and) #13
  br label %if.end33

if.end33:                                         ; preds = %do.end30, %if.then.i112.i, %if.end31.i.if.end33_crit_edge, %if.then21.i, %if.then26.if.end33_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %d40c.0) #10
  br label %for.cond6.backedge

for.cond6.backedge:                               ; preds = %if.end33, %if.end18.for.cond6.backedge_crit_edge
  %add = add i32 %call775, 1
  %call7 = tail call i32 @_find_next_bit_be(ptr noundef %1, i32 noundef %mul, i32 noundef %add) #10
  %cmp9 = icmp eq i32 %call7, %mul
  br i1 %cmp9, label %for.cond6.backedge.for.end35_crit_edge, label %for.cond6.backedge.if.end_crit_edge

for.cond6.backedge.if.end_crit_edge:              ; preds = %for.cond6.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.cond6.backedge.for.end35_crit_edge:           ; preds = %for.cond6.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end35

for.end35:                                        ; preds = %for.cond6.backedge.for.end35_crit_edge, %for.cond6.preheader.for.end35_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %data) #10
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @regulator_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_irq_safe(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @d40_dmaengine_init(ptr noundef %base, i32 noundef %num_reserved_chans) unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_slave = getelementptr inbounds %struct.d40_base, ptr %base, i32 0, i32 13
  %log_chans = getelementptr inbounds %struct.d40_base, ptr %base, i32 0, i32 16
  %0 = ptrtoint ptr %log_chans to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %log_chans, align 4
  %num_log_chans = getelementptr inbounds %struct.d40_base, ptr %base, i32 0, i32 11
  %2 = ptrtoint ptr %num_log_chans to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_log_chans, align 4
  tail call fastcc void @d40_chan_init(ptr noundef %base, ptr noundef %dma_slave, ptr noundef %1, i32 noundef 0, i32 noundef %3) #14
  %cap_mask = getelementptr inbounds %struct.d40_base, ptr %base, i32 0, i32 13, i32 6
  %4 = ptrtoint ptr %cap_mask to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %cap_mask, align 4
  tail call void @_set_bit(i32 noundef 11, ptr noundef %cap_mask) #10
  tail call void @_set_bit(i32 noundef 12, ptr noundef %cap_mask) #10
  tail call fastcc void @d40_ops_init(ptr noundef %base, ptr noundef %dma_slave)
  %call = tail call i32 @dmaenginem_async_device_register(ptr noundef %dma_slave) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %dma_memcpy = getelementptr inbounds %struct.d40_base, ptr %base, i32 0, i32 14
  %5 = ptrtoint ptr %log_chans to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %log_chans, align 4
  %7 = ptrtoint ptr %num_log_chans to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_log_chans, align 4
  %num_memcpy_chans = getelementptr inbounds %struct.d40_base, ptr %base, i32 0, i32 9
  %9 = ptrtoint ptr %num_memcpy_chans to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_memcpy_chans, align 4
  tail call fastcc void @d40_chan_init(ptr noundef %base, ptr noundef %dma_memcpy, ptr noundef %6, i32 noundef %8, i32 noundef %10) #14
  %cap_mask11 = getelementptr inbounds %struct.d40_base, ptr %base, i32 0, i32 14, i32 6
  %11 = ptrtoint ptr %cap_mask11 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %cap_mask11, align 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %cap_mask11) #10
  tail call fastcc void @d40_ops_init(ptr noundef %base, ptr noundef %dma_memcpy)
  %call16 = tail call i32 @dmaenginem_async_device_register(ptr noundef %dma_memcpy) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end23, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end23:                                         ; preds = %if.end
  %dma_both = getelementptr inbounds %struct.d40_base, ptr %base, i32 0, i32 12
  %phy_chans = getelementptr inbounds %struct.d40_base, ptr %base, i32 0, i32 15
  %12 = ptrtoint ptr %phy_chans to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy_chans, align 4
  tail call fastcc void @d40_chan_init(ptr noundef %base, ptr noundef %dma_both, ptr noundef %13, i32 noundef 0, i32 noundef %num_reserved_chans) #14
  %cap_mask25 = getelementptr inbounds %struct.d40_base, ptr %base, i32 0, i32 12, i32 6
  %14 = ptrtoint ptr %cap_mask25 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %cap_mask25, align 4
  tail call void @_set_bit(i32 noundef 11, ptr noundef %cap_mask25) #10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %cap_mask25) #10
  tail call void @_set_bit(i32 noundef 12, ptr noundef %cap_mask) #10
  tail call fastcc void @d40_ops_init(ptr noundef %base, ptr noundef %dma_both)
  %call34 = tail call i32 @dmaenginem_async_device_register(ptr noundef %dma_both) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end23.cleanup_crit_edge, label %if.end23.cleanup.sink.split_crit_edge

if.end23.cleanup.sink.split_crit_edge:            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end23.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.119.sink = phi ptr [ @.str.119, %entry.cleanup.sink.split_crit_edge ], [ @.str.122, %if.end.cleanup.sink.split_crit_edge ], [ @.str.125, %if.end23.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call, %entry.cleanup.sink.split_crit_edge ], [ %call16, %if.end.cleanup.sink.split_crit_edge ], [ %call34, %if.end23.cleanup.sink.split_crit_edge ]
  %dev = getelementptr inbounds %struct.d40_base, ptr %base, i32 0, i32 2
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull %.str.119.sink, ptr noundef nonnull @.str.120) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end23.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end23.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @d40_hw_init(ptr nocapture noundef %base) unnamed_addr #2 section ".init.text" align 64 {
entry:
  %prmseo = alloca [2 x i32], align 8
  %activeo = alloca [2 x i32], align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %prmseo) #10
  %0 = ptrtoint ptr %prmseo to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %prmseo, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %activeo) #10
  %1 = ptrtoint ptr %activeo to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %activeo, align 8
  %init_reg = getelementptr inbounds %struct.d40_base, ptr %base, i32 0, i32 32, i32 10
  %2 = ptrtoint ptr %init_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_reg, align 4
  %init_reg_size = getelementptr inbounds %struct.d40_base, ptr %base, i32 0, i32 32, i32 11
  %4 = ptrtoint ptr %init_reg_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %init_reg_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp100.not = icmp eq i32 %5, 0
  br i1 %cmp100.not, label %entry.for.cond3.preheader_crit_edge, label %do.body.lr.ph

entry.for.cond3.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond3.preheader

do.body.lr.ph:                                    ; preds = %entry
  %virtbase = getelementptr inbounds %struct.d40_base, ptr %base, i32 0, i32 3
  br label %do.body

for.cond3.preheader:                              ; preds = %do.body.for.cond3.preheader_crit_edge, %entry.for.cond3.preheader_crit_edge
  %num_phy_chans = getelementptr inbounds %struct.d40_base, ptr %base, i32 0, i32 10
  %6 = ptrtoint ptr %num_phy_chans to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_phy_chans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp4102 = icmp sgt i32 %7, 0
  br i1 %cmp4102, label %for.body5.lr.ph, label %for.cond3.preheader.do.body30_crit_edge

for.cond3.preheader.do.body30_crit_edge:          ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body30

for.body5.lr.ph:                                  ; preds = %for.cond3.preheader
  %phy_res = getelementptr inbounds %struct.d40_base, ptr %base, i32 0, i32 21
  %8 = ptrtoint ptr %phy_res to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy_res, align 4
  br label %for.body5

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  %i.0101 = phi i32 [ 0, %do.body.lr.ph ], [ %inc, %do.body.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !404
  tail call void @arm_heavy_mb() #10
  %arrayidx = getelementptr %struct.d40_reg_val, ptr %3, i32 %i.0101
  %val = getelementptr %struct.d40_reg_val, ptr %3, i32 %i.0101, i32 1
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %13 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %virtbase, align 4
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %12) #10, !srcloc !385
  %inc = add nuw i32 %i.0101, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %do.body.for.cond3.preheader_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body.for.cond3.preheader_crit_edge:            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond3.preheader

for.body5:                                        ; preds = %for.inc27.for.body5_crit_edge, %for.body5.lr.ph
  %pcicr.0105 = phi i32 [ 0, %for.body5.lr.ph ], [ %pcicr.1, %for.inc27.for.body5_crit_edge ]
  %pcmis.0104 = phi i32 [ 0, %for.body5.lr.ph ], [ %pcmis.1, %for.inc27.for.body5_crit_edge ]
  %i.1103 = phi i32 [ 0, %for.body5.lr.ph ], [ %inc28, %for.inc27.for.body5_crit_edge ]
  %rem = and i32 %i.1103, 1
  %arrayidx6 = getelementptr [2 x i32], ptr %activeo, i32 0, i32 %rem
  %17 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx6, align 4
  %shl = shl i32 %18, 2
  store i32 %shl, ptr %arrayidx6, align 4
  %19 = xor i32 %i.1103, -1
  %sub10 = add i32 %7, %19
  %allocated_src = getelementptr %struct.d40_phy_res, ptr %9, i32 %sub10, i32 3
  %20 = ptrtoint ptr %allocated_src to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %allocated_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %21)
  %cmp12 = icmp eq i32 %21, 1073741824
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i32 %shl, 3
  %22 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or, ptr %arrayidx6, align 4
  br label %for.inc27

if.end:                                           ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #12
  %shl15 = shl i32 %pcmis.0104, 1
  %or16 = or i32 %shl15, 1
  %shl17 = shl i32 %pcicr.0105, 1
  %or18 = or i32 %shl17, 1
  %arrayidx20 = getelementptr [2 x i32], ptr %prmseo, i32 0, i32 %rem
  %23 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx20, align 4
  %shl21 = shl i32 %24, 2
  %or26 = or i32 %shl21, 1
  store i32 %or26, ptr %arrayidx20, align 4
  br label %for.inc27

for.inc27:                                        ; preds = %if.end, %if.then
  %pcmis.1 = phi i32 [ %pcmis.0104, %if.then ], [ %or16, %if.end ]
  %pcicr.1 = phi i32 [ %pcicr.0105, %if.then ], [ %or18, %if.end ]
  %inc28 = add nuw nsw i32 %i.1103, 1
  %exitcond107.not = icmp eq i32 %inc28, %7
  br i1 %exitcond107.not, label %for.inc27.do.body30_crit_edge, label %for.inc27.for.body5_crit_edge

for.inc27.for.body5_crit_edge:                    ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body5

for.inc27.do.body30_crit_edge:                    ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body30

do.body30:                                        ; preds = %for.inc27.do.body30_crit_edge, %for.cond3.preheader.do.body30_crit_edge
  %pcmis.0.lcssa = phi i32 [ 0, %for.cond3.preheader.do.body30_crit_edge ], [ %pcmis.1, %for.inc27.do.body30_crit_edge ]
  %pcicr.0.lcssa = phi i32 [ 0, %for.cond3.preheader.do.body30_crit_edge ], [ %pcicr.1, %for.inc27.do.body30_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !405
  tail call void @arm_heavy_mb() #10
  %arrayidx33 = getelementptr inbounds [2 x i32], ptr %prmseo, i32 0, i32 1
  %25 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx33, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %virtbase34 = getelementptr inbounds %struct.d40_base, ptr %base, i32 0, i32 3
  %28 = ptrtoint ptr %virtbase34 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %virtbase34, align 4
  %add.ptr35 = getelementptr i8, ptr %29, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %27) #10, !srcloc !385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !406
  tail call void @arm_heavy_mb() #10
  %30 = ptrtoint ptr %prmseo to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %prmseo, align 8
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %33 = ptrtoint ptr %virtbase34 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %virtbase34, align 4
  %add.ptr41 = getelementptr i8, ptr %34, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 %32) #10, !srcloc !385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !407
  tail call void @arm_heavy_mb() #10
  %arrayidx45 = getelementptr inbounds [2 x i32], ptr %activeo, i32 0, i32 1
  %35 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx45, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %38 = ptrtoint ptr %virtbase34 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %virtbase34, align 4
  %add.ptr47 = getelementptr i8, ptr %39, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %37) #10, !srcloc !385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !408
  tail call void @arm_heavy_mb() #10
  %40 = ptrtoint ptr %activeo to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %activeo, align 8
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  %43 = ptrtoint ptr %virtbase34 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %virtbase34, align 4
  %add.ptr53 = getelementptr i8, ptr %44, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53, i32 %42) #10, !srcloc !385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !409
  tail call void @arm_heavy_mb() #10
  %45 = tail call i32 @llvm.bswap.i32(i32 %pcmis.0.lcssa)
  %46 = ptrtoint ptr %virtbase34 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %virtbase34, align 4
  %interrupt_en = getelementptr inbounds %struct.d40_base, ptr %base, i32 0, i32 32, i32 6
  %48 = ptrtoint ptr %interrupt_en to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %interrupt_en, align 4
  %add.ptr59 = getelementptr i8, ptr %47, i32 %49
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59, i32 %45) #10, !srcloc !385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !410
  tail call void @arm_heavy_mb() #10
  %50 = tail call i32 @llvm.bswap.i32(i32 %pcicr.0.lcssa)
  %51 = ptrtoint ptr %virtbase34 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %virtbase34, align 4
  %interrupt_clear = getelementptr inbounds %struct.d40_base, ptr %base, i32 0, i32 32, i32 7
  %53 = ptrtoint ptr %interrupt_clear to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %interrupt_clear, align 4
  %add.ptr65 = getelementptr i8, ptr %52, i32 %54
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65, i32 %50) #10, !srcloc !385
  %55 = ptrtoint ptr %init_reg to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %init_reg, align 4
  %56 = ptrtoint ptr %init_reg_size to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %init_reg_size, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %activeo) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %prmseo) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @d40_xlate(ptr nocapture noundef readonly %dma_spec, ptr nocapture noundef readnone %ofdma) #0 align 64 {
entry:
  %cfg = alloca %struct.stedma40_chan_cfg, align 4
  %cap = alloca %struct.dma_cap_mask_t, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %cfg) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cap) #10
  %0 = call ptr @memset(ptr %cfg, i32 0, i32 60)
  %1 = ptrtoint ptr %cap to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %cap, align 4
  call void @_set_bit(i32 noundef 11, ptr noundef nonnull %cap) #10
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2
  %2 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %args, align 4
  %dev_type = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %cfg, i32 0, i32 5
  %4 = ptrtoint ptr %dev_type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %dev_type, align 4
  %arrayidx2 = getelementptr %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2, i32 2
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx2, align 4
  %7 = and i32 %6, 1
  %8 = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %cfg, i32 0, i32 3
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %7, ptr %8, align 4
  %10 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %trunc35.not = icmp eq i32 %10, 0
  br i1 %trunc35.not, label %sw.bb7, label %sw.bb10

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %cfg, align 4
  %dst_info = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %cfg, i32 0, i32 7
  br label %sw.epilog17

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %cfg, align 4
  %src_info = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %cfg, i32 0, i32 6
  br label %sw.epilog17

sw.epilog17:                                      ; preds = %sw.bb10, %sw.bb7
  %src_info.sink = phi ptr [ %src_info, %sw.bb10 ], [ %dst_info, %sw.bb7 ]
  %13 = trunc i32 %6 to i8
  %14 = lshr i8 %13, 2
  %15 = and i8 %14, 1
  %16 = ptrtoint ptr %src_info.sink to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %src_info.sink, align 4
  %17 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool20.not = icmp eq i32 %17, 0
  br i1 %tobool20.not, label %sw.epilog17.if.end_crit_edge, label %if.then

sw.epilog17.if.end_crit_edge:                     ; preds = %sw.epilog17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %sw.epilog17
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx22 = getelementptr %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx22, align 4
  %phy_channel = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %cfg, i32 0, i32 9
  %20 = ptrtoint ptr %phy_channel to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %phy_channel, align 4
  %use_fixed_channel = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %cfg, i32 0, i32 8
  %21 = ptrtoint ptr %use_fixed_channel to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %use_fixed_channel, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog17.if.end_crit_edge
  %22 = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool25.not = icmp eq i32 %22, 0
  br i1 %tobool25.not, label %if.end.if.end27_crit_edge, label %if.then26

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %high_priority = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %cfg, i32 0, i32 1
  %23 = ptrtoint ptr %high_priority to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %high_priority, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end.if.end27_crit_edge
  %call = call ptr @__dma_request_channel(ptr noundef nonnull %cap, ptr noundef nonnull @stedma40_filter, ptr noundef nonnull %cfg, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cap) #10
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %cfg) #10
  ret ptr %call
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @d40_desc_load(ptr nocapture noundef readonly %d40c, ptr noundef %d40d) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %log_num.i = getelementptr inbounds %struct.d40_chan, ptr %d40c, i32 0, i32 1
  %0 = ptrtoint ptr %log_num.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %log_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.i = icmp eq i32 %1, -1
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dst.i = getelementptr inbounds %struct.d40_phy_lli_bidir, ptr %d40d, i32 0, i32 1
  %2 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dst.i, align 4
  %4 = ptrtoint ptr %d40d to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d40d, align 4
  %base.i.i = getelementptr inbounds %struct.d40_chan, ptr %d40c, i32 0, i32 16
  %6 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i, align 4
  %virtbase.i.i = getelementptr inbounds %struct.d40_base, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %virtbase.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %virtbase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 1024
  %phy_chan.i.i = getelementptr inbounds %struct.d40_chan, ptr %d40c, i32 0, i32 4
  %10 = ptrtoint ptr %phy_chan.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy_chan.i.i, align 4
  %num.i.i = getelementptr inbounds %struct.d40_phy_res, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num.i.i, align 4
  %mul.i.i = shl i32 %13, 5
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !411
  tail call void @arm_heavy_mb() #10
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %5, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 %16) #10, !srcloc !385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !412
  tail call void @arm_heavy_mb() #10
  %reg_elt.i = getelementptr inbounds %struct.d40_phy_lli, ptr %5, i32 0, i32 1
  %17 = ptrtoint ptr %reg_elt.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reg_elt.i, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #10
  %add.ptr5.i = getelementptr i8, ptr %add.ptr1.i.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %19) #10, !srcloc !385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !413
  tail call void @arm_heavy_mb() #10
  %reg_ptr.i = getelementptr inbounds %struct.d40_phy_lli, ptr %5, i32 0, i32 2
  %20 = ptrtoint ptr %reg_ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %reg_ptr.i, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #10
  %add.ptr9.i = getelementptr i8, ptr %add.ptr1.i.i, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %22) #10, !srcloc !385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !414
  tail call void @arm_heavy_mb() #10
  %reg_lnk.i = getelementptr inbounds %struct.d40_phy_lli, ptr %5, i32 0, i32 3
  %23 = ptrtoint ptr %reg_lnk.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %reg_lnk.i, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #10
  %add.ptr13.i = getelementptr i8, ptr %add.ptr1.i.i, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %25) #10, !srcloc !385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !415
  tail call void @arm_heavy_mb() #10
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %3, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #10
  %add.ptr18.i = getelementptr i8, ptr %add.ptr1.i.i, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i, i32 %28) #10, !srcloc !385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !416
  tail call void @arm_heavy_mb() #10
  %reg_elt22.i = getelementptr inbounds %struct.d40_phy_lli, ptr %3, i32 0, i32 1
  %29 = ptrtoint ptr %reg_elt22.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %reg_elt22.i, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #10
  %add.ptr23.i = getelementptr i8, ptr %add.ptr1.i.i, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i, i32 %31) #10, !srcloc !385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !417
  tail call void @arm_heavy_mb() #10
  %reg_ptr27.i = getelementptr inbounds %struct.d40_phy_lli, ptr %3, i32 0, i32 2
  %32 = ptrtoint ptr %reg_ptr27.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %reg_ptr27.i, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #10
  %add.ptr28.i = getelementptr i8, ptr %add.ptr1.i.i, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i, i32 %34) #10, !srcloc !385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !418
  tail call void @arm_heavy_mb() #10
  %reg_lnk32.i = getelementptr inbounds %struct.d40_phy_lli, ptr %3, i32 0, i32 3
  %35 = ptrtoint ptr %reg_lnk32.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %reg_lnk32.i, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #10
  %add.ptr33.i = getelementptr i8, ptr %add.ptr1.i.i, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i, i32 %37) #10, !srcloc !385
  %lli_len = getelementptr inbounds %struct.d40_desc, ptr %d40d, i32 0, i32 3
  %38 = ptrtoint ptr %lli_len to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %lli_len, align 4
  %lli_current = getelementptr inbounds %struct.d40_desc, ptr %d40d, i32 0, i32 4
  %40 = ptrtoint ptr %lli_current to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %lli_current, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %base.i = getelementptr inbounds %struct.d40_chan, ptr %d40c, i32 0, i32 16
  %41 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i, align 4
  %lcla_pool.i = getelementptr inbounds %struct.d40_base, ptr %42, i32 0, i32 22
  %lli_log.i = getelementptr inbounds %struct.d40_desc, ptr %d40d, i32 0, i32 1
  %lli_current1.i = getelementptr inbounds %struct.d40_desc, ptr %d40d, i32 0, i32 4
  %43 = ptrtoint ptr %lli_current1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %lli_current1.i, align 4
  %lli_len2.i = getelementptr inbounds %struct.d40_desc, ptr %d40d, i32 0, i32 3
  %45 = ptrtoint ptr %lli_len2.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %lli_len2.i, align 4
  %cyclic3.i = getelementptr inbounds %struct.d40_desc, ptr %d40d, i32 0, i32 9
  %47 = ptrtoint ptr %cyclic3.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %cyclic3.i, align 1, !range !386
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i = icmp ne i8 %48, 0
  %plat_data.i = getelementptr inbounds %struct.d40_base, ptr %42, i32 0, i32 19
  %49 = ptrtoint ptr %plat_data.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %plat_data.i, align 4
  %use_esram_lcla5.i = getelementptr inbounds %struct.stedma40_platform_data, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %use_esram_lcla5.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %use_esram_lcla5.i, align 4, !range !386
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool6.not.i = icmp eq i8 %52, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp.i6 = icmp eq i32 %44, 0
  %spec.select.i = select i1 %tobool.not.i, i1 %cmp.i6, i1 false
  %sub.i = sub i32 %46, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp11.i = icmp sgt i32 %sub.i, 1
  %or.cond.i = select i1 %spec.select.i, i1 true, i1 %cmp11.i
  br i1 %or.cond.i, label %if.then.i, label %if.else.if.then19.thread.i_crit_edge

if.else.if.then19.thread.i_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19.thread.i

if.then.i:                                        ; preds = %if.else
  %phy_chan.i = getelementptr inbounds %struct.d40_chan, ptr %d40c, i32 0, i32 4
  %53 = ptrtoint ptr %phy_chan.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %phy_chan.i, align 4
  %use_soft_lli.i = getelementptr inbounds %struct.d40_phy_res, ptr %54, i32 0, i32 5
  %55 = ptrtoint ptr %use_soft_lli.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %use_soft_lli.i, align 4, !range !386
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool12.not.i = icmp eq i8 %56, 0
  br i1 %tobool12.not.i, label %if.then.i.if.then14.i_crit_edge, label %land.lhs.true.i

if.then.i.if.then14.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %dma_cfg.i = getelementptr inbounds %struct.d40_chan, ptr %d40c, i32 0, i32 13
  %57 = ptrtoint ptr %dma_cfg.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %dma_cfg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %58)
  %cmp13.i = icmp eq i32 %58, 2
  br i1 %cmp13.i, label %land.lhs.true.i.if.then19.thread.i_crit_edge, label %land.lhs.true.i.if.then14.i_crit_edge

land.lhs.true.i.if.then14.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14.i

land.lhs.true.i.if.then19.thread.i_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19.thread.i

if.then14.i:                                      ; preds = %land.lhs.true.i.if.then14.i_crit_edge, %if.then.i.if.then14.i_crit_edge
  %lock.i.i = getelementptr inbounds %struct.d40_base, ptr %42, i32 0, i32 22, i32 4
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #10
  %59 = ptrtoint ptr %phy_chan.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %phy_chan.i, align 4
  %num.i.i7 = getelementptr inbounds %struct.d40_phy_res, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %num.i.i7 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %num.i.i7, align 4
  %mul.i.i8 = shl i32 %62, 7
  %63 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base.i, align 4
  %alloc_map.i.i = getelementptr inbounds %struct.d40_base, ptr %64, i32 0, i32 22, i32 5
  %65 = ptrtoint ptr %alloc_map.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %alloc_map.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then14.i
  %i.034.i.i = phi i32 [ 1, %if.then14.i ], [ %inc13.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %add.i.i = add nuw nsw i32 %i.034.i.i, %mul.i.i8
  %arrayidx.i.i = getelementptr ptr, ptr %66, i32 %add.i.i
  %67 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %68, null
  br i1 %tobool.not.i.i, label %cleanup.i.i, label %for.inc.i.i

cleanup.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i.le = getelementptr ptr, ptr %66, i32 %add.i.i
  %69 = ptrtoint ptr %arrayidx.i.i.le to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %d40d, ptr %arrayidx.i.i.le, align 4
  %lcla_alloc.i.i = getelementptr inbounds %struct.d40_desc, ptr %d40d, i32 0, i32 5
  %70 = ptrtoint ptr %lcla_alloc.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %lcla_alloc.i.i, align 4
  %inc.i.i = add i32 %71, 1
  store i32 %inc.i.i, ptr %lcla_alloc.i.i, align 4
  br label %if.end15.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc13.i.i = add nuw nsw i32 %i.034.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc13.i.i, 64
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.end15.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.if.end15.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

if.end15.i:                                       ; preds = %for.inc.i.i.if.end15.i_crit_edge, %cleanup.i.i
  %ret.2.i.i = phi i32 [ %i.034.i.i, %cleanup.i.i ], [ -22, %for.inc.i.i.if.end15.i_crit_edge ]
  %72 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %base.i, align 4
  %lock16.i.i = getelementptr inbounds %struct.d40_base, ptr %73, i32 0, i32 22, i32 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock16.i.i, i32 noundef %call2.i.i) #10
  %spec.select.not.i = xor i1 %spec.select.i, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %ret.2.i.i)
  %cmp18.i = icmp eq i32 %ret.2.i.i, -22
  %or.cond132.i = select i1 %spec.select.not.i, i1 true, i1 %cmp18.i
  br i1 %or.cond132.i, label %if.then19.i, label %if.end15.i.if.end24.i_crit_edge

if.end15.i.if.end24.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.i

if.then19.i:                                      ; preds = %if.end15.i
  br i1 %cmp18.i, label %if.then19.i.if.then19.thread.i_crit_edge, label %if.then19.i._crit_edge

if.then19.i._crit_edge:                           ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %74

if.then19.i.if.then19.thread.i_crit_edge:         ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19.thread.i

if.then19.thread.i:                               ; preds = %if.then19.i.if.then19.thread.i_crit_edge, %land.lhs.true.i.if.then19.thread.i_crit_edge, %if.else.if.then19.thread.i_crit_edge
  %first_lcla.0169175.i = phi i32 [ -22, %if.then19.i.if.then19.thread.i_crit_edge ], [ -22, %land.lhs.true.i.if.then19.thread.i_crit_edge ], [ 0, %if.else.if.then19.thread.i_crit_edge ]
  br label %74

74:                                               ; preds = %if.then19.thread.i, %if.then19.i._crit_edge
  %curr_lcla.1166176.i = phi i32 [ -22, %if.then19.thread.i ], [ %ret.2.i.i, %if.then19.i._crit_edge ]
  %first_lcla.0169174.i = phi i32 [ %first_lcla.0169175.i, %if.then19.thread.i ], [ %ret.2.i.i, %if.then19.i._crit_edge ]
  %75 = phi i32 [ 2, %if.then19.thread.i ], [ 0, %if.then19.i._crit_edge ]
  %lcpa.i = getelementptr inbounds %struct.d40_chan, ptr %d40c, i32 0, i32 20
  %76 = ptrtoint ptr %lcpa.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %lcpa.i, align 4
  %dst.i9 = getelementptr inbounds %struct.d40_desc, ptr %d40d, i32 0, i32 1, i32 1
  %78 = ptrtoint ptr %dst.i9 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dst.i9, align 4
  %arrayidx.i = getelementptr %struct.d40_log_lli, ptr %79, i32 %44
  %80 = ptrtoint ptr %lli_log.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %lli_log.i, align 4
  %arrayidx23.i = getelementptr %struct.d40_log_lli, ptr %81, i32 %44
  tail call void @d40_log_lli_lcpa_write(ptr noundef %77, ptr noundef %arrayidx.i, ptr noundef %arrayidx23.i, i32 noundef %curr_lcla.1166176.i, i32 noundef %75) #10
  %inc.i = add i32 %44, 1
  br label %if.end24.i

if.end24.i:                                       ; preds = %74, %if.end15.i.if.end24.i_crit_edge
  %first_lcla.0168.i = phi i32 [ %first_lcla.0169174.i, %74 ], [ %ret.2.i.i, %if.end15.i.if.end24.i_crit_edge ]
  %curr_lcla.1167.i = phi i32 [ %curr_lcla.1166176.i, %74 ], [ %ret.2.i.i, %if.end15.i.if.end24.i_crit_edge ]
  %lli_current.0.i = phi i32 [ %inc.i, %74 ], [ %44, %if.end15.i.if.end24.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %curr_lcla.1167.i)
  %cmp25.i = icmp sgt i32 %curr_lcla.1167.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %lli_current.0.i, i32 %46)
  %cmp28182.i = icmp slt i32 %lli_current.0.i, %46
  %or.cond186.i = select i1 %cmp25.i, i1 %cmp28182.i, i1 false
  br i1 %or.cond186.i, label %for.body.lr.ph.i, label %if.end24.i.d40_log_lli_to_lcxa.exit_crit_edge

if.end24.i.d40_log_lli_to_lcxa.exit_crit_edge:    ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %d40_log_lli_to_lcxa.exit

for.body.lr.ph.i:                                 ; preds = %if.end24.i
  %phy_chan29.i = getelementptr inbounds %struct.d40_chan, ptr %d40c, i32 0, i32 4
  %spec.select134.i = select i1 %spec.select.i, i32 %first_lcla.0168.i, i32 -22
  %lcla_alloc.i151.i = getelementptr inbounds %struct.d40_desc, ptr %d40d, i32 0, i32 5
  %lcpa50.i = getelementptr inbounds %struct.d40_chan, ptr %d40c, i32 0, i32 20
  %dst51.i = getelementptr inbounds %struct.d40_desc, ptr %d40d, i32 0, i32 1, i32 1
  %dma_addr.i = getelementptr inbounds %struct.d40_base, ptr %42, i32 0, i32 22, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %curr_lcla.2184.i = phi i32 [ %curr_lcla.1167.i, %for.body.lr.ph.i ], [ %next_lcla.0.i, %for.inc.i.for.body.i_crit_edge ]
  %lli_current.1183.i = phi i32 [ %lli_current.0.i, %for.body.lr.ph.i ], [ %add34.i, %for.inc.i.for.body.i_crit_edge ]
  %82 = ptrtoint ptr %phy_chan29.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %phy_chan29.i, align 4
  %num.i = getelementptr inbounds %struct.d40_phy_res, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %num.i, align 4
  %mul.i = shl i32 %85, 10
  %mul31.i = shl i32 %curr_lcla.2184.i, 4
  %add.i = add i32 %mul.i, %mul31.i
  %86 = ptrtoint ptr %lcla_pool.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %lcla_pool.i, align 4
  %add.ptr.i = getelementptr i8, ptr %87, i32 %add.i
  %add34.i = add nsw i32 %lli_current.1183.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add34.i, i32 %46)
  %cmp35.i = icmp slt i32 %add34.i, %46
  br i1 %cmp35.i, label %if.then36.i, label %for.body.i.if.end39.i_crit_edge

for.body.i.if.end39.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.i

if.then36.i:                                      ; preds = %for.body.i
  %88 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %base.i, align 4
  %lock.i139.i = getelementptr inbounds %struct.d40_base, ptr %89, i32 0, i32 22, i32 4
  %call2.i140.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i139.i) #10
  %90 = ptrtoint ptr %phy_chan29.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %phy_chan29.i, align 4
  %num.i142.i = getelementptr inbounds %struct.d40_phy_res, ptr %91, i32 0, i32 2
  %92 = ptrtoint ptr %num.i142.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %num.i142.i, align 4
  %mul.i143.i = shl i32 %93, 7
  %94 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %base.i, align 4
  %alloc_map.i144.i = getelementptr inbounds %struct.d40_base, ptr %95, i32 0, i32 22, i32 5
  %96 = ptrtoint ptr %alloc_map.i144.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %alloc_map.i144.i, align 4
  br label %for.body.i149.i

for.body.i149.i:                                  ; preds = %for.inc.i156.i.for.body.i149.i_crit_edge, %if.then36.i
  %i.034.i145.i = phi i32 [ 1, %if.then36.i ], [ %inc13.i154.i, %for.inc.i156.i.for.body.i149.i_crit_edge ]
  %add.i146.i = add nuw nsw i32 %i.034.i145.i, %mul.i143.i
  %arrayidx.i147.i = getelementptr ptr, ptr %97, i32 %add.i146.i
  %98 = ptrtoint ptr %arrayidx.i147.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx.i147.i, align 4
  %tobool.not.i148.i = icmp eq ptr %99, null
  br i1 %tobool.not.i148.i, label %cleanup.i153.i, label %for.inc.i156.i

cleanup.i153.i:                                   ; preds = %for.body.i149.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i147.i.le = getelementptr ptr, ptr %97, i32 %add.i146.i
  %100 = ptrtoint ptr %arrayidx.i147.i.le to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %d40d, ptr %arrayidx.i147.i.le, align 4
  %101 = ptrtoint ptr %lcla_alloc.i151.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %lcla_alloc.i151.i, align 4
  %inc.i152.i = add i32 %102, 1
  store i32 %inc.i152.i, ptr %lcla_alloc.i151.i, align 4
  br label %d40_lcla_alloc_one.exit159.i

for.inc.i156.i:                                   ; preds = %for.body.i149.i
  %inc13.i154.i = add nuw nsw i32 %i.034.i145.i, 1
  %exitcond.not.i155.i = icmp eq i32 %inc13.i154.i, 64
  br i1 %exitcond.not.i155.i, label %for.inc.i156.i.d40_lcla_alloc_one.exit159.i_crit_edge, label %for.inc.i156.i.for.body.i149.i_crit_edge

for.inc.i156.i.for.body.i149.i_crit_edge:         ; preds = %for.inc.i156.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i149.i

for.inc.i156.i.d40_lcla_alloc_one.exit159.i_crit_edge: ; preds = %for.inc.i156.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %d40_lcla_alloc_one.exit159.i

d40_lcla_alloc_one.exit159.i:                     ; preds = %for.inc.i156.i.d40_lcla_alloc_one.exit159.i_crit_edge, %cleanup.i153.i
  %ret.2.i157.i = phi i32 [ %i.034.i145.i, %cleanup.i153.i ], [ -22, %for.inc.i156.i.d40_lcla_alloc_one.exit159.i_crit_edge ]
  %103 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %base.i, align 4
  %lock16.i158.i = getelementptr inbounds %struct.d40_base, ptr %104, i32 0, i32 22, i32 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock16.i158.i, i32 noundef %call2.i140.i) #10
  br label %if.end39.i

if.end39.i:                                       ; preds = %d40_lcla_alloc_one.exit159.i, %for.body.i.if.end39.i_crit_edge
  %next_lcla.0.i = phi i32 [ %ret.2.i157.i, %d40_lcla_alloc_one.exit159.i ], [ %spec.select134.i, %for.body.i.if.end39.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %next_lcla.0.i)
  %cmp42.i = icmp eq i32 %next_lcla.0.i, -22
  %or.cond135.i = select i1 %tobool.not.i, i1 true, i1 %cmp42.i
  %flags33.0.i = select i1 %or.cond135.i, i32 2, i32 0
  call void @__sanitizer_cov_trace_cmp4(i32 %curr_lcla.2184.i, i32 %first_lcla.0168.i)
  %cmp48.i = icmp eq i32 %curr_lcla.2184.i, %first_lcla.0168.i
  %or.cond136.i = select i1 %spec.select.i, i1 %cmp48.i, i1 false
  br i1 %or.cond136.i, label %if.then49.i, label %if.end39.i.if.end55.i_crit_edge

if.end39.i.if.end55.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55.i

if.then49.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #12
  %105 = ptrtoint ptr %lcpa50.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %lcpa50.i, align 4
  %107 = ptrtoint ptr %dst51.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dst51.i, align 4
  %arrayidx52.i = getelementptr %struct.d40_log_lli, ptr %108, i32 %lli_current.1183.i
  %109 = ptrtoint ptr %lli_log.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %lli_log.i, align 4
  %arrayidx54.i = getelementptr %struct.d40_log_lli, ptr %110, i32 %lli_current.1183.i
  tail call void @d40_log_lli_lcpa_write(ptr noundef %106, ptr noundef %arrayidx52.i, ptr noundef %arrayidx54.i, i32 noundef %next_lcla.0.i, i32 noundef %flags33.0.i) #10
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.then49.i, %if.end39.i.if.end55.i_crit_edge
  %111 = ptrtoint ptr %dst51.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dst51.i, align 4
  %arrayidx57.i = getelementptr %struct.d40_log_lli, ptr %112, i32 %lli_current.1183.i
  %113 = ptrtoint ptr %lli_log.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %lli_log.i, align 4
  %arrayidx59.i = getelementptr %struct.d40_log_lli, ptr %114, i32 %lli_current.1183.i
  tail call void @d40_log_lli_lcla_write(ptr noundef %add.ptr.i, ptr noundef %arrayidx57.i, ptr noundef %arrayidx59.i, i32 noundef %next_lcla.0.i, i32 noundef %flags33.0.i) #10
  br i1 %tobool6.not.i, label %if.then61.i, label %if.end55.i.if.end63.i_crit_edge

if.end55.i.if.end63.i_crit_edge:                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63.i

if.then61.i:                                      ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #12
  %115 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %base.i, align 4
  %dev.i = getelementptr inbounds %struct.d40_base, ptr %116, i32 0, i32 2
  %117 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev.i, align 4
  %119 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %dma_addr.i, align 4
  %add.i160.i = add i32 %120, %add.i
  tail call void @dma_sync_single_for_device(ptr noundef %118, i32 noundef %add.i160.i, i32 noundef 16, i32 noundef 1) #10
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.then61.i, %if.end55.i.if.end63.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %next_lcla.0.i, i32 %first_lcla.0168.i)
  %cmp66.i = icmp eq i32 %next_lcla.0.i, %first_lcla.0168.i
  %or.cond137.i = select i1 %cmp42.i, i1 true, i1 %cmp66.i
  br i1 %or.cond137.i, label %if.end63.i.d40_log_lli_to_lcxa.exit_crit_edge, label %for.inc.i

if.end63.i.d40_log_lli_to_lcxa.exit_crit_edge:    ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %d40_log_lli_to_lcxa.exit

for.inc.i:                                        ; preds = %if.end63.i
  %exitcond.not.i = icmp eq i32 %add34.i, %46
  br i1 %exitcond.not.i, label %for.inc.i.d40_log_lli_to_lcxa.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.d40_log_lli_to_lcxa.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %d40_log_lli_to_lcxa.exit

d40_log_lli_to_lcxa.exit:                         ; preds = %for.inc.i.d40_log_lli_to_lcxa.exit_crit_edge, %if.end63.i.d40_log_lli_to_lcxa.exit_crit_edge, %if.end24.i.d40_log_lli_to_lcxa.exit_crit_edge
  %lli_current.3.i = phi i32 [ %lli_current.0.i, %if.end24.i.d40_log_lli_to_lcxa.exit_crit_edge ], [ %add34.i, %if.end63.i.d40_log_lli_to_lcxa.exit_crit_edge ], [ %46, %for.inc.i.d40_log_lli_to_lcxa.exit_crit_edge ]
  %121 = ptrtoint ptr %lli_current1.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %lli_current.3.i, ptr %lli_current1.i, align 4
  br label %if.end

if.end:                                           ; preds = %d40_log_lli_to_lcxa.exit, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @d40_queue_start(ptr noundef %d40c) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %queue.i = getelementptr inbounds %struct.d40_chan, ptr %d40c, i32 0, i32 11
  %0 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %queue.i, align 4
  %cmp.not.i = icmp eq ptr %1, %queue.i
  %add.ptr.i = getelementptr i8, ptr %1, i32 -188
  %spec.select.i = select i1 %cmp.not.i, ptr null, ptr %add.ptr.i
  %cmp.not = icmp eq ptr %spec.select.i, null
  br i1 %cmp.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then:                                          ; preds = %entry
  %busy = getelementptr inbounds %struct.d40_chan, ptr %d40c, i32 0, i32 3
  %2 = ptrtoint ptr %busy to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %busy, align 4, !range !386
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then1, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %busy to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %busy, align 4
  %base = getelementptr inbounds %struct.d40_chan, ptr %d40c, i32 0, i32 16
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %dev = getelementptr inbounds %struct.d40_base, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %8, i32 noundef 4) #10
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then.if.end_crit_edge
  %node.i = getelementptr inbounds %struct.d40_desc, ptr %spec.select.i, i32 0, i32 7
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.d40_desc_remove.exit_crit_edge

if.end.d40_desc_remove.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %d40_desc_remove.exit

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.d40_desc, ptr %spec.select.i, i32 0, i32 7, i32 1
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i.i, align 4
  %11 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %node.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %d40_desc_remove.exit

d40_desc_remove.exit:                             ; preds = %if.end.i.i.i, %if.end.d40_desc_remove.exit_crit_edge
  %15 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %node.i, align 4
  %prev.i.i = getelementptr inbounds %struct.d40_desc, ptr %spec.select.i, i32 0, i32 7, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %active.i = getelementptr inbounds %struct.d40_chan, ptr %d40c, i32 0, i32 9
  %prev.i.i21 = getelementptr inbounds %struct.d40_chan, ptr %d40c, i32 0, i32 9, i32 1
  %17 = ptrtoint ptr %prev.i.i21 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i21, align 4
  %call.i.i.i22 = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %18, ptr noundef %active.i) #10
  br i1 %call.i.i.i22, label %if.end.i.i.i23, label %d40_desc_remove.exit.d40_desc_submit.exit_crit_edge

d40_desc_remove.exit.d40_desc_submit.exit_crit_edge: ; preds = %d40_desc_remove.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %d40_desc_submit.exit

if.end.i.i.i23:                                   ; preds = %d40_desc_remove.exit
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %prev.i.i21 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %node.i, ptr %prev.i.i21, align 4
  %20 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %active.i, ptr %node.i, align 4
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %node.i, ptr %18, align 4
  br label %d40_desc_submit.exit

d40_desc_submit.exit:                             ; preds = %if.end.i.i.i23, %d40_desc_remove.exit.d40_desc_submit.exit_crit_edge
  tail call fastcc void @d40_desc_load(ptr noundef %d40c, ptr noundef nonnull %spec.select.i)
  %call.i24 = tail call fastcc i32 @d40_channel_execute_command(ptr noundef %d40c, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24)
  %tobool5.not = icmp eq i32 %call.i24, 0
  br i1 %tobool5.not, label %d40_desc_submit.exit.if.end8_crit_edge, label %d40_desc_submit.exit.cleanup_crit_edge

d40_desc_submit.exit.cleanup_crit_edge:           ; preds = %d40_desc_submit.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

d40_desc_submit.exit.if.end8_crit_edge:           ; preds = %d40_desc_submit.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.end8:                                          ; preds = %d40_desc_submit.exit.if.end8_crit_edge, %entry.if.end8_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %d40_desc_submit.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %spec.select.i, %if.end8 ], [ null, %d40_desc_submit.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @d40_log_lli_lcpa_write(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @d40_log_lli_lcla_write(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @d40_channel_execute_command(ptr nocapture noundef readonly %d40c, i32 noundef %command) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %log_num.i.i = getelementptr inbounds %struct.d40_chan, ptr %d40c, i32 0, i32 1
  %0 = ptrtoint ptr %log_num.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %log_num.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.i.i.not = icmp eq i32 %1, -1
  br i1 %cmp.i.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %phy_chan.i = getelementptr inbounds %struct.d40_chan, ptr %d40c, i32 0, i32 4
  %2 = ptrtoint ptr %phy_chan.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_chan.i, align 4
  %num.i = getelementptr inbounds %struct.d40_phy_res, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num.i, align 4
  %base.i = getelementptr inbounds %struct.d40_chan, ptr %d40c, i32 0, i32 16
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %virtbase.i = getelementptr inbounds %struct.d40_base, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %virtbase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %virtbase.i, align 4
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #10
  %10 = zext i32 %command to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %command, label %if.then.__d40_execute_command_log.exit_crit_edge [
    i32 0, label %if.then.sw.bb.i_crit_edge
    i32 2, label %if.then.sw.bb.i_crit_edge6
    i32 1, label %sw.bb30.i
  ]

if.then.sw.bb.i_crit_edge6:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.then.sw.bb.i_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.then.__d40_execute_command_log.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %__d40_execute_command_log.exit

sw.bb.i:                                          ; preds = %if.then.sw.bb.i_crit_edge, %if.then.sw.bb.i_crit_edge6
  %11 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i = icmp eq i32 %11, 0
  %..i = select i1 %cmp.i, i32 80, i32 84
  %add.ptr3.i = getelementptr i8, ptr %9, i32 %..i
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #10, !srcloc !382
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  %14 = ptrtoint ptr %phy_chan.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phy_chan.i, align 4
  %num14.i = getelementptr inbounds %struct.d40_phy_res, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %num14.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num14.i, align 4
  %div.i = sdiv i32 %17, 2
  %mul.i = shl nsw i32 %div.i, 1
  %shl.i = shl i32 3, %mul.i
  %and.i = and i32 %shl.i, %13
  %shr.i = lshr i32 %and.i, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr.i)
  %cmp19.i = icmp eq i32 %shr.i, 1
  %dma_cfg.i.i = getelementptr inbounds %struct.d40_chan, ptr %d40c, i32 0, i32 13
  %dev_type.i.i = getelementptr inbounds %struct.d40_chan, ptr %d40c, i32 0, i32 13, i32 5
  %18 = ptrtoint ptr %dev_type.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dev_type.i.i, align 4
  %rem.i.i = srem i32 %19, 16
  %20 = ptrtoint ptr %dma_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma_cfg.i.i, align 4
  %22 = and i32 %21, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %switch.i.i = icmp eq i32 %22, 2
  br i1 %cmp19.i, label %if.then21.i, label %if.else22.i

if.then21.i:                                      ; preds = %sw.bb.i
  br i1 %switch.i.i, label %if.end.i.i, label %if.then21.i.if.then8.i.i_crit_edge

if.then21.i.if.then8.i.i_crit_edge:               ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8.i.i

if.end.i.i:                                       ; preds = %if.then21.i
  tail call fastcc void @__d40_config_set_event(ptr noundef %d40c, i32 noundef 2, i32 noundef %rem.i.i, i32 noundef 12) #10
  %23 = ptrtoint ptr %dma_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pr.i.i = load i32, ptr %dma_cfg.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr.i.i)
  %cmp7.not.i.i = icmp eq i32 %.pr.i.i, 2
  br i1 %cmp7.not.i.i, label %if.end.i.i.if.end23.i_crit_edge, label %if.end.i.i.if.then8.i.i_crit_edge

if.end.i.i.if.then8.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8.i.i

if.end.i.i.if.end23.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

if.then8.i.i:                                     ; preds = %if.end.i.i.if.then8.i.i_crit_edge, %if.then21.i.if.then8.i.i_crit_edge
  tail call fastcc void @__d40_config_set_event(ptr noundef %d40c, i32 noundef 2, i32 noundef %rem.i.i, i32 noundef 28) #10
  br label %if.end23.i

if.else22.i:                                      ; preds = %sw.bb.i
  br i1 %switch.i.i, label %if.end.i62.i, label %if.else22.if.then8.i63_crit_edge.i

if.else22.if.then8.i63_crit_edge.i:               ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #12
  %.pre.i = shl nsw i32 %rem.i.i, 1
  %.pre94.i = shl i32 3, %.pre.i
  %.pre95.i = xor i32 %.pre94.i, -1
  %.pre96.i = tail call i32 @llvm.bswap.i32(i32 %.pre95.i) #10
  br label %if.then8.i63.i

if.end.i62.i:                                     ; preds = %if.else22.i
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 4
  %virtbase.i.i84.i = getelementptr inbounds %struct.d40_base, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %virtbase.i.i84.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %virtbase.i.i84.i, align 4
  %add.ptr.i.i85.i = getelementptr i8, ptr %27, i32 1024
  %mul.i.i88.i = shl i32 %17, 5
  %add.ptr1.i.i89.i = getelementptr i8, ptr %add.ptr.i.i85.i, i32 %mul.i.i88.i
  %add.ptr.i90.i = getelementptr i8, ptr %add.ptr1.i.i89.i, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !420
  tail call void @arm_heavy_mb() #10
  %mul.i91.i = shl nsw i32 %rem.i.i, 1
  %shl2.i92.i = shl i32 3, %mul.i91.i
  %neg.i93.i = xor i32 %shl2.i92.i, -1
  %28 = tail call i32 @llvm.bswap.i32(i32 %neg.i93.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i90.i, i32 %28) #10, !srcloc !385
  %29 = ptrtoint ptr %dma_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pr.i60.i = load i32, ptr %dma_cfg.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr.i60.i)
  %cmp7.not.i61.i = icmp eq i32 %.pr.i60.i, 2
  br i1 %cmp7.not.i61.i, label %if.end.i62.i.if.end23.i_crit_edge, label %if.end.i62.i.if.then8.i63.i_crit_edge

if.end.i62.i.if.then8.i63.i_crit_edge:            ; preds = %if.end.i62.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8.i63.i

if.end.i62.i.if.end23.i_crit_edge:                ; preds = %if.end.i62.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

if.then8.i63.i:                                   ; preds = %if.end.i62.i.if.then8.i63.i_crit_edge, %if.else22.if.then8.i63_crit_edge.i
  %.pre-phi.i = phi i32 [ %.pre96.i, %if.else22.if.then8.i63_crit_edge.i ], [ %28, %if.end.i62.i.if.then8.i63.i_crit_edge ]
  %30 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i, align 4
  %virtbase.i.i75.i = getelementptr inbounds %struct.d40_base, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %virtbase.i.i75.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %virtbase.i.i75.i, align 4
  %add.ptr.i.i76.i = getelementptr i8, ptr %33, i32 1024
  %34 = ptrtoint ptr %phy_chan.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %phy_chan.i, align 4
  %num.i.i78.i = getelementptr inbounds %struct.d40_phy_res, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %num.i.i78.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num.i.i78.i, align 4
  %mul.i.i79.i = shl i32 %37, 5
  %add.ptr1.i.i80.i = getelementptr i8, ptr %add.ptr.i.i76.i, i32 %mul.i.i79.i
  %add.ptr.i81.i = getelementptr i8, ptr %add.ptr1.i.i80.i, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !420
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i81.i, i32 %.pre-phi.i) #10, !srcloc !385
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then8.i63.i, %if.end.i62.i.if.end23.i_crit_edge, %if.then8.i.i, %if.end.i.i.if.end23.i_crit_edge
  %38 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i, align 4
  %virtbase.i.i.i = getelementptr inbounds %struct.d40_base, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %virtbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %virtbase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %41, i32 1024
  %42 = ptrtoint ptr %phy_chan.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %phy_chan.i, align 4
  %num.i.i.i = getelementptr inbounds %struct.d40_phy_res, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %num.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num.i.i.i, align 4
  %mul.i.i.i = shl i32 %45, 5
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %mul.i.i.i
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr1.i.i.i, i32 12
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !382
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !421
  %add.ptr5.i.i = getelementptr i8, ptr %add.ptr1.i.i.i, i32 28
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i) #10, !srcloc !382
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  %48 = or i32 %46, %command
  %49 = or i32 %48, %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %if.then27.i, label %if.end23.i.__d40_execute_command_log.exit_crit_edge

if.end23.i.__d40_execute_command_log.exit_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__d40_execute_command_log.exit

if.then27.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  %call28.i = tail call fastcc i32 @__d40_execute_command_phy(ptr noundef %d40c, i32 noundef 0) #10
  br label %__d40_execute_command_log.exit

sw.bb30.i:                                        ; preds = %if.then
  %dma_cfg.i65.i = getelementptr inbounds %struct.d40_chan, ptr %d40c, i32 0, i32 13
  %dev_type.i66.i = getelementptr inbounds %struct.d40_chan, ptr %d40c, i32 0, i32 13, i32 5
  %51 = ptrtoint ptr %dev_type.i66.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dev_type.i66.i, align 4
  %rem.i67.i = srem i32 %52, 16
  %53 = ptrtoint ptr %dma_cfg.i65.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dma_cfg.i65.i, align 4
  %55 = and i32 %54, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %55)
  %switch.i68.i = icmp eq i32 %55, 2
  br i1 %switch.i68.i, label %if.end.i71.i, label %sw.bb30.i.if.then8.i72.i_crit_edge

sw.bb30.i.if.then8.i72.i_crit_edge:               ; preds = %sw.bb30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8.i72.i

if.end.i71.i:                                     ; preds = %sw.bb30.i
  tail call fastcc void @__d40_config_set_event(ptr noundef %d40c, i32 noundef 1, i32 noundef %rem.i67.i, i32 noundef 12) #10
  %56 = ptrtoint ptr %dma_cfg.i65.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pr.i69.i = load i32, ptr %dma_cfg.i65.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr.i69.i)
  %cmp7.not.i70.i = icmp eq i32 %.pr.i69.i, 2
  br i1 %cmp7.not.i70.i, label %if.end.i71.i.d40_config_set_event.exit73.i_crit_edge, label %if.end.i71.i.if.then8.i72.i_crit_edge

if.end.i71.i.if.then8.i72.i_crit_edge:            ; preds = %if.end.i71.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8.i72.i

if.end.i71.i.d40_config_set_event.exit73.i_crit_edge: ; preds = %if.end.i71.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %d40_config_set_event.exit73.i

if.then8.i72.i:                                   ; preds = %if.end.i71.i.if.then8.i72.i_crit_edge, %sw.bb30.i.if.then8.i72.i_crit_edge
  tail call fastcc void @__d40_config_set_event(ptr noundef %d40c, i32 noundef 1, i32 noundef %rem.i67.i, i32 noundef 28) #10
  br label %d40_config_set_event.exit73.i

d40_config_set_event.exit73.i:                    ; preds = %if.then8.i72.i, %if.end.i71.i.d40_config_set_event.exit73.i_crit_edge
  %57 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base.i, align 4
  %execmd_lock.i.i = getelementptr inbounds %struct.d40_base, ptr %58, i32 0, i32 1
  %call6.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %execmd_lock.i.i) #10
  %59 = ptrtoint ptr %phy_chan.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %phy_chan.i, align 4
  %num.i.i = getelementptr inbounds %struct.d40_phy_res, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %num.i.i, align 4
  %63 = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp9.i.i = icmp eq i32 %63, 0
  %64 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base.i, align 4
  %virtbase.i.i = getelementptr inbounds %struct.d40_base, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %virtbase.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %virtbase.i.i, align 4
  %..i.i = select i1 %cmp9.i.i, i32 80, i32 84
  %add.ptr15.i.i = getelementptr i8, ptr %67, i32 %..i.i
  %div38.i.i = sdiv i32 %62, 2
  %mul39.i.i = shl nsw i32 %div38.i.i, 1
  %shl40.i.i = shl i32 3, %mul39.i.i
  %neg.i.i = xor i32 %shl40.i.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !423
  tail call void @arm_heavy_mb() #10
  %68 = ptrtoint ptr %phy_chan.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %phy_chan.i, align 4
  %num46.i.i = getelementptr inbounds %struct.d40_phy_res, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %num46.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %num46.i.i, align 4
  %div47.i.i = sdiv i32 %71, 2
  %mul48.i.i = shl nsw i32 %div47.i.i, 1
  %shl49.i.i = shl nuw i32 1, %mul48.i.i
  %or.i.i = or i32 %shl49.i.i, %neg.i.i
  %72 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i.i, i32 %72) #10, !srcloc !385
  %73 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base.i, align 4
  %execmd_lock99.i.i = getelementptr inbounds %struct.d40_base, ptr %74, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %execmd_lock99.i.i, i32 noundef %call6.i.i) #10
  br label %__d40_execute_command_log.exit

__d40_execute_command_log.exit:                   ; preds = %d40_config_set_event.exit73.i, %if.then27.i, %if.end23.i.__d40_execute_command_log.exit_crit_edge, %if.then.__d40_execute_command_log.exit_crit_edge
  %ret.0.i = phi i32 [ 0, %if.then.__d40_execute_command_log.exit_crit_edge ], [ 0, %d40_config_set_event.exit73.i ], [ 0, %if.end23.i.__d40_execute_command_log.exit_crit_edge ], [ %call28.i, %if.then27.i ]
  %75 = ptrtoint ptr %phy_chan.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %phy_chan.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %76, i32 noundef %call7.i) #10
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call fastcc i32 @__d40_execute_command_phy(ptr noundef %d40c, i32 noundef %command)
  br label %return

return:                                           ; preds = %if.else, %__d40_execute_command_log.exit
  %retval.0 = phi i32 [ %ret.0.i, %__d40_execute_command_log.exit ], [ %call2, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__d40_execute_command_phy(ptr nocapture noundef readonly %d40c, i32 noundef %command) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %command)
  %cmp = icmp eq i32 %command, 0
  br i1 %cmp, label %if.then, label %entry.do.body3_crit_edge

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @__d40_execute_command_phy(ptr noundef %d40c, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.do.body3_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.do.body3_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3

do.body3:                                         ; preds = %if.then.do.body3_crit_edge, %entry.do.body3_crit_edge
  %base = getelementptr inbounds %struct.d40_chan, ptr %d40c, i32 0, i32 16
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %execmd_lock = getelementptr inbounds %struct.d40_base, ptr %1, i32 0, i32 1
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %execmd_lock) #10
  %phy_chan = getelementptr inbounds %struct.d40_chan, ptr %d40c, i32 0, i32 4
  %2 = ptrtoint ptr %phy_chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_chan, align 4
  %num = getelementptr inbounds %struct.d40_phy_res, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num, align 4
  %6 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp9 = icmp eq i32 %6, 0
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %virtbase = getelementptr inbounds %struct.d40_base, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %virtbase, align 4
  %. = select i1 %cmp9, i32 80, i32 84
  %add.ptr15 = getelementptr i8, ptr %10, i32 %.
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %command)
  %cmp17 = icmp eq i32 %command, 2
  br i1 %cmp17, label %if.then19, label %do.body3.if.end35_crit_edge

do.body3.if.end35_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then19:                                        ; preds = %do.body3
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #10, !srcloc !382
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !424
  %13 = ptrtoint ptr %phy_chan to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %phy_chan, align 4
  %num24 = getelementptr inbounds %struct.d40_phy_res, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %num24 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num24, align 4
  %div = sdiv i32 %16, 2
  %mul = shl nsw i32 %div, 1
  %shl = shl i32 3, %mul
  %and = and i32 %shl, %12
  %shr = lshr i32 %and, %mul
  %17 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.197)
  switch i32 %shr, label %if.then19.if.end35_crit_edge [
    i32 3, label %if.then19.unlock_crit_edge
    i32 0, label %if.then19.unlock_crit_edge142
  ]

if.then19.unlock_crit_edge142:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.then19.unlock_crit_edge:                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.then19.if.end35_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.end35:                                         ; preds = %if.then19.if.end35_crit_edge, %do.body3.if.end35_crit_edge
  %18 = ptrtoint ptr %phy_chan to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %phy_chan, align 4
  %num37 = getelementptr inbounds %struct.d40_phy_res, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %num37 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num37, align 4
  %div38 = sdiv i32 %21, 2
  %mul39 = shl nsw i32 %div38, 1
  %shl40 = shl i32 3, %mul39
  %neg = xor i32 %shl40, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !423
  tail call void @arm_heavy_mb() #10
  %22 = ptrtoint ptr %phy_chan to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %phy_chan, align 4
  %num46 = getelementptr inbounds %struct.d40_phy_res, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %num46 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num46, align 4
  %div47 = sdiv i32 %25, 2
  %mul48 = shl nsw i32 %div47, 1
  %shl49 = shl i32 %command, %mul48
  %or = or i32 %shl49, %neg
  %26 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %26) #10, !srcloc !385
  br i1 %cmp17, label %if.end35.for.body_crit_edge, label %if.end35.unlock_crit_edge

if.end35.unlock_crit_edge:                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.end35.for.body_crit_edge:                      ; preds = %if.end35
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end35.for.body_crit_edge
  %i.0136 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end35.for.body_crit_edge ]
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #10, !srcloc !382
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !425
  %29 = ptrtoint ptr %phy_chan to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %phy_chan, align 4
  %num61 = getelementptr inbounds %struct.d40_phy_res, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %num61 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num61, align 4
  %div62 = sdiv i32 %32, 2
  %mul63 = shl nsw i32 %div62, 1
  %shl64 = shl i32 3, %mul63
  %and65 = and i32 %shl64, %28
  %shr70 = lshr i32 %and65, %mul63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !426
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !427
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 644244) #10
  %34 = zext i32 %shr70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.198)
  switch i32 %shr70, label %for.inc [
    i32 0, label %for.body.unlock_crit_edge
    i32 3, label %for.body.unlock_crit_edge143
  ]

for.body.unlock_crit_edge143:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

for.body.unlock_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0136, 1
  %exitcond.not = icmp eq i32 %inc, 500
  br i1 %exitcond.not, label %do.end92, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.end92:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.d40_chan, ptr %d40c, i32 0, i32 5, i32 5
  %35 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %phy_chan to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %phy_chan, align 4
  %num95 = getelementptr inbounds %struct.d40_phy_res, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %num95 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num95, align 4
  %log_num = getelementptr inbounds %struct.d40_chan, ptr %d40c, i32 0, i32 1
  %41 = ptrtoint ptr %log_num to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %log_num, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.118, i32 noundef %40, i32 noundef %42, i32 noundef %shr70) #13
  tail call void @dump_stack() #13
  br label %unlock

unlock:                                           ; preds = %do.end92, %for.body.unlock_crit_edge, %for.body.unlock_crit_edge143, %if.end35.unlock_crit_edge, %if.then19.unlock_crit_edge, %if.then19.unlock_crit_edge142
  %ret.1 = phi i32 [ 0, %if.then19.unlock_crit_edge ], [ -16, %do.end92 ], [ 0, %if.end35.unlock_crit_edge ], [ 0, %if.then19.unlock_crit_edge142 ], [ 0, %for.body.unlock_crit_edge ], [ 0, %for.body.unlock_crit_edge143 ]
  %43 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base, align 4
  %execmd_lock99 = getelementptr inbounds %struct.d40_base, ptr %44, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %execmd_lock99, i32 noundef %call6) #10
  br label %cleanup

cleanup:                                          ; preds = %unlock, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %unlock ], [ %call, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__d40_config_set_event(ptr nocapture noundef readonly %d40c, i32 noundef %event_type, i32 noundef %event, i32 noundef %reg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.d40_chan, ptr %d40c, i32 0, i32 16
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %virtbase.i = getelementptr inbounds %struct.d40_base, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %virtbase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %virtbase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 1024
  %phy_chan.i = getelementptr inbounds %struct.d40_chan, ptr %d40c, i32 0, i32 4
  %4 = ptrtoint ptr %phy_chan.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy_chan.i, align 4
  %num.i = getelementptr inbounds %struct.d40_phy_res, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num.i, align 4
  %mul.i = shl i32 %7, 5
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %add.ptr = getelementptr i8, ptr %add.ptr1.i, i32 %reg
  %8 = zext i32 %event_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.199)
  switch i32 %event_type, label %entry.sw.epilog_crit_edge [
    i32 0, label %do.body
    i32 2, label %sw.bb3
    i32 1, label %while.cond.preheader
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

while.cond.preheader:                             ; preds = %entry
  %mul53 = shl i32 %event, 1
  %shl54 = shl nuw i32 1, %mul53
  %shl56 = shl i32 3, %mul53
  %neg57 = xor i32 %shl56, -1
  %or58 = or i32 %shl54, %neg57
  %9 = tail call i32 @llvm.bswap.i32(i32 %or58)
  br label %while.cond

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !420
  tail call void @arm_heavy_mb() #10
  %mul = shl i32 %event, 1
  %shl2 = shl i32 3, %mul
  %neg = xor i32 %shl2, -1
  %10 = tail call i32 @llvm.bswap.i32(i32 %neg)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %10) #10, !srcloc !385
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !382
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !428
  %mul6 = shl i32 %event, 1
  %shl7 = shl i32 3, %mul6
  %and = and i32 %12, %shl7
  %shr = lshr i32 %and, %mul6
  %13 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.200)
  switch i32 %shr, label %do.body10 [
    i32 0, label %sw.bb3.sw.epilog_crit_edge
    i32 2, label %sw.bb3.sw.epilog_crit_edge199
  ]

sw.bb3.sw.epilog_crit_edge199:                    ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.body10:                                        ; preds = %sw.bb3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !429
  tail call void @arm_heavy_mb() #10
  %shl14 = shl i32 2, %mul6
  %neg17 = xor i32 %shl7, -1
  %or18 = or i32 %shl14, %neg17
  %14 = tail call i32 @llvm.bswap.i32(i32 %or18)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %14) #10, !srcloc !385
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body10
  %tries.0168 = phi i32 [ 0, %do.body10 ], [ %inc, %for.inc.for.body_crit_edge ]
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !382
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !430
  %and27 = and i32 %16, %shl7
  %shr29 = lshr i32 %and27, %mul6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !431
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !432
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 644244) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr29)
  %cmp39 = icmp eq i32 %shr29, 0
  br i1 %cmp39, label %for.body.sw.epilog_crit_edge, label %for.inc

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %tries.0168, 1
  %exitcond.not = icmp eq i32 %inc, 500
  br i1 %exitcond.not, label %do.end46, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.end46:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.d40_chan, ptr %d40c, i32 0, i32 5, i32 5
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %phy_chan.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %phy_chan.i, align 4
  %num = getelementptr inbounds %struct.d40_phy_res, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num, align 4
  %log_num = getelementptr inbounds %struct.d40_chan, ptr %d40c, i32 0, i32 1
  %24 = ptrtoint ptr %log_num to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %log_num, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.114, i32 noundef %23, i32 noundef %25, i32 noundef %shr29) #13
  br label %sw.epilog

while.cond:                                       ; preds = %do.body50.while.cond_crit_edge, %while.cond.preheader
  %tries.1 = phi i32 [ %dec, %do.body50.while.cond_crit_edge ], [ 100, %while.cond.preheader ]
  %dec = add nsw i32 %tries.1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.cond.do.body72_crit_edge, label %do.body50

while.cond.do.body72_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body72

do.body50:                                        ; preds = %while.cond
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !433
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %9) #10, !srcloc !385
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !382
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !434
  %and66 = and i32 %27, %shl56
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %do.body50.while.cond_crit_edge, label %while.end

do.body50.while.cond_crit_edge:                   ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

while.end:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %dec)
  %cmp70.not = icmp eq i32 %dec, 99
  br i1 %cmp70.not, label %while.end.sw.epilog_crit_edge, label %while.end.do.body72_crit_edge

while.end.do.body72_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body72

while.end.sw.epilog_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.body72:                                        ; preds = %while.end.do.body72_crit_edge, %while.cond.do.body72_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__d40_config_set_event.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__d40_config_set_event, %if.end85)) #10
          to label %if.then79 [label %if.end85], !srcloc !435

if.then79:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i155 = getelementptr inbounds %struct.d40_chan, ptr %d40c, i32 0, i32 5, i32 5
  %28 = ptrtoint ptr %dev.i155 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i155, align 4
  %device.i156 = getelementptr inbounds %struct.dma_chan_dev, ptr %29, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %reg)
  %cmp81 = icmp eq i32 %reg, 12
  %cond = select i1 %cmp81, i32 83, i32 68
  %sub = sub i32 101, %tries.1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__d40_config_set_event.__UNIQUE_ID_ddebug299, ptr noundef %device.i156, ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.114, i32 noundef %cond, i32 noundef %sub) #10
  br label %if.end85

if.end85:                                         ; preds = %if.then79, %do.body72
  br i1 %tobool.not, label %do.end104, label %if.end85.sw.epilog_crit_edge, !prof !391

if.end85.sw.epilog_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end104:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1228, i32 noundef 9, ptr noundef null) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end104, %if.end85.sw.epilog_crit_edge, %while.end.sw.epilog_crit_edge, %do.end46, %for.body.sw.epilog_crit_edge, %sw.bb3.sw.epilog_crit_edge, %sw.bb3.sw.epilog_crit_edge199, %do.body, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @d40_chan_init(ptr noundef %base, ptr noundef %dma, ptr noundef %chans, i32 noundef %offset, i32 noundef %num_chans) unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %channels = getelementptr inbounds %struct.dma_device, ptr %dma, i32 0, i32 3
  %0 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %channels, ptr %channels, align 4
  %prev.i = getelementptr inbounds %struct.dma_device, ptr %dma, i32 0, i32 3, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %channels, ptr %prev.i, align 4
  %add = add i32 %num_chans, %offset
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %offset)
  %cmp27 = icmp sgt i32 %add, %offset
  br i1 %cmp27, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %i.028 = phi i32 [ %inc, %list_add_tail.exit.for.body_crit_edge ], [ %offset, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.d40_chan, ptr %chans, i32 %i.028
  %base1 = getelementptr %struct.d40_chan, ptr %chans, i32 %i.028, i32 16
  %2 = ptrtoint ptr %base1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %base, ptr %base1, align 4
  %chan = getelementptr %struct.d40_chan, ptr %chans, i32 %i.028, i32 5
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dma, ptr %chan, align 4
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx, ptr noundef nonnull @.str.127, ptr noundef nonnull @d40_chan_init.__key, i16 noundef signext 3) #10
  %log_num = getelementptr %struct.d40_chan, ptr %chans, i32 %i.028, i32 1
  %4 = ptrtoint ptr %log_num to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %log_num, align 4
  %done = getelementptr %struct.d40_chan, ptr %chans, i32 %i.028, i32 10
  %5 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %done, ptr %done, align 4
  %prev.i20 = getelementptr %struct.d40_chan, ptr %chans, i32 %i.028, i32 10, i32 1
  %6 = ptrtoint ptr %prev.i20 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %done, ptr %prev.i20, align 4
  %active = getelementptr %struct.d40_chan, ptr %chans, i32 %i.028, i32 9
  %7 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %active, ptr %active, align 4
  %prev.i21 = getelementptr %struct.d40_chan, ptr %chans, i32 %i.028, i32 9, i32 1
  %8 = ptrtoint ptr %prev.i21 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %active, ptr %prev.i21, align 4
  %queue = getelementptr %struct.d40_chan, ptr %chans, i32 %i.028, i32 11
  %9 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %queue, ptr %queue, align 4
  %prev.i22 = getelementptr %struct.d40_chan, ptr %chans, i32 %i.028, i32 11, i32 1
  %10 = ptrtoint ptr %prev.i22 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %queue, ptr %prev.i22, align 4
  %pending_queue = getelementptr %struct.d40_chan, ptr %chans, i32 %i.028, i32 8
  %11 = ptrtoint ptr %pending_queue to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %pending_queue, ptr %pending_queue, align 4
  %prev.i23 = getelementptr %struct.d40_chan, ptr %chans, i32 %i.028, i32 8, i32 1
  %12 = ptrtoint ptr %prev.i23 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %pending_queue, ptr %prev.i23, align 4
  %client = getelementptr %struct.d40_chan, ptr %chans, i32 %i.028, i32 7
  %13 = ptrtoint ptr %client to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %client, ptr %client, align 4
  %prev.i24 = getelementptr %struct.d40_chan, ptr %chans, i32 %i.028, i32 7, i32 1
  %14 = ptrtoint ptr %prev.i24 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %client, ptr %prev.i24, align 4
  %prepare_queue = getelementptr %struct.d40_chan, ptr %chans, i32 %i.028, i32 12
  %15 = ptrtoint ptr %prepare_queue to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %prepare_queue, ptr %prepare_queue, align 4
  %prev.i25 = getelementptr %struct.d40_chan, ptr %chans, i32 %i.028, i32 12, i32 1
  %16 = ptrtoint ptr %prev.i25 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %prepare_queue, ptr %prev.i25, align 4
  %tasklet = getelementptr %struct.d40_chan, ptr %chans, i32 %i.028, i32 6
  tail call void @tasklet_setup(ptr noundef %tasklet, ptr noundef nonnull @dma_tasklet) #10
  %device_node = getelementptr %struct.d40_chan, ptr %chans, i32 %i.028, i32 5, i32 8
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %device_node, ptr noundef %18, ptr noundef %channels) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_add_tail.exit_crit_edge

for.body.list_add_tail.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %device_node, ptr %prev.i, align 4
  %20 = ptrtoint ptr %device_node to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %channels, ptr %device_node, align 4
  %prev3.i.i = getelementptr %struct.d40_chan, ptr %chans, i32 %i.028, i32 5, i32 8, i32 1
  %21 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev3.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %device_node, ptr %18, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %for.body.list_add_tail.exit_crit_edge
  %inc = add i32 %i.028, 1
  %exitcond.not = icmp eq i32 %inc, %add
  br i1 %exitcond.not, label %list_add_tail.exit.for.end_crit_edge, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

list_add_tail.exit.for.end_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %list_add_tail.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @d40_ops_init(ptr nocapture noundef readonly %base, ptr noundef %dev) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cap_mask = getelementptr inbounds %struct.dma_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %cap_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %cap_mask, align 4
  %2 = and i32 %1, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %device_prep_slave_sg = getelementptr inbounds %struct.dma_device, ptr %dev, i32 0, i32 39
  %3 = ptrtoint ptr %device_prep_slave_sg to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @d40_prep_slave_sg, ptr %device_prep_slave_sg, align 4
  %directions = getelementptr inbounds %struct.dma_device, ptr %dev, i32 0, i32 21
  %4 = ptrtoint ptr %directions to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 6, ptr %directions, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %cap_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %cap_mask, align 4
  %and1.i.i32 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i32)
  %tobool3.not = icmp eq i32 %and1.i.i32, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %device_prep_dma_memcpy = getelementptr inbounds %struct.dma_device, ptr %dev, i32 0, i32 30
  %7 = ptrtoint ptr %device_prep_dma_memcpy to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @d40_prep_memcpy, ptr %device_prep_dma_memcpy, align 4
  %directions5 = getelementptr inbounds %struct.dma_device, ptr %dev, i32 0, i32 21
  %8 = ptrtoint ptr %directions5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %directions5, align 4
  %copy_align = getelementptr inbounds %struct.dma_device, ptr %dev, i32 0, i32 10
  %9 = ptrtoint ptr %copy_align to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %copy_align, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %10 = ptrtoint ptr %cap_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %cap_mask, align 4
  %12 = and i32 %11, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool9.not = icmp eq i32 %12, 0
  br i1 %tobool9.not, label %if.end6.if.end11_crit_edge, label %if.then10

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %device_prep_dma_cyclic = getelementptr inbounds %struct.dma_device, ptr %dev, i32 0, i32 40
  %13 = ptrtoint ptr %device_prep_dma_cyclic to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @dma40_prep_dma_cyclic, ptr %device_prep_dma_cyclic, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end6.if.end11_crit_edge
  %device_alloc_chan_resources = getelementptr inbounds %struct.dma_device, ptr %dev, i32 0, i32 27
  %14 = ptrtoint ptr %device_alloc_chan_resources to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @d40_alloc_chan_resources, ptr %device_alloc_chan_resources, align 4
  %device_free_chan_resources = getelementptr inbounds %struct.dma_device, ptr %dev, i32 0, i32 29
  %15 = ptrtoint ptr %device_free_chan_resources to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @d40_free_chan_resources, ptr %device_free_chan_resources, align 4
  %device_issue_pending = getelementptr inbounds %struct.dma_device, ptr %dev, i32 0, i32 50
  %16 = ptrtoint ptr %device_issue_pending to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @d40_issue_pending, ptr %device_issue_pending, align 4
  %device_tx_status = getelementptr inbounds %struct.dma_device, ptr %dev, i32 0, i32 49
  %17 = ptrtoint ptr %device_tx_status to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @d40_tx_status, ptr %device_tx_status, align 4
  %device_config = getelementptr inbounds %struct.dma_device, ptr %dev, i32 0, i32 44
  %18 = ptrtoint ptr %device_config to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @d40_set_runtime_config, ptr %device_config, align 4
  %device_pause = getelementptr inbounds %struct.dma_device, ptr %dev, i32 0, i32 45
  %19 = ptrtoint ptr %device_pause to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @d40_pause, ptr %device_pause, align 4
  %device_resume = getelementptr inbounds %struct.dma_device, ptr %dev, i32 0, i32 46
  %20 = ptrtoint ptr %device_resume to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @d40_resume, ptr %device_resume, align 4
  %device_terminate_all = getelementptr inbounds %struct.dma_device, ptr %dev, i32 0, i32 47
  %21 = ptrtoint ptr %device_terminate_all to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @d40_terminate_all, ptr %device_terminate_all, align 4
  %residue_granularity = getelementptr inbounds %struct.dma_device, ptr %dev, i32 0, i32 26
  %22 = ptrtoint ptr %residue_granularity to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %residue_granularity, align 4
  %dev12 = getelementptr inbounds %struct.d40_base, ptr %base, i32 0, i32 2
  %23 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev12, align 4
  %dev13 = getelementptr inbounds %struct.dma_device, ptr %dev, i32 0, i32 15
  %25 = ptrtoint ptr %dev13 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %dev13, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmaenginem_async_device_register(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dma_tasklet(ptr noundef %t) #0 align 64 {
entry:
  %dummy_result.i = alloca %struct.dmaengine_result, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -124
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #10
  %done.i = getelementptr i8, ptr %t, i32 48
  %0 = ptrtoint ptr %done.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %done.i, align 4
  %cmp.not.i = icmp eq ptr %1, %done.i
  %add.ptr.i = getelementptr i8, ptr %1, i32 -188
  %cmp7109 = icmp eq ptr %add.ptr.i, null
  %cmp7 = or i1 %cmp.not.i, %cmp7109
  br i1 %cmp7, label %if.then, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then:                                          ; preds = %entry
  %active.i = getelementptr i8, ptr %t, i32 40
  %2 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %active.i, align 4
  %cmp.not.i93 = icmp eq ptr %3, %active.i
  %add.ptr.i94 = getelementptr i8, ptr %3, i32 -188
  %cmp10110 = icmp eq ptr %add.ptr.i94, null
  %cmp10 = or i1 %cmp.not.i93, %cmp10110
  br i1 %cmp10, label %if.then.check_pending_tx_crit_edge, label %lor.lhs.false

if.then.check_pending_tx_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %check_pending_tx

lor.lhs.false:                                    ; preds = %if.then
  %cyclic = getelementptr i8, ptr %3, i32 9
  %4 = ptrtoint ptr %cyclic to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cyclic, align 1, !range !386
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %lor.lhs.false.check_pending_tx_crit_edge, label %lor.lhs.false.if.end13_crit_edge

lor.lhs.false.if.end13_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

lor.lhs.false.check_pending_tx_crit_edge:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %check_pending_tx

if.end13:                                         ; preds = %lor.lhs.false.if.end13_crit_edge, %entry.if.end13_crit_edge
  %d40d.0 = phi ptr [ %add.ptr.i94, %lor.lhs.false.if.end13_crit_edge ], [ %add.ptr.i, %entry.if.end13_crit_edge ]
  %cyclic14 = getelementptr inbounds %struct.d40_desc, ptr %d40d.0, i32 0, i32 9
  %6 = ptrtoint ptr %cyclic14 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cyclic14, align 1, !range !386
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool15.not = icmp eq i8 %7, 0
  br i1 %tobool15.not, label %if.then16, label %if.end13.if.end17_crit_edge

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then16:                                        ; preds = %if.end13
  %txd = getelementptr inbounds %struct.d40_desc, ptr %d40d.0, i32 0, i32 6
  %8 = ptrtoint ptr %txd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %txd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i = icmp slt i32 %9, 1
  br i1 %cmp.i, label %do.body2.i, label %dma_cookie_complete.exit, !prof !391

do.body2.i:                                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #10, !srcloc !436
  unreachable

dma_cookie_complete.exit:                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  %chan.i = getelementptr inbounds %struct.d40_desc, ptr %d40d.0, i32 0, i32 6, i32 3
  %10 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chan.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %9, ptr %completed_cookie.i, align 4
  %13 = ptrtoint ptr %txd to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %txd, align 4
  br label %if.end17

if.end17:                                         ; preds = %dma_cookie_complete.exit, %if.end13.if.end17_crit_edge
  %pending_tx = getelementptr i8, ptr %t, i32 -76
  %14 = ptrtoint ptr %pending_tx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pending_tx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp18 = icmp eq i32 %15, 0
  br i1 %cmp18, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call3) #10
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  %flags24 = getelementptr inbounds %struct.d40_desc, ptr %d40d.0, i32 0, i32 6, i32 1
  %16 = ptrtoint ptr %flags24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags24, align 4
  %and = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  %callback.i = getelementptr inbounds %struct.d40_desc, ptr %d40d.0, i32 0, i32 6, i32 6
  %18 = ptrtoint ptr %callback.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %callback.i, align 4
  %callback_result.i = getelementptr inbounds %struct.d40_desc, ptr %d40d.0, i32 0, i32 6, i32 7
  %20 = ptrtoint ptr %callback_result.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %callback_result.i, align 4
  %callback_param.i = getelementptr inbounds %struct.d40_desc, ptr %d40d.0, i32 0, i32 6, i32 8
  %22 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %callback_param.i, align 4
  %24 = ptrtoint ptr %cyclic14 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %cyclic14, align 1, !range !386
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool29.not = icmp eq i8 %25, 0
  br i1 %tobool29.not, label %if.then30, label %if.end22.if.end40_crit_edge

if.end22.if.end40_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then30:                                        ; preds = %if.end22
  %26 = ptrtoint ptr %flags24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags24, align 4
  %and.i = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i96.not = icmp eq i32 %and.i, 0
  br i1 %cmp.i96.not, label %if.else, label %if.then33

if.then33:                                        ; preds = %if.then30
  %node.i = getelementptr inbounds %struct.d40_desc, ptr %d40d.0, i32 0, i32 7
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then33.d40_desc_remove.exit_crit_edge

if.then33.d40_desc_remove.exit_crit_edge:         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %d40_desc_remove.exit

if.end.i.i.i:                                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.d40_desc, ptr %d40d.0, i32 0, i32 7, i32 1
  %28 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i.i, align 4
  %30 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %node.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev1.i.i.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %31, ptr %29, align 4
  br label %d40_desc_remove.exit

d40_desc_remove.exit:                             ; preds = %if.end.i.i.i, %if.then33.d40_desc_remove.exit_crit_edge
  %34 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 256 to ptr), ptr %node.i, align 4
  %prev.i.i = getelementptr inbounds %struct.d40_desc, ptr %d40d.0, i32 0, i32 7, i32 1
  %35 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call fastcc void @d40_desc_free(ptr noundef %add.ptr, ptr noundef nonnull %d40d.0)
  br label %if.end40

if.else:                                          ; preds = %if.then30
  %is_in_client_list = getelementptr inbounds %struct.d40_desc, ptr %d40d.0, i32 0, i32 8
  %36 = ptrtoint ptr %is_in_client_list to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %is_in_client_list, align 4, !range !386
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool34.not = icmp eq i8 %37, 0
  br i1 %tobool34.not, label %if.then35, label %if.else.if.end40_crit_edge

if.else.if.end40_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then35:                                        ; preds = %if.else
  %node.i97 = getelementptr inbounds %struct.d40_desc, ptr %d40d.0, i32 0, i32 7
  %call.i.i.i98 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.i97) #10
  br i1 %call.i.i.i98, label %if.end.i.i.i101, label %if.then35.d40_desc_remove.exit103_crit_edge

if.then35.d40_desc_remove.exit103_crit_edge:      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  br label %d40_desc_remove.exit103

if.end.i.i.i101:                                  ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i99 = getelementptr inbounds %struct.d40_desc, ptr %d40d.0, i32 0, i32 7, i32 1
  %38 = ptrtoint ptr %prev.i.i.i99 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i.i99, align 4
  %40 = ptrtoint ptr %node.i97 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %node.i97, align 4
  %prev1.i.i.i.i100 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev1.i.i.i.i100 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev1.i.i.i.i100, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %41, ptr %39, align 4
  br label %d40_desc_remove.exit103

d40_desc_remove.exit103:                          ; preds = %if.end.i.i.i101, %if.then35.d40_desc_remove.exit103_crit_edge
  %44 = ptrtoint ptr %node.i97 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 256 to ptr), ptr %node.i97, align 4
  %prev.i.i102 = getelementptr inbounds %struct.d40_desc, ptr %d40d.0, i32 0, i32 7, i32 1
  %45 = ptrtoint ptr %prev.i.i102 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i102, align 4
  %log_num.i.i = getelementptr i8, ptr %t, i32 -80
  %46 = ptrtoint ptr %log_num.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %log_num.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %47)
  %cmp.i.i = icmp eq i32 %47, -1
  br i1 %cmp.i.i, label %d40_desc_remove.exit103.d40_lcla_free_all.exit_crit_edge, label %do.body1.i

d40_desc_remove.exit103.d40_lcla_free_all.exit_crit_edge: ; preds = %d40_desc_remove.exit103
  call void @__sanitizer_cov_trace_pc() #12
  br label %d40_lcla_free_all.exit

do.body1.i:                                       ; preds = %d40_desc_remove.exit103
  %base.i = getelementptr i8, ptr %t, i32 184
  %48 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i, align 4
  %lock.i = getelementptr inbounds %struct.d40_base, ptr %49, i32 0, i32 22, i32 4
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %phy_chan.i = getelementptr i8, ptr %t, i32 -68
  %lcla_alloc.i = getelementptr inbounds %struct.d40_desc, ptr %d40d.0, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.backedge.i, %do.body1.i
  %i.03.i = phi i32 [ 1, %do.body1.i ], [ %i.03.be.i, %for.body.backedge.i ]
  %50 = ptrtoint ptr %phy_chan.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %phy_chan.i, align 4
  %num.i = getelementptr inbounds %struct.d40_phy_res, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num.i, align 4
  %mul.i = shl i32 %53, 7
  %add.i = add nuw i32 %mul.i, %i.03.i
  %54 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base.i, align 4
  %alloc_map.i = getelementptr inbounds %struct.d40_base, ptr %55, i32 0, i32 22, i32 5
  %56 = ptrtoint ptr %alloc_map.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %alloc_map.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %57, i32 %add.i
  %58 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.i, align 4
  %cmp10.i = icmp eq ptr %59, %d40d.0
  br i1 %cmp10.i, label %if.then12.i, label %for.inc.i

if.then12.i:                                      ; preds = %for.body.i
  %60 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %arrayidx.i, align 4
  %61 = ptrtoint ptr %lcla_alloc.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %lcla_alloc.i, align 4
  %dec.i = add i32 %62, -1
  store i32 %dec.i, ptr %lcla_alloc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp18.i = icmp ne i32 %dec.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %i.03.i)
  %cmp6.i = icmp ult i32 %i.03.i, 63
  %or.cond.i = select i1 %cmp18.i, i1 %cmp6.i, i1 false
  br i1 %or.cond.i, label %if.then12.i.for.body.backedge.i_crit_edge, label %if.then12.i.for.end.i_crit_edge

if.then12.i.for.end.i_crit_edge:                  ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

if.then12.i.for.body.backedge.i_crit_edge:        ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.backedge.i

for.inc.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %i.03.i)
  %cmp6.old.i = icmp ult i32 %i.03.i, 63
  br i1 %cmp6.old.i, label %for.inc.i.for.body.backedge.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.inc.i.for.body.backedge.i_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.backedge.i

for.body.backedge.i:                              ; preds = %for.inc.i.for.body.backedge.i_crit_edge, %if.then12.i.for.body.backedge.i_crit_edge
  %i.03.be.i = add nuw nsw i32 %i.03.i, 1
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.then12.i.for.end.i_crit_edge
  %63 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base.i, align 4
  %lock25.i = getelementptr inbounds %struct.d40_base, ptr %64, i32 0, i32 22, i32 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock25.i, i32 noundef %call3.i) #10
  br label %d40_lcla_free_all.exit

d40_lcla_free_all.exit:                           ; preds = %for.end.i, %d40_desc_remove.exit103.d40_lcla_free_all.exit_crit_edge
  %client = getelementptr i8, ptr %t, i32 24
  %prev.i = getelementptr i8, ptr %t, i32 28
  %65 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i97, ptr noundef %66, ptr noundef %client) #10
  br i1 %call.i.i, label %if.end.i.i, label %d40_lcla_free_all.exit.list_add_tail.exit_crit_edge

d40_lcla_free_all.exit.list_add_tail.exit_crit_edge: ; preds = %d40_lcla_free_all.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %d40_lcla_free_all.exit
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %node.i97, ptr %prev.i, align 4
  %68 = ptrtoint ptr %node.i97 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %client, ptr %node.i97, align 4
  %69 = ptrtoint ptr %prev.i.i102 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %66, ptr %prev.i.i102, align 4
  %70 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %node.i97, ptr %66, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %d40_lcla_free_all.exit.list_add_tail.exit_crit_edge
  %71 = ptrtoint ptr %is_in_client_list to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %is_in_client_list, align 4
  br label %if.end40

if.end40:                                         ; preds = %list_add_tail.exit, %if.else.if.end40_crit_edge, %d40_desc_remove.exit, %if.end22.if.end40_crit_edge
  %72 = ptrtoint ptr %pending_tx to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %pending_tx, align 4
  %dec = add i32 %73, -1
  store i32 %dec, ptr %pending_tx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool43.not = icmp eq i32 %dec, 0
  br i1 %tobool43.not, label %if.end40.if.end45_crit_edge, label %if.then44

if.end40.if.end45_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.then44:                                        ; preds = %if.end40
  %state.i = getelementptr inbounds %struct.tasklet_struct, ptr %t, i32 0, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then44.if.end45_crit_edge

if.then44.if.end45_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.then.i:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__tasklet_schedule(ptr noundef %t) #10
  br label %if.end45

if.end45:                                         ; preds = %if.then.i, %if.then44.if.end45_crit_edge, %if.end40.if.end45_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call3) #10
  br i1 %tobool25.not, label %if.end45.cleanup_crit_edge, label %if.then48

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then48:                                        ; preds = %if.end45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dummy_result.i) #10
  %74 = ptrtoint ptr %dummy_result.i to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 0, ptr %dummy_result.i, align 8
  %tobool.not.i105 = icmp eq ptr %21, null
  br i1 %tobool.not.i105, label %if.else.i, label %if.then.i107

if.then.i107:                                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #12
  call void %21(ptr noundef %23, ptr noundef nonnull %dummy_result.i) #10
  br label %dmaengine_desc_callback_invoke.exit

if.else.i:                                        ; preds = %if.then48
  %tobool4.not.i = icmp eq ptr %19, null
  br i1 %tobool4.not.i, label %if.else.i.dmaengine_desc_callback_invoke.exit_crit_edge, label %if.then5.i

if.else.i.dmaengine_desc_callback_invoke.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmaengine_desc_callback_invoke.exit

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %19(ptr noundef %23) #10
  br label %dmaengine_desc_callback_invoke.exit

dmaengine_desc_callback_invoke.exit:              ; preds = %if.then5.i, %if.else.i.dmaengine_desc_callback_invoke.exit_crit_edge, %if.then.i107
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dummy_result.i) #10
  br label %cleanup

check_pending_tx:                                 ; preds = %lor.lhs.false.check_pending_tx_crit_edge, %if.then.check_pending_tx_crit_edge
  %pending_tx50 = getelementptr i8, ptr %t, i32 -76
  %75 = ptrtoint ptr %pending_tx50 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %pending_tx50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp51 = icmp sgt i32 %76, 0
  br i1 %cmp51, label %if.then53, label %check_pending_tx.if.end56_crit_edge

check_pending_tx.if.end56_crit_edge:              ; preds = %check_pending_tx
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.then53:                                        ; preds = %check_pending_tx
  call void @__sanitizer_cov_trace_pc() #12
  %dec55 = add nsw i32 %76, -1
  %77 = ptrtoint ptr %pending_tx50 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %dec55, ptr %pending_tx50, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %check_pending_tx.if.end56_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call3) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %dmaengine_desc_callback_invoke.exit, %if.end45.cleanup_crit_edge, %if.then20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @d40_desc_free(ptr nocapture noundef readonly %d40c, ptr noundef %d40d) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_addr.i = getelementptr inbounds %struct.d40_desc, ptr %d40d, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dma_addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %entry.d40_pool_lli_free.exit_crit_edge, label %if.then.i

entry.d40_pool_lli_free.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %d40_pool_lli_free.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %base.i = getelementptr inbounds %struct.d40_chan, ptr %d40c, i32 0, i32 16
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %dev.i = getelementptr inbounds %struct.d40_base, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %size.i = getelementptr inbounds %struct.d40_desc, ptr %d40d, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %5, i32 noundef %1, i32 noundef %7, i32 noundef 1, i32 noundef 0) #10
  br label %d40_pool_lli_free.exit

d40_pool_lli_free.exit:                           ; preds = %if.then.i, %entry.d40_pool_lli_free.exit_crit_edge
  %lli_pool.i = getelementptr inbounds %struct.d40_desc, ptr %d40d, i32 0, i32 2
  %8 = ptrtoint ptr %lli_pool.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lli_pool.i, align 4
  tail call void @kfree(ptr noundef %9) #10
  %10 = call ptr @memset(ptr %d40d, i32 0, i32 24)
  %log_num.i.i = getelementptr inbounds %struct.d40_chan, ptr %d40c, i32 0, i32 1
  %11 = ptrtoint ptr %log_num.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %log_num.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp.i.i = icmp eq i32 %12, -1
  br i1 %cmp.i.i, label %d40_pool_lli_free.exit.d40_lcla_free_all.exit_crit_edge, label %do.body1.i

d40_pool_lli_free.exit.d40_lcla_free_all.exit_crit_edge: ; preds = %d40_pool_lli_free.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %d40_lcla_free_all.exit

do.body1.i:                                       ; preds = %d40_pool_lli_free.exit
  %base.i5 = getelementptr inbounds %struct.d40_chan, ptr %d40c, i32 0, i32 16
  %13 = ptrtoint ptr %base.i5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i5, align 4
  %lock.i = getelementptr inbounds %struct.d40_base, ptr %14, i32 0, i32 22, i32 4
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %phy_chan.i = getelementptr inbounds %struct.d40_chan, ptr %d40c, i32 0, i32 4
  %lcla_alloc.i = getelementptr inbounds %struct.d40_desc, ptr %d40d, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.backedge.i, %do.body1.i
  %i.03.i = phi i32 [ 1, %do.body1.i ], [ %i.03.be.i, %for.body.backedge.i ]
  %15 = ptrtoint ptr %phy_chan.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %phy_chan.i, align 4
  %num.i = getelementptr inbounds %struct.d40_phy_res, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num.i, align 4
  %mul.i = shl i32 %18, 7
  %add.i = add nuw i32 %mul.i, %i.03.i
  %19 = ptrtoint ptr %base.i5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i5, align 4
  %alloc_map.i = getelementptr inbounds %struct.d40_base, ptr %20, i32 0, i32 22, i32 5
  %21 = ptrtoint ptr %alloc_map.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %alloc_map.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %22, i32 %add.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i, align 4
  %cmp10.i = icmp eq ptr %24, %d40d
  br i1 %cmp10.i, label %if.then12.i, label %for.inc.i

if.then12.i:                                      ; preds = %for.body.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %arrayidx.i, align 4
  %26 = ptrtoint ptr %lcla_alloc.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %lcla_alloc.i, align 4
  %dec.i = add i32 %27, -1
  store i32 %dec.i, ptr %lcla_alloc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp18.i = icmp ne i32 %dec.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %i.03.i)
  %cmp6.i = icmp ult i32 %i.03.i, 63
  %or.cond.i = select i1 %cmp18.i, i1 %cmp6.i, i1 false
  br i1 %or.cond.i, label %if.then12.i.for.body.backedge.i_crit_edge, label %if.then12.i.for.end.i_crit_edge

if.then12.i.for.end.i_crit_edge:                  ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

if.then12.i.for.body.backedge.i_crit_edge:        ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.backedge.i

for.inc.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %i.03.i)
  %cmp6.old.i = icmp ult i32 %i.03.i, 63
  br i1 %cmp6.old.i, label %for.inc.i.for.body.backedge.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.inc.i.for.body.backedge.i_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.backedge.i

for.body.backedge.i:                              ; preds = %for.inc.i.for.body.backedge.i_crit_edge, %if.then12.i.for.body.backedge.i_crit_edge
  %i.03.be.i = add nuw nsw i32 %i.03.i, 1
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.then12.i.for.end.i_crit_edge
  %28 = ptrtoint ptr %base.i5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i5, align 4
  %lock25.i = getelementptr inbounds %struct.d40_base, ptr %29, i32 0, i32 22, i32 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock25.i, i32 noundef %call3.i) #10
  br label %d40_lcla_free_all.exit

d40_lcla_free_all.exit:                           ; preds = %for.end.i, %d40_pool_lli_free.exit.d40_lcla_free_all.exit_crit_edge
  %base = getelementptr inbounds %struct.d40_chan, ptr %d40c, i32 0, i32 16
  %30 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base, align 4
  %desc_slab = getelementptr inbounds %struct.d40_base, ptr %31, i32 0, i32 26
  %32 = ptrtoint ptr %desc_slab to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %desc_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %33, ptr noundef %d40d) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @d40_prep_slave_sg(ptr noundef %chan, ptr noundef %sgl, i32 noundef %sg_len, i32 noundef %direction, i32 noundef %dma_flags, ptr nocapture noundef readnone %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %direction, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %1 = icmp ult i32 %0, 2
  br i1 %1, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call fastcc ptr @d40_prep_sg(ptr noundef %chan, ptr noundef %sgl, ptr noundef %sgl, i32 noundef %sg_len, i32 noundef %direction, i32 noundef %dma_flags)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi ptr [ %call1, %if.end ], [ null, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @d40_prep_memcpy(ptr noundef %chan, i32 noundef %dst, i32 noundef %src, i32 noundef %size, i32 noundef %dma_flags) #0 align 64 {
entry:
  %dst_sg = alloca %struct.scatterlist, align 4
  %src_sg = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %dst_sg) #10
  %0 = getelementptr inbounds %struct.scatterlist, ptr %dst_sg, i32 0, i32 3
  %1 = getelementptr inbounds %struct.scatterlist, ptr %dst_sg, i32 0, i32 4
  %2 = call ptr @memset(ptr %dst_sg, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %src_sg) #10
  %3 = getelementptr inbounds %struct.scatterlist, ptr %src_sg, i32 0, i32 3
  %4 = getelementptr inbounds %struct.scatterlist, ptr %src_sg, i32 0, i32 4
  %5 = call ptr @memset(ptr %src_sg, i32 255, i32 20)
  call void @sg_init_table(ptr noundef nonnull %dst_sg, i32 noundef 1) #10
  call void @sg_init_table(ptr noundef nonnull %src_sg, i32 noundef 1) #10
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %dst, ptr %0, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %src, ptr %3, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %size, ptr %1, align 4
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %size, ptr %4, align 4
  %call = call fastcc ptr @d40_prep_sg(ptr noundef %chan, ptr noundef nonnull %src_sg, ptr noundef nonnull %dst_sg, i32 noundef 1, i32 noundef 0, i32 noundef %dma_flags)
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %src_sg) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %dst_sg) #10
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @dma40_prep_dma_cyclic(ptr noundef %chan, i32 noundef %dma_addr, i32 noundef %buf_len, i32 noundef %period_len, i32 noundef %direction, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %div = udiv i32 %buf_len, %period_len
  %add = add i32 %div, 1
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 20) #10
  %1 = extractvalue { i32, i1 } %0, 1
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end7.i.i, !prof !391

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7.i.i:                                      ; preds = %entry
  %2 = extractvalue { i32, i1 } %0, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %2, i32 noundef 2304) #15
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %for.cond.preheader

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %period_len, i32 %buf_len)
  %cmp26.not = icmp ugt i32 %period_len, %buf_len
  br i1 %cmp26.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.preheader

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.preheader:                               ; preds = %for.cond.preheader
  %umax = call i32 @llvm.umax.i32(i32 %div, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.028 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %dma_addr.addr.027 = phi i32 [ %add2, %for.body.for.body_crit_edge ], [ %dma_addr, %for.body.preheader ]
  %dma_address = getelementptr %struct.scatterlist, ptr %call8.i.i, i32 %i.028, i32 3
  %3 = ptrtoint ptr %dma_address to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %dma_addr.addr.027, ptr %dma_address, align 4
  %dma_length = getelementptr %struct.scatterlist, ptr %call8.i.i, i32 %i.028, i32 4
  %4 = ptrtoint ptr %dma_length to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %period_len, ptr %dma_length, align 4
  %add2 = add i32 %dma_addr.addr.027, %period_len
  %inc = add nuw i32 %i.028, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %arrayidx.i = getelementptr %struct.scatterlist, ptr %call8.i.i, i32 %div
  %offset.i.i = getelementptr %struct.scatterlist, ptr %call8.i.i, i32 %div, i32 1
  %5 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %offset.i.i, align 4
  %length.i.i = getelementptr %struct.scatterlist, ptr %call8.i.i, i32 %div, i32 2
  %6 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %length.i.i, align 4
  %7 = ptrtoint ptr %call8.i.i to i32
  %and.i.i = or i32 %7, 1
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and.i.i, ptr %arrayidx.i, align 4
  %call4 = tail call fastcc ptr @d40_prep_sg(ptr noundef %chan, ptr noundef nonnull %call8.i.i, ptr noundef nonnull %call8.i.i, i32 noundef %div, i32 noundef %direction, i32 noundef 1)
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end7.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call4, %for.end ], [ null, %if.end7.i.i.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @d40_alloc_chan_resources(ptr noundef %chan) #0 align 64 {
entry:
  %cap.sroa.0.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %chan, i32 -60
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #10
  %cookie.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %cookie.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %cookie.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 3
  %1 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %completed_cookie.i, align 4
  %configured = getelementptr i8, ptr %chan, i32 244
  %2 = ptrtoint ptr %configured to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %configured, align 4, !range !386
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cap.sroa.0.i)
  %4 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chan, align 4
  %cap_mask.i = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %cap_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cap_mask.i, align 4
  %8 = ptrtoint ptr %cap.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %cap.sroa.0.i, align 4
  %cap.sroa.0.i.0.cap.sroa.0.i.0.cap.sroa.0.0.cap.sroa.0.0.cap.sroa.0.0..i = load volatile i32, ptr %cap.sroa.0.i, align 4
  %and1.i.i.i = and i32 %cap.sroa.0.i.0.cap.sroa.0.i.0.cap.sroa.0.0.cap.sroa.0.0.cap.sroa.0.0..i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i, label %if.then.if.else.i_crit_edge, label %land.lhs.true.i

if.then.if.else.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then
  %9 = ptrtoint ptr %cap.sroa.0.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %cap.sroa.0.i.0.cap.sroa.0.i.0.cap.sroa.0.0.cap.sroa.0.0.cap.sroa.0.0.35.i = load volatile i32, ptr %cap.sroa.0.i, align 4
  %10 = and i32 %cap.sroa.0.i.0.cap.sroa.0.i.0.cap.sroa.0.0.cap.sroa.0.0.cap.sroa.0.0.35.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool2.not.i = icmp eq i32 %10, 0
  br i1 %tobool2.not.i, label %if.then.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %dma_cfg.i = getelementptr i8, ptr %chan, i32 136
  %11 = call ptr @memcpy(ptr %dma_cfg.i, ptr @dma40_memcpy_conf_log, i32 60)
  %chan_id.i = getelementptr i8, ptr %chan, i32 16
  %12 = ptrtoint ptr %chan_id.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chan_id.i, align 4
  %arrayidx.i = getelementptr [6 x i32], ptr @dma40_memcpy_channels, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %dev_type.i = getelementptr i8, ptr %chan, i32 152
  %16 = ptrtoint ptr %dev_type.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %dev_type.i, align 4
  %log_def.i = getelementptr i8, ptr %chan, i32 260
  %lcsp1.i = getelementptr i8, ptr %chan, i32 264
  tail call void @d40_log_cfg(ptr noundef %dma_cfg.i, ptr noundef %lcsp1.i, ptr noundef %log_def.i) #10
  br label %d40_config_memcpy.exit.thread

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.then.if.else.i_crit_edge
  %17 = ptrtoint ptr %cap.sroa.0.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %cap.sroa.0.i.0.cap.sroa.0.i.0.cap.sroa.0.0.cap.sroa.0.0.cap.sroa.0.0.36.i = load volatile i32, ptr %cap.sroa.0.i, align 4
  %and1.i.i32.i = and i32 %cap.sroa.0.i.0.cap.sroa.0.i.0.cap.sroa.0.0.cap.sroa.0.0.cap.sroa.0.0.36.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i32.i)
  %tobool8.not.i = icmp eq i32 %and1.i.i32.i, 0
  br i1 %tobool8.not.i, label %if.else.i.do.end11_crit_edge, label %land.lhs.true9.i

if.else.i.do.end11_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end11

land.lhs.true9.i:                                 ; preds = %if.else.i
  %18 = ptrtoint ptr %cap.sroa.0.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %cap.sroa.0.i.0.cap.sroa.0.i.0.cap.sroa.0.0.cap.sroa.0.0.cap.sroa.0.0.37.i = load volatile i32, ptr %cap.sroa.0.i, align 4
  %19 = and i32 %cap.sroa.0.i.0.cap.sroa.0.i.0.cap.sroa.0.0.cap.sroa.0.0.cap.sroa.0.0.37.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool11.not.i = icmp eq i32 %19, 0
  br i1 %tobool11.not.i, label %land.lhs.true9.i.do.end11_crit_edge, label %if.then12.i

land.lhs.true9.i.do.end11_crit_edge:              ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end11

if.then12.i:                                      ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #12
  %dma_cfg13.i = getelementptr i8, ptr %chan, i32 136
  %20 = call ptr @memcpy(ptr %dma_cfg13.i, ptr @dma40_memcpy_conf_phy, i32 60)
  %dst_def_cfg.i = getelementptr i8, ptr %chan, i32 256
  %21 = ptrtoint ptr %dst_def_cfg.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dst_def_cfg.i, align 4
  %src_def_cfg.i = getelementptr i8, ptr %chan, i32 252
  %23 = ptrtoint ptr %src_def_cfg.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %src_def_cfg.i, align 4
  %or14.i = or i32 %24, 8192
  store i32 %or14.i, ptr %src_def_cfg.i, align 4
  %or16.i = or i32 %22, 24576
  store i32 %or16.i, ptr %dst_def_cfg.i, align 4
  br label %d40_config_memcpy.exit.thread

d40_config_memcpy.exit.thread:                    ; preds = %if.then12.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cap.sroa.0.i)
  br label %if.end13

do.end11:                                         ; preds = %land.lhs.true9.i.do.end11_crit_edge, %if.else.i.do.end11_crit_edge
  %dev.i.i = getelementptr i8, ptr %chan, i32 20
  %25 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i.i, align 4
  %device.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %26, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cap.sroa.0.i)
  %27 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %28, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i, ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.157) #13
  br label %mark_last_busy

if.end13:                                         ; preds = %d40_config_memcpy.exit.thread, %entry.if.end13_crit_edge
  %dma_cfg.i100 = getelementptr i8, ptr %chan, i32 136
  %dev_type1.i = getelementptr i8, ptr %chan, i32 152
  %29 = ptrtoint ptr %dev_type1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dev_type1.i, align 4
  %mode.i = getelementptr i8, ptr %chan, i32 144
  %31 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i = icmp eq i32 %32, 0
  %base.i = getelementptr i8, ptr %chan, i32 248
  %33 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i, align 4
  %phy_res.i = getelementptr inbounds %struct.d40_base, ptr %34, i32 0, i32 21
  %35 = ptrtoint ptr %phy_res.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %phy_res.i, align 4
  %num_phy_chans4.i = getelementptr inbounds %struct.d40_base, ptr %34, i32 0, i32 10
  %37 = ptrtoint ptr %num_phy_chans4.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_phy_chans4.i, align 4
  %39 = ptrtoint ptr %dma_cfg.i100 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dma_cfg.i100, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %40)
  %cmp6.i = icmp eq i32 %40, 2
  br i1 %cmp6.i, label %if.end16.thread.i, label %if.else.i101

if.else.i101:                                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %40)
  %switch249.i = icmp ult i32 %40, 2
  br i1 %switch249.i, label %if.end16.i, label %if.else.i101.do.end19_crit_edge

if.else.i101.do.end19_crit_edge:                  ; preds = %if.else.i101
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19

if.end16.i:                                       ; preds = %if.else.i101
  %mul14.i = shl i32 %30, 1
  %add.i = or i32 %mul14.i, 1
  %div.i = sdiv i32 %30, 16
  br i1 %cmp.i, label %if.end16.i.if.end66.i_crit_edge, label %if.then17.i

if.end16.i.if.end66.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66.i

if.end16.thread.i:                                ; preds = %if.end13
  %mul.i = shl i32 %30, 1
  %div385.i = sdiv i32 %30, 16
  br i1 %cmp.i, label %if.end16.thread.i.if.end66.i_crit_edge, label %if.end16.thread.i.for.cond40.preheader.i_crit_edge

if.end16.thread.i.for.cond40.preheader.i_crit_edge: ; preds = %if.end16.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond40.preheader.i

if.end16.thread.i.if.end66.i_crit_edge:           ; preds = %if.end16.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66.i

if.then17.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp20.i = icmp eq i32 %40, 0
  br i1 %cmp20.i, label %if.then21.i, label %if.then17.i.for.cond40.preheader.i_crit_edge

if.then17.i.for.cond40.preheader.i_crit_edge:     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond40.preheader.i

for.cond40.preheader.i:                           ; preds = %if.then17.i.for.cond40.preheader.i_crit_edge, %if.end16.thread.i.for.cond40.preheader.i_crit_edge
  %div387391.i = phi i32 [ %div.i, %if.then17.i.for.cond40.preheader.i_crit_edge ], [ %div385.i, %if.end16.thread.i.for.cond40.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp43345.i = icmp sgt i32 %38, 0
  br i1 %cmp43345.i, label %for.body44.lr.ph.i, label %for.cond40.preheader.i.do.end19_crit_edge

for.cond40.preheader.i.do.end19_crit_edge:        ; preds = %for.cond40.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19

for.body44.lr.ph.i:                               ; preds = %for.cond40.preheader.i
  %mul45.i = shl nsw i32 %div387391.i, 1
  br label %for.body44.i

if.then21.i:                                      ; preds = %if.then17.i
  %use_fixed_channel.i = getelementptr i8, ptr %chan, i32 188
  %41 = ptrtoint ptr %use_fixed_channel.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %use_fixed_channel.i, align 4, !range !386
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool23.not.i = icmp eq i8 %42, 0
  br i1 %tobool23.not.i, label %for.cond.preheader.i, label %if.then24.i

for.cond.preheader.i:                             ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp31347.i = icmp sgt i32 %38, 0
  br i1 %cmp31347.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.do.end19_crit_edge

for.cond.preheader.i.do.end19_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

if.then24.i:                                      ; preds = %if.then21.i
  %phy_channel.i = getelementptr i8, ptr %chan, i32 192
  %43 = ptrtoint ptr %phy_channel.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %phy_channel.i, align 4
  %arrayidx.i102 = getelementptr %struct.d40_phy_res, ptr %36, i32 %44
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx.i102) #10
  %allocated_src.i.i = getelementptr %struct.d40_phy_res, ptr %36, i32 %44, i32 3
  %45 = ptrtoint ptr %allocated_src.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %allocated_src.i.i, align 4
  %allocated_dst.i.i = getelementptr %struct.d40_phy_res, ptr %36, i32 %44, i32 4
  %47 = ptrtoint ptr %allocated_dst.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %allocated_dst.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %46)
  %cmp10.i.i = icmp eq i32 %46, -2147483648
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %48)
  %cmp13.i.i = icmp eq i32 %48, -2147483648
  %or.cond = select i1 %cmp10.i.i, i1 %cmp13.i.i, i1 false
  br i1 %or.cond, label %out.i.thread, label %d40_alloc_mask_set.exit.thread.i

d40_alloc_mask_set.exit.thread.i:                 ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i102, i32 noundef %call3.i.i) #10
  br label %do.end19

out.i.thread:                                     ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %allocated_dst.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1073741824, ptr %allocated_dst.i.i, align 4
  %50 = ptrtoint ptr %allocated_src.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1073741824, ptr %allocated_src.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i102, i32 noundef %call3.i.i) #10
  %phy_chan137.i136 = getelementptr i8, ptr %chan, i32 -4
  %51 = ptrtoint ptr %phy_chan137.i136 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %arrayidx.i102, ptr %phy_chan137.i136, align 4
  %log_num138.i137 = getelementptr i8, ptr %chan, i32 -16
  %52 = ptrtoint ptr %log_num138.i137 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1, ptr %log_num138.i137, align 4
  %53 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base.i, align 4
  br label %if.else144.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.0348.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx32.i = getelementptr %struct.d40_phy_res, ptr %36, i32 %i.0348.i
  %call3.i250.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx32.i) #10
  %allocated_src.i251.i = getelementptr %struct.d40_phy_res, ptr %36, i32 %i.0348.i, i32 3
  %55 = ptrtoint ptr %allocated_src.i251.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %allocated_src.i251.i, align 4
  %allocated_dst.i252.i = getelementptr %struct.d40_phy_res, ptr %36, i32 %i.0348.i, i32 4
  %57 = ptrtoint ptr %allocated_dst.i252.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %allocated_dst.i252.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %56)
  %cmp10.i256.i = icmp eq i32 %56, -2147483648
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %58)
  %cmp13.i257.i = icmp eq i32 %58, -2147483648
  %or.cond145 = select i1 %cmp10.i256.i, i1 %cmp13.i257.i, i1 false
  br i1 %or.cond145, label %d40_alloc_mask_set.exit261.i, label %for.inc.i

d40_alloc_mask_set.exit261.i:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %59 = ptrtoint ptr %allocated_dst.i252.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1073741824, ptr %allocated_dst.i252.i, align 4
  %60 = ptrtoint ptr %allocated_src.i251.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1073741824, ptr %allocated_src.i251.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx32.i, i32 noundef %call3.i250.i) #10
  br label %out.i

for.inc.i:                                        ; preds = %for.body.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx32.i, i32 noundef %call3.i250.i) #10
  %inc.i = add nuw nsw i32 %i.0348.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %38
  br i1 %exitcond.not.i, label %for.inc.i.do.end19_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.do.end19_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19

for.body44.i:                                     ; preds = %for.inc60.i.for.body44.i_crit_edge, %for.body44.lr.ph.i
  %j.0346.i = phi i32 [ 0, %for.body44.lr.ph.i ], [ %add61.i, %for.inc60.i.for.body44.i_crit_edge ]
  %add46.i = add i32 %j.0346.i, %mul45.i
  %add48.i = add i32 %add46.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483646, i32 %add46.i)
  %cmp49341.not.i = icmp eq i32 %add46.i, 2147483646
  br i1 %cmp49341.not.i, label %for.body44.i.for.inc60.i_crit_edge, label %for.body50.i

for.body44.i.for.inc60.i_crit_edge:               ; preds = %for.body44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc60.i

for.body50.i:                                     ; preds = %for.body44.i
  %arrayidx51.i = getelementptr %struct.d40_phy_res, ptr %36, i32 %add46.i
  %call3.i262.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx51.i) #10
  %allocated_src.i263.i = getelementptr %struct.d40_phy_res, ptr %36, i32 %add46.i, i32 3
  %61 = ptrtoint ptr %allocated_src.i263.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %allocated_src.i263.i, align 4
  %allocated_dst.i264.i = getelementptr %struct.d40_phy_res, ptr %36, i32 %add46.i, i32 4
  %63 = ptrtoint ptr %allocated_dst.i264.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %allocated_dst.i264.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %62)
  %cmp10.i268.i = icmp eq i32 %62, -2147483648
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %64)
  %cmp13.i269.i = icmp eq i32 %64, -2147483648
  %or.cond146 = select i1 %cmp10.i268.i, i1 %cmp13.i269.i, i1 false
  br i1 %or.cond146, label %for.body50.i.cleanup.i_crit_edge, label %for.inc57.i

for.body50.i.cleanup.i_crit_edge:                 ; preds = %for.body50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

for.inc57.i:                                      ; preds = %for.body50.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx51.i, i32 noundef %call3.i262.i) #10
  %inc58.i = or i32 %add46.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc58.i, i32 %add48.i)
  %cmp49.i = icmp slt i32 %inc58.i, %add48.i
  br i1 %cmp49.i, label %for.body50.i.1, label %for.inc57.i.for.inc60.i_crit_edge

for.inc57.i.for.inc60.i_crit_edge:                ; preds = %for.inc57.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc60.i

for.body50.i.1:                                   ; preds = %for.inc57.i
  %arrayidx51.i.1 = getelementptr %struct.d40_phy_res, ptr %36, i32 %inc58.i
  %call3.i262.i.1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx51.i.1) #10
  %allocated_src.i263.i.1 = getelementptr %struct.d40_phy_res, ptr %36, i32 %inc58.i, i32 3
  %65 = ptrtoint ptr %allocated_src.i263.i.1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %allocated_src.i263.i.1, align 4
  %allocated_dst.i264.i.1 = getelementptr %struct.d40_phy_res, ptr %36, i32 %inc58.i, i32 4
  %67 = ptrtoint ptr %allocated_dst.i264.i.1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %allocated_dst.i264.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %66)
  %cmp10.i268.i.1 = icmp eq i32 %66, -2147483648
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %68)
  %cmp13.i269.i.1 = icmp eq i32 %68, -2147483648
  %or.cond146.1 = select i1 %cmp10.i268.i.1, i1 %cmp13.i269.i.1, i1 false
  br i1 %or.cond146.1, label %for.body50.i.1.cleanup.i_crit_edge, label %for.inc57.i.1

for.body50.i.1.cleanup.i_crit_edge:               ; preds = %for.body50.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

for.inc57.i.1:                                    ; preds = %for.body50.i.1
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx51.i.1, i32 noundef %call3.i262.i.1) #10
  br label %for.inc60.i

cleanup.i:                                        ; preds = %for.body50.i.1.cleanup.i_crit_edge, %for.body50.i.cleanup.i_crit_edge
  %i.1342.i.lcssa = phi i32 [ %add46.i, %for.body50.i.cleanup.i_crit_edge ], [ %inc58.i, %for.body50.i.1.cleanup.i_crit_edge ]
  %arrayidx51.i.lcssa = phi ptr [ %arrayidx51.i, %for.body50.i.cleanup.i_crit_edge ], [ %arrayidx51.i.1, %for.body50.i.1.cleanup.i_crit_edge ]
  %call3.i262.i.lcssa = phi i32 [ %call3.i262.i, %for.body50.i.cleanup.i_crit_edge ], [ %call3.i262.i.1, %for.body50.i.1.cleanup.i_crit_edge ]
  %allocated_src.i263.i.lcssa = phi ptr [ %allocated_src.i263.i, %for.body50.i.cleanup.i_crit_edge ], [ %allocated_src.i263.i.1, %for.body50.i.1.cleanup.i_crit_edge ]
  %allocated_dst.i264.i.lcssa = phi ptr [ %allocated_dst.i264.i, %for.body50.i.cleanup.i_crit_edge ], [ %allocated_dst.i264.i.1, %for.body50.i.1.cleanup.i_crit_edge ]
  %69 = ptrtoint ptr %allocated_dst.i264.i.lcssa to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 1073741824, ptr %allocated_dst.i264.i.lcssa, align 4
  %70 = ptrtoint ptr %allocated_src.i263.i.lcssa to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1073741824, ptr %allocated_src.i263.i.lcssa, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx51.i.lcssa, i32 noundef %call3.i262.i.lcssa) #10
  br label %out.i

for.inc60.i:                                      ; preds = %for.inc57.i.1, %for.inc57.i.for.inc60.i_crit_edge, %for.body44.i.for.inc60.i_crit_edge
  %add61.i = add i32 %j.0346.i, 8
  %71 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base.i, align 4
  %num_phy_chans42.i = getelementptr inbounds %struct.d40_base, ptr %72, i32 0, i32 10
  %73 = ptrtoint ptr %num_phy_chans42.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %num_phy_chans42.i, align 4
  %cmp43.i = icmp slt i32 %add61.i, %74
  br i1 %cmp43.i, label %for.inc60.i.for.body44.i_crit_edge, label %for.inc60.i.do.end19_crit_edge

for.inc60.i.do.end19_crit_edge:                   ; preds = %for.inc60.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19

for.inc60.i.for.body44.i_crit_edge:               ; preds = %for.inc60.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body44.i

if.end66.i:                                       ; preds = %if.end16.thread.i.if.end66.i_crit_edge, %if.end16.i.if.end66.i_crit_edge
  %div388.i = phi i32 [ %div385.i, %if.end16.thread.i.if.end66.i_crit_edge ], [ %div.i, %if.end16.i.if.end66.i_crit_edge ]
  %log_num.0386.i = phi i32 [ %mul.i, %if.end16.thread.i.if.end66.i_crit_edge ], [ %add.i, %if.end16.i.if.end66.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %cmp67.i = icmp ne i32 %30, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp73356.i = icmp sgt i32 %38, 0
  %or.cond147 = select i1 %cmp67.i, i1 %cmp73356.i, i1 false
  br i1 %or.cond147, label %for.body74.lr.ph.i, label %if.end66.i.do.end19_crit_edge

if.end66.i.do.end19_crit_edge:                    ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19

for.body74.lr.ph.i:                               ; preds = %if.end66.i
  %mul76.i = shl nsw i32 %div388.i, 1
  %use_fixed_channel79.i = getelementptr i8, ptr %chan, i32 188
  %rem383.i = and i32 %30, 15
  %shl51.i308.i = shl nuw nsw i32 1, %rem383.i
  br label %for.body74.i

for.body74.i:                                     ; preds = %for.inc133.i.for.body74.i_crit_edge, %for.body74.lr.ph.i
  %j.1357.i = phi i32 [ 0, %for.body74.lr.ph.i ], [ %add134.i, %for.inc133.i.for.body74.i_crit_edge ]
  %add77.i = add i32 %j.1357.i, %mul76.i
  %75 = ptrtoint ptr %use_fixed_channel79.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %use_fixed_channel79.i, align 4, !range !386
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool80.not.i = icmp eq i8 %76, 0
  br i1 %tobool80.not.i, label %if.end100.i, label %if.then81.i

if.then81.i:                                      ; preds = %for.body74.i
  %phy_channel83.i = getelementptr i8, ptr %chan, i32 192
  %77 = ptrtoint ptr %phy_channel83.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %phy_channel83.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %add77.i)
  %cmp84.not.i = icmp eq i32 %78, %add77.i
  %add85.i = or i32 %add77.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %add85.i)
  %cmp86.not.i = icmp eq i32 %78, %add85.i
  %or.cond.i = or i1 %cmp84.not.i, %cmp86.not.i
  br i1 %or.cond.i, label %if.end89.i, label %do.end.i105

do.end.i105:                                      ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i.i103 = getelementptr i8, ptr %chan, i32 20
  %79 = ptrtoint ptr %dev.i.i103 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev.i.i103, align 4
  %device.i.i104 = getelementptr inbounds %struct.dma_chan_dev, ptr %80, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i.i104, ptr noundef nonnull @.str.166, i32 noundef %78) #13
  br label %do.end19

if.end89.i:                                       ; preds = %if.then81.i
  %arrayidx90.i = getelementptr %struct.d40_phy_res, ptr %36, i32 %78
  %call3.i274.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx90.i) #10
  %allocated_src.i275.i = getelementptr %struct.d40_phy_res, ptr %36, i32 %78, i32 3
  %81 = ptrtoint ptr %allocated_src.i275.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %allocated_src.i275.i, align 4
  %allocated_dst.i276.i = getelementptr %struct.d40_phy_res, ptr %36, i32 %78, i32 4
  %83 = ptrtoint ptr %allocated_dst.i276.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %allocated_dst.i276.i, align 4
  %or.i277.i = or i32 %84, %82
  br i1 %cmp6.i, label %if.then19.i.i, label %if.else38.i.i

if.then19.i.i:                                    ; preds = %if.end89.i
  %85 = zext i32 %82 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.201)
  switch i32 %82, label %if.then19.i.i.if.end30.i.i_crit_edge [
    i32 1073741824, label %if.then19.i.i.do.end98.i_crit_edge
    i32 -2147483648, label %if.then28.i.i
  ]

if.then19.i.i.do.end98.i_crit_edge:               ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end98.i

if.then19.i.i.if.end30.i.i_crit_edge:             ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30.i.i

if.then28.i.i:                                    ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %86 = ptrtoint ptr %allocated_src.i275.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %allocated_src.i275.i, align 4
  br label %if.end30.i.i

if.end30.i.i:                                     ; preds = %if.then28.i.i, %if.then19.i.i.if.end30.i.i_crit_edge
  %87 = ptrtoint ptr %allocated_src.i275.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %allocated_src.i275.i, align 4
  %and.i.i = and i32 %88, %shl51.i308.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool32.not.i.i, label %if.end30.i.i.d40_alloc_mask_set.exit281.i_crit_edge, label %if.end30.i.i.do.end98.i_crit_edge

if.end30.i.i.do.end98.i_crit_edge:                ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end98.i

if.end30.i.i.d40_alloc_mask_set.exit281.i_crit_edge: ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %d40_alloc_mask_set.exit281.i

if.else38.i.i:                                    ; preds = %if.end89.i
  %89 = zext i32 %84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.202)
  switch i32 %84, label %if.else38.i.i.if.end49.i.i_crit_edge [
    i32 1073741824, label %if.else38.i.i.do.end98.i_crit_edge
    i32 -2147483648, label %if.then47.i.i
  ]

if.else38.i.i.do.end98.i_crit_edge:               ; preds = %if.else38.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end98.i

if.else38.i.i.if.end49.i.i_crit_edge:             ; preds = %if.else38.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49.i.i

if.then47.i.i:                                    ; preds = %if.else38.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %90 = ptrtoint ptr %allocated_dst.i276.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %allocated_dst.i276.i, align 4
  br label %if.end49.i.i

if.end49.i.i:                                     ; preds = %if.then47.i.i, %if.else38.i.i.if.end49.i.i_crit_edge
  %91 = ptrtoint ptr %allocated_dst.i276.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %allocated_dst.i276.i, align 4
  %and52.i.i = and i32 %92, %shl51.i308.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.i.i)
  %tobool53.not.i.i = icmp eq i32 %and52.i.i, 0
  br i1 %tobool53.not.i.i, label %if.end49.i.i.d40_alloc_mask_set.exit281.i_crit_edge, label %if.end49.i.i.do.end98.i_crit_edge

if.end49.i.i.do.end98.i_crit_edge:                ; preds = %if.end49.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end98.i

if.end49.i.i.d40_alloc_mask_set.exit281.i_crit_edge: ; preds = %if.end49.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %d40_alloc_mask_set.exit281.i

d40_alloc_mask_set.exit281.i:                     ; preds = %if.end49.i.i.d40_alloc_mask_set.exit281.i_crit_edge, %if.end30.i.i.d40_alloc_mask_set.exit281.i_crit_edge
  %.sink.i = phi i32 [ %88, %if.end30.i.i.d40_alloc_mask_set.exit281.i_crit_edge ], [ %92, %if.end49.i.i.d40_alloc_mask_set.exit281.i_crit_edge ]
  %allocated_src.i275.sink.i = phi ptr [ %allocated_src.i275.i, %if.end30.i.i.d40_alloc_mask_set.exit281.i_crit_edge ], [ %allocated_dst.i276.i, %if.end49.i.i.d40_alloc_mask_set.exit281.i_crit_edge ]
  %or36.i.i = or i32 %.sink.i, %shl51.i308.i
  %93 = ptrtoint ptr %allocated_src.i275.sink.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %or36.i.i, ptr %allocated_src.i275.sink.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx90.i, i32 noundef %call3.i274.i) #10
  br label %out.i

do.end98.i:                                       ; preds = %if.end49.i.i.do.end98.i_crit_edge, %if.else38.i.i.do.end98.i_crit_edge, %if.end30.i.i.do.end98.i_crit_edge, %if.then19.i.i.do.end98.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx90.i, i32 noundef %call3.i274.i) #10
  %dev.i282.i = getelementptr i8, ptr %chan, i32 20
  %94 = ptrtoint ptr %dev.i282.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev.i282.i, align 4
  %device.i283.i = getelementptr inbounds %struct.dma_chan_dev, ptr %95, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i283.i, ptr noundef nonnull @.str.169, i32 noundef %78) #13
  br label %do.end19

if.end100.i:                                      ; preds = %for.body74.i
  br i1 %cmp6.i, label %for.cond103.preheader.i, label %if.else116.i

for.cond103.preheader.i:                          ; preds = %if.end100.i
  %add104.i = add i32 %add77.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483646, i32 %add77.i)
  %cmp105352.not.i = icmp eq i32 %add77.i, 2147483646
  br i1 %cmp105352.not.i, label %for.cond103.preheader.i.for.inc133.i_crit_edge, label %for.body106.i

for.cond103.preheader.i.for.inc133.i_crit_edge:   ; preds = %for.cond103.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc133.i

for.body106.i:                                    ; preds = %for.cond103.preheader.i
  %arrayidx107.i = getelementptr %struct.d40_phy_res, ptr %36, i32 %add77.i
  %call3.i284.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx107.i) #10
  %allocated_src.i285.i = getelementptr %struct.d40_phy_res, ptr %36, i32 %add77.i, i32 3
  %96 = ptrtoint ptr %allocated_src.i285.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %allocated_src.i285.i, align 4
  %allocated_dst.i286.i = getelementptr %struct.d40_phy_res, ptr %36, i32 %add77.i, i32 4
  %98 = ptrtoint ptr %allocated_dst.i286.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %allocated_dst.i286.i, align 4
  %100 = zext i32 %97 to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values.203)
  switch i32 %97, label %for.body106.i.if.end30.i295.i_crit_edge [
    i32 1073741824, label %for.body106.i.for.inc113.i_crit_edge
    i32 -2147483648, label %if.then28.i291.i
  ]

for.body106.i.for.inc113.i_crit_edge:             ; preds = %for.body106.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc113.i

for.body106.i.if.end30.i295.i_crit_edge:          ; preds = %for.body106.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30.i295.i

if.then28.i291.i:                                 ; preds = %for.body106.i
  call void @__sanitizer_cov_trace_pc() #12
  %101 = ptrtoint ptr %allocated_src.i285.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %allocated_src.i285.i, align 4
  br label %if.end30.i295.i

if.end30.i295.i:                                  ; preds = %if.then28.i291.i, %for.body106.i.if.end30.i295.i_crit_edge
  %102 = ptrtoint ptr %allocated_src.i285.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %allocated_src.i285.i, align 4
  %and.i293.i = and i32 %103, %shl51.i308.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i293.i)
  %tobool32.not.i294.i = icmp eq i32 %and.i293.i, 0
  br i1 %tobool32.not.i294.i, label %if.end30.i295.i.d40_alloc_mask_set.exit299.i_crit_edge, label %if.end30.i295.i.for.inc113.i_crit_edge

if.end30.i295.i.for.inc113.i_crit_edge:           ; preds = %if.end30.i295.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc113.i

if.end30.i295.i.d40_alloc_mask_set.exit299.i_crit_edge: ; preds = %if.end30.i295.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %d40_alloc_mask_set.exit299.i

d40_alloc_mask_set.exit299.i:                     ; preds = %if.end30.i295.i.1.d40_alloc_mask_set.exit299.i_crit_edge, %if.end30.i295.i.d40_alloc_mask_set.exit299.i_crit_edge
  %i.3353.i.lcssa = phi i32 [ %add77.i, %if.end30.i295.i.d40_alloc_mask_set.exit299.i_crit_edge ], [ %inc114.i, %if.end30.i295.i.1.d40_alloc_mask_set.exit299.i_crit_edge ]
  %arrayidx107.i.lcssa = phi ptr [ %arrayidx107.i, %if.end30.i295.i.d40_alloc_mask_set.exit299.i_crit_edge ], [ %arrayidx107.i.1, %if.end30.i295.i.1.d40_alloc_mask_set.exit299.i_crit_edge ]
  %call3.i284.i.lcssa = phi i32 [ %call3.i284.i, %if.end30.i295.i.d40_alloc_mask_set.exit299.i_crit_edge ], [ %call3.i284.i.1, %if.end30.i295.i.1.d40_alloc_mask_set.exit299.i_crit_edge ]
  %allocated_src.i285.i.lcssa = phi ptr [ %allocated_src.i285.i, %if.end30.i295.i.d40_alloc_mask_set.exit299.i_crit_edge ], [ %allocated_src.i285.i.1, %if.end30.i295.i.1.d40_alloc_mask_set.exit299.i_crit_edge ]
  %.lcssa306 = phi i32 [ %97, %if.end30.i295.i.d40_alloc_mask_set.exit299.i_crit_edge ], [ %106, %if.end30.i295.i.1.d40_alloc_mask_set.exit299.i_crit_edge ]
  %.lcssa304 = phi i32 [ %99, %if.end30.i295.i.d40_alloc_mask_set.exit299.i_crit_edge ], [ %108, %if.end30.i295.i.1.d40_alloc_mask_set.exit299.i_crit_edge ]
  %.lcssa303 = phi i32 [ %103, %if.end30.i295.i.d40_alloc_mask_set.exit299.i_crit_edge ], [ %112, %if.end30.i295.i.1.d40_alloc_mask_set.exit299.i_crit_edge ]
  %or.i287.i.le = or i32 %.lcssa304, %.lcssa306
  %or36.i296.i = or i32 %.lcssa303, %shl51.i308.i
  %104 = ptrtoint ptr %allocated_src.i285.i.lcssa to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %or36.i296.i, ptr %allocated_src.i285.i.lcssa, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx107.i.lcssa, i32 noundef %call3.i284.i.lcssa) #10
  br label %out.i

for.inc113.i:                                     ; preds = %if.end30.i295.i.for.inc113.i_crit_edge, %for.body106.i.for.inc113.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx107.i, i32 noundef %call3.i284.i) #10
  %inc114.i = or i32 %add77.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc114.i, i32 %add104.i)
  %cmp105.i = icmp slt i32 %inc114.i, %add104.i
  br i1 %cmp105.i, label %for.body106.i.1, label %for.inc113.i.for.inc133.i_crit_edge

for.inc113.i.for.inc133.i_crit_edge:              ; preds = %for.inc113.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc133.i

for.body106.i.1:                                  ; preds = %for.inc113.i
  %arrayidx107.i.1 = getelementptr %struct.d40_phy_res, ptr %36, i32 %inc114.i
  %call3.i284.i.1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx107.i.1) #10
  %allocated_src.i285.i.1 = getelementptr %struct.d40_phy_res, ptr %36, i32 %inc114.i, i32 3
  %105 = ptrtoint ptr %allocated_src.i285.i.1 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %allocated_src.i285.i.1, align 4
  %allocated_dst.i286.i.1 = getelementptr %struct.d40_phy_res, ptr %36, i32 %inc114.i, i32 4
  %107 = ptrtoint ptr %allocated_dst.i286.i.1 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %allocated_dst.i286.i.1, align 4
  %109 = zext i32 %106 to i64
  call void @__sanitizer_cov_trace_switch(i64 %109, ptr @__sancov_gen_cov_switch_values.204)
  switch i32 %106, label %for.body106.i.1.if.end30.i295.i.1_crit_edge [
    i32 1073741824, label %for.body106.i.1.for.inc113.i.1_crit_edge
    i32 -2147483648, label %if.then28.i291.i.1
  ]

for.body106.i.1.for.inc113.i.1_crit_edge:         ; preds = %for.body106.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc113.i.1

for.body106.i.1.if.end30.i295.i.1_crit_edge:      ; preds = %for.body106.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30.i295.i.1

if.then28.i291.i.1:                               ; preds = %for.body106.i.1
  call void @__sanitizer_cov_trace_pc() #12
  %110 = ptrtoint ptr %allocated_src.i285.i.1 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %allocated_src.i285.i.1, align 4
  br label %if.end30.i295.i.1

if.end30.i295.i.1:                                ; preds = %if.then28.i291.i.1, %for.body106.i.1.if.end30.i295.i.1_crit_edge
  %111 = ptrtoint ptr %allocated_src.i285.i.1 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %allocated_src.i285.i.1, align 4
  %and.i293.i.1 = and i32 %112, %shl51.i308.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i293.i.1)
  %tobool32.not.i294.i.1 = icmp eq i32 %and.i293.i.1, 0
  br i1 %tobool32.not.i294.i.1, label %if.end30.i295.i.1.d40_alloc_mask_set.exit299.i_crit_edge, label %if.end30.i295.i.1.for.inc113.i.1_crit_edge

if.end30.i295.i.1.for.inc113.i.1_crit_edge:       ; preds = %if.end30.i295.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc113.i.1

if.end30.i295.i.1.d40_alloc_mask_set.exit299.i_crit_edge: ; preds = %if.end30.i295.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %d40_alloc_mask_set.exit299.i

for.inc113.i.1:                                   ; preds = %if.end30.i295.i.1.for.inc113.i.1_crit_edge, %for.body106.i.1.for.inc113.i.1_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx107.i.1, i32 noundef %call3.i284.i.1) #10
  br label %for.inc133.i

if.else116.i:                                     ; preds = %if.end100.i
  %add117.i = or i32 %add77.i, 1
  br label %for.body120.i

for.body120.i:                                    ; preds = %for.inc127.i.for.body120.i_crit_edge, %if.else116.i
  %i.4350.i = phi i32 [ %add117.i, %if.else116.i ], [ %dec.i, %for.inc127.i.for.body120.i_crit_edge ]
  %arrayidx121.i = getelementptr %struct.d40_phy_res, ptr %36, i32 %i.4350.i
  %call3.i300.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx121.i) #10
  %allocated_src.i301.i = getelementptr %struct.d40_phy_res, ptr %36, i32 %i.4350.i, i32 3
  %113 = ptrtoint ptr %allocated_src.i301.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %allocated_src.i301.i, align 4
  %allocated_dst.i302.i = getelementptr %struct.d40_phy_res, ptr %36, i32 %i.4350.i, i32 4
  %115 = ptrtoint ptr %allocated_dst.i302.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %allocated_dst.i302.i, align 4
  %117 = zext i32 %116 to i64
  call void @__sanitizer_cov_trace_switch(i64 %117, ptr @__sancov_gen_cov_switch_values.205)
  switch i32 %116, label %for.body120.i.if.end49.i311.i_crit_edge [
    i32 1073741824, label %for.body120.i.for.inc127.i_crit_edge
    i32 -2147483648, label %if.then47.i307.i
  ]

for.body120.i.for.inc127.i_crit_edge:             ; preds = %for.body120.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc127.i

for.body120.i.if.end49.i311.i_crit_edge:          ; preds = %for.body120.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49.i311.i

if.then47.i307.i:                                 ; preds = %for.body120.i
  call void @__sanitizer_cov_trace_pc() #12
  %118 = ptrtoint ptr %allocated_dst.i302.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 0, ptr %allocated_dst.i302.i, align 4
  br label %if.end49.i311.i

if.end49.i311.i:                                  ; preds = %if.then47.i307.i, %for.body120.i.if.end49.i311.i_crit_edge
  %119 = ptrtoint ptr %allocated_dst.i302.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %allocated_dst.i302.i, align 4
  %and52.i309.i = and i32 %120, %shl51.i308.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.i309.i)
  %tobool53.not.i310.i = icmp eq i32 %and52.i309.i, 0
  br i1 %tobool53.not.i310.i, label %d40_alloc_mask_set.exit315.i, label %if.end49.i311.i.for.inc127.i_crit_edge

if.end49.i311.i.for.inc127.i_crit_edge:           ; preds = %if.end49.i311.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc127.i

d40_alloc_mask_set.exit315.i:                     ; preds = %if.end49.i311.i
  call void @__sanitizer_cov_trace_pc() #12
  %or.i303.i.le = or i32 %116, %114
  %or57.i312.i = or i32 %120, %shl51.i308.i
  %121 = ptrtoint ptr %allocated_dst.i302.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %or57.i312.i, ptr %allocated_dst.i302.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx121.i, i32 noundef %call3.i300.i) #10
  br label %out.i

for.inc127.i:                                     ; preds = %if.end49.i311.i.for.inc127.i_crit_edge, %for.body120.i.for.inc127.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx121.i, i32 noundef %call3.i300.i) #10
  %dec.i = add i32 %i.4350.i, -1
  %cmp119.not.i = icmp slt i32 %dec.i, %add77.i
  br i1 %cmp119.not.i, label %for.inc127.i.for.inc133.i_crit_edge, label %for.inc127.i.for.body120.i_crit_edge

for.inc127.i.for.body120.i_crit_edge:             ; preds = %for.inc127.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body120.i

for.inc127.i.for.inc133.i_crit_edge:              ; preds = %for.inc127.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc133.i

for.inc133.i:                                     ; preds = %for.inc127.i.for.inc133.i_crit_edge, %for.inc113.i.1, %for.inc113.i.for.inc133.i_crit_edge, %for.cond103.preheader.i.for.inc133.i_crit_edge
  %add134.i = add i32 %j.1357.i, 8
  %122 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %base.i, align 4
  %num_phy_chans72.i = getelementptr inbounds %struct.d40_base, ptr %123, i32 0, i32 10
  %124 = ptrtoint ptr %num_phy_chans72.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %num_phy_chans72.i, align 4
  %cmp73.i = icmp slt i32 %add134.i, %125
  br i1 %cmp73.i, label %for.inc133.i.for.body74.i_crit_edge, label %for.inc133.i.do.end19_crit_edge

for.inc133.i.do.end19_crit_edge:                  ; preds = %for.inc133.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19

for.inc133.i.for.body74.i_crit_edge:              ; preds = %for.inc133.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body74.i

out.i:                                            ; preds = %d40_alloc_mask_set.exit315.i, %d40_alloc_mask_set.exit299.i, %d40_alloc_mask_set.exit281.i, %cleanup.i, %d40_alloc_mask_set.exit261.i
  %is_free_phy.4.in.in = phi i32 [ %or.i287.i.le, %d40_alloc_mask_set.exit299.i ], [ %or.i303.i.le, %d40_alloc_mask_set.exit315.i ], [ %or.i277.i, %d40_alloc_mask_set.exit281.i ], [ -2147483648, %cleanup.i ], [ -2147483648, %d40_alloc_mask_set.exit261.i ]
  %i.6.ph.sink.i = phi i32 [ %i.3353.i.lcssa, %d40_alloc_mask_set.exit299.i ], [ %i.4350.i, %d40_alloc_mask_set.exit315.i ], [ %78, %d40_alloc_mask_set.exit281.i ], [ %i.1342.i.lcssa, %cleanup.i ], [ %i.0348.i, %d40_alloc_mask_set.exit261.i ]
  %log_num.0386.sink.i = phi i32 [ %log_num.0386.i, %d40_alloc_mask_set.exit299.i ], [ %log_num.0386.i, %d40_alloc_mask_set.exit315.i ], [ %log_num.0386.i, %d40_alloc_mask_set.exit281.i ], [ -1, %cleanup.i ], [ -1, %d40_alloc_mask_set.exit261.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %is_free_phy.4.in.in)
  %is_free_phy.4.in = icmp eq i32 %is_free_phy.4.in.in, -2147483648
  %is_free_phy.4 = zext i1 %is_free_phy.4.in to i8
  %arrayidx136.i = getelementptr %struct.d40_phy_res, ptr %36, i32 %i.6.ph.sink.i
  %phy_chan137.i = getelementptr i8, ptr %chan, i32 -4
  %126 = ptrtoint ptr %phy_chan137.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %arrayidx136.i, ptr %phy_chan137.i, align 4
  %log_num138.i = getelementptr i8, ptr %chan, i32 -16
  %127 = ptrtoint ptr %log_num138.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %log_num.0386.sink.i, ptr %log_num138.i, align 4
  %128 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %base.i, align 4
  br i1 %cmp.i, label %if.then140.i, label %out.i.if.else144.i_crit_edge

out.i.if.else144.i_crit_edge:                     ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else144.i

if.then140.i:                                     ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #12
  %lookup_log_chans.i = getelementptr inbounds %struct.d40_base, ptr %129, i32 0, i32 17
  %130 = ptrtoint ptr %lookup_log_chans.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %lookup_log_chans.i, align 4
  %arrayidx143.i = getelementptr ptr, ptr %131, i32 %log_num.0386.sink.i
  br label %if.end22

if.else144.i:                                     ; preds = %out.i.if.else144.i_crit_edge, %out.i.thread
  %132 = phi ptr [ %54, %out.i.thread ], [ %129, %out.i.if.else144.i_crit_edge ]
  %133 = phi i32 [ %44, %out.i.thread ], [ %i.6.ph.sink.i, %out.i.if.else144.i_crit_edge ]
  %is_free_phy.4138 = phi i8 [ 1, %out.i.thread ], [ %is_free_phy.4, %out.i.if.else144.i_crit_edge ]
  %lookup_phy_chans.i = getelementptr inbounds %struct.d40_base, ptr %132, i32 0, i32 18
  %134 = ptrtoint ptr %lookup_phy_chans.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %lookup_phy_chans.i, align 4
  %num.i = getelementptr %struct.d40_phy_res, ptr %36, i32 %133, i32 2
  %136 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %num.i, align 4
  %arrayidx147.i = getelementptr ptr, ptr %135, i32 %137
  br label %if.end22

do.end19:                                         ; preds = %for.inc133.i.do.end19_crit_edge, %do.end98.i, %do.end.i105, %if.end66.i.do.end19_crit_edge, %for.inc60.i.do.end19_crit_edge, %for.inc.i.do.end19_crit_edge, %d40_alloc_mask_set.exit.thread.i, %for.cond.preheader.i.do.end19_crit_edge, %for.cond40.preheader.i.do.end19_crit_edge, %if.else.i101.do.end19_crit_edge
  %dev.i106 = getelementptr i8, ptr %chan, i32 20
  %138 = ptrtoint ptr %dev.i106 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dev.i106, align 4
  %device.i107 = getelementptr inbounds %struct.dma_chan_dev, ptr %139, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i107, ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.157) #13
  %140 = ptrtoint ptr %configured to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 0, ptr %configured, align 4
  br label %mark_last_busy

if.end22:                                         ; preds = %if.else144.i, %if.then140.i
  %arrayidx147.i.sink = phi ptr [ %arrayidx147.i, %if.else144.i ], [ %arrayidx143.i, %if.then140.i ]
  %is_free_phy.5 = phi i8 [ %is_free_phy.4138, %if.else144.i ], [ %is_free_phy.4, %if.then140.i ]
  %141 = ptrtoint ptr %arrayidx147.i.sink to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %add.ptr, ptr %arrayidx147.i.sink, align 4
  %142 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %base.i, align 4
  %dev = getelementptr inbounds %struct.d40_base, ptr %143, i32 0, i32 2
  %144 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %145, i32 noundef 4) #10
  %146 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %base.i, align 4
  %rev.i = getelementptr inbounds %struct.d40_base, ptr %147, i32 0, i32 4
  %148 = ptrtoint ptr %rev.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %bf.load.i = load i8, ptr %rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %bf.load.i)
  %cmp.i109 = icmp ult i8 %bf.load.i, 48
  br i1 %cmp.i109, label %if.end22.d40_set_prio_realtime.exit_crit_edge, label %if.end.i

if.end22.d40_set_prio_realtime.exit_crit_edge:    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %d40_set_prio_realtime.exit

if.end.i:                                         ; preds = %if.end22
  %149 = ptrtoint ptr %dma_cfg.i100 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %dma_cfg.i100, align 4
  %151 = and i32 %150, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %151)
  %switch.i = icmp eq i32 %151, 2
  br i1 %switch.i, label %if.then8.i, label %if.end.i.if.end10.i_crit_edge

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %152 = ptrtoint ptr %dev_type1.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %dev_type1.i, align 4
  %realtime1.i.i = getelementptr i8, ptr %chan, i32 141
  %154 = ptrtoint ptr %realtime1.i.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %realtime1.i.i, align 1, !range !386
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool.not.i.i = icmp eq i8 %155, 0
  %high_priority.i.i = getelementptr i8, ptr %chan, i32 140
  %156 = ptrtoint ptr %high_priority.i.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %high_priority.i.i, align 4, !range !386
  %realtime_en.i.i = getelementptr inbounds %struct.d40_base, ptr %147, i32 0, i32 32, i32 2
  %realtime_clear.i.i = getelementptr inbounds %struct.d40_base, ptr %147, i32 0, i32 32, i32 3
  %cond.in.i.i = select i1 %tobool.not.i.i, ptr %realtime_clear.i.i, ptr %realtime_en.i.i
  %158 = ptrtoint ptr %cond.in.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %cond.i.i = load i32, ptr %cond.in.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %extract.t.i.not.i = icmp eq i8 %157, 0
  %rem40.i.i = and i32 %153, 15
  %shl.i.i = shl nuw nsw i32 1, %rem40.i.i
  %high_prio_en.i.i = getelementptr inbounds %struct.d40_base, ptr %147, i32 0, i32 32, i32 4
  %high_prio_clear.i.i = getelementptr inbounds %struct.d40_base, ptr %147, i32 0, i32 32, i32 5
  %cond12.in.i.i = select i1 %extract.t.i.not.i, ptr %high_prio_clear.i.i, ptr %high_prio_en.i.i
  %159 = ptrtoint ptr %cond12.in.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %cond12.i.i = load i32, ptr %cond12.in.i.i, align 4
  %div.i.i = sdiv i32 %153, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !437
  tail call void @arm_heavy_mb() #10
  %160 = tail call i32 @llvm.bswap.i32(i32 %shl.i.i) #10
  %161 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %base.i, align 4
  %virtbase.i.i = getelementptr inbounds %struct.d40_base, ptr %162, i32 0, i32 3
  %163 = ptrtoint ptr %virtbase.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %virtbase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %164, i32 %cond12.i.i
  %mul.i.i = shl nsw i32 %div.i.i, 2
  %add.ptr18.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i.i, i32 %160) #10, !srcloc !385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !438
  tail call void @arm_heavy_mb() #10
  %165 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %base.i, align 4
  %virtbase23.i.i = getelementptr inbounds %struct.d40_base, ptr %166, i32 0, i32 3
  %167 = ptrtoint ptr %virtbase23.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %virtbase23.i.i, align 4
  %add.ptr24.i.i = getelementptr i8, ptr %168, i32 %cond.i.i
  %add.ptr26.i.i = getelementptr i8, ptr %add.ptr24.i.i, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i.i, i32 %160) #10, !srcloc !385
  %169 = ptrtoint ptr %dma_cfg.i100 to i32
  call void @__asan_load4_noabort(i32 %169)
  %.pr.i = load i32, ptr %dma_cfg.i100, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then8.i, %if.end.i.if.end10.i_crit_edge
  %170 = phi i32 [ %150, %if.end.i.if.end10.i_crit_edge ], [ %.pr.i, %if.then8.i ]
  %171 = zext i32 %170 to i64
  call void @__sanitizer_cov_trace_switch(i64 %171, ptr @__sancov_gen_cov_switch_values.206)
  switch i32 %170, label %if.end10.i.d40_set_prio_realtime.exit_crit_edge [
    i32 1, label %if.end10.i.if.then20.i_crit_edge
    i32 3, label %if.end10.i.if.then20.i_crit_edge343
  ]

if.end10.i.if.then20.i_crit_edge343:              ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20.i

if.end10.i.if.then20.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20.i

if.end10.i.d40_set_prio_realtime.exit_crit_edge:  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %d40_set_prio_realtime.exit

if.then20.i:                                      ; preds = %if.end10.i.if.then20.i_crit_edge, %if.end10.i.if.then20.i_crit_edge343
  %172 = ptrtoint ptr %dev_type1.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %dev_type1.i, align 4
  %realtime1.i33.i = getelementptr i8, ptr %chan, i32 141
  %174 = ptrtoint ptr %realtime1.i33.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %realtime1.i33.i, align 1, !range !386
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %175)
  %tobool.not.i34.i = icmp eq i8 %175, 0
  %high_priority.i35.i = getelementptr i8, ptr %chan, i32 140
  %176 = ptrtoint ptr %high_priority.i35.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %high_priority.i35.i, align 4, !range !386
  %178 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %base.i, align 4
  %realtime_en.i37.i = getelementptr inbounds %struct.d40_base, ptr %179, i32 0, i32 32, i32 2
  %realtime_clear.i38.i = getelementptr inbounds %struct.d40_base, ptr %179, i32 0, i32 32, i32 3
  %cond.in.i39.i = select i1 %tobool.not.i34.i, ptr %realtime_clear.i38.i, ptr %realtime_en.i37.i
  %180 = ptrtoint ptr %cond.in.i39.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %cond.i40.i = load i32, ptr %cond.in.i39.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %177)
  %extract.t.i41.i = icmp ne i8 %177, 0
  %log_num.i.i.i.i = getelementptr i8, ptr %chan, i32 -16
  %181 = ptrtoint ptr %log_num.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %log_num.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %182)
  %cmp.i.i.not.i.i = icmp eq i32 %182, -1
  %spec.select.i.i = select i1 %cmp.i.i.not.i.i, i1 %extract.t.i41.i, i1 false
  %rem40.i42.i = and i32 %173, 15
  %high_prio_en.i44.i = getelementptr inbounds %struct.d40_base, ptr %179, i32 0, i32 32, i32 4
  %high_prio_clear.i45.i = getelementptr inbounds %struct.d40_base, ptr %179, i32 0, i32 32, i32 5
  %cond12.in.i46.i = select i1 %spec.select.i.i, ptr %high_prio_en.i44.i, ptr %high_prio_clear.i45.i
  %183 = ptrtoint ptr %cond12.in.i46.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %cond12.i47.i = load i32, ptr %cond12.in.i46.i, align 4
  %shl15.i48.i = shl nuw i32 65536, %rem40.i42.i
  %div.i49.i = sdiv i32 %173, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !437
  tail call void @arm_heavy_mb() #10
  %184 = tail call i32 @llvm.bswap.i32(i32 %shl15.i48.i) #10
  %185 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %base.i, align 4
  %virtbase.i50.i = getelementptr inbounds %struct.d40_base, ptr %186, i32 0, i32 3
  %187 = ptrtoint ptr %virtbase.i50.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %virtbase.i50.i, align 4
  %add.ptr.i51.i = getelementptr i8, ptr %188, i32 %cond12.i47.i
  %mul.i52.i = shl nsw i32 %div.i49.i, 2
  %add.ptr18.i53.i = getelementptr i8, ptr %add.ptr.i51.i, i32 %mul.i52.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i53.i, i32 %184) #10, !srcloc !385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !438
  tail call void @arm_heavy_mb() #10
  %189 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %base.i, align 4
  %virtbase23.i54.i = getelementptr inbounds %struct.d40_base, ptr %190, i32 0, i32 3
  %191 = ptrtoint ptr %virtbase23.i54.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %virtbase23.i54.i, align 4
  %add.ptr24.i55.i = getelementptr i8, ptr %192, i32 %cond.i40.i
  %add.ptr26.i56.i = getelementptr i8, ptr %add.ptr24.i55.i, i32 %mul.i52.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i56.i, i32 %184) #10, !srcloc !385
  br label %d40_set_prio_realtime.exit

d40_set_prio_realtime.exit:                       ; preds = %if.then20.i, %if.end10.i.d40_set_prio_realtime.exit_crit_edge, %if.end22.d40_set_prio_realtime.exit_crit_edge
  %log_num.i.i = getelementptr i8, ptr %chan, i32 -16
  %193 = ptrtoint ptr %log_num.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %log_num.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %194)
  %cmp.i.i.not = icmp eq i32 %194, -1
  br i1 %cmp.i.i.not, label %d40_set_prio_realtime.exit.do.body43_crit_edge, label %if.then25

d40_set_prio_realtime.exit.do.body43_crit_edge:   ; preds = %d40_set_prio_realtime.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body43

if.then25:                                        ; preds = %d40_set_prio_realtime.exit
  call void @__sanitizer_cov_trace_pc() #12
  %195 = ptrtoint ptr %dma_cfg.i100 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %dma_cfg.i100, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %196)
  %cmp26 = icmp eq i32 %196, 2
  %197 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %base.i, align 4
  %lcpa_base = getelementptr inbounds %struct.d40_base, ptr %198, i32 0, i32 23
  %199 = ptrtoint ptr %lcpa_base to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %lcpa_base, align 4
  %201 = ptrtoint ptr %dev_type1.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %dev_type1.i, align 4
  %mul = shl i32 %202, 5
  %add.ptr31 = getelementptr i8, ptr %200, i32 %mul
  %add.ptr38.sink.idx = select i1 %cmp26, i32 0, i32 16
  %add.ptr38.sink = getelementptr i8, ptr %add.ptr31, i32 %add.ptr38.sink.idx
  %203 = getelementptr i8, ptr %chan, i32 268
  %204 = ptrtoint ptr %203 to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %add.ptr38.sink, ptr %203, align 4
  %src_def_cfg = getelementptr i8, ptr %chan, i32 252
  %205 = ptrtoint ptr %src_def_cfg to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %src_def_cfg, align 4
  %or = or i32 %206, 32
  store i32 %or, ptr %src_def_cfg, align 4
  %dst_def_cfg = getelementptr i8, ptr %chan, i32 256
  %207 = ptrtoint ptr %dst_def_cfg to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %dst_def_cfg, align 4
  %or41 = or i32 %208, 32
  store i32 %or41, ptr %dst_def_cfg, align 4
  br label %do.body43

do.body43:                                        ; preds = %if.then25, %d40_set_prio_realtime.exit.do.body43_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @d40_alloc_chan_resources.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@d40_alloc_chan_resources, %do.end60)) #10
          to label %if.then50 [label %do.end60], !srcloc !435

if.then50:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i112 = getelementptr i8, ptr %chan, i32 20
  %209 = ptrtoint ptr %dev.i112 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %dev.i112, align 4
  %device.i113 = getelementptr inbounds %struct.dma_chan_dev, ptr %210, i32 0, i32 1
  %211 = ptrtoint ptr %log_num.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %log_num.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %212)
  %cmp.i.i115.not = icmp eq i32 %212, -1
  %cond = select i1 %cmp.i.i115.not, ptr @.str.163, ptr @.str.162
  %phy_chan = getelementptr i8, ptr %chan, i32 -4
  %213 = ptrtoint ptr %phy_chan to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %phy_chan, align 4
  %num = getelementptr inbounds %struct.d40_phy_res, ptr %214, i32 0, i32 2
  %215 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %num, align 4
  %use_fixed_channel = getelementptr i8, ptr %chan, i32 188
  %217 = ptrtoint ptr %use_fixed_channel to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %use_fixed_channel, align 4, !range !386
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %218)
  %tobool55.not = icmp eq i8 %218, 0
  %cond57 = select i1 %tobool55.not, ptr @.str.165, ptr @.str.164
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @d40_alloc_chan_resources.__UNIQUE_ID_ddebug300, ptr noundef %device.i113, ptr noundef nonnull @.str.161, ptr noundef nonnull %cond, i32 noundef %216, ptr noundef nonnull %cond57) #10
  br label %do.end60

do.end60:                                         ; preds = %if.then50, %do.body43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %is_free_phy.5)
  %tobool61.not = icmp eq i8 %is_free_phy.5, 0
  br i1 %tobool61.not, label %do.end60.mark_last_busy_crit_edge, label %if.then62

do.end60.mark_last_busy_crit_edge:                ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %mark_last_busy

if.then62:                                        ; preds = %do.end60
  %phy_chan.i = getelementptr i8, ptr %chan, i32 -4
  %219 = ptrtoint ptr %phy_chan.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %phy_chan.i, align 4
  %num.i116 = getelementptr inbounds %struct.d40_phy_res, ptr %220, i32 0, i32 2
  %221 = ptrtoint ptr %num.i116 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %num.i116, align 4
  %.frozen = freeze i32 %222
  %div.i119 = sdiv i32 %.frozen, 2
  %223 = mul i32 %div.i119, 2
  %rem.i.decomposed = sub i32 %.frozen, %223
  %mul.i117 = shl nsw i32 %rem.i.decomposed, 2
  %224 = ptrtoint ptr %log_num.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %log_num.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %225)
  %cmp.i.i.not.i = icmp eq i32 %225, -1
  %add.i118 = select i1 %cmp.i.i.not.i, i32 1, i32 2
  %mul3.i = shl nsw i32 %div.i119, 1
  %shl.i = shl i32 %add.i118, %mul3.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !439
  tail call void @arm_heavy_mb() #10
  %226 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #10
  %227 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %base.i, align 4
  %virtbase.i = getelementptr inbounds %struct.d40_base, ptr %228, i32 0, i32 3
  %229 = ptrtoint ptr %virtbase.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %virtbase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %230, i32 16
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i117
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %226) #10, !srcloc !385
  %231 = ptrtoint ptr %log_num.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %log_num.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %232)
  %cmp.i.i67.i = icmp eq i32 %232, -1
  %mode_opt.i.i = getelementptr i8, ptr %chan, i32 148
  %233 = ptrtoint ptr %mode_opt.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %mode_opt.i.i, align 4
  %arrayidx.i.i = getelementptr [3 x i32], ptr @d40_get_prmo.phy_map, i32 0, i32 %234
  %arrayidx3.i.i = getelementptr [5 x i32], ptr @d40_get_prmo.log_map, i32 0, i32 %234
  %retval.0.in.i.i = select i1 %cmp.i.i67.i, ptr %arrayidx.i.i, ptr %arrayidx3.i.i
  %235 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %retval.0.i.i = load i32, ptr %retval.0.in.i.i, align 4
  %236 = ptrtoint ptr %phy_chan.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %phy_chan.i, align 4
  %num7.i = getelementptr inbounds %struct.d40_phy_res, ptr %237, i32 0, i32 2
  %238 = ptrtoint ptr %num7.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %num7.i, align 4
  %div8.i = sdiv i32 %239, 2
  %mul9.i = shl nsw i32 %div8.i, 1
  %shl10.i = shl i32 %retval.0.i.i, %mul9.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !440
  tail call void @arm_heavy_mb() #10
  %240 = tail call i32 @llvm.bswap.i32(i32 %shl10.i) #10
  %241 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %base.i, align 4
  %virtbase15.i = getelementptr inbounds %struct.d40_base, ptr %242, i32 0, i32 3
  %243 = ptrtoint ptr %virtbase15.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %virtbase15.i, align 4
  %add.ptr16.i = getelementptr i8, ptr %244, i32 24
  %add.ptr17.i = getelementptr i8, ptr %add.ptr16.i, i32 %mul.i117
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 %240) #10, !srcloc !385
  %245 = ptrtoint ptr %log_num.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %log_num.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %246)
  %cmp.i.i69.not.i = icmp eq i32 %246, -1
  br i1 %cmp.i.i69.not.i, label %if.then62.mark_last_busy_crit_edge, label %if.then.i126

if.then62.mark_last_busy_crit_edge:               ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #12
  br label %mark_last_busy

if.then.i126:                                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #12
  %247 = ptrtoint ptr %phy_chan.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %phy_chan.i, align 4
  %num20.i = getelementptr inbounds %struct.d40_phy_res, ptr %248, i32 0, i32 2
  %249 = ptrtoint ptr %num20.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %num20.i, align 4
  %shl21.i = shl i32 %250, 16
  %and.i = and i32 %shl21.i, 16711680
  %251 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %base.i, align 4
  %virtbase.i.i121 = getelementptr inbounds %struct.d40_base, ptr %252, i32 0, i32 3
  %253 = ptrtoint ptr %virtbase.i.i121 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %virtbase.i.i121, align 4
  %add.ptr.i.i122 = getelementptr i8, ptr %254, i32 1024
  %mul.i.i123 = shl i32 %250, 5
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i122, i32 %mul.i.i123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !441
  tail call void @arm_heavy_mb() #10
  %src_def_cfg.i124 = getelementptr i8, ptr %chan, i32 252
  %255 = ptrtoint ptr %src_def_cfg.i124 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %src_def_cfg.i124, align 4
  %257 = tail call i32 @llvm.bswap.i32(i32 %256) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 %257) #10, !srcloc !385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !442
  tail call void @arm_heavy_mb() #10
  %dst_def_cfg.i125 = getelementptr i8, ptr %chan, i32 256
  %258 = ptrtoint ptr %dst_def_cfg.i125 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %dst_def_cfg.i125, align 4
  %260 = tail call i32 @llvm.bswap.i32(i32 %259) #10
  %add.ptr30.i = getelementptr i8, ptr %add.ptr1.i.i, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i, i32 %260) #10, !srcloc !385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !443
  tail call void @arm_heavy_mb() #10
  %add.ptr34.i = getelementptr i8, ptr %add.ptr1.i.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i, i32 %and.i) #10, !srcloc !385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !444
  tail call void @arm_heavy_mb() #10
  %add.ptr38.i = getelementptr i8, ptr %add.ptr1.i.i, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38.i, i32 %and.i) #10, !srcloc !385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !445
  tail call void @arm_heavy_mb() #10
  %add.ptr42.i = getelementptr i8, ptr %add.ptr1.i.i, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42.i, i32 0) #10, !srcloc !385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !446
  tail call void @arm_heavy_mb() #10
  %add.ptr46.i = getelementptr i8, ptr %add.ptr1.i.i, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46.i, i32 0) #10, !srcloc !385
  br label %mark_last_busy

mark_last_busy:                                   ; preds = %if.then.i126, %if.then62.mark_last_busy_crit_edge, %do.end60.mark_last_busy_crit_edge, %do.end19, %do.end11
  %err.0 = phi i32 [ -22, %do.end19 ], [ 0, %do.end60.mark_last_busy_crit_edge ], [ -22, %do.end11 ], [ 0, %if.then62.mark_last_busy_crit_edge ], [ 0, %if.then.i126 ]
  %base64 = getelementptr i8, ptr %chan, i32 248
  %261 = ptrtoint ptr %base64 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %base64, align 4
  %dev65 = getelementptr inbounds %struct.d40_base, ptr %262, i32 0, i32 2
  %263 = ptrtoint ptr %dev65 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %dev65, align 4
  %call.i128 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %264, i32 0, i32 12, i32 22
  %265 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %265)
  store volatile i64 %call.i128, ptr %last_busy.i, align 8
  %266 = ptrtoint ptr %base64 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %base64, align 4
  %dev67 = getelementptr inbounds %struct.d40_base, ptr %267, i32 0, i32 2
  %268 = ptrtoint ptr %dev67 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %dev67, align 4
  %call.i129 = tail call i32 @__pm_runtime_suspend(ptr noundef %269, i32 noundef 13) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call3) #10
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @d40_free_chan_resources(ptr noundef %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %chan, i32 -60
  %phy_chan = getelementptr i8, ptr %chan, i32 -4
  %0 = ptrtoint ptr %phy_chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_chan, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end, label %do.body2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr i8, ptr %chan, i32 20
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %3, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i, ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.172) #13
  br label %cleanup

do.body2:                                         ; preds = %entry
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #10
  %dma_cfg.i = getelementptr i8, ptr %chan, i32 136
  %dev_type.i = getelementptr i8, ptr %chan, i32 152
  %4 = ptrtoint ptr %dev_type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dev_type.i, align 4
  %rem.i = srem i32 %5, 16
  %6 = ptrtoint ptr %phy_chan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy_chan, align 4
  tail call fastcc void @d40_term_all(ptr noundef %add.ptr) #10
  %cmp.i = icmp eq ptr %7, null
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i.i = getelementptr i8, ptr %chan, i32 20
  %8 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i.i, align 4
  %device.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %9, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i.i, ptr noundef nonnull @.str.176, ptr noundef nonnull @.str.177) #13
  br label %do.end15

if.end.i:                                         ; preds = %do.body2
  %allocated_src.i = getelementptr inbounds %struct.d40_phy_res, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %allocated_src.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %allocated_src.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %11)
  %cmp1.i = icmp eq i32 %11, -2147483648
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.end8.i_crit_edge

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %allocated_dst.i = getelementptr inbounds %struct.d40_phy_res, ptr %7, i32 0, i32 4
  %12 = ptrtoint ptr %allocated_dst.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %allocated_dst.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %13)
  %cmp2.i = icmp eq i32 %13, -2147483648
  br i1 %cmp2.i, label %do.end6.i, label %land.lhs.true.i.if.end8.i_crit_edge

land.lhs.true.i.if.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

do.end6.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i92.i = getelementptr i8, ptr %chan, i32 20
  %14 = ptrtoint ptr %dev.i92.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i92.i, align 4
  %device.i93.i = getelementptr inbounds %struct.dma_chan_dev, ptr %15, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i93.i, ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.177) #13
  br label %do.end15

if.end8.i:                                        ; preds = %land.lhs.true.i.if.end8.i_crit_edge, %if.end.i.if.end8.i_crit_edge
  %16 = ptrtoint ptr %dma_cfg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_cfg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %18 = icmp ult i32 %17, 3
  br i1 %18, label %switch.lookup, label %do.end22.i

do.end22.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i94.i = getelementptr i8, ptr %chan, i32 20
  %19 = ptrtoint ptr %dev.i94.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i94.i, align 4
  %device.i95.i = getelementptr inbounds %struct.dma_chan_dev, ptr %20, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i95.i, ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.177) #13
  br label %do.end15

switch.lookup:                                    ; preds = %if.end8.i
  %switch.cast = trunc i32 %17 to i3
  %21 = sext i3 %switch.cast to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %21)
  %switch.masked.not.not = icmp eq i3 %switch.cast, 2
  %base.i = getelementptr i8, ptr %chan, i32 248
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 4
  %dev.i26 = getelementptr inbounds %struct.d40_base, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %dev.i26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i26, align 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %25, i32 noundef 4) #10
  %call27.i = tail call fastcc i32 @d40_channel_execute_command(ptr noundef %add.ptr, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool.not.i, label %if.end33.i, label %do.end31.i

do.end31.i:                                       ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i96.i = getelementptr i8, ptr %chan, i32 20
  %26 = ptrtoint ptr %dev.i96.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i96.i, align 4
  %device.i97.i = getelementptr inbounds %struct.dma_chan_dev, ptr %27, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i97.i, ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.177) #13
  %28 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i, align 4
  %dev55.i.c = getelementptr inbounds %struct.d40_base, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %dev55.i.c to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev55.i.c, align 4
  %call.i102.i.c = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i103.i.c = getelementptr inbounds %struct.device, ptr %31, i32 0, i32 12, i32 22
  %32 = ptrtoint ptr %last_busy.i103.i.c to i32
  call void @__asan_store8_noabort(i32 %32)
  store volatile i64 %call.i102.i.c, ptr %last_busy.i103.i.c, align 8
  %33 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i, align 4
  %dev57.i.c = getelementptr inbounds %struct.d40_base, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %dev57.i.c to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev57.i.c, align 4
  %call.i104.i.c = tail call i32 @__pm_runtime_suspend(ptr noundef %36, i32 noundef 13) #10
  br label %do.end15

if.end33.i:                                       ; preds = %switch.lookup
  %log_num.i.i.i = getelementptr i8, ptr %chan, i32 -16
  %37 = ptrtoint ptr %log_num.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %log_num.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %cmp.i.i.not.i = icmp eq i32 %38, -1
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i105.i = icmp eq i32 %rem.i, 0
  %tobool.not.i.i = select i1 %cmp.i.i.not.i, i1 true, i1 %tobool.not.i105.i
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  %allocated_dst.i.i = getelementptr inbounds %struct.d40_phy_res, ptr %7, i32 0, i32 4
  %39 = ptrtoint ptr %allocated_dst.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -2147483648, ptr %allocated_dst.i.i, align 4
  %40 = ptrtoint ptr %allocated_src.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -2147483648, ptr %allocated_src.i, align 4
  br label %d40_alloc_mask_free.exit.i

if.end.i.i:                                       ; preds = %if.end33.i
  %shl.i.i = shl nuw nsw i32 1, %rem.i
  %neg.i.i = xor i32 %shl.i.i, -1
  br i1 %switch.masked.not.not, label %if.then6.i.i, label %if.else.i.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %allocated_src.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %allocated_src.i, align 4
  %and.i.i = and i32 %42, %neg.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp9.i.i = icmp eq i32 %and.i.i, 0
  %spec.store.select.i.i = select i1 %cmp9.i.i, i32 -2147483648, i32 %and.i.i
  %43 = ptrtoint ptr %allocated_src.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %spec.store.select.i.i, ptr %allocated_src.i, align 4
  br label %d40_alloc_mask_free.exit.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %allocated_dst16.i.i = getelementptr inbounds %struct.d40_phy_res, ptr %7, i32 0, i32 4
  %44 = ptrtoint ptr %allocated_dst16.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %allocated_dst16.i.i, align 4
  %and17.i.i = and i32 %45, %neg.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i.i)
  %cmp19.i.i = icmp eq i32 %and17.i.i, 0
  %spec.store.select1.i.i = select i1 %cmp19.i.i, i32 -2147483648, i32 %and17.i.i
  %46 = ptrtoint ptr %allocated_dst16.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %spec.store.select1.i.i, ptr %allocated_dst16.i.i, align 4
  br label %d40_alloc_mask_free.exit.i

d40_alloc_mask_free.exit.i:                       ; preds = %if.else.i.i, %if.then6.i.i, %if.then.i.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %7, i32 noundef %call2.i.i) #10
  %47 = ptrtoint ptr %log_num.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %log_num.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %48)
  %cmp.i.i99.not.i = icmp eq i32 %48, -1
  %49 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base.i, align 4
  br i1 %cmp.i.i99.not.i, label %if.else40.i, label %if.then38.i

if.then38.i:                                      ; preds = %d40_alloc_mask_free.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %lookup_log_chans.i = getelementptr inbounds %struct.d40_base, ptr %50, i32 0, i32 17
  %51 = ptrtoint ptr %lookup_log_chans.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %lookup_log_chans.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %52, i32 %48
  br label %if.end43.i

if.else40.i:                                      ; preds = %d40_alloc_mask_free.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %lookup_phy_chans.i = getelementptr inbounds %struct.d40_base, ptr %50, i32 0, i32 18
  %53 = ptrtoint ptr %lookup_phy_chans.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %lookup_phy_chans.i, align 4
  %num.i = getelementptr inbounds %struct.d40_phy_res, ptr %7, i32 0, i32 2
  %55 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %num.i, align 4
  %arrayidx42.i = getelementptr ptr, ptr %54, i32 %56
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.else40.i, %if.then38.i
  %arrayidx42.sink.i = phi ptr [ %arrayidx42.i, %if.else40.i ], [ %arrayidx.i, %if.then38.i ]
  %57 = ptrtoint ptr %arrayidx42.sink.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %arrayidx42.sink.i, align 4
  %busy.i = getelementptr i8, ptr %chan, i32 -8
  %58 = ptrtoint ptr %busy.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %busy.i, align 4, !range !386
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool44.not.i = icmp eq i8 %59, 0
  br i1 %tobool44.not.i, label %if.end43.i.if.end51.i_crit_edge, label %if.then45.i

if.end43.i.if.end51.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51.i

if.then45.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base.i, align 4
  %dev47.i = getelementptr inbounds %struct.d40_base, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %dev47.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev47.i, align 4
  %call.i100.i = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %63, i32 0, i32 12, i32 22
  %64 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %64)
  store volatile i64 %call.i100.i, ptr %last_busy.i.i, align 8
  %65 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base.i, align 4
  %dev49.i = getelementptr inbounds %struct.d40_base, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %dev49.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev49.i, align 4
  %call.i101.i = tail call i32 @__pm_runtime_suspend(ptr noundef %68, i32 noundef 13) #10
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then45.i, %if.end43.i.if.end51.i_crit_edge
  %69 = ptrtoint ptr %busy.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %busy.i, align 4
  %70 = ptrtoint ptr %phy_chan to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %phy_chan, align 4
  %configured.i = getelementptr i8, ptr %chan, i32 244
  %71 = ptrtoint ptr %configured.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %configured.i, align 4
  %72 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %base.i, align 4
  %dev55.i = getelementptr inbounds %struct.d40_base, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %dev55.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev55.i, align 4
  %call.i102.i = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i103.i = getelementptr inbounds %struct.device, ptr %75, i32 0, i32 12, i32 22
  %76 = ptrtoint ptr %last_busy.i103.i to i32
  call void @__asan_store8_noabort(i32 %76)
  store volatile i64 %call.i102.i, ptr %last_busy.i103.i, align 8
  %77 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %base.i, align 4
  %dev57.i = getelementptr inbounds %struct.d40_base, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %dev57.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev57.i, align 4
  %call.i104.i = tail call i32 @__pm_runtime_suspend(ptr noundef %80, i32 noundef 13) #10
  br i1 %tobool.not.i, label %if.end51.i.if.end17_crit_edge, label %if.end51.i.do.end15_crit_edge

if.end51.i.do.end15_crit_edge:                    ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end15

if.end51.i.if.end17_crit_edge:                    ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

do.end15:                                         ; preds = %if.end51.i.do.end15_crit_edge, %do.end31.i, %do.end22.i, %do.end6.i, %do.end.i
  %dev.i27 = getelementptr i8, ptr %chan, i32 20
  %81 = ptrtoint ptr %dev.i27 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev.i27, align 4
  %device.i28 = getelementptr inbounds %struct.dma_chan_dev, ptr %82, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i28, ptr noundef nonnull @.str.174, ptr noundef nonnull @.str.172) #13
  br label %if.end17

if.end17:                                         ; preds = %do.end15, %if.end51.i.if.end17_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call6) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @d40_issue_pending(ptr noundef %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %chan, i32 -60
  %phy_chan = getelementptr i8, ptr %chan, i32 -4
  %0 = ptrtoint ptr %phy_chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_chan, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end, label %do.body2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr i8, ptr %chan, i32 20
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %3, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i, ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.187) #13
  br label %cleanup

do.body2:                                         ; preds = %entry
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #10
  %pending_queue = getelementptr i8, ptr %chan, i32 96
  %4 = ptrtoint ptr %pending_queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %pending_queue, align 4
  %cmp.i.not.i = icmp eq ptr %5, %pending_queue
  br i1 %cmp.i.not.i, label %do.body2.list_splice_tail_init.exit_crit_edge, label %if.then.i

do.body2.list_splice_tail_init.exit_crit_edge:    ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_tail_init.exit

if.then.i:                                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  %queue = getelementptr i8, ptr %chan, i32 120
  %prev.i = getelementptr i8, ptr %chan, i32 124
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i, align 4
  %prev2.i.i = getelementptr i8, ptr %chan, i32 100
  %8 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %5, ptr %7, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %queue, ptr %9, align 4
  store ptr %9, ptr %prev.i, align 4
  %13 = ptrtoint ptr %pending_queue to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %pending_queue, ptr %pending_queue, align 4
  store ptr %pending_queue, ptr %prev2.i.i, align 4
  br label %list_splice_tail_init.exit

list_splice_tail_init.exit:                       ; preds = %if.then.i, %do.body2.list_splice_tail_init.exit_crit_edge
  %busy = getelementptr i8, ptr %chan, i32 -8
  %14 = ptrtoint ptr %busy to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %busy, align 4, !range !386
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %if.then11, label %list_splice_tail_init.exit.if.end13_crit_edge

list_splice_tail_init.exit.if.end13_crit_edge:    ; preds = %list_splice_tail_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then11:                                        ; preds = %list_splice_tail_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call12 = tail call fastcc ptr @d40_queue_start(ptr noundef %add.ptr)
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %list_splice_tail_init.exit.if.end13_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call6) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @d40_tx_status(ptr noundef %chan, i32 noundef %cookie, ptr noundef writeonly %txstate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %chan, i32 -60
  %phy_chan = getelementptr i8, ptr %chan, i32 -4
  %0 = ptrtoint ptr %phy_chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_chan, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr i8, ptr %chan, i32 20
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %3, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i, ptr noundef nonnull @.str.188, ptr noundef nonnull @.str.189) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %cookie1.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 2
  %4 = ptrtoint ptr %cookie1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cookie1.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 3
  %6 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %completed_cookie.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !447
  %tobool.not.i = icmp eq ptr %txstate, null
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %txstate to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %txstate, align 4
  %used2.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 1
  %9 = ptrtoint ptr %used2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %5, ptr %used2.i, align 4
  %residue.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 2
  %10 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %residue.i, align 4
  %in_flight_bytes.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 3
  %11 = ptrtoint ptr %in_flight_bytes.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %in_flight_bytes.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp.not.i.i = icmp sgt i32 %7, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %cookie)
  %cmp4.not.i.i = icmp sge i32 %7, %cookie
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %cookie)
  %cmp5.i.i = icmp slt i32 %5, %cookie
  br i1 %cmp.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  %or.cond.i.i = or i1 %cmp5.i.i, %cmp4.not.i.i
  %brmerge = or i1 %tobool.not.i, %or.cond.i.i
  %not.or.cond.i.i = xor i1 %or.cond.i.i, true
  br i1 %brmerge, label %if.then.i.i.if.end5_crit_edge, label %if.then.i.i.if.then3_crit_edge

if.then.i.i.if.then3_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

if.then.i.i.if.end5_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.else.i.i:                                      ; preds = %if.end.i
  %or.cond16.i.i = and i1 %cmp5.i.i, %cmp4.not.i.i
  %brmerge31 = or i1 %tobool.not.i, %or.cond16.i.i
  %not.or.cond16.i.i = xor i1 %or.cond16.i.i, true
  br i1 %brmerge31, label %if.else.i.i.if.end5_crit_edge, label %if.else.i.i.if.then3_crit_edge

if.else.i.i.if.then3_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

if.else.i.i.if.end5_crit_edge:                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then3:                                         ; preds = %if.else.i.i.if.then3_crit_edge, %if.then.i.i.if.then3_crit_edge
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #10
  %log_num.i.i.i.i = getelementptr i8, ptr %chan, i32 -16
  %12 = ptrtoint ptr %log_num.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %log_num.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp.i.i.not.i.i = icmp eq i32 %13, -1
  br i1 %cmp.i.i.not.i.i, label %if.else.i.i18, label %if.then.i.i17

if.then.i.i17:                                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %lcpa.i.i = getelementptr i8, ptr %chan, i32 268
  %14 = ptrtoint ptr %lcpa.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lcpa.i.i, align 4
  %lcsp2.i.i = getelementptr inbounds %struct.d40_log_lli_full, ptr %15, i32 0, i32 2
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %lcsp2.i.i) #10, !srcloc !382
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  br label %dma_set_residue.exit

if.else.i.i18:                                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %base.i.i.i = getelementptr i8, ptr %chan, i32 248
  %17 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i.i.i, align 4
  %virtbase.i.i.i = getelementptr inbounds %struct.d40_base, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %virtbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %virtbase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %20, i32 1024
  %21 = ptrtoint ptr %phy_chan to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %phy_chan, align 4
  %num.i.i.i = getelementptr inbounds %struct.d40_phy_res, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %num.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num.i.i.i, align 4
  %mul.i.i.i = shl i32 %24, 5
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %mul.i.i.i
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr1.i.i.i, i32 20
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !382
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !403
  br label %dma_set_residue.exit

dma_set_residue.exit:                             ; preds = %if.else.i.i18, %if.then.i.i17
  %.sink14.i.i = phi i32 [ %25, %if.else.i.i18 ], [ %16, %if.then.i.i17 ]
  %26 = and i32 %.sink14.i.i, 65535
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #10
  %num_elt.0.i.i = lshr exact i32 %27, 16
  %data_width.i.i = getelementptr i8, ptr %chan, i32 176
  %28 = ptrtoint ptr %data_width.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %data_width.i.i, align 4
  %mul.i.i = mul i32 %num_elt.0.i.i, %29
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call3.i) #10
  %residue1.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 2
  %30 = ptrtoint ptr %residue1.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %mul.i.i, ptr %residue1.i, align 4
  br label %if.end5

if.end5:                                          ; preds = %dma_set_residue.exit, %if.else.i.i.if.end5_crit_edge, %if.then.i.i.if.end5_crit_edge
  %retval.0.i.i29.shrunk = phi i1 [ true, %dma_set_residue.exit ], [ %not.or.cond.i.i, %if.then.i.i.if.end5_crit_edge ], [ %not.or.cond16.i.i, %if.else.i.i.if.end5_crit_edge ]
  %retval.0.i.i29 = zext i1 %retval.0.i.i29.shrunk to i32
  %base.i.i = getelementptr i8, ptr %chan, i32 248
  %31 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i.i, align 4
  %virtbase.i.i = getelementptr inbounds %struct.d40_base, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %virtbase.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %virtbase.i.i, align 4
  %add.ptr.i.i22 = getelementptr i8, ptr %34, i32 1024
  %35 = ptrtoint ptr %phy_chan to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %phy_chan, align 4
  %num.i.i = getelementptr inbounds %struct.d40_phy_res, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num.i.i, align 4
  %mul.i.i23 = shl i32 %38, 5
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i22, i32 %mul.i.i23
  %dev_type.i = getelementptr i8, ptr %chan, i32 152
  %39 = ptrtoint ptr %dev_type.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dev_type.i, align 4
  %rem.i = srem i32 %40, 16
  %call3.i24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #10
  %log_num.i.i = getelementptr i8, ptr %chan, i32 -16
  %41 = ptrtoint ptr %log_num.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %log_num.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %42)
  %cmp.i.i = icmp eq i32 %42, -1
  br i1 %cmp.i.i, label %d40_is_paused.exit, label %if.end29.i

if.end29.i:                                       ; preds = %if.end5
  %dma_cfg.i = getelementptr i8, ptr %chan, i32 136
  %43 = ptrtoint ptr %dma_cfg.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dma_cfg.i, align 4
  %45 = zext i32 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.207)
  switch i32 %44, label %d40_is_paused.exit.thread [
    i32 1, label %if.end29.i.if.then38.i_crit_edge
    i32 0, label %if.end29.i.if.then38.i_crit_edge33
    i32 2, label %if.then50.i
  ]

if.end29.i.if.then38.i_crit_edge33:               ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then38.i

if.end29.i.if.then38.i_crit_edge:                 ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.end29.i.if.then38.i_crit_edge, %if.end29.i.if.then38.i_crit_edge33
  %add.ptr41.i = getelementptr i8, ptr %add.ptr1.i.i, i32 28
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41.i) #10, !srcloc !382
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !448
  br label %if.end63.i

if.then50.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr53.i = getelementptr i8, ptr %add.ptr1.i.i, i32 12
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr53.i) #10, !srcloc !382
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !449
  br label %if.end63.i

d40_is_paused.exit.thread:                        ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i.i = getelementptr i8, ptr %chan, i32 20
  %50 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i.i, align 4
  %device.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %51, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i.i, ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.190) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call3.i24) #10
  br label %cleanup

if.end63.i:                                       ; preds = %if.then50.i, %if.then38.i
  %status.0.i = phi i32 [ %47, %if.then38.i ], [ %49, %if.then50.i ]
  %mul64.i = shl nsw i32 %rem.i, 1
  %shl65.i = shl i32 3, %mul64.i
  %and66.i = and i32 %status.0.i, %shl65.i
  %shr68.i = lshr i32 %and66.i, %mul64.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr68.i)
  %cmp69.not.i.not = icmp eq i32 %shr68.i, 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call3.i24) #10
  br i1 %cmp69.not.i.not, label %if.end63.i.cleanup_crit_edge, label %if.end63.i._crit_edge

if.end63.i._crit_edge:                            ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %68

if.end63.i.cleanup_crit_edge:                     ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

d40_is_paused.exit:                               ; preds = %if.end5
  %52 = ptrtoint ptr %phy_chan to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %phy_chan, align 4
  %num.i = getelementptr inbounds %struct.d40_phy_res, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num.i, align 4
  %56 = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp8.i = icmp eq i32 %56, 0
  %57 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base.i.i, align 4
  %virtbase.i = getelementptr inbounds %struct.d40_base, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %virtbase.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %virtbase.i, align 4
  %..i = select i1 %cmp8.i, i32 80, i32 84
  %add.ptr13.i = getelementptr i8, ptr %60, i32 %..i
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i) #10, !srcloc !382
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !450
  %63 = ptrtoint ptr %phy_chan to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %phy_chan, align 4
  %num18.i = getelementptr inbounds %struct.d40_phy_res, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %num18.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %num18.i, align 4
  %div.i = sdiv i32 %66, 2
  %mul.i = shl nsw i32 %div.i, 1
  %shl.i = shl i32 3, %mul.i
  %and.i = and i32 %shl.i, %62
  %shr.i = lshr i32 %and.i, %mul.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call3.i24) #10
  %67 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.208)
  switch i32 %shr.i, label %d40_is_paused.exit.cleanup_crit_edge [
    i32 3, label %d40_is_paused.exit._crit_edge
    i32 0, label %d40_is_paused.exit._crit_edge34
  ]

d40_is_paused.exit._crit_edge34:                  ; preds = %d40_is_paused.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %68

d40_is_paused.exit._crit_edge:                    ; preds = %d40_is_paused.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %68

d40_is_paused.exit.cleanup_crit_edge:             ; preds = %d40_is_paused.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

68:                                               ; preds = %d40_is_paused.exit._crit_edge, %d40_is_paused.exit._crit_edge34, %if.end63.i._crit_edge
  br label %cleanup

cleanup:                                          ; preds = %68, %d40_is_paused.exit.cleanup_crit_edge, %if.end63.i.cleanup_crit_edge, %d40_is_paused.exit.thread, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 2, %68 ], [ %retval.0.i.i29, %d40_is_paused.exit.cleanup_crit_edge ], [ %retval.0.i.i29, %d40_is_paused.exit.thread ], [ %retval.0.i.i29, %if.end63.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @d40_set_runtime_config(ptr nocapture noundef writeonly %chan, ptr nocapture noundef readonly %config) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %slave_config = getelementptr i8, ptr %chan, i32 196
  %0 = call ptr @memcpy(ptr %slave_config, ptr %config, i32 48)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @d40_pause(ptr noundef %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %chan, i32 -60
  %phy_chan = getelementptr i8, ptr %chan, i32 -4
  %0 = ptrtoint ptr %phy_chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_chan, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr i8, ptr %chan, i32 20
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %3, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i, ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.191) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %busy = getelementptr i8, ptr %chan, i32 -8
  %4 = ptrtoint ptr %busy to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %busy, align 4, !range !386
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.body4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #10
  %base = getelementptr i8, ptr %chan, i32 248
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %dev = getelementptr inbounds %struct.d40_base, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #10
  %call14 = tail call fastcc i32 @d40_channel_execute_command(ptr noundef %add.ptr, i32 noundef 2)
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %dev16 = getelementptr inbounds %struct.d40_base, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev16, align 4
  %call.i31 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 12, i32 22
  %14 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store volatile i64 %call.i31, ptr %last_busy.i, align 8
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %dev18 = getelementptr inbounds %struct.d40_base, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev18, align 4
  %call.i32 = tail call i32 @__pm_runtime_suspend(ptr noundef %18, i32 noundef 13) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call8) #10
  br label %cleanup

cleanup:                                          ; preds = %do.body4, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call14, %do.body4 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @d40_resume(ptr noundef %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %chan, i32 -60
  %phy_chan = getelementptr i8, ptr %chan, i32 -4
  %0 = ptrtoint ptr %phy_chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_chan, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr i8, ptr %chan, i32 20
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %3, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i, ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.192) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %busy = getelementptr i8, ptr %chan, i32 -8
  %4 = ptrtoint ptr %busy to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %busy, align 4, !range !386
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.body4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body4:                                         ; preds = %if.end
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #10
  %base = getelementptr i8, ptr %chan, i32 248
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %dev = getelementptr inbounds %struct.d40_base, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #10
  %log_num.i.i.i = getelementptr i8, ptr %chan, i32 -16
  %10 = ptrtoint ptr %log_num.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %log_num.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp.i.i.not.i = icmp eq i32 %11, -1
  br i1 %cmp.i.i.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  %lcpa.i = getelementptr i8, ptr %chan, i32 268
  %12 = ptrtoint ptr %lcpa.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lcpa.i, align 4
  %lcsp2.i = getelementptr inbounds %struct.d40_log_lli_full, ptr %13, i32 0, i32 2
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %lcsp2.i) #10, !srcloc !382
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  br label %d40_residue.exit

if.else.i:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %virtbase.i.i = getelementptr inbounds %struct.d40_base, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %virtbase.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %virtbase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 1024
  %19 = ptrtoint ptr %phy_chan to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %phy_chan, align 4
  %num.i.i = getelementptr inbounds %struct.d40_phy_res, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num.i.i, align 4
  %mul.i.i = shl i32 %22, 5
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %add.ptr.i = getelementptr i8, ptr %add.ptr1.i.i, i32 20
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !382
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !403
  br label %d40_residue.exit

d40_residue.exit:                                 ; preds = %if.else.i, %if.then.i
  %.sink14.i = phi i32 [ %23, %if.else.i ], [ %14, %if.then.i ]
  %24 = and i32 %.sink14.i, 65535
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #10
  %num_elt.0.i = lshr exact i32 %25, 16
  %data_width.i = getelementptr i8, ptr %chan, i32 176
  %26 = ptrtoint ptr %data_width.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %data_width.i, align 4
  %mul.i = mul i32 %num_elt.0.i, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %tobool15.not = icmp eq i32 %mul.i, 0
  br i1 %tobool15.not, label %lor.lhs.false, label %d40_residue.exit.if.then18_crit_edge

d40_residue.exit.if.then18_crit_edge:             ; preds = %d40_residue.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18

lor.lhs.false:                                    ; preds = %d40_residue.exit
  %28 = ptrtoint ptr %log_num.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %log_num.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %cmp.i.i.not.i40 = icmp eq i32 %29, -1
  br i1 %cmp.i.i.not.i40, label %if.else.i51, label %if.then.i42

if.then.i42:                                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %lcpa.i41 = getelementptr i8, ptr %chan, i32 268
  %30 = ptrtoint ptr %lcpa.i41 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %lcpa.i41, align 4
  %lcsp3.i = getelementptr inbounds %struct.d40_log_lli_full, ptr %31, i32 0, i32 3
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %lcsp3.i) #10, !srcloc !382
  %33 = lshr i32 %32, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !400
  %and.i = and i32 %33, 254
  br label %d40_tx_is_linked.exit

if.else.i51:                                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base, align 4
  %virtbase.i.i44 = getelementptr inbounds %struct.d40_base, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %virtbase.i.i44 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %virtbase.i.i44, align 4
  %add.ptr.i.i45 = getelementptr i8, ptr %37, i32 1024
  %38 = ptrtoint ptr %phy_chan to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %phy_chan, align 4
  %num.i.i47 = getelementptr inbounds %struct.d40_phy_res, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %num.i.i47 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num.i.i47, align 4
  %mul.i.i48 = shl i32 %41, 5
  %add.ptr1.i.i49 = getelementptr i8, ptr %add.ptr.i.i45, i32 %mul.i.i48
  %add.ptr.i50 = getelementptr i8, ptr %add.ptr1.i.i49, i32 28
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i50) #10, !srcloc !382
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  %43 = and i32 %42, -117440513
  br label %d40_tx_is_linked.exit

d40_tx_is_linked.exit:                            ; preds = %if.else.i51, %if.then.i42
  %is_link.0.in.in.i = phi i32 [ %and.i, %if.then.i42 ], [ %43, %if.else.i51 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_link.0.in.in.i)
  %is_link.0.in.i.not = icmp eq i32 %is_link.0.in.in.i, 0
  br i1 %is_link.0.in.i.not, label %d40_tx_is_linked.exit.if.end20_crit_edge, label %d40_tx_is_linked.exit.if.then18_crit_edge

d40_tx_is_linked.exit.if.then18_crit_edge:        ; preds = %d40_tx_is_linked.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18

d40_tx_is_linked.exit.if.end20_crit_edge:         ; preds = %d40_tx_is_linked.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then18:                                        ; preds = %d40_tx_is_linked.exit.if.then18_crit_edge, %d40_residue.exit.if.then18_crit_edge
  %call19 = tail call fastcc i32 @d40_channel_execute_command(ptr noundef %add.ptr, i32 noundef 1)
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %d40_tx_is_linked.exit.if.end20_crit_edge
  %res.0 = phi i32 [ %call19, %if.then18 ], [ 0, %d40_tx_is_linked.exit.if.end20_crit_edge ]
  %44 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base, align 4
  %dev22 = getelementptr inbounds %struct.d40_base, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev22, align 4
  %call.i52 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %47, i32 0, i32 12, i32 22
  %48 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store volatile i64 %call.i52, ptr %last_busy.i, align 8
  %49 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base, align 4
  %dev24 = getelementptr inbounds %struct.d40_base, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev24, align 4
  %call.i53 = tail call i32 @__pm_runtime_suspend(ptr noundef %52, i32 noundef 13) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call8) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %res.0, %if.end20 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @d40_terminate_all(ptr noundef %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %chan, i32 -60
  %phy_chan = getelementptr i8, ptr %chan, i32 -4
  %0 = ptrtoint ptr %phy_chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_chan, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end, label %do.body2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr i8, ptr %chan, i32 20
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %3, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i, ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.193) #13
  br label %cleanup

do.body2:                                         ; preds = %entry
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #10
  %base = getelementptr i8, ptr %chan, i32 248
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %dev = getelementptr inbounds %struct.d40_base, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #10
  %call12 = tail call fastcc i32 @d40_channel_execute_command(ptr noundef %add.ptr, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %do.body2.if.end18_crit_edge, label %do.end16

do.body2.if.end18_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

do.end16:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i49 = getelementptr i8, ptr %chan, i32 20
  %8 = ptrtoint ptr %dev.i49 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i49, align 4
  %device.i50 = getelementptr inbounds %struct.dma_chan_dev, ptr %9, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i50, ptr noundef nonnull @.str.195, ptr noundef nonnull @.str.193) #13
  br label %if.end18

if.end18:                                         ; preds = %do.end16, %do.body2.if.end18_crit_edge
  tail call fastcc void @d40_term_all(ptr noundef %add.ptr)
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %dev20 = getelementptr inbounds %struct.d40_base, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev20, align 4
  %call.i51 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 12, i32 22
  %14 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store volatile i64 %call.i51, ptr %last_busy.i, align 8
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %dev22 = getelementptr inbounds %struct.d40_base, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev22, align 4
  %call.i52 = tail call i32 @__pm_runtime_suspend(ptr noundef %18, i32 noundef 13) #10
  %busy = getelementptr i8, ptr %chan, i32 -8
  %19 = ptrtoint ptr %busy to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %busy, align 4, !range !386
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool24.not = icmp eq i8 %20, 0
  br i1 %tobool24.not, label %if.end18.if.end31_crit_edge, label %if.then25

if.end18.if.end31_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then25:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base, align 4
  %dev27 = getelementptr inbounds %struct.d40_base, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev27, align 4
  %call.i53 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i54 = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 12, i32 22
  %25 = ptrtoint ptr %last_busy.i54 to i32
  call void @__asan_store8_noabort(i32 %25)
  store volatile i64 %call.i53, ptr %last_busy.i54, align 8
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base, align 4
  %dev29 = getelementptr inbounds %struct.d40_base, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev29, align 4
  %call.i55 = tail call i32 @__pm_runtime_suspend(ptr noundef %29, i32 noundef 13) #10
  br label %if.end31

if.end31:                                         ; preds = %if.then25, %if.end18.if.end31_crit_edge
  %30 = ptrtoint ptr %busy to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %busy, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call6) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end31 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @d40_prep_sg(ptr noundef %dchan, ptr noundef %sg_src, ptr noundef %sg_dst, i32 noundef %sg_len, i32 noundef %direction, i32 noundef %dma_flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dchan, i32 -60
  %phy_chan = getelementptr i8, ptr %dchan, i32 -4
  %0 = ptrtoint ptr %phy_chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_chan, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr i8, ptr %dchan, i32 20
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %3, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.129) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %slave_config = getelementptr i8, ptr %dchan, i32 196
  tail call fastcc void @d40_set_runtime_config_write(ptr noundef %dchan, ptr noundef %slave_config, i32 noundef %direction)
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #10
  %client.i.i = getelementptr i8, ptr %dchan, i32 88
  %4 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %client.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %5, %client.i.i
  br i1 %cmp.i.not.i.i, label %if.end.if.end19.i.i_crit_edge, label %if.end.for.cond.i.i_crit_edge

if.end.for.cond.i.i_crit_edge:                    ; preds = %if.end
  br label %for.cond.i.i

if.end.if.end19.i.i_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end.for.cond.i.i_crit_edge
  %.pn.in.i.i = phi ptr [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ %5, %if.end.for.cond.i.i_crit_edge ]
  %cmp.not.i.i = icmp eq ptr %.pn.in.i.i, %client.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.if.end19.i.i_crit_edge, label %for.body.i.i

for.cond.i.i.if.end19.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %6 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %flags.i.i.i = getelementptr i8, ptr %.pn.in.i.i, i32 -96
  %7 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i.i = and i32 %8, 2
  %cmp.i37.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i37.not.i.i, label %for.body.i.i.for.cond.i.i_crit_edge, label %if.then9.i.i

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i

if.then9.i.i:                                     ; preds = %for.body.i.i
  %d.0.le.i.i = getelementptr i8, ptr %.pn.in.i.i, i32 -188
  %call.i.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in.i.i) #10
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.then9.i.i.if.end15.i.i_crit_edge

if.then9.i.i.if.end15.i.i_crit_edge:              ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i.i = getelementptr i8, ptr %.pn.in.i.i, i32 4
  %9 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %11 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %.pn.in.i.i, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.end.i.i.i.i.i, %if.then9.i.i.if.end15.i.i_crit_edge
  %15 = call ptr @memset(ptr %d.0.le.i.i, i32 0, i32 200)
  %tobool16.not.i.i = icmp eq ptr %d.0.le.i.i, null
  br i1 %tobool16.not.i.i, label %if.end15.i.i.if.end19.i.i_crit_edge, label %if.end15.i.i.if.end.i_crit_edge

if.end15.i.i.if.end.i_crit_edge:                  ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end15.i.i.if.end19.i.i_crit_edge:              ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i.i

if.end19.i.i:                                     ; preds = %if.end15.i.i.if.end19.i.i_crit_edge, %for.cond.i.i.if.end19.i.i_crit_edge, %if.end.if.end19.i.i_crit_edge
  %base.i.i = getelementptr i8, ptr %dchan, i32 248
  %16 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i.i, align 4
  %desc_slab.i.i = getelementptr inbounds %struct.d40_base, ptr %17, i32 0, i32 26
  %18 = ptrtoint ptr %desc_slab.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %desc_slab.i.i, align 4
  %call.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %19, i32 noundef 2304) #10
  %tobool20.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool20.not.i.i, label %if.end19.i.i.unlock_crit_edge, label %if.end19.i.i.if.end.i_crit_edge

if.end19.i.i.if.end.i_crit_edge:                  ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end19.i.i.unlock_crit_edge:                    ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.end.i:                                         ; preds = %if.end19.i.i.if.end.i_crit_edge, %if.end15.i.i.if.end.i_crit_edge
  %desc.242.i.i = phi ptr [ %call.i.i.i, %if.end19.i.i.if.end.i_crit_edge ], [ %d.0.le.i.i, %if.end15.i.i.if.end.i_crit_edge ]
  %node22.i.i = getelementptr inbounds %struct.d40_desc, ptr %desc.242.i.i, i32 0, i32 7
  %20 = ptrtoint ptr %node22.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %node22.i.i, ptr %node22.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.d40_desc, ptr %desc.242.i.i, i32 0, i32 7, i32 1
  %21 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %node22.i.i, ptr %prev.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sg_len)
  %cmp17.i.i = icmp sgt i32 %sg_len, 0
  br i1 %cmp17.i.i, label %for.body.lr.ph.i.i, label %if.end6.thread.i

if.end6.thread.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %lli_len59.i = getelementptr inbounds %struct.d40_desc, ptr %desc.242.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %lli_len59.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %lli_len59.i, align 4
  %log_num.i.i.i63.i = getelementptr i8, ptr %dchan, i32 -16
  %23 = ptrtoint ptr %log_num.i.i.i63.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %log_num.i.i.i63.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp.i.i98.not.i64.i = icmp eq i32 %24, -1
  %..neg.i65.i = select i1 %cmp.i.i98.not.i64.i, i32 -16, i32 -8
  %..i66.i = select i1 %cmp.i.i98.not.i64.i, i32 16, i32 8
  br label %if.else5.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i
  %data_width1.i = getelementptr i8, ptr %dchan, i32 176
  %25 = ptrtoint ptr %data_width1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data_width1.i, align 4
  %data_width.i = getelementptr i8, ptr %dchan, i32 160
  %27 = ptrtoint ptr %data_width.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %data_width.i, align 4
  %29 = tail call i32 @llvm.umax.i32(i32 %28, i32 %26) #10
  %30 = tail call i32 @llvm.umin.i32(i32 %28, i32 %26) #10
  %mul.i.i.i = mul i32 %30, 65535
  %sub.i.i.i = add i32 %29, -1
  %add.i.i.i = add i32 %mul.i.i.i, %sub.i.i.i
  %neg.i.i.i = sub i32 0, %29
  %and.i.i38.i = and i32 %add.i.i.i, %neg.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %and.i.i38.i)
  %cmp8.i.i.i = icmp ugt i32 %and.i.i38.i, 65535
  %sub9.i.i.i = select i1 %cmp8.i.i.i, i32 %29, i32 0
  %seg_max.0.i.i.i = sub i32 %and.i.i38.i, %sub9.i.i.i
  br label %for.body.i39.i

for.body.i39.i:                                   ; preds = %if.end.i.i.for.body.i39.i_crit_edge, %for.body.lr.ph.i.i
  %len.020.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %add.i.i, %if.end.i.i.for.body.i39.i_crit_edge ]
  %i.019.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %if.end.i.i.for.body.i39.i_crit_edge ]
  %sg.018.i.i = phi ptr [ %sg_src, %for.body.lr.ph.i.i ], [ %call2.i.i, %if.end.i.i.for.body.i39.i_crit_edge ]
  %dma_length.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.018.i.i, i32 0, i32 4
  %31 = ptrtoint ptr %dma_length.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dma_length.i.i, align 4
  %and11.i.i.i = and i32 %32, %sub.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i.i)
  %cmp12.i.i.i = icmp eq i32 %and11.i.i.i, 0
  br i1 %cmp12.i.i.i, label %if.end14.i.i.i, label %for.body.i39.i.d40_sg_2_dmalen.exit.thread.i_crit_edge

for.body.i39.i.d40_sg_2_dmalen.exit.thread.i_crit_edge: ; preds = %for.body.i39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %d40_sg_2_dmalen.exit.thread.i

if.end14.i.i.i:                                   ; preds = %for.body.i39.i
  call void @__sanitizer_cov_trace_cmp4(i32 %seg_max.0.i.i.i, i32 %32)
  %cmp15.not.i.i.i = icmp ult i32 %seg_max.0.i.i.i, %32
  br i1 %cmp15.not.i.i.i, label %d40_size_2_dmalen.exit.i.i, label %if.end14.i.i.i.if.end.i.i_crit_edge

if.end14.i.i.i.if.end.i.i_crit_edge:              ; preds = %if.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

d40_size_2_dmalen.exit.i.i:                       ; preds = %if.end14.i.i.i
  %div.i.i.i = udiv i32 %32, %seg_max.0.i.i.i
  %mul17.i.i.i = mul i32 %div.i.i.i, %seg_max.0.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul17.i.i.i, i32 %32)
  %cmp18.i.i.i = icmp ult i32 %mul17.i.i.i, %32
  %inc.i.i.i = zext i1 %cmp18.i.i.i to i32
  %spec.select.i.i.i = add i32 %div.i.i.i, %inc.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i.i)
  %cmp1.i.i = icmp slt i32 %spec.select.i.i.i, 0
  br i1 %cmp1.i.i, label %d40_size_2_dmalen.exit.i.i.d40_sg_2_dmalen.exit.thread.i_crit_edge, label %d40_size_2_dmalen.exit.i.i.if.end.i.i_crit_edge

d40_size_2_dmalen.exit.i.i.if.end.i.i_crit_edge:  ; preds = %d40_size_2_dmalen.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

d40_size_2_dmalen.exit.i.i.d40_sg_2_dmalen.exit.thread.i_crit_edge: ; preds = %d40_size_2_dmalen.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %d40_sg_2_dmalen.exit.thread.i

if.end.i.i:                                       ; preds = %d40_size_2_dmalen.exit.i.i.if.end.i.i_crit_edge, %if.end14.i.i.i.if.end.i.i_crit_edge
  %retval.0.i16.i.i = phi i32 [ %spec.select.i.i.i, %d40_size_2_dmalen.exit.i.i.if.end.i.i_crit_edge ], [ 1, %if.end14.i.i.i.if.end.i.i_crit_edge ]
  %add.i.i = add i32 %retval.0.i16.i.i, %len.020.i.i
  %inc.i.i = add nuw nsw i32 %i.019.i.i, 1
  %call2.i.i = tail call ptr @sg_next(ptr noundef %sg.018.i.i) #10
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %sg_len
  br i1 %exitcond.not.i.i, label %d40_sg_2_dmalen.exit.i, label %if.end.i.i.for.body.i39.i_crit_edge

if.end.i.i.for.body.i39.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i39.i

d40_sg_2_dmalen.exit.thread.i:                    ; preds = %d40_size_2_dmalen.exit.i.i.d40_sg_2_dmalen.exit.thread.i_crit_edge, %for.body.i39.i.d40_sg_2_dmalen.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %spec.select.i.i.i, %d40_size_2_dmalen.exit.i.i.d40_sg_2_dmalen.exit.thread.i_crit_edge ], [ -22, %for.body.i39.i.d40_sg_2_dmalen.exit.thread.i_crit_edge ]
  %lli_len54.i = getelementptr inbounds %struct.d40_desc, ptr %desc.242.i.i, i32 0, i32 3
  %33 = ptrtoint ptr %lli_len54.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %retval.0.i.ph.i, ptr %lli_len54.i, align 4
  br label %free_desc.i

d40_sg_2_dmalen.exit.i:                           ; preds = %if.end.i.i
  %lli_len.i = getelementptr inbounds %struct.d40_desc, ptr %desc.242.i.i, i32 0, i32 3
  %34 = ptrtoint ptr %lli_len.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add.i.i, ptr %lli_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i)
  %cmp.i = icmp slt i32 %add.i.i, 0
  br i1 %cmp.i, label %d40_sg_2_dmalen.exit.i.free_desc.i_crit_edge, label %if.end6.i

d40_sg_2_dmalen.exit.i.free_desc.i_crit_edge:     ; preds = %d40_sg_2_dmalen.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_desc.i

if.end6.i:                                        ; preds = %d40_sg_2_dmalen.exit.i
  %log_num.i.i.i.i = getelementptr i8, ptr %dchan, i32 -16
  %35 = ptrtoint ptr %log_num.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %log_num.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %cmp.i.i98.not.i.i = icmp eq i32 %36, -1
  %..neg.i.i = select i1 %cmp.i.i98.not.i.i, i32 -16, i32 -8
  %..i.i = select i1 %cmp.i.i98.not.i.i, i32 16, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add.i.i)
  %cmp.i.i = icmp eq i32 %add.i.i, 1
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end6.i.if.else5.i.i_crit_edge

if.end6.i.if.else5.i.i_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else5.i.i

if.then1.i.i:                                     ; preds = %if.end6.i
  %lli_pool.i.i = getelementptr inbounds %struct.d40_desc, ptr %desc.242.i.i, i32 0, i32 2
  %pre_alloc_lli.i.i = getelementptr inbounds %struct.d40_desc, ptr %desc.242.i.i, i32 0, i32 2, i32 3
  %size.i.i = getelementptr inbounds %struct.d40_desc, ptr %desc.242.i.i, i32 0, i32 2, i32 1
  %37 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 48, ptr %size.i.i, align 4
  %38 = ptrtoint ptr %lli_pool.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %lli_pool.i.i, align 4
  %39 = ptrtoint ptr %pre_alloc_lli.i.i to i32
  %sub29.i75.i = add i32 %39, -1
  %add30.i76.i = add i32 %sub29.i75.i, %..i.i
  %and33.i77.i = and i32 %add30.i76.i, %..neg.i.i
  %40 = inttoptr i32 %and33.i77.i to ptr
  br i1 %cmp.i.i98.not.i.i, label %if.then1.i.i.if.else28.i.i_crit_edge, label %if.then1.i.i.d40_pool_lli_alloc.exit.i_crit_edge

if.then1.i.i.d40_pool_lli_alloc.exit.i_crit_edge: ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %d40_pool_lli_alloc.exit.i

if.then1.i.i.if.else28.i.i_crit_edge:             ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else28.i.i

if.else5.i.i:                                     ; preds = %if.end6.i.if.else5.i.i_crit_edge, %if.end6.thread.i
  %..i73.i = phi i32 [ %..i66.i, %if.end6.thread.i ], [ %..i.i, %if.end6.i.if.else5.i.i_crit_edge ]
  %..neg.i72.i = phi i32 [ %..neg.i65.i, %if.end6.thread.i ], [ %..neg.i.i, %if.end6.i.if.else5.i.i_crit_edge ]
  %cmp.i.i98.not.i70.i = phi i1 [ %cmp.i.i98.not.i64.i, %if.end6.thread.i ], [ %cmp.i.i98.not.i.i, %if.end6.i.if.else5.i.i_crit_edge ]
  %retval.0.i6168.i = phi i32 [ 0, %if.end6.thread.i ], [ %add.i.i, %if.end6.i.if.else5.i.i_crit_edge ]
  %mul.i.i = shl nuw i32 %retval.0.i6168.i, 1
  %mul6.i.i = mul i32 %mul.i.i, %..i73.i
  %lli_pool7.i.i = getelementptr inbounds %struct.d40_desc, ptr %desc.242.i.i, i32 0, i32 2
  %size8.i.i = getelementptr inbounds %struct.d40_desc, ptr %desc.242.i.i, i32 0, i32 2, i32 1
  %41 = ptrtoint ptr %size8.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %mul6.i.i, ptr %size8.i.i, align 4
  %add.i40.i = add i32 %mul6.i.i, %..i73.i
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i40.i, i32 noundef 2048) #15
  %42 = ptrtoint ptr %lli_pool7.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call9.i.i.i, ptr %lli_pool7.i.i, align 4
  %cmp16.i.i = icmp eq ptr %call9.i.i.i, null
  br i1 %cmp16.i.i, label %if.else5.i.i.free_desc.i_crit_edge, label %if.end19.i41.i

if.else5.i.i.free_desc.i_crit_edge:               ; preds = %if.else5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_desc.i

if.end19.i41.i:                                   ; preds = %if.else5.i.i
  %43 = ptrtoint ptr %call9.i.i.i to i32
  %sub29.i.i = add nsw i32 %..i73.i, -1
  %add30.i.i = add i32 %sub29.i.i, %43
  %and33.i.i = and i32 %add30.i.i, %..neg.i72.i
  %44 = inttoptr i32 %and33.i.i to ptr
  br i1 %cmp.i.i98.not.i70.i, label %if.end19.i41.i.if.else28.i.i_crit_edge, label %if.end19.i41.i.d40_pool_lli_alloc.exit.i_crit_edge

if.end19.i41.i.d40_pool_lli_alloc.exit.i_crit_edge: ; preds = %if.end19.i41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %d40_pool_lli_alloc.exit.i

if.end19.i41.i.if.else28.i.i_crit_edge:           ; preds = %if.end19.i41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else28.i.i

if.else28.i.i:                                    ; preds = %if.end19.i41.i.if.else28.i.i_crit_edge, %if.then1.i.i.if.else28.i.i_crit_edge
  %45 = phi ptr [ %40, %if.then1.i.i.if.else28.i.i_crit_edge ], [ %44, %if.end19.i41.i.if.else28.i.i_crit_edge ]
  %and33.i80.i = phi i32 [ %and33.i77.i, %if.then1.i.i.if.else28.i.i_crit_edge ], [ %and33.i.i, %if.end19.i41.i.if.else28.i.i_crit_edge ]
  %retval.0.i5679.i = phi i32 [ 1, %if.then1.i.i.if.else28.i.i_crit_edge ], [ %retval.0.i6168.i, %if.end19.i41.i.if.else28.i.i_crit_edge ]
  %46 = ptrtoint ptr %desc.242.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %desc.242.i.i, align 4
  %add.ptr37.i.i = getelementptr %struct.d40_phy_lli, ptr %45, i32 %retval.0.i5679.i
  %dst39.i.i = getelementptr inbounds %struct.d40_phy_lli_bidir, ptr %desc.242.i.i, i32 0, i32 1
  %47 = ptrtoint ptr %dst39.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %add.ptr37.i.i, ptr %dst39.i.i, align 4
  %base40.i.i = getelementptr i8, ptr %dchan, i32 248
  %48 = ptrtoint ptr %base40.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base40.i.i, align 4
  %dev.i43.i = getelementptr inbounds %struct.d40_base, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %dev.i43.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i43.i, align 4
  %size44.i.i = getelementptr inbounds %struct.d40_desc, ptr %desc.242.i.i, i32 0, i32 2, i32 1
  %52 = ptrtoint ptr %size44.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %size44.i.i, align 4
  %call.i.i44.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %45) #10
  br i1 %call.i.i44.i, label %land.rhs.i.i.i, label %if.end39.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.else28.i.i
  %.b1.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge, label %if.then.i100.i.i, !prof !396

land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_map_single_attrs.exit.i.i

if.then.i100.i.i:                                 ; preds = %land.rhs.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i = tail call ptr @dev_driver_string(ptr noundef %51) #10
  %init_name.i.i.i.i = getelementptr inbounds %struct.device, ptr %51, i32 0, i32 3
  %54 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i99.i.i = icmp eq ptr %55, null
  br i1 %tobool.not.i.i99.i.i, label %if.end.i.i101.i.i, label %if.then.i100.i.i.dev_name.exit.i.i.i_crit_edge

if.then.i100.i.i.dev_name.exit.i.i.i_crit_edge:   ; preds = %if.then.i100.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i.i.i

if.end.i.i101.i.i:                                ; preds = %if.then.i100.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %51, align 4
  br label %dev_name.exit.i.i.i

dev_name.exit.i.i.i:                              ; preds = %if.end.i.i101.i.i, %if.then.i100.i.i.dev_name.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %57, %if.end.i.i101.i.i ], [ %55, %if.then.i100.i.i.dev_name.exit.i.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.109, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.110, ptr noundef %call16.i.i.i, ptr noundef %retval.0.i.i.i.i) #10
  br label %dma_map_single_attrs.exit.i.i

if.end39.i.i.i:                                   ; preds = %if.else28.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @debug_dma_map_single(ptr noundef %51, ptr noundef %45, i32 noundef %53) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %58 = load ptr, ptr @mem_map, align 4
  %sub.i.i45.i = add i32 %and33.i80.i, 1073741824
  %shr.i.i.i = lshr i32 %sub.i.i45.i, 12
  %add.ptr.i.i.i = getelementptr %struct.page, ptr %58, i32 %shr.i.i.i
  %and.i.i46.i = and i32 %and33.i80.i, 4088
  %call41.i.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %51, ptr noundef %add.ptr.i.i.i, i32 noundef %and.i.i46.i, i32 noundef %53, i32 noundef 1, i32 noundef 0) #10
  br label %dma_map_single_attrs.exit.i.i

dma_map_single_attrs.exit.i.i:                    ; preds = %if.end39.i.i.i, %dev_name.exit.i.i.i, %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call41.i.i.i, %if.end39.i.i.i ], [ -1, %dev_name.exit.i.i.i ], [ -1, %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge ]
  %dma_addr47.i.i = getelementptr inbounds %struct.d40_desc, ptr %desc.242.i.i, i32 0, i32 2, i32 2
  %59 = ptrtoint ptr %dma_addr47.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %retval.0.i.i.i, ptr %dma_addr47.i.i, align 4
  %60 = ptrtoint ptr %base40.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base40.i.i, align 4
  %dev49.i.i = getelementptr inbounds %struct.d40_base, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %dev49.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev49.i.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %63, i32 noundef %retval.0.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i.i)
  %cmp.i102.i.i = icmp eq i32 %retval.0.i.i.i, -1
  br i1 %cmp.i102.i.i, label %d40_pool_lli_alloc.exit.thread89.i, label %dma_map_single_attrs.exit.i.i.d40_prep_desc.exit_crit_edge

dma_map_single_attrs.exit.i.i.d40_prep_desc.exit_crit_edge: ; preds = %dma_map_single_attrs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %d40_prep_desc.exit

d40_pool_lli_alloc.exit.thread89.i:               ; preds = %dma_map_single_attrs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %lli_pool43.i.i = getelementptr inbounds %struct.d40_desc, ptr %desc.242.i.i, i32 0, i32 2
  %64 = ptrtoint ptr %lli_pool43.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %lli_pool43.i.i, align 4
  tail call void @kfree(ptr noundef %65) #10
  %66 = ptrtoint ptr %lli_pool43.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %lli_pool43.i.i, align 4
  %67 = ptrtoint ptr %dma_addr47.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %dma_addr47.i.i, align 4
  br label %free_desc.i

d40_pool_lli_alloc.exit.i:                        ; preds = %if.end19.i41.i.d40_pool_lli_alloc.exit.i_crit_edge, %if.then1.i.i.d40_pool_lli_alloc.exit.i_crit_edge
  %68 = phi ptr [ %40, %if.then1.i.i.d40_pool_lli_alloc.exit.i_crit_edge ], [ %44, %if.end19.i41.i.d40_pool_lli_alloc.exit.i_crit_edge ]
  %retval.0.i5678.i = phi i32 [ 1, %if.then1.i.i.d40_pool_lli_alloc.exit.i_crit_edge ], [ %retval.0.i6168.i, %if.end19.i41.i.d40_pool_lli_alloc.exit.i_crit_edge ]
  %lli_log.i.i = getelementptr inbounds %struct.d40_desc, ptr %desc.242.i.i, i32 0, i32 1
  %69 = ptrtoint ptr %lli_log.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %68, ptr %lli_log.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.d40_log_lli, ptr %68, i32 %retval.0.i5678.i
  %dst.i.i = getelementptr inbounds %struct.d40_desc, ptr %desc.242.i.i, i32 0, i32 1, i32 1
  %70 = ptrtoint ptr %dst.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %add.ptr.i.i, ptr %dst.i.i, align 4
  %dma_addr.i.i = getelementptr inbounds %struct.d40_desc, ptr %desc.242.i.i, i32 0, i32 2, i32 2
  %71 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %dma_addr.i.i, align 4
  br label %d40_prep_desc.exit

free_desc.i:                                      ; preds = %d40_pool_lli_alloc.exit.thread89.i, %if.else5.i.i.free_desc.i_crit_edge, %d40_sg_2_dmalen.exit.i.free_desc.i_crit_edge, %d40_sg_2_dmalen.exit.thread.i
  %.str.154.sink.i = phi ptr [ @.str.151, %d40_sg_2_dmalen.exit.thread.i ], [ @.str.151, %d40_sg_2_dmalen.exit.i.free_desc.i_crit_edge ], [ @.str.154, %if.else5.i.i.free_desc.i_crit_edge ], [ @.str.154, %d40_pool_lli_alloc.exit.thread89.i ]
  %dev.i48.i = getelementptr i8, ptr %dchan, i32 20
  %72 = ptrtoint ptr %dev.i48.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev.i48.i, align 4
  %device.i49.i = getelementptr inbounds %struct.dma_chan_dev, ptr %73, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i49.i, ptr noundef nonnull %.str.154.sink.i, ptr noundef nonnull @.str.152) #13
  tail call fastcc void @d40_desc_free(ptr noundef %add.ptr, ptr noundef nonnull %desc.242.i.i) #10
  br label %unlock

d40_prep_desc.exit:                               ; preds = %d40_pool_lli_alloc.exit.i, %dma_map_single_attrs.exit.i.i.d40_prep_desc.exit_crit_edge
  %lli_current.i = getelementptr inbounds %struct.d40_desc, ptr %desc.242.i.i, i32 0, i32 4
  %74 = ptrtoint ptr %lli_current.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %lli_current.i, align 4
  %txd.i = getelementptr inbounds %struct.d40_desc, ptr %desc.242.i.i, i32 0, i32 6
  %flags.i = getelementptr inbounds %struct.d40_desc, ptr %desc.242.i.i, i32 0, i32 6, i32 1
  %75 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %dma_flags, ptr %flags.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.d40_desc, ptr %desc.242.i.i, i32 0, i32 6, i32 4
  %76 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @d40_tx_submit, ptr %tx_submit.i, align 4
  tail call void @dma_async_tx_descriptor_init(ptr noundef %txd.i, ptr noundef %dchan) #10
  %cmp12 = icmp eq ptr %desc.242.i.i, null
  br i1 %cmp12, label %d40_prep_desc.exit.unlock_crit_edge, label %if.end15

d40_prep_desc.exit.unlock_crit_edge:              ; preds = %d40_prep_desc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.end15:                                         ; preds = %d40_prep_desc.exit
  %sub = add i32 %sg_len, -1
  %arrayidx = getelementptr %struct.scatterlist, ptr %sg_src, i32 %sub
  %call16 = tail call ptr @sg_next(ptr noundef %arrayidx) #10
  %cmp17 = icmp eq ptr %call16, %sg_src
  br i1 %cmp17, label %if.then19, label %if.end15.if.end20_crit_edge

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %cyclic = getelementptr inbounds %struct.d40_desc, ptr %desc.242.i.i, i32 0, i32 9
  %77 = ptrtoint ptr %cyclic to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %cyclic, align 1
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end15.if.end20_crit_edge
  %78 = zext i32 %direction to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.209)
  switch i32 %direction, label %if.end20.if.end29_crit_edge [
    i32 2, label %if.then23
    i32 1, label %if.then26
  ]

if.end20.if.end29_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %runtime_addr = getelementptr i8, ptr %dchan, i32 272
  %79 = ptrtoint ptr %runtime_addr to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %runtime_addr, align 4
  br label %if.end29

if.then26:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %runtime_addr27 = getelementptr i8, ptr %dchan, i32 272
  %81 = ptrtoint ptr %runtime_addr27 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %runtime_addr27, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.then23, %if.end20.if.end29_crit_edge
  %src_dev_addr.0 = phi i32 [ %80, %if.then23 ], [ 0, %if.then26 ], [ 0, %if.end20.if.end29_crit_edge ]
  %dst_dev_addr.0 = phi i32 [ 0, %if.then23 ], [ %82, %if.then26 ], [ 0, %if.end20.if.end29_crit_edge ]
  %log_num.i.i = getelementptr i8, ptr %dchan, i32 -16
  %83 = ptrtoint ptr %log_num.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %log_num.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %84)
  %cmp.i.i88.not = icmp eq i32 %84, -1
  br i1 %cmp.i.i88.not, label %if.else33, label %if.then31

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %lli_log.i = getelementptr inbounds %struct.d40_desc, ptr %desc.242.i.i, i32 0, i32 1
  %85 = ptrtoint ptr %lli_log.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %lli_log.i, align 4
  %log_def.i = getelementptr i8, ptr %dchan, i32 260
  %lcsp1.i = getelementptr i8, ptr %dchan, i32 264
  %87 = ptrtoint ptr %lcsp1.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %lcsp1.i, align 4
  %data_width.i89 = getelementptr i8, ptr %dchan, i32 160
  %89 = ptrtoint ptr %data_width.i89 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %data_width.i89, align 4
  %data_width3.i = getelementptr i8, ptr %dchan, i32 176
  %91 = ptrtoint ptr %data_width3.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %data_width3.i, align 4
  %call.i = tail call i32 @d40_log_sg_to_lli(ptr noundef %sg_src, i32 noundef %sg_len, i32 noundef %src_dev_addr.0, ptr noundef %86, i32 noundef %88, i32 noundef %90, i32 noundef %92) #10
  %dst.i = getelementptr inbounds %struct.d40_desc, ptr %desc.242.i.i, i32 0, i32 1, i32 1
  %93 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dst.i, align 4
  %95 = ptrtoint ptr %log_def.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %log_def.i, align 4
  %97 = ptrtoint ptr %data_width3.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %data_width3.i, align 4
  %99 = ptrtoint ptr %data_width.i89 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %data_width.i89, align 4
  %call8.i = tail call i32 @d40_log_sg_to_lli(ptr noundef %sg_dst, i32 noundef %sg_len, i32 noundef %dst_dev_addr.0, ptr noundef %94, i32 noundef %96, i32 noundef %98, i32 noundef %100) #10
  br label %if.end35

if.else33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %src_info1.i = getelementptr i8, ptr %dchan, i32 156
  %dst_info2.i = getelementptr i8, ptr %dchan, i32 172
  %cyclic.i = getelementptr inbounds %struct.d40_desc, ptr %desc.242.i.i, i32 0, i32 9
  %101 = ptrtoint ptr %cyclic.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %cyclic.i, align 1, !range !386
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool.not.i = icmp eq i8 %102, 0
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 6
  %103 = ptrtoint ptr %desc.242.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %desc.242.i.i, align 4
  %105 = ptrtoint ptr %104 to i32
  %call.i.i = tail call i32 @__virt_to_phys(i32 noundef %105) #10
  %src_def_cfg.i = getelementptr i8, ptr %dchan, i32 252
  %106 = ptrtoint ptr %src_def_cfg.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %src_def_cfg.i, align 4
  %call5.i = tail call i32 @d40_phy_sg_to_lli(ptr noundef %sg_src, i32 noundef %sg_len, i32 noundef %src_dev_addr.0, ptr noundef %104, i32 noundef %call.i.i, i32 noundef %107, ptr noundef %src_info1.i, ptr noundef %dst_info2.i, i32 noundef %spec.select.i) #10
  %dst.i90 = getelementptr inbounds %struct.d40_phy_lli_bidir, ptr %desc.242.i.i, i32 0, i32 1
  %108 = ptrtoint ptr %dst.i90 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dst.i90, align 4
  %110 = ptrtoint ptr %109 to i32
  %call.i28.i = tail call i32 @__virt_to_phys(i32 noundef %110) #10
  %dst_def_cfg.i = getelementptr i8, ptr %dchan, i32 256
  %111 = ptrtoint ptr %dst_def_cfg.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %dst_def_cfg.i, align 4
  %call10.i = tail call i32 @d40_phy_sg_to_lli(ptr noundef %sg_dst, i32 noundef %sg_len, i32 noundef %dst_dev_addr.0, ptr noundef %109, i32 noundef %call.i28.i, i32 noundef %112, ptr noundef %dst_info2.i, ptr noundef %src_info1.i, i32 noundef %spec.select.i) #10
  %base.i = getelementptr i8, ptr %dchan, i32 248
  %113 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %base.i, align 4
  %dev.i91 = getelementptr inbounds %struct.d40_base, ptr %114, i32 0, i32 2
  %115 = ptrtoint ptr %dev.i91 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev.i91, align 4
  %dma_addr.i = getelementptr inbounds %struct.d40_desc, ptr %desc.242.i.i, i32 0, i32 2, i32 2
  %117 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %dma_addr.i, align 4
  %size.i = getelementptr inbounds %struct.d40_desc, ptr %desc.242.i.i, i32 0, i32 2, i32 1
  %119 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %size.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %116, i32 noundef %118, i32 noundef %120, i32 noundef 1) #10
  br label %if.end35

if.end35:                                         ; preds = %if.else33, %if.then31
  %call10.i.sink = phi i32 [ %call10.i, %if.else33 ], [ %call8.i, %if.then31 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call10.i.sink)
  %tobool36.not = icmp sgt i32 %call10.i.sink, -1
  br i1 %tobool36.not, label %if.end44, label %do.end40

do.end40:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i92 = getelementptr i8, ptr %dchan, i32 20
  %121 = ptrtoint ptr %dev.i92 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dev.i92, align 4
  %device.i93 = getelementptr inbounds %struct.dma_chan_dev, ptr %122, i32 0, i32 1
  %123 = ptrtoint ptr %log_num.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %log_num.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %124)
  %cmp.i.i95.not = icmp eq i32 %124, -1
  %cond = select i1 %cmp.i.i95.not, ptr @.str.134, ptr @.str.133
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i93, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.129, ptr noundef nonnull %cond, i32 noundef %call10.i.sink) #13
  tail call fastcc void @d40_desc_free(ptr noundef %add.ptr, ptr noundef nonnull %desc.242.i.i)
  br label %unlock

if.end44:                                         ; preds = %if.end35
  %prepare_queue = getelementptr i8, ptr %dchan, i32 128
  %prev.i = getelementptr i8, ptr %dchan, i32 132
  %125 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %prev.i, align 4
  %call.i.i96 = tail call zeroext i1 @__list_add_valid(ptr noundef %node22.i.i, ptr noundef %126, ptr noundef %prepare_queue) #10
  br i1 %call.i.i96, label %if.end.i.i97, label %if.end44.list_add_tail.exit_crit_edge

if.end44.list_add_tail.exit_crit_edge:            ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i97:                                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  %127 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %node22.i.i, ptr %prev.i, align 4
  %128 = ptrtoint ptr %node22.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %prepare_queue, ptr %node22.i.i, align 4
  %129 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %126, ptr %prev.i.i.i, align 4
  %130 = ptrtoint ptr %126 to i32
  call void @__asan_store4_noabort(i32 %130)
  store volatile ptr %node22.i.i, ptr %126, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i97, %if.end44.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call6) #10
  br label %cleanup

unlock:                                           ; preds = %do.end40, %d40_prep_desc.exit.unlock_crit_edge, %free_desc.i, %if.end19.i.i.unlock_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call6) #10
  br label %cleanup

cleanup:                                          ; preds = %unlock, %list_add_tail.exit, %do.end
  %retval.0 = phi ptr [ null, %unlock ], [ %txd.i, %list_add_tail.exit ], [ null, %do.end ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @d40_set_runtime_config_write(ptr noundef %chan, ptr nocapture noundef readonly %config, i32 noundef %direction) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_cfg = getelementptr i8, ptr %chan, i32 136
  %phy_chan = getelementptr i8, ptr %chan, i32 -4
  %0 = ptrtoint ptr %phy_chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_chan, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr i8, ptr %chan, i32 20
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %3, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i, ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.136) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %src_addr_width1 = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 3
  %4 = ptrtoint ptr %src_addr_width1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %src_addr_width1, align 4
  %src_maxburst2 = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 5
  %6 = ptrtoint ptr %src_maxburst2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %src_maxburst2, align 4
  %dst_addr_width3 = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 4
  %8 = ptrtoint ptr %dst_addr_width3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dst_addr_width3, align 4
  %dst_maxburst4 = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 6
  %10 = ptrtoint ptr %dst_maxburst4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dst_maxburst4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %direction)
  %cmp5 = icmp eq i32 %direction, 2
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %src_addr = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 1
  %12 = ptrtoint ptr %src_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %src_addr, align 4
  %14 = ptrtoint ptr %dma_cfg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma_cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp7.not = icmp eq i32 %15, 2
  br i1 %cmp7.not, label %if.then6.if.end20_crit_edge, label %do.body9

if.then6.if.end20_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

do.body9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @d40_set_runtime_config_write.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@d40_set_runtime_config_write, %if.end20)) #10
          to label %if.then15 [label %if.end20], !srcloc !435

if.then15:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  %base = getelementptr i8, ptr %chan, i32 248
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %dev = getelementptr inbounds %struct.d40_base, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %20 = ptrtoint ptr %dma_cfg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma_cfg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @d40_set_runtime_config_write.__UNIQUE_ID_ddebug301, ptr noundef %19, ptr noundef nonnull @.str.137, i32 noundef %21) #10
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %do.body9, %if.then6.if.end20_crit_edge
  %22 = ptrtoint ptr %dma_cfg to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %dma_cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp22 = icmp eq i32 %9, 0
  %spec.select = select i1 %cmp22, i32 %5, i32 %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp25 = icmp eq i32 %11, 0
  %spec.select4 = select i1 %cmp25, i32 %7, i32 %11
  br label %if.end69

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %direction)
  %cmp28 = icmp eq i32 %direction, 1
  br i1 %cmp28, label %if.then29, label %do.end65

if.then29:                                        ; preds = %if.else
  %dst_addr = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 2
  %23 = ptrtoint ptr %dst_addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dst_addr, align 4
  %25 = ptrtoint ptr %dma_cfg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dma_cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp31.not = icmp eq i32 %26, 1
  br i1 %cmp31.not, label %if.then29.if.end54_crit_edge, label %do.body33

if.then29.if.end54_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

do.body33:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @d40_set_runtime_config_write.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@d40_set_runtime_config_write, %if.end54)) #10
          to label %if.then47 [label %if.end54], !srcloc !435

if.then47:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #12
  %base48 = getelementptr i8, ptr %chan, i32 248
  %27 = ptrtoint ptr %base48 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base48, align 4
  %dev49 = getelementptr inbounds %struct.d40_base, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev49, align 4
  %31 = ptrtoint ptr %dma_cfg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dma_cfg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @d40_set_runtime_config_write.__UNIQUE_ID_ddebug302, ptr noundef %30, ptr noundef nonnull @.str.138, i32 noundef %32) #10
  br label %if.end54

if.end54:                                         ; preds = %if.then47, %do.body33, %if.then29.if.end54_crit_edge
  %33 = ptrtoint ptr %dma_cfg to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %dma_cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp56 = icmp eq i32 %5, 0
  %spec.select1 = select i1 %cmp56, i32 %9, i32 %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp59 = icmp eq i32 %7, 0
  %spec.select5 = select i1 %cmp59, i32 %11, i32 %7
  br label %if.end69

do.end65:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %base66 = getelementptr i8, ptr %chan, i32 248
  %34 = ptrtoint ptr %base66 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base66, align 4
  %dev67 = getelementptr inbounds %struct.d40_base, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %dev67 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev67, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.140, i32 noundef %direction) #13
  br label %cleanup

if.end69:                                         ; preds = %if.end54, %if.end20
  %src_maxburst.0 = phi i32 [ %7, %if.end20 ], [ %spec.select5, %if.end54 ]
  %dst_maxburst.0 = phi i32 [ %spec.select4, %if.end20 ], [ %11, %if.end54 ]
  %config_addr.0 = phi i32 [ %13, %if.end20 ], [ %24, %if.end54 ]
  %dst_addr_width.1 = phi i32 [ %spec.select, %if.end20 ], [ %9, %if.end54 ]
  %src_addr_width.1 = phi i32 [ %5, %if.end20 ], [ %spec.select1, %if.end54 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %config_addr.0)
  %cmp70 = icmp eq i32 %config_addr.0, 0
  br i1 %cmp70, label %do.end74, label %if.end77

do.end74:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  %base75 = getelementptr i8, ptr %chan, i32 248
  %38 = ptrtoint ptr %base75 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base75, align 4
  %dev76 = getelementptr inbounds %struct.d40_base, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %dev76 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev76, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.143) #13
  br label %cleanup

if.end77:                                         ; preds = %if.end69
  %mul = mul i32 %src_addr_width.1, %src_maxburst.0
  %mul78 = mul i32 %dst_addr_width.1, %dst_maxburst.0
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %mul78)
  %cmp79.not = icmp eq i32 %mul, %mul78
  br i1 %cmp79.not, label %if.end86, label %do.end83

do.end83:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  %base84 = getelementptr i8, ptr %chan, i32 248
  %42 = ptrtoint ptr %base84 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base84, align 4
  %dev85 = getelementptr inbounds %struct.d40_base, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %dev85 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev85, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.146, i32 noundef %src_maxburst.0, i32 noundef %src_addr_width.1, i32 noundef %dst_maxburst.0, i32 noundef %dst_addr_width.1) #13
  br label %cleanup

if.end86:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %src_maxburst.0)
  %cmp87 = icmp ugt i32 %src_maxburst.0, 16
  br i1 %cmp87, label %if.then88, label %if.else90

if.then88:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  %mul89 = shl i32 %src_addr_width.1, 4
  %div = udiv i32 %mul89, %dst_addr_width.1
  br label %if.end96

if.else90:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %dst_maxburst.0)
  %cmp91 = icmp ugt i32 %dst_maxburst.0, 16
  br i1 %cmp91, label %if.then92, label %if.else90.if.end96_crit_edge

if.else90.if.end96_crit_edge:                     ; preds = %if.else90
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96

if.then92:                                        ; preds = %if.else90
  call void @__sanitizer_cov_trace_pc() #12
  %mul93 = shl i32 %dst_addr_width.1, 4
  %div94 = udiv i32 %mul93, %src_addr_width.1
  br label %if.end96

if.end96:                                         ; preds = %if.then92, %if.else90.if.end96_crit_edge, %if.then88
  %src_maxburst.1 = phi i32 [ 16, %if.then88 ], [ %div94, %if.then92 ], [ %src_maxburst.0, %if.else90.if.end96_crit_edge ]
  %dst_maxburst.1 = phi i32 [ %div, %if.then88 ], [ 16, %if.then92 ], [ %dst_maxburst.0, %if.else90.if.end96_crit_edge ]
  %46 = add i32 %src_addr_width.1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %46)
  %47 = icmp ult i32 %46, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dst_addr_width.1)
  %cmp100 = icmp ne i32 %dst_addr_width.1, 0
  %or.cond2 = select i1 %47, i1 %cmp100, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %dst_addr_width.1)
  %cmp102 = icmp ult i32 %dst_addr_width.1, 9
  %or.cond3 = select i1 %or.cond2, i1 %cmp102, i1 false
  %48 = tail call i32 @llvm.ctpop.i32(i32 %src_addr_width.1) #10, !range !451
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %48)
  %cmp1.i = icmp ult i32 %48, 2
  %or.cond50 = select i1 %or.cond3, i1 %cmp1.i, i1 false
  %49 = tail call i32 @llvm.ctpop.i32(i32 %dst_addr_width.1) #10, !range !451
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %49)
  %cmp1.i12 = icmp ult i32 %49, 2
  %or.cond51 = select i1 %or.cond50, i1 %cmp1.i12, i1 false
  br i1 %or.cond51, label %if.end108, label %if.end96.cleanup_crit_edge

if.end96.cleanup_crit_edge:                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end108:                                        ; preds = %if.end96
  %data_width = getelementptr i8, ptr %chan, i32 160
  %50 = ptrtoint ptr %data_width to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %src_addr_width.1, ptr %data_width, align 4
  %data_width109 = getelementptr i8, ptr %chan, i32 176
  %51 = ptrtoint ptr %data_width109 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %dst_addr_width.1, ptr %data_width109, align 4
  %log_num.i.i.i = getelementptr i8, ptr %chan, i32 -16
  %52 = ptrtoint ptr %log_num.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %log_num.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %53)
  %cmp.i.i.not.i = icmp eq i32 %53, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %src_maxburst.1)
  %cmp11.i = icmp ugt i32 %src_maxburst.1, 15
  br i1 %cmp.i.i.not.i, label %if.else10.i, label %if.then.i

if.then.i:                                        ; preds = %if.end108
  br i1 %cmp11.i, label %if.then.i.if.then.i16_crit_edge, label %if.else.i

if.then.i.if.then.i16_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i16

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %src_maxburst.1)
  %cmp2.i = icmp ugt i32 %src_maxburst.1, 7
  br i1 %cmp2.i, label %if.else.i.if.then.i16_crit_edge, label %if.else4.i

if.else.i.if.then.i16_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i16

if.else4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %src_maxburst.1)
  %cmp5.i = icmp ugt i32 %src_maxburst.1, 3
  %..i = zext i1 %cmp5.i to i32
  br label %if.then.i16

if.else10.i:                                      ; preds = %if.end108
  br i1 %cmp11.i, label %if.else10.i.if.else10.i22_crit_edge, label %if.else13.i

if.else10.i.if.else10.i22_crit_edge:              ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else10.i22

if.else13.i:                                      ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %src_maxburst.1)
  %cmp14.i = icmp ugt i32 %src_maxburst.1, 7
  br i1 %cmp14.i, label %if.else13.i.if.else10.i22_crit_edge, label %if.else16.i

if.else13.i.if.else10.i22_crit_edge:              ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else10.i22

if.else16.i:                                      ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %src_maxburst.1)
  %cmp17.inv.i = icmp ult i32 %src_maxburst.1, 4
  %.1.i = select i1 %cmp17.inv.i, i32 4, i32 1
  br label %if.else10.i22

if.then.i16:                                      ; preds = %if.else4.i, %if.else.i.if.then.i16_crit_edge, %if.then.i.if.then.i16_crit_edge
  %psize.0.i = phi i32 [ 3, %if.then.i.if.then.i16_crit_edge ], [ 2, %if.else.i.if.then.i16_crit_edge ], [ %..i, %if.else4.i ]
  %psize24.i = getelementptr i8, ptr %chan, i32 164
  %54 = ptrtoint ptr %psize24.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %psize.0.i, ptr %psize24.i, align 4
  %flow_ctrl.i = getelementptr i8, ptr %chan, i32 168
  %55 = ptrtoint ptr %flow_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %flow_ctrl.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %dst_maxburst.1)
  %cmp11.i15 = icmp ugt i32 %dst_maxburst.1, 15
  br i1 %cmp11.i15, label %if.then.i16.if.then121_crit_edge, label %if.else.i18

if.then.i16.if.then121_crit_edge:                 ; preds = %if.then.i16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then121

if.else.i18:                                      ; preds = %if.then.i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %dst_maxburst.1)
  %cmp2.i17 = icmp ugt i32 %dst_maxburst.1, 7
  br i1 %cmp2.i17, label %if.else.i18.if.then121_crit_edge, label %if.else4.i21

if.else.i18.if.then121_crit_edge:                 ; preds = %if.else.i18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then121

if.else4.i21:                                     ; preds = %if.else.i18
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %dst_maxburst.1)
  %cmp5.i19 = icmp ugt i32 %dst_maxburst.1, 3
  %..i20 = zext i1 %cmp5.i19 to i32
  br label %if.then121

if.else10.i22:                                    ; preds = %if.else16.i, %if.else13.i.if.else10.i22_crit_edge, %if.else10.i.if.else10.i22_crit_edge
  %psize.0.i.ph = phi i32 [ %.1.i, %if.else16.i ], [ 2, %if.else13.i.if.else10.i22_crit_edge ], [ 3, %if.else10.i.if.else10.i22_crit_edge ]
  %psize24.i37 = getelementptr i8, ptr %chan, i32 164
  %56 = ptrtoint ptr %psize24.i37 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %psize.0.i.ph, ptr %psize24.i37, align 4
  %flow_ctrl.i38 = getelementptr i8, ptr %chan, i32 168
  %57 = ptrtoint ptr %flow_ctrl.i38 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %flow_ctrl.i38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %dst_maxburst.1)
  %cmp11.i1540 = icmp ugt i32 %dst_maxburst.1, 15
  br i1 %cmp11.i1540, label %if.else10.i22.if.else123_crit_edge, label %if.else13.i24

if.else10.i22.if.else123_crit_edge:               ; preds = %if.else10.i22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else123

if.else13.i24:                                    ; preds = %if.else10.i22
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %dst_maxburst.1)
  %cmp14.i23 = icmp ugt i32 %dst_maxburst.1, 7
  br i1 %cmp14.i23, label %if.else13.i24.if.else123_crit_edge, label %if.else16.i27

if.else13.i24.if.else123_crit_edge:               ; preds = %if.else13.i24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else123

if.else16.i27:                                    ; preds = %if.else13.i24
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %dst_maxburst.1)
  %cmp17.inv.i25 = icmp ult i32 %dst_maxburst.1, 4
  %.1.i26 = select i1 %cmp17.inv.i25, i32 4, i32 1
  br label %if.else123

if.then121:                                       ; preds = %if.else4.i21, %if.else.i18.if.then121_crit_edge, %if.then.i16.if.then121_crit_edge
  %psize.0.i28.ph = phi i32 [ %..i20, %if.else4.i21 ], [ 2, %if.else.i18.if.then121_crit_edge ], [ 3, %if.then.i16.if.then121_crit_edge ]
  %psize24.i2946 = getelementptr i8, ptr %chan, i32 180
  %58 = ptrtoint ptr %psize24.i2946 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %psize.0.i28.ph, ptr %psize24.i2946, align 4
  %flow_ctrl.i3047 = getelementptr i8, ptr %chan, i32 184
  %59 = ptrtoint ptr %flow_ctrl.i3047 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %flow_ctrl.i3047, align 4
  %log_def = getelementptr i8, ptr %chan, i32 260
  %lcsp1 = getelementptr i8, ptr %chan, i32 264
  tail call void @d40_log_cfg(ptr noundef %dma_cfg, ptr noundef %lcsp1, ptr noundef %log_def) #10
  br label %if.end124

if.else123:                                       ; preds = %if.else16.i27, %if.else13.i24.if.else123_crit_edge, %if.else10.i22.if.else123_crit_edge
  %psize.0.i28 = phi i32 [ 3, %if.else10.i22.if.else123_crit_edge ], [ 2, %if.else13.i24.if.else123_crit_edge ], [ %.1.i26, %if.else16.i27 ]
  %psize24.i29 = getelementptr i8, ptr %chan, i32 180
  %60 = ptrtoint ptr %psize24.i29 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %psize.0.i28, ptr %psize24.i29, align 4
  %flow_ctrl.i30 = getelementptr i8, ptr %chan, i32 184
  %61 = ptrtoint ptr %flow_ctrl.i30 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %flow_ctrl.i30, align 4
  %src_def_cfg = getelementptr i8, ptr %chan, i32 252
  %dst_def_cfg = getelementptr i8, ptr %chan, i32 256
  tail call void @d40_phy_cfg(ptr noundef %dma_cfg, ptr noundef %src_def_cfg, ptr noundef %dst_def_cfg) #10
  br label %if.end124

if.end124:                                        ; preds = %if.else123, %if.then121
  %runtime_addr = getelementptr i8, ptr %chan, i32 272
  %62 = ptrtoint ptr %runtime_addr to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %config_addr.0, ptr %runtime_addr, align 4
  %runtime_direction = getelementptr i8, ptr %chan, i32 276
  %63 = ptrtoint ptr %runtime_direction to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %direction, ptr %runtime_direction, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @d40_set_runtime_config_write.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@d40_set_runtime_config_write, %cleanup)) #10
          to label %if.then139 [label %cleanup], !srcloc !435

if.then139:                                       ; preds = %if.end124
  %base140 = getelementptr i8, ptr %chan, i32 248
  %64 = ptrtoint ptr %base140 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base140, align 4
  %dev141 = getelementptr inbounds %struct.d40_base, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %dev141 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev141, align 4
  %dev.i32 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %68 = ptrtoint ptr %dev.i32 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev.i32, align 4
  %init_name.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %69, i32 0, i32 1, i32 3
  %70 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %71, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then139.dma_chan_name.exit_crit_edge

if.then139.dma_chan_name.exit_crit_edge:          ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_chan_name.exit

if.end.i.i:                                       ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #12
  %device.i33 = getelementptr inbounds %struct.dma_chan_dev, ptr %69, i32 0, i32 1
  %72 = ptrtoint ptr %device.i33 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %device.i33, align 4
  br label %dma_chan_name.exit

dma_chan_name.exit:                               ; preds = %if.end.i.i, %if.then139.dma_chan_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %73, %if.end.i.i ], [ %71, %if.then139.dma_chan_name.exit_crit_edge ]
  %cond = select i1 %cmp5, ptr @.str.149, ptr @.str.150
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @d40_set_runtime_config_write.__UNIQUE_ID_ddebug303, ptr noundef %67, ptr noundef nonnull @.str.148, ptr noundef %retval.0.i.i, ptr noundef nonnull %cond, i32 noundef %src_addr_width.1, i32 noundef %dst_addr_width.1, i32 noundef %src_maxburst.1, i32 noundef %dst_maxburst.1) #10
  br label %cleanup

cleanup:                                          ; preds = %dma_chan_name.exit, %if.end124, %if.end96.cleanup_crit_edge, %do.end83, %do.end74, %do.end65, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @d40_phy_cfg(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @d40_tx_submit(ptr noundef %tx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chan = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %tx, i32 0, i32 3
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -60
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #10
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 4
  %cookie2.i = getelementptr inbounds %struct.dma_chan, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %cookie2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cookie2.i, align 4
  %add.i = add i32 %5, 1
  %6 = tail call i32 @llvm.smax.i32(i32 %add.i, i32 1) #10
  %7 = ptrtoint ptr %cookie2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %cookie2.i, align 4
  %8 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %6, ptr %tx, align 4
  %node.i.i = getelementptr i8, ptr %tx, i32 100
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.i.i) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %entry.d40_desc_remove.exit.i_crit_edge

entry.d40_desc_remove.exit.i_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %d40_desc_remove.exit.i

if.end.i.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i = getelementptr i8, ptr %tx, i32 104
  %9 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i.i.i, align 4
  %11 = ptrtoint ptr %node.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %node.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %d40_desc_remove.exit.i

d40_desc_remove.exit.i:                           ; preds = %if.end.i.i.i.i, %entry.d40_desc_remove.exit.i_crit_edge
  %15 = ptrtoint ptr %node.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %node.i.i, align 4
  %prev.i.i.i = getelementptr i8, ptr %tx, i32 104
  %16 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %is_in_client_list.i = getelementptr i8, ptr %tx, i32 108
  %17 = ptrtoint ptr %is_in_client_list.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %is_in_client_list.i, align 4
  %pending_queue.i = getelementptr i8, ptr %1, i32 96
  %prev.i.i = getelementptr i8, ptr %1, i32 100
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i.i, ptr noundef %19, ptr noundef %pending_queue.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %d40_desc_remove.exit.i.d40_desc_queue.exit_crit_edge

d40_desc_remove.exit.i.d40_desc_queue.exit_crit_edge: ; preds = %d40_desc_remove.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %d40_desc_queue.exit

if.end.i.i.i:                                     ; preds = %d40_desc_remove.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %node.i.i, ptr %prev.i.i, align 4
  %21 = ptrtoint ptr %node.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %pending_queue.i, ptr %node.i.i, align 4
  %22 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %node.i.i, ptr %19, align 4
  br label %d40_desc_queue.exit

d40_desc_queue.exit:                              ; preds = %if.end.i.i.i, %d40_desc_remove.exit.i.d40_desc_queue.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call6) #10
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @d40_log_sg_to_lli(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @d40_phy_sg_to_lli(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @d40_term_all(ptr noundef %d40c) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %done.i = getelementptr inbounds %struct.d40_chan, ptr %d40c, i32 0, i32 10
  %0 = ptrtoint ptr %done.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %done.i, align 4
  %cmp.not.i144 = icmp eq ptr %1, %done.i
  %add.ptr.i145 = getelementptr i8, ptr %1, i32 -188
  %tobool.not140146 = icmp eq ptr %add.ptr.i145, null
  %tobool.not147 = or i1 %cmp.not.i144, %tobool.not140146
  br i1 %tobool.not147, label %entry.while.cond1.preheader_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.cond1.preheader_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond1.preheader

while.cond1.preheader:                            ; preds = %d40_desc_remove.exit.while.cond1.preheader_crit_edge, %entry.while.cond1.preheader_crit_edge
  %active.i = getelementptr inbounds %struct.d40_chan, ptr %d40c, i32 0, i32 9
  %2 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %active.i, align 4
  %cmp.not.i94149 = icmp eq ptr %3, %active.i
  %add.ptr.i95150 = getelementptr i8, ptr %3, i32 -188
  %tobool3.not141151 = icmp eq ptr %add.ptr.i95150, null
  %tobool3.not152 = or i1 %cmp.not.i94149, %tobool3.not141151
  br i1 %tobool3.not152, label %while.cond1.preheader.while.cond6.preheader_crit_edge, label %while.cond1.preheader.while.body4_crit_edge

while.cond1.preheader.while.body4_crit_edge:      ; preds = %while.cond1.preheader
  br label %while.body4

while.cond1.preheader.while.cond6.preheader_crit_edge: ; preds = %while.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond6.preheader

while.body:                                       ; preds = %d40_desc_remove.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %add.ptr.i148 = phi ptr [ %add.ptr.i, %d40_desc_remove.exit.while.body_crit_edge ], [ %add.ptr.i145, %entry.while.body_crit_edge ]
  %4 = phi ptr [ %14, %d40_desc_remove.exit.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %4) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.d40_desc_remove.exit_crit_edge

while.body.d40_desc_remove.exit_crit_edge:        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %d40_desc_remove.exit

if.end.i.i.i:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr i8, ptr %4, i32 4
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %d40_desc_remove.exit

d40_desc_remove.exit:                             ; preds = %if.end.i.i.i, %while.body.d40_desc_remove.exit_crit_edge
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  %prev.i.i = getelementptr i8, ptr %4, i32 4
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call fastcc void @d40_desc_free(ptr noundef %d40c, ptr noundef nonnull %add.ptr.i148)
  %13 = ptrtoint ptr %done.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %done.i, align 4
  %cmp.not.i = icmp eq ptr %14, %done.i
  %add.ptr.i = getelementptr i8, ptr %14, i32 -188
  %tobool.not140 = icmp eq ptr %add.ptr.i, null
  %tobool.not = or i1 %cmp.not.i, %tobool.not140
  br i1 %tobool.not, label %d40_desc_remove.exit.while.cond1.preheader_crit_edge, label %d40_desc_remove.exit.while.body_crit_edge

d40_desc_remove.exit.while.body_crit_edge:        ; preds = %d40_desc_remove.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

d40_desc_remove.exit.while.cond1.preheader_crit_edge: ; preds = %d40_desc_remove.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond1.preheader

while.cond6.preheader:                            ; preds = %d40_desc_remove.exit103.while.cond6.preheader_crit_edge, %while.cond1.preheader.while.cond6.preheader_crit_edge
  %queue.i = getelementptr inbounds %struct.d40_chan, ptr %d40c, i32 0, i32 11
  %15 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %queue.i, align 4
  %cmp.not.i104154 = icmp eq ptr %16, %queue.i
  %add.ptr.i105155 = getelementptr i8, ptr %16, i32 -188
  %tobool8.not142156 = icmp eq ptr %add.ptr.i105155, null
  %tobool8.not157 = or i1 %cmp.not.i104154, %tobool8.not142156
  br i1 %tobool8.not157, label %while.cond6.preheader.while.cond11.preheader_crit_edge, label %while.cond6.preheader.while.body9_crit_edge

while.cond6.preheader.while.body9_crit_edge:      ; preds = %while.cond6.preheader
  br label %while.body9

while.cond6.preheader.while.cond11.preheader_crit_edge: ; preds = %while.cond6.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond11.preheader

while.body4:                                      ; preds = %d40_desc_remove.exit103.while.body4_crit_edge, %while.cond1.preheader.while.body4_crit_edge
  %add.ptr.i95153 = phi ptr [ %add.ptr.i95, %d40_desc_remove.exit103.while.body4_crit_edge ], [ %add.ptr.i95150, %while.cond1.preheader.while.body4_crit_edge ]
  %17 = phi ptr [ %27, %d40_desc_remove.exit103.while.body4_crit_edge ], [ %3, %while.cond1.preheader.while.body4_crit_edge ]
  %call.i.i.i98 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %17) #10
  br i1 %call.i.i.i98, label %if.end.i.i.i101, label %while.body4.d40_desc_remove.exit103_crit_edge

while.body4.d40_desc_remove.exit103_crit_edge:    ; preds = %while.body4
  call void @__sanitizer_cov_trace_pc() #12
  br label %d40_desc_remove.exit103

if.end.i.i.i101:                                  ; preds = %while.body4
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i99 = getelementptr i8, ptr %17, i32 4
  %18 = ptrtoint ptr %prev.i.i.i99 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i.i99, align 4
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %17, align 4
  %prev1.i.i.i.i100 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i.i100 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i.i100, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %d40_desc_remove.exit103

d40_desc_remove.exit103:                          ; preds = %if.end.i.i.i101, %while.body4.d40_desc_remove.exit103_crit_edge
  %24 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 256 to ptr), ptr %17, align 4
  %prev.i.i102 = getelementptr i8, ptr %17, i32 4
  %25 = ptrtoint ptr %prev.i.i102 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i102, align 4
  tail call fastcc void @d40_desc_free(ptr noundef %d40c, ptr noundef nonnull %add.ptr.i95153)
  %26 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %active.i, align 4
  %cmp.not.i94 = icmp eq ptr %27, %active.i
  %add.ptr.i95 = getelementptr i8, ptr %27, i32 -188
  %tobool3.not141 = icmp eq ptr %add.ptr.i95, null
  %tobool3.not = or i1 %cmp.not.i94, %tobool3.not141
  br i1 %tobool3.not, label %d40_desc_remove.exit103.while.cond6.preheader_crit_edge, label %d40_desc_remove.exit103.while.body4_crit_edge

d40_desc_remove.exit103.while.body4_crit_edge:    ; preds = %d40_desc_remove.exit103
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body4

d40_desc_remove.exit103.while.cond6.preheader_crit_edge: ; preds = %d40_desc_remove.exit103
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond6.preheader

while.cond11.preheader:                           ; preds = %d40_desc_remove.exit113.while.cond11.preheader_crit_edge, %while.cond6.preheader.while.cond11.preheader_crit_edge
  %pending_queue.i = getelementptr inbounds %struct.d40_chan, ptr %d40c, i32 0, i32 8
  %28 = ptrtoint ptr %pending_queue.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %pending_queue.i, align 4
  %cmp.not.i114159 = icmp eq ptr %29, %pending_queue.i
  %add.ptr.i115160 = getelementptr i8, ptr %29, i32 -188
  %tobool13.not143161 = icmp eq ptr %add.ptr.i115160, null
  %tobool13.not162 = or i1 %cmp.not.i114159, %tobool13.not143161
  br i1 %tobool13.not162, label %while.cond11.preheader.while.end15_crit_edge, label %while.cond11.preheader.while.body14_crit_edge

while.cond11.preheader.while.body14_crit_edge:    ; preds = %while.cond11.preheader
  br label %while.body14

while.cond11.preheader.while.end15_crit_edge:     ; preds = %while.cond11.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end15

while.body9:                                      ; preds = %d40_desc_remove.exit113.while.body9_crit_edge, %while.cond6.preheader.while.body9_crit_edge
  %add.ptr.i105158 = phi ptr [ %add.ptr.i105, %d40_desc_remove.exit113.while.body9_crit_edge ], [ %add.ptr.i105155, %while.cond6.preheader.while.body9_crit_edge ]
  %30 = phi ptr [ %40, %d40_desc_remove.exit113.while.body9_crit_edge ], [ %16, %while.cond6.preheader.while.body9_crit_edge ]
  %call.i.i.i108 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %30) #10
  br i1 %call.i.i.i108, label %if.end.i.i.i111, label %while.body9.d40_desc_remove.exit113_crit_edge

while.body9.d40_desc_remove.exit113_crit_edge:    ; preds = %while.body9
  call void @__sanitizer_cov_trace_pc() #12
  br label %d40_desc_remove.exit113

if.end.i.i.i111:                                  ; preds = %while.body9
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i109 = getelementptr i8, ptr %30, i32 4
  %31 = ptrtoint ptr %prev.i.i.i109 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i.i109, align 4
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %30, align 4
  %prev1.i.i.i.i110 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i.i.i110 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev1.i.i.i.i110, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %32, align 4
  br label %d40_desc_remove.exit113

d40_desc_remove.exit113:                          ; preds = %if.end.i.i.i111, %while.body9.d40_desc_remove.exit113_crit_edge
  %37 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 256 to ptr), ptr %30, align 4
  %prev.i.i112 = getelementptr i8, ptr %30, i32 4
  %38 = ptrtoint ptr %prev.i.i112 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i112, align 4
  tail call fastcc void @d40_desc_free(ptr noundef %d40c, ptr noundef nonnull %add.ptr.i105158)
  %39 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %queue.i, align 4
  %cmp.not.i104 = icmp eq ptr %40, %queue.i
  %add.ptr.i105 = getelementptr i8, ptr %40, i32 -188
  %tobool8.not142 = icmp eq ptr %add.ptr.i105, null
  %tobool8.not = or i1 %cmp.not.i104, %tobool8.not142
  br i1 %tobool8.not, label %d40_desc_remove.exit113.while.cond11.preheader_crit_edge, label %d40_desc_remove.exit113.while.body9_crit_edge

d40_desc_remove.exit113.while.body9_crit_edge:    ; preds = %d40_desc_remove.exit113
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body9

d40_desc_remove.exit113.while.cond11.preheader_crit_edge: ; preds = %d40_desc_remove.exit113
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond11.preheader

while.body14:                                     ; preds = %d40_desc_remove.exit123.while.body14_crit_edge, %while.cond11.preheader.while.body14_crit_edge
  %add.ptr.i115163 = phi ptr [ %add.ptr.i115, %d40_desc_remove.exit123.while.body14_crit_edge ], [ %add.ptr.i115160, %while.cond11.preheader.while.body14_crit_edge ]
  %41 = phi ptr [ %51, %d40_desc_remove.exit123.while.body14_crit_edge ], [ %29, %while.cond11.preheader.while.body14_crit_edge ]
  %call.i.i.i118 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %41) #10
  br i1 %call.i.i.i118, label %if.end.i.i.i121, label %while.body14.d40_desc_remove.exit123_crit_edge

while.body14.d40_desc_remove.exit123_crit_edge:   ; preds = %while.body14
  call void @__sanitizer_cov_trace_pc() #12
  br label %d40_desc_remove.exit123

if.end.i.i.i121:                                  ; preds = %while.body14
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i119 = getelementptr i8, ptr %41, i32 4
  %42 = ptrtoint ptr %prev.i.i.i119 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i.i.i119, align 4
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %41, align 4
  %prev1.i.i.i.i120 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %prev1.i.i.i.i120 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev1.i.i.i.i120, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %45, ptr %43, align 4
  br label %d40_desc_remove.exit123

d40_desc_remove.exit123:                          ; preds = %if.end.i.i.i121, %while.body14.d40_desc_remove.exit123_crit_edge
  %48 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr inttoptr (i32 256 to ptr), ptr %41, align 4
  %prev.i.i122 = getelementptr i8, ptr %41, i32 4
  %49 = ptrtoint ptr %prev.i.i122 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i122, align 4
  tail call fastcc void @d40_desc_free(ptr noundef %d40c, ptr noundef nonnull %add.ptr.i115163)
  %50 = ptrtoint ptr %pending_queue.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile ptr, ptr %pending_queue.i, align 4
  %cmp.not.i114 = icmp eq ptr %51, %pending_queue.i
  %add.ptr.i115 = getelementptr i8, ptr %51, i32 -188
  %tobool13.not143 = icmp eq ptr %add.ptr.i115, null
  %tobool13.not = or i1 %cmp.not.i114, %tobool13.not143
  br i1 %tobool13.not, label %d40_desc_remove.exit123.while.end15_crit_edge, label %d40_desc_remove.exit123.while.body14_crit_edge

d40_desc_remove.exit123.while.body14_crit_edge:   ; preds = %d40_desc_remove.exit123
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body14

d40_desc_remove.exit123.while.end15_crit_edge:    ; preds = %d40_desc_remove.exit123
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end15

while.end15:                                      ; preds = %d40_desc_remove.exit123.while.end15_crit_edge, %while.cond11.preheader.while.end15_crit_edge
  %client = getelementptr inbounds %struct.d40_chan, ptr %d40c, i32 0, i32 7
  %52 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %client, align 4
  %cmp.i.not = icmp eq ptr %53, %client
  br i1 %cmp.i.not, label %while.end15.if.end_crit_edge, label %while.end15.for.body_crit_edge

while.end15.for.body_crit_edge:                   ; preds = %while.end15
  br label %for.body

while.end15.if.end_crit_edge:                     ; preds = %while.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body:                                         ; preds = %d40_desc_remove.exit130.for.body_crit_edge, %while.end15.for.body_crit_edge
  %.pn.in165 = phi ptr [ %.pn, %d40_desc_remove.exit130.for.body_crit_edge ], [ %53, %while.end15.for.body_crit_edge ]
  %d40d.0 = getelementptr i8, ptr %.pn.in165, i32 -188
  %54 = ptrtoint ptr %.pn.in165 to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pn = load ptr, ptr %.pn.in165, align 4
  %call.i.i.i125 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in165) #10
  br i1 %call.i.i.i125, label %if.end.i.i.i128, label %for.body.d40_desc_remove.exit130_crit_edge

for.body.d40_desc_remove.exit130_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %d40_desc_remove.exit130

if.end.i.i.i128:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i126 = getelementptr i8, ptr %.pn.in165, i32 4
  %55 = ptrtoint ptr %prev.i.i.i126 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %prev.i.i.i126, align 4
  %57 = ptrtoint ptr %.pn.in165 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %.pn.in165, align 4
  %prev1.i.i.i.i127 = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %prev1.i.i.i.i127 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %56, ptr %prev1.i.i.i.i127, align 4
  %60 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %58, ptr %56, align 4
  br label %d40_desc_remove.exit130

d40_desc_remove.exit130:                          ; preds = %if.end.i.i.i128, %for.body.d40_desc_remove.exit130_crit_edge
  %61 = ptrtoint ptr %.pn.in165 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in165, align 4
  %prev.i.i129 = getelementptr i8, ptr %.pn.in165, i32 4
  %62 = ptrtoint ptr %prev.i.i129 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i129, align 4
  tail call fastcc void @d40_desc_free(ptr noundef %d40c, ptr noundef %d40d.0)
  %cmp.not = icmp eq ptr %.pn, %client
  br i1 %cmp.not, label %d40_desc_remove.exit130.if.end_crit_edge, label %d40_desc_remove.exit130.for.body_crit_edge

d40_desc_remove.exit130.for.body_crit_edge:       ; preds = %d40_desc_remove.exit130
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

d40_desc_remove.exit130.if.end_crit_edge:         ; preds = %d40_desc_remove.exit130
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %d40_desc_remove.exit130.if.end_crit_edge, %while.end15.if.end_crit_edge
  %prepare_queue = getelementptr inbounds %struct.d40_chan, ptr %d40c, i32 0, i32 12
  %63 = ptrtoint ptr %prepare_queue to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile ptr, ptr %prepare_queue, align 4
  %cmp.i131.not = icmp eq ptr %64, %prepare_queue
  br i1 %cmp.i131.not, label %if.end.if.end56_crit_edge, label %if.end.for.body48_crit_edge

if.end.for.body48_crit_edge:                      ; preds = %if.end
  br label %for.body48

if.end.if.end56_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

for.body48:                                       ; preds = %d40_desc_remove.exit139.for.body48_crit_edge, %if.end.for.body48_crit_edge
  %.pn91.in168 = phi ptr [ %.pn91, %d40_desc_remove.exit139.for.body48_crit_edge ], [ %64, %if.end.for.body48_crit_edge ]
  %d40d.1 = getelementptr i8, ptr %.pn91.in168, i32 -188
  %65 = ptrtoint ptr %.pn91.in168 to i32
  call void @__asan_load4_noabort(i32 %65)
  %.pn91 = load ptr, ptr %.pn91.in168, align 4
  %call.i.i.i134 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn91.in168) #10
  br i1 %call.i.i.i134, label %if.end.i.i.i137, label %for.body48.d40_desc_remove.exit139_crit_edge

for.body48.d40_desc_remove.exit139_crit_edge:     ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #12
  br label %d40_desc_remove.exit139

if.end.i.i.i137:                                  ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i135 = getelementptr i8, ptr %.pn91.in168, i32 4
  %66 = ptrtoint ptr %prev.i.i.i135 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %prev.i.i.i135, align 4
  %68 = ptrtoint ptr %.pn91.in168 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %.pn91.in168, align 4
  %prev1.i.i.i.i136 = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %prev1.i.i.i.i136 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %67, ptr %prev1.i.i.i.i136, align 4
  %71 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %69, ptr %67, align 4
  br label %d40_desc_remove.exit139

d40_desc_remove.exit139:                          ; preds = %if.end.i.i.i137, %for.body48.d40_desc_remove.exit139_crit_edge
  %72 = ptrtoint ptr %.pn91.in168 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn91.in168, align 4
  %prev.i.i138 = getelementptr i8, ptr %.pn91.in168, i32 4
  %73 = ptrtoint ptr %prev.i.i138 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i138, align 4
  tail call fastcc void @d40_desc_free(ptr noundef %d40c, ptr noundef %d40d.1)
  %cmp46.not = icmp eq ptr %.pn91, %prepare_queue
  br i1 %cmp46.not, label %d40_desc_remove.exit139.if.end56_crit_edge, label %d40_desc_remove.exit139.for.body48_crit_edge

d40_desc_remove.exit139.for.body48_crit_edge:     ; preds = %d40_desc_remove.exit139
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body48

d40_desc_remove.exit139.if.end56_crit_edge:       ; preds = %d40_desc_remove.exit139
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.end56:                                         ; preds = %d40_desc_remove.exit139.if.end56_crit_edge, %if.end.if.end56_crit_edge
  %pending_tx = getelementptr inbounds %struct.d40_chan, ptr %d40c, i32 0, i32 2
  %74 = ptrtoint ptr %pending_tx to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %pending_tx, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 195)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 195)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { cold }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !50, !51, !52, !54, !55, !57, !58, !60, !62, !63, !64, !66, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !121, !123, !124, !125, !127, !129, !131, !132, !133, !134, !136, !138, !139, !140, !142, !143, !144, !145, !147, !148, !149, !151, !153, !155, !156, !157, !159, !160, !161, !163, !164, !165, !167, !168, !169, !171, !173, !175, !177, !179, !181, !183, !184, !186, !187, !188, !189, !191, !192, !193, !195, !196, !197, !198, !200, !201, !202, !204, !205, !206, !208, !209, !210, !211, !213, !214, !215, !216, !218, !219, !220, !222, !223, !224, !225, !227, !228, !229, !230, !232, !233, !234, !236, !237, !238, !240, !241, !243, !244, !245, !246, !248, !249, !250, !251, !252, !254, !255, !256, !257, !259, !260, !262, !263, !265, !266, !267, !269, !270, !271, !273, !274, !275, !277, !278, !279, !280, !282, !283, !284, !285, !287, !288, !289, !291, !292, !293, !294, !296, !297, !298, !300, !301, !302, !303, !304, !305, !307, !308, !309, !310, !312, !313, !314, !316, !318, !320, !321, !322, !323, !325, !326, !327, !329, !330, !331, !332, !334, !335, !336, !338, !339, !340, !342, !343, !344, !346, !347, !348, !350, !351, !352, !353, !355, !356, !357, !359, !360, !361, !363, !364, !365, !367, !368, !369, !371, !372}
!llvm.module.flags = !{!373, !374, !375, !376, !377, !378, !379, !380}
!llvm.ident = !{!381}

!0 = !{ptr @__ksymtab_stedma40_filter, !1, !"__ksymtab_stedma40_filter", i1 false, i1 false}
!1 = !{!"../drivers/dma/ste_dma40.c", i32 2290, i32 1}
!2 = !{ptr @__initcall__kmod_ste_dma40__304_3724_stedma40_init4, !3, !"__initcall__kmod_ste_dma40__304_3724_stedma40_init4", i1 false, i1 false}
!3 = !{!"../drivers/dma/ste_dma40.c", i32 3724, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/dma/ste_dma40.c", i32 1708, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @d40_validate_conf._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @d40_validate_conf._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/dma/ste_dma40.c", i32 1715, i32 3}
!14 = !{ptr @d40_validate_conf._entry.5, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @d40_validate_conf._entry_ptr.7, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/dma/ste_dma40.c", i32 1724, i32 3}
!18 = !{ptr @d40_validate_conf._entry.8, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @d40_validate_conf._entry_ptr.10, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/dma/ste_dma40.c", i32 1737, i32 3}
!22 = !{ptr @d40_validate_conf._entry.11, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @d40_validate_conf._entry_ptr.13, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/dma/ste_dma40.c", i32 1981, i32 3}
!26 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @d40_config_memcpy._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @d40_config_memcpy._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @dma40_memcpy_conf_log, !30, !"dma40_memcpy_conf_log", i1 false, i1 false}
!30 = !{!"../drivers/dma/ste_dma40.c", i32 96, i32 39}
!31 = !{ptr @dma40_memcpy_channels, !32, !"dma40_memcpy_channels", i1 false, i1 false}
!32 = !{!"../drivers/dma/ste_dma40.c", i32 72, i32 12}
!33 = !{ptr @dma40_memcpy_conf_phy, !34, !"dma40_memcpy_conf_phy", i1 false, i1 false}
!34 = !{!"../drivers/dma/ste_dma40.c", i32 82, i32 39}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/dma/ste_dma40.c", i32 3714, i32 12}
!37 = !{ptr @d40_driver, !38, !"d40_driver", i1 false, i1 false}
!38 = !{!"../drivers/dma/ste_dma40.c", i32 3712, i32 31}
!39 = !{ptr @d40_match, !40, !"d40_match", i1 false, i1 false}
!40 = !{!"../drivers/dma/ste_dma40.c", i32 3707, i32 34}
!41 = !{ptr @dma40_pm_ops, !42, !"dma40_pm_ops", i1 false, i1 false}
!42 = !{!"../drivers/dma/ste_dma40.c", i32 3010, i32 32}
!43 = distinct !{null, !44, !"d40_backup_regs_chan", i1 false, i1 false}
!44 = !{!"../drivers/dma/ste_dma40.c", i32 214, i32 27}
!45 = distinct !{null, !46, !"d40_backup_regs", i1 false, i1 false}
!46 = !{!"../drivers/dma/ste_dma40.c", i32 145, i32 27}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/dma/ste_dma40.c", i32 3522, i32 4}
!49 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @d40_probe._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @d40_probe._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @d40_probe.__key, !53, !"__key", i1 false, i1 false}
!53 = !{!"../drivers/dma/ste_dma40.c", i32 3535, i32 2}
!54 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @d40_probe.__key.20, !56, !"__key", i1 false, i1 false}
!56 = !{!"../drivers/dma/ste_dma40.c", i32 3536, i32 2}
!57 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/dma/ste_dma40.c", i32 3539, i32 59}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/dma/ste_dma40.c", i32 3542, i32 3}
!62 = !{ptr @d40_probe._entry.23, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @d40_probe._entry_ptr.25, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/dma/ste_dma40.c", i32 3548, i32 6}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/dma/ste_dma40.c", i32 3551, i32 3}
!68 = !{ptr @d40_probe._entry.27, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @d40_probe._entry_ptr.29, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/dma/ste_dma40.c", i32 3558, i32 3}
!72 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @d40_probe._entry.30, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @d40_probe._entry_ptr.33, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/dma/ste_dma40.c", i32 3567, i32 3}
!77 = !{ptr @d40_probe._entry.34, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @d40_probe._entry_ptr.36, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/dma/ste_dma40.c", i32 3573, i32 8}
!81 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/dma/ste_dma40.c", i32 3576, i32 4}
!83 = !{ptr @d40_probe._entry.38, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @d40_probe._entry_ptr.40, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/dma/ste_dma40.c", i32 3584, i32 4}
!87 = !{ptr @d40_probe._entry.41, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @d40_probe._entry_ptr.43, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/dma/ste_dma40.c", i32 3592, i32 4}
!91 = !{ptr @d40_probe._entry.44, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @d40_probe._entry_ptr.46, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @d40_probe.__key.47, !94, !"__key", i1 false, i1 false}
!94 = !{!"../drivers/dma/ste_dma40.c", i32 3597, i32 2}
!95 = !{ptr @.str.48, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.50, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/dma/ste_dma40.c", i32 3603, i32 3}
!98 = !{ptr @d40_probe._entry.49, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @d40_probe._entry_ptr.51, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.53, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/dma/ste_dma40.c", i32 3611, i32 4}
!102 = !{ptr @d40_probe._entry.52, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @d40_probe._entry_ptr.54, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.56, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/dma/ste_dma40.c", i32 3619, i32 4}
!106 = !{ptr @d40_probe._entry.55, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @d40_probe._entry_ptr.57, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.59, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/dma/ste_dma40.c", i32 3642, i32 3}
!110 = !{ptr @d40_probe._entry.58, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @d40_probe._entry_ptr.60, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.62, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/dma/ste_dma40.c", i32 3651, i32 4}
!114 = !{ptr @d40_probe._entry.61, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @d40_probe._entry_ptr.63, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.65, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/dma/ste_dma40.c", i32 3655, i32 2}
!118 = !{ptr @.str.66, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @d40_probe._entry.64, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @d40_probe._entry_ptr.67, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.69, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/dma/ste_dma40.c", i32 3703, i32 2}
!123 = !{ptr @d40_probe._entry.68, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @d40_probe._entry_ptr.70, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.71, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/dma/ste_dma40.c", i32 3466, i32 27}
!127 = !{ptr @.str.72, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/dma/ste_dma40.c", i32 3470, i32 29}
!129 = !{ptr @.str.73, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/dma/ste_dma40.c", i32 3474, i32 3}
!131 = !{ptr @.str.74, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @d40_of_probe._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @d40_of_probe._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.75, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/dma/ste_dma40.c", i32 3485, i32 29}
!136 = !{ptr @.str.77, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/dma/ste_dma40.c", i32 3489, i32 3}
!138 = !{ptr @d40_of_probe._entry.76, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @d40_of_probe._entry_ptr.78, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.79, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/dma/ste_dma40.c", i32 3121, i32 3}
!142 = !{ptr @.str.80, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @d40_hw_detect_init._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @d40_hw_detect_init._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.82, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/dma/ste_dma40.c", i32 3127, i32 3}
!147 = !{ptr @d40_hw_detect_init._entry.81, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @d40_hw_detect_init._entry_ptr.83, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.84, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/dma/ste_dma40.c", i32 3132, i32 59}
!151 = !{ptr @.str.85, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/dma/ste_dma40.c", i32 3136, i32 6}
!153 = !{ptr @.str.87, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/dma/ste_dma40.c", i32 3153, i32 3}
!155 = !{ptr @d40_hw_detect_init._entry.86, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @d40_hw_detect_init._entry_ptr.88, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.90, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/dma/ste_dma40.c", i32 3157, i32 3}
!159 = !{ptr @d40_hw_detect_init._entry.89, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @d40_hw_detect_init._entry_ptr.91, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.93, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/dma/ste_dma40.c", i32 3173, i32 3}
!163 = !{ptr @d40_hw_detect_init._entry.92, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @d40_hw_detect_init._entry_ptr.94, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.96, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/dma/ste_dma40.c", i32 3191, i32 2}
!167 = !{ptr @d40_hw_detect_init._entry.95, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @d40_hw_detect_init._entry_ptr.97, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @d40_backup_regs_v4b, !170, !"d40_backup_regs_v4b", i1 false, i1 false}
!170 = !{!"../drivers/dma/ste_dma40.c", i32 189, i32 12}
!171 = !{ptr @il_v4b, !172, !"il_v4b", i1 false, i1 false}
!172 = !{!"../drivers/dma/ste_dma40.c", i32 258, i32 36}
!173 = !{ptr @dma_init_reg_v4b, !174, !"dma_init_reg_v4b", i1 false, i1 false}
!174 = !{!"../drivers/dma/ste_dma40.c", i32 302, i32 38}
!175 = !{ptr @d40_backup_regs_v4a, !176, !"d40_backup_regs_v4a", i1 false, i1 false}
!176 = !{!"../drivers/dma/ste_dma40.c", i32 168, i32 12}
!177 = !{ptr @il_v4a, !178, !"il_v4a", i1 false, i1 false}
!178 = !{!"../drivers/dma/ste_dma40.c", i32 245, i32 36}
!179 = !{ptr @dma_init_reg_v4a, !180, !"dma_init_reg_v4a", i1 false, i1 false}
!180 = !{!"../drivers/dma/ste_dma40.c", i32 284, i32 38}
!181 = !{ptr @d40_phy_res_init.__key, !182, !"__key", i1 false, i1 false}
!182 = !{!"../drivers/dma/ste_dma40.c", i32 3050, i32 3}
!183 = !{ptr @.str.98, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @.str.99, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/dma/ste_dma40.c", i32 3074, i32 2}
!186 = !{ptr @.str.100, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @d40_phy_res_init._entry, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @d40_phy_res_init._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.102, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/dma/ste_dma40.c", i32 3084, i32 4}
!191 = !{ptr @d40_phy_res_init._entry.101, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @d40_phy_res_init._entry_ptr.103, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.104, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/dma/ste_dma40.c", i32 3397, i32 4}
!195 = !{ptr @.str.105, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @d40_lcla_allocate._entry, !194, !"_entry", i1 false, i1 false}
!197 = !{ptr @d40_lcla_allocate._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.107, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/dma/ste_dma40.c", i32 3421, i32 3}
!200 = !{ptr @d40_lcla_allocate._entry.106, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @d40_lcla_allocate._entry_ptr.108, !199, !"_entry_ptr", i1 false, i1 false}
!202 = distinct !{null, !203, !"__already_done", i1 false, i1 false}
!203 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!204 = !{ptr @.str.109, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @.str.110, !203, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @.str.111, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/dma/ste_dma40.c", i32 1690, i32 4}
!208 = !{ptr @.str.112, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @d40_handle_interrupt._entry, !207, !"_entry", i1 false, i1 false}
!210 = !{ptr @d40_handle_interrupt._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.113, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/dma/ste_dma40.c", i32 1199, i32 4}
!213 = !{ptr @.str.114, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @__d40_config_set_event._entry, !212, !"_entry", i1 false, i1 false}
!215 = !{ptr @__d40_config_set_event._entry_ptr, !212, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.115, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/dma/ste_dma40.c", i32 1223, i32 4}
!218 = !{ptr @.str.116, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @__d40_config_set_event.__UNIQUE_ID_ddebug299, !217, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!220 = !{ptr @.str.117, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/dma/ste_dma40.c", i32 1094, i32 4}
!222 = !{ptr @.str.118, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @__d40_execute_command_phy._entry, !221, !"_entry", i1 false, i1 false}
!224 = !{ptr @__d40_execute_command_phy._entry_ptr, !221, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.119, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/dma/ste_dma40.c", i32 2862, i32 3}
!227 = !{ptr @.str.120, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @d40_dmaengine_init._entry, !226, !"_entry", i1 false, i1 false}
!229 = !{ptr @d40_dmaengine_init._entry_ptr, !226, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.122, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/dma/ste_dma40.c", i32 2877, i32 3}
!232 = !{ptr @d40_dmaengine_init._entry.121, !231, !"_entry", i1 false, i1 false}
!233 = !{ptr @d40_dmaengine_init._entry_ptr.123, !231, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.125, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/dma/ste_dma40.c", i32 2894, i32 3}
!236 = !{ptr @d40_dmaengine_init._entry.124, !235, !"_entry", i1 false, i1 false}
!237 = !{ptr @d40_dmaengine_init._entry_ptr.126, !235, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @d40_chan_init.__key, !239, !"__key", i1 false, i1 false}
!239 = !{!"../drivers/dma/ste_dma40.c", i32 2795, i32 3}
!240 = !{ptr @.str.127, !239, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @.str.128, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/dma/ste_dma40.c", i32 2220, i32 3}
!243 = !{ptr @.str.129, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @d40_prep_sg._entry, !242, !"_entry", i1 false, i1 false}
!245 = !{ptr @d40_prep_sg._entry_ptr, !242, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.131, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/dma/ste_dma40.c", i32 2250, i32 3}
!248 = !{ptr @d40_prep_sg._entry.130, !247, !"_entry", i1 false, i1 false}
!249 = !{ptr @d40_prep_sg._entry_ptr.132, !247, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.133, !247, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @.str.134, !247, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @.str.135, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/dma/ste_dma40.c", i32 2667, i32 3}
!254 = !{ptr @.str.136, !253, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @d40_set_runtime_config_write._entry, !253, !"_entry", i1 false, i1 false}
!256 = !{ptr @d40_set_runtime_config_write._entry_ptr, !253, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.137, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/dma/ste_dma40.c", i32 2680, i32 4}
!259 = !{ptr @d40_set_runtime_config_write.__UNIQUE_ID_ddebug301, !258, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!260 = !{ptr @.str.138, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/dma/ste_dma40.c", i32 2696, i32 4}
!262 = !{ptr @d40_set_runtime_config_write.__UNIQUE_ID_ddebug302, !261, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!263 = !{ptr @.str.140, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/dma/ste_dma40.c", i32 2708, i32 3}
!265 = !{ptr @d40_set_runtime_config_write._entry.139, !264, !"_entry", i1 false, i1 false}
!266 = !{ptr @d40_set_runtime_config_write._entry_ptr.141, !264, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.143, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/dma/ste_dma40.c", i32 2715, i32 3}
!269 = !{ptr @d40_set_runtime_config_write._entry.142, !268, !"_entry", i1 false, i1 false}
!270 = !{ptr @d40_set_runtime_config_write._entry_ptr.144, !268, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.146, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/dma/ste_dma40.c", i32 2720, i32 3}
!273 = !{ptr @d40_set_runtime_config_write._entry.145, !272, !"_entry", i1 false, i1 false}
!274 = !{ptr @d40_set_runtime_config_write._entry_ptr.147, !272, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.148, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/dma/ste_dma40.c", i32 2768, i32 2}
!277 = !{ptr @d40_set_runtime_config_write.__UNIQUE_ID_ddebug303, !276, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!278 = !{ptr @.str.149, !276, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @.str.150, !276, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @.str.151, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/dma/ste_dma40.c", i32 2185, i32 3}
!282 = !{ptr @.str.152, !281, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @d40_prep_desc._entry, !281, !"_entry", i1 false, i1 false}
!284 = !{ptr @d40_prep_desc._entry_ptr, !281, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.154, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/dma/ste_dma40.c", i32 2191, i32 3}
!287 = !{ptr @d40_prep_desc._entry.153, !286, !"_entry", i1 false, i1 false}
!288 = !{ptr @d40_prep_desc._entry_ptr.155, !286, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.156, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/dma/ste_dma40.c", i32 2403, i32 4}
!291 = !{ptr @.str.157, !290, !"<string literal>", i1 false, i1 false}
!292 = !{ptr @d40_alloc_chan_resources._entry, !290, !"_entry", i1 false, i1 false}
!293 = !{ptr @d40_alloc_chan_resources._entry_ptr, !290, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @.str.159, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/dma/ste_dma40.c", i32 2410, i32 3}
!296 = !{ptr @d40_alloc_chan_resources._entry.158, !295, !"_entry", i1 false, i1 false}
!297 = !{ptr @d40_alloc_chan_resources._entry_ptr.160, !295, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @.str.161, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/dma/ste_dma40.c", i32 2433, i32 2}
!300 = !{ptr @d40_alloc_chan_resources.__UNIQUE_ID_ddebug300, !299, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!301 = !{ptr @.str.162, !299, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @.str.163, !299, !"<string literal>", i1 false, i1 false}
!303 = !{ptr @.str.164, !299, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @.str.165, !299, !"<string literal>", i1 false, i1 false}
!305 = !{ptr @.str.166, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/dma/ste_dma40.c", i32 1907, i32 5}
!307 = !{ptr @.str.167, !306, !"<string literal>", i1 false, i1 false}
!308 = !{ptr @d40_allocate_channel._entry, !306, !"_entry", i1 false, i1 false}
!309 = !{ptr @d40_allocate_channel._entry_ptr, !306, !"_entry_ptr", i1 false, i1 false}
!310 = !{ptr @.str.169, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/dma/ste_dma40.c", i32 1916, i32 4}
!312 = !{ptr @d40_allocate_channel._entry.168, !311, !"_entry", i1 false, i1 false}
!313 = !{ptr @d40_allocate_channel._entry_ptr.170, !311, !"_entry_ptr", i1 false, i1 false}
!314 = !{ptr @d40_get_prmo.phy_map, !315, !"phy_map", i1 false, i1 false}
!315 = !{!"../drivers/dma/ste_dma40.c", i32 1325, i32 28}
!316 = !{ptr @d40_get_prmo.log_map, !317, !"log_map", i1 false, i1 false}
!317 = !{!"../drivers/dma/ste_dma40.c", i32 1333, i32 28}
!318 = !{ptr @.str.171, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/dma/ste_dma40.c", i32 2461, i32 3}
!320 = !{ptr @.str.172, !319, !"<string literal>", i1 false, i1 false}
!321 = !{ptr @d40_free_chan_resources._entry, !319, !"_entry", i1 false, i1 false}
!322 = !{ptr @d40_free_chan_resources._entry_ptr, !319, !"_entry_ptr", i1 false, i1 false}
!323 = !{ptr @.str.174, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/dma/ste_dma40.c", i32 2470, i32 3}
!325 = !{ptr @d40_free_chan_resources._entry.173, !324, !"_entry", i1 false, i1 false}
!326 = !{ptr @d40_free_chan_resources._entry_ptr.175, !324, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @.str.176, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/dma/ste_dma40.c", i32 2000, i32 3}
!329 = !{ptr @.str.177, !328, !"<string literal>", i1 false, i1 false}
!330 = !{ptr @d40_free_dma._entry, !328, !"_entry", i1 false, i1 false}
!331 = !{ptr @d40_free_dma._entry_ptr, !328, !"_entry_ptr", i1 false, i1 false}
!332 = !{ptr @.str.179, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/dma/ste_dma40.c", i32 2006, i32 3}
!334 = !{ptr @d40_free_dma._entry.178, !333, !"_entry", i1 false, i1 false}
!335 = !{ptr @d40_free_dma._entry_ptr.180, !333, !"_entry_ptr", i1 false, i1 false}
!336 = !{ptr @.str.182, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/dma/ste_dma40.c", i32 2016, i32 3}
!338 = !{ptr @d40_free_dma._entry.181, !337, !"_entry", i1 false, i1 false}
!339 = !{ptr @d40_free_dma._entry_ptr.183, !337, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @.str.185, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/dma/ste_dma40.c", i32 2023, i32 3}
!342 = !{ptr @d40_free_dma._entry.184, !341, !"_entry", i1 false, i1 false}
!343 = !{ptr @d40_free_dma._entry_ptr.186, !341, !"_entry_ptr", i1 false, i1 false}
!344 = !{ptr @.str.187, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/dma/ste_dma40.c", i32 2565, i32 3}
!346 = !{ptr @d40_issue_pending._entry, !345, !"_entry", i1 false, i1 false}
!347 = !{ptr @d40_issue_pending._entry_ptr, !345, !"_entry_ptr", i1 false, i1 false}
!348 = !{ptr @.str.188, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/dma/ste_dma40.c", i32 2545, i32 3}
!350 = !{ptr @.str.189, !349, !"<string literal>", i1 false, i1 false}
!351 = !{ptr @d40_tx_status._entry, !349, !"_entry", i1 false, i1 false}
!352 = !{ptr @d40_tx_status._entry_ptr, !349, !"_entry_ptr", i1 false, i1 false}
!353 = !{ptr @.str.190, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/dma/ste_dma40.c", i32 2079, i32 3}
!355 = !{ptr @d40_is_paused._entry, !354, !"_entry", i1 false, i1 false}
!356 = !{ptr @d40_is_paused._entry_ptr, !354, !"_entry_ptr", i1 false, i1 false}
!357 = !{ptr @.str.191, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/dma/ste_dma40.c", i32 1420, i32 3}
!359 = !{ptr @d40_pause._entry, !358, !"_entry", i1 false, i1 false}
!360 = !{ptr @d40_pause._entry_ptr, !358, !"_entry_ptr", i1 false, i1 false}
!361 = !{ptr @.str.192, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/dma/ste_dma40.c", i32 1445, i32 3}
!363 = !{ptr @d40_resume._entry, !362, !"_entry", i1 false, i1 false}
!364 = !{ptr @d40_resume._entry_ptr, !362, !"_entry_ptr", i1 false, i1 false}
!365 = !{ptr @.str.193, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/dma/ste_dma40.c", i32 2587, i32 3}
!367 = !{ptr @d40_terminate_all._entry, !366, !"_entry", i1 false, i1 false}
!368 = !{ptr @d40_terminate_all._entry_ptr, !366, !"_entry_ptr", i1 false, i1 false}
!369 = !{ptr @.str.195, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/dma/ste_dma40.c", i32 2596, i32 3}
!371 = !{ptr @d40_terminate_all._entry.194, !370, !"_entry", i1 false, i1 false}
!372 = !{ptr @d40_terminate_all._entry_ptr.196, !370, !"_entry_ptr", i1 false, i1 false}
!373 = !{i32 1, !"wchar_size", i32 2}
!374 = !{i32 1, !"min_enum_size", i32 4}
!375 = !{i32 8, !"branch-target-enforcement", i32 0}
!376 = !{i32 8, !"sign-return-address", i32 0}
!377 = !{i32 8, !"sign-return-address-all", i32 0}
!378 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!379 = !{i32 7, !"uwtable", i32 1}
!380 = !{i32 7, !"frame-pointer", i32 2}
!381 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!382 = !{i64 6313719}
!383 = !{i64 2155543905}
!384 = !{i64 2155545915}
!385 = !{i64 6313301}
!386 = !{i8 0, i8 2}
!387 = !{i64 2155551934}
!388 = !{i64 2155505013}
!389 = !{i64 2155505607}
!390 = !{i64 2155511985}
!391 = !{!"branch_weights", i32 1, i32 2000}
!392 = !{i64 2155494048}
!393 = !{i64 2155494560}
!394 = !{i64 2155498093}
!395 = !{i64 2155500248}
!396 = !{!"branch_weights", i32 2000, i32 1}
!397 = !{i64 2155528180}
!398 = !{i64 2155390105}
!399 = !{i64 2155390520}
!400 = !{i64 2155373876}
!401 = !{i64 2155374422}
!402 = !{i64 2155372789}
!403 = !{i64 2155373341}
!404 = !{i64 2155519579}
!405 = !{i64 2155520136}
!406 = !{i64 2155520565}
!407 = !{i64 2155520995}
!408 = !{i64 2155521428}
!409 = !{i64 2155521872}
!410 = !{i64 2155522326}
!411 = !{i64 2155315100}
!412 = !{i64 2155315534}
!413 = !{i64 2155315968}
!414 = !{i64 2155316402}
!415 = !{i64 2155316836}
!416 = !{i64 2155317270}
!417 = !{i64 2155317704}
!418 = !{i64 2155318138}
!419 = !{i64 2155367219}
!420 = !{i64 2155354090}
!421 = !{i64 2155365892}
!422 = !{i64 2155366375}
!423 = !{i64 2155340087}
!424 = !{i64 2155339585}
!425 = !{i64 2155340870}
!426 = !{i64 2155341267}
!427 = !{i64 2155341109}
!428 = !{i64 2155354914}
!429 = !{i64 2155355320}
!430 = !{i64 2155356151}
!431 = !{i64 2155356490}
!432 = !{i64 2155356332}
!433 = !{i64 2155359811}
!434 = !{i64 2155360614}
!435 = !{i64 2148418236, i64 2148418241, i64 2148418254, i64 2148418298, i64 2148418332, i64 2148418353}
!436 = !{i64 2155277385, i64 2155277872, i64 2155277422, i64 2155277478, i64 2155277512, i64 2155277536, i64 2155277577, i64 2155277598, i64 2155277626, i64 2155277660}
!437 = !{i64 2155433444}
!438 = !{i64 2155433881}
!439 = !{i64 2155369138}
!440 = !{i64 2155369616}
!441 = !{i64 2155370086}
!442 = !{i64 2155370532}
!443 = !{i64 2155370965}
!444 = !{i64 2155371359}
!445 = !{i64 2155371750}
!446 = !{i64 2155372132}
!447 = !{i64 2155278885}
!448 = !{i64 2155417351}
!449 = !{i64 2155417834}
!450 = !{i64 2155416746}
!451 = !{i32 0, i32 33}
