; ModuleID = '/llk/IR_all_yes/drivers/dma/dw/core.c_pt.bc'
source_filename = "../drivers/dma/dw/core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+dw_dma_filter\22, \22a\22\09"
module asm "\09.weak\09__crc_dw_dma_filter\09\09\09\09"
module asm "\09.long\09__crc_dw_dma_filter\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dw_dma_filter:\09\09\09\09\09"
module asm "\09.asciz \09\22dw_dma_filter\22\09\09\09\09\09"
module asm "__kstrtabns_dw_dma_filter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+do_dw_dma_disable\22, \22a\22\09"
module asm "\09.weak\09__crc_do_dw_dma_disable\09\09\09\09"
module asm "\09.long\09__crc_do_dw_dma_disable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_do_dw_dma_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22do_dw_dma_disable\22\09\09\09\09\09"
module asm "__kstrtabns_do_dw_dma_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+do_dw_dma_enable\22, \22a\22\09"
module asm "\09.weak\09__crc_do_dw_dma_enable\09\09\09\09"
module asm "\09.long\09__crc_do_dw_dma_enable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_do_dw_dma_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22do_dw_dma_enable\22\09\09\09\09\09"
module asm "__kstrtabns_do_dw_dma_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dw_dma_slave = type { ptr, i8, i8, i8, i8, i8, i8 }
%struct.dw_dma_chan = type { %struct.dma_chan, ptr, i8, i8, i32, ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, i32, i32, i8, i32, %struct.dw_dma_slave, %struct.dma_slave_config }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dw_dma = type { %struct.dma_device, [20 x i8], ptr, ptr, %struct.tasklet_struct, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.dw_dma_regs = type { [8 x %struct.dw_dma_chan_regs], %struct.dw_dma_irq_regs, %struct.dw_dma_irq_regs, %struct.dw_dma_irq_regs, %struct.dw_dma_irq_regs, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dw_dma_chan_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dw_dma_irq_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dw_dma_chip = type { ptr, i32, i32, ptr, ptr, ptr, ptr }
%struct.dw_dma_platform_data = type { i32, i32, i32, i32, i32, [4 x i32], [8 x i32], [8 x i32], i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.dw_desc = type { %struct.dw_lli, %struct.list_head, %struct.list_head, %struct.dma_async_tx_descriptor, i32, i32, i32 }
%struct.dw_lli = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_slave_caps = type { i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i8 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.dmaengine_result = type { i32, i32 }

@__kstrtab_dw_dma_filter = external dso_local constant [0 x i8], align 1
@__kstrtabns_dw_dma_filter = external dso_local constant [0 x i8], align 1
@__ksymtab_dw_dma_filter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dw_dma_filter to i32), ptr @__kstrtab_dw_dma_filter, ptr @__kstrtabns_dw_dma_filter }, section "___ksymtab_gpl+dw_dma_filter", align 4
@do_dma_probe.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 15, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dw_dmac_core\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"do_dma_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/dma/dw/core.c\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DW_PARAMS: 0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@do_dma_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1140, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"No memory for descriptors dma pool\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@do_dma_probe._entry_ptr = internal global ptr @do_dma_probe._entry, section ".printk_index", align 4
@do_dma_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dwc->lock\00", [21 x i8] zeroinitializer }, align 32
@do_dma_probe.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.8, i8 1, i8 41, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DWC_PARAMS[%d]: 0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@do_dma_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 1266, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"DesignWare DMA Controller, %d channels\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@do_dma_probe._entry_ptr.12 = internal global ptr @do_dma_probe._entry.9, section ".printk_index", align 4
@__kstrtab_do_dw_dma_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_do_dw_dma_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_do_dw_dma_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @do_dw_dma_disable to i32), ptr @__kstrtab_do_dw_dma_disable, ptr @__kstrtabns_do_dw_dma_disable }, section "___ksymtab_gpl+do_dw_dma_disable", align 4
@__kstrtab_do_dw_dma_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_do_dw_dma_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_do_dw_dma_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @do_dw_dma_enable to i32), ptr @__kstrtab_do_dw_dma_enable, ptr @__kstrtabns_do_dw_dma_enable }, section "___ksymtab_gpl+do_dw_dma_enable", align 4
@__UNIQUE_ID_file262 = internal constant [46 x i8] c"dw_dmac_core.file=drivers/dma/dw/dw_dmac_core\00", section ".modinfo", align 1
@__UNIQUE_ID_license263 = internal constant [28 x i8] c"dw_dmac_core.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description264 = internal constant [72 x i8] c"dw_dmac_core.description=Synopsys DesignWare DMA Controller core driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author265 = internal constant [47 x i8] c"dw_dmac_core.author=Haavard Skinnemoen (Atmel)\00", section ".modinfo", align 1
@__UNIQUE_ID_author266 = internal constant [54 x i8] c"dw_dmac_core.author=Viresh Kumar <vireshk@kernel.org>\00", section ".modinfo", align 1
@dw_dma_tasklet.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 119, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dw_dma_tasklet\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: status_err=%x\0A\00", [45 x i8] zeroinitializer }, align 32
@dw_dma_tasklet.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.15, i8 0, i8 120, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Cyclic xfer is not implemented\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s %s: Bad descriptor submitted for DMA!\0A  cookie: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@dwc_dostart._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 184, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: BUG: Attempted to start non-idle channel\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dwc_dostart\00", [20 x i8] zeroinitializer }, align 32
@dwc_dostart._entry_ptr = internal global ptr @dwc_dostart._entry, section ".printk_index", align 4
@dwc_dostart._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 196, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"BUG: Attempted to start new LLP transfer inside ongoing one\0A\00", [35 x i8] zeroinitializer }, align 32
@dwc_dostart._entry_ptr.21 = internal global ptr @dwc_dostart._entry.19, section ".printk_index", align 4
@dwc_dump_chan_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 138, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"  SAR: 0x%x DAR: 0x%x LLP: 0x%x CTL: 0x%x:%08x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dwc_dump_chan_regs\00", [45 x i8] zeroinitializer }, align 32
@dwc_dump_chan_regs._entry_ptr = internal global ptr @dwc_dump_chan_regs._entry, section ".printk_index", align 4
@dwc_dump_lli._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 420, ptr @.str.26, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"  desc: s0x%x d0x%x l0x%x c0x%x:%x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dwc_dump_lli\00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\012\00", [29 x i8] zeroinitializer }, align 32
@dwc_dump_lli._entry_ptr = internal global ptr @dwc_dump_lli._entry, section ".printk_index", align 4
@dwc_descriptor_complete.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 0, i8 60, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dwc_descriptor_complete\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"descriptor %u complete\0A\00", [40 x i8] zeroinitializer }, align 32
@dwc_scan_descriptors.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 0, i8 89, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dwc_scan_descriptors\00", [43 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: soft LLP mode\0A\00", [45 x i8] zeroinitializer }, align 32
@dwc_scan_descriptors.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.31, i8 0, i8 90, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: llp=%pad\0A\00", [18 x i8] zeroinitializer }, align 32
@dwc_scan_descriptors._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.29, ptr @.str.2, i32 404, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"BUG: All descriptors done, but channel not idle!\0A\00", [46 x i8] zeroinitializer }, align 32
@dwc_scan_descriptors._entry_ptr = internal global ptr @dwc_scan_descriptors._entry, section ".printk_index", align 4
@dwc_complete_all._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 271, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"BUG: XFER bit set, but channel not idle!\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dwc_complete_all\00", [47 x i8] zeroinitializer }, align 32
@dwc_complete_all._entry_ptr = internal global ptr @dwc_complete_all._entry, section ".printk_index", align 4
@dwc_dostart_first_queued.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.36, i8 0, i8 57, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dwc_dostart_first_queued\00", [39 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: started %u\0A\00", [16 x i8] zeroinitializer }, align 32
@dw_dma_interrupt.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.38, i8 0, i8 126, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dw_dma_interrupt\00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: status=0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@dw_dma_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.2, i32 522, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"BUG: Unexpected interrupts pending: 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@dw_dma_interrupt._entry_ptr = internal global ptr @dw_dma_interrupt._entry, section ".printk_index", align 4
@dwc_alloc_chan_resources.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.41, i8 0, i8 -11, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dwc_alloc_chan_resources\00", [39 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@dwc_alloc_chan_resources.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.42, i8 0, i8 -10, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DMA channel not idle?\0A\00", [41 x i8] zeroinitializer }, align 32
@dwc_alloc_chan_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.40, ptr @.str.2, i32 1003, ptr @.str.44, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Wrong controller-specific data\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@dwc_alloc_chan_resources._entry_ptr = internal global ptr @dwc_alloc_chan_resources._entry, section ".printk_index", align 4
@dwc_free_chan_resources.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.46, i8 0, i8 -1, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dwc_free_chan_resources\00", [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: descs allocated=%u\0A\00", [40 x i8] zeroinitializer }, align 32
@dwc_free_chan_resources.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.47, i8 1, i8 5, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s: done\0A\00", [22 x i8] zeroinitializer }, align 32
@dwc_prep_dma_memcpy.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.49, i8 0, i8 -117, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dwc_prep_dma_memcpy\00", [44 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: d%pad s%pad l0x%zx f0x%lx\0A\00", [33 x i8] zeroinitializer }, align 32
@dwc_prep_dma_memcpy.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.50, i8 0, i8 -116, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: length is zero!\0A\00", [43 x i8] zeroinitializer }, align 32
@dwc_tx_submit.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.52, i8 0, i8 18, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dwc_tx_submit\00", [18 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: queued %u\0A\00", [17 x i8] zeroinitializer }, align 32
@dwc_prep_slave_sg.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.41, i8 0, i8 -97, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dwc_prep_slave_sg\00", [46 x i8] zeroinitializer }, align 32
@dwc_prep_slave_sg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.53, ptr @.str.2, i32 762, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"not enough descriptors available. Direction %d\0A\00", [48 x i8] zeroinitializer }, align 32
@dwc_prep_slave_sg._entry_ptr = internal global ptr @dwc_prep_slave_sg._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1087, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1140, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1171, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1187, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1265, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 477, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 482, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 454, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 182, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 195, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 132, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 415, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 243, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 358, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 363, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 403, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 270, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 228, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 504, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 520, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 983, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 987, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1003, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1021, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1046, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 557, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 562, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 74, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 637, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.241 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.242 = private constant [25 x i8] c"../drivers/dma/dw/core.c\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 761, i32 2 }
@llvm.compiler.used = appending global [82 x ptr] [ptr @__UNIQUE_ID_author265, ptr @__UNIQUE_ID_author266, ptr @__UNIQUE_ID_description264, ptr @__UNIQUE_ID_file262, ptr @__UNIQUE_ID_license263, ptr @__ksymtab_do_dw_dma_disable, ptr @__ksymtab_do_dw_dma_enable, ptr @__ksymtab_dw_dma_filter, ptr @do_dma_probe._entry, ptr @do_dma_probe._entry.9, ptr @do_dma_probe._entry_ptr, ptr @do_dma_probe._entry_ptr.12, ptr @dw_dma_interrupt._entry, ptr @dw_dma_interrupt._entry_ptr, ptr @dwc_alloc_chan_resources._entry, ptr @dwc_alloc_chan_resources._entry_ptr, ptr @dwc_complete_all._entry, ptr @dwc_complete_all._entry_ptr, ptr @dwc_dostart._entry, ptr @dwc_dostart._entry.19, ptr @dwc_dostart._entry_ptr, ptr @dwc_dostart._entry_ptr.21, ptr @dwc_dump_chan_regs._entry, ptr @dwc_dump_chan_regs._entry_ptr, ptr @dwc_dump_lli._entry, ptr @dwc_dump_lli._entry_ptr, ptr @dwc_prep_slave_sg._entry, ptr @dwc_prep_slave_sg._entry_ptr, ptr @dwc_scan_descriptors._entry, ptr @dwc_scan_descriptors._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @do_dma_probe.__key, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_dma_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_dma_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_dma_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc_dostart._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc_dostart._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc_dump_chan_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc_dump_lli._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc_scan_descriptors._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc_complete_all._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_dma_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc_alloc_chan_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc_prep_slave_sg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @dw_dma_filter(ptr nocapture noundef %chan, ptr nocapture noundef readonly %param) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %param, align 4
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %cmp.not = icmp eq ptr %1, %5
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %channels = getelementptr inbounds %struct.dw_dma_slave, ptr %param, i32 0, i32 5
  %6 = ptrtoint ptr %channels to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %channels, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %mask = getelementptr inbounds %struct.dw_dma_chan, ptr %chan, i32 0, i32 2
  %8 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mask, align 4
  %and14 = and i8 %9, %7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and14)
  %tobool4.not = icmp eq i8 %and14, 0
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %dws7 = getelementptr inbounds %struct.dw_dma_chan, ptr %chan, i32 0, i32 14
  %10 = call ptr @memcpy(ptr %dws7, ptr %param, i32 12)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end6 ], [ false, %entry.cleanup_crit_edge ], [ false, %land.lhs.true.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @do_dw_dma_off(ptr nocapture noundef readonly %dw) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  tail call void @arm_heavy_mb() #8
  %regs.i = getelementptr inbounds %struct.dw_dma, ptr %dw, i32 0, i32 2
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %CFG = getelementptr inbounds %struct.dw_dma_regs, ptr %1, i32 0, i32 19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CFG, i32 0) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  tail call void @arm_heavy_mb() #8
  %all_chan_mask = getelementptr inbounds %struct.dw_dma, ptr %dw, i32 0, i32 6
  %2 = ptrtoint ptr %all_chan_mask to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %all_chan_mask, align 4
  %conv = zext i8 %3 to i32
  %4 = shl nuw nsw i32 %conv, 16
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 4
  %MASK = getelementptr inbounds %struct.dw_dma_regs, ptr %6, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MASK, i32 %4) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !148
  tail call void @arm_heavy_mb() #8
  %7 = ptrtoint ptr %all_chan_mask to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %all_chan_mask, align 4
  %conv7 = zext i8 %8 to i32
  %9 = shl nuw nsw i32 %conv7, 16
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %BLOCK = getelementptr inbounds %struct.dw_dma_regs, ptr %11, i32 0, i32 3, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %BLOCK, i32 %9) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  %12 = ptrtoint ptr %all_chan_mask to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %all_chan_mask, align 4
  %conv15 = zext i8 %13 to i32
  %14 = shl nuw nsw i32 %conv15, 16
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 4
  %SRC_TRAN = getelementptr inbounds %struct.dw_dma_regs, ptr %16, i32 0, i32 3, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %SRC_TRAN, i32 %14) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !150
  tail call void @arm_heavy_mb() #8
  %17 = ptrtoint ptr %all_chan_mask to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %all_chan_mask, align 4
  %conv23 = zext i8 %18 to i32
  %19 = shl nuw nsw i32 %conv23, 16
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 4
  %DST_TRAN = getelementptr inbounds %struct.dw_dma_regs, ptr %21, i32 0, i32 3, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DST_TRAN, i32 %19) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !151
  tail call void @arm_heavy_mb() #8
  %22 = ptrtoint ptr %all_chan_mask to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %all_chan_mask, align 4
  %conv31 = zext i8 %23 to i32
  %24 = shl nuw nsw i32 %conv31, 16
  %25 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i, align 4
  %ERROR = getelementptr inbounds %struct.dw_dma_regs, ptr %26, i32 0, i32 3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ERROR, i32 %24) #8, !srcloc !146
  %27 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i, align 4
  %CFG3763 = getelementptr inbounds %struct.dw_dma_regs, ptr %28, i32 0, i32 19
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CFG3763) #8, !srcloc !152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  %30 = and i32 %29, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not64 = icmp eq i32 %30, 0
  br i1 %tobool.not64, label %entry.while.end_crit_edge, label %entry.do.end43_crit_edge

entry.do.end43_crit_edge:                         ; preds = %entry
  br label %do.end43

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

do.end43:                                         ; preds = %do.end43.do.end43_crit_edge, %entry.do.end43_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !155
  %31 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i, align 4
  %CFG37 = getelementptr inbounds %struct.dw_dma_regs, ptr %32, i32 0, i32 19
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CFG37) #8, !srcloc !152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  %34 = and i32 %33, 16777216
  %tobool.not = icmp eq i32 %34, 0
  br i1 %tobool.not, label %do.end43.while.end_crit_edge, label %do.end43.do.end43_crit_edge

do.end43.do.end43_crit_edge:                      ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end43

do.end43.while.end_crit_edge:                     ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %do.end43.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @do_dw_dma_on(ptr nocapture noundef readonly %dw) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !156
  tail call void @arm_heavy_mb() #8
  %regs.i = getelementptr inbounds %struct.dw_dma, ptr %dw, i32 0, i32 2
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %CFG = getelementptr inbounds %struct.dw_dma_regs, ptr %1, i32 0, i32 19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CFG, i32 16777216) #8, !srcloc !146
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @do_dma_probe(ptr nocapture noundef readonly %chip) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dw1 = getelementptr inbounds %struct.dw_dma_chip, ptr %chip, i32 0, i32 5
  %0 = ptrtoint ptr %dw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dw1, align 4
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 108, i32 noundef 3520) #8
  %pdata2 = getelementptr inbounds %struct.dw_dma, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %pdata2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %pdata2, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %regs = getelementptr inbounds %struct.dw_dma_chip, ptr %chip, i32 0, i32 3
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %regs4 = getelementptr inbounds %struct.dw_dma, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %regs4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %regs4, align 4
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip, align 4
  %call.i425 = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #8
  %pdata7 = getelementptr inbounds %struct.dw_dma_chip, ptr %chip, i32 0, i32 6
  %10 = ptrtoint ptr %pdata7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdata7, align 4
  %tobool8.not = icmp eq ptr %11, null
  br i1 %tobool8.not, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  %12 = ptrtoint ptr %regs4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs4, align 4
  %DW_PARAMS = getelementptr inbounds %struct.dw_dma_regs, ptr %13, i32 0, i32 35
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %DW_PARAMS) #8, !srcloc !152
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_dma_probe.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@do_dma_probe, %do.end)) #8
          to label %if.then19 [label %do.end], !srcloc !158

if.then19:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @do_dma_probe.__UNIQUE_ID_ddebug260, ptr noundef %17, ptr noundef nonnull @.str.3, i32 noundef %15) #8
  br label %do.end

do.end:                                           ; preds = %if.then19, %if.then9
  %18 = and i32 %15, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool22.not = icmp eq i32 %18, 0
  br i1 %tobool22.not, label %do.end.cleanup.sink.split_crit_edge, label %for.body.preheader

do.end.cleanup.sink.split_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

for.body.preheader:                               ; preds = %do.end
  %19 = ptrtoint ptr %pdata2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdata2, align 4
  %shr28 = lshr i32 %15, 8
  %and29 = and i32 %shr28, 7
  %add = add nuw nsw i32 %and29, 1
  %nr_channels = getelementptr inbounds %struct.dw_dma_platform_data, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %nr_channels to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add, ptr %nr_channels, align 4
  %shr30 = lshr i32 %15, 11
  %and31 = and i32 %shr30, 3
  %add32 = add nuw nsw i32 %and31, 1
  %22 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add32, ptr %20, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0451 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %mul = shl i32 %i.0451, 1
  %add34 = add i32 %mul, 15
  %shr35 = lshr i32 %15, %add34
  %and36 = and i32 %shr35, 3
  %shl = shl nuw nsw i32 4, %and36
  %arrayidx = getelementptr %struct.dw_dma_platform_data, ptr %20, i32 0, i32 5, i32 %i.0451
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %shl, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.0451, 1
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %20, align 4
  %cmp = icmp ult i32 %inc, %25
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %regs4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs4, align 4
  %MAX_BLK_SIZE = getelementptr inbounds %struct.dw_dma_regs, ptr %27, i32 0, i32 34
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %MAX_BLK_SIZE) #8, !srcloc !152
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !159
  %block_size = getelementptr inbounds %struct.dw_dma_platform_data, ptr %20, i32 0, i32 4
  %30 = ptrtoint ptr %block_size to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %block_size, align 4
  %chan_allocation_order = getelementptr inbounds %struct.dw_dma_platform_data, ptr %20, i32 0, i32 2
  %31 = ptrtoint ptr %chan_allocation_order to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %chan_allocation_order, align 4
  %chan_priority = getelementptr inbounds %struct.dw_dma_platform_data, ptr %20, i32 0, i32 3
  %32 = ptrtoint ptr %chan_priority to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %chan_priority, align 4
  br label %if.end52

if.else:                                          ; preds = %if.end
  %nr_channels44 = getelementptr inbounds %struct.dw_dma_platform_data, ptr %11, i32 0, i32 1
  %33 = ptrtoint ptr %nr_channels44 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nr_channels44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %34)
  %cmp45 = icmp ugt i32 %34, 8
  br i1 %cmp45, label %if.else.cleanup.sink.split_crit_edge, label %if.else47

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.else47:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %pdata2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdata2, align 4
  %37 = call ptr @memcpy(ptr %36, ptr %11, i32 108)
  %38 = load ptr, ptr %pdata2, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.else47, %for.end
  %pdata.0 = phi ptr [ %38, %if.else47 ], [ %20, %for.end ]
  %nr_channels54 = getelementptr inbounds %struct.dw_dma_platform_data, ptr %pdata.0, i32 0, i32 1
  %39 = ptrtoint ptr %nr_channels54 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nr_channels54, align 4
  %41 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %40, i32 220) #8
  %42 = extractvalue { i32, i1 } %41, 1
  br i1 %42, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !160

devm_kcalloc.exit.thread:                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  %chan447 = getelementptr inbounds %struct.dw_dma, ptr %1, i32 0, i32 5
  %43 = ptrtoint ptr %chan447 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %chan447, align 4
  br label %cleanup.sink.split

devm_kcalloc.exit:                                ; preds = %if.end52
  %44 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %chip, align 4
  %46 = extractvalue { i32, i1 } %41, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %45, i32 noundef %46, i32 noundef 3520) #8
  %chan = getelementptr inbounds %struct.dw_dma, ptr %1, i32 0, i32 5
  %47 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call5.i.i, ptr %chan, align 4
  %tobool57.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool57.not, label %devm_kcalloc.exit.cleanup.sink.split_crit_edge, label %if.end59

devm_kcalloc.exit.cleanup.sink.split_crit_edge:   ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end59:                                         ; preds = %devm_kcalloc.exit
  %48 = ptrtoint ptr %nr_channels54 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nr_channels54, align 4
  %notmask = shl nsw i32 -1, %49
  %50 = trunc i32 %notmask to i8
  %conv = xor i8 %50, -1
  %all_chan_mask = getelementptr inbounds %struct.dw_dma, ptr %1, i32 0, i32 6
  %51 = ptrtoint ptr %all_chan_mask to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv, ptr %all_chan_mask, align 4
  %disable = getelementptr inbounds %struct.dw_dma, ptr %1, i32 0, i32 16
  %52 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %disable, align 4
  tail call void %53(ptr noundef %1) #8
  %set_device_name = getelementptr inbounds %struct.dw_dma, ptr %1, i32 0, i32 15
  %54 = ptrtoint ptr %set_device_name to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %set_device_name, align 4
  %id = getelementptr inbounds %struct.dw_dma_chip, ptr %chip, i32 0, i32 1
  %56 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %id, align 4
  tail call void %55(ptr noundef %1, i32 noundef %57) #8
  %name = getelementptr inbounds %struct.dw_dma, ptr %1, i32 0, i32 1
  %58 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %chip, align 4
  %call63 = tail call ptr @dmam_pool_create(ptr noundef %name, ptr noundef %59, i32 noundef 156, i32 noundef 4, i32 noundef 0) #8
  %desc_pool = getelementptr inbounds %struct.dw_dma, ptr %1, i32 0, i32 3
  %60 = ptrtoint ptr %desc_pool to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call63, ptr %desc_pool, align 4
  %tobool65.not = icmp eq ptr %call63, null
  br i1 %tobool65.not, label %do.end69, label %if.end71

do.end69:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.4) #11
  br label %cleanup.sink.split

if.end71:                                         ; preds = %if.end59
  %tasklet = getelementptr inbounds %struct.dw_dma, ptr %1, i32 0, i32 4
  tail call void @tasklet_setup(ptr noundef %tasklet, ptr noundef nonnull @dw_dma_tasklet) #8
  %irq = getelementptr inbounds %struct.dw_dma_chip, ptr %chip, i32 0, i32 2
  %63 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %irq, align 4
  %call.i427 = tail call i32 @request_threaded_irq(i32 noundef %64, ptr noundef nonnull @dw_dma_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %name, ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i427)
  %tobool75.not = icmp eq i32 %call.i427, 0
  br i1 %tobool75.not, label %if.end77, label %if.end71.cleanup.sink.split_crit_edge

if.end71.cleanup.sink.split_crit_edge:            ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end77:                                         ; preds = %if.end71
  %channels = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 3
  %65 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %channels, ptr %channels, align 4
  %prev.i = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 3, i32 1
  %66 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %channels, ptr %prev.i, align 4
  %67 = ptrtoint ptr %nr_channels54 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %nr_channels54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp80452.not = icmp eq i32 %68, 0
  br i1 %cmp80452.not, label %if.end77.do.body194_crit_edge, label %for.body82.lr.ph

if.end77.do.body194_crit_edge:                    ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body194

for.body82.lr.ph:                                 ; preds = %if.end77
  %chan_allocation_order88 = getelementptr inbounds %struct.dw_dma_platform_data, ptr %pdata.0, i32 0, i32 2
  %chan_priority101 = getelementptr inbounds %struct.dw_dma_platform_data, ptr %pdata.0, i32 0, i32 3
  %block_size178 = getelementptr inbounds %struct.dw_dma_platform_data, ptr %pdata.0, i32 0, i32 4
  br label %for.body82

for.body82:                                       ; preds = %if.end190.for.body82_crit_edge, %for.body82.lr.ph
  %i.1453 = phi i32 [ 0, %for.body82.lr.ph ], [ %inc192, %if.end190.for.body82_crit_edge ]
  %69 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %chan, align 4
  %arrayidx84 = getelementptr %struct.dw_dma_chan, ptr %70, i32 %i.1453
  %71 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %1, ptr %arrayidx84, align 4
  %cookie.i = getelementptr inbounds %struct.dma_chan, ptr %arrayidx84, i32 0, i32 2
  %72 = ptrtoint ptr %cookie.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 1, ptr %cookie.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %arrayidx84, i32 0, i32 3
  %73 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 1, ptr %completed_cookie.i, align 4
  %74 = ptrtoint ptr %chan_allocation_order88 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %chan_allocation_order88, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp89 = icmp eq i32 %75, 0
  %device_node = getelementptr inbounds %struct.dma_chan, ptr %arrayidx84, i32 0, i32 8
  br i1 %cmp89, label %if.then91, label %if.else95

if.then91:                                        ; preds = %for.body82
  %76 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %device_node, ptr noundef %77, ptr noundef %channels) #8
  br i1 %call.i.i, label %if.then91.if.end100.sink.split_crit_edge, label %if.then91.if.end100_crit_edge

if.then91.if.end100_crit_edge:                    ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

if.then91.if.end100.sink.split_crit_edge:         ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100.sink.split

if.else95:                                        ; preds = %for.body82
  %78 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %channels, align 4
  %call.i.i430 = tail call zeroext i1 @__list_add_valid(ptr noundef %device_node, ptr noundef %channels, ptr noundef %79) #8
  br i1 %call.i.i430, label %if.end.i.i432, label %if.else95.if.end100_crit_edge

if.else95.if.end100_crit_edge:                    ; preds = %if.else95
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

if.end.i.i432:                                    ; preds = %if.else95
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %79, i32 0, i32 1
  br label %if.end100.sink.split

if.end100.sink.split:                             ; preds = %if.end.i.i432, %if.then91.if.end100.sink.split_crit_edge
  %prev1.i.i.sink = phi ptr [ %prev1.i.i, %if.end.i.i432 ], [ %prev.i, %if.then91.if.end100.sink.split_crit_edge ]
  %.sink = phi ptr [ %79, %if.end.i.i432 ], [ %channels, %if.then91.if.end100.sink.split_crit_edge ]
  %channels.sink455 = phi ptr [ %channels, %if.end.i.i432 ], [ %77, %if.then91.if.end100.sink.split_crit_edge ]
  %80 = ptrtoint ptr %prev1.i.i.sink to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %device_node, ptr %prev1.i.i.sink, align 4
  %81 = ptrtoint ptr %device_node to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %.sink, ptr %device_node, align 4
  %prev3.i.i431 = getelementptr inbounds %struct.list_head, ptr %device_node, i32 0, i32 1
  %82 = ptrtoint ptr %prev3.i.i431 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %channels.sink455, ptr %prev3.i.i431, align 4
  %83 = ptrtoint ptr %channels.sink455 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %device_node, ptr %channels.sink455, align 4
  br label %if.end100

if.end100:                                        ; preds = %if.end100.sink.split, %if.else95.if.end100_crit_edge, %if.then91.if.end100_crit_edge
  %84 = ptrtoint ptr %chan_priority101 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %chan_priority101, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp102 = icmp eq i32 %85, 0
  br i1 %cmp102, label %if.then104, label %if.end100.if.end112_crit_edge

if.end100.if.end112_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end112

if.then104:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  %86 = ptrtoint ptr %nr_channels54 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %nr_channels54, align 4
  %88 = xor i32 %i.1453, -1
  %sub107 = add i32 %87, %88
  br label %if.end112

if.end112:                                        ; preds = %if.then104, %if.end100.if.end112_crit_edge
  %conv110.sink.in = phi i32 [ %sub107, %if.then104 ], [ %i.1453, %if.end100.if.end112_crit_edge ]
  %conv110.sink = trunc i32 %conv110.sink.in to i8
  %89 = getelementptr %struct.dw_dma_chan, ptr %70, i32 %i.1453, i32 3
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %conv110.sink, ptr %89, align 1
  %91 = ptrtoint ptr %regs4 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regs4, align 4
  %arrayidx114 = getelementptr [8 x %struct.dw_dma_chan_regs], ptr %92, i32 0, i32 %i.1453
  %ch_regs = getelementptr %struct.dw_dma_chan, ptr %70, i32 %i.1453, i32 1
  %93 = ptrtoint ptr %ch_regs to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %arrayidx114, ptr %ch_regs, align 4
  %lock = getelementptr %struct.dw_dma_chan, ptr %70, i32 %i.1453, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @do_dma_probe.__key, i16 noundef signext 3) #8
  %shl119 = shl nuw i32 1, %i.1453
  %conv120 = trunc i32 %shl119 to i8
  %mask = getelementptr %struct.dw_dma_chan, ptr %70, i32 %i.1453, i32 2
  %94 = ptrtoint ptr %mask to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %conv120, ptr %mask, align 4
  %active_list = getelementptr %struct.dw_dma_chan, ptr %70, i32 %i.1453, i32 8
  %95 = ptrtoint ptr %active_list to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile ptr %active_list, ptr %active_list, align 4
  %prev.i434 = getelementptr %struct.dw_dma_chan, ptr %70, i32 %i.1453, i32 8, i32 1
  %96 = ptrtoint ptr %prev.i434 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %active_list, ptr %prev.i434, align 4
  %queue = getelementptr %struct.dw_dma_chan, ptr %70, i32 %i.1453, i32 9
  %97 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %queue, ptr %queue, align 4
  %prev.i435 = getelementptr %struct.dw_dma_chan, ptr %70, i32 %i.1453, i32 9, i32 1
  %98 = ptrtoint ptr %prev.i435 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %queue, ptr %prev.i435, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !161
  tail call void @arm_heavy_mb() #8
  %99 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %mask, align 4
  %conv125 = zext i8 %100 to i32
  %101 = shl nuw nsw i32 %conv125, 16
  %102 = ptrtoint ptr %regs4 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %regs4, align 4
  %CH_EN = getelementptr inbounds %struct.dw_dma_regs, ptr %103, i32 0, i32 21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CH_EN, i32 %101) #8, !srcloc !146
  %direction = getelementptr %struct.dw_dma_chan, ptr %70, i32 %i.1453, i32 4
  %104 = ptrtoint ptr %direction to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 4, ptr %direction, align 4
  br i1 %tobool8.not, label %if.then129, label %if.else177

if.then129:                                       ; preds = %if.end112
  %sub131 = sub i32 7, %i.1453
  %105 = ptrtoint ptr %regs4 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %regs4, align 4
  %arrayidx133 = getelementptr %struct.dw_dma_regs, ptr %106, i32 0, i32 32, i32 %sub131
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx133) #8, !srcloc !152
  %108 = tail call i32 @llvm.bswap.i32(i32 %107)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !162
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_dma_probe.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@do_dma_probe, %do.end157)) #8
          to label %if.then153 [label %do.end157], !srcloc !158

if.then153:                                       ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #10
  %109 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @do_dma_probe.__UNIQUE_ID_ddebug261, ptr noundef %110, ptr noundef nonnull @.str.8, i32 noundef %i.1453, i32 noundef %108) #8
  br label %do.end157

do.end157:                                        ; preds = %if.then153, %if.then129
  %111 = ptrtoint ptr %block_size178 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %block_size178, align 4
  %mul159 = shl i32 %i.1453, 2
  %shr160 = lshr i32 %112, %mul159
  %and161 = and i32 %shr160, 15
  %shl162 = shl nuw nsw i32 4, %and161
  %sub163 = add nsw i32 %shl162, -1
  %block_size164 = getelementptr %struct.dw_dma_chan, ptr %70, i32 %i.1453, i32 11
  %113 = ptrtoint ptr %block_size164 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %sub163, ptr %block_size164, align 4
  %114 = and i32 %108, 10240
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %114)
  %115 = icmp ne i32 %114, 2048
  %nollp = getelementptr %struct.dw_dma_chan, ptr %70, i32 %i.1453, i32 12
  %frombool173 = zext i1 %115 to i8
  %116 = ptrtoint ptr %nollp to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %frombool173, ptr %nollp, align 4
  %shr174 = lshr i32 %108, 16
  %and175 = and i32 %shr174, 7
  %shl176 = shl nuw nsw i32 4, %and175
  br label %if.end190

if.else177:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #10
  %117 = ptrtoint ptr %block_size178 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %block_size178, align 4
  %block_size179 = getelementptr %struct.dw_dma_chan, ptr %70, i32 %i.1453, i32 11
  %119 = ptrtoint ptr %block_size179 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %block_size179, align 4
  %arrayidx180 = getelementptr %struct.dw_dma_platform_data, ptr %pdata.0, i32 0, i32 6, i32 %i.1453
  %120 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx180, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool181.not = icmp eq i32 %121, 0
  %nollp184 = getelementptr %struct.dw_dma_chan, ptr %70, i32 %i.1453, i32 12
  %frombool185 = zext i1 %tobool181.not to i8
  %122 = ptrtoint ptr %nollp184 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %frombool185, ptr %nollp184, align 4
  %arrayidx187 = getelementptr %struct.dw_dma_platform_data, ptr %pdata.0, i32 0, i32 7, i32 %i.1453
  %123 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx187, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool188.not = icmp eq i32 %124, 0
  %. = select i1 %tobool188.not, i32 256, i32 %124
  br label %if.end190

if.end190:                                        ; preds = %if.else177, %do.end157
  %..sink = phi i32 [ %., %if.else177 ], [ %shl176, %do.end157 ]
  %max_burst189 = getelementptr %struct.dw_dma_chan, ptr %70, i32 %i.1453, i32 13
  %125 = ptrtoint ptr %max_burst189 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %..sink, ptr %max_burst189, align 4
  %inc192 = add nuw i32 %i.1453, 1
  %126 = ptrtoint ptr %nr_channels54 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %nr_channels54, align 4
  %cmp80 = icmp ult i32 %inc192, %127
  br i1 %cmp80, label %if.end190.for.body82_crit_edge, label %if.end190.do.body194_crit_edge

if.end190.do.body194_crit_edge:                   ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body194

if.end190.for.body82_crit_edge:                   ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body82

do.body194:                                       ; preds = %if.end190.do.body194_crit_edge, %if.end77.do.body194_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !163
  tail call void @arm_heavy_mb() #8
  %128 = ptrtoint ptr %all_chan_mask to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %all_chan_mask, align 4
  %conv198 = zext i8 %129 to i32
  %130 = shl nuw i32 %conv198, 24
  %131 = ptrtoint ptr %regs4 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %regs4, align 4
  %CLEAR = getelementptr inbounds %struct.dw_dma_regs, ptr %132, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CLEAR, i32 %130) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !164
  tail call void @arm_heavy_mb() #8
  %133 = ptrtoint ptr %all_chan_mask to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %all_chan_mask, align 4
  %conv204 = zext i8 %134 to i32
  %135 = shl nuw i32 %conv204, 24
  %136 = ptrtoint ptr %regs4 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %regs4, align 4
  %BLOCK = getelementptr inbounds %struct.dw_dma_regs, ptr %137, i32 0, i32 4, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %BLOCK, i32 %135) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  %138 = ptrtoint ptr %all_chan_mask to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %all_chan_mask, align 4
  %conv211 = zext i8 %139 to i32
  %140 = shl nuw i32 %conv211, 24
  %141 = ptrtoint ptr %regs4 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %regs4, align 4
  %SRC_TRAN = getelementptr inbounds %struct.dw_dma_regs, ptr %142, i32 0, i32 4, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %SRC_TRAN, i32 %140) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !166
  tail call void @arm_heavy_mb() #8
  %143 = ptrtoint ptr %all_chan_mask to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %all_chan_mask, align 4
  %conv218 = zext i8 %144 to i32
  %145 = shl nuw i32 %conv218, 24
  %146 = ptrtoint ptr %regs4 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %regs4, align 4
  %DST_TRAN = getelementptr inbounds %struct.dw_dma_regs, ptr %147, i32 0, i32 4, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DST_TRAN, i32 %145) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !167
  tail call void @arm_heavy_mb() #8
  %148 = ptrtoint ptr %all_chan_mask to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %all_chan_mask, align 4
  %conv225 = zext i8 %149 to i32
  %150 = shl nuw i32 %conv225, 24
  %151 = ptrtoint ptr %regs4 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %regs4, align 4
  %ERROR = getelementptr inbounds %struct.dw_dma_regs, ptr %152, i32 0, i32 4, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ERROR, i32 %150) #8, !srcloc !146
  %cap_mask = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 11, ptr noundef %cap_mask) #8
  tail call void @_set_bit(i32 noundef 9, ptr noundef %cap_mask) #8
  tail call void @_set_bit(i32 noundef 0, ptr noundef %cap_mask) #8
  %153 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %chip, align 4
  %dev235 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %155 = ptrtoint ptr %dev235 to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %154, ptr %dev235, align 4
  %device_alloc_chan_resources = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 27
  %156 = ptrtoint ptr %device_alloc_chan_resources to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr @dwc_alloc_chan_resources, ptr %device_alloc_chan_resources, align 4
  %device_free_chan_resources = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 29
  %157 = ptrtoint ptr %device_free_chan_resources to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr @dwc_free_chan_resources, ptr %device_free_chan_resources, align 4
  %device_prep_dma_memcpy = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 30
  %158 = ptrtoint ptr %device_prep_dma_memcpy to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr @dwc_prep_dma_memcpy, ptr %device_prep_dma_memcpy, align 4
  %device_prep_slave_sg = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 39
  %159 = ptrtoint ptr %device_prep_slave_sg to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr @dwc_prep_slave_sg, ptr %device_prep_slave_sg, align 4
  %device_caps = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 43
  %160 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr @dwc_caps, ptr %device_caps, align 4
  %device_config = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 44
  %161 = ptrtoint ptr %device_config to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr @dwc_config, ptr %device_config, align 4
  %device_pause = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 45
  %162 = ptrtoint ptr %device_pause to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr @dwc_pause, ptr %device_pause, align 4
  %device_resume = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 46
  %163 = ptrtoint ptr %device_resume to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr @dwc_resume, ptr %device_resume, align 4
  %device_terminate_all = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 47
  %164 = ptrtoint ptr %device_terminate_all to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr @dwc_terminate_all, ptr %device_terminate_all, align 4
  %device_tx_status = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 49
  %165 = ptrtoint ptr %device_tx_status to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr @dwc_tx_status, ptr %device_tx_status, align 4
  %device_issue_pending = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 50
  %166 = ptrtoint ptr %device_issue_pending to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr @dwc_issue_pending, ptr %device_issue_pending, align 4
  %min_burst = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 22
  %167 = ptrtoint ptr %min_burst to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 1, ptr %min_burst, align 4
  %max_burst249 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 23
  %168 = ptrtoint ptr %max_burst249 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 256, ptr %max_burst249, align 4
  %src_addr_widths = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 19
  %169 = ptrtoint ptr %src_addr_widths to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 23, ptr %src_addr_widths, align 4
  %dst_addr_widths = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 20
  %170 = ptrtoint ptr %dst_addr_widths to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 23, ptr %dst_addr_widths, align 4
  %directions = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 21
  %171 = ptrtoint ptr %directions to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 7, ptr %directions, align 4
  %residue_granularity = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 26
  %172 = ptrtoint ptr %residue_granularity to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 2, ptr %residue_granularity, align 4
  %dma_parms.i = getelementptr inbounds %struct.device, ptr %154, i32 0, i32 22
  %173 = ptrtoint ptr %dma_parms.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %dma_parms.i, align 4
  %tobool.not.i = icmp eq ptr %174, null
  br i1 %tobool.not.i, label %do.body194.dma_set_max_seg_size.exit_crit_edge, label %if.then.i

do.body194.dma_set_max_seg_size.exit_crit_edge:   ; preds = %do.body194
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_set_max_seg_size.exit

if.then.i:                                        ; preds = %do.body194
  call void @__sanitizer_cov_trace_pc() #10
  %175 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %chan, align 4
  %block_size258 = getelementptr inbounds %struct.dw_dma_chan, ptr %176, i32 0, i32 11
  %177 = ptrtoint ptr %block_size258 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %block_size258, align 4
  %179 = ptrtoint ptr %174 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %178, ptr %174, align 4
  br label %dma_set_max_seg_size.exit

dma_set_max_seg_size.exit:                        ; preds = %if.then.i, %do.body194.dma_set_max_seg_size.exit_crit_edge
  %call261 = tail call i32 @dma_async_device_register(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call261)
  %tobool262.not = icmp eq i32 %call261, 0
  br i1 %tobool262.not, label %do.end267, label %err_dma_register

do.end267:                                        ; preds = %dma_set_max_seg_size.exit
  call void @__sanitizer_cov_trace_pc() #10
  %180 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %chip, align 4
  %182 = ptrtoint ptr %nr_channels54 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %nr_channels54, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %181, ptr noundef nonnull @.str.10, i32 noundef %183) #11
  br label %cleanup.sink.split

err_dma_register:                                 ; preds = %dma_set_max_seg_size.exit
  call void @__sanitizer_cov_trace_pc() #10
  %184 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %irq, align 4
  %call273 = tail call ptr @free_irq(i32 noundef %185, ptr noundef %1) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %err_dma_register, %do.end267, %if.end71.cleanup.sink.split_crit_edge, %do.end69, %devm_kcalloc.exit.cleanup.sink.split_crit_edge, %devm_kcalloc.exit.thread, %if.else.cleanup.sink.split_crit_edge, %do.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %do.end267 ], [ %call.i427, %if.end71.cleanup.sink.split_crit_edge ], [ %call261, %err_dma_register ], [ -12, %do.end69 ], [ -22, %do.end.cleanup.sink.split_crit_edge ], [ -22, %if.else.cleanup.sink.split_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup.sink.split_crit_edge ], [ -12, %devm_kcalloc.exit.thread ]
  %186 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %chip, align 4
  %call.i444 = tail call i32 @__pm_runtime_suspend(ptr noundef %187, i32 noundef 4) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_dma_tasklet(ptr nocapture noundef readonly %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -392
  %regs.i = getelementptr i8, ptr %t, i32 -8
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %RAW = getelementptr inbounds %struct.dw_dma_regs, ptr %1, i32 0, i32 1
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %RAW) #8, !srcloc !152
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !168
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %ERROR = getelementptr inbounds %struct.dw_dma_regs, ptr %5, i32 0, i32 1, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ERROR) #8, !srcloc !152
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dw_dma_tasklet.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dw_dma_tasklet, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !158

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr i8, ptr %t, i32 -320
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dw_dma_tasklet.__UNIQUE_ID_ddebug242, ptr noundef %9, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.13, i32 noundef %7) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %chancnt = getelementptr i8, ptr %t, i32 -388
  %10 = ptrtoint ptr %chancnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chancnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp98.not = icmp eq i32 %11, 0
  br i1 %cmp98.not, label %do.end.do.body50_crit_edge, label %for.body.lr.ph

do.end.do.body50_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body50

for.body.lr.ph:                                   ; preds = %do.end
  %chan = getelementptr i8, ptr %t, i32 24
  %dev36 = getelementptr i8, ptr %t, i32 -320
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.099 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %12 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chan, align 4
  %arrayidx = getelementptr %struct.dw_dma_chan, ptr %13, i32 %i.099
  %flags = getelementptr %struct.dw_dma_chan, ptr %13, i32 %i.099, i32 7
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool18.not = icmp eq i32 %and1.i, 0
  br i1 %tobool18.not, label %if.else, label %do.body20

do.body20:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dw_dma_tasklet.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dw_dma_tasklet, %for.inc)) #8
          to label %if.then34 [label %for.inc], !srcloc !158

if.then34:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev36, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dw_dma_tasklet.__UNIQUE_ID_ddebug243, ptr noundef %17, ptr noundef nonnull @.str.15) #8
  br label %for.inc

if.else:                                          ; preds = %for.body
  %shl = shl nuw i32 1, %i.099
  %and = and i32 %shl, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool40.not = icmp eq i32 %and, 0
  br i1 %tobool40.not, label %if.else42, label %if.then41

if.then41:                                        ; preds = %if.else
  tail call fastcc void @dwc_scan_descriptors(ptr noundef %add.ptr, ptr noundef %arrayidx) #8
  %lock.i = getelementptr %struct.dw_dma_chan, ptr %13, i32 %i.099, i32 6
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %active_list.i.i = getelementptr %struct.dw_dma_chan, ptr %13, i32 %i.099, i32 8
  %18 = ptrtoint ptr %active_list.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %active_list.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 -28
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %19) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then41.list_del_init.exit.i_crit_edge

if.then41.list_del_init.exit.i_crit_edge:         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i.i, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %19, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then41.list_del_init.exit.i_crit_edge
  %26 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %19, ptr %19, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %19, ptr %prev.i3.i.i, align 4
  %queue.i = getelementptr %struct.dw_dma_chan, ptr %13, i32 %i.099, i32 9
  %28 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %queue.i, align 4
  %prev.i = getelementptr %struct.dw_dma_chan, ptr %13, i32 %i.099, i32 8, i32 1
  %30 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i, align 4
  %call.i.i77.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %29) #8
  br i1 %call.i.i77.i, label %if.end.i.i80.i, label %list_del_init.exit.i.__list_del_entry.exit.i.i_crit_edge

list_del_init.exit.i.__list_del_entry.exit.i.i_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i.i

if.end.i.i80.i:                                   ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i78.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i.i78.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i78.i, align 4
  %34 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %29, align 4
  %prev1.i.i.i79.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i.i79.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev1.i.i.i79.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %35, ptr %33, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i80.i, %list_del_init.exit.i.__list_del_entry.exit.i.i_crit_edge
  %38 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %31, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %29, ptr noundef %31, ptr noundef %39) #8
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.list_move.exit.i_crit_edge

__list_del_entry.exit.i.i.list_move.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_move.exit.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i2.i.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %prev1.i.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %29, ptr %prev1.i.i2.i.i, align 4
  %41 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %39, ptr %29, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %42 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %31, ptr %prev3.i.i.i.i, align 4
  %43 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %29, ptr %31, align 4
  br label %list_move.exit.i

list_move.exit.i:                                 ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.list_move.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !170
  tail call void @arm_heavy_mb() #8
  %mask.i = getelementptr %struct.dw_dma_chan, ptr %13, i32 %i.099, i32 2
  %44 = ptrtoint ptr %mask.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %mask.i, align 4
  %conv9.i = zext i8 %45 to i32
  %46 = shl nuw i32 %conv9.i, 24
  %47 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs.i, align 4
  %ERROR.i = getelementptr inbounds %struct.dw_dma_regs, ptr %48, i32 0, i32 4, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ERROR.i, i32 %46) #8, !srcloc !146
  %49 = ptrtoint ptr %active_list.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %active_list.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %50, %active_list.i.i
  br i1 %cmp.i.not.i, label %list_move.exit.i.do.end21.i_crit_edge, label %if.then.i

list_move.exit.i.do.end21.i_crit_edge:            ; preds = %list_move.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end21.i

if.then.i:                                        ; preds = %list_move.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i82.i = getelementptr i8, ptr %50, i32 -28
  tail call fastcc void @dwc_dostart(ptr noundef %arrayidx, ptr noundef %add.ptr.i82.i) #8
  br label %do.end21.i

do.end21.i:                                       ; preds = %if.then.i, %list_move.exit.i.do.end21.i_crit_edge
  %dev.i.i = getelementptr inbounds %struct.dma_chan, ptr %arrayidx, i32 0, i32 5
  %51 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i.i, align 4
  %device.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %52, i32 0, i32 1
  %call23.i = tail call ptr @dev_driver_string(ptr noundef %device.i.i) #8
  %53 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %54, i32 0, i32 1, i32 3
  %55 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %56, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end21.i.dev_name.exit.i_crit_edge

do.end21.i.dev_name.exit.i_crit_edge:             ; preds = %do.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %do.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  %device.i84.i = getelementptr inbounds %struct.dma_chan_dev, ptr %54, i32 0, i32 1
  %57 = ptrtoint ptr %device.i84.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %device.i84.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %do.end21.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %58, %if.end.i.i ], [ %56, %do.end21.i.dev_name.exit.i_crit_edge ]
  %txd.i = getelementptr i8, ptr %19, i32 16
  %59 = ptrtoint ptr %txd.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %txd.i, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 455, i32 noundef 9, ptr noundef nonnull @.str.16, ptr noundef %call23.i, ptr noundef %retval.0.i.i, i32 noundef %60) #8
  %61 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev.i.i, align 4
  %device.i.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %add.ptr.i.i, align 4
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #8
  %dar.i.i = getelementptr i8, ptr %19, i32 -24
  %66 = ptrtoint ptr %dar.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %dar.i.i, align 4
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #8
  %llp.i.i = getelementptr i8, ptr %19, i32 -20
  %69 = ptrtoint ptr %llp.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %llp.i.i, align 4
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #8
  %ctlhi.i.i = getelementptr i8, ptr %19, i32 -12
  %72 = ptrtoint ptr %ctlhi.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %ctlhi.i.i, align 4
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #8
  %ctllo.i.i = getelementptr i8, ptr %19, i32 -16
  %75 = ptrtoint ptr %ctllo.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %ctllo.i.i, align 4
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #8
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %device.i.i.i, ptr noundef nonnull @.str.24, i32 noundef %65, i32 noundef %68, i32 noundef %71, i32 noundef %74, i32 noundef %77) #11
  %tx_list.i = getelementptr i8, ptr %19, i32 8
  %78 = ptrtoint ptr %tx_list.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %.pn91.i = load ptr, ptr %tx_list.i, align 4
  %cmp44.not92.i = icmp eq ptr %.pn91.i, %tx_list.i
  br i1 %cmp44.not92.i, label %dev_name.exit.i.dwc_handle_error.exit_crit_edge, label %dev_name.exit.i.for.body.i_crit_edge

dev_name.exit.i.for.body.i_crit_edge:             ; preds = %dev_name.exit.i
  br label %for.body.i

dev_name.exit.i.dwc_handle_error.exit_crit_edge:  ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dwc_handle_error.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %dev_name.exit.i.for.body.i_crit_edge
  %.pn93.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn91.i, %dev_name.exit.i.for.body.i_crit_edge ]
  %child.0.i = getelementptr i8, ptr %.pn93.i, i32 -28
  %79 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev.i.i, align 4
  %device.i.i86.i = getelementptr inbounds %struct.dma_chan_dev, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %child.0.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %child.0.i, align 4
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #8
  %dar.i87.i = getelementptr i8, ptr %.pn93.i, i32 -24
  %84 = ptrtoint ptr %dar.i87.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %dar.i87.i, align 4
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #8
  %llp.i88.i = getelementptr i8, ptr %.pn93.i, i32 -20
  %87 = ptrtoint ptr %llp.i88.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %llp.i88.i, align 4
  %89 = tail call i32 @llvm.bswap.i32(i32 %88) #8
  %ctlhi.i89.i = getelementptr i8, ptr %.pn93.i, i32 -12
  %90 = ptrtoint ptr %ctlhi.i89.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %ctlhi.i89.i, align 4
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #8
  %ctllo.i90.i = getelementptr i8, ptr %.pn93.i, i32 -16
  %93 = ptrtoint ptr %ctllo.i90.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %ctllo.i90.i, align 4
  %95 = tail call i32 @llvm.bswap.i32(i32 %94) #8
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %device.i.i86.i, ptr noundef nonnull @.str.24, i32 noundef %83, i32 noundef %86, i32 noundef %89, i32 noundef %92, i32 noundef %95) #11
  %96 = ptrtoint ptr %.pn93.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %.pn.i = load ptr, ptr %.pn93.i, align 4
  %cmp44.not.i = icmp eq ptr %.pn.i, %tx_list.i
  br i1 %cmp44.not.i, label %for.body.i.dwc_handle_error.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.dwc_handle_error.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dwc_handle_error.exit

dwc_handle_error.exit:                            ; preds = %for.body.i.dwc_handle_error.exit_crit_edge, %dev_name.exit.i.dwc_handle_error.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #8
  tail call fastcc void @dwc_descriptor_complete(ptr noundef %arrayidx, ptr noundef %add.ptr.i.i, i1 noundef zeroext true) #8
  br label %for.inc

if.else42:                                        ; preds = %if.else
  %and44 = and i32 %shl, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.else42.for.inc_crit_edge, label %if.then46

if.else42.for.inc_crit_edge:                      ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then46:                                        ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @dwc_scan_descriptors(ptr noundef %add.ptr, ptr noundef %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %if.then46, %if.else42.for.inc_crit_edge, %dwc_handle_error.exit, %if.then34, %do.body20
  %inc = add nuw i32 %i.099, 1
  %97 = ptrtoint ptr %chancnt to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %chancnt, align 4
  %cmp = icmp ult i32 %inc, %98
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.do.body50_crit_edge

for.inc.do.body50_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body50

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.body50:                                        ; preds = %for.inc.do.body50_crit_edge, %do.end.do.body50_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !171
  tail call void @arm_heavy_mb() #8
  %all_chan_mask = getelementptr i8, ptr %t, i32 28
  %99 = ptrtoint ptr %all_chan_mask to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %all_chan_mask, align 4
  %conv = zext i8 %100 to i32
  %shl53 = shl nuw nsw i32 %conv, 8
  %or = or i32 %shl53, %conv
  %101 = tail call i32 @llvm.bswap.i32(i32 %or)
  %102 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %regs.i, align 4
  %MASK = getelementptr inbounds %struct.dw_dma_regs, ptr %103, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MASK, i32 %101) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  tail call void @arm_heavy_mb() #8
  %104 = ptrtoint ptr %all_chan_mask to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %all_chan_mask, align 4
  %conv62 = zext i8 %105 to i32
  %shl63 = shl nuw nsw i32 %conv62, 8
  %or66 = or i32 %shl63, %conv62
  %106 = tail call i32 @llvm.bswap.i32(i32 %or66)
  %107 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %regs.i, align 4
  %ERROR69 = getelementptr inbounds %struct.dw_dma_regs, ptr %108, i32 0, i32 3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ERROR69, i32 %106) #8, !srcloc !146
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_dma_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %in_use = getelementptr inbounds %struct.dw_dma, ptr %dev_id, i32 0, i32 7
  %0 = ptrtoint ptr %in_use to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %in_use, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %regs.i = getelementptr inbounds %struct.dw_dma, ptr %dev_id, i32 0, i32 2
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %STATUS_INT = getelementptr inbounds %struct.dw_dma_regs, ptr %3, i32 0, i32 5
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %STATUS_INT) #8, !srcloc !152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !173
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dw_dma_interrupt.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dw_dma_interrupt, %do.end)) #8
          to label %if.then9 [label %do.end], !srcloc !158

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %dev = getelementptr inbounds %struct.dma_device, ptr %dev_id, i32 0, i32 15
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dw_dma_interrupt.__UNIQUE_ID_ddebug244, ptr noundef %7, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.37, i32 noundef %5) #8
  br label %do.end

do.end:                                           ; preds = %if.then9, %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool11.not = icmp eq i32 %4, 0
  br i1 %tobool11.not, label %do.end.cleanup_crit_edge, label %do.body14

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body14:                                        ; preds = %do.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !174
  tail call void @arm_heavy_mb() #8
  %all_chan_mask = getelementptr inbounds %struct.dw_dma, ptr %dev_id, i32 0, i32 6
  %8 = ptrtoint ptr %all_chan_mask to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %all_chan_mask, align 4
  %conv = zext i8 %9 to i32
  %10 = shl nuw nsw i32 %conv, 16
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 4
  %MASK = getelementptr inbounds %struct.dw_dma_regs, ptr %12, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MASK, i32 %10) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !175
  tail call void @arm_heavy_mb() #8
  %13 = ptrtoint ptr %all_chan_mask to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %all_chan_mask, align 4
  %conv22 = zext i8 %14 to i32
  %15 = shl nuw nsw i32 %conv22, 16
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 4
  %BLOCK = getelementptr inbounds %struct.dw_dma_regs, ptr %17, i32 0, i32 3, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %BLOCK, i32 %15) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  tail call void @arm_heavy_mb() #8
  %18 = ptrtoint ptr %all_chan_mask to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %all_chan_mask, align 4
  %conv31 = zext i8 %19 to i32
  %20 = shl nuw nsw i32 %conv31, 16
  %21 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i, align 4
  %ERROR = getelementptr inbounds %struct.dw_dma_regs, ptr %22, i32 0, i32 3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ERROR, i32 %20) #8, !srcloc !146
  %23 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i, align 4
  %STATUS_INT39 = getelementptr inbounds %struct.dw_dma_regs, ptr %24, i32 0, i32 5
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %STATUS_INT39) #8, !srcloc !152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !177
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool43.not = icmp eq i32 %25, 0
  br i1 %tobool43.not, label %do.body14.if.end78_crit_edge, label %do.end47

do.body14.if.end78_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

do.end47:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #10
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %dev49 = getelementptr inbounds %struct.dma_device, ptr %dev_id, i32 0, i32 15
  %27 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev49, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.39, i32 noundef %26) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  tail call void @arm_heavy_mb() #8
  %29 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i, align 4
  %MASK54 = getelementptr inbounds %struct.dw_dma_regs, ptr %30, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MASK54, i32 16711680) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  tail call void @arm_heavy_mb() #8
  %31 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i, align 4
  %BLOCK61 = getelementptr inbounds %struct.dw_dma_regs, ptr %32, i32 0, i32 3, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %BLOCK61, i32 16711680) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  tail call void @arm_heavy_mb() #8
  %33 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i, align 4
  %SRC_TRAN = getelementptr inbounds %struct.dw_dma_regs, ptr %34, i32 0, i32 3, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %SRC_TRAN, i32 16711680) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !181
  tail call void @arm_heavy_mb() #8
  %35 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs.i, align 4
  %DST_TRAN = getelementptr inbounds %struct.dw_dma_regs, ptr %36, i32 0, i32 3, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DST_TRAN, i32 16711680) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !182
  tail call void @arm_heavy_mb() #8
  %37 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs.i, align 4
  %ERROR77 = getelementptr inbounds %struct.dw_dma_regs, ptr %38, i32 0, i32 3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ERROR77, i32 16711680) #8, !srcloc !146
  br label %if.end78

if.end78:                                         ; preds = %do.end47, %do.body14.if.end78_crit_edge
  %state.i = getelementptr inbounds %struct.dw_dma, ptr %dev_id, i32 0, i32 4, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end78.cleanup_crit_edge

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  %tasklet = getelementptr inbounds %struct.dw_dma, ptr %dev_id, i32 0, i32 4
  tail call void @__tasklet_schedule(ptr noundef %tasklet) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end78.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ], [ 1, %if.end78.cleanup_crit_edge ], [ 1, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc_alloc_chan_resources(ptr nocapture noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc_alloc_chan_resources.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc_alloc_chan_resources, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !158

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %3, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc_alloc_chan_resources.__UNIQUE_ID_ddebug256, ptr noundef %device.i, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.40) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regs.i = getelementptr inbounds %struct.dw_dma, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %CH_EN = getelementptr inbounds %struct.dw_dma_regs, ptr %5, i32 0, i32 21
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CH_EN) #8, !srcloc !152
  %7 = lshr i32 %6, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !183
  %mask = getelementptr inbounds %struct.dw_dma_chan, ptr %chan, i32 0, i32 2
  %8 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mask, align 4
  %conv = zext i8 %9 to i32
  %and = and i32 %7, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.end32, label %do.body13

do.body13:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc_alloc_chan_resources.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc_alloc_chan_resources, %cleanup)) #8
          to label %if.then27 [label %cleanup], !srcloc !158

if.then27:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i67 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %10 = ptrtoint ptr %dev.i67 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i67, align 4
  %device.i68 = getelementptr inbounds %struct.dma_chan_dev, ptr %11, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc_alloc_chan_resources.__UNIQUE_ID_ddebug257, ptr noundef %device.i68, ptr noundef nonnull @.str.42) #8
  br label %cleanup

if.end32:                                         ; preds = %do.end
  %cookie.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 2
  %12 = ptrtoint ptr %cookie.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %cookie.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 3
  %13 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %completed_cookie.i, align 4
  %private = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 14
  %14 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %private, align 4
  %tobool33.not = icmp eq ptr %15, null
  br i1 %tobool33.not, label %if.end32.if.end41_crit_edge, label %land.lhs.true

if.end32.if.end41_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

land.lhs.true:                                    ; preds = %if.end32
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %18 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chan, align 4
  %dev.i69 = getelementptr inbounds %struct.dma_device, ptr %19, i32 0, i32 15
  %20 = ptrtoint ptr %dev.i69 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i69, align 4
  %cmp.not.i = icmp eq ptr %17, %21
  br i1 %cmp.not.i, label %if.end.i, label %land.lhs.true.do.end39_crit_edge

land.lhs.true.do.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end39

if.end.i:                                         ; preds = %land.lhs.true
  %channels.i = getelementptr inbounds %struct.dw_dma_slave, ptr %15, i32 0, i32 5
  %22 = ptrtoint ptr %channels.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %channels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i = icmp ne i8 %23, 0
  %and14.i = and i8 %23, %9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and14.i)
  %tobool4.not.i = icmp eq i8 %and14.i, 0
  %or.cond = select i1 %tobool.not.i, i1 %tobool4.not.i, i1 false
  br i1 %or.cond, label %if.end.i.do.end39_crit_edge, label %dw_dma_filter.exit

if.end.i.do.end39_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end39

dw_dma_filter.exit:                               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dws7.i = getelementptr inbounds %struct.dw_dma_chan, ptr %chan, i32 0, i32 14
  %24 = call ptr @memcpy(ptr %dws7.i, ptr %15, i32 12)
  br label %if.end41

do.end39:                                         ; preds = %if.end.i.do.end39_crit_edge, %land.lhs.true.do.end39_crit_edge
  %dev.i71 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %25 = ptrtoint ptr %dev.i71 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i71, align 4
  %device.i72 = getelementptr inbounds %struct.dma_chan_dev, ptr %26, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %device.i72, ptr noundef nonnull @.str.43) #11
  br label %cleanup

if.end41:                                         ; preds = %dw_dma_filter.exit, %if.end32.if.end41_crit_edge
  %in_use = getelementptr inbounds %struct.dw_dma, ptr %1, i32 0, i32 7
  %27 = ptrtoint ptr %in_use to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %in_use, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool42.not = icmp eq i8 %28, 0
  br i1 %tobool42.not, label %if.then43, label %if.end41.if.end44_crit_edge

if.end41.if.end44_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.then43:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !156
  tail call void @arm_heavy_mb() #8
  %29 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i, align 4
  %CFG.i = getelementptr inbounds %struct.dw_dma_regs, ptr %30, i32 0, i32 19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CFG.i, i32 16777216) #8, !srcloc !146
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.end41.if.end44_crit_edge
  %31 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %mask, align 4
  %33 = ptrtoint ptr %in_use to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %in_use, align 1
  %or63 = or i8 %34, %32
  store i8 %or63, ptr %in_use, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %do.end39, %if.then27, %do.body13
  %retval.0 = phi i32 [ 0, %if.end44 ], [ -22, %do.end39 ], [ -5, %if.then27 ], [ -5, %do.body13 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwc_free_chan_resources(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc_free_chan_resources.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc_free_chan_resources, %do.body7)) #8
          to label %if.then [label %do.body7], !srcloc !158

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %3, i32 0, i32 1
  %descs_allocated = getelementptr inbounds %struct.dw_dma_chan, ptr %chan, i32 0, i32 10
  %4 = ptrtoint ptr %descs_allocated to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %descs_allocated, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc_free_chan_resources.__UNIQUE_ID_ddebug258, ptr noundef %device.i, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.45, i32 noundef %5) #8
  br label %do.body7

do.body7:                                         ; preds = %if.then, %entry
  %active_list = getelementptr inbounds %struct.dw_dma_chan, ptr %chan, i32 0, i32 8
  %6 = ptrtoint ptr %active_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %active_list, align 4
  %cmp.i.not = icmp eq ptr %7, %active_list
  br i1 %cmp.i.not, label %do.body28, label %do.body19, !prof !184

do.body19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dw/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1025, 0\0A.popsection", ""() #8, !srcloc !185
  unreachable

do.body28:                                        ; preds = %do.body7
  %queue = getelementptr inbounds %struct.dw_dma_chan, ptr %chan, i32 0, i32 9
  %8 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %queue, align 4
  %cmp.i158.not = icmp eq ptr %9, %queue
  br i1 %cmp.i158.not, label %do.body49, label %do.body40, !prof !184

do.body40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dw/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1026, 0\0A.popsection", ""() #8, !srcloc !186
  unreachable

do.body49:                                        ; preds = %do.body28
  %10 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chan, align 4
  %regs.i = getelementptr inbounds %struct.dw_dma, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  %CH_EN = getelementptr inbounds %struct.dw_dma_regs, ptr %13, i32 0, i32 21
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CH_EN) #8, !srcloc !152
  %15 = lshr i32 %14, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !187
  %mask = getelementptr inbounds %struct.dw_dma_chan, ptr %chan, i32 0, i32 2
  %16 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %mask, align 4
  %conv = zext i8 %17 to i32
  %and = and i32 %15, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool56.not = icmp eq i32 %and, 0
  br i1 %tobool56.not, label %do.body74, label %do.body64, !prof !184

do.body64:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dw/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1027, 0\0A.popsection", ""() #8, !srcloc !188
  unreachable

do.body74:                                        ; preds = %do.body49
  %lock = getelementptr inbounds %struct.dw_dma_chan, ptr %chan, i32 0, i32 6
  %call78 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %dws = getelementptr inbounds %struct.dw_dma_chan, ptr %chan, i32 0, i32 14
  %18 = call ptr @memset(ptr %dws, i32 0, i32 12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !189
  tail call void @arm_heavy_mb() #8
  %19 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %mask, align 4
  %conv87 = zext i8 %20 to i32
  %21 = shl nuw nsw i32 %conv87, 16
  %regs.i160 = getelementptr inbounds %struct.dw_dma, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %regs.i160 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i160, align 4
  %MASK = getelementptr inbounds %struct.dw_dma_regs, ptr %23, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MASK, i32 %21) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !190
  tail call void @arm_heavy_mb() #8
  %24 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %mask, align 4
  %conv93 = zext i8 %25 to i32
  %26 = shl nuw nsw i32 %conv93, 16
  %27 = ptrtoint ptr %regs.i160 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i160, align 4
  %BLOCK = getelementptr inbounds %struct.dw_dma_regs, ptr %28, i32 0, i32 3, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %BLOCK, i32 %26) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  tail call void @arm_heavy_mb() #8
  %29 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %mask, align 4
  %conv102 = zext i8 %30 to i32
  %31 = shl nuw nsw i32 %conv102, 16
  %32 = ptrtoint ptr %regs.i160 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i160, align 4
  %ERROR = getelementptr inbounds %struct.dw_dma_regs, ptr %33, i32 0, i32 3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ERROR, i32 %31) #8, !srcloc !146
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call78) #8
  %34 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %mask, align 4
  %neg = xor i8 %35, -1
  %in_use = getelementptr inbounds %struct.dw_dma, ptr %1, i32 0, i32 7
  %36 = ptrtoint ptr %in_use to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %in_use, align 1
  %and111 = and i8 %37, %neg
  store i8 %and111, ptr %in_use, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and111)
  %tobool114.not = icmp eq i8 %and111, 0
  br i1 %tobool114.not, label %if.then115, label %do.body74.do.body117_crit_edge

do.body74.do.body117_crit_edge:                   ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body117

if.then115:                                       ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @do_dw_dma_off(ptr noundef %1)
  br label %do.body117

do.body117:                                       ; preds = %if.then115, %do.body74.do.body117_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc_free_chan_resources.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc_free_chan_resources, %do.end135)) #8
          to label %if.then131 [label %do.end135], !srcloc !158

if.then131:                                       ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i163 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %38 = ptrtoint ptr %dev.i163 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i163, align 4
  %device.i164 = getelementptr inbounds %struct.dma_chan_dev, ptr %39, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc_free_chan_resources.__UNIQUE_ID_ddebug259, ptr noundef %device.i164, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45) #8
  br label %do.end135

do.end135:                                        ; preds = %if.then131, %do.body117
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @dwc_prep_dma_memcpy(ptr noundef %chan, i32 noundef %dest, i32 noundef %src, i32 noundef %len, i32 noundef %flags) #2 align 64 {
entry:
  %phys.i = alloca i32, align 4
  %dest.addr = alloca i32, align 4
  %src.addr = alloca i32, align 4
  %xfer_count = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dest.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %dest, ptr %dest.addr, align 4
  %1 = ptrtoint ptr %src.addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %src, ptr %src.addr, align 4
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xfer_count) #8
  %4 = ptrtoint ptr %xfer_count to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %xfer_count, align 4, !annotation !192
  %m_master2 = getelementptr inbounds %struct.dw_dma_chan, ptr %chan, i32 0, i32 14, i32 3
  %5 = ptrtoint ptr %m_master2 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %m_master2, align 2
  %pdata = getelementptr inbounds %struct.dw_dma, ptr %3, i32 0, i32 18
  %7 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdata, align 4
  %idxprom = zext i8 %6 to i32
  %arrayidx = getelementptr %struct.dw_dma_platform_data, ptr %8, i32 0, i32 5, i32 %idxprom
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %and = and i8 %6, 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc_prep_dma_memcpy.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc_prep_dma_memcpy, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !158

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %12, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc_prep_dma_memcpy.__UNIQUE_ID_ddebug245, ptr noundef %device.i, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.48, ptr noundef nonnull %dest.addr, ptr noundef nonnull %src.addr, i32 noundef %len, i32 noundef %flags) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool10.not = icmp eq i32 %len, 0
  br i1 %tobool10.not, label %do.body20, label %for.body.lr.ph, !prof !160

do.body20:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc_prep_dma_memcpy.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc_prep_dma_memcpy, %cleanup)) #8
          to label %if.then34 [label %cleanup], !srcloc !158

if.then34:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i141 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %13 = ptrtoint ptr %dev.i141 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i141, align 4
  %device.i142 = getelementptr inbounds %struct.dma_chan_dev, ptr %14, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc_prep_dma_memcpy.__UNIQUE_ID_ddebug246, ptr noundef %device.i142, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.48) #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end
  %direction = getelementptr inbounds %struct.dw_dma_chan, ptr %chan, i32 0, i32 4
  %15 = ptrtoint ptr %direction to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %direction, align 4
  %16 = ptrtoint ptr %src.addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %src.addr, align 4
  %18 = ptrtoint ptr %dest.addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dest.addr, align 4
  %or = or i32 %10, %len
  %or40 = or i32 %or, %17
  %or41 = or i32 %or40, %19
  %20 = call i32 @llvm.cttz.i32(i32 %or41, i1 true) #8, !range !193
  %prepare_ctllo = getelementptr inbounds %struct.dw_dma, ptr %3, i32 0, i32 11
  %21 = ptrtoint ptr %prepare_ctllo to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prepare_ctllo, align 4
  %call43 = call i32 %22(ptr noundef %chan) #8
  %shl = shl nuw nsw i32 %20, 1
  %or44 = or i32 %shl, %call43
  %shl45 = shl nuw nsw i32 %20, 4
  %or46 = or i32 %or44, %shl45
  %descs_allocated.i = getelementptr inbounds %struct.dw_dma_chan, ptr %chan, i32 0, i32 10
  %bytes2block = getelementptr inbounds %struct.dw_dma, ptr %3, i32 0, i32 13
  %23 = call i32 @llvm.bswap.i32(i32 %or46)
  %conv65 = zext i8 %and to i32
  br label %for.body

for.body:                                         ; preds = %if.end68.for.body_crit_edge, %for.body.lr.ph
  %first.0158 = phi ptr [ null, %for.body.lr.ph ], [ %first.1, %if.end68.for.body_crit_edge ]
  %offset.0157 = phi i32 [ 0, %for.body.lr.ph ], [ %add69, %if.end68.for.body_crit_edge ]
  %prev.0156 = phi ptr [ null, %for.body.lr.ph ], [ %call.i.i, %if.end68.for.body_crit_edge ]
  %24 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chan, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phys.i) #8
  %26 = ptrtoint ptr %phys.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %phys.i, align 4, !annotation !192
  %desc_pool.i = getelementptr inbounds %struct.dw_dma, ptr %25, i32 0, i32 3
  %27 = ptrtoint ptr %desc_pool.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %desc_pool.i, align 4
  %call.i.i = call ptr @dma_pool_alloc(ptr noundef %28, i32 noundef 2848, ptr noundef nonnull %phys.i) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %err_desc_get, label %if.end54

if.end54:                                         ; preds = %for.body
  %29 = ptrtoint ptr %descs_allocated.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %descs_allocated.i, align 4
  %inc.i = add i32 %30, 1
  store i32 %inc.i, ptr %descs_allocated.i, align 4
  %tx_list.i = getelementptr inbounds %struct.dw_desc, ptr %call.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %tx_list.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %tx_list.i, ptr %tx_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.dw_desc, ptr %call.i.i, i32 0, i32 2, i32 1
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %tx_list.i, ptr %prev.i.i, align 4
  %txd.i = getelementptr inbounds %struct.dw_desc, ptr %call.i.i, i32 0, i32 3
  call void @dma_async_tx_descriptor_init(ptr noundef %txd.i, ptr noundef %chan) #8
  %tx_submit.i = getelementptr inbounds %struct.dw_desc, ptr %call.i.i, i32 0, i32 3, i32 4
  %33 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @dwc_tx_submit, ptr %tx_submit.i, align 4
  %flags.i = getelementptr inbounds %struct.dw_desc, ptr %call.i.i, i32 0, i32 3, i32 1
  %34 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2, ptr %flags.i, align 4
  %35 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %phys.i, align 4
  %phys6.i = getelementptr inbounds %struct.dw_desc, ptr %call.i.i, i32 0, i32 3, i32 2
  %37 = ptrtoint ptr %phys6.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %phys6.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys.i) #8
  %38 = ptrtoint ptr %bytes2block to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bytes2block, align 4
  %sub = sub i32 %len, %offset.0157
  %call55 = call i32 %39(ptr noundef %chan, i32 noundef %sub, i32 noundef %20, ptr noundef nonnull %xfer_count) #8
  %40 = ptrtoint ptr %src.addr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %src.addr, align 4
  %add = add i32 %41, %offset.0157
  %42 = call i32 @llvm.bswap.i32(i32 %add)
  %43 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %call.i.i, align 4
  %44 = ptrtoint ptr %dest.addr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dest.addr, align 4
  %add56 = add i32 %45, %offset.0157
  %46 = call i32 @llvm.bswap.i32(i32 %add56)
  %dar = getelementptr inbounds %struct.dw_lli, ptr %call.i.i, i32 0, i32 1
  %47 = ptrtoint ptr %dar to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %dar, align 4
  %ctllo59 = getelementptr inbounds %struct.dw_lli, ptr %call.i.i, i32 0, i32 3
  %48 = ptrtoint ptr %ctllo59 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %23, ptr %ctllo59, align 4
  %49 = call i32 @llvm.bswap.i32(i32 %call55)
  %ctlhi61 = getelementptr inbounds %struct.dw_lli, ptr %call.i.i, i32 0, i32 4
  %50 = ptrtoint ptr %ctlhi61 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %ctlhi61, align 4
  %51 = ptrtoint ptr %xfer_count to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %xfer_count, align 4
  %len62 = getelementptr inbounds %struct.dw_desc, ptr %call.i.i, i32 0, i32 4
  %53 = ptrtoint ptr %len62 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %len62, align 4
  %tobool63.not = icmp eq ptr %first.0158, null
  br i1 %tobool63.not, label %if.end54.if.end68_crit_edge, label %if.else

if.end54.if.end68_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

if.else:                                          ; preds = %if.end54
  %54 = ptrtoint ptr %phys6.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %phys6.i, align 4
  %or66 = or i32 %55, %conv65
  %56 = call i32 @llvm.bswap.i32(i32 %or66)
  %llp = getelementptr inbounds %struct.dw_lli, ptr %prev.0156, i32 0, i32 2
  %57 = ptrtoint ptr %llp to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %llp, align 4
  %desc_node = getelementptr inbounds %struct.dw_desc, ptr %call.i.i, i32 0, i32 1
  %tx_list = getelementptr inbounds %struct.dw_desc, ptr %first.0158, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.dw_desc, ptr %first.0158, i32 0, i32 2, i32 1
  %58 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %prev.i, align 4
  %call.i.i143 = call zeroext i1 @__list_add_valid(ptr noundef %desc_node, ptr noundef %59, ptr noundef %tx_list) #8
  br i1 %call.i.i143, label %if.end.i.i, label %if.else.if.end68_crit_edge

if.else.if.end68_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %desc_node, ptr %prev.i, align 4
  %61 = ptrtoint ptr %desc_node to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %tx_list, ptr %desc_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.dw_desc, ptr %call.i.i, i32 0, i32 1, i32 1
  %62 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %59, ptr %prev3.i.i, align 4
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %desc_node, ptr %59, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.end.i.i, %if.else.if.end68_crit_edge, %if.end54.if.end68_crit_edge
  %first.1 = phi ptr [ %call.i.i, %if.end54.if.end68_crit_edge ], [ %first.0158, %if.else.if.end68_crit_edge ], [ %first.0158, %if.end.i.i ]
  %64 = ptrtoint ptr %xfer_count to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %xfer_count, align 4
  %add69 = add i32 %65, %offset.0157
  %cmp = icmp ult i32 %add69, %len
  br i1 %cmp, label %if.end68.for.body_crit_edge, label %for.end

if.end68.for.body_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %if.end68
  %and70 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %for.end.if.end76_crit_edge, label %if.then72

for.end.if.end76_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

if.then72:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %ctllo74 = getelementptr inbounds %struct.dw_lli, ptr %call.i.i, i32 0, i32 3
  %66 = ptrtoint ptr %ctllo74 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ctllo74, align 4
  %or75 = or i32 %67, 16777216
  store i32 %or75, ptr %ctllo74, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then72, %for.end.if.end76_crit_edge
  %llp78 = getelementptr inbounds %struct.dw_lli, ptr %call.i.i, i32 0, i32 2
  %68 = ptrtoint ptr %llp78 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %llp78, align 4
  %ctllo80 = getelementptr inbounds %struct.dw_lli, ptr %call.i.i, i32 0, i32 3
  %69 = ptrtoint ptr %ctllo80 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %ctllo80, align 4
  %and81 = and i32 %70, -25
  store i32 %and81, ptr %ctllo80, align 4
  %txd82 = getelementptr inbounds %struct.dw_desc, ptr %first.1, i32 0, i32 3
  %flags83 = getelementptr inbounds %struct.dw_desc, ptr %first.1, i32 0, i32 3, i32 1
  %71 = ptrtoint ptr %flags83 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %flags, ptr %flags83, align 4
  %total_len = getelementptr inbounds %struct.dw_desc, ptr %first.1, i32 0, i32 5
  %72 = ptrtoint ptr %total_len to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %len, ptr %total_len, align 4
  br label %cleanup

err_desc_get:                                     ; preds = %for.body
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys.i) #8
  %73 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %chan, align 4
  %tobool.not.i144 = icmp eq ptr %first.0158, null
  br i1 %tobool.not.i144, label %err_desc_get.cleanup_crit_edge, label %if.end.i146, !prof !160

err_desc_get.cleanup_crit_edge:                   ; preds = %err_desc_get
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i146:                                      ; preds = %err_desc_get
  %tx_list.i145 = getelementptr inbounds %struct.dw_desc, ptr %first.0158, i32 0, i32 2
  %75 = ptrtoint ptr %tx_list.i145 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %tx_list.i145, align 4
  %cmp.not38.i = icmp eq ptr %76, %tx_list.i145
  br i1 %cmp.not38.i, label %if.end.i146.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end.i146.for.end.i_crit_edge:                  ; preds = %if.end.i146
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end.i146
  %desc_pool.i147 = getelementptr inbounds %struct.dw_dma, ptr %74, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn.in39.i = phi ptr [ %76, %for.body.lr.ph.i ], [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ]
  %child.0.i = getelementptr i8, ptr %.pn.in39.i, i32 -28
  %77 = ptrtoint ptr %.pn.in39.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %.pn.i = load ptr, ptr %.pn.in39.i, align 4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in39.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in39.i, i32 0, i32 1
  %78 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %prev.i.i.i, align 4
  %80 = ptrtoint ptr %.pn.in39.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %.pn.in39.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %79, ptr %prev1.i.i.i.i, align 4
  %83 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %81, ptr %79, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %84 = ptrtoint ptr %.pn.in39.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in39.i, align 4
  %prev.i.i149 = getelementptr inbounds %struct.list_head, ptr %.pn.in39.i, i32 0, i32 1
  %85 = ptrtoint ptr %prev.i.i149 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i149, align 4
  %86 = ptrtoint ptr %desc_pool.i147 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %desc_pool.i147, align 4
  %phys.i150 = getelementptr i8, ptr %.pn.in39.i, i32 24
  %88 = ptrtoint ptr %phys.i150 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %phys.i150, align 4
  call void @dma_pool_free(ptr noundef %87, ptr noundef %child.0.i, i32 noundef %89) #8
  %90 = ptrtoint ptr %descs_allocated.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %descs_allocated.i, align 4
  %dec.i = add i32 %91, -1
  store i32 %dec.i, ptr %descs_allocated.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %tx_list.i145
  br i1 %cmp.not.i, label %list_del.exit.i.for.end.i_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

list_del.exit.i.for.end.i_crit_edge:              ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %list_del.exit.i.for.end.i_crit_edge, %if.end.i146.for.end.i_crit_edge
  %desc_pool18.i = getelementptr inbounds %struct.dw_dma, ptr %74, i32 0, i32 3
  %92 = ptrtoint ptr %desc_pool18.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %desc_pool18.i, align 4
  %phys20.i = getelementptr inbounds %struct.dw_desc, ptr %first.0158, i32 0, i32 3, i32 2
  %94 = ptrtoint ptr %phys20.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %phys20.i, align 4
  call void @dma_pool_free(ptr noundef %93, ptr noundef nonnull %first.0158, i32 noundef %95) #8
  %96 = ptrtoint ptr %descs_allocated.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %descs_allocated.i, align 4
  %dec22.i = add i32 %97, -1
  store i32 %dec22.i, ptr %descs_allocated.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end.i, %err_desc_get.cleanup_crit_edge, %if.end76, %if.then34, %do.body20
  %retval.0 = phi ptr [ %txd82, %if.end76 ], [ null, %if.then34 ], [ null, %err_desc_get.cleanup_crit_edge ], [ null, %for.end.i ], [ null, %do.body20 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xfer_count) #8
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @dwc_prep_slave_sg(ptr noundef %chan, ptr noundef %sgl, i32 noundef %sg_len, i32 noundef %direction, i32 noundef %flags, ptr nocapture noundef readnone %context) #2 align 64 {
entry:
  %phys.i253 = alloca i32, align 4
  %phys.i = alloca i32, align 4
  %dlen = alloca i32, align 4
  %dlen81 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %m_master2 = getelementptr inbounds %struct.dw_dma_chan, ptr %chan, i32 0, i32 14, i32 3
  %2 = ptrtoint ptr %m_master2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %m_master2, align 2
  %conv = zext i8 %3 to i32
  %and = and i8 %3, 3
  %pdata = getelementptr inbounds %struct.dw_dma, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata, align 4
  %arrayidx = getelementptr %struct.dw_dma_platform_data, ptr %5, i32 0, i32 5, i32 %conv
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc_prep_slave_sg.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc_prep_slave_sg, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !158

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %9, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc_prep_slave_sg.__UNIQUE_ID_ddebug247, ptr noundef %device.i, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.53) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %10 = add i32 %direction, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %10)
  %11 = icmp ult i32 %10, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sg_len)
  %tobool11.not = icmp eq i32 %sg_len, 0
  %spec.select = or i1 %tobool11.not, %11
  br i1 %spec.select, label %do.end.cleanup149_crit_edge, label %if.end21, !prof !160

do.end.cleanup149_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup149

if.end21:                                         ; preds = %do.end
  %direction22 = getelementptr inbounds %struct.dw_dma_chan, ptr %chan, i32 0, i32 4
  %12 = ptrtoint ptr %direction22 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %direction, ptr %direction22, align 4
  %13 = zext i32 %direction to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %direction, label %if.end21.cleanup149_crit_edge [
    i32 1, label %for.body.lr.ph
    i32 2, label %for.body77.lr.ph
  ]

if.end21.cleanup149_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup149

for.body.lr.ph:                                   ; preds = %if.end21
  %dst_addr_width = getelementptr inbounds %struct.dw_dma_chan, ptr %chan, i32 0, i32 15, i32 4
  %14 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dst_addr_width, align 4
  %dst_addr = getelementptr inbounds %struct.dw_dma_chan, ptr %chan, i32 0, i32 15, i32 2
  %16 = ptrtoint ptr %dst_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dst_addr, align 4
  %prepare_ctllo = getelementptr inbounds %struct.dw_dma, ptr %1, i32 0, i32 11
  %18 = ptrtoint ptr %prepare_ctllo to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prepare_ctllo, align 4
  %call24 = tail call i32 %19(ptr noundef %chan) #8
  %device_fc = getelementptr inbounds %struct.dw_dma_chan, ptr %chan, i32 0, i32 15, i32 9
  %20 = ptrtoint ptr %device_fc to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %device_fc, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool27.not = icmp eq i8 %21, 0
  %cond = select i1 %tobool27.not, i32 1048576, i32 6291456
  %22 = tail call i32 @llvm.cttz.i32(i32 %15, i1 false) #8, !range !193
  %shl = shl nuw nsw i32 %22, 1
  %descs_allocated.i = getelementptr inbounds %struct.dw_dma_chan, ptr %chan, i32 0, i32 10
  %bytes2block = getelementptr inbounds %struct.dw_dma, ptr %1, i32 0, i32 13
  %23 = call i32 @llvm.bswap.i32(i32 %17)
  %or = or i32 %shl, %call24
  %or25 = or i32 %or, %cond
  %conv49 = zext i8 %and to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %total_len.0320 = phi i32 [ 0, %for.body.lr.ph ], [ %add53, %for.inc.for.body_crit_edge ]
  %sg.0319 = phi ptr [ %sgl, %for.body.lr.ph ], [ %call60, %for.inc.for.body_crit_edge ]
  %i.0318 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %first.0317 = phi ptr [ null, %for.body.lr.ph ], [ %first.2, %for.inc.for.body_crit_edge ]
  %prev.0316 = phi ptr [ null, %for.body.lr.ph ], [ %call.i.i, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dlen) #8
  %24 = ptrtoint ptr %dlen to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %dlen, align 4, !annotation !192
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.0319, i32 0, i32 3
  %25 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dma_address, align 4
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.0319, i32 0, i32 4
  %27 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dma_length, align 4
  %or31 = or i32 %26, %7
  %or32 = or i32 %or31, %28
  %29 = call i32 @llvm.cttz.i32(i32 %or32, i1 false) #8, !range !193
  %shl42 = shl nuw nsw i32 %29, 4
  %or29 = or i32 %or25, %shl42
  %or43 = or i32 %or29, 256
  %30 = call i32 @llvm.bswap.i32(i32 %or43)
  br label %slave_sg_todev_fill_desc

slave_sg_todev_fill_desc:                         ; preds = %if.end52.slave_sg_todev_fill_desc_crit_edge, %for.body
  %prev.1 = phi ptr [ %prev.0316, %for.body ], [ %call.i.i, %if.end52.slave_sg_todev_fill_desc_crit_edge ]
  %first.1 = phi ptr [ %first.0317, %for.body ], [ %first.2, %if.end52.slave_sg_todev_fill_desc_crit_edge ]
  %total_len.1 = phi i32 [ %total_len.0320, %for.body ], [ %add53, %if.end52.slave_sg_todev_fill_desc_crit_edge ]
  %len.0 = phi i32 [ %28, %for.body ], [ %sub, %if.end52.slave_sg_todev_fill_desc_crit_edge ]
  %mem.0 = phi i32 [ %26, %for.body ], [ %add, %if.end52.slave_sg_todev_fill_desc_crit_edge ]
  %31 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %chan, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phys.i) #8
  %33 = ptrtoint ptr %phys.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %phys.i, align 4, !annotation !192
  %desc_pool.i = getelementptr inbounds %struct.dw_dma, ptr %32, i32 0, i32 3
  %34 = ptrtoint ptr %desc_pool.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %desc_pool.i, align 4
  %call.i.i = call ptr @dma_pool_alloc(ptr noundef %35, i32 noundef 2848, ptr noundef nonnull %phys.i) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %cleanup, label %if.end37

if.end37:                                         ; preds = %slave_sg_todev_fill_desc
  %36 = ptrtoint ptr %descs_allocated.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %descs_allocated.i, align 4
  %inc.i = add i32 %37, 1
  store i32 %inc.i, ptr %descs_allocated.i, align 4
  %tx_list.i = getelementptr inbounds %struct.dw_desc, ptr %call.i.i, i32 0, i32 2
  %38 = ptrtoint ptr %tx_list.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %tx_list.i, ptr %tx_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.dw_desc, ptr %call.i.i, i32 0, i32 2, i32 1
  %39 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %tx_list.i, ptr %prev.i.i, align 4
  %txd.i = getelementptr inbounds %struct.dw_desc, ptr %call.i.i, i32 0, i32 3
  call void @dma_async_tx_descriptor_init(ptr noundef %txd.i, ptr noundef %chan) #8
  %tx_submit.i = getelementptr inbounds %struct.dw_desc, ptr %call.i.i, i32 0, i32 3, i32 4
  %40 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @dwc_tx_submit, ptr %tx_submit.i, align 4
  %flags.i = getelementptr inbounds %struct.dw_desc, ptr %call.i.i, i32 0, i32 3, i32 1
  %41 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2, ptr %flags.i, align 4
  %42 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %phys.i, align 4
  %phys6.i = getelementptr inbounds %struct.dw_desc, ptr %call.i.i, i32 0, i32 3, i32 2
  %44 = ptrtoint ptr %phys6.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %phys6.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys.i) #8
  %45 = ptrtoint ptr %bytes2block to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bytes2block, align 4
  %call38 = call i32 %46(ptr noundef %chan, i32 noundef %len.0, i32 noundef %29, ptr noundef nonnull %dlen) #8
  %47 = call i32 @llvm.bswap.i32(i32 %mem.0)
  %48 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %call.i.i, align 4
  %dar = getelementptr inbounds %struct.dw_lli, ptr %call.i.i, i32 0, i32 1
  %49 = ptrtoint ptr %dar to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %23, ptr %dar, align 4
  %50 = call i32 @llvm.bswap.i32(i32 %call38)
  %ctlhi41 = getelementptr inbounds %struct.dw_lli, ptr %call.i.i, i32 0, i32 4
  %51 = ptrtoint ptr %ctlhi41 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %ctlhi41, align 4
  %ctllo45 = getelementptr inbounds %struct.dw_lli, ptr %call.i.i, i32 0, i32 3
  %52 = ptrtoint ptr %ctllo45 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %30, ptr %ctllo45, align 4
  %53 = ptrtoint ptr %dlen to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dlen, align 4
  %len46 = getelementptr inbounds %struct.dw_desc, ptr %call.i.i, i32 0, i32 4
  %55 = ptrtoint ptr %len46 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %len46, align 4
  %tobool47.not = icmp eq ptr %first.1, null
  br i1 %tobool47.not, label %if.end37.if.end52_crit_edge, label %if.else

if.end37.if.end52_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.else:                                          ; preds = %if.end37
  %56 = ptrtoint ptr %phys6.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %phys6.i, align 4
  %or50 = or i32 %57, %conv49
  %58 = call i32 @llvm.bswap.i32(i32 %or50)
  %llp = getelementptr inbounds %struct.dw_lli, ptr %prev.1, i32 0, i32 2
  %59 = ptrtoint ptr %llp to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %llp, align 4
  %desc_node = getelementptr inbounds %struct.dw_desc, ptr %call.i.i, i32 0, i32 1
  %tx_list = getelementptr inbounds %struct.dw_desc, ptr %first.1, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.dw_desc, ptr %first.1, i32 0, i32 2, i32 1
  %60 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %prev.i, align 4
  %call.i.i252 = call zeroext i1 @__list_add_valid(ptr noundef %desc_node, ptr noundef %61, ptr noundef %tx_list) #8
  br i1 %call.i.i252, label %if.end.i.i, label %if.else.if.end52_crit_edge

if.else.if.end52_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %desc_node, ptr %prev.i, align 4
  %63 = ptrtoint ptr %desc_node to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %tx_list, ptr %desc_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.dw_desc, ptr %call.i.i, i32 0, i32 1, i32 1
  %64 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %61, ptr %prev3.i.i, align 4
  %65 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %desc_node, ptr %61, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.end.i.i, %if.else.if.end52_crit_edge, %if.end37.if.end52_crit_edge
  %first.2 = phi ptr [ %call.i.i, %if.end37.if.end52_crit_edge ], [ %first.1, %if.else.if.end52_crit_edge ], [ %first.1, %if.end.i.i ]
  %66 = ptrtoint ptr %dlen to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %dlen, align 4
  %add = add i32 %67, %mem.0
  %sub = sub i32 %len.0, %67
  %add53 = add i32 %67, %total_len.1
  %tobool54.not = icmp eq i32 %sub, 0
  br i1 %tobool54.not, label %for.inc, label %if.end52.slave_sg_todev_fill_desc_crit_edge

if.end52.slave_sg_todev_fill_desc_crit_edge:      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %slave_sg_todev_fill_desc

cleanup:                                          ; preds = %slave_sg_todev_fill_desc
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dlen) #8
  br label %do.end147

for.inc:                                          ; preds = %if.end52
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dlen) #8
  %inc = add nuw i32 %i.0318, 1
  %call60 = call ptr @sg_next(ptr noundef %sg.0319) #8
  %exitcond329.not = icmp eq i32 %inc, %sg_len
  br i1 %exitcond329.not, label %for.inc.sw.epilog_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.sw.epilog_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.body77.lr.ph:                                 ; preds = %if.end21
  %src_addr_width = getelementptr inbounds %struct.dw_dma_chan, ptr %chan, i32 0, i32 15, i32 3
  %68 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %src_addr_width, align 4
  %70 = tail call i32 @llvm.cttz.i32(i32 %69, i1 false) #8, !range !193
  %src_addr = getelementptr inbounds %struct.dw_dma_chan, ptr %chan, i32 0, i32 15, i32 1
  %71 = ptrtoint ptr %src_addr to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %src_addr, align 4
  %prepare_ctllo63 = getelementptr inbounds %struct.dw_dma, ptr %1, i32 0, i32 11
  %73 = ptrtoint ptr %prepare_ctllo63 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %prepare_ctllo63, align 4
  %call64 = tail call i32 %74(ptr noundef %chan) #8
  %device_fc69 = getelementptr inbounds %struct.dw_dma_chan, ptr %chan, i32 0, i32 15, i32 9
  %75 = ptrtoint ptr %device_fc69 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %device_fc69, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool70.not = icmp eq i8 %76, 0
  %cond72 = select i1 %tobool70.not, i32 2097152, i32 4194304
  %shl65 = shl nuw nsw i32 %70, 4
  %descs_allocated.i257 = getelementptr inbounds %struct.dw_dma_chan, ptr %chan, i32 0, i32 10
  %bytes2block88 = getelementptr inbounds %struct.dw_dma, ptr %1, i32 0, i32 13
  %77 = call i32 @llvm.bswap.i32(i32 %72)
  %or66 = or i32 %shl65, %call64
  %or68 = or i32 %or66, %cond72
  %conv108 = zext i8 %and to i32
  br label %for.body77

for.body77:                                       ; preds = %for.inc127.for.body77_crit_edge, %for.body77.lr.ph
  %total_len.3312 = phi i32 [ 0, %for.body77.lr.ph ], [ %add117, %for.inc127.for.body77_crit_edge ]
  %sg.1311 = phi ptr [ %sgl, %for.body77.lr.ph ], [ %call129, %for.inc127.for.body77_crit_edge ]
  %i.1310 = phi i32 [ 0, %for.body77.lr.ph ], [ %inc128, %for.inc127.for.body77_crit_edge ]
  %first.4309 = phi ptr [ null, %for.body77.lr.ph ], [ %first.6, %for.inc127.for.body77_crit_edge ]
  %prev.3308 = phi ptr [ null, %for.body77.lr.ph ], [ %call.i.i255, %for.inc127.for.body77_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dlen81) #8
  %78 = ptrtoint ptr %dlen81 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 -1, ptr %dlen81, align 4, !annotation !192
  %dma_address82 = getelementptr inbounds %struct.scatterlist, ptr %sg.1311, i32 0, i32 3
  %79 = ptrtoint ptr %dma_address82 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %dma_address82, align 4
  %dma_length83 = getelementptr inbounds %struct.scatterlist, ptr %sg.1311, i32 0, i32 4
  %81 = ptrtoint ptr %dma_length83 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %dma_length83, align 4
  br label %slave_sg_fromdev_fill_desc

slave_sg_fromdev_fill_desc:                       ; preds = %if.end114.slave_sg_fromdev_fill_desc_crit_edge, %for.body77
  %prev.4 = phi ptr [ %prev.3308, %for.body77 ], [ %call.i.i255, %if.end114.slave_sg_fromdev_fill_desc_crit_edge ]
  %first.5 = phi ptr [ %first.4309, %for.body77 ], [ %first.6, %if.end114.slave_sg_fromdev_fill_desc_crit_edge ]
  %total_len.4 = phi i32 [ %total_len.3312, %for.body77 ], [ %add117, %if.end114.slave_sg_fromdev_fill_desc_crit_edge ]
  %len79.0 = phi i32 [ %82, %for.body77 ], [ %sub116, %if.end114.slave_sg_fromdev_fill_desc_crit_edge ]
  %mem80.0 = phi i32 [ %80, %for.body77 ], [ %add115, %if.end114.slave_sg_fromdev_fill_desc_crit_edge ]
  %83 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %chan, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phys.i253) #8
  %85 = ptrtoint ptr %phys.i253 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 -1, ptr %phys.i253, align 4, !annotation !192
  %desc_pool.i254 = getelementptr inbounds %struct.dw_dma, ptr %84, i32 0, i32 3
  %86 = ptrtoint ptr %desc_pool.i254 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %desc_pool.i254, align 4
  %call.i.i255 = call ptr @dma_pool_alloc(ptr noundef %87, i32 noundef 2848, ptr noundef nonnull %phys.i253) #8
  %tobool.not.i256 = icmp eq ptr %call.i.i255, null
  br i1 %tobool.not.i256, label %cleanup121, label %if.end87

if.end87:                                         ; preds = %slave_sg_fromdev_fill_desc
  %88 = ptrtoint ptr %descs_allocated.i257 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %descs_allocated.i257, align 4
  %inc.i258 = add i32 %89, 1
  store i32 %inc.i258, ptr %descs_allocated.i257, align 4
  %tx_list.i259 = getelementptr inbounds %struct.dw_desc, ptr %call.i.i255, i32 0, i32 2
  %90 = ptrtoint ptr %tx_list.i259 to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %tx_list.i259, ptr %tx_list.i259, align 4
  %prev.i.i260 = getelementptr inbounds %struct.dw_desc, ptr %call.i.i255, i32 0, i32 2, i32 1
  %91 = ptrtoint ptr %prev.i.i260 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %tx_list.i259, ptr %prev.i.i260, align 4
  %txd.i261 = getelementptr inbounds %struct.dw_desc, ptr %call.i.i255, i32 0, i32 3
  call void @dma_async_tx_descriptor_init(ptr noundef %txd.i261, ptr noundef %chan) #8
  %tx_submit.i262 = getelementptr inbounds %struct.dw_desc, ptr %call.i.i255, i32 0, i32 3, i32 4
  %92 = ptrtoint ptr %tx_submit.i262 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @dwc_tx_submit, ptr %tx_submit.i262, align 4
  %flags.i263 = getelementptr inbounds %struct.dw_desc, ptr %call.i.i255, i32 0, i32 3, i32 1
  %93 = ptrtoint ptr %flags.i263 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 2, ptr %flags.i263, align 4
  %94 = ptrtoint ptr %phys.i253 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %phys.i253, align 4
  %phys6.i264 = getelementptr inbounds %struct.dw_desc, ptr %call.i.i255, i32 0, i32 3, i32 2
  %96 = ptrtoint ptr %phys6.i264 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %phys6.i264, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys.i253) #8
  %97 = ptrtoint ptr %bytes2block88 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %bytes2block88, align 4
  %call89 = call i32 %98(ptr noundef %chan, i32 noundef %len79.0, i32 noundef %70, ptr noundef nonnull %dlen81) #8
  %99 = ptrtoint ptr %call.i.i255 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %77, ptr %call.i.i255, align 4
  %100 = call i32 @llvm.bswap.i32(i32 %mem80.0)
  %dar93 = getelementptr inbounds %struct.dw_lli, ptr %call.i.i255, i32 0, i32 1
  %101 = ptrtoint ptr %dar93 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %dar93, align 4
  %102 = call i32 @llvm.bswap.i32(i32 %call89)
  %ctlhi95 = getelementptr inbounds %struct.dw_lli, ptr %call.i.i255, i32 0, i32 4
  %103 = ptrtoint ptr %ctlhi95 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %ctlhi95, align 4
  %or96 = or i32 %mem80.0, %7
  %104 = call i32 @llvm.cttz.i32(i32 %or96, i1 false) #8, !range !193
  %shl98 = shl nuw nsw i32 %104, 1
  %or73 = or i32 %or68, %shl98
  %or99 = or i32 %or73, 1024
  %105 = call i32 @llvm.bswap.i32(i32 %or99)
  %ctllo101 = getelementptr inbounds %struct.dw_lli, ptr %call.i.i255, i32 0, i32 3
  %106 = ptrtoint ptr %ctllo101 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %ctllo101, align 4
  %107 = ptrtoint ptr %dlen81 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %dlen81, align 4
  %len102 = getelementptr inbounds %struct.dw_desc, ptr %call.i.i255, i32 0, i32 4
  %109 = ptrtoint ptr %len102 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %len102, align 4
  %tobool103.not = icmp eq ptr %first.5, null
  br i1 %tobool103.not, label %if.end87.if.end114_crit_edge, label %if.else105

if.end87.if.end114_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end114

if.else105:                                       ; preds = %if.end87
  %110 = ptrtoint ptr %phys6.i264 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %phys6.i264, align 4
  %or109 = or i32 %111, %conv108
  %112 = call i32 @llvm.bswap.i32(i32 %or109)
  %llp111 = getelementptr inbounds %struct.dw_lli, ptr %prev.4, i32 0, i32 2
  %113 = ptrtoint ptr %llp111 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %llp111, align 4
  %desc_node112 = getelementptr inbounds %struct.dw_desc, ptr %call.i.i255, i32 0, i32 1
  %tx_list113 = getelementptr inbounds %struct.dw_desc, ptr %first.5, i32 0, i32 2
  %prev.i267 = getelementptr inbounds %struct.dw_desc, ptr %first.5, i32 0, i32 2, i32 1
  %114 = ptrtoint ptr %prev.i267 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %prev.i267, align 4
  %call.i.i268 = call zeroext i1 @__list_add_valid(ptr noundef %desc_node112, ptr noundef %115, ptr noundef %tx_list113) #8
  br i1 %call.i.i268, label %if.end.i.i270, label %if.else105.if.end114_crit_edge

if.else105.if.end114_crit_edge:                   ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end114

if.end.i.i270:                                    ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #10
  %116 = ptrtoint ptr %prev.i267 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %desc_node112, ptr %prev.i267, align 4
  %117 = ptrtoint ptr %desc_node112 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %tx_list113, ptr %desc_node112, align 4
  %prev3.i.i269 = getelementptr inbounds %struct.dw_desc, ptr %call.i.i255, i32 0, i32 1, i32 1
  %118 = ptrtoint ptr %prev3.i.i269 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %115, ptr %prev3.i.i269, align 4
  %119 = ptrtoint ptr %115 to i32
  call void @__asan_store4_noabort(i32 %119)
  store volatile ptr %desc_node112, ptr %115, align 4
  br label %if.end114

if.end114:                                        ; preds = %if.end.i.i270, %if.else105.if.end114_crit_edge, %if.end87.if.end114_crit_edge
  %first.6 = phi ptr [ %call.i.i255, %if.end87.if.end114_crit_edge ], [ %first.5, %if.else105.if.end114_crit_edge ], [ %first.5, %if.end.i.i270 ]
  %120 = ptrtoint ptr %dlen81 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %dlen81, align 4
  %add115 = add i32 %121, %mem80.0
  %sub116 = sub i32 %len79.0, %121
  %add117 = add i32 %121, %total_len.4
  %tobool118.not = icmp eq i32 %sub116, 0
  br i1 %tobool118.not, label %for.inc127, label %if.end114.slave_sg_fromdev_fill_desc_crit_edge

if.end114.slave_sg_fromdev_fill_desc_crit_edge:   ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #10
  br label %slave_sg_fromdev_fill_desc

cleanup121:                                       ; preds = %slave_sg_fromdev_fill_desc
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys.i253) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dlen81) #8
  br label %do.end147

for.inc127:                                       ; preds = %if.end114
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dlen81) #8
  %inc128 = add nuw i32 %i.1310, 1
  %call129 = call ptr @sg_next(ptr noundef %sg.1311) #8
  %exitcond.not = icmp eq i32 %inc128, %sg_len
  br i1 %exitcond.not, label %for.inc127.sw.epilog_crit_edge, label %for.inc127.for.body77_crit_edge

for.inc127.for.body77_crit_edge:                  ; preds = %for.inc127
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body77

for.inc127.sw.epilog_crit_edge:                   ; preds = %for.inc127
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.inc127.sw.epilog_crit_edge, %for.inc.sw.epilog_crit_edge
  %prev.6 = phi ptr [ %call.i.i, %for.inc.sw.epilog_crit_edge ], [ %call.i.i255, %for.inc127.sw.epilog_crit_edge ]
  %first.8 = phi ptr [ %first.2, %for.inc.sw.epilog_crit_edge ], [ %first.6, %for.inc127.sw.epilog_crit_edge ]
  %total_len.6 = phi i32 [ %add53, %for.inc.sw.epilog_crit_edge ], [ %add117, %for.inc127.sw.epilog_crit_edge ]
  %and131 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131)
  %tobool132.not = icmp eq i32 %and131, 0
  br i1 %tobool132.not, label %sw.epilog.if.end137_crit_edge, label %if.then133

sw.epilog.if.end137_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end137

if.then133:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %ctllo135 = getelementptr inbounds %struct.dw_lli, ptr %prev.6, i32 0, i32 3
  %122 = ptrtoint ptr %ctllo135 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %ctllo135, align 4
  %or136 = or i32 %123, 16777216
  store i32 %or136, ptr %ctllo135, align 4
  br label %if.end137

if.end137:                                        ; preds = %if.then133, %sw.epilog.if.end137_crit_edge
  %llp139 = getelementptr inbounds %struct.dw_lli, ptr %prev.6, i32 0, i32 2
  %124 = ptrtoint ptr %llp139 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 0, ptr %llp139, align 4
  %ctllo141 = getelementptr inbounds %struct.dw_lli, ptr %prev.6, i32 0, i32 3
  %125 = ptrtoint ptr %ctllo141 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %ctllo141, align 4
  %and142 = and i32 %126, -25
  store i32 %and142, ptr %ctllo141, align 4
  %total_len143 = getelementptr inbounds %struct.dw_desc, ptr %first.8, i32 0, i32 5
  %127 = ptrtoint ptr %total_len143 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %total_len.6, ptr %total_len143, align 4
  %txd144 = getelementptr inbounds %struct.dw_desc, ptr %first.8, i32 0, i32 3
  br label %cleanup149

do.end147:                                        ; preds = %cleanup121, %cleanup
  %first.9 = phi ptr [ %first.5, %cleanup121 ], [ %first.1, %cleanup ]
  %dev.i272 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %128 = ptrtoint ptr %dev.i272 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dev.i272, align 4
  %device.i273 = getelementptr inbounds %struct.dma_chan_dev, ptr %129, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i273, ptr noundef nonnull @.str.54, i32 noundef %direction) #11
  %130 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %chan, align 4
  %tobool.not.i274 = icmp eq ptr %first.9, null
  br i1 %tobool.not.i274, label %do.end147.cleanup149_crit_edge, label %if.end.i276, !prof !160

do.end147.cleanup149_crit_edge:                   ; preds = %do.end147
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup149

if.end.i276:                                      ; preds = %do.end147
  %tx_list.i275 = getelementptr inbounds %struct.dw_desc, ptr %first.9, i32 0, i32 2
  %132 = ptrtoint ptr %tx_list.i275 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %tx_list.i275, align 4
  %cmp.not38.i = icmp eq ptr %133, %tx_list.i275
  br i1 %cmp.not38.i, label %if.end.i276.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end.i276.for.end.i_crit_edge:                  ; preds = %if.end.i276
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end.i276
  %desc_pool.i277 = getelementptr inbounds %struct.dw_dma, ptr %131, i32 0, i32 3
  %descs_allocated.i278 = getelementptr inbounds %struct.dw_dma_chan, ptr %chan, i32 0, i32 10
  br label %for.body.i

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn.in39.i = phi ptr [ %133, %for.body.lr.ph.i ], [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ]
  %child.0.i = getelementptr i8, ptr %.pn.in39.i, i32 -28
  %134 = ptrtoint ptr %.pn.in39.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %.pn.i = load ptr, ptr %.pn.in39.i, align 4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in39.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in39.i, i32 0, i32 1
  %135 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %prev.i.i.i, align 4
  %137 = ptrtoint ptr %.pn.in39.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %.pn.in39.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %138, i32 0, i32 1
  %139 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %136, ptr %prev1.i.i.i.i, align 4
  %140 = ptrtoint ptr %136 to i32
  call void @__asan_store4_noabort(i32 %140)
  store volatile ptr %138, ptr %136, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %141 = ptrtoint ptr %.pn.in39.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in39.i, align 4
  %prev.i.i279 = getelementptr inbounds %struct.list_head, ptr %.pn.in39.i, i32 0, i32 1
  %142 = ptrtoint ptr %prev.i.i279 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i279, align 4
  %143 = ptrtoint ptr %desc_pool.i277 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %desc_pool.i277, align 4
  %phys.i280 = getelementptr i8, ptr %.pn.in39.i, i32 24
  %145 = ptrtoint ptr %phys.i280 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %phys.i280, align 4
  call void @dma_pool_free(ptr noundef %144, ptr noundef %child.0.i, i32 noundef %146) #8
  %147 = ptrtoint ptr %descs_allocated.i278 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %descs_allocated.i278, align 4
  %dec.i = add i32 %148, -1
  store i32 %dec.i, ptr %descs_allocated.i278, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %tx_list.i275
  br i1 %cmp.not.i, label %list_del.exit.i.for.end.i_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

list_del.exit.i.for.end.i_crit_edge:              ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %list_del.exit.i.for.end.i_crit_edge, %if.end.i276.for.end.i_crit_edge
  %desc_pool18.i = getelementptr inbounds %struct.dw_dma, ptr %131, i32 0, i32 3
  %149 = ptrtoint ptr %desc_pool18.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %desc_pool18.i, align 4
  %phys20.i = getelementptr inbounds %struct.dw_desc, ptr %first.9, i32 0, i32 3, i32 2
  %151 = ptrtoint ptr %phys20.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %phys20.i, align 4
  call void @dma_pool_free(ptr noundef %150, ptr noundef nonnull %first.9, i32 noundef %152) #8
  %descs_allocated21.i = getelementptr inbounds %struct.dw_dma_chan, ptr %chan, i32 0, i32 10
  %153 = ptrtoint ptr %descs_allocated21.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %descs_allocated21.i, align 4
  %dec22.i = add i32 %154, -1
  store i32 %dec22.i, ptr %descs_allocated21.i, align 4
  br label %cleanup149

cleanup149:                                       ; preds = %for.end.i, %do.end147.cleanup149_crit_edge, %if.end137, %if.end21.cleanup149_crit_edge, %do.end.cleanup149_crit_edge
  %retval.0 = phi ptr [ %txd144, %if.end137 ], [ null, %do.end.cleanup149_crit_edge ], [ null, %if.end21.cleanup149_crit_edge ], [ null, %do.end147.cleanup149_crit_edge ], [ null, %for.end.i ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dwc_caps(ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %caps) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %max_burst = getelementptr inbounds %struct.dw_dma_chan, ptr %chan, i32 0, i32 13
  %0 = ptrtoint ptr %max_burst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_burst, align 4
  %max_burst1 = getelementptr inbounds %struct.dma_slave_caps, ptr %caps, i32 0, i32 4
  %2 = ptrtoint ptr %max_burst1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %max_burst1, align 4
  %nollp = getelementptr inbounds %struct.dw_dma_chan, ptr %chan, i32 0, i32 12
  %3 = ptrtoint ptr %nollp to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %nollp, align 4, !range !194
  %5 = zext i8 %4 to i32
  %6 = getelementptr inbounds %struct.dma_slave_caps, ptr %caps, i32 0, i32 5
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %5, ptr %6, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc_config(ptr noundef %chan, ptr nocapture noundef readonly %sconfig) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %dma_sconfig = getelementptr inbounds %struct.dw_dma_chan, ptr %chan, i32 0, i32 15
  %2 = call ptr @memcpy(ptr %dma_sconfig, ptr %sconfig, i32 48)
  %src_maxburst = getelementptr inbounds %struct.dw_dma_chan, ptr %chan, i32 0, i32 15, i32 5
  %3 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %src_maxburst, align 4
  %max_burst = getelementptr inbounds %struct.dw_dma_chan, ptr %chan, i32 0, i32 13
  %5 = ptrtoint ptr %max_burst to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_burst, align 4
  %7 = tail call i32 @llvm.umin.i32(i32 %4, i32 %6)
  %8 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %src_maxburst, align 4
  %dst_maxburst = getelementptr inbounds %struct.dw_dma_chan, ptr %chan, i32 0, i32 15, i32 6
  %9 = ptrtoint ptr %dst_maxburst to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dst_maxburst, align 4
  %11 = tail call i32 @llvm.umin.i32(i32 %10, i32 %6)
  %12 = ptrtoint ptr %dst_maxburst to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %dst_maxburst, align 4
  %encode_maxburst = getelementptr inbounds %struct.dw_dma, ptr %1, i32 0, i32 12
  %13 = ptrtoint ptr %encode_maxburst to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %encode_maxburst, align 4
  tail call void %14(ptr noundef %chan, ptr noundef %src_maxburst) #8
  %15 = ptrtoint ptr %encode_maxburst to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %encode_maxburst, align 4
  tail call void %16(ptr noundef %chan, ptr noundef %dst_maxburst) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc_pause(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.dw_dma_chan, ptr %chan, i32 0, i32 6
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %suspend_chan.i = getelementptr inbounds %struct.dw_dma, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %suspend_chan.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %suspend_chan.i, align 4
  tail call void %3(ptr noundef %chan, i1 noundef zeroext false) #8
  %ch_regs.i.i = getelementptr inbounds %struct.dw_dma_chan, ptr %chan, i32 0, i32 1
  %4 = ptrtoint ptr %ch_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ch_regs.i.i, align 4
  %CFG_LO9.i = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %5, i32 0, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CFG_LO9.i) #8, !srcloc !152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !195
  %7 = and i32 %6, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not10.not.i = icmp eq i32 %7, 0
  br i1 %tobool4.not10.not.i, label %entry.while.body.i_crit_edge, label %entry.dwc_chan_pause.exit_crit_edge

entry.dwc_chan_pause.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %dwc_chan_pause.exit

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %count.011.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ 20, %entry.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %count.011.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 429496) #8
  %9 = ptrtoint ptr %ch_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ch_regs.i.i, align 4
  %CFG_LO.i = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %10, i32 0, i32 16
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CFG_LO.i) #8, !srcloc !152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !195
  %12 = and i32 %11, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool4.not.i = icmp ne i32 %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool5.not.i = icmp eq i32 %dec.i, 0
  %or.cond.i = select i1 %tobool4.not.i, i1 true, i1 %tobool5.not.i
  br i1 %or.cond.i, label %while.body.i.dwc_chan_pause.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i.dwc_chan_pause.exit_crit_edge:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dwc_chan_pause.exit

dwc_chan_pause.exit:                              ; preds = %while.body.i.dwc_chan_pause.exit_crit_edge, %entry.dwc_chan_pause.exit_crit_edge
  %flags.i = getelementptr inbounds %struct.dw_dma_chan, ptr %chan, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags.i) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc_resume(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.dw_dma_chan, ptr %chan, i32 0, i32 6
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %flags6 = getelementptr inbounds %struct.dw_dma_chan, ptr %chan, i32 0, i32 7
  %0 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags6, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chan, align 4
  %resume_chan.i = getelementptr inbounds %struct.dw_dma, ptr %4, i32 0, i32 10
  %5 = ptrtoint ptr %resume_chan.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %resume_chan.i, align 4
  tail call void %6(ptr noundef %chan, i1 noundef zeroext false) #8
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags6) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc_terminate_all(ptr noundef %chan) #2 align 64 {
entry:
  %list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #8
  %2 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %3 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %list, ptr %list, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list, ptr %2, align 4
  %lock = getelementptr inbounds %struct.dw_dma_chan, ptr %chan, i32 0, i32 6
  %call4 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %flags7 = getelementptr inbounds %struct.dw_dma_chan, ptr %chan, i32 0, i32 7
  call void @_clear_bit(i32 noundef 1, ptr noundef %flags7) #8
  %5 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chan, align 4
  %suspend_chan.i = getelementptr inbounds %struct.dw_dma, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %suspend_chan.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %suspend_chan.i, align 4
  call void %8(ptr noundef %chan, i1 noundef zeroext true) #8
  %ch_regs.i.i = getelementptr inbounds %struct.dw_dma_chan, ptr %chan, i32 0, i32 1
  %9 = ptrtoint ptr %ch_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ch_regs.i.i, align 4
  %CFG_LO9.i = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %10, i32 0, i32 16
  %11 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CFG_LO9.i) #8, !srcloc !152
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !195
  %12 = and i32 %11, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool4.not10.not.i = icmp eq i32 %12, 0
  br i1 %tobool4.not10.not.i, label %entry.while.body.i_crit_edge, label %entry.dwc_chan_pause.exit_crit_edge

entry.dwc_chan_pause.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %dwc_chan_pause.exit

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %count.011.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ 20, %entry.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %count.011.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %13(i32 noundef 429496) #8
  %14 = ptrtoint ptr %ch_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ch_regs.i.i, align 4
  %CFG_LO.i = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %15, i32 0, i32 16
  %16 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CFG_LO.i) #8, !srcloc !152
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !195
  %17 = and i32 %16, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool4.not.i = icmp ne i32 %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool5.not.i = icmp eq i32 %dec.i, 0
  %or.cond.i = select i1 %tobool4.not.i, i1 true, i1 %tobool5.not.i
  br i1 %or.cond.i, label %while.body.i.dwc_chan_pause.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i.dwc_chan_pause.exit_crit_edge:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dwc_chan_pause.exit

dwc_chan_pause.exit:                              ; preds = %while.body.i.dwc_chan_pause.exit_crit_edge, %entry.dwc_chan_pause.exit_crit_edge
  call void @_set_bit(i32 noundef 2, ptr noundef %flags7) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !196
  call void @arm_heavy_mb() #8
  %mask.i = getelementptr inbounds %struct.dw_dma_chan, ptr %chan, i32 0, i32 2
  %18 = ptrtoint ptr %mask.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %mask.i, align 4
  %conv.i = zext i8 %19 to i32
  %20 = shl nuw nsw i32 %conv.i, 16
  %regs.i.i = getelementptr inbounds %struct.dw_dma, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i.i, align 4
  %CH_EN.i = getelementptr inbounds %struct.dw_dma_regs, ptr %22, i32 0, i32 21
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CH_EN.i, i32 %20) #8, !srcloc !146
  %23 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i.i, align 4
  %CH_EN216.i = getelementptr inbounds %struct.dw_dma_regs, ptr %24, i32 0, i32 21
  %25 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CH_EN216.i) #8, !srcloc !152
  %26 = lshr i32 %25, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  %27 = ptrtoint ptr %mask.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %mask.i, align 4
  %conv617.i = zext i8 %28 to i32
  %and18.i = and i32 %26, %conv617.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool.not19.i = icmp eq i32 %and18.i, 0
  br i1 %tobool.not19.i, label %dwc_chan_pause.exit.dwc_chan_disable.exit_crit_edge, label %dwc_chan_pause.exit.do.end10.i_crit_edge

dwc_chan_pause.exit.do.end10.i_crit_edge:         ; preds = %dwc_chan_pause.exit
  br label %do.end10.i

dwc_chan_pause.exit.dwc_chan_disable.exit_crit_edge: ; preds = %dwc_chan_pause.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %dwc_chan_disable.exit

do.end10.i:                                       ; preds = %do.end10.i.do.end10.i_crit_edge, %dwc_chan_pause.exit.do.end10.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !198
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !199
  %29 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i.i, align 4
  %CH_EN2.i = getelementptr inbounds %struct.dw_dma_regs, ptr %30, i32 0, i32 21
  %31 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CH_EN2.i) #8, !srcloc !152
  %32 = lshr i32 %31, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  %33 = ptrtoint ptr %mask.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %mask.i, align 4
  %conv6.i = zext i8 %34 to i32
  %and.i = and i32 %32, %conv6.i
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end10.i.dwc_chan_disable.exit_crit_edge, label %do.end10.i.do.end10.i_crit_edge

do.end10.i.do.end10.i_crit_edge:                  ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end10.i

do.end10.i.dwc_chan_disable.exit_crit_edge:       ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dwc_chan_disable.exit

dwc_chan_disable.exit:                            ; preds = %do.end10.i.dwc_chan_disable.exit_crit_edge, %dwc_chan_pause.exit.dwc_chan_disable.exit_crit_edge
  %35 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %chan, align 4
  %resume_chan.i = getelementptr inbounds %struct.dw_dma, ptr %36, i32 0, i32 10
  %37 = ptrtoint ptr %resume_chan.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %resume_chan.i, align 4
  call void %38(ptr noundef %chan, i1 noundef zeroext true) #8
  call void @_clear_bit(i32 noundef 2, ptr noundef %flags7) #8
  %queue = getelementptr inbounds %struct.dw_dma_chan, ptr %chan, i32 0, i32 9
  %39 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not.i = icmp eq ptr %40, %queue
  br i1 %cmp.i.not.i, label %dwc_chan_disable.exit.list_splice_init.exit_crit_edge, label %if.then.i

dwc_chan_disable.exit.list_splice_init.exit_crit_edge: ; preds = %dwc_chan_disable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %dwc_chan_disable.exit
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %list, align 4
  %prev2.i.i = getelementptr inbounds %struct.dw_dma_chan, ptr %chan, i32 0, i32 9, i32 1
  %43 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %45 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %list, ptr %prev3.i.i, align 4
  store ptr %40, ptr %list, align 4
  %46 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %42, ptr %44, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %47 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %prev6.i.i, align 4
  %48 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %queue, ptr %queue, align 4
  store ptr %queue, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %dwc_chan_disable.exit.list_splice_init.exit_crit_edge
  %active_list = getelementptr inbounds %struct.dw_dma_chan, ptr %chan, i32 0, i32 8
  %49 = ptrtoint ptr %active_list to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %active_list, align 4
  %cmp.i.not.i37 = icmp eq ptr %50, %active_list
  br i1 %cmp.i.not.i37, label %list_splice_init.exit.list_splice_init.exit42_crit_edge, label %if.then.i41

list_splice_init.exit.list_splice_init.exit42_crit_edge: ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_splice_init.exit42

if.then.i41:                                      ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %list, align 4
  %prev2.i.i38 = getelementptr inbounds %struct.dw_dma_chan, ptr %chan, i32 0, i32 8, i32 1
  %53 = ptrtoint ptr %prev2.i.i38 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev2.i.i38, align 4
  %prev3.i.i39 = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %55 = ptrtoint ptr %prev3.i.i39 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %list, ptr %prev3.i.i39, align 4
  store ptr %50, ptr %list, align 4
  %56 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %52, ptr %54, align 4
  %prev6.i.i40 = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %57 = ptrtoint ptr %prev6.i.i40 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %prev6.i.i40, align 4
  %58 = ptrtoint ptr %active_list to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %active_list, ptr %active_list, align 4
  store ptr %active_list, ptr %prev2.i.i38, align 4
  br label %list_splice_init.exit42

list_splice_init.exit42:                          ; preds = %if.then.i41, %list_splice_init.exit.list_splice_init.exit42_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #8
  %59 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %list, align 4
  %cmp16.not43 = icmp eq ptr %60, %list
  br i1 %cmp16.not43, label %list_splice_init.exit42.for.end_crit_edge, label %list_splice_init.exit42.for.body_crit_edge

list_splice_init.exit42.for.body_crit_edge:       ; preds = %list_splice_init.exit42
  br label %for.body

list_splice_init.exit42.for.end_crit_edge:        ; preds = %list_splice_init.exit42
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %list_splice_init.exit42.for.body_crit_edge
  %.pn.in44 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %60, %list_splice_init.exit42.for.body_crit_edge ]
  %desc.0 = getelementptr i8, ptr %.pn.in44, i32 -28
  %61 = ptrtoint ptr %.pn.in44 to i32
  call void @__asan_load4_noabort(i32 %61)
  %.pn = load ptr, ptr %.pn.in44, align 4
  call fastcc void @dwc_descriptor_complete(ptr noundef %chan, ptr noundef %desc.0, i1 noundef zeroext false)
  %cmp16.not = icmp eq ptr %.pn, %list
  br i1 %cmp16.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %list_splice_init.exit42.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc_tx_status(ptr noundef %chan, i32 noundef %cookie, ptr noundef writeonly %txstate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cookie1.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %cookie1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cookie1.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 3
  %2 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %completed_cookie.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !200
  %tobool.not.i = icmp eq ptr %txstate, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %txstate to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %txstate, align 4
  %used2.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 1
  %5 = ptrtoint ptr %used2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %1, ptr %used2.i, align 4
  %residue.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 2
  %6 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %residue.i, align 4
  %in_flight_bytes.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 3
  %7 = ptrtoint ptr %in_flight_bytes.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %in_flight_bytes.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp.not.i.i = icmp sgt i32 %3, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %cookie)
  %cmp4.not.i.i = icmp sge i32 %3, %cookie
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %cookie)
  %cmp5.i.i = icmp slt i32 %1, %cookie
  br i1 %cmp.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  %or.cond.i.i = or i1 %cmp5.i.i, %cmp4.not.i.i
  br i1 %or.cond.i.i, label %if.then.i.i.cleanup_crit_edge, label %if.then.i.i.if.end_crit_edge

if.then.i.i.if.end_crit_edge:                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else.i.i:                                      ; preds = %if.end.i
  %or.cond16.i.i = and i1 %cmp5.i.i, %cmp4.not.i.i
  br i1 %or.cond16.i.i, label %if.else.i.i.cleanup_crit_edge, label %if.else.i.i.if.end_crit_edge

if.else.i.i.if.end_crit_edge:                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.else.i.i.cleanup_crit_edge:                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.else.i.i.if.end_crit_edge, %if.then.i.i.if.end_crit_edge
  %8 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chan, align 4
  tail call fastcc void @dwc_scan_descriptors(ptr noundef %9, ptr noundef %chan)
  %10 = ptrtoint ptr %cookie1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cookie1.i, align 4
  %12 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %completed_cookie.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !200
  br i1 %tobool.not.i, label %if.end.if.end.i37_crit_edge, label %if.then.i33

if.end.if.end.i37_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i37

if.then.i33:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %txstate to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %txstate, align 4
  %used2.i30 = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 1
  %15 = ptrtoint ptr %used2.i30 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %11, ptr %used2.i30, align 4
  %residue.i31 = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 2
  %16 = ptrtoint ptr %residue.i31 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %residue.i31, align 4
  %in_flight_bytes.i32 = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 3
  %17 = ptrtoint ptr %in_flight_bytes.i32 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %in_flight_bytes.i32, align 4
  br label %if.end.i37

if.end.i37:                                       ; preds = %if.then.i33, %if.end.if.end.i37_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %11)
  %cmp.not.i.i34 = icmp sgt i32 %13, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %cookie)
  %cmp4.not.i.i35 = icmp sge i32 %13, %cookie
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %cookie)
  %cmp5.i.i36 = icmp slt i32 %11, %cookie
  br i1 %cmp.not.i.i34, label %if.else.i.i41, label %if.then.i.i39

if.then.i.i39:                                    ; preds = %if.end.i37
  %or.cond.i.i38 = or i1 %cmp5.i.i36, %cmp4.not.i.i35
  br i1 %or.cond.i.i38, label %if.then.i.i39.cleanup_crit_edge, label %if.then.i.i39.if.end6_crit_edge

if.then.i.i39.if.end6_crit_edge:                  ; preds = %if.then.i.i39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then.i.i39.cleanup_crit_edge:                  ; preds = %if.then.i.i39
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else.i.i41:                                    ; preds = %if.end.i37
  %or.cond16.i.i40 = and i1 %cmp5.i.i36, %cmp4.not.i.i35
  br i1 %or.cond16.i.i40, label %if.else.i.i41.cleanup_crit_edge, label %if.else.i.i41.if.end6_crit_edge

if.else.i.i41.if.end6_crit_edge:                  ; preds = %if.else.i.i41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.else.i.i41.cleanup_crit_edge:                  ; preds = %if.else.i.i41
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.else.i.i41.if.end6_crit_edge, %if.then.i.i39.if.end6_crit_edge
  %lock.i = getelementptr inbounds %struct.dw_dma_chan, ptr %chan, i32 0, i32 6
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %active_list.i.i = getelementptr inbounds %struct.dw_dma_chan, ptr %chan, i32 0, i32 8
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end6
  %.pn.in.i.i = phi ptr [ %active_list.i.i, %if.end6 ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %18 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i45 = icmp eq ptr %.pn.i.i, %active_list.i.i
  br i1 %cmp.not.i.i45, label %for.cond.i.i.dwc_get_residue.exit_crit_edge, label %for.body.i.i

for.cond.i.i.dwc_get_residue.exit_crit_edge:      ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dwc_get_residue.exit

for.body.i.i:                                     ; preds = %for.cond.i.i
  %txd.i.i = getelementptr i8, ptr %.pn.i.i, i32 16
  %19 = ptrtoint ptr %txd.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %txd.i.i, align 4
  %cmp2.i.i = icmp eq i32 %20, %cookie
  br i1 %cmp2.i.i, label %dwc_find_desc.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i

dwc_find_desc.exit.i:                             ; preds = %for.body.i.i
  %desc.0.le.i.i = getelementptr i8, ptr %.pn.i.i, i32 -28
  %tobool.not.i46 = icmp eq ptr %desc.0.le.i.i, null
  br i1 %tobool.not.i46, label %dwc_find_desc.exit.i.dwc_get_residue.exit_crit_edge, label %if.then.i47

dwc_find_desc.exit.i.dwc_get_residue.exit_crit_edge: ; preds = %dwc_find_desc.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dwc_get_residue.exit

if.then.i47:                                      ; preds = %dwc_find_desc.exit.i
  %21 = ptrtoint ptr %active_list.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %active_list.i.i, align 4
  %cmp7.i = icmp eq ptr %.pn.i.i, %22
  br i1 %cmp7.i, label %if.then9.i, label %if.else.i

if.then9.i:                                       ; preds = %if.then.i47
  %residue10.i = getelementptr i8, ptr %.pn.i.i, i32 124
  %23 = ptrtoint ptr %residue10.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %residue10.i, align 4
  %flags11.i = getelementptr inbounds %struct.dw_dma_chan, ptr %chan, i32 0, i32 7
  %25 = ptrtoint ptr %flags11.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %flags11.i, align 4
  %27 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool13.not.i = icmp eq i32 %27, 0
  br i1 %tobool13.not.i, label %if.then9.i.dwc_get_residue.exit_crit_edge, label %land.lhs.true.i

if.then9.i.dwc_get_residue.exit_crit_edge:        ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dwc_get_residue.exit

land.lhs.true.i:                                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool14.not.i = icmp eq i32 %24, 0
  br i1 %tobool14.not.i, label %land.lhs.true.i.dwc_get_residue.exit_crit_edge, label %if.then15.i

land.lhs.true.i.dwc_get_residue.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dwc_get_residue.exit

if.then15.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chan, align 4
  %ch_regs.i.i.i = getelementptr inbounds %struct.dw_dma_chan, ptr %chan, i32 0, i32 1
  %30 = ptrtoint ptr %ch_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ch_regs.i.i.i, align 4
  %CTL_HI.i.i = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %31, i32 0, i32 7
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CTL_HI.i.i) #8, !srcloc !152
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !201
  %34 = ptrtoint ptr %ch_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ch_regs.i.i.i, align 4
  %CTL_LO.i.i = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %35, i32 0, i32 6
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CTL_LO.i.i) #8, !srcloc !152
  %37 = lshr i32 %36, 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !202
  %block2bytes.i.i = getelementptr inbounds %struct.dw_dma, ptr %29, i32 0, i32 14
  %38 = ptrtoint ptr %block2bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %block2bytes.i.i, align 4
  %and.i.i = and i32 %37, 7
  %call10.i.i = tail call i32 %39(ptr noundef %chan, i32 noundef %33, i32 noundef %and.i.i) #8
  %sub.i = sub i32 %24, %call10.i.i
  br label %dwc_get_residue.exit

if.else.i:                                        ; preds = %if.then.i47
  call void @__sanitizer_cov_trace_pc() #10
  %total_len.i = getelementptr i8, ptr %.pn.i.i, i32 120
  %40 = ptrtoint ptr %total_len.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %total_len.i, align 4
  br label %dwc_get_residue.exit

dwc_get_residue.exit:                             ; preds = %if.else.i, %if.then15.i, %land.lhs.true.i.dwc_get_residue.exit_crit_edge, %if.then9.i.dwc_get_residue.exit_crit_edge, %dwc_find_desc.exit.i.dwc_get_residue.exit_crit_edge, %for.cond.i.i.dwc_get_residue.exit_crit_edge
  %residue.0.i = phi i32 [ %sub.i, %if.then15.i ], [ 0, %land.lhs.true.i.dwc_get_residue.exit_crit_edge ], [ %24, %if.then9.i.dwc_get_residue.exit_crit_edge ], [ %41, %if.else.i ], [ 0, %dwc_find_desc.exit.i.dwc_get_residue.exit_crit_edge ], [ 0, %for.cond.i.i.dwc_get_residue.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #8
  br i1 %tobool.not.i, label %dwc_get_residue.exit.dma_set_residue.exit_crit_edge, label %if.then.i49

dwc_get_residue.exit.dma_set_residue.exit_crit_edge: ; preds = %dwc_get_residue.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_set_residue.exit

if.then.i49:                                      ; preds = %dwc_get_residue.exit
  call void @__sanitizer_cov_trace_pc() #10
  %residue1.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 2
  %42 = ptrtoint ptr %residue1.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %residue.0.i, ptr %residue1.i, align 4
  br label %dma_set_residue.exit

dma_set_residue.exit:                             ; preds = %if.then.i49, %dwc_get_residue.exit.dma_set_residue.exit_crit_edge
  %flags = getelementptr inbounds %struct.dw_dma_chan, ptr %chan, i32 0, i32 7
  %43 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %flags, align 4
  %45 = and i32 %44, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not = icmp eq i32 %45, 0
  %spec.select = select i1 %tobool.not, i32 1, i32 2
  br label %cleanup

cleanup:                                          ; preds = %dma_set_residue.exit, %if.else.i.i41.cleanup_crit_edge, %if.then.i.i39.cleanup_crit_edge, %if.else.i.i.cleanup_crit_edge, %if.then.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %dma_set_residue.exit ], [ 0, %if.then.i.i.cleanup_crit_edge ], [ 0, %if.else.i.i.cleanup_crit_edge ], [ 0, %if.then.i.i39.cleanup_crit_edge ], [ 0, %if.else.i.i41.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwc_issue_pending(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.dw_dma_chan, ptr %chan, i32 0, i32 6
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %active_list = getelementptr inbounds %struct.dw_dma_chan, ptr %chan, i32 0, i32 8
  %0 = ptrtoint ptr %active_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %active_list, align 4
  %cmp.i.not = icmp eq ptr %1, %active_list
  br i1 %cmp.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @dwc_dostart_first_queued(ptr noundef %chan)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @do_dma_remove(ptr nocapture noundef readonly %chip) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dw1 = getelementptr inbounds %struct.dw_dma_chip, ptr %chip, i32 0, i32 5
  %0 = ptrtoint ptr %dw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dw1, align 4
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #8
  tail call void @do_dw_dma_off(ptr noundef %1)
  tail call void @dma_async_device_unregister(ptr noundef %1) #8
  %irq = getelementptr inbounds %struct.dw_dma_chip, ptr %chip, i32 0, i32 2
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call2 = tail call ptr @free_irq(i32 noundef %5, ptr noundef %1) #8
  %tasklet = getelementptr inbounds %struct.dw_dma, ptr %1, i32 0, i32 4
  tail call void @tasklet_kill(ptr noundef %tasklet) #8
  %channels = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %channels, align 4
  %cmp.not38 = icmp eq ptr %7, %channels
  br i1 %cmp.not38, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %regs.i = getelementptr inbounds %struct.dw_dma, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn.in39 = phi ptr [ %7, %for.body.lr.ph ], [ %.pn, %list_del.exit.for.body_crit_edge ]
  %8 = ptrtoint ptr %.pn.in39 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn = load ptr, ptr %.pn.in39, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in39) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in39, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %.pn.in39 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %.pn.in39, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %15 = ptrtoint ptr %.pn.in39 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in39, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in39, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !203
  tail call void @arm_heavy_mb() #8
  %mask = getelementptr i8, ptr %.pn.in39, i32 36
  %17 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %mask, align 4
  %conv = zext i8 %18 to i32
  %19 = shl nuw nsw i32 %conv, 16
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 4
  %CH_EN = getelementptr inbounds %struct.dw_dma_regs, ptr %21, i32 0, i32 21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CH_EN, i32 %19) #8, !srcloc !146
  %cmp.not = icmp eq ptr %.pn, %channels
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %22 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chip, align 4
  %call.i37 = tail call i32 @__pm_runtime_suspend(ptr noundef %23, i32 noundef 4) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @do_dw_dma_disable(ptr nocapture noundef readonly %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dw1 = getelementptr inbounds %struct.dw_dma_chip, ptr %chip, i32 0, i32 5
  %0 = ptrtoint ptr %dw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dw1, align 4
  %disable = getelementptr inbounds %struct.dw_dma, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disable, align 4
  tail call void %3(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @do_dw_dma_enable(ptr nocapture noundef readonly %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dw1 = getelementptr inbounds %struct.dw_dma_chip, ptr %chip, i32 0, i32 5
  %0 = ptrtoint ptr %dw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dw1, align 4
  %enable = getelementptr inbounds %struct.dw_dma, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %enable, align 4
  tail call void %3(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc_scan_descriptors(ptr nocapture noundef readonly %dw, ptr noundef %dwc) unnamed_addr #2 align 64 {
entry:
  %list.i = alloca %struct.list_head, align 4
  %llp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %llp) #8
  %lock = getelementptr inbounds %struct.dw_dma_chan, ptr %dwc, i32 0, i32 6
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %ch_regs.i = getelementptr inbounds %struct.dw_dma_chan, ptr %dwc, i32 0, i32 1
  %0 = ptrtoint ptr %ch_regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ch_regs.i, align 4
  %LLP = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %1, i32 0, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %LLP) #8, !srcloc !152
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !204
  %4 = ptrtoint ptr %llp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %llp, align 4
  %regs.i = getelementptr inbounds %struct.dw_dma, ptr %dw, i32 0, i32 2
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 4
  %RAW = getelementptr inbounds %struct.dw_dma_regs, ptr %6, i32 0, i32 1
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %RAW) #8, !srcloc !152
  %8 = lshr i32 %7, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !205
  %mask = getelementptr inbounds %struct.dw_dma_chan, ptr %dwc, i32 0, i32 2
  %9 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %mask, align 4
  %conv15 = zext i8 %10 to i32
  %and = and i32 %8, %conv15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end47, label %do.body16

do.body16:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !206
  tail call void @arm_heavy_mb() #8
  %11 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %mask, align 4
  %conv20 = zext i8 %12 to i32
  %13 = shl nuw i32 %conv20, 24
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %CLEAR = getelementptr inbounds %struct.dw_dma_regs, ptr %15, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CLEAR, i32 %13) #8, !srcloc !146
  %flags23 = getelementptr inbounds %struct.dw_dma_chan, ptr %dwc, i32 0, i32 7
  %16 = ptrtoint ptr %flags23 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flags23, align 4
  %18 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool25.not = icmp eq i32 %18, 0
  br i1 %tobool25.not, label %do.body16.if.end45_crit_edge, label %if.then26

do.body16.if.end45_crit_edge:                     ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then26:                                        ; preds = %do.body16
  %tx_node_active = getelementptr inbounds %struct.dw_dma_chan, ptr %dwc, i32 0, i32 5
  %19 = ptrtoint ptr %tx_node_active to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tx_node_active, align 4
  %active_list.i = getelementptr inbounds %struct.dw_dma_chan, ptr %dwc, i32 0, i32 8
  %21 = ptrtoint ptr %active_list.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %active_list.i, align 4
  %tx_list = getelementptr i8, ptr %22, i32 8
  %cmp28.not = icmp eq ptr %20, %tx_list
  br i1 %cmp28.not, label %if.end42, label %if.then30

if.then30:                                        ; preds = %if.then26
  %23 = ptrtoint ptr %tx_list to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tx_list, align 4
  %cmp31 = icmp eq ptr %20, %24
  br i1 %cmp31, label %if.then30.if.end_crit_edge, label %if.else

if.then30.if.end_crit_edge:                       ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.else:                                          ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  %prev = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %25 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then30.if.end_crit_edge
  %.sink = phi ptr [ %26, %if.else ], [ %22, %if.then30.if.end_crit_edge ]
  %len35 = getelementptr i8, ptr %.sink, i32 116
  %27 = ptrtoint ptr %len35 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len35, align 4
  %residue36 = getelementptr i8, ptr %22, i32 124
  %29 = ptrtoint ptr %residue36 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %residue36, align 4
  %sub37 = sub i32 %30, %28
  store i32 %sub37, ptr %residue36, align 4
  %add.ptr40 = getelementptr i8, ptr %20, i32 -28
  %31 = ptrtoint ptr %dwc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dwc, align 4
  %ctllo1.i = getelementptr i8, ptr %20, i32 -16
  %33 = ptrtoint ptr %ctllo1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ctllo1.i, align 4
  %35 = or i32 %34, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !207
  tail call void @arm_heavy_mb() #8
  %36 = ptrtoint ptr %add.ptr40 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr40, align 4
  %38 = ptrtoint ptr %ch_regs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ch_regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !208
  tail call void @arm_heavy_mb() #8
  %dar.i = getelementptr i8, ptr %20, i32 -24
  %40 = ptrtoint ptr %dar.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dar.i, align 4
  %42 = ptrtoint ptr %ch_regs.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ch_regs.i, align 4
  %DAR.i = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %43, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DAR.i, i32 %41) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !209
  tail call void @arm_heavy_mb() #8
  %44 = ptrtoint ptr %ch_regs.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ch_regs.i, align 4
  %CTL_LO.i = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %45, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CTL_LO.i, i32 %35) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !210
  tail call void @arm_heavy_mb() #8
  %ctlhi.i = getelementptr i8, ptr %20, i32 -12
  %46 = ptrtoint ptr %ctlhi.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ctlhi.i, align 4
  %48 = ptrtoint ptr %ch_regs.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ch_regs.i, align 4
  %CTL_HI.i = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %49, i32 0, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CTL_HI.i, i32 %47) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !211
  tail call void @arm_heavy_mb() #8
  %50 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %mask, align 4
  %conv.i = zext i8 %51 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %or23.i = or i32 %shl.i, %conv.i
  %52 = tail call i32 @llvm.bswap.i32(i32 %or23.i) #8
  %regs.i.i = getelementptr inbounds %struct.dw_dma, ptr %32, i32 0, i32 2
  %53 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs.i.i, align 4
  %CH_EN.i = getelementptr inbounds %struct.dw_dma_regs, ptr %54, i32 0, i32 21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CH_EN.i, i32 %52) #8, !srcloc !146
  %55 = ptrtoint ptr %tx_node_active to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tx_node_active, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  store ptr %58, ptr %tx_node_active, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  br label %cleanup184

if.end42:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags23) #8
  br label %if.end45

if.end45:                                         ; preds = %if.end42, %do.body16.if.end45_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list.i) #8
  %59 = getelementptr inbounds %struct.list_head, ptr %list.i, i32 0, i32 1
  %60 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %list.i, ptr %list.i, align 4
  %61 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %list.i, ptr %59, align 4
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %62 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs.i, align 4
  %CH_EN.i269 = getelementptr inbounds %struct.dw_dma_regs, ptr %63, i32 0, i32 21
  %64 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CH_EN.i269) #8, !srcloc !152
  %65 = lshr i32 %64, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !212
  %66 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %mask, align 4
  %conv9.i = zext i8 %67 to i32
  %and.i = and i32 %65, %conv9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end45.if.end.i_crit_edge, label %do.end12.i

if.end45.if.end.i_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end12.i:                                       ; preds = %if.end45
  %dev.i.i = getelementptr inbounds %struct.dma_chan, ptr %dwc, i32 0, i32 5
  %68 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev.i.i, align 4
  %device.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %69, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i.i, ptr noundef nonnull @.str.33) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !196
  call void @arm_heavy_mb() #8
  %70 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %mask, align 4
  %conv.i.i = zext i8 %71 to i32
  %72 = shl nuw nsw i32 %conv.i.i, 16
  %73 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regs.i, align 4
  %CH_EN.i.i = getelementptr inbounds %struct.dw_dma_regs, ptr %74, i32 0, i32 21
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CH_EN.i.i, i32 %72) #8, !srcloc !146
  %75 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regs.i, align 4
  %CH_EN216.i.i = getelementptr inbounds %struct.dw_dma_regs, ptr %76, i32 0, i32 21
  %77 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CH_EN216.i.i) #8, !srcloc !152
  %78 = lshr i32 %77, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  %79 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %mask, align 4
  %conv617.i.i = zext i8 %80 to i32
  %and18.i.i = and i32 %78, %conv617.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i.i)
  %tobool.not19.i.i = icmp eq i32 %and18.i.i, 0
  br i1 %tobool.not19.i.i, label %do.end12.i.if.end.i_crit_edge, label %do.end12.i.do.end10.i.i_crit_edge

do.end12.i.do.end10.i.i_crit_edge:                ; preds = %do.end12.i
  br label %do.end10.i.i

do.end12.i.if.end.i_crit_edge:                    ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end10.i.i:                                     ; preds = %do.end10.i.i.do.end10.i.i_crit_edge, %do.end12.i.do.end10.i.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !198
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !199
  %81 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regs.i, align 4
  %CH_EN2.i.i = getelementptr inbounds %struct.dw_dma_regs, ptr %82, i32 0, i32 21
  %83 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CH_EN2.i.i) #8, !srcloc !152
  %84 = lshr i32 %83, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  %85 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %mask, align 4
  %conv6.i.i = zext i8 %86 to i32
  %and.i.i = and i32 %84, %conv6.i.i
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end10.i.i.if.end.i_crit_edge, label %do.end10.i.i.do.end10.i.i_crit_edge

do.end10.i.i.do.end10.i.i_crit_edge:              ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end10.i.i

do.end10.i.i.if.end.i_crit_edge:                  ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end10.i.i.if.end.i_crit_edge, %do.end12.i.if.end.i_crit_edge, %if.end45.if.end.i_crit_edge
  %active_list.i271 = getelementptr inbounds %struct.dw_dma_chan, ptr %dwc, i32 0, i32 8
  %87 = ptrtoint ptr %active_list.i271 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile ptr, ptr %active_list.i271, align 4
  %cmp.i.not.i.i = icmp eq ptr %88, %active_list.i271
  br i1 %cmp.i.not.i.i, label %if.end.i.list_splice_init.exit.i_crit_edge, label %if.then.i.i

if.end.i.list_splice_init.exit.i_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_splice_init.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %89 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %list.i, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.dw_dma_chan, ptr %dwc, i32 0, i32 8, i32 1
  %91 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %88, i32 0, i32 1
  %93 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %list.i, ptr %prev3.i.i.i, align 4
  store ptr %88, ptr %list.i, align 4
  %94 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %90, ptr %92, align 4
  %prev6.i.i.i = getelementptr inbounds %struct.list_head, ptr %90, i32 0, i32 1
  %95 = ptrtoint ptr %prev6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %92, ptr %prev6.i.i.i, align 4
  %96 = ptrtoint ptr %active_list.i271 to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile ptr %active_list.i271, ptr %active_list.i271, align 4
  store ptr %active_list.i271, ptr %prev2.i.i.i, align 4
  br label %list_splice_init.exit.i

list_splice_init.exit.i:                          ; preds = %if.then.i.i, %if.end.i.list_splice_init.exit.i_crit_edge
  call fastcc void @dwc_dostart_first_queued(ptr noundef %dwc) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2.i) #8
  %97 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %list.i, align 4
  %cmp22.not41.i = icmp eq ptr %98, %list.i
  br i1 %cmp22.not41.i, label %list_splice_init.exit.i.dwc_complete_all.exit_crit_edge, label %list_splice_init.exit.i.for.body.i_crit_edge

list_splice_init.exit.i.for.body.i_crit_edge:     ; preds = %list_splice_init.exit.i
  br label %for.body.i

list_splice_init.exit.i.dwc_complete_all.exit_crit_edge: ; preds = %list_splice_init.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dwc_complete_all.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %list_splice_init.exit.i.for.body.i_crit_edge
  %.pn.in42.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %98, %list_splice_init.exit.i.for.body.i_crit_edge ]
  %desc.0.i = getelementptr i8, ptr %.pn.in42.i, i32 -28
  %99 = ptrtoint ptr %.pn.in42.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %.pn.i = load ptr, ptr %.pn.in42.i, align 4
  call fastcc void @dwc_descriptor_complete(ptr noundef %dwc, ptr noundef %desc.0.i, i1 noundef zeroext true) #8
  %cmp22.not.i = icmp eq ptr %.pn.i, %list.i
  br i1 %cmp22.not.i, label %for.body.i.dwc_complete_all.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.dwc_complete_all.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dwc_complete_all.exit

dwc_complete_all.exit:                            ; preds = %for.body.i.dwc_complete_all.exit_crit_edge, %list_splice_init.exit.i.dwc_complete_all.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list.i) #8
  br label %cleanup184

if.end47:                                         ; preds = %entry
  %active_list = getelementptr inbounds %struct.dw_dma_chan, ptr %dwc, i32 0, i32 8
  %100 = ptrtoint ptr %active_list to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile ptr, ptr %active_list, align 4
  %cmp.i.not = icmp eq ptr %101, %active_list
  br i1 %cmp.i.not, label %if.then50, label %if.end52

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  br label %cleanup184

if.end52:                                         ; preds = %if.end47
  %flags53 = getelementptr inbounds %struct.dw_dma_chan, ptr %dwc, i32 0, i32 7
  %102 = ptrtoint ptr %flags53 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile i32, ptr %flags53, align 4
  %104 = and i32 %103, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool55.not = icmp eq i32 %104, 0
  br i1 %tobool55.not, label %do.body71, label %do.body57

do.body57:                                        ; preds = %if.end52
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc_scan_descriptors.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc_scan_descriptors, %do.end68)) #8
          to label %if.then64 [label %do.end68], !srcloc !158

if.then64:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %dwc, i32 0, i32 5
  %105 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %106, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc_scan_descriptors.__UNIQUE_ID_ddebug240, ptr noundef %device.i, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.29) #8
  br label %do.end68

do.end68:                                         ; preds = %if.then64, %do.body57
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  br label %cleanup184

do.body71:                                        ; preds = %if.end52
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc_scan_descriptors.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc_scan_descriptors, %do.end90)) #8
          to label %if.then85 [label %do.end90], !srcloc !158

if.then85:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i273 = getelementptr inbounds %struct.dma_chan, ptr %dwc, i32 0, i32 5
  %107 = ptrtoint ptr %dev.i273 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev.i273, align 4
  %device.i274 = getelementptr inbounds %struct.dma_chan_dev, ptr %108, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc_scan_descriptors.__UNIQUE_ID_ddebug241, ptr noundef %device.i274, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.29, ptr noundef nonnull %llp) #8
  br label %do.end90

do.end90:                                         ; preds = %if.then85, %do.body71
  %109 = ptrtoint ptr %active_list to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %active_list, align 4
  %cmp102.not293 = icmp eq ptr %110, %active_list
  br i1 %cmp102.not293, label %do.end90.do.end180_crit_edge, label %do.end90.for.body_crit_edge

do.end90.for.body_crit_edge:                      ; preds = %do.end90
  br label %for.body

do.end90.do.end180_crit_edge:                     ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end180

for.body:                                         ; preds = %for.end.for.body_crit_edge, %do.end90.for.body_crit_edge
  %.pn.in296 = phi ptr [ %.pn298, %for.end.for.body_crit_edge ], [ %110, %do.end90.for.body_crit_edge ]
  %flags.0294 = phi i32 [ %call166, %for.end.for.body_crit_edge ], [ %call2, %do.end90.for.body_crit_edge ]
  %desc.0297 = getelementptr i8, ptr %.pn.in296, i32 -28
  %111 = ptrtoint ptr %.pn.in296 to i32
  call void @__asan_load4_noabort(i32 %111)
  %.pn298 = load ptr, ptr %.pn.in296, align 4
  %total_len = getelementptr i8, ptr %.pn.in296, i32 120
  %112 = ptrtoint ptr %total_len to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %total_len, align 4
  %residue106 = getelementptr i8, ptr %.pn.in296, i32 124
  %114 = ptrtoint ptr %residue106 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %residue106, align 4
  %phys = getelementptr i8, ptr %.pn.in296, i32 24
  %115 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %phys, align 4
  %117 = ptrtoint ptr %llp to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %llp, align 4
  %and107 = and i32 %118, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %116, i32 %and107)
  %cmp108 = icmp eq i32 %116, %and107
  br i1 %cmp108, label %if.then110, label %if.end112

if.then110:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.0294) #8
  br label %cleanup184

if.end112:                                        ; preds = %for.body
  %llp113 = getelementptr i8, ptr %.pn.in296, i32 -20
  %119 = ptrtoint ptr %llp113 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %llp113, align 4
  %121 = call i32 @llvm.bswap.i32(i32 %120)
  call void @__sanitizer_cov_trace_cmp4(i32 %121, i32 %118)
  %cmp114 = icmp eq i32 %121, %118
  br i1 %cmp114, label %if.then116, label %if.end121

if.then116:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #10
  %call117 = call fastcc i32 @dwc_get_sent(ptr noundef %dwc)
  %122 = ptrtoint ptr %residue106 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %residue106, align 4
  %sub119 = sub i32 %123, %call117
  store i32 %sub119, ptr %residue106, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.0294) #8
  br label %cleanup184

if.end121:                                        ; preds = %if.end112
  %len122 = getelementptr i8, ptr %.pn.in296, i32 116
  %124 = ptrtoint ptr %len122 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %len122, align 4
  %sub124 = sub i32 %113, %125
  %126 = ptrtoint ptr %residue106 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %sub124, ptr %residue106, align 4
  %tx_list126 = getelementptr i8, ptr %.pn.in296, i32 8
  %127 = ptrtoint ptr %tx_list126 to i32
  call void @__asan_load4_noabort(i32 %127)
  %.pn260288 = load ptr, ptr %tx_list126, align 4
  %cmp133.not289 = icmp eq ptr %.pn260288, %tx_list126
  br i1 %cmp133.not289, label %if.end121.for.end_crit_edge, label %if.end121.for.body137_crit_edge

if.end121.for.body137_crit_edge:                  ; preds = %if.end121
  br label %for.body137

if.end121.for.end_crit_edge:                      ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body137:                                      ; preds = %if.end147.for.body137_crit_edge, %if.end121.for.body137_crit_edge
  %.pn260290 = phi ptr [ %.pn260, %if.end147.for.body137_crit_edge ], [ %.pn260288, %if.end121.for.body137_crit_edge ]
  %llp139 = getelementptr i8, ptr %.pn260290, i32 -20
  %128 = ptrtoint ptr %llp139 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %llp139, align 4
  %130 = call i32 @llvm.bswap.i32(i32 %129)
  %131 = ptrtoint ptr %llp to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %llp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %130, i32 %132)
  %cmp140 = icmp eq i32 %130, %132
  br i1 %cmp140, label %if.then142, label %if.end147

if.then142:                                       ; preds = %for.body137
  call void @__sanitizer_cov_trace_pc() #10
  %133 = ptrtoint ptr %dwc to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dwc, align 4
  %135 = ptrtoint ptr %ch_regs.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %ch_regs.i, align 4
  %CTL_HI.i276 = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %136, i32 0, i32 7
  %137 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CTL_HI.i276) #8, !srcloc !152
  %138 = call i32 @llvm.bswap.i32(i32 %137) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !201
  %139 = ptrtoint ptr %ch_regs.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %ch_regs.i, align 4
  %CTL_LO.i277 = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %140, i32 0, i32 6
  %141 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CTL_LO.i277) #8, !srcloc !152
  %142 = lshr i32 %141, 28
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !202
  %block2bytes.i = getelementptr inbounds %struct.dw_dma, ptr %134, i32 0, i32 14
  %143 = ptrtoint ptr %block2bytes.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %block2bytes.i, align 4
  %and.i278 = and i32 %142, 7
  %call10.i = call i32 %144(ptr noundef %dwc, i32 noundef %138, i32 noundef %and.i278) #8
  %145 = ptrtoint ptr %residue106 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %residue106, align 4
  %sub145 = sub i32 %146, %call10.i
  store i32 %sub145, ptr %residue106, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.0294) #8
  br label %cleanup184

if.end147:                                        ; preds = %for.body137
  %len148 = getelementptr i8, ptr %.pn260290, i32 116
  %147 = ptrtoint ptr %len148 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %len148, align 4
  %149 = ptrtoint ptr %residue106 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %residue106, align 4
  %sub150 = sub i32 %150, %148
  store i32 %sub150, ptr %residue106, align 4
  %151 = ptrtoint ptr %.pn260290 to i32
  call void @__asan_load4_noabort(i32 %151)
  %.pn260 = load ptr, ptr %.pn260290, align 4
  %cmp133.not = icmp eq ptr %.pn260, %tx_list126
  br i1 %cmp133.not, label %if.end147.for.end_crit_edge, label %if.end147.for.body137_crit_edge

if.end147.for.body137_crit_edge:                  ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body137

if.end147.for.end_crit_edge:                      ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end147.for.end_crit_edge, %if.end121.for.end_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.0294) #8
  call fastcc void @dwc_descriptor_complete(ptr noundef %dwc, ptr noundef %desc.0297, i1 noundef zeroext true)
  %call166 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %cmp102.not = icmp eq ptr %.pn298, %active_list
  br i1 %cmp102.not, label %for.end.do.end180_crit_edge, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end.do.end180_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end180

do.end180:                                        ; preds = %for.end.do.end180_crit_edge, %do.end90.do.end180_crit_edge
  %flags.0.lcssa = phi i32 [ %call2, %do.end90.do.end180_crit_edge ], [ %call166, %for.end.do.end180_crit_edge ]
  %dev.i279 = getelementptr inbounds %struct.dma_chan, ptr %dwc, i32 0, i32 5
  %152 = ptrtoint ptr %dev.i279 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %dev.i279, align 4
  %device.i280 = getelementptr inbounds %struct.dma_chan_dev, ptr %153, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i280, ptr noundef nonnull @.str.32) #11
  call fastcc void @dwc_chan_disable(ptr noundef %dw, ptr noundef %dwc)
  call fastcc void @dwc_dostart_first_queued(ptr noundef %dwc)
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.0.lcssa) #8
  br label %cleanup184

cleanup184:                                       ; preds = %do.end180, %if.then142, %if.then116, %if.then110, %do.end68, %if.then50, %dwc_complete_all.exit, %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %llp) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc_dostart(ptr noundef %dwc, ptr noundef %first) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dwc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dwc, align 4
  %m_master = getelementptr inbounds %struct.dw_dma_chan, ptr %dwc, i32 0, i32 14, i32 3
  %2 = ptrtoint ptr %m_master to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %m_master, align 2
  %4 = and i8 %3, 3
  %regs.i = getelementptr inbounds %struct.dw_dma, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 4
  %CH_EN = getelementptr inbounds %struct.dw_dma_regs, ptr %6, i32 0, i32 21
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CH_EN) #8, !srcloc !152
  %8 = lshr i32 %7, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !213
  %mask = getelementptr inbounds %struct.dw_dma_chan, ptr %dwc, i32 0, i32 2
  %9 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %mask, align 4
  %conv5 = zext i8 %10 to i32
  %and6 = and i32 %8, %conv5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool.not = icmp eq i32 %and6, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %dwc, i32 0, i32 5
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %12, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #11
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  %device.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %14, i32 0, i32 1
  %ch_regs.i.i = getelementptr inbounds %struct.dw_dma_chan, ptr %dwc, i32 0, i32 1
  %15 = ptrtoint ptr %ch_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ch_regs.i.i, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #8, !srcloc !152
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !214
  %19 = ptrtoint ptr %ch_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ch_regs.i.i, align 4
  %DAR.i = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %20, i32 0, i32 2
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %DAR.i) #8, !srcloc !152
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !215
  %23 = ptrtoint ptr %ch_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ch_regs.i.i, align 4
  %LLP.i = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %24, i32 0, i32 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %LLP.i) #8, !srcloc !152
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !216
  %27 = ptrtoint ptr %ch_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ch_regs.i.i, align 4
  %CTL_HI.i = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %28, i32 0, i32 7
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CTL_HI.i) #8, !srcloc !152
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !217
  %31 = ptrtoint ptr %ch_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ch_regs.i.i, align 4
  %CTL_LO.i = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %32, i32 0, i32 6
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CTL_LO.i) #8, !srcloc !152
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !218
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i.i, ptr noundef nonnull @.str.22, i32 noundef %18, i32 noundef %22, i32 noundef %26, i32 noundef %30, i32 noundef %34) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %nollp = getelementptr inbounds %struct.dw_dma_chan, ptr %dwc, i32 0, i32 12
  %35 = ptrtoint ptr %nollp to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %nollp, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool9.not = icmp eq i8 %36, 0
  br i1 %tobool9.not, label %if.end20, label %if.then10

if.then10:                                        ; preds = %if.end
  %flags = getelementptr inbounds %struct.dw_dma_chan, ptr %dwc, i32 0, i32 7
  %call11 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %flags) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end19, label %do.end16

do.end16:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i67 = getelementptr inbounds %struct.dma_chan, ptr %dwc, i32 0, i32 5
  %37 = ptrtoint ptr %dev.i67 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i67, align 4
  %device.i68 = getelementptr inbounds %struct.dma_chan_dev, ptr %38, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i68, ptr noundef nonnull @.str.20) #11
  br label %cleanup

if.end19:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %dwc to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dwc, align 4
  %initialize_chan.i = getelementptr inbounds %struct.dw_dma, ptr %40, i32 0, i32 8
  %41 = ptrtoint ptr %initialize_chan.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %initialize_chan.i, align 4
  tail call void %42(ptr noundef %dwc) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !219
  tail call void @arm_heavy_mb() #8
  %43 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %mask, align 4
  %conv.i = zext i8 %44 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %or.i = or i32 %shl.i, %conv.i
  %45 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %regs.i.i = getelementptr inbounds %struct.dw_dma, ptr %40, i32 0, i32 2
  %46 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs.i.i, align 4
  %MASK.i = getelementptr inbounds %struct.dw_dma_regs, ptr %47, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MASK.i, i32 %45) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !220
  tail call void @arm_heavy_mb() #8
  %48 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %mask, align 4
  %conv8.i = zext i8 %49 to i32
  %shl9.i = shl nuw nsw i32 %conv8.i, 8
  %or12.i = or i32 %shl9.i, %conv8.i
  %50 = tail call i32 @llvm.bswap.i32(i32 %or12.i) #8
  %51 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs.i.i, align 4
  %ERROR.i = getelementptr inbounds %struct.dw_dma_regs, ptr %52, i32 0, i32 3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ERROR.i, i32 %50) #8, !srcloc !146
  %total_len = getelementptr inbounds %struct.dw_desc, ptr %first, i32 0, i32 5
  %53 = ptrtoint ptr %total_len to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %total_len, align 4
  %residue = getelementptr inbounds %struct.dw_desc, ptr %first, i32 0, i32 6
  %55 = ptrtoint ptr %residue to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %residue, align 4
  %tx_list = getelementptr inbounds %struct.dw_desc, ptr %first, i32 0, i32 2
  %tx_node_active = getelementptr inbounds %struct.dw_dma_chan, ptr %dwc, i32 0, i32 5
  %56 = ptrtoint ptr %tx_node_active to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %tx_list, ptr %tx_node_active, align 4
  %57 = ptrtoint ptr %dwc to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dwc, align 4
  %ctllo1.i = getelementptr inbounds %struct.dw_lli, ptr %first, i32 0, i32 3
  %59 = ptrtoint ptr %ctllo1.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ctllo1.i, align 4
  %61 = or i32 %60, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !207
  tail call void @arm_heavy_mb() #8
  %62 = ptrtoint ptr %first to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %first, align 4
  %ch_regs.i.i69 = getelementptr inbounds %struct.dw_dma_chan, ptr %dwc, i32 0, i32 1
  %64 = ptrtoint ptr %ch_regs.i.i69 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ch_regs.i.i69, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %63) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !208
  tail call void @arm_heavy_mb() #8
  %dar.i = getelementptr inbounds %struct.dw_lli, ptr %first, i32 0, i32 1
  %66 = ptrtoint ptr %dar.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %dar.i, align 4
  %68 = ptrtoint ptr %ch_regs.i.i69 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ch_regs.i.i69, align 4
  %DAR.i70 = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %69, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DAR.i70, i32 %67) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !209
  tail call void @arm_heavy_mb() #8
  %70 = ptrtoint ptr %ch_regs.i.i69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ch_regs.i.i69, align 4
  %CTL_LO.i71 = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %71, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CTL_LO.i71, i32 %61) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !210
  tail call void @arm_heavy_mb() #8
  %ctlhi.i = getelementptr inbounds %struct.dw_lli, ptr %first, i32 0, i32 4
  %72 = ptrtoint ptr %ctlhi.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %ctlhi.i, align 4
  %74 = ptrtoint ptr %ch_regs.i.i69 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ch_regs.i.i69, align 4
  %CTL_HI.i72 = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %75, i32 0, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CTL_HI.i72, i32 %73) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !211
  tail call void @arm_heavy_mb() #8
  %76 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %mask, align 4
  %conv.i74 = zext i8 %77 to i32
  %shl.i75 = shl nuw nsw i32 %conv.i74, 8
  %or23.i = or i32 %shl.i75, %conv.i74
  %78 = tail call i32 @llvm.bswap.i32(i32 %or23.i) #8
  %regs.i.i76 = getelementptr inbounds %struct.dw_dma, ptr %58, i32 0, i32 2
  %79 = ptrtoint ptr %regs.i.i76 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regs.i.i76, align 4
  %CH_EN.i = getelementptr inbounds %struct.dw_dma_regs, ptr %80, i32 0, i32 21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CH_EN.i, i32 %78) #8, !srcloc !146
  %81 = ptrtoint ptr %tx_node_active to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %tx_node_active, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 4
  store ptr %84, ptr %tx_node_active, align 4
  br label %cleanup

if.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %85 = ptrtoint ptr %dwc to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dwc, align 4
  %initialize_chan.i77 = getelementptr inbounds %struct.dw_dma, ptr %86, i32 0, i32 8
  %87 = ptrtoint ptr %initialize_chan.i77 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %initialize_chan.i77, align 4
  tail call void %88(ptr noundef %dwc) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !219
  tail call void @arm_heavy_mb() #8
  %89 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %mask, align 4
  %conv.i79 = zext i8 %90 to i32
  %shl.i80 = shl nuw nsw i32 %conv.i79, 8
  %or.i81 = or i32 %shl.i80, %conv.i79
  %91 = tail call i32 @llvm.bswap.i32(i32 %or.i81) #8
  %regs.i.i82 = getelementptr inbounds %struct.dw_dma, ptr %86, i32 0, i32 2
  %92 = ptrtoint ptr %regs.i.i82 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regs.i.i82, align 4
  %MASK.i83 = getelementptr inbounds %struct.dw_dma_regs, ptr %93, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MASK.i83, i32 %91) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !220
  tail call void @arm_heavy_mb() #8
  %94 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %mask, align 4
  %conv8.i84 = zext i8 %95 to i32
  %shl9.i85 = shl nuw nsw i32 %conv8.i84, 8
  %or12.i86 = or i32 %shl9.i85, %conv8.i84
  %96 = tail call i32 @llvm.bswap.i32(i32 %or12.i86) #8
  %97 = ptrtoint ptr %regs.i.i82 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %regs.i.i82, align 4
  %ERROR.i87 = getelementptr inbounds %struct.dw_dma_regs, ptr %98, i32 0, i32 3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ERROR.i87, i32 %96) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !221
  tail call void @arm_heavy_mb() #8
  %phys = getelementptr inbounds %struct.dw_desc, ptr %first, i32 0, i32 3, i32 2
  %99 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %phys, align 4
  %conv24 = zext i8 %4 to i32
  %or = or i32 %100, %conv24
  %101 = tail call i32 @llvm.bswap.i32(i32 %or)
  %ch_regs.i = getelementptr inbounds %struct.dw_dma_chan, ptr %dwc, i32 0, i32 1
  %102 = ptrtoint ptr %ch_regs.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ch_regs.i, align 4
  %LLP = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %103, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %LLP, i32 %101) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !222
  tail call void @arm_heavy_mb() #8
  %104 = ptrtoint ptr %ch_regs.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ch_regs.i, align 4
  %CTL_LO = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %105, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CTL_LO, i32 24) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !223
  tail call void @arm_heavy_mb() #8
  %106 = ptrtoint ptr %ch_regs.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ch_regs.i, align 4
  %CTL_HI = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %107, i32 0, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CTL_HI, i32 0) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !224
  tail call void @arm_heavy_mb() #8
  %108 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %mask, align 4
  %conv38 = zext i8 %109 to i32
  %shl = shl nuw nsw i32 %conv38, 8
  %or41 = or i32 %shl, %conv38
  %110 = tail call i32 @llvm.bswap.i32(i32 %or41)
  %111 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %regs.i, align 4
  %CH_EN43 = getelementptr inbounds %struct.dw_dma_regs, ptr %112, i32 0, i32 21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CH_EN43, i32 %110) #8, !srcloc !146
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end19, %do.end16, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc_descriptor_complete(ptr noundef %dwc, ptr noundef %desc, i1 noundef zeroext %callback_required) unnamed_addr #2 align 64 {
entry:
  %dummy_result.i = alloca %struct.dmaengine_result, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %txd1 = getelementptr inbounds %struct.dw_desc, ptr %desc, i32 0, i32 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc_descriptor_complete.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc_descriptor_complete, %do.body8)) #8
          to label %if.then [label %do.body8], !srcloc !158

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %dwc, i32 0, i32 5
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %txd1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %txd1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc_descriptor_complete.__UNIQUE_ID_ddebug239, ptr noundef %device.i, ptr noundef nonnull @.str.28, i32 noundef %3) #8
  br label %do.body8

do.body8:                                         ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.dw_dma_chan, ptr %dwc, i32 0, i32 6
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %4 = ptrtoint ptr %txd1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %txd1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp slt i32 %5, 1
  br i1 %cmp.i, label %do.body2.i, label %dma_cookie_complete.exit, !prof !160

do.body2.i:                                       ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dw/../dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #8, !srcloc !225
  unreachable

dma_cookie_complete.exit:                         ; preds = %do.body8
  %chan.i = getelementptr inbounds %struct.dw_desc, ptr %desc, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chan.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %5, ptr %completed_cookie.i, align 4
  %9 = ptrtoint ptr %txd1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %txd1, align 4
  br i1 %callback_required, label %if.then17, label %dma_cookie_complete.exit.if.end18_crit_edge

dma_cookie_complete.exit.if.end18_crit_edge:      ; preds = %dma_cookie_complete.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then17:                                        ; preds = %dma_cookie_complete.exit
  call void @__sanitizer_cov_trace_pc() #10
  %callback.i = getelementptr inbounds %struct.dw_desc, ptr %desc, i32 0, i32 3, i32 6
  %10 = ptrtoint ptr %callback.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %callback.i, align 4
  %callback_result.i = getelementptr inbounds %struct.dw_desc, ptr %desc, i32 0, i32 3, i32 7
  %12 = ptrtoint ptr %callback_result.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %callback_result.i, align 4
  %callback_param.i = getelementptr inbounds %struct.dw_desc, ptr %desc, i32 0, i32 3, i32 8
  %14 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %callback_param.i, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %dma_cookie_complete.exit.if.end18_crit_edge
  %cb.sroa.0.0 = phi ptr [ %11, %if.then17 ], [ null, %dma_cookie_complete.exit.if.end18_crit_edge ]
  %cb.sroa.6.0 = phi ptr [ %13, %if.then17 ], [ null, %dma_cookie_complete.exit.if.end18_crit_edge ]
  %cb.sroa.9.0 = phi ptr [ %15, %if.then17 ], [ null, %dma_cookie_complete.exit.if.end18_crit_edge ]
  %tx_list = getelementptr inbounds %struct.dw_desc, ptr %desc, i32 0, i32 2
  %16 = ptrtoint ptr %tx_list to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn51 = load ptr, ptr %tx_list, align 4
  %cmp21.not52 = icmp eq ptr %.pn51, %tx_list
  br i1 %cmp21.not52, label %if.end18.for.end_crit_edge, label %if.end18.for.body_crit_edge

if.end18.for.body_crit_edge:                      ; preds = %if.end18
  br label %for.body

if.end18.for.end_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end18.for.body_crit_edge
  %.pn53 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn51, %if.end18.for.body_crit_edge ]
  %flags.i = getelementptr i8, ptr %.pn53, i32 20
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %18, 2
  store i32 %or.i, ptr %flags.i, align 4
  %19 = ptrtoint ptr %.pn53 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn = load ptr, ptr %.pn53, align 4
  %cmp21.not = icmp eq ptr %.pn, %tx_list
  br i1 %cmp21.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end18.for.end_crit_edge
  %flags.i44 = getelementptr inbounds %struct.dw_desc, ptr %desc, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %flags.i44 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags.i44, align 4
  %or.i45 = or i32 %21, 2
  store i32 %or.i45, ptr %flags.i44, align 4
  %22 = ptrtoint ptr %dwc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dwc, align 4
  %tobool.not.i = icmp eq ptr %desc, null
  br i1 %tobool.not.i, label %for.end.dwc_desc_put.exit_crit_edge, label %if.end.i, !prof !160

for.end.dwc_desc_put.exit_crit_edge:              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %dwc_desc_put.exit

if.end.i:                                         ; preds = %for.end
  %24 = ptrtoint ptr %tx_list to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tx_list, align 4
  %cmp.not38.i = icmp eq ptr %25, %tx_list
  br i1 %cmp.not38.i, label %if.end.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %desc_pool.i = getelementptr inbounds %struct.dw_dma, ptr %23, i32 0, i32 3
  %descs_allocated.i = getelementptr inbounds %struct.dw_dma_chan, ptr %dwc, i32 0, i32 10
  br label %for.body.i

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn.in39.i = phi ptr [ %25, %for.body.lr.ph.i ], [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ]
  %child.0.i = getelementptr i8, ptr %.pn.in39.i, i32 -28
  %26 = ptrtoint ptr %.pn.in39.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn.i = load ptr, ptr %.pn.in39.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in39.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in39.i, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i.i, align 4
  %29 = ptrtoint ptr %.pn.in39.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %.pn.in39.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %33 = ptrtoint ptr %.pn.in39.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in39.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in39.i, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %35 = ptrtoint ptr %desc_pool.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %desc_pool.i, align 4
  %phys.i = getelementptr i8, ptr %.pn.in39.i, i32 24
  %37 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %phys.i, align 4
  tail call void @dma_pool_free(ptr noundef %36, ptr noundef %child.0.i, i32 noundef %38) #8
  %39 = ptrtoint ptr %descs_allocated.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %descs_allocated.i, align 4
  %dec.i = add i32 %40, -1
  store i32 %dec.i, ptr %descs_allocated.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %tx_list
  br i1 %cmp.not.i, label %list_del.exit.i.for.end.i_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

list_del.exit.i.for.end.i_crit_edge:              ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %list_del.exit.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %desc_pool18.i = getelementptr inbounds %struct.dw_dma, ptr %23, i32 0, i32 3
  %41 = ptrtoint ptr %desc_pool18.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %desc_pool18.i, align 4
  %phys20.i = getelementptr inbounds %struct.dw_desc, ptr %desc, i32 0, i32 3, i32 2
  %43 = ptrtoint ptr %phys20.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %phys20.i, align 4
  tail call void @dma_pool_free(ptr noundef %42, ptr noundef nonnull %desc, i32 noundef %44) #8
  %descs_allocated21.i = getelementptr inbounds %struct.dw_dma_chan, ptr %dwc, i32 0, i32 10
  %45 = ptrtoint ptr %descs_allocated21.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %descs_allocated21.i, align 4
  %dec22.i = add i32 %46, -1
  store i32 %dec22.i, ptr %descs_allocated21.i, align 4
  br label %dwc_desc_put.exit

dwc_desc_put.exit:                                ; preds = %for.end.i, %for.end.dwc_desc_put.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call11) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dummy_result.i) #8
  %47 = ptrtoint ptr %dummy_result.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 0, ptr %dummy_result.i, align 8
  %tobool.not.i47 = icmp eq ptr %cb.sroa.6.0, null
  br i1 %tobool.not.i47, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %dwc_desc_put.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void %cb.sroa.6.0(ptr noundef %cb.sroa.9.0, ptr noundef nonnull %dummy_result.i) #8
  br label %dmaengine_desc_callback_invoke.exit

if.else.i:                                        ; preds = %dwc_desc_put.exit
  %tobool4.not.i = icmp eq ptr %cb.sroa.0.0, null
  br i1 %tobool4.not.i, label %if.else.i.dmaengine_desc_callback_invoke.exit_crit_edge, label %if.then5.i

if.else.i.dmaengine_desc_callback_invoke.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_desc_callback_invoke.exit

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %cb.sroa.0.0(ptr noundef %cb.sroa.9.0) #8
  br label %dmaengine_desc_callback_invoke.exit

dmaengine_desc_callback_invoke.exit:              ; preds = %if.then5.i, %if.else.i.dmaengine_desc_callback_invoke.exit_crit_edge, %if.then.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dummy_result.i) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_crit(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dwc_get_sent(ptr noundef %dwc) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %dwc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dwc, align 4
  %ch_regs.i = getelementptr inbounds %struct.dw_dma_chan, ptr %dwc, i32 0, i32 1
  %2 = ptrtoint ptr %ch_regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ch_regs.i, align 4
  %CTL_HI = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %3, i32 0, i32 7
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CTL_HI) #8, !srcloc !152
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !201
  %6 = ptrtoint ptr %ch_regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ch_regs.i, align 4
  %CTL_LO = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %7, i32 0, i32 6
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CTL_LO) #8, !srcloc !152
  %9 = lshr i32 %8, 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !202
  %block2bytes = getelementptr inbounds %struct.dw_dma, ptr %1, i32 0, i32 14
  %10 = ptrtoint ptr %block2bytes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %block2bytes, align 4
  %and = and i32 %9, 7
  %call10 = tail call i32 %11(ptr noundef %dwc, i32 noundef %5, i32 noundef %and) #8
  ret i32 %call10
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc_chan_disable(ptr nocapture noundef readonly %dw, ptr nocapture noundef readonly %dwc) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !196
  tail call void @arm_heavy_mb() #8
  %mask = getelementptr inbounds %struct.dw_dma_chan, ptr %dwc, i32 0, i32 2
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mask, align 4
  %conv = zext i8 %1 to i32
  %2 = shl nuw nsw i32 %conv, 16
  %regs.i = getelementptr inbounds %struct.dw_dma, ptr %dw, i32 0, i32 2
  %3 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i, align 4
  %CH_EN = getelementptr inbounds %struct.dw_dma_regs, ptr %4, i32 0, i32 21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CH_EN, i32 %2) #8, !srcloc !146
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 4
  %CH_EN216 = getelementptr inbounds %struct.dw_dma_regs, ptr %6, i32 0, i32 21
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CH_EN216) #8, !srcloc !152
  %8 = lshr i32 %7, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  %9 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %mask, align 4
  %conv617 = zext i8 %10 to i32
  %and18 = and i32 %8, %conv617
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool.not19 = icmp eq i32 %and18, 0
  br i1 %tobool.not19, label %entry.while.end_crit_edge, label %entry.do.end10_crit_edge

entry.do.end10_crit_edge:                         ; preds = %entry
  br label %do.end10

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

do.end10:                                         ; preds = %do.end10.do.end10_crit_edge, %entry.do.end10_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !198
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !199
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 4
  %CH_EN2 = getelementptr inbounds %struct.dw_dma_regs, ptr %12, i32 0, i32 21
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CH_EN2) #8, !srcloc !152
  %14 = lshr i32 %13, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  %15 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %mask, align 4
  %conv6 = zext i8 %16 to i32
  %and = and i32 %14, %conv6
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end10.while.end_crit_edge, label %do.end10.do.end10_crit_edge

do.end10.do.end10_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end10

do.end10.while.end_crit_edge:                     ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %do.end10.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc_dostart_first_queued(ptr noundef %dwc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.dw_dma_chan, ptr %dwc, i32 0, i32 9
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %1, %queue
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %active_list = getelementptr inbounds %struct.dw_dma_chan, ptr %dwc, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end.__list_del_entry.exit.i_crit_edge

if.end.__list_del_entry.exit.i_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end.__list_del_entry.exit.i_crit_edge
  %8 = ptrtoint ptr %active_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %active_list, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %1, ptr noundef %active_list, ptr noundef %9) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move.exit_crit_edge

__list_del_entry.exit.i.list_move.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_move.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %1, ptr %prev1.i.i2.i, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %9, ptr %1, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %active_list, ptr %prev3.i.i.i, align 4
  %13 = ptrtoint ptr %active_list to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %1, ptr %active_list, align 4
  br label %list_move.exit

list_move.exit:                                   ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move.exit_crit_edge
  %14 = ptrtoint ptr %active_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %active_list, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 -28
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc_dostart_first_queued.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc_dostart_first_queued, %do.end)) #8
          to label %if.then8 [label %do.end], !srcloc !158

if.then8:                                         ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %dwc, i32 0, i32 5
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %17, i32 0, i32 1
  %txd = getelementptr i8, ptr %15, i32 16
  %18 = ptrtoint ptr %txd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %txd, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc_dostart_first_queued.__UNIQUE_ID_ddebug238, ptr noundef %device.i, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.35, i32 noundef %19) #8
  br label %do.end

do.end:                                           ; preds = %if.then8, %list_move.exit
  tail call fastcc void @dwc_dostart(ptr noundef %dwc, ptr noundef %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc_tx_submit(ptr noundef %tx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chan = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %tx, i32 0, i32 3
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %lock = getelementptr inbounds %struct.dw_dma_chan, ptr %1, i32 0, i32 6
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 4
  %cookie2.i = getelementptr inbounds %struct.dma_chan, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %cookie2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cookie2.i, align 4
  %add.i = add i32 %5, 1
  %6 = tail call i32 @llvm.smax.i32(i32 %add.i, i32 1) #8
  %7 = ptrtoint ptr %cookie2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %cookie2.i, align 4
  %8 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %6, ptr %tx, align 4
  %desc_node = getelementptr i8, ptr %tx, i32 -16
  %queue = getelementptr inbounds %struct.dw_dma_chan, ptr %1, i32 0, i32 9
  %prev.i = getelementptr inbounds %struct.dw_dma_chan, ptr %1, i32 0, i32 9, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %desc_node, ptr noundef %10, ptr noundef %queue) #8
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %desc_node, ptr %prev.i, align 4
  %12 = ptrtoint ptr %desc_node to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %queue, ptr %desc_node, align 4
  %prev3.i.i = getelementptr i8, ptr %tx, i32 -12
  %13 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev3.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %desc_node, ptr %10, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc_tx_submit.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc_tx_submit, %do.end19)) #8
          to label %if.then [label %do.end19], !srcloc !158

if.then:                                          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chan, align 4
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc_tx_submit.__UNIQUE_ID_ddebug237, ptr noundef %device.i, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.51, i32 noundef %20) #8
  br label %do.end19

do.end19:                                         ; preds = %if.then, %list_add_tail.exit
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

attributes #0 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !13, !14, !16, !17, !19, !20, !22, !23, !24, !25, !27, !29, !31, !32, !34, !36, !38, !40, !41, !42, !44, !45, !47, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !108, !109, !110, !111, !113, !114, !115, !117, !118, !120, !121, !122, !124, !125, !127, !128, !129, !131, !132, !134, !135}
!llvm.module.flags = !{!136, !137, !138, !139, !140, !141, !142, !143}
!llvm.ident = !{!144}

!0 = !{ptr @__ksymtab_dw_dma_filter, !1, !"__ksymtab_dw_dma_filter", i1 false, i1 false}
!1 = !{!"../drivers/dma/dw/core.c", i32 784, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/dma/dw/core.c", i32 1087, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @do_dma_probe.__UNIQUE_ID_ddebug260, !3, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/dma/dw/core.c", i32 1140, i32 3}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @do_dma_probe._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @do_dma_probe._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @do_dma_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/dma/dw/core.c", i32 1171, i32 3}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/dma/dw/core.c", i32 1187, i32 4}
!19 = !{ptr @do_dma_probe.__UNIQUE_ID_ddebug261, !18, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/dma/dw/core.c", i32 1265, i32 2}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @do_dma_probe._entry.9, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @do_dma_probe._entry_ptr.12, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @__ksymtab_do_dw_dma_disable, !26, !"__ksymtab_do_dw_dma_disable", i1 false, i1 false}
!26 = !{!"../drivers/dma/dw/core.c", i32 1309, i32 1}
!27 = !{ptr @__ksymtab_do_dw_dma_enable, !28, !"__ksymtab_do_dw_dma_enable", i1 false, i1 false}
!28 = !{!"../drivers/dma/dw/core.c", i32 1318, i32 1}
!29 = !{ptr @__UNIQUE_ID_file262, !30, !"__UNIQUE_ID_file262", i1 false, i1 false}
!30 = !{!"../drivers/dma/dw/core.c", i32 1320, i32 1}
!31 = !{ptr @__UNIQUE_ID_license263, !30, !"__UNIQUE_ID_license263", i1 false, i1 false}
!32 = !{ptr @__UNIQUE_ID_description264, !33, !"__UNIQUE_ID_description264", i1 false, i1 false}
!33 = !{!"../drivers/dma/dw/core.c", i32 1321, i32 1}
!34 = !{ptr @__UNIQUE_ID_author265, !35, !"__UNIQUE_ID_author265", i1 false, i1 false}
!35 = !{!"../drivers/dma/dw/core.c", i32 1322, i32 1}
!36 = !{ptr @__UNIQUE_ID_author266, !37, !"__UNIQUE_ID_author266", i1 false, i1 false}
!37 = !{!"../drivers/dma/dw/core.c", i32 1323, i32 1}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/dma/dw/core.c", i32 477, i32 2}
!40 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @dw_dma_tasklet.__UNIQUE_ID_ddebug242, !39, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/dma/dw/core.c", i32 482, i32 4}
!44 = !{ptr @dw_dma_tasklet.__UNIQUE_ID_ddebug243, !43, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/dma/dw/core.c", i32 454, i32 2}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/dma/dw/core.c", i32 182, i32 3}
!49 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @dwc_dostart._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @dwc_dostart._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/dma/dw/core.c", i32 195, i32 4}
!54 = !{ptr @dwc_dostart._entry.19, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @dwc_dostart._entry_ptr.21, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/dma/dw/core.c", i32 132, i32 2}
!58 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @dwc_dump_chan_regs._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @dwc_dump_chan_regs._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/dma/dw/core.c", i32 415, i32 2}
!63 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @dwc_dump_lli._entry, !62, !"_entry", i1 false, i1 false}
!66 = !{ptr @dwc_dump_lli._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/dma/dw/core.c", i32 243, i32 2}
!69 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @dwc_descriptor_complete.__UNIQUE_ID_ddebug239, !68, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/dma/dw/core.c", i32 358, i32 3}
!73 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @dwc_scan_descriptors.__UNIQUE_ID_ddebug240, !72, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/dma/dw/core.c", i32 363, i32 2}
!77 = !{ptr @dwc_scan_descriptors.__UNIQUE_ID_ddebug241, !76, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/dma/dw/core.c", i32 403, i32 2}
!80 = !{ptr @dwc_scan_descriptors._entry, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @dwc_scan_descriptors._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/dma/dw/core.c", i32 270, i32 3}
!84 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @dwc_complete_all._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @dwc_complete_all._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/dma/dw/core.c", i32 228, i32 2}
!89 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @dwc_dostart_first_queued.__UNIQUE_ID_ddebug238, !88, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!91 = !{ptr @.str.37, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/dma/dw/core.c", i32 504, i32 2}
!93 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @dw_dma_interrupt.__UNIQUE_ID_ddebug244, !92, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!95 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/dma/dw/core.c", i32 520, i32 3}
!97 = !{ptr @dw_dma_interrupt._entry, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @dw_dma_interrupt._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.40, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/dma/dw/core.c", i32 983, i32 2}
!101 = !{ptr @.str.41, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @dwc_alloc_chan_resources.__UNIQUE_ID_ddebug256, !100, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!103 = !{ptr @.str.42, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/dma/dw/core.c", i32 987, i32 3}
!105 = !{ptr @dwc_alloc_chan_resources.__UNIQUE_ID_ddebug257, !104, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!106 = !{ptr @.str.43, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/dma/dw/core.c", i32 1003, i32 3}
!108 = !{ptr @.str.44, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @dwc_alloc_chan_resources._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @dwc_alloc_chan_resources._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.45, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/dma/dw/core.c", i32 1021, i32 2}
!113 = !{ptr @.str.46, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @dwc_free_chan_resources.__UNIQUE_ID_ddebug258, !112, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!115 = !{ptr @.str.47, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/dma/dw/core.c", i32 1046, i32 2}
!117 = !{ptr @dwc_free_chan_resources.__UNIQUE_ID_ddebug259, !116, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!118 = !{ptr @.str.48, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/dma/dw/core.c", i32 557, i32 2}
!120 = !{ptr @.str.49, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @dwc_prep_dma_memcpy.__UNIQUE_ID_ddebug245, !119, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!122 = !{ptr @.str.50, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/dma/dw/core.c", i32 562, i32 3}
!124 = !{ptr @dwc_prep_dma_memcpy.__UNIQUE_ID_ddebug246, !123, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!125 = !{ptr @.str.51, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/dma/dw/core.c", i32 74, i32 2}
!127 = !{ptr @.str.52, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @dwc_tx_submit.__UNIQUE_ID_ddebug237, !126, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!129 = !{ptr @.str.53, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/dma/dw/core.c", i32 637, i32 2}
!131 = !{ptr @dwc_prep_slave_sg.__UNIQUE_ID_ddebug247, !130, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!132 = !{ptr @.str.54, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/dma/dw/core.c", i32 761, i32 2}
!134 = !{ptr @dwc_prep_slave_sg._entry, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @dwc_prep_slave_sg._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{i32 1, !"wchar_size", i32 2}
!137 = !{i32 1, !"min_enum_size", i32 4}
!138 = !{i32 8, !"branch-target-enforcement", i32 0}
!139 = !{i32 8, !"sign-return-address", i32 0}
!140 = !{i32 8, !"sign-return-address-all", i32 0}
!141 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!142 = !{i32 7, !"uwtable", i32 1}
!143 = !{i32 7, !"frame-pointer", i32 2}
!144 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!145 = !{i64 2154495805}
!146 = !{i64 6307611}
!147 = !{i64 2154496409}
!148 = !{i64 2154497115}
!149 = !{i64 2154497831}
!150 = !{i64 2154498550}
!151 = !{i64 2154499260}
!152 = !{i64 6308029}
!153 = !{i64 2154500104}
!154 = !{i64 2154500388}
!155 = !{i64 2154500230}
!156 = !{i64 2154500682}
!157 = !{i64 2154525397}
!158 = !{i64 2148789373, i64 2148789378, i64 2148789391, i64 2148789435, i64 2148789469, i64 2148789490}
!159 = !{i64 2154528287}
!160 = !{!"branch_weights", i32 1, i32 2000}
!161 = !{i64 2154530765}
!162 = !{i64 2154531461}
!163 = !{i64 2154534146}
!164 = !{i64 2154534709}
!165 = !{i64 2154535279}
!166 = !{i64 2154535852}
!167 = !{i64 2154536419}
!168 = !{i64 2154427751}
!169 = !{i64 2154428336}
!170 = !{i64 2154421206}
!171 = !{i64 2154433499}
!172 = !{i64 2154434328}
!173 = !{i64 2154435267}
!174 = !{i64 2154437969}
!175 = !{i64 2154438675}
!176 = !{i64 2154439382}
!177 = !{i64 2154440261}
!178 = !{i64 2154442428}
!179 = !{i64 2154443104}
!180 = !{i64 2154443790}
!181 = !{i64 2154444479}
!182 = !{i64 2154445159}
!183 = !{i64 2154503607}
!184 = !{!"branch_weights", i32 2000, i32 1}
!185 = !{i64 2154510362, i64 2154510849, i64 2154510399, i64 2154510455, i64 2154510489, i64 2154510513, i64 2154510554, i64 2154510575, i64 2154510603, i64 2154510637}
!186 = !{i64 2154511975, i64 2154512462, i64 2154512012, i64 2154512068, i64 2154512102, i64 2154512126, i64 2154512167, i64 2154512188, i64 2154512216, i64 2154512250}
!187 = !{i64 2154514528}
!188 = !{i64 2154514790, i64 2154515277, i64 2154514827, i64 2154514883, i64 2154514917, i64 2154514941, i64 2154514982, i64 2154515003, i64 2154515031, i64 2154515065}
!189 = !{i64 2154520841}
!190 = !{i64 2154521499}
!191 = !{i64 2154522158}
!192 = !{!"auto-init"}
!193 = !{i32 0, i32 33}
!194 = !{i8 0, i8 2}
!195 = !{i64 2154484053}
!196 = !{i64 2154362244}
!197 = !{i64 2154363069}
!198 = !{i64 2154363344}
!199 = !{i64 2154363186}
!200 = !{i64 2154242531}
!201 = !{i64 2154392095}
!202 = !{i64 2154392676}
!203 = !{i64 2154545909}
!204 = !{i64 2154393594}
!205 = !{i64 2154394174}
!206 = !{i64 2154394475}
!207 = !{i64 2154364342}
!208 = !{i64 2154365402}
!209 = !{i64 2154366126}
!210 = !{i64 2154366974}
!211 = !{i64 2154367835}
!212 = !{i64 2154384566}
!213 = !{i64 2154368724}
!214 = !{i64 2154359402}
!215 = !{i64 2154359968}
!216 = !{i64 2154360534}
!217 = !{i64 2154361115}
!218 = !{i64 2154361696}
!219 = !{i64 2154355532}
!220 = !{i64 2154356265}
!221 = !{i64 2154372954}
!222 = !{i64 2154373547}
!223 = !{i64 2154374083}
!224 = !{i64 2154374695}
!225 = !{i64 2154241025, i64 2154241518, i64 2154241062, i64 2154241118, i64 2154241152, i64 2154241176, i64 2154241217, i64 2154241238, i64 2154241266, i64 2154241300}
